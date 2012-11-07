require 'octokit'
require 'open-uri'
require 'base64'
require 'json'
require 'pp'

oauth_token = ENV['OAUTH_TOKEN']

client = Octokit.new(login: 'kyanny', oauth_token: oauth_token)
client.contents('kyanny/chrome-extension-update-url-example').select { |content|
  content['name'].match(/\.crx$/)
}.each { |content|
  url = content['git_url'] + "?token=#{oauth_token}"
  json = JSON.parse(open(url).read)
  decoded_content = Base64.decode64(json['content'].chomp)
  open('hoge.crx', 'w') { |f|
    f.write decoded_content
  }
}

