# T7e

Gem to push/send translation files to your T7e server

## Installation

Add this line to your application's Gemfile:

```ruby
gem 't7e', git: 'git@github.com:visualitypl/t7e.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install t7e

## Usage

First you have to create t7e_config.yml file

```ruby
api_key: 9ee251d46740ceb29f049976136c576c
url: "http://localhost:3000/api/v1/projects/9ee251d46740ceb29f049976136c576c"
languages: ['en', 'pl']

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/t7e/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
