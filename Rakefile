@crxmake = 'crxmake'
@pack_extension = 'extension'
@extension_output = 'extension.crx'
@pack_extension_key = 'extension.pem'

desc 'package'
task :package do
  sh "#{@crxmake} --pack-extension=#{@pack_extension} --extension-output=#{@extension_output} --pack-extension-key=#{@pack_extension_key}"
end

task :default => :package
