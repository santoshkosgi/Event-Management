# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "postmark-rails"
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Petyo Ivanov", "Ilya Sabanin"]
  s.date = "2010-11-21"
  s.description = "Use this plugin in your rails applications to send emails through the Postmark API"
  s.email = "ilya@wildbit.com"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://postmarkapp.com"
  s.post_install_message = "\n      ==================\n      Thanks for installing the postmark-rails gem. If you don't have an account, please sign up at http://postmarkapp.com/.\n      Review the README.rdoc for implementation details and examples.\n      ==================\n    "
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Postmark adapter for ActionMailer"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionmailer>, [">= 0"])
      s.add_runtime_dependency(%q<postmark>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<actionmailer>, [">= 0"])
      s.add_dependency(%q<postmark>, [">= 0.9.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<actionmailer>, [">= 0"])
    s.add_dependency(%q<postmark>, [">= 0.9.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
