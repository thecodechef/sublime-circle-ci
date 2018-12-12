require 'rspec/core/rake_task'
require 'bundler'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new do |t|
	t.pattern = "./spec/**/*_spec.rb"
end

desc "Remove Trailing whitespace"
task :remove_whitespace do
	require 'rbconfig'
	
	Dir.chdir(File.expand_path('..',__FILE__)) do
	    if RbConfig::CONFIG['host_os'] =~ /linux/
		    sh %( find . -name '*.*rb' -exec sed -i 's/\t/ /g' {} \\; -exec sed -i 's/ *$//g' {} \\;)
	    elsif RbConfig::CONFIG['host_os'] =~ /darwin/
		    sh %{find . -name '*.*rb' -exec sed -i '' 's/\t/ /g' {} \\; -exec sed -i '' 's/ *$//g' {} \\; }
	    else
		    puts "This doesn't work on systems other than OSX or Linux. Please use a custom whitespace tool for your platform '#{RbConfig::CONFIG["host_os"]}'."
	    end
    end
end