# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paypal_adaptive"
  s.version = "0.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tommy Chheng"]
  s.date = "2012-02-10"
  s.description = "Lightweight wrapper for Paypal's Adaptive Payments API"
  s.email = ["tommy.chheng@gmail.com"]
  s.homepage = "http://github.com/tc/paypal_adaptive"
  s.require_paths = ["lib"]
  s.rubyforge_project = "paypal_adaptive"
  s.rubygems_version = "1.8.17"
  s.summary = "Lightweight wrapper for Paypal's Adaptive Payments API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["~> 1.6.0"])
      s.add_runtime_dependency(%q<jsonschema>, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<rake>, ["~> 0.8"])
    else
      s.add_dependency(%q<json>, ["~> 1.6.0"])
      s.add_dependency(%q<jsonschema>, ["~> 2.0.0"])
      s.add_dependency(%q<rake>, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<json>, ["~> 1.6.0"])
    s.add_dependency(%q<jsonschema>, ["~> 2.0.0"])
    s.add_dependency(%q<rake>, ["~> 0.8"])
  end
end
