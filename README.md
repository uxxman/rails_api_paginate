# RailsApiPaginate

[![Gem Version](https://badge.fury.io/rb/rails_api_paginate.svg)](https://badge.fury.io/rb/rails_api_paginate)

Add pagination support to rails API-Only applications for ActiveRecord relations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_api_paginate'
```

And then execute:

    $ bundle

Next, you need to run the generator:

    $ rails g rails_api_paginate:install

## Usage

Include RailsApiPaginate in controller where you need to paginate ActiveRecord relations.

```ruby
include RailsApiPaginate
```

And then:

```ruby
records, meta = paginate(collection)
```

Example:

```ruby
posts = Post.all
posts, meta = paginate(posts)
```

The `meta` object is a `Hash` that holds pagination details, e.g.

```ruby
{
    current_page: 2,
    next_page: 3,
    prev_page: 1,
    total_pages: 4,
    total_items: 100
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/uxman-sherwani/rails_api_paginate.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
