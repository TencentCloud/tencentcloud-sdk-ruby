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
  module Teo
    module V20220106
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-01-06'
            api_endpoint = 'teo.tencentcloudapi.com'
            sdk_version = 'TEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 校验证书

        # @param request: Request instance for CheckCertificate.
        # @type request: :class:`Tencentcloud::teo::V20220106::CheckCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CheckCertificateResponse`
        def CheckCertificate(request)
          body = send_request('CheckCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCertificateResponse.new
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

        # 创建应用代理

        # @param request: Request instance for CreateApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateApplicationProxyResponse`
        def CreateApplicationProxy(request)
          body = send_request('CreateApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationProxyResponse.new
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

        # 创建应用代理规则

        # @param request: Request instance for CreateApplicationProxyRule.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateApplicationProxyRuleResponse`
        def CreateApplicationProxyRule(request)
          body = send_request('CreateApplicationProxyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationProxyRuleResponse.new
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

        # 批量创建应用代理规则

        # @param request: Request instance for CreateApplicationProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateApplicationProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateApplicationProxyRulesResponse`
        def CreateApplicationProxyRules(request)
          body = send_request('CreateApplicationProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationProxyRulesResponse.new
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

        # 创建自定义规则的自定义页

        # @param request: Request instance for CreateCustomErrorPage.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateCustomErrorPageRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateCustomErrorPageResponse`
        def CreateCustomErrorPage(request)
          body = send_request('CreateCustomErrorPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomErrorPageResponse.new
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

        # 创建 DNS 记录

        # @param request: Request instance for CreateDnsRecord.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateDnsRecordRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateDnsRecordResponse`
        def CreateDnsRecord(request)
          body = send_request('CreateDnsRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDnsRecordResponse.new
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

        # 创建负载均衡

        # @param request: Request instance for CreateLoadBalancing.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateLoadBalancingResponse`
        def CreateLoadBalancing(request)
          body = send_request('CreateLoadBalancing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoadBalancingResponse.new
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

        # 源站组创建

        # @param request: Request instance for CreateOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateOriginGroupResponse`
        def CreateOriginGroup(request)
          body = send_request('CreateOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOriginGroupResponse.new
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

        # 创建预热任务

        # @param request: Request instance for CreatePrefetchTask.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreatePrefetchTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreatePrefetchTaskResponse`
        def CreatePrefetchTask(request)
          body = send_request('CreatePrefetchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrefetchTaskResponse.new
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

        # 创建清除缓存任务

        # @param request: Request instance for CreatePurgeTask.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreatePurgeTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreatePurgeTaskResponse`
        def CreatePurgeTask(request)
          body = send_request('CreatePurgeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePurgeTaskResponse.new
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

        # 用于用户接入新的站点

        # @param request: Request instance for CreateZone.
        # @type request: :class:`Tencentcloud::teo::V20220106::CreateZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::CreateZoneResponse`
        def CreateZone(request)
          body = send_request('CreateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateZoneResponse.new
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

        # 删除应用代理

        # @param request: Request instance for DeleteApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220106::DeleteApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DeleteApplicationProxyResponse`
        def DeleteApplicationProxy(request)
          body = send_request('DeleteApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationProxyResponse.new
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

        # 删除应用代理规则

        # @param request: Request instance for DeleteApplicationProxyRule.
        # @type request: :class:`Tencentcloud::teo::V20220106::DeleteApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DeleteApplicationProxyRuleResponse`
        def DeleteApplicationProxyRule(request)
          body = send_request('DeleteApplicationProxyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationProxyRuleResponse.new
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

        # 批量删除 DNS 记录

        # @param request: Request instance for DeleteDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220106::DeleteDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DeleteDnsRecordsResponse`
        def DeleteDnsRecords(request)
          body = send_request('DeleteDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDnsRecordsResponse.new
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

        # 删除负载均衡

        # @param request: Request instance for DeleteLoadBalancing.
        # @type request: :class:`Tencentcloud::teo::V20220106::DeleteLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DeleteLoadBalancingResponse`
        def DeleteLoadBalancing(request)
          body = send_request('DeleteLoadBalancing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancingResponse.new
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

        # 源站组删除

        # @param request: Request instance for DeleteOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220106::DeleteOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DeleteOriginGroupResponse`
        def DeleteOriginGroup(request)
          body = send_request('DeleteOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOriginGroupResponse.new
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

        # 删除站点

        # @param request: Request instance for DeleteZone.
        # @type request: :class:`Tencentcloud::teo::V20220106::DeleteZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DeleteZoneResponse`
        def DeleteZone(request)
          body = send_request('DeleteZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteZoneResponse.new
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

        # 获取应用代理列表

        # @param request: Request instance for DescribeApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeApplicationProxyResponse`
        def DescribeApplicationProxy(request)
          body = send_request('DescribeApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationProxyResponse.new
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

        # 获取应用代理详细信息

        # @param request: Request instance for DescribeApplicationProxyDetail.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeApplicationProxyDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeApplicationProxyDetailResponse`
        def DescribeApplicationProxyDetail(request)
          body = send_request('DescribeApplicationProxyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationProxyDetailResponse.new
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

        # 查询Bot攻击日志

        # @param request: Request instance for DescribeBotLog.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeBotLogRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeBotLogResponse`
        def DescribeBotLog(request)
          body = send_request('DescribeBotLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotLogResponse.new
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

        # 分页查询Bot托管规则

        # @param request: Request instance for DescribeBotManagedRules.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeBotManagedRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeBotManagedRulesResponse`
        def DescribeBotManagedRules(request)
          body = send_request('DescribeBotManagedRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotManagedRulesResponse.new
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

        # 查询域名 CNAME 状态

        # @param request: Request instance for DescribeCnameStatus.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeCnameStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeCnameStatusResponse`
        def DescribeCnameStatus(request)
          body = send_request('DescribeCnameStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCnameStatusResponse.new
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

        # 查询DDoS防护配置详情

        # @param request: Request instance for DescribeDDoSPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDoSPolicyResponse`
        def DescribeDDoSPolicy(request)
          body = send_request('DescribeDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSPolicyResponse.new
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

        # 查询DDos攻击数据

        # @param request: Request instance for DescribeDDosAttackData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackDataResponse`
        def DescribeDDosAttackData(request)
          body = send_request('DescribeDDosAttackData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDosAttackDataResponse.new
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

        # 查询DDos攻击事件

        # @param request: Request instance for DescribeDDosAttackEvent.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackEventResponse`
        def DescribeDDosAttackEvent(request)
          body = send_request('DescribeDDosAttackEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDosAttackEventResponse.new
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

        # 查询DDos攻击事件详情

        # @param request: Request instance for DescribeDDosAttackEventDetail.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackEventDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackEventDetailResponse`
        def DescribeDDosAttackEventDetail(request)
          body = send_request('DescribeDDosAttackEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDosAttackEventDetailResponse.new
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

        # 查询DDos攻击源

        # @param request: Request instance for DescribeDDosAttackSourceEvent.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackSourceEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackSourceEventResponse`
        def DescribeDDosAttackSourceEvent(request)
          body = send_request('DescribeDDosAttackSourceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDosAttackSourceEventResponse.new
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

        # 查询DDos攻击Top数据

        # @param request: Request instance for DescribeDDosAttackTopData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackTopDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDosAttackTopDataResponse`
        def DescribeDDosAttackTopData(request)
          body = send_request('DescribeDDosAttackTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDosAttackTopDataResponse.new
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

        # 查询DDos主攻击事件

        # @param request: Request instance for DescribeDDosMajorAttackEvent.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDDosMajorAttackEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDDosMajorAttackEventResponse`
        def DescribeDDosMajorAttackEvent(request)
          body = send_request('DescribeDDosMajorAttackEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDosMajorAttackEventResponse.new
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

        # 查询默认证书列表

        # @param request: Request instance for DescribeDefaultCertificates.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDefaultCertificatesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDefaultCertificatesResponse`
        def DescribeDefaultCertificates(request)
          body = send_request('DescribeDefaultCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultCertificatesResponse.new
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

        # 获取DNS请求数统计曲线

        # @param request: Request instance for DescribeDnsData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDnsDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDnsDataResponse`
        def DescribeDnsData(request)
          body = send_request('DescribeDnsData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDnsDataResponse.new
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

        # 查询 DNS 记录列表，支持搜索、分页、排序、过滤。

        # @param request: Request instance for DescribeDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDnsRecordsResponse`
        def DescribeDnsRecords(request)
          body = send_request('DescribeDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDnsRecordsResponse.new
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

        # 用于查询 DNSSEC 相关信息

        # @param request: Request instance for DescribeDnssec.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeDnssecRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeDnssecResponse`
        def DescribeDnssec(request)
          body = send_request('DescribeDnssec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDnssecResponse.new
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

        # 查询域名证书列表，支持搜索、分页、排序、过滤。

        # @param request: Request instance for DescribeHostsCertificate.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeHostsCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeHostsCertificateResponse`
        def DescribeHostsCertificate(request)
          body = send_request('DescribeHostsCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostsCertificateResponse.new
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

        # 用于查询域名配置信息

        # @param request: Request instance for DescribeHostsSetting.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeHostsSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeHostsSettingResponse`
        def DescribeHostsSetting(request)
          body = send_request('DescribeHostsSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostsSettingResponse.new
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

        # 查询验证结果

        # @param request: Request instance for DescribeIdentification.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeIdentificationRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeIdentificationResponse`
        def DescribeIdentification(request)
          body = send_request('DescribeIdentification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdentificationResponse.new
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

        # 获取负载均衡列表

        # @param request: Request instance for DescribeLoadBalancing.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeLoadBalancingResponse`
        def DescribeLoadBalancing(request)
          body = send_request('DescribeLoadBalancing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancingResponse.new
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

        # 获取负载均衡详细信息

        # @param request: Request instance for DescribeLoadBalancingDetail.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeLoadBalancingDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeLoadBalancingDetailResponse`
        def DescribeLoadBalancingDetail(request)
          body = send_request('DescribeLoadBalancingDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancingDetailResponse.new
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

        # 获取源站组信息列表

        # @param request: Request instance for DescribeOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeOriginGroupResponse`
        def DescribeOriginGroup(request)
          body = send_request('DescribeOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginGroupResponse.new
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

        # 获取源站组详细信息

        # @param request: Request instance for DescribeOriginGroupDetail.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeOriginGroupDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeOriginGroupDetailResponse`
        def DescribeOriginGroupDetail(request)
          body = send_request('DescribeOriginGroupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginGroupDetailResponse.new
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

        # 查询七层监控类时序流量数据

        # @param request: Request instance for DescribeOverviewL7Data.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeOverviewL7DataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeOverviewL7DataResponse`
        def DescribeOverviewL7Data(request)
          body = send_request('DescribeOverviewL7Data', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewL7DataResponse.new
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

        # 查询预热任务状态

        # @param request: Request instance for DescribePrefetchTasks.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribePrefetchTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribePrefetchTasksResponse`
        def DescribePrefetchTasks(request)
          body = send_request('DescribePrefetchTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrefetchTasksResponse.new
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

        # 查询清除缓存历史记录

        # @param request: Request instance for DescribePurgeTasks.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribePurgeTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribePurgeTasksResponse`
        def DescribePurgeTasks(request)
          body = send_request('DescribePurgeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePurgeTasksResponse.new
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

        # 查询安全防护配置详情

        # @param request: Request instance for DescribeSecurityPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyResponse`
        def DescribeSecurityPolicy(request)
          body = send_request('DescribeSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyResponse.new
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

        # 查询全部安全实例

        # @param request: Request instance for DescribeSecurityPolicyList.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyListResponse`
        def DescribeSecurityPolicyList(request)
          body = send_request('DescribeSecurityPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyListResponse.new
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

        # 分页查询门神规则

        # @param request: Request instance for DescribeSecurityPolicyManagedRules.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyManagedRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyManagedRulesResponse`
        def DescribeSecurityPolicyManagedRules(request)
          body = send_request('DescribeSecurityPolicyManagedRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyManagedRulesResponse.new
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

        # 规则id查询门神规则详情

        # @param request: Request instance for DescribeSecurityPolicyManagedRulesId.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyManagedRulesIdRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyManagedRulesIdResponse`
        def DescribeSecurityPolicyManagedRulesId(request)
          body = send_request('DescribeSecurityPolicyManagedRulesId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyManagedRulesIdResponse.new
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

        # 查询所有地域信息

        # @param request: Request instance for DescribeSecurityPolicyRegions.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyRegionsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPolicyRegionsResponse`
        def DescribeSecurityPolicyRegions(request)
          body = send_request('DescribeSecurityPolicyRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyRegionsResponse.new
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

        # 查询Bot用户画像规则

        # @param request: Request instance for DescribeSecurityPortraitRules.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPortraitRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeSecurityPortraitRulesResponse`
        def DescribeSecurityPortraitRules(request)
          body = send_request('DescribeSecurityPortraitRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPortraitRulesResponse.new
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

        # 四层时序流量数据查询

        # @param request: Request instance for DescribeTimingL4Data.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeTimingL4DataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeTimingL4DataResponse`
        def DescribeTimingL4Data(request)
          body = send_request('DescribeTimingL4Data', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimingL4DataResponse.new
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

        # 查询七层数据分析类时序流量数据

        # @param request: Request instance for DescribeTimingL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeTimingL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeTimingL7AnalysisDataResponse`
        def DescribeTimingL7AnalysisData(request)
          body = send_request('DescribeTimingL7AnalysisData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimingL7AnalysisDataResponse.new
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

        # 查询top类流量数据

        # @param request: Request instance for DescribeTopL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeTopL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeTopL7AnalysisDataResponse`
        def DescribeTopL7AnalysisData(request)
          body = send_request('DescribeTopL7AnalysisData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopL7AnalysisDataResponse.new
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

        # 查询Web托管攻击事件

        # @param request: Request instance for DescribeWebManagedRulesAttackEvents.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesAttackEventsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesAttackEventsResponse`
        def DescribeWebManagedRulesAttackEvents(request)
          body = send_request('DescribeWebManagedRulesAttackEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebManagedRulesAttackEventsResponse.new
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

        # 查询Web托管规则数据

        # @param request: Request instance for DescribeWebManagedRulesData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesDataResponse`
        def DescribeWebManagedRulesData(request)
          body = send_request('DescribeWebManagedRulesData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebManagedRulesDataResponse.new
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

        # 查询Web托管日志

        # @param request: Request instance for DescribeWebManagedRulesLog.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesLogRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesLogResponse`
        def DescribeWebManagedRulesLog(request)
          body = send_request('DescribeWebManagedRulesLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebManagedRulesLogResponse.new
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

        # 查询Web托管规则Top数据

        # @param request: Request instance for DescribeWebManagedRulesTopData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesTopDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebManagedRulesTopDataResponse`
        def DescribeWebManagedRulesTopData(request)
          body = send_request('DescribeWebManagedRulesTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebManagedRulesTopDataResponse.new
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

        # 查询web防护攻击事件

        # @param request: Request instance for DescribeWebProtectionAttackEvents.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebProtectionAttackEventsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebProtectionAttackEventsResponse`
        def DescribeWebProtectionAttackEvents(request)
          body = send_request('DescribeWebProtectionAttackEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebProtectionAttackEventsResponse.new
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

        # 查询web防护数据

        # @param request: Request instance for DescribeWebProtectionData.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebProtectionDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebProtectionDataResponse`
        def DescribeWebProtectionData(request)
          body = send_request('DescribeWebProtectionData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebProtectionDataResponse.new
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

        # 查询web防护日志

        # @param request: Request instance for DescribeWebProtectionLog.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeWebProtectionLogRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeWebProtectionLogResponse`
        def DescribeWebProtectionLog(request)
          body = send_request('DescribeWebProtectionLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebProtectionLogResponse.new
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

        # 查询所有DDoS防护分区

        # @param request: Request instance for DescribeZoneDDoSPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeZoneDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeZoneDDoSPolicyResponse`
        def DescribeZoneDDoSPolicy(request)
          body = send_request('DescribeZoneDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneDDoSPolicyResponse.new
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

        # 根据站点 ID 查询站点的详细信息

        # @param request: Request instance for DescribeZoneDetails.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeZoneDetailsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeZoneDetailsResponse`
        def DescribeZoneDetails(request)
          body = send_request('DescribeZoneDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneDetailsResponse.new
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

        # 用于查询站点的所有配置信息。

        # @param request: Request instance for DescribeZoneSetting.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeZoneSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeZoneSettingResponse`
        def DescribeZoneSetting(request)
          body = send_request('DescribeZoneSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneSettingResponse.new
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

        # 用户查询用户站点信息列表，支持分页

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::teo::V20220106::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DescribeZonesResponse`
        def DescribeZones(request)
          body = send_request('DescribeZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZonesResponse.new
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

        # 查询七层离线日志

        # @param request: Request instance for DownloadL7Logs.
        # @type request: :class:`Tencentcloud::teo::V20220106::DownloadL7LogsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::DownloadL7LogsResponse`
        def DownloadL7Logs(request)
          body = send_request('DownloadL7Logs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadL7LogsResponse.new
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

        # 用于验证站点所有权

        # @param request: Request instance for IdentifyZone.
        # @type request: :class:`Tencentcloud::teo::V20220106::IdentifyZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::IdentifyZoneResponse`
        def IdentifyZone(request)
          body = send_request('IdentifyZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IdentifyZoneResponse.new
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

        # 导入 DNS 记录

        # @param request: Request instance for ImportDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220106::ImportDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ImportDnsRecordsResponse`
        def ImportDnsRecords(request)
          body = send_request('ImportDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportDnsRecordsResponse.new
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

        # 修改应用代理

        # @param request: Request instance for ModifyApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyResponse`
        def ModifyApplicationProxy(request)
          body = send_request('ModifyApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyResponse.new
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

        # 修改应用代理规则

        # @param request: Request instance for ModifyApplicationProxyRule.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyRuleResponse`
        def ModifyApplicationProxyRule(request)
          body = send_request('ModifyApplicationProxyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyRuleResponse.new
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

        # 修改应用代理规则的状态

        # @param request: Request instance for ModifyApplicationProxyRuleStatus.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyRuleStatusResponse`
        def ModifyApplicationProxyRuleStatus(request)
          body = send_request('ModifyApplicationProxyRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyRuleStatusResponse.new
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

        # 修改应用代理的状态

        # @param request: Request instance for ModifyApplicationProxyStatus.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyApplicationProxyStatusResponse`
        def ModifyApplicationProxyStatus(request)
          body = send_request('ModifyApplicationProxyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyStatusResponse.new
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

        # 修改DDoS防护分区配置

        # @param request: Request instance for ModifyDDoSPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyDDoSPolicyResponse`
        def ModifyDDoSPolicy(request)
          body = send_request('ModifyDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSPolicyResponse.new
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

        # 域名DDoS高可用开关

        # @param request: Request instance for ModifyDDoSPolicyHost.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyDDoSPolicyHostRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyDDoSPolicyHostResponse`
        def ModifyDDoSPolicyHost(request)
          body = send_request('ModifyDDoSPolicyHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSPolicyHostResponse.new
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

        # 修改默认证书状态

        # @param request: Request instance for ModifyDefaultCertificate.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyDefaultCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyDefaultCertificateResponse`
        def ModifyDefaultCertificate(request)
          body = send_request('ModifyDefaultCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDefaultCertificateResponse.new
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

        # 修改 DNS 记录

        # @param request: Request instance for ModifyDnsRecord.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyDnsRecordRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyDnsRecordResponse`
        def ModifyDnsRecord(request)
          body = send_request('ModifyDnsRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDnsRecordResponse.new
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

        # 修改 DNSSEC 状态

        # @param request: Request instance for ModifyDnssec.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyDnssecRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyDnssecResponse`
        def ModifyDnssec(request)
          body = send_request('ModifyDnssec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDnssecResponse.new
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

        # 用于修改域名证书

        # @param request: Request instance for ModifyHostsCertificate.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyHostsCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyHostsCertificateResponse`
        def ModifyHostsCertificate(request)
          body = send_request('ModifyHostsCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostsCertificateResponse.new
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

        # 修改负载均衡

        # @param request: Request instance for ModifyLoadBalancing.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyLoadBalancingResponse`
        def ModifyLoadBalancing(request)
          body = send_request('ModifyLoadBalancing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancingResponse.new
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

        # 修改负载均衡状态

        # @param request: Request instance for ModifyLoadBalancingStatus.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyLoadBalancingStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyLoadBalancingStatusResponse`
        def ModifyLoadBalancingStatus(request)
          body = send_request('ModifyLoadBalancingStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancingStatusResponse.new
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

        # 源站组修改

        # @param request: Request instance for ModifyOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyOriginGroupResponse`
        def ModifyOriginGroup(request)
          body = send_request('ModifyOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOriginGroupResponse.new
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

        # 修改Web&Bot安全配置

        # @param request: Request instance for ModifySecurityPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifySecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifySecurityPolicyResponse`
        def ModifySecurityPolicy(request)
          body = send_request('ModifySecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityPolicyResponse.new
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

        # 用该站点信息

        # @param request: Request instance for ModifyZone.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyZoneResponse`
        def ModifyZone(request)
          body = send_request('ModifyZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneResponse.new
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

        # 开启，关闭 CNAME 加速

        # @param request: Request instance for ModifyZoneCnameSpeedUp.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyZoneCnameSpeedUpRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyZoneCnameSpeedUpResponse`
        def ModifyZoneCnameSpeedUp(request)
          body = send_request('ModifyZoneCnameSpeedUp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneCnameSpeedUpResponse.new
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

        # 用于修改站点配置

        # @param request: Request instance for ModifyZoneSetting.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyZoneSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyZoneSettingResponse`
        def ModifyZoneSetting(request)
          body = send_request('ModifyZoneSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneSettingResponse.new
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

        # 用于开启，关闭站点

        # @param request: Request instance for ModifyZoneStatus.
        # @type request: :class:`Tencentcloud::teo::V20220106::ModifyZoneStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ModifyZoneStatusResponse`
        def ModifyZoneStatus(request)
          body = send_request('ModifyZoneStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneStatusResponse.new
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

        # 站点被其他用户接入后，验证了站点所有权之后，可以找回该站点

        # @param request: Request instance for ReclaimZone.
        # @type request: :class:`Tencentcloud::teo::V20220106::ReclaimZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ReclaimZoneResponse`
        def ReclaimZone(request)
          body = send_request('ReclaimZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReclaimZoneResponse.new
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

        # 扫描站点历史解析记录

        # @param request: Request instance for ScanDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220106::ScanDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220106::ScanDnsRecordsResponse`
        def ScanDnsRecords(request)
          body = send_request('ScanDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanDnsRecordsResponse.new
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