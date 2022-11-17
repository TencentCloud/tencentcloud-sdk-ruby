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
    module V20220901
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-09-01'
            api_endpoint = 'teo.tencentcloudapi.com'
            sdk_version = 'TEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 将未绑定套餐的站点绑定到已有套餐

        # @param request: Request instance for BindZoneToPlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::BindZoneToPlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::BindZoneToPlanResponse`
        def BindZoneToPlan(request)
          body = send_request('BindZoneToPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindZoneToPlanResponse.new
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

        # 校验证书

        # @param request: Request instance for CheckCertificate.
        # @type request: :class:`Tencentcloud::teo::V20220901::CheckCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CheckCertificateResponse`
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

        # 创建别称域名。

        # @param request: Request instance for CreateAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateAliasDomainResponse`
        def CreateAliasDomain(request)
          body = send_request('CreateAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAliasDomainResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyRuleResponse`
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

        # 用于创建COS回源私有凭证

        # @param request: Request instance for CreateCredential.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateCredentialRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateCredentialResponse`
        def CreateCredential(request)
          body = send_request('CreateCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCredentialResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateCustomErrorPageRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateCustomErrorPageResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateDnsRecordRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateDnsRecordResponse`
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

        # 创建IP黑白名单列表

        # @param request: Request instance for CreateIpTableList.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateIpTableListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateIpTableListResponse`
        def CreateIpTableList(request)
          body = send_request('CreateIpTableList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIpTableListResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateLoadBalancingResponse`
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

        # 本接口（CreateClsLog）用于创建CLS日志集。

        # @param request: Request instance for CreateLogSet.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateLogSetRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateLogSetResponse`
        def CreateLogSet(request)
          body = send_request('CreateLogSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLogSetResponse.new
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

        # 本接口（CreateLogTopicTask）用于创建日志推送任务。

        # @param request: Request instance for CreateLogTopicTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateLogTopicTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateLogTopicTaskResponse`
        def CreateLogTopicTask(request)
          body = send_request('CreateLogTopicTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLogTopicTaskResponse.new
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

        # 创建源站组

        # @param request: Request instance for CreateOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateOriginGroupResponse`
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

        # 为未购买套餐的站点购买套餐

        # @param request: Request instance for CreatePlanForZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePlanForZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePlanForZoneResponse`
        def CreatePlanForZone(request)
          body = send_request('CreatePlanForZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePlanForZoneResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePrefetchTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePrefetchTaskResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePurgeTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePurgeTaskResponse`
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

        # 创建刷新/预热重放任务

        # @param request: Request instance for CreateReplayTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateReplayTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateReplayTaskResponse`
        def CreateReplayTask(request)
          body = send_request('CreateReplayTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReplayTaskResponse.new
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

        # 规则引擎创建规则。

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateRuleResponse`
        def CreateRule(request)
          body = send_request('CreateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleResponse.new
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

        # 创建自定义拦截页面。

        # @param request: Request instance for CreateSecurityDropPage.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityDropPageRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityDropPageResponse`
        def CreateSecurityDropPage(request)
          body = send_request('CreateSecurityDropPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityDropPageResponse.new
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

        # 对用户指定的域名进行一次站点拨测

        # @param request: Request instance for CreateSpeedTesting.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSpeedTestingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSpeedTestingResponse`
        def CreateSpeedTesting(request)
          body = send_request('CreateSpeedTesting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSpeedTestingResponse.new
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

        # 用于用户接入新的站点。

        # @param request: Request instance for CreateZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateZoneResponse`
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

        # 删除别称域名。

        # @param request: Request instance for DeleteAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteAliasDomainResponse`
        def DeleteAliasDomain(request)
          body = send_request('DeleteAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAliasDomainResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyRuleResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteDnsRecordsResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteLoadBalancingResponse`
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

        # 本接口（DeleteLogTopicTask）用于删除日志推送任务。

        # @param request: Request instance for DeleteLogTopicTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteLogTopicTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteLogTopicTaskResponse`
        def DeleteLogTopicTask(request)
          body = send_request('DeleteLogTopicTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogTopicTaskResponse.new
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

        # 删除源站组

        # @param request: Request instance for DeleteOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteOriginGroupResponse`
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

        # 批量删除规则引擎规则。

        # @param request: Request instance for DeleteRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteRulesResponse`
        def DeleteRules(request)
          body = send_request('DeleteRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRulesResponse.new
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

        # 删除站点。

        # @param request: Request instance for DeleteZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteZoneResponse`
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

        # 本接口（DescribeAddableEntityList）用于查询剩余可添加的日志推送实体列表。

        # @param request: Request instance for DescribeAddableEntityList.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAddableEntityListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAddableEntityListResponse`
        def DescribeAddableEntityList(request)
          body = send_request('DescribeAddableEntityList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddableEntityListResponse.new
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

        # 查询别称域名信息列表。

        # @param request: Request instance for DescribeAliasDomains.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAliasDomainsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAliasDomainsResponse`
        def DescribeAliasDomains(request)
          body = send_request('DescribeAliasDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAliasDomainsResponse.new
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

        # 查询应用代理列表。

        # @param request: Request instance for DescribeApplicationProxies.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeApplicationProxiesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeApplicationProxiesResponse`
        def DescribeApplicationProxies(request)
          body = send_request('DescribeApplicationProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationProxiesResponse.new
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

        # 查询当前账户可用套餐信息列表

        # @param request: Request instance for DescribeAvailablePlans.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAvailablePlansRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAvailablePlansResponse`
        def DescribeAvailablePlans(request)
          body = send_request('DescribeAvailablePlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailablePlansResponse.new
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

        # 获取计费数据。

        # @param request: Request instance for DescribeBillingData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBillingDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBillingDataResponse`
        def DescribeBillingData(request)
          body = send_request('DescribeBillingData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingDataResponse.new
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

        # 本接口（DescribeBotClientIpList）用于查询Bot攻击客户端Ip信息列表。

        # @param request: Request instance for DescribeBotClientIpList.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBotClientIpListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBotClientIpListResponse`
        def DescribeBotClientIpList(request)
          body = send_request('DescribeBotClientIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotClientIpListResponse.new
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

        # 本接口（DescribeBotData）查询Bot攻击时序数据。

        # @param request: Request instance for DescribeBotData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBotDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBotDataResponse`
        def DescribeBotData(request)
          body = send_request('DescribeBotData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotDataResponse.new
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

        # 本接口（DescribeBotHitRuleDetail）用于查询Bot攻击命中规则详情信息。

        # @param request: Request instance for DescribeBotHitRuleDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBotHitRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBotHitRuleDetailResponse`
        def DescribeBotHitRuleDetail(request)
          body = send_request('DescribeBotHitRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotHitRuleDetailResponse.new
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

        # 本接口（DescribeBotLog）用于查询Bot攻击日志。

        # @param request: Request instance for DescribeBotLog.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBotLogRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBotLogResponse`
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

        # 查询Bot托管规则

        # @param request: Request instance for DescribeBotManagedRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBotManagedRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBotManagedRulesResponse`
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

        # 本接口（DescribeBotTopData）查询Bot攻击TopN数据。

        # @param request: Request instance for DescribeBotTopData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBotTopDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBotTopDataResponse`
        def DescribeBotTopData(request)
          body = send_request('DescribeBotTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotTopDataResponse.new
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

        # 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。

        # @param request: Request instance for DescribeClientRuleList.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeClientRuleListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeClientRuleListResponse`
        def DescribeClientRuleList(request)
          body = send_request('DescribeClientRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientRuleListResponse.new
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

        # 查询内容管理接口配额

        # @param request: Request instance for DescribeContentQuota.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeContentQuotaRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeContentQuotaResponse`
        def DescribeContentQuota(request)
          body = send_request('DescribeContentQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContentQuotaResponse.new
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

        # 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。

        # @param request: Request instance for DescribeDDoSAttackData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackDataResponse`
        def DescribeDDoSAttackData(request)
          body = send_request('DescribeDDoSAttackData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackDataResponse.new
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

        # 本接口（DescribeDDoSAttackEvent）用于查询DDoS攻击事件列表。

        # @param request: Request instance for DescribeDDoSAttackEvent.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackEventResponse`
        def DescribeDDoSAttackEvent(request)
          body = send_request('DescribeDDoSAttackEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackEventResponse.new
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

        # 本接口（DescribeDDoSAttackEventDetail）用于查询DDoS攻击事件详情。

        # @param request: Request instance for DescribeDDoSAttackEventDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackEventDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackEventDetailResponse`
        def DescribeDDoSAttackEventDetail(request)
          body = send_request('DescribeDDoSAttackEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackEventDetailResponse.new
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

        # 本接口（DescribeDDoSAttackSourceEvent）用于查询DDoS攻击源信息列表。

        # @param request: Request instance for DescribeDDoSAttackSourceEvent.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackSourceEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackSourceEventResponse`
        def DescribeDDoSAttackSourceEvent(request)
          body = send_request('DescribeDDoSAttackSourceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackSourceEventResponse.new
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

        # 本接口（DescribeDDoSAttackTopData）用于查询DDoS攻击Top数据。

        # @param request: Request instance for DescribeDDoSAttackTopData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackTopDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackTopDataResponse`
        def DescribeDDoSAttackTopData(request)
          body = send_request('DescribeDDoSAttackTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackTopDataResponse.new
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

        # 本接口（DescribeDDoSBlockList）用于查询DDoS封禁解封列表。

        # @param request: Request instance for DescribeDDoSBlockList.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSBlockListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSBlockListResponse`
        def DescribeDDoSBlockList(request)
          body = send_request('DescribeDDoSBlockList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSBlockListResponse.new
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

        # 本接口（DescribeDDoSMajorAttackEvent）用于查询DDoS主攻击事件列表。

        # @param request: Request instance for DescribeDDoSMajorAttackEvent.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSMajorAttackEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSMajorAttackEventResponse`
        def DescribeDDoSMajorAttackEvent(request)
          body = send_request('DescribeDDoSMajorAttackEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSMajorAttackEventResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSPolicyResponse`
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

        # 查询默认证书列表

        # @param request: Request instance for DescribeDefaultCertificates.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDefaultCertificatesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDefaultCertificatesResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDnsDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDnsDataResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDnsRecordsResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDnssecRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDnssecResponse`
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

        # 用于查询域名配置信息

        # @param request: Request instance for DescribeHostsSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeHostsSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeHostsSettingResponse`
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

        # 查询站点的验证信息。

        # @param request: Request instance for DescribeIdentifications.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeIdentificationsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeIdentificationsResponse`
        def DescribeIdentifications(request)
          body = send_request('DescribeIdentifications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdentificationsResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeLoadBalancingResponse`
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

        # 本接口（DescribeLogSets）用于获取日志集列表。

        # @param request: Request instance for DescribeLogSets.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeLogSetsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeLogSetsResponse`
        def DescribeLogSets(request)
          body = send_request('DescribeLogSets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogSetsResponse.new
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

        # 本接口（DescribeLogTopicTaskDetail）用于获取日志推送任务详细信息。

        # @param request: Request instance for DescribeLogTopicTaskDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeLogTopicTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeLogTopicTaskDetailResponse`
        def DescribeLogTopicTaskDetail(request)
          body = send_request('DescribeLogTopicTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogTopicTaskDetailResponse.new
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

        # 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。

        # @param request: Request instance for DescribeLogTopicTasks.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeLogTopicTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeLogTopicTasksResponse`
        def DescribeLogTopicTasks(request)
          body = send_request('DescribeLogTopicTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogTopicTasksResponse.new
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

        # 获取源站组列表

        # @param request: Request instance for DescribeOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOriginGroupResponse`
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

        # 本接口（DescribeOverviewL7Data）用于查询七层监控类时序流量数据。

        # @param request: Request instance for DescribeOverviewL7Data.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOverviewL7DataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOverviewL7DataResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribePrefetchTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribePrefetchTasksResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribePurgeTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribePurgeTasksResponse`
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

        # 查询速率限制智能客户端过滤学习出来的规则

        # @param request: Request instance for DescribeRateLimitIntelligenceRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRateLimitIntelligenceRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRateLimitIntelligenceRuleResponse`
        def DescribeRateLimitIntelligenceRule(request)
          body = send_request('DescribeRateLimitIntelligenceRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRateLimitIntelligenceRuleResponse.new
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

        # 查询规则引擎规则。

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRulesResponse`
        def DescribeRules(request)
          body = send_request('DescribeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesResponse.new
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

        # 返回规则引擎可应用匹配请求的设置列表及其详细建议配置信息

        # @param request: Request instance for DescribeRulesSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRulesSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRulesSettingResponse`
        def DescribeRulesSetting(request)
          body = send_request('DescribeRulesSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesSettingResponse.new
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

        # 获取托管规则组

        # @param request: Request instance for DescribeSecurityGroupManagedRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityGroupManagedRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityGroupManagedRulesResponse`
        def DescribeSecurityGroupManagedRules(request)
          body = send_request('DescribeSecurityGroupManagedRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupManagedRulesResponse.new
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

        # 查询安全防护配置详情。请求参数中ZoneId+Entity或TemplateId至少填一项。

        # @param request: Request instance for DescribeSecurityPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyListResponse`
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

        # 查询所有地域信息

        # @param request: Request instance for DescribeSecurityPolicyRegions.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyRegionsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyRegionsResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPortraitRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPortraitRulesResponse`
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

        # 查询安全规则详情

        # @param request: Request instance for DescribeSecurityRuleId.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityRuleIdRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityRuleIdResponse`
        def DescribeSecurityRuleId(request)
          body = send_request('DescribeSecurityRuleId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityRuleIdResponse.new
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

        # 本接口（DescribeSingleL7AnalysisData）用于查询七层数据分析类单值流量数据列表。

        # @param request: Request instance for DescribeSingleL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSingleL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSingleL7AnalysisDataResponse`
        def DescribeSingleL7AnalysisData(request)
          body = send_request('DescribeSingleL7AnalysisData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSingleL7AnalysisDataResponse.new
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

        # 用于查询拨测分地区数据

        # @param request: Request instance for DescribeSpeedTestingDetails.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSpeedTestingDetailsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSpeedTestingDetailsResponse`
        def DescribeSpeedTestingDetails(request)
          body = send_request('DescribeSpeedTestingDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpeedTestingDetailsResponse.new
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

        # 查询站点拨测结果

        # @param request: Request instance for DescribeSpeedTestingMetricData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSpeedTestingMetricDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSpeedTestingMetricDataResponse`
        def DescribeSpeedTestingMetricData(request)
          body = send_request('DescribeSpeedTestingMetricData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpeedTestingMetricDataResponse.new
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

        # 查询站点拨测配额

        # @param request: Request instance for DescribeSpeedTestingQuota.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSpeedTestingQuotaRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSpeedTestingQuotaResponse`
        def DescribeSpeedTestingQuota(request)
          body = send_request('DescribeSpeedTestingQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpeedTestingQuotaResponse.new
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

        # 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。

        # @param request: Request instance for DescribeTimingL4Data.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTimingL4DataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTimingL4DataResponse`
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

        # 本接口（DescribeTimingL7AnalysisData）查询七层数据分析类时序数据。

        # @param request: Request instance for DescribeTimingL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7AnalysisDataResponse`
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

        # 本接口（DescribeTimingL7CacheData）用于查询七层缓存分析时序类流量数据。

        # @param request: Request instance for DescribeTimingL7CacheData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7CacheDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7CacheDataResponse`
        def DescribeTimingL7CacheData(request)
          body = send_request('DescribeTimingL7CacheData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimingL7CacheDataResponse.new
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

        # 本接口（DescribeTopL7AnalysisData）用于查询七层流量前topN的数据。

        # @param request: Request instance for DescribeTopL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTopL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTopL7AnalysisDataResponse`
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

        # 本接口（DescribeTopL7CacheData）用于查询七层缓存分析topN流量数据。

        # @param request: Request instance for DescribeTopL7CacheData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTopL7CacheDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTopL7CacheDataResponse`
        def DescribeTopL7CacheData(request)
          body = send_request('DescribeTopL7CacheData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopL7CacheDataResponse.new
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

        # 本接口（DescribeWebManagedRulesData）用于查询WAF攻击的时序数据。

        # @param request: Request instance for DescribeWebManagedRulesData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebManagedRulesDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebManagedRulesDataResponse`
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

        # 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。

        # @param request: Request instance for DescribeWebManagedRulesHitRuleDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebManagedRulesHitRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebManagedRulesHitRuleDetailResponse`
        def DescribeWebManagedRulesHitRuleDetail(request)
          body = send_request('DescribeWebManagedRulesHitRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebManagedRulesHitRuleDetailResponse.new
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

        # 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。

        # @param request: Request instance for DescribeWebManagedRulesLog.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebManagedRulesLogRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebManagedRulesLogResponse`
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

        # 本接口（DescribeWebProtectionAttackEvents）用于查询CC相关攻击事件列表。

        # @param request: Request instance for DescribeWebProtectionAttackEvents.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionAttackEventsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionAttackEventsResponse`
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

        # 本接口（DescribeWebProtectionClientIpList）用于查询CC防护客户端（攻击源）IP信息。

        # @param request: Request instance for DescribeWebProtectionClientIpList.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionClientIpListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionClientIpListResponse`
        def DescribeWebProtectionClientIpList(request)
          body = send_request('DescribeWebProtectionClientIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebProtectionClientIpListResponse.new
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

        # 本接口（DescribeWebProtectionData）用于查询CC防护时序数据。

        # @param request: Request instance for DescribeWebProtectionData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionDataResponse`
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

        # 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。

        # @param request: Request instance for DescribeWebProtectionHitRuleDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionHitRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionHitRuleDetailResponse`
        def DescribeWebProtectionHitRuleDetail(request)
          body = send_request('DescribeWebProtectionHitRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebProtectionHitRuleDetailResponse.new
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

        # 本接口（DescribeWebProtectionTopData）用于查询CC防护的Top数据。

        # @param request: Request instance for DescribeWebProtectionTopData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionTopDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebProtectionTopDataResponse`
        def DescribeWebProtectionTopData(request)
          body = send_request('DescribeWebProtectionTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebProtectionTopDataResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeZoneDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeZoneDDoSPolicyResponse`
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

        # 用于查询站点的所有配置信息。

        # @param request: Request instance for DescribeZoneSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeZoneSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeZoneSettingResponse`
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

        # 用户查询用户站点信息列表，支持分页。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeZonesResponse`
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

        # 本接口（DownloadL4Logs）用于下载四层离线日志。

        # @param request: Request instance for DownloadL4Logs.
        # @type request: :class:`Tencentcloud::teo::V20220901::DownloadL4LogsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DownloadL4LogsResponse`
        def DownloadL4Logs(request)
          body = send_request('DownloadL4Logs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadL4LogsResponse.new
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

        # 本接口（DownloadL7Logs）下载七层离线日志。

        # @param request: Request instance for DownloadL7Logs.
        # @type request: :class:`Tencentcloud::teo::V20220901::DownloadL7LogsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DownloadL7LogsResponse`
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

        # 用于验证站点所有权。

        # @param request: Request instance for IdentifyZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::IdentifyZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::IdentifyZoneResponse`
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

        # 本接口（ModifyAlarmConfig）用于修改用户告警配置。

        # @param request: Request instance for ModifyAlarmConfig.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAlarmConfigRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAlarmConfigResponse`
        def ModifyAlarmConfig(request)
          body = send_request('ModifyAlarmConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmConfigResponse.new
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

        # 此接口（ModifyAlarmDefaultThreshold）用于修改告警默认阈值。

        # @param request: Request instance for ModifyAlarmDefaultThreshold.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAlarmDefaultThresholdRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAlarmDefaultThresholdResponse`
        def ModifyAlarmDefaultThreshold(request)
          body = send_request('ModifyAlarmDefaultThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmDefaultThresholdResponse.new
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

        # 修改别称域名。

        # @param request: Request instance for ModifyAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainResponse`
        def ModifyAliasDomain(request)
          body = send_request('ModifyAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAliasDomainResponse.new
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

        # 修改别称域名状态。

        # @param request: Request instance for ModifyAliasDomainStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainStatusResponse`
        def ModifyAliasDomainStatus(request)
          body = send_request('ModifyAliasDomainStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAliasDomainStatusResponse.new
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleStatusResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyStatusResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDDoSPolicyResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDDoSPolicyHostRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDDoSPolicyHostResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDefaultCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDefaultCertificateResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDnsRecordRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDnsRecordResponse`
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

        # 设置站点DNSSEC状态

        # @param request: Request instance for ModifyDnssec.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDnssecRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDnssecResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyHostsCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyHostsCertificateResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyLoadBalancingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyLoadBalancingResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyLoadBalancingStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyLoadBalancingStatusResponse`
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

        # 本接口（ModifyLogTopicTask）用于修改日志推送任务信息。

        # @param request: Request instance for ModifyLogTopicTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyLogTopicTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyLogTopicTaskResponse`
        def ModifyLogTopicTask(request)
          body = send_request('ModifyLogTopicTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogTopicTaskResponse.new
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

        # 修改源站组

        # @param request: Request instance for ModifyOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyOriginGroupResponse`
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

        # 修改规则引擎规则。

        # @param request: Request instance for ModifyRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyRuleResponse`
        def ModifyRule(request)
          body = send_request('ModifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleResponse.new
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

        # 修改规则引擎规则优先级

        # @param request: Request instance for ModifyRulePriority.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyRulePriorityRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyRulePriorityResponse`
        def ModifyRulePriority(request)
          body = send_request('ModifyRulePriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRulePriorityResponse.new
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

        # 修改Web&Bot安全配置。

        # @param request: Request instance for ModifySecurityPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityPolicyResponse`
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

        # 修改安全配置托管规则

        # @param request: Request instance for ModifySecurityWafGroupPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityWafGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityWafGroupPolicyResponse`
        def ModifySecurityWafGroupPolicy(request)
          body = send_request('ModifySecurityWafGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityWafGroupPolicyResponse.new
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

        # 修改站点信息。

        # @param request: Request instance for ModifyZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneResponse`
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

        # 开启，关闭 CNAME 加速。

        # @param request: Request instance for ModifyZoneCnameSpeedUp.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneCnameSpeedUpRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneCnameSpeedUpResponse`
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
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneSettingResponse`
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

        # 用于开启，关闭站点。

        # @param request: Request instance for ModifyZoneStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneStatusResponse`
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

        # 当客户取回站定的同时会取回此站点下关联的别称域名，此时入参为ZoneId；当客户接入站点发现已被别称域名接入时通过验证之后可取回域名，此时入参为ZoneName。

        # @param request: Request instance for ReclaimAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::ReclaimAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ReclaimAliasDomainResponse`
        def ReclaimAliasDomain(request)
          body = send_request('ReclaimAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReclaimAliasDomainResponse.new
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

        # 站点被其他用户接入后，验证了站点所有权之后，可以找回该站点。

        # @param request: Request instance for ReclaimZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::ReclaimZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ReclaimZoneResponse`
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

        # 本接口（SwitchLogTopicTask）用于开启/关闭推送任务。

        # @param request: Request instance for SwitchLogTopicTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::SwitchLogTopicTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::SwitchLogTopicTaskResponse`
        def SwitchLogTopicTask(request)
          body = send_request('SwitchLogTopicTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchLogTopicTaskResponse.new
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