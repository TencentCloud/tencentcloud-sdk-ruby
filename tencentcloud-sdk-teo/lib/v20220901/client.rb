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

        # 校验域名 CNAME 状态

        # @param request: Request instance for CheckCnameStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::CheckCnameStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CheckCnameStatusResponse`
        def CheckCnameStatus(request)
          body = send_request('CheckCnameStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCnameStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建加速域名

        # @param request: Request instance for CreateAccelerationDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateAccelerationDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateAccelerationDomainResponse`
        def CreateAccelerationDomain(request)
          body = send_request('CreateAccelerationDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccelerationDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：<li>直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；</li><li>标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；</li>

        # 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。

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

        # 创建安全 IP 组

        # @param request: Request instance for CreateSecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityIPGroupResponse`
        def CreateSecurityIPGroup(request)
          body = send_request('CreateSecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 批量删除加速域名

        # @param request: Request instance for DeleteAccelerationDomains.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteAccelerationDomainsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteAccelerationDomainsResponse`
        def DeleteAccelerationDomains(request)
          body = send_request('DeleteAccelerationDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccelerationDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除指定 IP 组，如果有规则引用了 IP 组情况，则不允许删除。

        # @param request: Request instance for DeleteSecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSecurityIPGroupResponse`
        def DeleteSecurityIPGroup(request)
          body = send_request('DeleteSecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询加速域名列表，支持搜索、分页、排序、过滤。

        # @param request: Request instance for DescribeAccelerationDomains.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAccelerationDomainsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAccelerationDomainsResponse`
        def DescribeAccelerationDomains(request)
          body = send_request('DescribeAccelerationDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccelerationDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询源站防护信息

        # @param request: Request instance for DescribeOriginProtection.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOriginProtectionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOriginProtectionResponse`
        def DescribeOriginProtection(request)
          body = send_request('DescribeOriginProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改加速域名信息

        # @param request: Request instance for ModifyAccelerationDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainResponse`
        def ModifyAccelerationDomain(request)
          body = send_request('ModifyAccelerationDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccelerationDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改加速域名状态

        # @param request: Request instance for ModifyAccelerationDomainStatuses.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainStatusesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainStatusesResponse`
        def ModifyAccelerationDomainStatuses(request)
          body = send_request('ModifyAccelerationDomainStatuses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccelerationDomainStatusesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改安全 IP 组。

        # @param request: Request instance for ModifySecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityIPGroupResponse`
        def ModifySecurityIPGroup(request)
          body = send_request('ModifySecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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


      end
    end
  end
end