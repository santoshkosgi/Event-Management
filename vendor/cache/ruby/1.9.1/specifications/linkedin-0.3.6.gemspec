# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "linkedin"
  s.version = "0.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wynn Netherland", "Josh Kalderimis"]
  s.date = "2011-11-10"
  s.description = "Ruby wrapper for the LinkedIn API"
  s.email = ["wynn.netherland@gmail.com", "josh.kalderimis@gmail.com"]
  s.homepage = "http://github.com/pengwynn/linkedin"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Ruby wrapper for the LinkedIn API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0.3"])
      s.add_runtime_dependency(%q<oauth>, ["~> 0.4.5"])
      s.add_development_dependency(%q<json>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.8"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.5"])
      s.add_development_dependency(%q<vcr>, ["~> 1.10"])
      s.add_development_dependency(%q<webmock>, ["~> 1.7"])
    else
      s.add_dependency(%q<hashie>, ["~> 1.2.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0.3"])
      s.add_dependency(%q<oauth>, ["~> 0.4.5"])
      s.add_dependency(%q<json>, ["~> 1.6"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rdoc>, ["~> 3.8"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<simplecov>, ["~> 0.5"])
      s.add_dependency(%q<vcr>, ["~> 1.10"])
      s.add_dependency(%q<webmock>, ["~> 1.7"])
    end
  else
    s.add_dependency(%q<hashie>, ["~> 1.2.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0.3"])
    s.add_dependency(%q<oauth>, ["~> 0.4.5"])
    s.add_dependency(%q<json>, ["~> 1.6"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rdoc>, ["~> 3.8"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<simplecov>, ["~> 0.5"])
    s.add_dependency(%q<vcr>, ["~> 1.10"])
    s.add_dependency(%q<webmock>, ["~> 1.7"])
  end
end
