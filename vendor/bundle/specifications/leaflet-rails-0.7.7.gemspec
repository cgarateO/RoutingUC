# -*- encoding: utf-8 -*-
# stub: leaflet-rails 0.7.7 ruby lib

Gem::Specification.new do |s|
  s.name = "leaflet-rails"
  s.version = "0.7.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Akshay Joshi"]
  s.date = "2016-03-01"
  s.description = "This gem provides the leaflet.js map display library for your Rails 4 application."
  s.email = ["joshi.a@gmail.com"]
  s.homepage = ""
  s.licenses = ["BSD"]
  s.rubyforge_project = "leaflet-rails"
  s.rubygems_version = "2.5.1"
  s.summary = "Use leaflet.js with Rails 4."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["<= 3.4.0"])
      s.add_development_dependency(%q<simplecov-rcov>, [">= 0"])
      s.add_development_dependency(%q<actionpack>, [">= 4.2.0"])
      s.add_development_dependency(%q<activesupport>, [">= 4.2.0"])
      s.add_development_dependency(%q<railties>, [">= 4.2.0"])
    else
      s.add_dependency(%q<rspec>, ["<= 3.4.0"])
      s.add_dependency(%q<simplecov-rcov>, [">= 0"])
      s.add_dependency(%q<actionpack>, [">= 4.2.0"])
      s.add_dependency(%q<activesupport>, [">= 4.2.0"])
      s.add_dependency(%q<railties>, [">= 4.2.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["<= 3.4.0"])
    s.add_dependency(%q<simplecov-rcov>, [">= 0"])
    s.add_dependency(%q<actionpack>, [">= 4.2.0"])
    s.add_dependency(%q<activesupport>, [">= 4.2.0"])
    s.add_dependency(%q<railties>, [">= 4.2.0"])
  end
end
