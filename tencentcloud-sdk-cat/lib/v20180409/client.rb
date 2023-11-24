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
  module Cat
    module V20180409
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-09'
            api_endpoint = 'cat.tencentcloudapi.com'
            sdk_version = 'CAT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量创建拨测任务

        # @param request: Request instance for CreateProbeTasks.
        # @type request: :class:`Tencentcloud::cat::V20180409::CreateProbeTasksRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::CreateProbeTasksResponse`
        def CreateProbeTasks(request)
          body = send_request('CreateProbeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProbeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除拨测任务

        # @param request: Request instance for DeleteProbeTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::DeleteProbeTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DeleteProbeTaskResponse`
        def DeleteProbeTask(request)
          body = send_request('DeleteProbeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProbeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据时间范围、任务ID、运营商等条件查询单次拨测详情数据

        # @param request: Request instance for DescribeDetailedSingleProbeData.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeDetailedSingleProbeDataRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeDetailedSingleProbeDataResponse`
        def DescribeDetailedSingleProbeData(request)
          body = send_request('DescribeDetailedSingleProbeData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDetailedSingleProbeDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取历史即时拨测任务

        # @param request: Request instance for DescribeInstantTasks.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeInstantTasksRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeInstantTasksResponse`
        def DescribeInstantTasks(request)
          body = send_request('DescribeInstantTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstantTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取拨测节点

        # @param request: Request instance for DescribeNodes.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeNodesRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeNodesResponse`
        def DescribeNodes(request)
          body = send_request('DescribeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云拨测指标数据，指标支持使用sum,avg,max,min聚合函数进行指标数据查询

        # @param request: Request instance for DescribeProbeMetricData.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeProbeMetricDataRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeProbeMetricDataResponse`
        def DescribeProbeMetricData(request)
          body = send_request('DescribeProbeMetricData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProbeMetricDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测节点

        # @param request: Request instance for DescribeProbeNodes.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeProbeNodesRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeProbeNodesResponse`
        def DescribeProbeNodes(request)
          body = send_request('DescribeProbeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProbeNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询拨测任务列表

        # @param request: Request instance for DescribeProbeTasks.
        # @type request: :class:`Tencentcloud::cat::V20180409::DescribeProbeTasksRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::DescribeProbeTasksResponse`
        def DescribeProbeTasks(request)
          body = send_request('DescribeProbeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProbeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复拨测任务

        # @param request: Request instance for ResumeProbeTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::ResumeProbeTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::ResumeProbeTaskResponse`
        def ResumeProbeTask(request)
          body = send_request('ResumeProbeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeProbeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停拨测任务

        # @param request: Request instance for SuspendProbeTask.
        # @type request: :class:`Tencentcloud::cat::V20180409::SuspendProbeTaskRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::SuspendProbeTaskResponse`
        def SuspendProbeTask(request)
          body = send_request('SuspendProbeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SuspendProbeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新探测任务属性

        # @param request: Request instance for UpdateProbeTaskAttributes.
        # @type request: :class:`Tencentcloud::cat::V20180409::UpdateProbeTaskAttributesRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::UpdateProbeTaskAttributesResponse`
        def UpdateProbeTaskAttributes(request)
          body = send_request('UpdateProbeTaskAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProbeTaskAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更新拨测任务配置

        # @param request: Request instance for UpdateProbeTaskConfigurationList.
        # @type request: :class:`Tencentcloud::cat::V20180409::UpdateProbeTaskConfigurationListRequest`
        # @rtype: :class:`Tencentcloud::cat::V20180409::UpdateProbeTaskConfigurationListResponse`
        def UpdateProbeTaskConfigurationList(request)
          body = send_request('UpdateProbeTaskConfigurationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProbeTaskConfigurationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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