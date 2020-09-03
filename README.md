# P8Pusher

Ruby Gem for Apple push notifications using new p8 format instead of pem file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'p8_pusher'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install p8_pusher

## Usage

# p8push

Add the following to your `.env`
```
export APN_PRIVATE_KEY=/path/APNsAuthKey_ABCDE12345.p8 
export APN_TEAM_ID=XYZDE99911
export APN_KEY_ID=ABCDE12345
export APN_BUNDLE_ID=com.bundle.id
```

#### Basic Use

```ruby
CLIENT = P8Pusher::Client.development # use '.production' for production use
devise_token = 'SOMEDEVISETOKEN'
notification = P8Pusher::Notification.new(device: devise_token)
notification.alert = 'Hello, World!'
notification.topic = 'com.some.other.id' # default is ENV['APN_BUNDLE_ID']
CLIENT.push(notification)
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tiksomlimited/p8_pusher. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/tiksomlimited/p8_pusher/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the P8Pusher project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tiksomlimited/p8_pusher/blob/master/CODE_OF_CONDUCT.md).
