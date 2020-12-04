Gem::Specification.new do |s|
  s.name = 'logstash-input-upd-cbc'
  s.version = '1.0.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This upd cbc input plugin. Decrypt packets."
  s.description = ""
  s.authors = ["Nedobytko Roman"]
  s.email = 'nedobytko.r@gmail.com'
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud', '>= 0.0.22'
  s.add_development_dependency 'logstash-devutils'
end
