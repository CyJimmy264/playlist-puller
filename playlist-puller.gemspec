
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "playlist/puller/version"

Gem::Specification.new do |spec|
  spec.name          = "playlist-puller"
  spec.version       = Playlist::Puller::VERSION
  spec.authors       = ["Maksim Veynberg"]
  spec.email         = ["mv@cj264.ru"]

  spec.summary       = "Pulls remote files from a playlist."
  spec.description   = "A library and a CLI tool to pull remote music files from a playlist (M3U, XSPF, etc.) to a destination directory."
  spec.homepage      = "https://github.com/CyJimmy264/playlist-puller"
  spec.license       = "MIT"

  spec.add_dependency "playlist"
  spec.add_dependency "down"
  spec.add_dependency "ruby-progressbar"
  spec.add_dependency "activesupport"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
end
