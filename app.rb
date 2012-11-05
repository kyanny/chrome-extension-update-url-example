require 'sinatra'

get '/:appname/updates.xml' do
  <<-XML
<?xml version='1.0' encoding='UTF-8'?>
<gupdate xmlns='http://www.google.com/update2/response' protocol='2.0'>
  <app appid='cmemcpocaaejgcdonnbbgcdcnnhjagah'>
    <updatecheck codebase='http://localhost:9292/hello/extension.crx' version='1.1' />
  </app>
</gupdate>
XML
end

get '/:appname/extension.crx' do
  content_type 'application/x-chrome-extension'
  open('extension.crx').read
end
