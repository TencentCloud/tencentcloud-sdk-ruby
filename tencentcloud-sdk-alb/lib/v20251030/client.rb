# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Alb
    module V20251030
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-10-30'
            api_endpoint = 'alb.tencentcloudapi.com'
            sdk_version = 'ALB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 向目标组内添加后端服务

        # @param request: Request instance for AddTargetsToTargetGroup.
        # @type request: :class:`Tencentcloud::alb::V20251030::AddTargetsToTargetGroupRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::AddTargetsToTargetGroupResponse`
        def AddTargetsToTargetGroup(request)
          body = send_request('AddTargetsToTargetGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddTargetsToTargetGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将共享带宽包绑定到应用型负载均衡实例。

        # @param request: Request instance for AssociateBandwidthPackageWithLoadBalancer.
        # @type request: :class:`Tencentcloud::alb::V20251030::AssociateBandwidthPackageWithLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::AssociateBandwidthPackageWithLoadBalancerResponse`
        def AssociateBandwidthPackageWithLoadBalancer(request)
          body = send_request('AssociateBandwidthPackageWithLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateBandwidthPackageWithLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # AssociateListenerAdditionalCertificates属于异步接口，即系统返回一个请求 ID，但该扩展证书尚未添加成功，系统后台的添加任务仍在进行。您可以调用DescribeListenerCertificates接口查询扩展证书的添加状态：
        # 当HTTPS和QUIC监听器处于Associating状态时，表示扩展证书正在添加中。
        # 当HTTPS和QUIC监听器处于Associated状态时，表示扩展证书添加成功。

        # @param request: Request instance for AssociateListenerAdditionalCertificates.
        # @type request: :class:`Tencentcloud::alb::V20251030::AssociateListenerAdditionalCertificatesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::AssociateListenerAdditionalCertificatesResponse`
        def AssociateListenerAdditionalCertificates(request)
          body = send_request('AssociateListenerAdditionalCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateListenerAdditionalCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建健康检查模板

        # @param request: Request instance for CreateHealthCheckTemplate.
        # @type request: :class:`Tencentcloud::alb::V20251030::CreateHealthCheckTemplateRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::CreateHealthCheckTemplateResponse`
        def CreateHealthCheckTemplate(request)
          body = send_request('CreateHealthCheckTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHealthCheckTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建监听器

        # @param request: Request instance for CreateListener.
        # @type request: :class:`Tencentcloud::alb::V20251030::CreateListenerRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::CreateListenerResponse`
        def CreateListener(request)
          body = send_request('CreateListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **CreateLoadBalancer**接口属于异步接口，即系统返回一个实例ID，但该应用型负载均衡实例尚未创建成功，系统后台的创建任务仍在进行。您可以调用[DescribeLoadBalancerDetail](214362)查询应用型负载均衡实例的创建状态：
        # - 当应用型负载均衡实例处于**Provisioning**状态时，表示应用型负载均衡实例正在创建中。
        # - 当应用型负载均衡实例处于**Active**状态时，表示应用型负载均衡实例创建成功。

        # @param request: Request instance for CreateLoadBalancer.
        # @type request: :class:`Tencentcloud::alb::V20251030::CreateLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::CreateLoadBalancerResponse`
        def CreateLoadBalancer(request)
          body = send_request('CreateLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateRules创建转发规则，本接口为异步接口，返回成功后需以返回的RequestID为入参，调用DescribeAsyncJobs接口查询本次任务是否成功。
        # 一条规则最多支持10个转发条件（Conditions），5个转发动作（Actions）。

        # @param request: Request instance for CreateRules.
        # @type request: :class:`Tencentcloud::alb::V20251030::CreateRulesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::CreateRulesResponse`
        def CreateRules(request)
          body = send_request('CreateRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义安全策略，用于配置 HTTPS 监听器的 TLS 协议版本和加密套件。通过安全策略，您可以灵活控制客户端与负载均衡之间 HTTPS 通信的安全级别。

        # @param request: Request instance for CreateSecurityPolicy.
        # @type request: :class:`Tencentcloud::alb::V20251030::CreateSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::CreateSecurityPolicyResponse`
        def CreateSecurityPolicy(request)
          body = send_request('CreateSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 目标组相关接口

        # @param request: Request instance for CreateTargetGroup.
        # @type request: :class:`Tencentcloud::alb::V20251030::CreateTargetGroupRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::CreateTargetGroupResponse`
        def CreateTargetGroup(request)
          body = send_request('CreateTargetGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTargetGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除健康检查模板

        # @param request: Request instance for DeleteHealthCheckTemplates.
        # @type request: :class:`Tencentcloud::alb::V20251030::DeleteHealthCheckTemplatesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DeleteHealthCheckTemplatesResponse`
        def DeleteHealthCheckTemplates(request)
          body = send_request('DeleteHealthCheckTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHealthCheckTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除监听器

        # @param request: Request instance for DeleteListener.
        # @type request: :class:`Tencentcloud::alb::V20251030::DeleteListenerRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DeleteListenerResponse`
        def DeleteListener(request)
          body = send_request('DeleteListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **DeleteLoadBalancers**接口属于异步接口，即系统返回一个请求ID，但该应用型负载均衡实例尚未删除成功，系统后台的删除任务仍在进行。您可以调用[DescribeLoadBalancerDetails](214362)查询应用型负载均衡实例的删除状态：
        # - 当应用型负载均衡实例处于**Deleting**状态时，表示应用型负载均衡实例正在删除中。
        # - 当查询不到指定的应用型负载均衡实例时，表示应用型负载均衡实例删除成功。

        # @param request: Request instance for DeleteLoadBalancers.
        # @type request: :class:`Tencentcloud::alb::V20251030::DeleteLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DeleteLoadBalancersResponse`
        def DeleteLoadBalancers(request)
          body = send_request('DeleteLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteRules删除转发规则，本接口为异步接口，返回成功后需以返回的RequestID为入参，调用DescribeAsyncJobs接口查询本次任务是否成功。

        # @param request: Request instance for DeleteRules.
        # @type request: :class:`Tencentcloud::alb::V20251030::DeleteRulesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DeleteRulesResponse`
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

        # 删除一个或多个自定义安全策略。删除安全策略前，请确保该策略未被任何 HTTPS 监听器引用，否则删除操作将失败。

        # @param request: Request instance for DeleteSecurityPolicy.
        # @type request: :class:`Tencentcloud::alb::V20251030::DeleteSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DeleteSecurityPolicyResponse`
        def DeleteSecurityPolicy(request)
          body = send_request('DeleteSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除目标组。

        # @param request: Request instance for DeleteTargetGroups.
        # @type request: :class:`Tencentcloud::alb::V20251030::DeleteTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DeleteTargetGroupsResponse`
        def DeleteTargetGroups(request)
          body = send_request('DeleteTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTargetGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 异步任务查询接口

        # @param request: Request instance for DescribeAsyncJobs.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeAsyncJobsRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeAsyncJobsResponse`
        def DescribeAsyncJobs(request)
          body = send_request('DescribeAsyncJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAsyncJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询健康检查模板列表

        # @param request: Request instance for DescribeHealthCheckTemplates.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeHealthCheckTemplatesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeHealthCheckTemplatesResponse`
        def DescribeHealthCheckTemplates(request)
          body = send_request('DescribeHealthCheckTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHealthCheckTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据实例id和监听器id，查询指定监听器绑定的证书列表
        # 若输入CertificateType为SVR，返回扩展服务器证书与默认服务器证书的信息
        # 若输入CertificateType为CA，返回默认CA证书的信息

        # @param request: Request instance for DescribeListenerCertificates.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeListenerCertificatesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeListenerCertificatesResponse`
        def DescribeListenerCertificates(request)
          body = send_request('DescribeListenerCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个监听器详情

        # @param request: Request instance for DescribeListenerDetail.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeListenerDetailRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeListenerDetailResponse`
        def DescribeListenerDetail(request)
          body = send_request('DescribeListenerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询监听器健康状态。

        # @param request: Request instance for DescribeListenerHealthStatus.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeListenerHealthStatusRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeListenerHealthStatusResponse`
        def DescribeListenerHealthStatus(request)
          body = send_request('DescribeListenerHealthStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerHealthStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询监听器列表

        # @param request: Request instance for DescribeListeners.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeListenersRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeListenersResponse`
        def DescribeListeners(request)
          body = send_request('DescribeListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定负载均衡实例的详细信息。

        # @param request: Request instance for DescribeLoadBalancerDetail.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeLoadBalancerDetailRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeLoadBalancerDetailResponse`
        def DescribeLoadBalancerDetail(request)
          body = send_request('DescribeLoadBalancerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例配置。

        # @param request: Request instance for DescribeLoadBalancers.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeLoadBalancersResponse`
        def DescribeLoadBalancers(request)
          body = send_request('DescribeLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前账号的 ALB 配额配置。支持按配额类型查询，也支持传入资源ID查询资源级配额；可通过 DisplayFields 按需返回已使用量和剩余可用量。

        # @param request: Request instance for DescribeQuota.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeQuotaRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeQuotaResponse`
        def DescribeQuota(request)
          body = send_request('DescribeQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询转发规则

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeRulesResponse`
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

        # 查询自定义安全策略列表，支持按安全策略 ID、名称或标签进行筛选，并支持分页查询。

        # @param request: Request instance for DescribeSecurityPolicies.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeSecurityPoliciesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeSecurityPoliciesResponse`
        def DescribeSecurityPolicies(request)
          body = send_request('DescribeSecurityPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前地域支持的安全策略配置能力，包括可选的 TLS 协议版本及各版本对应的加密套件列表。在创建或修改自定义安全策略前，建议先调用此接口获取可用的配置选项。

        # @param request: Request instance for DescribeSecurityPolicyCapabilities.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeSecurityPolicyCapabilitiesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeSecurityPolicyCapabilitiesResponse`
        def DescribeSecurityPolicyCapabilities(request)
          body = send_request('DescribeSecurityPolicyCapabilities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyCapabilitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全策略的关联关系，即安全策略被哪些 HTTPS 监听器引用。在删除或修改安全策略前，建议先调用此接口确认影响范围。

        # @param request: Request instance for DescribeSecurityPolicyRelations.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeSecurityPolicyRelationsRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeSecurityPolicyRelationsResponse`
        def DescribeSecurityPolicyRelations(request)
          body = send_request('DescribeSecurityPolicyRelations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyRelationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询系统安全策略。

        # @param request: Request instance for DescribeSystemSecurityPolicies.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeSystemSecurityPoliciesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeSystemSecurityPoliciesResponse`
        def DescribeSystemSecurityPolicies(request)
          body = send_request('DescribeSystemSecurityPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSystemSecurityPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询目标组内后端服务

        # @param request: Request instance for DescribeTargetGroupTargets.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeTargetGroupTargetsRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeTargetGroupTargetsResponse`
        def DescribeTargetGroupTargets(request)
          body = send_request('DescribeTargetGroupTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询目标组列表

        # @param request: Request instance for DescribeTargetGroups.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeTargetGroupsResponse`
        def DescribeTargetGroups(request)
          body = send_request('DescribeTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据子机查询绑定的目标组

        # @param request: Request instance for DescribeTargetGroupsByTarget.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeTargetGroupsByTargetRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeTargetGroupsByTargetResponse`
        def DescribeTargetGroupsByTarget(request)
          body = send_request('DescribeTargetGroupsByTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupsByTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可用区

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::alb::V20251030::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DescribeZonesResponse`
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

        # 将共享带宽包从应用型负载均衡实例解绑。

        # @param request: Request instance for DisassociateBandwidthPackageFromLoadBalancer.
        # @type request: :class:`Tencentcloud::alb::V20251030::DisassociateBandwidthPackageFromLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DisassociateBandwidthPackageFromLoadBalancerResponse`
        def DisassociateBandwidthPackageFromLoadBalancer(request)
          body = send_request('DisassociateBandwidthPackageFromLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateBandwidthPackageFromLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DisassociateListenerAdditionalCertificates属于异步接口，即系统返回一个请求 ID，但该扩展证书尚未解绑成功，系统后台的解绑任务仍在进行。您可以调用DescribeListenerCertificates接口查询证书的解绑状态：若证书处于Disassociating状态，则证书正在解绑中。

        # @param request: Request instance for DisassociateListenerAdditionalCertificates.
        # @type request: :class:`Tencentcloud::alb::V20251030::DisassociateListenerAdditionalCertificatesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::DisassociateListenerAdditionalCertificatesResponse`
        def DisassociateListenerAdditionalCertificates(request)
          body = send_request('DisassociateListenerAdditionalCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateListenerAdditionalCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # InquirePriceCreateLoadBalancer接口查询创建负载均衡的价格。

        # @param request: Request instance for InquirePriceCreateLoadBalancer.
        # @type request: :class:`Tencentcloud::alb::V20251030::InquirePriceCreateLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::InquirePriceCreateLoadBalancerResponse`
        def InquirePriceCreateLoadBalancer(request)
          body = send_request('InquirePriceCreateLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改健康检查模板

        # @param request: Request instance for ModifyHealthCheckTemplate.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyHealthCheckTemplateRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyHealthCheckTemplateResponse`
        def ModifyHealthCheckTemplate(request)
          body = send_request('ModifyHealthCheckTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHealthCheckTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改监听器属性

        # @param request: Request instance for ModifyListenerAttributes.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyListenerAttributesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyListenerAttributesResponse`
        def ModifyListenerAttributes(request)
          body = send_request('ModifyListenerAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyListenerAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **前提条件：**
        # 您已经创建应用型负载均衡实例，具体操作，请参见 CreateLoadBalancer 。
        # 当您需要通过此接口将应用型负载均衡实例的网络类型由私网变为公网时，您需要先创建一个弹性公网 IP。
        # **使用说明：**
        # ModifyLoadBalancerAddressType 接口属于异步接口，即系统返回一个请求 ID，但该应用型负载均衡实例的网络类型尚未变更成功，系统后台的变更任务仍在进行。您可以调用 DescribeLoadBalancerDetail 查询应用型负载均衡实例的网络类型的变更状态：
        # 当应用型负载均衡实例处于 Configuring 状态时，表示应用型负载均衡实例的网络类型正在变更中。
        # 当应用型负载均衡实例处于 Active 状态时，表示应用型负载均衡实例的网络类型变更成功。

        # @param request: Request instance for ModifyLoadBalancerAddressType.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyLoadBalancerAddressTypeRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyLoadBalancerAddressTypeResponse`
        def ModifyLoadBalancerAddressType(request)
          body = send_request('ModifyLoadBalancerAddressType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerAddressTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **ModifyLoadBalancerAttributes**接口属于异步接口，即系统返回一个请求ID，但该应用型负载均衡实例属性尚未修改成功，系统后台的修改任务仍在进行。您可以调用[DescribeLoadBalancerAttribute](214362)查询应用型负载均衡实例属性的修改状态：
        # - 当应用型负载均衡实例属性处于**Configuring**状态时，表示应用型负载均衡实例属性正在修改中。
        # - 当应用型负载均衡实例属性处于**Active**状态时，表示应用型负载均衡实例属性修改成功。

        # @param request: Request instance for ModifyLoadBalancerAttributes.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyLoadBalancerAttributesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyLoadBalancerAttributesResponse`
        def ModifyLoadBalancerAttributes(request)
          body = send_request('ModifyLoadBalancerAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置负载均衡实例修改保护。

        # @param request: Request instance for ModifyLoadBalancerModificationProtection.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyLoadBalancerModificationProtectionRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyLoadBalancerModificationProtectionResponse`
        def ModifyLoadBalancerModificationProtection(request)
          body = send_request('ModifyLoadBalancerModificationProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerModificationProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyRulesAttributes修改转发规则属性，本接口为异步接口，返回成功后需以返回的RequestID为入参，调用DescribeAsyncJobs接口查询本次任务是否成功。
        # 一条规则最多支持10个转发条件（Conditions），5个转发动作（Actions）。

        # @param request: Request instance for ModifyRulesAttributes.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyRulesAttributesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyRulesAttributesResponse`
        def ModifyRulesAttributes(request)
          body = send_request('ModifyRulesAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRulesAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改自定义安全策略的属性，包括策略名称、TLS 协议版本和加密套件。修改后的配置将立即应用到所有关联该策略的 HTTPS 监听器。

        # @param request: Request instance for ModifySecurityPolicyAttributes.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifySecurityPolicyAttributesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifySecurityPolicyAttributesResponse`
        def ModifySecurityPolicyAttributes(request)
          body = send_request('ModifySecurityPolicyAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityPolicyAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改目标组。

        # @param request: Request instance for ModifyTargetGroupAttributes.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyTargetGroupAttributesRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyTargetGroupAttributesResponse`
        def ModifyTargetGroupAttributes(request)
          body = send_request('ModifyTargetGroupAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetGroupAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改目标组内后端服务信息

        # @param request: Request instance for ModifyTargetsInTargetGroup.
        # @type request: :class:`Tencentcloud::alb::V20251030::ModifyTargetsInTargetGroupRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::ModifyTargetsInTargetGroupResponse`
        def ModifyTargetsInTargetGroup(request)
          body = send_request('ModifyTargetsInTargetGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetsInTargetGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通知负载均衡解绑后端服务

        # @param request: Request instance for NotifyUnbindTarget.
        # @type request: :class:`Tencentcloud::alb::V20251030::NotifyUnbindTargetRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::NotifyUnbindTargetResponse`
        def NotifyUnbindTarget(request)
          body = send_request('NotifyUnbindTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = NotifyUnbindTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从目标组内移除后端服务

        # @param request: Request instance for RemoveTargetsFromTargetGroup.
        # @type request: :class:`Tencentcloud::alb::V20251030::RemoveTargetsFromTargetGroupRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::RemoveTargetsFromTargetGroupResponse`
        def RemoveTargetsFromTargetGroup(request)
          body = send_request('RemoveTargetsFromTargetGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveTargetsFromTargetGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # SetLoadBalancerSecurityGroups 接口支持对一个公网负载均衡实例执行设置（绑定、解绑）安全组操作。查询一个负载均衡实例目前已绑定的安全组，可使用 [DescribeLoadBalancerDetail](xxx) 接口。本接口是set语义，
        # 绑定操作时，入参需要传入负载均衡实例要绑定的所有安全组（已绑定的+新增绑定的）。
        # 解绑操作时，入参需要传入负载均衡实例执行解绑后所绑定的所有安全组；如果要解绑所有安全组，可不传此参数，或传入空数组。

        # @param request: Request instance for SetLoadBalancerSecurityGroups.
        # @type request: :class:`Tencentcloud::alb::V20251030::SetLoadBalancerSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::alb::V20251030::SetLoadBalancerSecurityGroupsResponse`
        def SetLoadBalancerSecurityGroups(request)
          body = send_request('SetLoadBalancerSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetLoadBalancerSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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