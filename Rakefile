require 'rake/testtask'

desc "Run tests (default)"
Rake::TestTask.new do |t|
  t.libs.push 'test'
  t.test_files = FileList['test/*/*_test.rb']
  t.verbose = false
end

desc "Run tests"
task :default => :test

Rake::TestTask.new do |t|
  t.name = "test:models"
  t.libs << "test"
  t.pattern = "test/models/*_test.rb"
end

Rake::TestTask.new do |t|
  t.name = "test:roles"
  t.libs << "test"
  t.pattern = "test/roles/*_test.rb"
end

Rake::TestTask.new do |t|
  t.name = "test:contexts"
  t.libs << "test"
  t.pattern = "test/contexts/*_test.rb"
end
