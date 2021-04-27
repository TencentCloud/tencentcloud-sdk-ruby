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
  module Monitor
    module V20180724
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-07-24'
        @@endpoint = 'monitor.tencentcloudapi.com'
        @@sdk_version = 'MONITOR_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 将告警策略绑定到特定对象

        # @param request: Request instance for BindingPolicyObject.
        # @type request: :class:`Tencentcloud::monitor::V20180724::BindingPolicyObjectRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::BindingPolicyObjectResponse`
        def BindingPolicyObject(request)
          body = send_request('BindingPolicyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindingPolicyObjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建通知模板

        # @param request: Request instance for CreateAlarmNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateAlarmNoticeResponse`
        def CreateAlarmNotice(request)
          body = send_request('CreateAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建告警策略

        # @param request: Request instance for CreateAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateAlarmPolicyResponse`
        def CreateAlarmPolicy(request)
          body = send_request('CreateAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加策略组

        # @param request: Request instance for CreatePolicyGroup.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreatePolicyGroupRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreatePolicyGroupResponse`
        def CreatePolicyGroup(request)
          body = send_request('CreatePolicyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePolicyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在腾讯云容器服务下创建 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for CreateServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateServiceDiscoveryResponse`
        def CreateServiceDiscovery(request)
          body = send_request('CreateServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceDiscoveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云监控告警删除告警通知模板

        # @param request: Request instance for DeleteAlarmNotices.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmNoticesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmNoticesResponse`
        def DeleteAlarmNotices(request)
          body = send_request('DeleteAlarmNotices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmNoticesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除告警策略

        # @param request: Request instance for DeleteAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmPolicyResponse`
        def DeleteAlarmPolicy(request)
          body = send_request('DeleteAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除告警策略组

        # @param request: Request instance for DeletePolicyGroup.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeletePolicyGroupRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeletePolicyGroupResponse`
        def DeletePolicyGroup(request)
          body = send_request('DeletePolicyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePolicyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除在腾讯云容器服务下创建的 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for DeleteServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteServiceDiscoveryResponse`
        def DeleteServiceDiscovery(request)
          body = send_request('DeleteServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceDiscoveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取平台事件列表

        # @param request: Request instance for DescribeAccidentEventList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAccidentEventListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAccidentEventListResponse`
        def DescribeAccidentEventList(request)
          body = send_request('DescribeAccidentEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccidentEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警事件列表

        # @param request: Request instance for DescribeAlarmEvents.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmEventsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmEventsResponse`
        def DescribeAlarmEvents(request)
          body = send_request('DescribeAlarmEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警历史

        # 请注意，**如果使用子用户进行告警历史的查询，只能查询到被授权项目下的告警历史**，或不区分项目的产品的告警历史。如何对子账户授予项目的权限，请参考 [访问管理-项目与标签](https://cloud.tencent.com/document/product/598/32738)。

        # @param request: Request instance for DescribeAlarmHistories.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmHistoriesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmHistoriesResponse`
        def DescribeAlarmHistories(request)
          body = send_request('DescribeAlarmHistories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmHistoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警指标列表

        # @param request: Request instance for DescribeAlarmMetrics.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmMetricsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmMetricsResponse`
        def DescribeAlarmMetrics(request)
          body = send_request('DescribeAlarmMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个通知模板的详情

        # @param request: Request instance for DescribeAlarmNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeResponse`
        def DescribeAlarmNotice(request)
          body = send_request('DescribeAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云监控告警获取告警通知模板所有回调URL

        # @param request: Request instance for DescribeAlarmNoticeCallbacks.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeCallbacksRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeCallbacksResponse`
        def DescribeAlarmNoticeCallbacks(request)
          body = send_request('DescribeAlarmNoticeCallbacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticeCallbacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询通知模板列表

        # @param request: Request instance for DescribeAlarmNotices.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticesResponse`
        def DescribeAlarmNotices(request)
          body = send_request('DescribeAlarmNotices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警策略列表

        # @param request: Request instance for DescribeAlarmPolicies.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPoliciesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPoliciesResponse`
        def DescribeAlarmPolicies(request)
          body = send_request('DescribeAlarmPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个告警策略详情

        # @param request: Request instance for DescribeAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPolicyResponse`
        def DescribeAlarmPolicy(request)
          body = send_request('DescribeAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询所有名字空间

        # @param request: Request instance for DescribeAllNamespaces.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAllNamespacesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAllNamespacesResponse`
        def DescribeAllNamespaces(request)
          body = send_request('DescribeAllNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基础指标属性

        # @param request: Request instance for DescribeBaseMetrics.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeBaseMetricsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeBaseMetricsResponse`
        def DescribeBaseMetrics(request)
          body = send_request('DescribeBaseMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaseMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基础告警列表

        # @param request: Request instance for DescribeBasicAlarmList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeBasicAlarmListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeBasicAlarmListResponse`
        def DescribeBasicAlarmList(request)
          body = send_request('DescribeBasicAlarmList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicAlarmListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取已绑定对象列表

        # @param request: Request instance for DescribeBindingPolicyObjectList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeBindingPolicyObjectListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeBindingPolicyObjectListResponse`
        def DescribeBindingPolicyObjectList(request)
          body = send_request('DescribeBindingPolicyObjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindingPolicyObjectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云监控支持多种类型的监控，此接口列出支持的所有类型

        # @param request: Request instance for DescribeMonitorTypes.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeMonitorTypesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeMonitorTypesResponse`
        def DescribeMonitorTypes(request)
          body = send_request('DescribeMonitorTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基础告警策略条件

        # @param request: Request instance for DescribePolicyConditionList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePolicyConditionListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePolicyConditionListResponse`
        def DescribePolicyConditionList(request)
          body = send_request('DescribePolicyConditionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyConditionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基础策略组详情

        # @param request: Request instance for DescribePolicyGroupInfo.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupInfoResponse`
        def DescribePolicyGroupInfo(request)
          body = send_request('DescribePolicyGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基础策略告警组列表

        # @param request: Request instance for DescribePolicyGroupList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupListResponse`
        def DescribePolicyGroupList(request)
          body = send_request('DescribePolicyGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页获取产品事件的列表

        # @param request: Request instance for DescribeProductEventList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeProductEventListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeProductEventListResponse`
        def DescribeProductEventList(request)
          body = send_request('DescribeProductEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云监控产品列表

        # @param request: Request instance for DescribeProductList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeProductListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeProductListResponse`
        def DescribeProductList(request)
          body = send_request('DescribeProductList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出在腾讯云容器服务下创建的 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for DescribeServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeServiceDiscoveryResponse`
        def DescribeServiceDiscovery(request)
          body = send_request('DescribeServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceDiscoveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据维度条件查询监控数据

        # @param request: Request instance for DescribeStatisticData.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeStatisticDataRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeStatisticDataResponse`
        def DescribeStatisticData(request)
          body = send_request('DescribeStatisticData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatisticDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云产品的监控数据。传入产品的命名空间、对象维度描述和监控指标即可获得相应的监控数据。
        # 接口调用频率限制为：20次/秒，1200次/分钟。单请求最多可支持批量拉取10个实例的监控数据，单请求的数据点数限制为1440个。
        # 若您需要调用的指标、对象较多，可能存在因限频出现拉取失败的情况，建议尽量将请求按时间维度均摊。

        # @param request: Request instance for GetMonitorData.
        # @type request: :class:`Tencentcloud::monitor::V20180724::GetMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::GetMonitorDataResponse`
        def GetMonitorData(request)
          body = send_request('GetMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMonitorDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云监控告警编辑告警通知模板

        # @param request: Request instance for ModifyAlarmNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmNoticeResponse`
        def ModifyAlarmNotice(request)
          body = send_request('ModifyAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警策略触发条件

        # @param request: Request instance for ModifyAlarmPolicyCondition.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyConditionRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyConditionResponse`
        def ModifyAlarmPolicyCondition(request)
          body = send_request('ModifyAlarmPolicyCondition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyConditionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警2.0编辑告警策略基本信息，包括策略名、备注

        # @param request: Request instance for ModifyAlarmPolicyInfo.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyInfoRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyInfoResponse`
        def ModifyAlarmPolicyInfo(request)
          body = send_request('ModifyAlarmPolicyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云监控告警修改告警策略绑定的告警通知模板

        # @param request: Request instance for ModifyAlarmPolicyNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyNoticeResponse`
        def ModifyAlarmPolicyNotice(request)
          body = send_request('ModifyAlarmPolicyNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启停告警策略

        # @param request: Request instance for ModifyAlarmPolicyStatus.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyStatusResponse`
        def ModifyAlarmPolicyStatus(request)
          body = send_request('ModifyAlarmPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云监控告警修改告警策略的触发任务，TriggerTasks字段放触发任务列表，TriggerTasks传空数组时，代表解绑该策略的所有触发任务。

        # @param request: Request instance for ModifyAlarmPolicyTasks.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyTasksRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyTasksResponse`
        def ModifyAlarmPolicyTasks(request)
          body = send_request('ModifyAlarmPolicyTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警接收人

        # @param request: Request instance for ModifyAlarmReceivers.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmReceiversRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmReceiversResponse`
        def ModifyAlarmReceivers(request)
          body = send_request('ModifyAlarmReceivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmReceiversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新策略组

        # @param request: Request instance for ModifyPolicyGroup.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyPolicyGroupRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyPolicyGroupResponse`
        def ModifyPolicyGroup(request)
          body = send_request('ModifyPolicyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPolicyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 默认接口请求频率限制：50次/秒。
        # 默认单租户指标上限：100个。
        # 单次上报最多 30 个指标/值对，请求返回错误时，请求中所有的指标/值均不会被保存。

        # 上报的时间戳为期望保存的时间戳，建议构造整数分钟时刻的时间戳。
        # 时间戳时间范围必须为当前时间到 300 秒前之间。
        # 同一 IP 指标对的数据需按分钟先后顺序上报。

        # @param request: Request instance for PutMonitorData.
        # @type request: :class:`Tencentcloud::monitor::V20180724::PutMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::PutMonitorDataResponse`
        def PutMonitorData(request)
          body = send_request('PutMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutMonitorDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送自定义消息告警

        # @param request: Request instance for SendCustomAlarmMsg.
        # @type request: :class:`Tencentcloud::monitor::V20180724::SendCustomAlarmMsgRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::SendCustomAlarmMsgResponse`
        def SendCustomAlarmMsg(request)
          body = send_request('SendCustomAlarmMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendCustomAlarmMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置一个策略为该告警策略类型、该项目的默认告警策略。
        # 同一项目下相同的告警策略类型，就会被设置为非默认。

        # @param request: Request instance for SetDefaultAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::SetDefaultAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::SetDefaultAlarmPolicyResponse`
        def SetDefaultAlarmPolicy(request)
          body = send_request('SetDefaultAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetDefaultAlarmPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除全部的关联对象

        # @param request: Request instance for UnBindingAllPolicyObject.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UnBindingAllPolicyObjectRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UnBindingAllPolicyObjectResponse`
        def UnBindingAllPolicyObject(request)
          body = send_request('UnBindingAllPolicyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindingAllPolicyObjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除策略的关联对象

        # @param request: Request instance for UnBindingPolicyObject.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UnBindingPolicyObjectRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UnBindingPolicyObjectResponse`
        def UnBindingPolicyObject(request)
          body = send_request('UnBindingPolicyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindingPolicyObjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在腾讯云容器服务下更新 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for UpdateServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateServiceDiscoveryResponse`
        def UpdateServiceDiscovery(request)
          body = send_request('UpdateServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateServiceDiscoveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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