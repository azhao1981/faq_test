require 'rest-client'
RestClient.log = 'stdout'

# res = RestClient.post(
#   'http://test.faqrobot.cn/servlet/ApiChat', 
#   {
#     'access_token' => 'idYRut5yS40rTMXzgrAGqremPcExbORBE290ZTIVDH23Vram2x', 
#     'clientId' => '8ee5ec71-4fca-4be4-b156-797c0c651735', 
#     's' => 'p',
#     timestramp: Time.now.to_i
#   }
# )

# puts res.request.headers.inspect
# puts res

# puts "下面这个是正确的"
# res = RestClient.post(
#   'http://test.faqrobot.cn/servlet/ApiChat', 
#   {
#     'access_token' => 'idYRut5yS40rTMXzgrAGqremPcExbORBE290ZTIVDH23Vram2x', 
#     'clientId' => '8ee5ec71-4fca-4be4-b156-797c0c651735', 
#     's' => 'p'
#   },
#   {
#     accept: [:json,:xml]
#   }
# )

# puts res.request.headers.inspect
# puts res

puts "下面这个是正确的"
res = RestClient.get(
  "http://udesk.faqrobot.org/servlet/WXChat?Content=%E4%B8%9A%E5%8A%A1&CreateTime=1496992225&FromUserName=xxxx&MsgId=1234566&MsgType=text&ToUserName=wxfa58dc3b9f0ba6ae&appKey=3614caa6a9d10a56221fc2012e6b6313&sourceId=1&sysNum=14519815792418039",
  {
      accept: [:json,:xml]
    }
  )
puts res.request.headers.inspect
puts res

puts "下面这个是错误的"
res = RestClient.get(
  "http://test.faqrobot.cn/servlet/WXChat?Content=%E4%B8%9A%E5%8A%A1&CreateTime=1496992556&FromUserName=xxxx&MsgId=1234566&MsgType=text&ToUserName=wxfa58dc3b9f0ba6ae&appKey=3614caa6a9d10a56221fc2012e6b6313&sourceId=1&sysNum=14519815792418039",
    {
      accept: "text/plain"
    }
  )
puts res.request.headers.inspect
puts res


