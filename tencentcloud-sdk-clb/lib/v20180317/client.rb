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
  module Clb
    module V20180317
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-17'
            api_endpoint = 'clb.tencentcloudapi.com'
            sdk_version = 'CLB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新增个性化配置，准备下线，请使用SetCustomizedConfigForLoadBalancer。

        # @param request: Request instance for AddCustomizedConfig.
        # @type request: :class:`Tencentcloud::clb::V20180317::AddCustomizedConfigRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::AddCustomizedConfigResponse`
        def AddCustomizedConfig(request)
          body = send_request('AddCustomizedConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCustomizedConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关联配置到server或location，根据配置类型关联到server或location。准备下线，请使用SetCustomizedConfigForLoadBalancer。

        # @param request: Request instance for AssociateCustomizedConfig.
        # @type request: :class:`Tencentcloud::clb::V20180317::AssociateCustomizedConfigRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::AssociateCustomizedConfigResponse`
        def AssociateCustomizedConfig(request)
          body = send_request('AssociateCustomizedConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateCustomizedConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(AssociateTargetGroups)用来将目标组绑定到负载均衡的监听器（四层协议）或转发规则（七层协议）上。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。
        # 限制说明：
        # - 四层监听器绑定旧版目标组需要监听器开启后端目标组。
        # - 七层绑定目标组，数据结构 TargetGroupAssociation 中 LocationId 为必填项。
        # - 负载均衡的 VPC 需要和目标组的 VPC 一致。

        # @param request: Request instance for AssociateTargetGroups.
        # @type request: :class:`Tencentcloud::clb::V20180317::AssociateTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::AssociateTargetGroupsResponse`
        def AssociateTargetGroups(request)
          body = send_request('AssociateTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateTargetGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户需要先创建出一个HTTPS:443监听器，并在其下创建转发规则。通过调用本接口，系统会自动创建出一个HTTP:80监听器（如果之前不存在），并在其下创建转发规则，与HTTPS:443监听器下的Domains（在入参中指定）对应。创建成功后可以通过HTTP:80地址自动跳转为HTTPS:443地址进行访问。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。

        # @param request: Request instance for AutoRewrite.
        # @type request: :class:`Tencentcloud::clb::V20180317::AutoRewriteRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::AutoRewriteResponse`
        def AutoRewrite(request)
          body = send_request('AutoRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AutoRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量解绑四七层后端服务。批量解绑的资源数量上限为500。只支持VPC网络负载均衡。

        # @param request: Request instance for BatchDeregisterTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::BatchDeregisterTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::BatchDeregisterTargetsResponse`
        def BatchDeregisterTargets(request)
          body = send_request('BatchDeregisterTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeregisterTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # BatchModifyTargetTag 接口用于批量修改负载均衡监听器绑定的后端机器的标签。批量修改的资源数量上限为500。本接口为同步接口。<br/>负载均衡的4层和7层监听器支持此接口，传统型负载均衡不支持。

        # @param request: Request instance for BatchModifyTargetTag.
        # @type request: :class:`Tencentcloud::clb::V20180317::BatchModifyTargetTagRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::BatchModifyTargetTagResponse`
        def BatchModifyTargetTag(request)
          body = send_request('BatchModifyTargetTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyTargetTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # BatchModifyTargetWeight 接口用于批量修改负载均衡监听器绑定的后端机器的转发权重。批量修改的资源数量上限为500。本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。<br/>负载均衡的4层和7层监听器支持此接口，传统型负载均衡不支持。

        # @param request: Request instance for BatchModifyTargetWeight.
        # @type request: :class:`Tencentcloud::clb::V20180317::BatchModifyTargetWeightRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::BatchModifyTargetWeightResponse`
        def BatchModifyTargetWeight(request)
          body = send_request('BatchModifyTargetWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyTargetWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量绑定虚拟主机或弹性网卡，支持跨域绑定，支持四层、七层（TCP、UDP、HTTP、HTTPS）协议绑定。批量绑定的资源数量上限为500。只支持VPC网络负载均衡。

        # @param request: Request instance for BatchRegisterTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::BatchRegisterTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::BatchRegisterTargetsResponse`
        def BatchRegisterTargets(request)
          body = send_request('BatchRegisterTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchRegisterTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 克隆负载均衡实例，根据指定的负载均衡实例，复制出相同规则和绑定关系的负载均衡实例。克隆接口为异步操作，克隆的数据以调用CloneLoadBalancer时为准，如果调用CloneLoadBalancer后克隆CLB发生变化，变化规则不会克隆。

        # 注：查询实例创建状态可以根据返回值中的requestId访问[DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)接口

        # 限制说明
        # 实例属性维度限制：
        # - 支持克隆实例计费模式为按量计费与包年包月的实例，包年包月实例克隆后的新实例网络计费模式会转换为按小时带宽计费，其带宽、规格与原实例设置保持一致。
        # - 不支持克隆未关联实例计费项的 CLB（历史免费活动创建）。
        # - 不支持克隆传统型负载均衡实例和高防 CLB。
        # - 不支持克隆基础网络类型的实例。
        # - 不支持克隆 Anycast 类型的实例。
        # - 不支持克隆 IPv6 NAT64 版本的实例。
        # - 不支持克隆被封禁或冻结的实例。
        # - 执行克隆操作前，请确保实例上没有使用已过期证书，否则会导致克隆失败。
        # 配额维度限制：
        # - 当实例的监听器个数超过 50 个时，不支持克隆。
        # - 当共享型实例的公网带宽上限超过 2G 时，不支持克隆。

        # 通过接口调用：
        # BGP带宽包必须传带宽包id
        # 独占集群克隆必须传对应的参数，否则按共享型创建

        # @param request: Request instance for CloneLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::CloneLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CloneLoadBalancerResponse`
        def CloneLoadBalancer(request)
          body = send_request('CloneLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建CLB专有日志集，此日志集用于存储CLB的日志。

        # @param request: Request instance for CreateClsLogSet.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateClsLogSetRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateClsLogSetResponse`
        def CreateClsLogSet(request)
          body = send_request('CreateClsLogSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClsLogSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在一个负载均衡实例下创建监听器。
        # 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for CreateListener.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateListenerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateListenerResponse`
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

        # 本接口(CreateLoadBalancer)用来创建负载均衡实例。为了使用负载均衡服务，您必须购买一个或多个负载均衡实例。成功调用该接口后，会返回负载均衡实例的唯一 ID。负载均衡实例的类型分为：公网、内网。详情可参考产品说明中的产品类型。
        # 注意：(1)可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域是否支持创建IPv6实例；(2)一个账号在每个地域的默认购买配额为：公网100个，内网100个。
        # 本接口为异步接口，接口成功返回后，可使用 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。

        # @param request: Request instance for CreateLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateLoadBalancerResponse`
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

        # 针对SnatPro负载均衡，这个接口用于添加SnatIp，如果负载均衡没有开启SnatPro，添加SnatIp后会自动开启。
        # 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for CreateLoadBalancerSnatIps.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateLoadBalancerSnatIpsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateLoadBalancerSnatIpsResponse`
        def CreateLoadBalancerSnatIps(request)
          body = send_request('CreateLoadBalancerSnatIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoadBalancerSnatIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateRule 接口用于在一个已存在的负载均衡七层监听器下创建转发规则，七层监听器中，后端服务必须绑定到规则上而非监听器上。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateRuleResponse`
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

        # 创建目标组。该功能正在内测中，如需使用，请通过[工单申请](https://console.cloud.tencent.com/workorder/category?level1_id=6&level2_id=163&source=0&data_title=%E8%B4%9F%E8%BD%BD%E5%9D%87%E8%A1%A1%20LB&step=1)。

        # @param request: Request instance for CreateTargetGroup.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateTargetGroupRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateTargetGroupResponse`
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

        # 创建主题，默认开启全文索引和键值索引。如果不存在CLB专有日志集，则创建失败。

        # @param request: Request instance for CreateTopic.
        # @type request: :class:`Tencentcloud::clb::V20180317::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::CreateTopicResponse`
        def CreateTopic(request)
          body = send_request('CreateTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除个性化配置，准备下线，请使用SetCustomizedConfigForLoadBalancer。

        # @param request: Request instance for DeleteCustomizedConfig.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteCustomizedConfigRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteCustomizedConfigResponse`
        def DeleteCustomizedConfig(request)
          body = send_request('DeleteCustomizedConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomizedConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来删除负载均衡实例下的监听器（四层和七层）。
        # 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for DeleteListener.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteListenerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteListenerResponse`
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

        # DeleteLoadBalancer 接口用以删除指定的一个或多个负载均衡实例。成功删除后，会把负载均衡实例下的监听器、转发规则一起删除，并把后端服务解绑。
        # 本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for DeleteLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteLoadBalancerResponse`
        def DeleteLoadBalancer(request)
          body = send_request('DeleteLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口支持删除负载均衡的多个监听器。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for DeleteLoadBalancerListeners.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteLoadBalancerListenersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteLoadBalancerListenersResponse`
        def DeleteLoadBalancerListeners(request)
          body = send_request('DeleteLoadBalancerListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancerListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 这个接口用于删除SnatPro的负载均衡的SnatIp。
        # 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for DeleteLoadBalancerSnatIps.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteLoadBalancerSnatIpsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteLoadBalancerSnatIpsResponse`
        def DeleteLoadBalancerSnatIps(request)
          body = send_request('DeleteLoadBalancerSnatIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancerSnatIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteRewrite 接口支持删除指定转发规则之间的重定向关系。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。

        # @param request: Request instance for DeleteRewrite.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteRewriteRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteRewriteResponse`
        def DeleteRewrite(request)
          body = send_request('DeleteRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteRule 接口用来删除负载均衡实例七层监听器下的转发规则。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除目标组，支持批量删除目标组，单次最多批量删除 20 个目标组。

        # @param request: Request instance for DeleteTargetGroups.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeleteTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeleteTargetGroupsResponse`
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

        # DeregisterFunctionTargets 接口用来将一个云函数从负载均衡的转发规则上解绑，对于七层监听器，还需通过 LocationId 或 Domain+Url 指定转发规则。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。
        # <br/>限制说明：

        # - 仅广州、深圳金融、上海、上海金融、北京、成都、中国香港、新加坡、东京、硅谷地域支持绑定 SCF。
        # - 仅标准账户类型支持绑定 SCF，传统账户类型不支持。建议升级为标准账户类型，详情可参见 [账户类型升级说明](https://cloud.tencent.com/document/product/1199/49090)。
        # - 传统型负载均衡不支持绑定 SCF。
        # - 基础网络类型不支持绑定 SCF。
        # - CLB 默认支持绑定同地域下的所有 SCF，可支持跨 VPC 绑定 SCF，不支持跨地域绑定。
        # - 目前仅 IPv4、IPv6 NAT64 版本的负载均衡支持绑定 SCF，IPv6 版本的暂不支持。
        # - 仅七层（HTTP、HTTPS）监听器支持绑定 SCF，四层（TCP、UDP、TCP SSL）监听器和七层 QUIC 监听器不支持。
        # - CLB 绑定 SCF 仅支持绑定“Event 函数”类型的云函数。

        # @param request: Request instance for DeregisterFunctionTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeregisterFunctionTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeregisterFunctionTargetsResponse`
        def DeregisterFunctionTargets(request)
          body = send_request('DeregisterFunctionTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterFunctionTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从目标组中解绑服务器。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for DeregisterTargetGroupInstances.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeregisterTargetGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeregisterTargetGroupInstancesResponse`
        def DeregisterTargetGroupInstances(request)
          body = send_request('DeregisterTargetGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterTargetGroupInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeregisterTargets 接口用来将一台或多台后端服务从负载均衡的监听器或转发规则上解绑，对于四层监听器，只需指定监听器ID即可，对于七层监听器，还需通过LocationId或Domain+Url指定转发规则。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。

        # @param request: Request instance for DeregisterTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeregisterTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeregisterTargetsResponse`
        def DeregisterTargets(request)
          body = send_request('DeregisterTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeregisterTargetsFromClassicalLB 接口用于解绑负载均衡后端服务。本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。

        # @param request: Request instance for DeregisterTargetsFromClassicalLB.
        # @type request: :class:`Tencentcloud::clb::V20180317::DeregisterTargetsFromClassicalLBRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DeregisterTargetsFromClassicalLBResponse`
        def DeregisterTargetsFromClassicalLB(request)
          body = send_request('DeregisterTargetsFromClassicalLB', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterTargetsFromClassicalLBResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）

        # @param request: Request instance for DescribeBlockIPList.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeBlockIPListRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeBlockIPListResponse`
        def DescribeBlockIPList(request)
          body = send_request('DescribeBlockIPList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlockIPListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据 ModifyBlockIPList 接口返回的异步任务的ID，查询封禁IP（黑名单）异步任务的执行状态。（接口灰度中，如需使用请提工单）

        # @param request: Request instance for DescribeBlockIPTask.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeBlockIPTaskRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeBlockIPTaskResponse`
        def DescribeBlockIPTask(request)
          body = send_request('DescribeBlockIPTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlockIPTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeClassicalLBByInstanceId用于通过后端实例ID获取传统型负载均衡ID列表。

        # @param request: Request instance for DescribeClassicalLBByInstanceId.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBByInstanceIdRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBByInstanceIdResponse`
        def DescribeClassicalLBByInstanceId(request)
          body = send_request('DescribeClassicalLBByInstanceId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassicalLBByInstanceIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeClassicalLBHealthStatus用于获取传统型负载均衡后端的健康状态

        # @param request: Request instance for DescribeClassicalLBHealthStatus.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBHealthStatusRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBHealthStatusResponse`
        def DescribeClassicalLBHealthStatus(request)
          body = send_request('DescribeClassicalLBHealthStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassicalLBHealthStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeClassicalLBListeners 接口用于获取传统型负载均衡的监听器信息。

        # @param request: Request instance for DescribeClassicalLBListeners.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBListenersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBListenersResponse`
        def DescribeClassicalLBListeners(request)
          body = send_request('DescribeClassicalLBListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassicalLBListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeClassicalLBTargets用于获取传统型负载均衡绑定的后端服务。

        # @param request: Request instance for DescribeClassicalLBTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeClassicalLBTargetsResponse`
        def DescribeClassicalLBTargets(request)
          body = send_request('DescribeClassicalLBTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassicalLBTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户的CLB专有日志集。

        # @param request: Request instance for DescribeClsLogSet.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeClsLogSetRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeClsLogSetResponse`
        def DescribeClsLogSet(request)
          body = send_request('DescribeClsLogSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClsLogSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。

        # @param request: Request instance for DescribeClusterResources.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeClusterResourcesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeClusterResourcesResponse`
        def DescribeClusterResources(request)
          body = send_request('DescribeClusterResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询跨域2.0版本云联网后端子机和网卡信息。

        # @param request: Request instance for DescribeCrossTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeCrossTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeCrossTargetsResponse`
        def DescribeCrossTargets(request)
          body = send_request('DescribeCrossTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取配置绑定的 server 或 location，如果 domain 存在，结果将根据 domain 过滤。或拉取配置绑定的 loadbalancer。

        # @param request: Request instance for DescribeCustomizedConfigAssociateList.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeCustomizedConfigAssociateListRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeCustomizedConfigAssociateListResponse`
        def DescribeCustomizedConfigAssociateList(request)
          body = send_request('DescribeCustomizedConfigAssociateList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomizedConfigAssociateListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取个性化配置列表，返回用户 AppId 下指定类型的配置。

        # @param request: Request instance for DescribeCustomizedConfigList.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeCustomizedConfigListRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeCustomizedConfigListResponse`
        def DescribeCustomizedConfigList(request)
          body = send_request('DescribeCustomizedConfigList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomizedConfigListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群信息列表，支持以集群类型、集群唯一ID、集群名字、集群标签、集群内vip、集群内负载均衡唯一id、集群网络类型、可用区等条件进行检索

        # @param request: Request instance for DescribeExclusiveClusters.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeExclusiveClustersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeExclusiveClustersResponse`
        def DescribeExclusiveClusters(request)
          body = send_request('DescribeExclusiveClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExclusiveClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 闲置实例是指创建超过7天后付费实例，且没有创建规则或创建规则没有绑定子机的负载均衡实例。

        # @param request: Request instance for DescribeIdleLoadBalancers.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeIdleLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeIdleLoadBalancersResponse`
        def DescribeIdleLoadBalancers(request)
          body = send_request('DescribeIdleLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdleLoadBalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询后端云主机或弹性网卡绑定的负载均衡，支持弹性网卡和cvm查询。

        # @param request: Request instance for DescribeLBListeners.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLBListenersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLBListenersResponse`
        def DescribeLBListeners(request)
          body = send_request('DescribeLBListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLBListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询负载均衡的操作保护信息。

        # @param request: Request instance for DescribeLBOperateProtect.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLBOperateProtectRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLBOperateProtectResponse`
        def DescribeLBOperateProtect(request)
          body = send_request('DescribeLBOperateProtect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLBOperateProtectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeListeners 接口可根据负载均衡器 ID、监听器的协议或端口作为过滤条件获取监听器列表。如果不指定任何过滤条件，则返回该负载均衡实例下的所有监听器。

        # @param request: Request instance for DescribeListeners.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeListenersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeListenersResponse`
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

        # 根据证书ID查询其在一个地域中所关联到负载均衡实例列表

        # @param request: Request instance for DescribeLoadBalancerListByCertId.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancerListByCertIdRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancerListByCertIdResponse`
        def DescribeLoadBalancerListByCertId(request)
          body = send_request('DescribeLoadBalancerListByCertId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerListByCertIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行中、隔离中、即将到期和负载均衡总数。

        # @param request: Request instance for DescribeLoadBalancerOverview.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancerOverviewRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancerOverviewResponse`
        def DescribeLoadBalancerOverview(request)
          body = send_request('DescribeLoadBalancerOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账号下的高流量负载均衡，返回前10个负载均衡。如果是子账号登录，只返回子账号有权限的负载均衡。

        # @param request: Request instance for DescribeLoadBalancerTraffic.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancerTrafficRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancerTrafficResponse`
        def DescribeLoadBalancerTraffic(request)
          body = send_request('DescribeLoadBalancerTraffic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerTrafficResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询一个地域的负载均衡实例列表。

        # @param request: Request instance for DescribeLoadBalancers.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancersResponse`
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

        # 查询负载均衡的详细信息，包括监听器，规则及后端目标。

        # @param request: Request instance for DescribeLoadBalancersDetail.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancersDetailRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeLoadBalancersDetailResponse`
        def DescribeLoadBalancersDetail(request)
          body = send_request('DescribeLoadBalancersDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancersDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户当前地域下的各项配额

        # @param request: Request instance for DescribeQuota.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeQuotaRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeQuotaResponse`
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

        # 查询用户在当前地域支持可用区列表和资源列表。

        # @param request: Request instance for DescribeResources.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeResourcesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeResourcesResponse`
        def DescribeResources(request)
          body = send_request('DescribeResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeRewrite 接口可根据负载均衡实例ID，查询一个负载均衡实例下转发规则的重定向关系。如果不指定监听器ID或转发规则ID，则返回该负载均衡实例下的所有重定向关系。

        # @param request: Request instance for DescribeRewrite.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeRewriteRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeRewriteResponse`
        def DescribeRewrite(request)
          body = send_request('DescribeRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取目标组绑定的服务器信息

        # @param request: Request instance for DescribeTargetGroupInstances.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeTargetGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeTargetGroupInstancesResponse`
        def DescribeTargetGroupInstances(request)
          body = send_request('DescribeTargetGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取目标组列表

        # @param request: Request instance for DescribeTargetGroupList.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeTargetGroupListRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeTargetGroupListResponse`
        def DescribeTargetGroupList(request)
          body = send_request('DescribeTargetGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询目标组信息

        # @param request: Request instance for DescribeTargetGroups.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeTargetGroupsResponse`
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

        # DescribeTargetHealth 接口用来获取负载均衡后端服务的健康检查结果，不支持传统型负载均衡。

        # @param request: Request instance for DescribeTargetHealth.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeTargetHealthRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeTargetHealthResponse`
        def DescribeTargetHealth(request)
          body = send_request('DescribeTargetHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetHealthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeTargets 接口用来查询负载均衡实例的某些监听器绑定的后端服务列表。

        # @param request: Request instance for DescribeTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeTargetsResponse`
        def DescribeTargets(request)
          body = send_request('DescribeTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询异步任务的执行状态，对于非查询类的接口（创建/删除负载均衡实例、监听器、规则以及绑定或解绑后端服务等），在接口调用成功后，都需要使用本接口查询任务最终是否执行成功。

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::clb::V20180317::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 去关联个性化配置，准备下线，请使用SetCustomizedConfigForLoadBalancer。

        # @param request: Request instance for DisassociateCustomizedConfig.
        # @type request: :class:`Tencentcloud::clb::V20180317::DisassociateCustomizedConfigRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DisassociateCustomizedConfigResponse`
        def DisassociateCustomizedConfig(request)
          body = send_request('DisassociateCustomizedConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateCustomizedConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除规则的目标组关联关系。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
        # 当解绑七层转发规则时，LocationId 为必填项。

        # @param request: Request instance for DisassociateTargetGroups.
        # @type request: :class:`Tencentcloud::clb::V20180317::DisassociateTargetGroupsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::DisassociateTargetGroupsResponse`
        def DisassociateTargetGroups(request)
          body = send_request('DisassociateTargetGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateTargetGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # InquiryPriceCreateLoadBalancer接口查询创建负载均衡的价格。

        # @param request: Request instance for InquiryPriceCreateLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::InquiryPriceCreateLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::InquiryPriceCreateLoadBalancerResponse`
        def InquiryPriceCreateLoadBalancer(request)
          body = send_request('InquiryPriceCreateLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # InquiryPriceModifyLoadBalancer接口修改负载均衡配置询价。

        # @param request: Request instance for InquiryPriceModifyLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::InquiryPriceModifyLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::InquiryPriceModifyLoadBalancerResponse`
        def InquiryPriceModifyLoadBalancer(request)
          body = send_request('InquiryPriceModifyLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceModifyLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # InquiryPriceRefundLoadBalancer接口查询负载均衡退费价格，只支持预付费类型的负载均衡实例。

        # @param request: Request instance for InquiryPriceRefundLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::InquiryPriceRefundLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::InquiryPriceRefundLoadBalancerResponse`
        def InquiryPriceRefundLoadBalancer(request)
          body = send_request('InquiryPriceRefundLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRefundLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # InquiryPriceRenewLoadBalancer接口查询对负载均衡续费的价格，只支持预付费负载均衡续费。

        # @param request: Request instance for InquiryPriceRenewLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::InquiryPriceRenewLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::InquiryPriceRenewLoadBalancerResponse`
        def InquiryPriceRenewLoadBalancer(request)
          body = send_request('InquiryPriceRenewLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户手动配置原访问地址和重定向地址，系统自动将原访问地址的请求重定向至对应路径的目的地址。同一域名下可以配置多条路径作为重定向策略，实现http/https之间请求的自动跳转。设置重定向时，需满足如下约束条件：若A已经重定向至B，则A不能再重定向至C（除非先删除老的重定向关系，再建立新的重定向关系），B不能重定向至任何其它地址。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。

        # @param request: Request instance for ManualRewrite.
        # @type request: :class:`Tencentcloud::clb::V20180317::ManualRewriteRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ManualRewriteResponse`
        def ManualRewrite(request)
          body = send_request('ManualRewrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManualRewriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口将传统型负载均衡迁移成(原应用型)负载均衡
        # 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。

        # @param request: Request instance for MigrateClassicalLoadBalancers.
        # @type request: :class:`Tencentcloud::clb::V20180317::MigrateClassicalLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::MigrateClassicalLoadBalancersResponse`
        def MigrateClassicalLoadBalancers(request)
          body = send_request('MigrateClassicalLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateClassicalLoadBalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改负载均衡的IP（client IP）封禁黑名单列表，一个转发规则最多支持封禁 2000000 个IP，及黑名单容量为 2000000。
        # （接口灰度中，如需使用请提工单）

        # @param request: Request instance for ModifyBlockIPList.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyBlockIPListRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyBlockIPListResponse`
        def ModifyBlockIPList(request)
          body = send_request('ModifyBlockIPList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBlockIPListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改个性化配置。如果配置已经绑定clb、server或location，同时更新。准备下线，请使用SetCustomizedConfigForLoadBalancer。

        # @param request: Request instance for ModifyCustomizedConfig.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyCustomizedConfigRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyCustomizedConfigResponse`
        def ModifyCustomizedConfig(request)
          body = send_request('ModifyCustomizedConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomizedConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyDomain接口用来修改负载均衡七层监听器下的域名。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyDomain.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyDomainRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyDomainResponse`
        def ModifyDomain(request)
          body = send_request('ModifyDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyDomainAttributes接口用于修改负载均衡7层监听器转发规则的域名级别属性，如修改域名、修改DefaultServer、开启/关闭Http2、修改证书
        # 本接口为异步接口，本接口返回成功后，需以返回的RequestId为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyDomainAttributes.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyDomainAttributesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyDomainAttributesResponse`
        def ModifyDomainAttributes(request)
          body = send_request('ModifyDomainAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改负载均衡转发规则上所绑定的云函数。
        # 限制说明：
        # - 仅支持绑定“Event 函数”类型的云函数。

        # @param request: Request instance for ModifyFunctionTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyFunctionTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyFunctionTargetsResponse`
        def ModifyFunctionTargets(request)
          body = send_request('ModifyFunctionTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFunctionTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyListener接口用来修改负载均衡监听器的属性，包括监听器名称、健康检查参数、证书信息、转发策略等。本接口不支持传统型负载均衡。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyListener.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyListenerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyListenerResponse`
        def ModifyListener(request)
          body = send_request('ModifyListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改负载均衡实例的属性。支持修改负载均衡实例的名称、设置负载均衡的跨域属性。
        # 注意：非带宽上移用户的 CLB 实例必须加入带宽包才可以设置跨域属性。修改网络计费模式请到控制台操作。
        # 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyLoadBalancerAttributes.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancerAttributesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancerAttributesResponse`
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

        # 修改IPv6FullChain负载均衡7层监听器支持混绑IPv4/IPv6目标特性。

        # @param request: Request instance for ModifyLoadBalancerMixIpTarget.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancerMixIpTargetRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancerMixIpTargetResponse`
        def ModifyLoadBalancerMixIpTarget(request)
          body = send_request('ModifyLoadBalancerMixIpTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerMixIpTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyLoadBalancerSla）用于调整按量计费模式实例的性能容量型规格，如共享型升级性能容量型，性能容量型实例规格调整。<br/>
        # 限制条件：
        # - 本接口只支持调整按量计费的CLB实例，包年包月的CLB实例升级请通过控制台进行调整。
        # - 共享型升级为性能容量型实例后，不支持再回退到共享型实例。
        # - 传统型负载均衡实例不支持升级为性能容量型实例。

        # @param request: Request instance for ModifyLoadBalancerSla.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancerSlaRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancerSlaResponse`
        def ModifyLoadBalancerSla(request)
          body = send_request('ModifyLoadBalancerSla', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerSlaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改一个或多个负载均衡实例所属项目。

        # @param request: Request instance for ModifyLoadBalancersProject.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancersProjectRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyLoadBalancersProjectResponse`
        def ModifyLoadBalancersProject(request)
          body = send_request('ModifyLoadBalancersProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancersProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyRule 接口用来修改负载均衡七层监听器下的转发规则的各项属性，包括转发路径、健康检查属性、转发策略等。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyRule.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyRuleRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyRuleResponse`
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

        # 修改目标组的名称或者默认端口属性

        # @param request: Request instance for ModifyTargetGroupAttribute.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyTargetGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyTargetGroupAttributeResponse`
        def ModifyTargetGroupAttribute(request)
          body = send_request('ModifyTargetGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetGroupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改目标组服务器端口。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyTargetGroupInstancesPort.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyTargetGroupInstancesPortRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyTargetGroupInstancesPortResponse`
        def ModifyTargetGroupInstancesPort(request)
          body = send_request('ModifyTargetGroupInstancesPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetGroupInstancesPortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改目标组的服务器权重。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyTargetGroupInstancesWeight.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyTargetGroupInstancesWeightRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyTargetGroupInstancesWeightResponse`
        def ModifyTargetGroupInstancesWeight(request)
          body = send_request('ModifyTargetGroupInstancesWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetGroupInstancesWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyTargetPort接口用于修改监听器绑定的后端服务的端口。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。

        # @param request: Request instance for ModifyTargetPort.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyTargetPortRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyTargetPortResponse`
        def ModifyTargetPort(request)
          body = send_request('ModifyTargetPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetPortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyTargetWeight 接口用于修改负载均衡绑定的后端服务的转发权重。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用 [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683) 接口查询本次任务是否成功。

        # @param request: Request instance for ModifyTargetWeight.
        # @type request: :class:`Tencentcloud::clb::V20180317::ModifyTargetWeightRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ModifyTargetWeightResponse`
        def ModifyTargetWeight(request)
          body = send_request('ModifyTargetWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # RegisterFunctionTargets 接口用来将一个云函数绑定到负载均衡的7层转发规则，在此之前您需要先行创建相关的7层监听器（HTTP、HTTPS）和转发规则。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。<br/>
        # 限制说明：
        # - 仅广州、深圳金融、上海、上海金融、北京、成都、中国香港、新加坡、东京、硅谷地域支持绑定 SCF。
        # - 仅标准账户类型支持绑定 SCF，传统账户类型不支持。建议升级为标准账户类型，详情可参见 [账户类型升级说明](https://cloud.tencent.com/document/product/1199/49090)。
        # - 传统型负载均衡不支持绑定 SCF。
        # - 基础网络类型不支持绑定 SCF。
        # - CLB 默认支持绑定同地域下的所有 SCF，可支持跨 VPC 绑定 SCF，不支持跨地域绑定。
        # - 目前仅 IPv4、IPv6 NAT64 版本的负载均衡支持绑定 SCF，IPv6 版本的暂不支持。
        # - 仅七层（HTTP、HTTPS）监听器支持绑定 SCF，四层（TCP、UDP、TCP SSL）监听器和七层 QUIC 监听器不支持。
        # - CLB 绑定 SCF 仅支持绑定“Event 函数”类型的云函数。
        # - 一个转发规则只支持绑定一个云函数。

        # @param request: Request instance for RegisterFunctionTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::RegisterFunctionTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::RegisterFunctionTargetsResponse`
        def RegisterFunctionTargets(request)
          body = send_request('RegisterFunctionTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterFunctionTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注册服务器到目标组。
        # 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。

        # @param request: Request instance for RegisterTargetGroupInstances.
        # @type request: :class:`Tencentcloud::clb::V20180317::RegisterTargetGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::RegisterTargetGroupInstancesResponse`
        def RegisterTargetGroupInstances(request)
          body = send_request('RegisterTargetGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterTargetGroupInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # RegisterTargets 接口用来将一台或多台后端服务绑定到负载均衡的监听器（或7层转发规则），在此之前您需要先行创建相关的4层监听器或7层转发规则。对于四层监听器（TCP、UDP），只需指定监听器ID即可，对于七层监听器（HTTP、HTTPS），还需通过LocationId或者Domain+Url指定转发规则。
        # 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。

        # @param request: Request instance for RegisterTargets.
        # @type request: :class:`Tencentcloud::clb::V20180317::RegisterTargetsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::RegisterTargetsResponse`
        def RegisterTargets(request)
          body = send_request('RegisterTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # RegisterTargetsWithClassicalLB 接口用于绑定后端服务到传统型负载均衡。本接口为异步接口，接口返回成功后，需以返回的 RequestId 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。

        # @param request: Request instance for RegisterTargetsWithClassicalLB.
        # @type request: :class:`Tencentcloud::clb::V20180317::RegisterTargetsWithClassicalLBRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::RegisterTargetsWithClassicalLBResponse`
        def RegisterTargetsWithClassicalLB(request)
          body = send_request('RegisterTargetsWithClassicalLB', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterTargetsWithClassicalLBResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ReplaceCertForLoadBalancers 接口用以替换负载均衡实例所关联的证书，对于各个地域的负载均衡，如果指定的老的证书ID与其有关联关系，则会先解除关联，再建立新证书与该负载均衡的关联关系。
        # 此接口支持替换服务端证书或客户端证书。
        # 需要使用的新证书，可以通过传入证书ID来指定，如果不指定证书ID，则必须传入证书内容等相关信息，用以新建证书并绑定至负载均衡。
        # 注：本接口仅可从广州地域调用。

        # @param request: Request instance for ReplaceCertForLoadBalancers.
        # @type request: :class:`Tencentcloud::clb::V20180317::ReplaceCertForLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::ReplaceCertForLoadBalancersResponse`
        def ReplaceCertForLoadBalancers(request)
          body = send_request('ReplaceCertForLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceCertForLoadBalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 负载均衡维度的个性化配置相关操作：创建、删除、修改、绑定、解绑

        # @param request: Request instance for SetCustomizedConfigForLoadBalancer.
        # @type request: :class:`Tencentcloud::clb::V20180317::SetCustomizedConfigForLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::SetCustomizedConfigForLoadBalancerResponse`
        def SetCustomizedConfigForLoadBalancer(request)
          body = send_request('SetCustomizedConfigForLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetCustomizedConfigForLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加、删除、更新负载均衡的日志服务(CLS)主题。

        # @param request: Request instance for SetLoadBalancerClsLog.
        # @type request: :class:`Tencentcloud::clb::V20180317::SetLoadBalancerClsLogRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::SetLoadBalancerClsLogResponse`
        def SetLoadBalancerClsLog(request)
          body = send_request('SetLoadBalancerClsLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetLoadBalancerClsLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # SetLoadBalancerSecurityGroups 接口支持对一个公网负载均衡实例执行设置（绑定、解绑）安全组操作。查询一个负载均衡实例目前已绑定的安全组，可使用 [DescribeLoadBalancers](https://cloud.tencent.com/document/product/1108/48459) 接口。本接口是set语义，
        # 绑定操作时，入参需要传入负载均衡实例要绑定的所有安全组（已绑定的+新增绑定的）。
        # 解绑操作时，入参需要传入负载均衡实例执行解绑后所绑定的所有安全组；如果要解绑所有安全组，可不传此参数，或传入空数组。注意：内网 CLB 绑定 EIP 后，CLB 上的安全组对来自 EIP 的流量不生效，对来自内网 CLB 的流量生效。

        # @param request: Request instance for SetLoadBalancerSecurityGroups.
        # @type request: :class:`Tencentcloud::clb::V20180317::SetLoadBalancerSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::SetLoadBalancerSecurityGroupsResponse`
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

        # 启停负载均衡实例或者监听器。
        # 本接口为异步接口，接口返回成功后，需以得到的 RequestID 为入参，调用  [DescribeTaskStatus](https://cloud.tencent.com/document/product/214/30683)  接口查询本次任务是否成功。
        # 该功能正在内测中，如需使用，请通过[工单申请](https://console.cloud.tencent.com/workorder/category?level1_id=6&level2_id=163&source=0&data_title=%E8%B4%9F%E8%BD%BD%E5%9D%87%E8%A1%A1%20LB&step=1)。

        # @param request: Request instance for SetLoadBalancerStartStatus.
        # @type request: :class:`Tencentcloud::clb::V20180317::SetLoadBalancerStartStatusRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::SetLoadBalancerStartStatusResponse`
        def SetLoadBalancerStartStatus(request)
          body = send_request('SetLoadBalancerStartStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetLoadBalancerStartStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定或解绑一个安全组到多个公网负载均衡实例。

        # @param request: Request instance for SetSecurityGroupForLoadbalancers.
        # @type request: :class:`Tencentcloud::clb::V20180317::SetSecurityGroupForLoadbalancersRequest`
        # @rtype: :class:`Tencentcloud::clb::V20180317::SetSecurityGroupForLoadbalancersResponse`
        def SetSecurityGroupForLoadbalancers(request)
          body = send_request('SetSecurityGroupForLoadbalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetSecurityGroupForLoadbalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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