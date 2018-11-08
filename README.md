# Playlist::Puller

The gem `playlist-puller` is a library and a CLI tool for pulling remote music
files from a playlist (M3U, XSPF, a simple human readable format) to a
destination directory.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'playlist-puller'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install playlist-puller

## Usage

The library based on the `playlist` gem. So let's assume that you have just been
parsed a playlist with some tracks like this:

```rb
File.open("playlist.m3u") do |file|
  playlist = Playlist::Format::M3U.parse(file)
  puts "The playlist contains #{playlist.tracks.count} tracks"
end
```

Having this we could do something like that:

```ruby
puller = Playlist::Puller.new(playlist)

# it automatically generates a list with all tracks from original playlist
puller.list.first #=> 

```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CyJimmy264/playlist-puller.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
