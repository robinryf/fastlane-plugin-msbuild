# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/msbuild/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-msbuildr'
  spec.version       = Fastlane::Msbuild::VERSION
  spec.author        = %q{Jeff Ward}
  spec.email         = %q{jeff.ward@willowtreeapps.com}

  spec.summary       = %q{Build a Xamarin.iOS or Xamarin.Android project using msbuild}
  spec.homepage      = "https://github.com/willowtreeapps/fastlane-plugin-msbuild"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'nokogiri'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.16.0'
end
