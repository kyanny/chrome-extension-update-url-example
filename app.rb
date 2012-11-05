require 'sinatra'

get '/:appname/updates.xml' do
  <<-XML
<?xml version='1.0' encoding='UTF-8'?>
<gupdate xmlns='http://www.google.com/update2/response' protocol='2.0'>
  <app appid='cmemcpocaaejgcdonnbbgcdcnnhjagah'>
    <updatecheck codebase='http://localhost:9292/extension.crx' version='1.0' />
  </app>
</gupdate>
XML
end
