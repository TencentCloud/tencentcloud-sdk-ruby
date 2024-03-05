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


        # 操作安全策略模板，支持将域名绑定或换绑到指定的策略模板，或者从指定的策略模板解绑。

        # @param request: Request instance for BindSecurityTemplateToEntity.
        # @type request: :class:`Tencentcloud::teo::V20220901::BindSecurityTemplateToEntityRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::BindSecurityTemplateToEntityResponse`
        def BindSecurityTemplateToEntity(request)
          body = send_request('BindSecurityTemplateToEntity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSecurityTemplateToEntityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于加速域名绑定或解绑共享 CNAME，该功能白名单内测中。

        # @param request: Request instance for BindSharedCNAME.
        # @type request: :class:`Tencentcloud::teo::V20220901::BindSharedCNAMERequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::BindSharedCNAMEResponse`
        def BindSharedCNAME(request)
          body = send_request('BindSharedCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSharedCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
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

        # 在创建完站点之后，您可以通过本接口创建加速域名。

        # CNAME 模式接入时，若您未完成站点归属权校验，本接口将为您返回域名归属权验证信息，您可以单独对域名进行归属权验证，详情参考 [站点/域名归属权验证](https://cloud.tencent.com/document/product/1552/70789)。

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

        # 本接口为旧版，如需调用请尽快迁移至新版 [创建四层代理实例](https://cloud.tencent.com/document/product/1552/103417) 。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [创建四层代理转发规则
        # ](https://cloud.tencent.com/document/product/1552/103416) 。

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

        # 针对指定实时日志投递任务（task-id），在对应的腾讯云 CLS 日志主题中创建投递日志字段对应的键值索引。如果您在腾讯云 CLS 已经创建索引，本接口将采用合并的方式追加索引。

        # @param request: Request instance for CreateCLSIndex.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateCLSIndexRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateCLSIndexResponse`
        def CreateCLSIndex(request)
          body = send_request('CreateCLSIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCLSIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于创建指定配置组的新版本。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for CreateConfigGroupVersion.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateConfigGroupVersionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateConfigGroupVersionResponse`
        def CreateConfigGroupVersion(request)
          body = send_request('CreateConfigGroupVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigGroupVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建四层代理实例。

        # @param request: Request instance for CreateL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyResponse`
        def CreateL4Proxy(request)
          body = send_request('CreateL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建四层代理实例规则，支持单条或者批量创建。

        # @param request: Request instance for CreateL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyRulesResponse`
        def CreateL4ProxyRules(request)
          body = send_request('CreateL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建源站组，以源站组的方式管理业务源站。此处配置的源站组可于**添加加速域名**和**四层代理**等功能中引用。

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

        # 通过本接口创建实时日志投递任务。本接口有如下限制：
        # 同一个实体（七层域名或者四层代理实例）在同种数据投递类型（LogType）和数据投递区域（Area）的组合下，只能被添加到一个实时日志投递任务中。建议先通过 [DescribeRealtimeLogDeliveryTasks](https://tcloud4api.woa.com/document/product/1657/343539?!preview&!document=1)  接口根据实体查询实时日志投递任务列表，检查实体是否已经被添加到另一实时日志投递任务中。

        # @param request: Request instance for CreateRealtimeLogDeliveryTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateRealtimeLogDeliveryTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateRealtimeLogDeliveryTaskResponse`
        def CreateRealtimeLogDeliveryTask(request)
          body = send_request('CreateRealtimeLogDeliveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRealtimeLogDeliveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 用于创建共享 CNAME，该功能白名单内测中。

        # @param request: Request instance for CreateSharedCNAME.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSharedCNAMERequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSharedCNAMEResponse`
        def CreateSharedCNAME(request)
          body = send_request('CreateSharedCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSharedCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EdgeOne 为您提供 CNAME、NS 和无域名接入三种接入方式，您需要先通过此接口完成站点创建。CNAME 和 NS 接入站点的场景可参考 [从零开始快速接入 EdgeOne](https://cloud.tencent.com/document/product/1552/87601); 无域名接入的场景可参考 [快速启用四层代理服务](https://cloud.tencent.com/document/product/1552/96051)。

        # > 建议您在账号下已存在套餐时调用本接口创建站点，请在入参时传入 PlanId ，直接将站点绑定至该套餐；不传入 PlanId 时，创建出来的站点会处于未激活状态，无法正常服务，您需要通过 [BindZoneToPlan](https://cloud.tencent.com/document/product/1552/83042) 完成套餐绑定之后，站点才可正常提供服务 。若您当前没有可绑定的套餐时，请前往控制台购买套餐完成站点创建。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [删除四层代理实例
        # ](https://cloud.tencent.com/document/product/1552/103415) 。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [删除四层代理转发规则](https://cloud.tencent.com/document/product/1552/103414) 。

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

        # 用于删除四层代理实例。

        # @param request: Request instance for DeleteL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyResponse`
        def DeleteL4Proxy(request)
          body = send_request('DeleteL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除四层代理转发规则，支持单条或者批量操作。

        # @param request: Request instance for DeleteL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyRulesResponse`
        def DeleteL4ProxyRules(request)
          body = send_request('DeleteL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除源站组，若源站组仍然被服务（例如：四层代理，域名服务，负载均衡，规则引起）引用，将不允许删除。

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

        # 通过本接口删除实时日志投递任务。

        # @param request: Request instance for DeleteRealtimeLogDeliveryTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteRealtimeLogDeliveryTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteRealtimeLogDeliveryTaskResponse`
        def DeleteRealtimeLogDeliveryTask(request)
          body = send_request('DeleteRealtimeLogDeliveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRealtimeLogDeliveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 用于删除共享 CNAME，该功能白名单内测中。

        # @param request: Request instance for DeleteSharedCNAME.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSharedCNAMERequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSharedCNAMEResponse`
        def DeleteSharedCNAME(request)
          body = send_request('DeleteSharedCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSharedCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 在版本管理模式下，用于版本发布，可通过 EnvId 将版本发布至测试环境或生产环境。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DeployConfigGroupVersion.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeployConfigGroupVersionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeployConfigGroupVersionResponse`
        def DeployConfigGroupVersion(request)
          body = send_request('DeployConfigGroupVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployConfigGroupVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以通过本接口查看站点下的域名信息，包括加速域名、源站以及域名状态等信息。您可以查看站点下全部域名的信息，也可以指定过滤条件查询对应的域名信息。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，新版接口中将四层代理实例列表的查询和四层转发规则的查询拆分成两个接口，详情请参考 [查询四层代理实例列表](https://cloud.tencent.com/document/product/1552/103413) 和 [查询四层代理转发规则列表](https://cloud.tencent.com/document/product/1552/103412)。

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

        # 通过本接口查询计费数据。

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

        # 在版本管理模式下，用于获取版本的详细信息，包括版本 ID、描述、状态、创建时间、所属配置组信息以及版本配置文件的内容。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeConfigGroupVersionDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionDetailResponse`
        def DescribeConfigGroupVersionDetail(request)
          body = send_request('DescribeConfigGroupVersionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigGroupVersionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于查询指定配置组的版本列表。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeConfigGroupVersions.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionsResponse`
        def DescribeConfigGroupVersions(request)
          body = send_request('DescribeConfigGroupVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigGroupVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 在版本管理模式下，用于查询生产/测试环境的版本发布历史。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeDeployHistory.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDeployHistoryRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDeployHistoryResponse`
        def DescribeDeployHistory(request)
          body = send_request('DescribeDeployHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于查询环境信息，可获取环境 ID、类型、当前生效版本等。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeEnvironments.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeEnvironmentsResponse`
        def DescribeEnvironments(request)
          body = send_request('DescribeEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 该接口可用于查询 IP 是否为 EdgeOne IP。

        # @param request: Request instance for DescribeIPRegion.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeIPRegionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeIPRegionResponse`
        def DescribeIPRegion(request)
          body = send_request('DescribeIPRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 用于查询四层代理实例列表。

        # @param request: Request instance for DescribeL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyResponse`
        def DescribeL4Proxy(request)
          body = send_request('DescribeL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询四层代理实例下的转发规则列表。

        # @param request: Request instance for DescribeL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyRulesResponse`
        def DescribeL4ProxyRules(request)
          body = send_request('DescribeL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeOverviewL7Data）用于查询七层监控类时序流量数据。此接口待废弃，请使用 <a href="https://cloud.tencent.com/document/product/1552/80648">DescribeTimingL7AnalysisData</a> 接口。

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

        # DescribePrefetchTasks 用于查询预热任务提交历史记录及执行进度，通过 CreatePrefetchTasks 接口提交的任务可通过此接口进行查询。

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

        # DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 CreatePurgeTasks 接口提交的任务均可通过此接口进行查询。

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

        # 通过本接口查询实时日志投递任务列表。

        # @param request: Request instance for DescribeRealtimeLogDeliveryTasks.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRealtimeLogDeliveryTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRealtimeLogDeliveryTasksResponse`
        def DescribeRealtimeLogDeliveryTasks(request)
          body = send_request('DescribeRealtimeLogDeliveryTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealtimeLogDeliveryTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询指定策略模板的绑定关系列表。

        # @param request: Request instance for DescribeSecurityTemplateBindings.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityTemplateBindingsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityTemplateBindingsResponse`
        def DescribeSecurityTemplateBindings(request)
          body = send_request('DescribeSecurityTemplateBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityTemplateBindingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 该接口用于查询您有权限的站点信息。可根据不同查询条件筛选站点。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理实例
        # ](https://cloud.tencent.com/document/product/1552/103411) 。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理转发规则
        # ](https://cloud.tencent.com/document/product/1552/103410) 。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理转发规则状态
        # ](https://cloud.tencent.com/document/product/1552/103409) 。

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

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理实例状态](https://cloud.tencent.com/document/product/1552/103408) 。

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

        # 完成域名创建之后，您可以为域名配置自有证书，也可以使用 EdgeOne 为您提供的 [免费证书](https://cloud.tencent.com/document/product/1552/90437)。
        # 如果您需要配置自有证书，请先将证书上传至 [SSL证书控制台](https://console.cloud.tencent.com/certoverview)，然后在本接口中传入对应的证书 ID。详情参考 [部署自有证书至 EdgeOne 域名
        # ](https://cloud.tencent.com/document/product/1552/88874)。

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

        # 用于修改四层代理实例的配置。

        # @param request: Request instance for ModifyL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyResponse`
        def ModifyL4Proxy(request)
          body = send_request('ModifyL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改四层代理转发规则，支持单条或者批量修改。

        # @param request: Request instance for ModifyL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesResponse`
        def ModifyL4ProxyRules(request)
          body = send_request('ModifyL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启用/停用四层代理转发规则状态，支持单条或者批量操作。

        # @param request: Request instance for ModifyL4ProxyRulesStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesStatusResponse`
        def ModifyL4ProxyRulesStatus(request)
          body = send_request('ModifyL4ProxyRulesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyRulesStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启用/停用四层代理实例。

        # @param request: Request instance for ModifyL4ProxyStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyStatusResponse`
        def ModifyL4ProxyStatus(request)
          body = send_request('ModifyL4ProxyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改源站组配置，新提交的源站记录将会覆盖原有源站组中的源站记录。

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

        # 通过本接口修改实时日志投递任务配置。本接口有如下限制：<li>不支持修改实时日志投递任务目的地类型（TaskType）；</li><li>不支持修改数据投递类型（LogType）</li><li>不支持修改数据投递区域（Area）</li><li>当原实时日志投递任务的目的地为腾讯云 CLS 时，不支持修改目的地详细配置，如日志集、日志主题。</li>

        # @param request: Request instance for ModifyRealtimeLogDeliveryTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyRealtimeLogDeliveryTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyRealtimeLogDeliveryTaskResponse`
        def ModifyRealtimeLogDeliveryTask(request)
          body = send_request('ModifyRealtimeLogDeliveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRealtimeLogDeliveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 在 CNAME 接入模式下，您需要对站点或者域名的归属权进行验证，可以通过本接口触发验证。若站点通过归属权验证后，后续添加域名无需再验证。详情参考 [站点/域名归属权验证](https://cloud.tencent.com/document/product/1552/70789)。

        # 在 NS 接入模式下，您也可以通过本接口来查询 NS 服务器是否切换成功，详情参考 [修改 DNS 服务器](https://cloud.tencent.com/document/product/1552/90452)。

        # @param request: Request instance for VerifyOwnership.
        # @type request: :class:`Tencentcloud::teo::V20220901::VerifyOwnershipRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::VerifyOwnershipResponse`
        def VerifyOwnership(request)
          body = send_request('VerifyOwnership', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyOwnershipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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