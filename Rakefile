# -*- coding: utf-8 -*-
require 'json'

def get_version
  open('VERSION').read.chomp
end

@manifest = lambda {
  {
    name: "Hello Extension",
    version: get_version,
    description: "Hello Extension is for testing auto update",
    icons: {"128" => "potato.jpeg" },
    permissions: ["http://*", "https://*"],
    browser_action: {
      default_title: get_version,
      default_icon: "potato.jpeg",
      popup: "popup.html",
    },
    update_url:"http://localhost:9292/hello/updates.xml",
  }
}

@crxmake = 'crxmake'
@pack_extension = 'extension'
@extension_output = 'extension.crx'
@pack_extension_key = 'extension.pem'

desc 'bump version'
task :bump_version do
  version = open('VERSION').read.chomp.to_i
  version += 1
  open('VERSION', 'w') { |f|
    f.puts version
  }
end

desc 'manifest'
task :manifest do
  open('extension/manifest.json', 'w') { |f|
    f.puts JSON.pretty_generate @manifest.call
  }
end

desc 'package'
task :package do
  sh "#{@crxmake} --pack-extension=#{@pack_extension} --extension-output=#{@extension_output} --pack-extension-key=#{@pack_extension_key}"
end

task :default => [:bump_version, :manifest, :package]
