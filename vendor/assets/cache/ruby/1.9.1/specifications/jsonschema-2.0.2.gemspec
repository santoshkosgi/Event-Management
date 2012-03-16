# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jsonschema"
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Constellation"]
  s.date = "2012-02-28"
  s.description = "json schema library ruby porting from http://code.google.com/p/jsonschema/"
  s.email = "utatane.tea@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/Constellation/ruby-jsonchema/tree/master"
  s.rdoc_options = ["--main", "README.rdoc", "--charset", "utf-8", "--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "jsonschema"
  s.rubygems_version = "1.8.17"
  s.summary = "json schema library ruby porting from http://code.google.com/p/jsonschema/"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
