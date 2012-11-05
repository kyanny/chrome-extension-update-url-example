# -*- coding: utf-8 -*-
require 'json'

@version = open('VERSION').read.chomp

@manifest = {
  name: "Hello Extension",
  version: @version.to_s,
  description: "Hello Extension is for testing auto update",
  icons: {"128" => "potato.jpeg" },
  permissions: ["http://*", "https://*"],
  browser_action: {
    default_title: @version.to_s,
    default_icon: "potato.jpeg",
    popup: "popup.html",
  },
  update_url:"http://localhost:9292/hello/updates.xml",
}

@crxmake = 'crxmake'
@pack_extension = 'extension'
@extension_output = 'extension.crx'
@pack_extension_key = 'extension.pem'

desc 'bump version'
task :bump_version do
  version = open('VERSION').read.chomp.to_i
  open('VERSION', 'w') { |f|
    f.puts version + 1
  }
end

desc 'manifest'
task :manifest do
  open('extension/manifest.json', 'w') { |f|
    f.puts JSON.pretty_generate @manifest
  }
end

desc 'package'
task :package do
  sh "#{@crxmake} --pack-extension=#{@pack_extension} --extension-output=#{@extension_output} --pack-extension-key=#{@pack_extension_key}"
end

task :default => [:bump_version, :manifest, :package]
