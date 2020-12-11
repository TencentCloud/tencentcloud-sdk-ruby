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

        # 获取基础指标详情

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


      end
    end
  end
end