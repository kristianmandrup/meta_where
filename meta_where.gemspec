# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{meta_where}
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ernie Miller"]
  s.date = %q{2010-06-27}
  s.description = %q{
      MetaWhere offers the ability to call any Arel predicate methods
      (with a few convenient aliases) on your Model's attributes instead
      of the ones normally offered by ActiveRecord's hash parameters. If
      you like the new AR 3.0 query interface, you'll love it with MetaWhere.
    }
  s.email = %q{ernie@metautonomo.us}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".gitmodules",
     "Gemfile",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/core_ext/hash.rb",
     "lib/core_ext/symbol.rb",
     "lib/core_ext/symbol_operators.rb",
     "lib/meta_where.rb",
     "lib/meta_where/builder.rb",
     "lib/meta_where/column.rb",
     "lib/meta_where/compound.rb",
     "lib/meta_where/condition.rb",
     "lib/meta_where/join_dependency.rb",
     "lib/meta_where/operator_list.rb",
     "lib/meta_where/relation.rb",
     "lib/meta_where/utility.rb",
     "meta_where.gemspec",
     "test/fixtures/companies.yml",
     "test/fixtures/company.rb",
     "test/fixtures/data_type.rb",
     "test/fixtures/data_types.yml",
     "test/fixtures/developer.rb",
     "test/fixtures/developers.yml",
     "test/fixtures/developers_projects.yml",
     "test/fixtures/note.rb",
     "test/fixtures/notes.yml",
     "test/fixtures/people.yml",
     "test/fixtures/person.rb",
     "test/fixtures/project.rb",
     "test/fixtures/projects.yml",
     "test/fixtures/schema.rb",
     "test/helper.rb",
     "test/test_operator_list.rb",
     "test/test_relations.rb"
  ]
  s.homepage = %q{http://metautonomo.us/projects/metawhere/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Add a dash of Arel awesomeness to your condition hashes.}
  s.test_files = [
    "test/fixtures/company.rb",
     "test/fixtures/data_type.rb",
     "test/fixtures/developer.rb",
     "test/fixtures/note.rb",
     "test/fixtures/person.rb",
     "test/fixtures/project.rb",
     "test/fixtures/schema.rb",
     "test/helper.rb",
     "test/test_operator_list.rb",
     "test/test_relations.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0.beta4"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
      s.add_runtime_dependency(%q<arel>, [">= 0.4.0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.0.beta4"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
      s.add_dependency(%q<arel>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.0.beta4"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
    s.add_dependency(%q<arel>, [">= 0.4.0"])
  end
end

