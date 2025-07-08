require 'minitest/autorun'
$LOAD_PATH.unshift(File.expand_path('../../tencentcloud-sdk-common/lib', __dir__))
require_relative '../../tencentcloud-sdk-cvm/lib/tencentcloud-sdk-cvm'

include TencentCloud::Common
include TencentCloud::Cvm::V20170312

class TestSignV3 < Minitest::Test
  def test_default_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])
    cli = Client.new(cred, 'ap-guangzhou')
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end

  def test_get_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])
    hp = HttpProfile.new()
    hp.req_method = "GET"
    cp = ClientProfile.new()
    cp.http_profile = hp
    cli = Client.new(cred, 'ap-guangzhou', cp)
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end

  def test_post_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])
    hp = HttpProfile.new()
    hp.req_method = "POST"
    cp = ClientProfile.new()
    cp.http_profile = hp
    cli = Client.new(cred, 'ap-guangzhou', cp)
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end

  def test_cn_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])
    hp = HttpProfile.new()
    cp = ClientProfile.new()
    cp.http_profile = hp
    cp.language = "zh-CN"
    cli = Client.new(cred, 'ap-guangzhou', cp)
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end

  def test_en_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"])
    hp = HttpProfile.new()
    cp = ClientProfile.new()
    cp.http_profile = hp
    cp.language = "en-US"
    cli = Client.new(cred, 'ap-guangzhou', cp)
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end

  def test_sts_token_empty_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"], "")
    cli = Client.new(cred, 'ap-guangzhou')
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end

  def test_sts_token_nil_ok
    cred = Credential.new(ENV["TENCENTCLOUD_SECRET_ID"], ENV["TENCENTCLOUD_SECRET_KEY"], nil)
    cli = Client.new(cred, 'ap-guangzhou')
    req = DescribeInstancesRequest.new(nil, nil, 0, 1)
    rsp = cli.DescribeInstances(req)
    assert rsp.TotalCount >= 0
  end
end
