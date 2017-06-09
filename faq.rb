require 'rest-client'

res = RestClient.post(
  'http://test.faqrobot.cn/servlet/ApiChat', 
  {'access_token' => 'idYRut5yS40rTMXzgrAGqremPcExbORBE290ZTIVDH23Vram2x', 
  'clientId' => '8ee5ec71-4fca-4be4-b156-797c0c651735', 
  's' => 'p'}
)

puts res.request.headers.inspect
puts res

puts "下面这个是正确的"
res = RestClient.post(
  'http://test.faqrobot.cn/servlet/ApiChat', 
  {
    'access_token' => 'idYRut5yS40rTMXzgrAGqremPcExbORBE290ZTIVDH23Vram2x', 
    'clientId' => '8ee5ec71-4fca-4be4-b156-797c0c651735', 
    's' => 'p'
  },
  {
    accept: :json
  }
)

puts res.request.headers.inspect
puts res


