require 'rails_api_paginate/version'

module RailsApiPaginate
  mattr_accessor :default_per_page, :max_per_page

  def self.setup
    yield self
  end

  def paginate(collection)
    current_page = (params[:page].to_i)
    current_page = 1 if current_page < 1

    per_page = params[:per_page].to_i
    per_page = default_per_page if per_page < 1 || per_page > max_per_page

    total_items = collection.count
    total_pages = (total_items.to_f / per_page).ceil

    next_page = current_page + 1 if current_page < total_pages
    prev_page = current_page - 1 if current_page > 1 && current_page <= total_pages

    records = collection.limit(per_page).offset(per_page * (current_page - 1))

    return records, {
      current_page: current_page,
      next_page: next_page,
      prev_page: prev_page,
      total_pages: total_pages,
      total_items: total_items
    }
  end
end
