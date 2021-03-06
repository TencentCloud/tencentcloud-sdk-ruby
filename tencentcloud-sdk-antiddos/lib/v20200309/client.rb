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

        # 绑定IP到高防包实例，支持独享包、共享包；需要注意的是此接口绑定或解绑IP是异步接口，当处于绑定或解绑中时，则不允许再进行绑定或解绑，需要等待当前绑定或解绑完成。

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

        # 删除DDoS防护的IP黑白名单

        # @param request: Request instance for DeleteBlackWhiteIpList.
        # @type request: :class:`Tencentcloud::antiddos::V20200309::DeleteBlackWhiteIpListRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20200309::DeleteBlackWhiteIpListResponse`
        def DeleteBlackWhiteIpList(request)
          body = send_request('DeleteBlackWhiteIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBlackWhiteIpListResponse.new
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