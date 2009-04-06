# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{redgreen}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Eyler", "Chris Wanstrath", "Luke Pearce"]
  s.date = %q{2009-04-06}
  s.default_executable = %q{rg}
  s.description = %q{kule-redgreen colourises windows console output for tests.  This version works with ZenTest 4.0.0, autotest, snarl, XP and Vista.  Please see the README file for setup or issues with Snarl.}
  s.email = %q{github@kulesolutions.com}
  s.executables = ["rg"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "README.markdown",
    "Rakefile",
    "bin/rg",
    "lib/redgreen.rb",
    "lib/redgreen/autotest.rb",
    "redgreen.gemspec",
    "version.yml"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/kule/redgreen}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{kule-redgreen colourises windows console output for tests.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
