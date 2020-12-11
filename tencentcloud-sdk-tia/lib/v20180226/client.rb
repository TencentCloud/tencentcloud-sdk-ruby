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
  module Tia
    module V20180226
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-02-26'
        @@endpoint = 'tia.tencentcloudapi.com'
        @@sdk_version = 'TIA_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 创建训练任务

        # @param request: Request instance for CreateJob.
        # @type request: :class:`Tencentcloud::tia::V20180226::CreateJobRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::CreateJobResponse`
        def CreateJob(request)
          body = send_request('CreateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 部署模型，用以对外提供服务。有两种部署模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。

        # @param request: Request instance for CreateModel.
        # @type request: :class:`Tencentcloud::tia::V20180226::CreateModelRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::CreateModelResponse`
        def CreateModel(request)
          body = send_request('CreateModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除训练任务

        # @param request: Request instance for DeleteJob.
        # @type request: :class:`Tencentcloud::tia::V20180226::DeleteJobRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::DeleteJobResponse`
        def DeleteJob(request)
          body = send_request('DeleteJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定的部署模型。模型有两种部署模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。

        # @param request: Request instance for DeleteModel.
        # @type request: :class:`Tencentcloud::tia::V20180226::DeleteModelRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::DeleteModelResponse`
        def DeleteModel(request)
          body = send_request('DeleteModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取训练任务详情

        # @param request: Request instance for DescribeJob.
        # @type request: :class:`Tencentcloud::tia::V20180226::DescribeJobRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::DescribeJobResponse`
        def DescribeJob(request)
          body = send_request('DescribeJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述已经部署的某个模型。而模型部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。

        # @param request: Request instance for DescribeModel.
        # @type request: :class:`Tencentcloud::tia::V20180226::DescribeModelRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::DescribeModelResponse`
        def DescribeModel(request)
          body = send_request('DescribeModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安装agent

        # @param request: Request instance for InstallAgent.
        # @type request: :class:`Tencentcloud::tia::V20180226::InstallAgentRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::InstallAgentResponse`
        def InstallAgent(request)
          body = send_request('InstallAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列举训练任务

        # @param request: Request instance for ListJobs.
        # @type request: :class:`Tencentcloud::tia::V20180226::ListJobsRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::ListJobsResponse`
        def ListJobs(request)
          body = send_request('ListJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用以列举已经部署的模型。而部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。不同部署模式下的模型分开列出。

        # @param request: Request instance for ListModels.
        # @type request: :class:`Tencentcloud::tia::V20180226::ListModelsRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::ListModelsResponse`
        def ListModels(request)
          body = send_request('ListModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListModelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TI-A 训练任务的日志

        # @param request: Request instance for QueryLogs.
        # @type request: :class:`Tencentcloud::tia::V20180226::QueryLogsRequest`
        # @rtype: :class:`Tencentcloud::tia::V20180226::QueryLogsResponse`
        def QueryLogs(request)
          body = send_request('QueryLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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