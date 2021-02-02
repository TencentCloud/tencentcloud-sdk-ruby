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
  module Tat
    module V20201028
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-10-28'
        @@endpoint = 'tat.tencentcloudapi.com'
        @@sdk_version = 'TAT_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 此接口用于创建命令。

        # @param request: Request instance for CreateCommand.
        # @type request: :class:`Tencentcloud::tat::V20201028::CreateCommandRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::CreateCommandResponse`
        def CreateCommand(request)
          body = send_request('CreateCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于删除命令。

        # @param request: Request instance for DeleteCommand.
        # @type request: :class:`Tencentcloud::tat::V20201028::DeleteCommandRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::DeleteCommandResponse`
        def DeleteCommand(request)
          body = send_request('DeleteCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于查询自动化助手客户端的状态。

        # @param request: Request instance for DescribeAutomationAgentStatus.
        # @type request: :class:`Tencentcloud::tat::V20201028::DescribeAutomationAgentStatusRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::DescribeAutomationAgentStatusResponse`
        def DescribeAutomationAgentStatus(request)
          body = send_request('DescribeAutomationAgentStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutomationAgentStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于查询命令详情。

        # @param request: Request instance for DescribeCommands.
        # @type request: :class:`Tencentcloud::tat::V20201028::DescribeCommandsRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::DescribeCommandsResponse`
        def DescribeCommands(request)
          body = send_request('DescribeCommands', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCommandsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于查询执行任务详情。

        # @param request: Request instance for DescribeInvocationTasks.
        # @type request: :class:`Tencentcloud::tat::V20201028::DescribeInvocationTasksRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::DescribeInvocationTasksResponse`
        def DescribeInvocationTasks(request)
          body = send_request('DescribeInvocationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于查询执行活动详情。

        # @param request: Request instance for DescribeInvocations.
        # @type request: :class:`Tencentcloud::tat::V20201028::DescribeInvocationsRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::DescribeInvocationsResponse`
        def DescribeInvocations(request)
          body = send_request('DescribeInvocations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于查询地域列表

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::tat::V20201028::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在指定的实例上触发命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。

        # * 如果指定实例未安装 agent，或 agent 不在线，返回失败
        # * 如果命令类型与 agent 运行环境不符，返回失败
        # * 指定的实例需要处于 VPC 网络
        # * 指定的实例需要处于 RUNNING 状态
        # * 不可同时指定 CVM 和 Lighthouse

        # @param request: Request instance for InvokeCommand.
        # @type request: :class:`Tencentcloud::tat::V20201028::InvokeCommandRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::InvokeCommandResponse`
        def InvokeCommand(request)
          body = send_request('InvokeCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于修改命令。

        # @param request: Request instance for ModifyCommand.
        # @type request: :class:`Tencentcloud::tat::V20201028::ModifyCommandRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::ModifyCommandResponse`
        def ModifyCommand(request)
          body = send_request('ModifyCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 执行命令，调用成功返回执行活动ID（inv-xxxxxxxx），每个执行活动内部有一个或多个执行任务（invt-xxxxxxxx），每个执行任务代表命令在一台 CVM 或一台 Lighthouse 上的执行记录。

        # * 如果指定实例未安装 agent，或 agent 不在线，返回失败
        # * 如果命令类型与 agent 运行环境不符，返回失败
        # * 指定的实例需要处于 VPC 网络
        # * 指定的实例需要处于 `RUNNING` 状态
        # * 不可同时指定 CVM 和 Lighthouse

        # @param request: Request instance for RunCommand.
        # @type request: :class:`Tencentcloud::tat::V20201028::RunCommandRequest`
        # @rtype: :class:`Tencentcloud::tat::V20201028::RunCommandResponse`
        def RunCommand(request)
          body = send_request('RunCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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