# -*- encoding: utf-8 -*-
# stub: where_exists 1.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "where_exists".freeze
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eugene Zolotarev".freeze]
  s.date = "2021-02-07"
  s.description = "Rails way to harness the power of SQL \"EXISTS\" statement".freeze
  s.email = ["eugzol@gmail.com".freeze]
  s.homepage = "http://github.com/eugzol/where_exists".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.14".freeze
  s.summary = "#where_exists extension of ActiveRecord".freeze

  s.installed_by_version = "3.2.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2", "< 6.2"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.3"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.2", "< 6.2"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.4"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 6.0"])
  end
end
