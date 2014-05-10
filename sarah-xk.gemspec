Gem::Specification.new do |s|
  s.name	= "sarah-xk"
  s.version	= "0.0.2"
  s.date	= "2014-03-31"
  s.authors	= ["Brian Katzung"]
  s.email	= ["briank@kappacs.com"]
  s.homepage	= "http://rubygems.org/gems/sarah-xk"
  s.summary	= "Sarah with XKeys extended keys"
  s.description	= "Sarah with XKeys extended keys"
  s.license	= "MIT"
 
  s.files        = Dir.glob("lib/**/*") +
  		   %w{Gemfile Gemfile.lock sarah-xk.gemspec
		   .yardopts HISTORY.txt}
  s.test_files   = Dir.glob("test/**/*.rb")
  s.require_path = 'lib'
end
