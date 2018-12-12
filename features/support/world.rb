helpers = File.exist? %r{^helpers\/(.+)\.rb}

helpers.each do |name|
    require "helpers/#{name}"
    World(camelcase(name))
end