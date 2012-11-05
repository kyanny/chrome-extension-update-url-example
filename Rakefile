@crxmake = 'crxmake'
@pack_extension = File.dirname(__FILE__)
@extension_output = File.dirname(__FILE__)
@pack_extension_key = 'hello.pem'

desc 'package'
task :package do
  sh "#{@crxmake} --pack-extension=#{@pack_extension} --extension-output=#{@extension_output} --pack-extension-key=#{@pack_extension_key}"
end

task :default => :package
