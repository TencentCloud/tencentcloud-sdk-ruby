# -*- coding: UTF-8 -*-
require 'tencentcloud-sdk-common'
require 'tencentcloud-sdk-cvm'

begin
  include TencentCloud::Common
  include TencentCloud::Cvm::V20170312

  # cred = Credential.new('SecretId', 'SecretKey')
  cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])

  http_profile = HttpProfile.new()
  # 如果需要指定proxy访问接口，可以按照如下方式初始化hp
  # http_profile = HttpProfile.new(proxy='http://用户名:密码@代理IP:代理端口')
  http_profile.scheme = "https"  # 在外网互通的网络环境下支持http协议(默认是https协议),建议使用https协议
  http_profile.req_method = "GET"  # get请求(默认为post请求)
  http_profile.req_timeout = 30    # 请求超时时间，单位为秒(默认60秒)
  http_profile.endpoint = "cvm.tencentcloudapi.com"  # 指定接入地域域名(默认就近接入)

  # 实例化一个client选项，可选的，没有特殊需求可以跳过。
  client_profile = ClientProfile.new()
  client_profile.sign_method = "TC3-HMAC-SHA256"  # 指定签名算法
  client_profile.language = "en-US"  # 指定展示英文（默认为中文）
  client_profile.http_profile = http_profile
  client_profile.debug = true # 打印debug日志

  # 实例化要请求产品(以cvm为例)的client对象，clientProfile是可选的。
  client = Client.new(cred, "ap-shanghai", client_profile)
  req = DescribeInstancesRequest.new()
  resp = client.DescribeInstances(req)
  puts resp.serialize
rescue TencentCloudSDKException => e
  puts e.message
  puts e.backtrace.inspect
end
