# -*- coding: UTF-8 -*-
require 'tencentcloud-sdk-common'
require 'tencentcloud-sdk-vpc'

include TencentCloud::Common
include TencentCloud::Vpc::V20170312

begin
  # 为了保护密钥安全，建议将密钥设置在环境变量中或者配置文件中。
  # 硬编码密钥到代码中有可能随代码泄露而暴露，有安全隐患，并不推荐。
  cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])
  cli = Client.new(cred, "ap-guangzhou")

  # create vpc
  req = CreateVpcRequest.new()
  req.VpcName = "mytestvpc"
  req.CidrBlock = "192.168.0.0/24"
  rsp = cli.CreateVpc(req)
  puts rsp.serialize
  vpcid = rsp.Vpc.VpcId

  # retrieve vpc
  req = DescribeVpcsRequest.new()
  req.VpcIds = [vpcid]
  rsp = cli.DescribeVpcs(req)
  puts rsp.serialize

  # update vpc name
  req = ModifyVpcAttributeRequest.new()
  req.VpcId = vpcid
  req.VpcName = "foobar"
  rsp = cli.ModifyVpcAttribute(req)
  # check if the vpc name is set to the expected one
  req = DescribeVpcsRequest.new()
  req.VpcIds = [vpcid]
  rsp = cli.DescribeVpcs(req)
  puts rsp.VpcSet[0].VpcName

  # delete vpc
  req = DeleteVpcRequest.new()
  req.VpcId = vpcid
  rsp = cli.DeleteVpc(req)
  # check if the vpc is deleted
  req = DescribeVpcsRequest.new()
  req.VpcIds = [vpcid]
  rsp = cli.DescribeVpcs(req)
  puts rsp.serialize
rescue TencentCloudSDKException => e
  puts e.message
  puts e.backtrace.inspect
end
