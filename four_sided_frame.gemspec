# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{four_sided_frame}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arni Einarsson"]
  s.date = %q{2008-12-20}
  s.description = %q{Rails four sided frame view helper.}
  s.email = %q{arni.dwg@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "lib/four_sided_frame.rb", "lib/image_size.rb", "lib/image_sizes/jpg.rb", "lib/image_sizes/gif.rb", "lib/image_sizes/png.rb"]
  s.files = ["CHANGELOG", "four_sided_frame.gemspec", "README.rdoc", "init.rb", "Manifest", "lib/four_sided_frame.rb", "lib/image_size.rb", "lib/image_sizes/jpg.rb", "lib/image_sizes/gif.rb", "lib/image_sizes/png.rb", "Rakefile"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dwg/four_sided_frame}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Four_sided_frame", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{four_sided_frame}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Rails four sided frame view helper.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
