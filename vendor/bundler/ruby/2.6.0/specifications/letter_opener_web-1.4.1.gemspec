# -*- encoding: utf-8 -*-
# stub: letter_opener_web 1.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "letter_opener_web".freeze
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fabio Rehm".freeze, "David Muto".freeze]
  s.date = "2021-10-06"
  s.description = "Gives letter_opener an interface for browsing sent emails".freeze
  s.email = ["fgrehm@gmail.com".freeze, "david.muto@gmail.com".freeze]
  s.homepage = "https://github.com/fgrehm/letter_opener_web".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Gives letter_opener an interface for browsing sent emails".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 3.2"])
    s.add_runtime_dependency(%q<letter_opener>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.2"])
    s.add_development_dependency(%q<rails>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.79"])
    s.add_development_dependency(%q<shoulda-matchers>.freeze, ["~> 2.5"])
  else
    s.add_dependency(%q<actionmailer>.freeze, [">= 3.2"])
    s.add_dependency(%q<letter_opener>.freeze, ["~> 1.0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.2"])
    s.add_dependency(%q<rails>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.79"])
    s.add_dependency(%q<shoulda-matchers>.freeze, ["~> 2.5"])
  end
end
