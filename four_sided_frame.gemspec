# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{four_sided_frame}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arni Einarsson"]
  s.date = %q{2008-12-18}
  s.description = %q{Generate a unique token with Active Record.}
  s.email = %q{arni.dwg@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/four_sided_frame.rb"]
  s.files = ["README.rdoc", "lib/four_sided_frame.rb", "Rakefile", "Manifest", "four_sided_frame.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dwg/four_sided_frame}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Four_sided_frame", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{four_sided_frame}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Generate a unique token with Active Record.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
