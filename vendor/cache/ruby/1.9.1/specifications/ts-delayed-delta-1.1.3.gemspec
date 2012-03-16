# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ts-delayed-delta"
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Allan"]
  s.date = "2012-03-02"
  s.description = "Manage delta indexes via Delayed Job for Thinking Sphinx"
  s.email = ["pat@freelancing-gods.com"]
  s.homepage = "http://github.com/freelancing-god/ts-delayed-delta"
  s.require_paths = ["lib"]
  s.rubyforge_project = "ts-delayed-delta"
  s.rubygems_version = "1.8.17"
  s.summary = "Thinking Sphinx - Delayed Deltas"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thinking-sphinx>, [">= 1.3.6"])
      s.add_runtime_dependency(%q<delayed_job>, [">= 2.0.4"])
      s.add_development_dependency(%q<mysql2>, ["= 0.3.7"])
      s.add_development_dependency(%q<yard>, [">= 0.7.2"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["= 2.6.0"])
      s.add_development_dependency(%q<cucumber>, ["= 1.0.2"])
    else
      s.add_dependency(%q<thinking-sphinx>, [">= 1.3.6"])
      s.add_dependency(%q<delayed_job>, [">= 2.0.4"])
      s.add_dependency(%q<mysql2>, ["= 0.3.7"])
      s.add_dependency(%q<yard>, [">= 0.7.2"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<rspec>, ["= 2.6.0"])
      s.add_dependency(%q<cucumber>, ["= 1.0.2"])
    end
  else
    s.add_dependency(%q<thinking-sphinx>, [">= 1.3.6"])
    s.add_dependency(%q<delayed_job>, [">= 2.0.4"])
    s.add_dependency(%q<mysql2>, ["= 0.3.7"])
    s.add_dependency(%q<yard>, [">= 0.7.2"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<rspec>, ["= 2.6.0"])
    s.add_dependency(%q<cucumber>, ["= 1.0.2"])
  end
end
