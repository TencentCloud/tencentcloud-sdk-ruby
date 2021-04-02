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
  module Asw
    module V20200722
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-07-22'
        @@endpoint = 'asw.tencentcloudapi.com'
        @@sdk_version = 'ASW_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 该接口用于生成状态机服务

        # @param request: Request instance for CreateFlowService.
        # @type request: :class:`Tencentcloud::asw::V20200722::CreateFlowServiceRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::CreateFlowServiceResponse`
        def CreateFlowService(request)
          body = send_request('CreateFlowService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询执行详细信息

        # @param request: Request instance for DescribeExecution.
        # @type request: :class:`Tencentcloud::asw::V20200722::DescribeExecutionRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::DescribeExecutionResponse`
        def DescribeExecution(request)
          body = send_request('DescribeExecution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExecutionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 一次执行会有很多步骤，经过很多节点，这个接口描述某一次执行的事件的历史

        # @param request: Request instance for DescribeExecutionHistory.
        # @type request: :class:`Tencentcloud::asw::V20200722::DescribeExecutionHistoryRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::DescribeExecutionHistoryResponse`
        def DescribeExecutionHistory(request)
          body = send_request('DescribeExecutionHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExecutionHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对状态机的执行历史进行描述.

        # @param request: Request instance for DescribeExecutions.
        # @type request: :class:`Tencentcloud::asw::V20200722::DescribeExecutionsRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::DescribeExecutionsResponse`
        def DescribeExecutions(request)
          body = send_request('DescribeExecutions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExecutionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询该用户指定状态机下的详情数据。

        # @param request: Request instance for DescribeFlowServiceDetail.
        # @type request: :class:`Tencentcloud::asw::V20200722::DescribeFlowServiceDetailRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::DescribeFlowServiceDetailResponse`
        def DescribeFlowServiceDetail(request)
          body = send_request('DescribeFlowServiceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowServiceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定用户下所有状态机，以列表形式返回

        # @param request: Request instance for DescribeFlowServices.
        # @type request: :class:`Tencentcloud::asw::V20200722::DescribeFlowServicesRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::DescribeFlowServicesResponse`
        def DescribeFlowServices(request)
          body = send_request('DescribeFlowServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改状态机

        # @param request: Request instance for ModifyFlowService.
        # @type request: :class:`Tencentcloud::asw::V20200722::ModifyFlowServiceRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::ModifyFlowServiceResponse`
        def ModifyFlowService(request)
          body = send_request('ModifyFlowService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFlowServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为指定的状态机启动一次执行

        # @param request: Request instance for StartExecution.
        # @type request: :class:`Tencentcloud::asw::V20200722::StartExecutionRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::StartExecutionResponse`
        def StartExecution(request)
          body = send_request('StartExecution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartExecutionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终止某个状态机

        # @param request: Request instance for StopExecution.
        # @type request: :class:`Tencentcloud::asw::V20200722::StopExecutionRequest`
        # @rtype: :class:`Tencentcloud::asw::V20200722::StopExecutionResponse`
        def StopExecution(request)
          body = send_request('StopExecution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopExecutionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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