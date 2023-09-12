# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'json'

module TencentCloud
  module Antiddos
    module V20200309
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-03-09'
            api_endpoint = 'antiddos.tencentcloudapi.com'
            sdk_version = 'ANTIDDOS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口 (AssociateDDoSEipAddress) 用于将高防弹性公网IP绑定到实例或弹性网卡的指定内网 IP 上。

        # @param request: Request instance for AssociateDDoSEipAddress.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::AssociateDDoSEipAddressRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::AssociateDDoSEipAddressResponse`
        def AssociateDDoSEipAddress(request)
          body = send_request('AssociateDDoSEipAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateDDoSEipAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AssociateDDoSEipLoadBalancer) 用于将高防弹性公网IP绑定到负载均衡指定内网 IP 上。

        # @param request: Request instance for AssociateDDoSEipLoadBalancer.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::AssociateDDoSEipLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::AssociateDDoSEipLoadBalancerResponse`
        def AssociateDDoSEipLoadBalancer(request)
          body = send_request('AssociateDDoSEipLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateDDoSEipLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的IP黑白名单

        # @param request: Request instance for CreateBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateBlackWhiteIpListResponse`
        def CreateBlackWhiteIpList(request)
          body = send_request('CreateBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定IP到高防包实例，支持独享包、共享包（新版）；需要注意的是此接口绑定或解绑IP是异步接口，当处于绑定或解绑中时，则不允许再进行绑定或解绑，需要等待当前绑定或解绑完成。

        # @param request: Request instance for CreateBoundIP.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateBoundIPRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateBoundIPResponse`
        def CreateBoundIP(request)
          body = send_request('CreateBoundIP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBoundIPResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增CC精准防护策略

        # @param request: Request instance for CreateCCPrecisionPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateCCPrecisionPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateCCPrecisionPolicyResponse`
        def CreateCCPrecisionPolicy(request)
          body = send_request('CreateCCPrecisionPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCCPrecisionPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增CC频率限制策略

        # @param request: Request instance for CreateCCReqLimitPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateCCReqLimitPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateCCReqLimitPolicyResponse`
        def CreateCCReqLimitPolicy(request)
          body = send_request('CreateCCReqLimitPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCCReqLimitPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建CC四层黑白名单

        # @param request: Request instance for CreateCcBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateCcBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateCcBlackWhiteIpListResponse`
        def CreateCcBlackWhiteIpList(request)
          body = send_request('CreateCcBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCcBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建cc防护的地域封禁配置

        # @param request: Request instance for CreateCcGeoIPBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateCcGeoIPBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateCcGeoIPBlockConfigResponse`
        def CreateCcGeoIPBlockConfig(request)
          body = send_request('CreateCcGeoIPBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCcGeoIPBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置DDoS防护的AI防护开关

        # @param request: Request instance for CreateDDoSAI.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSAIRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSAIResponse`
        def CreateDDoSAI(request)
          body = send_request('CreateDDoSAI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSAIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的IP网段黑白名单

        # @param request: Request instance for CreateDDoSBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSBlackWhiteIpListResponse`
        def CreateDDoSBlackWhiteIpList(request)
          body = send_request('CreateDDoSBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置DDoS连接抑制选项

        # @param request: Request instance for CreateDDoSConnectLimit.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSConnectLimitRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSConnectLimitResponse`
        def CreateDDoSConnectLimit(request)
          body = send_request('CreateDDoSConnectLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSConnectLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的区域封禁配置

        # @param request: Request instance for CreateDDoSGeoIPBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSGeoIPBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSGeoIPBlockConfigResponse`
        def CreateDDoSGeoIPBlockConfig(request)
          body = send_request('CreateDDoSGeoIPBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSGeoIPBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的访问限速配置

        # @param request: Request instance for CreateDDoSSpeedLimitConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSSpeedLimitConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateDDoSSpeedLimitConfigResponse`
        def CreateDDoSSpeedLimitConfig(request)
          body = send_request('CreateDDoSSpeedLimitConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSSpeedLimitConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置单IP默认告警阈值配置

        # @param request: Request instance for CreateDefaultAlarmThreshold.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateDefaultAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateDefaultAlarmThresholdResponse`
        def CreateDefaultAlarmThreshold(request)
          body = send_request('CreateDefaultAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDefaultAlarmThresholdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置单IP告警阈值配置

        # @param request: Request instance for CreateIPAlarmThresholdConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateIPAlarmThresholdConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateIPAlarmThresholdConfigResponse`
        def CreateIPAlarmThresholdConfig(request)
          body = send_request('CreateIPAlarmThresholdConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIPAlarmThresholdConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量配置L7转发规则的证书供SSL测调用

        # @param request: Request instance for CreateL7RuleCerts.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateL7RuleCertsRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateL7RuleCertsResponse`
        def CreateL7RuleCerts(request)
          body = send_request('CreateL7RuleCerts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7RuleCertsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加7层转发规则

        # @param request: Request instance for CreateNewL7Rules.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateNewL7RulesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateNewL7RulesResponse`
        def CreateNewL7Rules(request)
          body = send_request('CreateNewL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNewL7RulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的特征过滤规则

        # @param request: Request instance for CreatePacketFilterConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreatePacketFilterConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreatePacketFilterConfigResponse`
        def CreatePacketFilterConfig(request)
          body = send_request('CreatePacketFilterConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePacketFilterConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的端口acl策略

        # @param request: Request instance for CreatePortAclConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreatePortAclConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreatePortAclConfigResponse`
        def CreatePortAclConfig(request)
          body = send_request('CreatePortAclConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePortAclConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量添加DDoS防护的端口acl策略

        # @param request: Request instance for CreatePortAclConfigList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreatePortAclConfigListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreatePortAclConfigListResponse`
        def CreatePortAclConfigList(request)
          body = send_request('CreatePortAclConfigList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePortAclConfigListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置DDoS防护的协议封禁配置

        # @param request: Request instance for CreateProtocolBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateProtocolBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateProtocolBlockConfigResponse`
        def CreateProtocolBlockConfig(request)
          body = send_request('CreateProtocolBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProtocolBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个域名，可用于在封堵时调度切换IP

        # @param request: Request instance for CreateSchedulingDomain.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateSchedulingDomainRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateSchedulingDomainResponse`
        def CreateSchedulingDomain(request)
          body = send_request('CreateSchedulingDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSchedulingDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的水印防护配置

        # @param request: Request instance for CreateWaterPrintConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateWaterPrintConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateWaterPrintConfigResponse`
        def CreateWaterPrintConfig(request)
          body = send_request('CreateWaterPrintConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWaterPrintConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加DDoS防护的水印防护密钥

        # @param request: Request instance for CreateWaterPrintKey.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::CreateWaterPrintKeyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::CreateWaterPrintKeyResponse`
        def CreateWaterPrintKey(request)
          body = send_request('CreateWaterPrintKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWaterPrintKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC分级策略

        # @param request: Request instance for DeleteCCLevelPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteCCLevelPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteCCLevelPolicyResponse`
        def DeleteCCLevelPolicy(request)
          body = send_request('DeleteCCLevelPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCLevelPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC精准防护策略

        # @param request: Request instance for DeleteCCPrecisionPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteCCPrecisionPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteCCPrecisionPolicyResponse`
        def DeleteCCPrecisionPolicy(request)
          body = send_request('DeleteCCPrecisionPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCPrecisionPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC频率限制策略

        # @param request: Request instance for DeleteCCRequestLimitPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteCCRequestLimitPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteCCRequestLimitPolicyResponse`
        def DeleteCCRequestLimitPolicy(request)
          body = send_request('DeleteCCRequestLimitPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCRequestLimitPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC清洗阈值策略

        # @param request: Request instance for DeleteCCThresholdPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteCCThresholdPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteCCThresholdPolicyResponse`
        def DeleteCCThresholdPolicy(request)
          body = send_request('DeleteCCThresholdPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCThresholdPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC四层黑白名单

        # @param request: Request instance for DeleteCcBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteCcBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteCcBlackWhiteIpListResponse`
        def DeleteCcBlackWhiteIpList(request)
          body = send_request('DeleteCcBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCcBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC防护的区域封禁配置

        # @param request: Request instance for DeleteCcGeoIPBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteCcGeoIPBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteCcGeoIPBlockConfigResponse`
        def DeleteCcGeoIPBlockConfig(request)
          body = send_request('DeleteCcGeoIPBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCcGeoIPBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的IP网段黑白名单

        # @param request: Request instance for DeleteDDoSBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteDDoSBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteDDoSBlackWhiteIpListResponse`
        def DeleteDDoSBlackWhiteIpList(request)
          body = send_request('DeleteDDoSBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDDoSBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的区域封禁配置

        # @param request: Request instance for DeleteDDoSGeoIPBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteDDoSGeoIPBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteDDoSGeoIPBlockConfigResponse`
        def DeleteDDoSGeoIPBlockConfig(request)
          body = send_request('DeleteDDoSGeoIPBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDDoSGeoIPBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的访问限速配置

        # @param request: Request instance for DeleteDDoSSpeedLimitConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteDDoSSpeedLimitConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteDDoSSpeedLimitConfigResponse`
        def DeleteDDoSSpeedLimitConfig(request)
          body = send_request('DeleteDDoSSpeedLimitConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDDoSSpeedLimitConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的特征过滤规则

        # @param request: Request instance for DeletePacketFilterConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeletePacketFilterConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeletePacketFilterConfigResponse`
        def DeletePacketFilterConfig(request)
          body = send_request('DeletePacketFilterConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePacketFilterConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的端口acl策略

        # @param request: Request instance for DeletePortAclConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeletePortAclConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeletePortAclConfigResponse`
        def DeletePortAclConfig(request)
          body = send_request('DeletePortAclConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePortAclConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的水印防护配置

        # @param request: Request instance for DeleteWaterPrintConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteWaterPrintConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteWaterPrintConfigResponse`
        def DeleteWaterPrintConfig(request)
          body = send_request('DeleteWaterPrintConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWaterPrintConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DDoS防护的水印防护密钥

        # @param request: Request instance for DeleteWaterPrintKey.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteWaterPrintKeyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteWaterPrintKeyResponse`
        def DeleteWaterPrintKey(request)
          body = send_request('DeleteWaterPrintKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWaterPrintKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基础防护攻击状态

        # @param request: Request instance for DescribeBasicDeviceStatus.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeBasicDeviceStatusRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeBasicDeviceStatusResponse`
        def DescribeBasicDeviceStatus(request)
          body = send_request('DescribeBasicDeviceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicDeviceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高防包流量折线图

        # @param request: Request instance for DescribeBgpBizTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeBgpBizTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeBgpBizTrendResponse`
        def DescribeBgpBizTrend(request)
          body = send_request('DescribeBgpBizTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBgpBizTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取业务流量状态码统计列表

        # @param request: Request instance for DescribeBizHttpStatus.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeBizHttpStatusRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeBizHttpStatusResponse`
        def DescribeBizHttpStatus(request)
          body = send_request('DescribeBizHttpStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBizHttpStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高防IP业务监控流量曲线

        # @param request: Request instance for DescribeBizMonitorTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeBizMonitorTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeBizMonitorTrendResponse`
        def DescribeBizMonitorTrend(request)
          body = send_request('DescribeBizMonitorTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBizMonitorTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取业务流量曲线

        # @param request: Request instance for DescribeBizTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeBizTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeBizTrendResponse`
        def DescribeBizTrend(request)
          body = send_request('DescribeBizTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBizTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的IP黑白名单

        # @param request: Request instance for DescribeBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeBlackWhiteIpListResponse`
        def DescribeBlackWhiteIpList(request)
          body = send_request('DescribeBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取边界防护CC防护等级列表

        # @param request: Request instance for DescribeCCLevelList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCCLevelListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCCLevelListResponse`
        def DescribeCCLevelList(request)
          body = send_request('DescribeCCLevelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCLevelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC分级策略

        # @param request: Request instance for DescribeCCLevelPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCCLevelPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCCLevelPolicyResponse`
        def DescribeCCLevelPolicy(request)
          body = send_request('DescribeCCLevelPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCLevelPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC精准防护列表

        # @param request: Request instance for DescribeCCPrecisionPlyList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCCPrecisionPlyListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCCPrecisionPlyListResponse`
        def DescribeCCPrecisionPlyList(request)
          body = send_request('DescribeCCPrecisionPlyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCPrecisionPlyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC频率限制策略列表

        # @param request: Request instance for DescribeCCReqLimitPolicyList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCCReqLimitPolicyListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCCReqLimitPolicyListResponse`
        def DescribeCCReqLimitPolicyList(request)
          body = send_request('DescribeCCReqLimitPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCReqLimitPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC清洗阈值列表

        # @param request: Request instance for DescribeCCThresholdList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCCThresholdListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCCThresholdListResponse`
        def DescribeCCThresholdList(request)
          body = send_request('DescribeCCThresholdList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCThresholdListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC攻击指标数据，包括总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数

        # @param request: Request instance for DescribeCCTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCCTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCCTrendResponse`
        def DescribeCCTrend(request)
          body = send_request('DescribeCCTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC四层黑白名单列表

        # @param request: Request instance for DescribeCcBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCcBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCcBlackWhiteIpListResponse`
        def DescribeCcBlackWhiteIpList(request)
          body = send_request('DescribeCcBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC防护的区域封禁配置列表

        # @param request: Request instance for DescribeCcGeoIPBlockConfigList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeCcGeoIPBlockConfigListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeCcGeoIPBlockConfigListResponse`
        def DescribeCcGeoIPBlockConfigList(request)
          body = send_request('DescribeCcGeoIPBlockConfigList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcGeoIPBlockConfigListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的IP网段黑白名单

        # @param request: Request instance for DescribeDDoSBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeDDoSBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeDDoSBlackWhiteIpListResponse`
        def DescribeDDoSBlackWhiteIpList(request)
          body = send_request('DescribeDDoSBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS连接抑制配置列表

        # @param request: Request instance for DescribeDDoSConnectLimitList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeDDoSConnectLimitListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeDDoSConnectLimitListResponse`
        def DescribeDDoSConnectLimitList(request)
          body = send_request('DescribeDDoSConnectLimitList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSConnectLimitListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS攻击流量带宽和攻击包速率数据

        # @param request: Request instance for DescribeDDoSTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeDDoSTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeDDoSTrendResponse`
        def DescribeDDoSTrend(request)
          body = send_request('DescribeDDoSTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单IP默认告警阈值配置

        # @param request: Request instance for DescribeDefaultAlarmThreshold.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeDefaultAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeDefaultAlarmThresholdResponse`
        def DescribeDefaultAlarmThreshold(request)
          body = send_request('DescribeDefaultAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultAlarmThresholdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询与证书ID对于域名匹配的七层规则

        # @param request: Request instance for DescribeL7RulesBySSLCertId.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeL7RulesBySSLCertIdRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeL7RulesBySSLCertIdResponse`
        def DescribeL7RulesBySSLCertId(request)
          body = send_request('DescribeL7RulesBySSLCertId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7RulesBySSLCertIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高防IP资产实例列表

        # @param request: Request instance for DescribeListBGPIPInstances.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListBGPIPInstancesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListBGPIPInstancesResponse`
        def DescribeListBGPIPInstances(request)
          body = send_request('DescribeListBGPIPInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListBGPIPInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高防包资产实例列表

        # @param request: Request instance for DescribeListBGPInstances.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListBGPInstancesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListBGPInstancesResponse`
        def DescribeListBGPInstances(request)
          body = send_request('DescribeListBGPInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListBGPInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的IP黑白名单列表

        # @param request: Request instance for DescribeListBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListBlackWhiteIpListResponse`
        def DescribeListBlackWhiteIpList(request)
          body = send_request('DescribeListBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的AI防护开关列表

        # @param request: Request instance for DescribeListDDoSAI.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListDDoSAIRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListDDoSAIResponse`
        def DescribeListDDoSAI(request)
          body = send_request('DescribeListDDoSAI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListDDoSAIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的区域封禁配置列表

        # @param request: Request instance for DescribeListDDoSGeoIPBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListDDoSGeoIPBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListDDoSGeoIPBlockConfigResponse`
        def DescribeListDDoSGeoIPBlockConfig(request)
          body = send_request('DescribeListDDoSGeoIPBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListDDoSGeoIPBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的访问限速配置列表

        # @param request: Request instance for DescribeListDDoSSpeedLimitConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListDDoSSpeedLimitConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListDDoSSpeedLimitConfigResponse`
        def DescribeListDDoSSpeedLimitConfig(request)
          body = send_request('DescribeListDDoSSpeedLimitConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListDDoSSpeedLimitConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单IP告警阈值配置列表

        # @param request: Request instance for DescribeListIPAlarmConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListIPAlarmConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListIPAlarmConfigResponse`
        def DescribeListIPAlarmConfig(request)
          body = send_request('DescribeListIPAlarmConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListIPAlarmConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取转发监听器列表

        # @param request: Request instance for DescribeListListener.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListListenerRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListListenerResponse`
        def DescribeListListener(request)
          body = send_request('DescribeListListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的特征过滤规则列表

        # @param request: Request instance for DescribeListPacketFilterConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListPacketFilterConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListPacketFilterConfigResponse`
        def DescribeListPacketFilterConfig(request)
          body = send_request('DescribeListPacketFilterConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListPacketFilterConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的端口acl策略列表

        # @param request: Request instance for DescribeListPortAclList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListPortAclListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListPortAclListResponse`
        def DescribeListPortAclList(request)
          body = send_request('DescribeListPortAclList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListPortAclListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护阈值配置列表，包括DDoS的AI、等级、CC阈值开关等

        # @param request: Request instance for DescribeListProtectThresholdConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListProtectThresholdConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListProtectThresholdConfigResponse`
        def DescribeListProtectThresholdConfig(request)
          body = send_request('DescribeListProtectThresholdConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListProtectThresholdConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的协议封禁配置列表

        # @param request: Request instance for DescribeListProtocolBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListProtocolBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListProtocolBlockConfigResponse`
        def DescribeListProtocolBlockConfig(request)
          body = send_request('DescribeListProtocolBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListProtocolBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取智能调度域名列表

        # @param request: Request instance for DescribeListSchedulingDomain.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListSchedulingDomainRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListSchedulingDomainResponse`
        def DescribeListSchedulingDomain(request)
          body = send_request('DescribeListSchedulingDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListSchedulingDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS防护的水印防护配置列表

        # @param request: Request instance for DescribeListWaterPrintConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeListWaterPrintConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeListWaterPrintConfigResponse`
        def DescribeListWaterPrintConfig(request)
          body = send_request('DescribeListWaterPrintConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListWaterPrintConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 高防IP获取7层规则

        # @param request: Request instance for DescribeNewL7Rules.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeNewL7RulesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeNewL7RulesResponse`
        def DescribeNewL7Rules(request)
          body = send_request('DescribeNewL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewL7RulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取L7转发规则健康检查异常结果列表

        # @param request: Request instance for DescribeNewL7RulesErrHealth.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeNewL7RulesErrHealthRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeNewL7RulesErrHealthResponse`
        def DescribeNewL7RulesErrHealth(request)
          body = send_request('DescribeNewL7RulesErrHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewL7RulesErrHealthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取防护概览攻击趋势

        # @param request: Request instance for DescribeOverviewAttackTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewAttackTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewAttackTrendResponse`
        def DescribeOverviewAttackTrend(request)
          body = send_request('DescribeOverviewAttackTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewAttackTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护概览总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数

        # @param request: Request instance for DescribeOverviewCCTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewCCTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewCCTrendResponse`
        def DescribeOverviewCCTrend(request)
          body = send_request('DescribeOverviewCCTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewCCTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护概览的ddos攻击事件

        # @param request: Request instance for DescribeOverviewDDoSEventList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewDDoSEventListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewDDoSEventListResponse`
        def DescribeOverviewDDoSEventList(request)
          body = send_request('DescribeOverviewDDoSEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewDDoSEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护概览DDoS攻击流量带宽和攻击包速率数据

        # @param request: Request instance for DescribeOverviewDDoSTrend.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewDDoSTrendRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewDDoSTrendResponse`
        def DescribeOverviewDDoSTrend(request)
          body = send_request('DescribeOverviewDDoSTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewDDoSTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取防护概览指标

        # @param request: Request instance for DescribeOverviewIndex.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewIndexRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribeOverviewIndexResponse`
        def DescribeOverviewIndex(request)
          body = send_request('DescribeOverviewIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账号维度待处理风险信息，包括是否为付费用户，查询攻击中、封堵中、过期资源数量等

        # @param request: Request instance for DescribePendingRiskInfo.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DescribePendingRiskInfoRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DescribePendingRiskInfoResponse`
        def DescribePendingRiskInfo(request)
          body = send_request('DescribePendingRiskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePendingRiskInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DisassociateDDoSEipAddress) 用于解绑高防弹性公网IP。

        # @param request: Request instance for DisassociateDDoSEipAddress.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DisassociateDDoSEipAddressRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DisassociateDDoSEipAddressResponse`
        def DisassociateDDoSEipAddress(request)
          body = send_request('DisassociateDDoSEipAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateDDoSEipAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改CC防护等级

        # @param request: Request instance for ModifyCCLevelPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyCCLevelPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyCCLevelPolicyResponse`
        def ModifyCCLevelPolicy(request)
          body = send_request('ModifyCCLevelPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCLevelPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改CC精准防护策略

        # @param request: Request instance for ModifyCCPrecisionPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyCCPrecisionPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyCCPrecisionPolicyResponse`
        def ModifyCCPrecisionPolicy(request)
          body = send_request('ModifyCCPrecisionPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCPrecisionPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改CC频率限制策略

        # @param request: Request instance for ModifyCCReqLimitPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyCCReqLimitPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyCCReqLimitPolicyResponse`
        def ModifyCCReqLimitPolicy(request)
          body = send_request('ModifyCCReqLimitPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCReqLimitPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改CC清洗阈值

        # @param request: Request instance for ModifyCCThresholdPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyCCThresholdPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyCCThresholdPolicyResponse`
        def ModifyCCThresholdPolicy(request)
          body = send_request('ModifyCCThresholdPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCThresholdPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改CC四层黑白名单

        # @param request: Request instance for ModifyCcBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyCcBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyCcBlackWhiteIpListResponse`
        def ModifyCcBlackWhiteIpList(request)
          body = send_request('ModifyCcBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCcBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DDoS黑白名单列表

        # @param request: Request instance for ModifyDDoSBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSBlackWhiteIpListResponse`
        def ModifyDDoSBlackWhiteIpList(request)
          body = send_request('ModifyDDoSBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSBlackWhiteIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DDoS防护的区域封禁配置

        # @param request: Request instance for ModifyDDoSGeoIPBlockConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSGeoIPBlockConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSGeoIPBlockConfigResponse`
        def ModifyDDoSGeoIPBlockConfig(request)
          body = send_request('ModifyDDoSGeoIPBlockConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSGeoIPBlockConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 读取或修改DDoS的防护等级

        # @param request: Request instance for ModifyDDoSLevel.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSLevelRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSLevelResponse`
        def ModifyDDoSLevel(request)
          body = send_request('ModifyDDoSLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DDoS防护的访问限速配置

        # @param request: Request instance for ModifyDDoSSpeedLimitConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSSpeedLimitConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSSpeedLimitConfigResponse`
        def ModifyDDoSSpeedLimitConfig(request)
          body = send_request('ModifyDDoSSpeedLimitConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSSpeedLimitConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DDoS清洗阈值

        # @param request: Request instance for ModifyDDoSThreshold.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSThresholdRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyDDoSThresholdResponse`
        def ModifyDDoSThreshold(request)
          body = send_request('ModifyDDoSThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSThresholdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改智能解析域名名称

        # @param request: Request instance for ModifyDomainUsrName.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyDomainUsrNameRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyDomainUsrNameResponse`
        def ModifyDomainUsrName(request)
          body = send_request('ModifyDomainUsrName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainUsrNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改7层转发规则

        # @param request: Request instance for ModifyNewDomainRules.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyNewDomainRulesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyNewDomainRulesResponse`
        def ModifyNewDomainRules(request)
          body = send_request('ModifyNewDomainRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNewDomainRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DDoS防护的特征过滤规则

        # @param request: Request instance for ModifyPacketFilterConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyPacketFilterConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyPacketFilterConfigResponse`
        def ModifyPacketFilterConfig(request)
          body = send_request('ModifyPacketFilterConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPacketFilterConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DDoS防护的端口acl策略

        # @param request: Request instance for ModifyPortAclConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::ModifyPortAclConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::ModifyPortAclConfigResponse`
        def ModifyPortAclConfig(request)
          body = send_request('ModifyPortAclConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPortAclConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或关闭DDoS防护的水印防护配置

        # @param request: Request instance for SwitchWaterPrintConfig.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::SwitchWaterPrintConfigRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::SwitchWaterPrintConfigResponse`
        def SwitchWaterPrintConfig(request)
          body = send_request('SwitchWaterPrintConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchWaterPrintConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end