# frozen_string_literal: true
 # Все зависимости, необходимые во время разработки и тестирования, переехали в Gemfile.
require_relative "lib/polinatswet_palindrome/version"

Gem::Specification.new do |spec|
  spec.name = "polinatswet_palindrome"
  spec.version = PolinatswetPalindrome::VERSION
  spec.authors = ["Polina Tswet"]
  spec.email = ["qa.polina.tswet@gmail.com"]

  spec.summary = %q{Palindrome detector}
  spec.description = %q{Learn Enough Ruby palindrome detector}
  spec.homepage = "https://github.com/polinatswet/polinatswet_palindrome.git"
  spec.required_ruby_version = ">= 2.6.0"
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to? (:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
      raise "RubyGems is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
   # Все зависимости, необходимые во время разработки и тестирования, переехали в Gemfile.
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
