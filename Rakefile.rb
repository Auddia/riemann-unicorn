require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-unicorn'

  s.name = 'riemann-unicorn'
  s.version = '0.0.1'
  s.author = 'Benjamin Good'
  s.email = 'bgood@clipinteractive.com'
  s.homepage = 'https://github.com/ClipInteractive/riemann-unicorn'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Unicorn Riemann Client'

  s.add_dependency 'riemann-tools', '>= 0.2.1'
  s.add_dependency 'unicorn', '>= 0.17.1'

  s.files = FileList['bin/*', 'LICENSE', 'README.md'].to_a
  s.executables |= Dir.entries('bin/')
  s.has_rdoc = false

  s.required_ruby_version = '>= 2.0.0'
end

Gem::PackageTask.new gemspec do |p|
end

RDoc::Task.new do |rd|
  rd.main = 'Riemann Unicorn'
  rd.title = 'Riemann Unicorn'
  rd.rdoc_dir = 'doc'
end
