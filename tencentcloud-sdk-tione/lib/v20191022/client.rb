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
  module Tione
    module V20191022
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-10-22'
        @@endpoint = 'tione.tencentcloudapi.com'
        @@sdk_version = 'TIONE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 创建存储库

        # @param request: Request instance for CreateCodeRepository.
        # @type request: :class:`Tencentcloud::tione::V20191022::CreateCodeRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::CreateCodeRepositoryResponse`
        def CreateCodeRepository(request)
          body = send_request('CreateCodeRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCodeRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Notebook实例

        # @param request: Request instance for CreateNotebookInstance.
        # @type request: :class:`Tencentcloud::tione::V20191022::CreateNotebookInstanceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::CreateNotebookInstanceResponse`
        def CreateNotebookInstance(request)
          body = send_request('CreateNotebookInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNotebookInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Notebook生命周期脚本

        # @param request: Request instance for CreateNotebookLifecycleScript.
        # @type request: :class:`Tencentcloud::tione::V20191022::CreateNotebookLifecycleScriptRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::CreateNotebookLifecycleScriptResponse`
        def CreateNotebookLifecycleScript(request)
          body = send_request('CreateNotebookLifecycleScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNotebookLifecycleScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Notebook授权Url

        # @param request: Request instance for CreatePresignedNotebookInstanceUrl.
        # @type request: :class:`Tencentcloud::tione::V20191022::CreatePresignedNotebookInstanceUrlRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::CreatePresignedNotebookInstanceUrlResponse`
        def CreatePresignedNotebookInstanceUrl(request)
          body = send_request('CreatePresignedNotebookInstanceUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePresignedNotebookInstanceUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建训练任务

        # @param request: Request instance for CreateTrainingJob.
        # @type request: :class:`Tencentcloud::tione::V20191022::CreateTrainingJobRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::CreateTrainingJobResponse`
        def CreateTrainingJob(request)
          body = send_request('CreateTrainingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrainingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除存储库

        # @param request: Request instance for DeleteCodeRepository.
        # @type request: :class:`Tencentcloud::tione::V20191022::DeleteCodeRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DeleteCodeRepositoryResponse`
        def DeleteCodeRepository(request)
          body = send_request('DeleteCodeRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCodeRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除notebook实例

        # @param request: Request instance for DeleteNotebookInstance.
        # @type request: :class:`Tencentcloud::tione::V20191022::DeleteNotebookInstanceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DeleteNotebookInstanceResponse`
        def DeleteNotebookInstance(request)
          body = send_request('DeleteNotebookInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNotebookInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Notebook生命周期脚本

        # @param request: Request instance for DeleteNotebookLifecycleScript.
        # @type request: :class:`Tencentcloud::tione::V20191022::DeleteNotebookLifecycleScriptRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DeleteNotebookLifecycleScriptResponse`
        def DeleteNotebookLifecycleScript(request)
          body = send_request('DeleteNotebookLifecycleScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNotebookLifecycleScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询存储库列表

        # @param request: Request instance for DescribeCodeRepositories.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeCodeRepositoriesRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeCodeRepositoriesResponse`
        def DescribeCodeRepositories(request)
          body = send_request('DescribeCodeRepositories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodeRepositoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询存储库详情

        # @param request: Request instance for DescribeCodeRepository.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeCodeRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeCodeRepositoryResponse`
        def DescribeCodeRepository(request)
          body = send_request('DescribeCodeRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodeRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Notebook实例详情

        # @param request: Request instance for DescribeNotebookInstance.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeNotebookInstanceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeNotebookInstanceResponse`
        def DescribeNotebookInstance(request)
          body = send_request('DescribeNotebookInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Notebook实例列表

        # @param request: Request instance for DescribeNotebookInstances.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeNotebookInstancesRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeNotebookInstancesResponse`
        def DescribeNotebookInstances(request)
          body = send_request('DescribeNotebookInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看notebook生命周期脚本详情

        # @param request: Request instance for DescribeNotebookLifecycleScript.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeNotebookLifecycleScriptRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeNotebookLifecycleScriptResponse`
        def DescribeNotebookLifecycleScript(request)
          body = send_request('DescribeNotebookLifecycleScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookLifecycleScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看notebook生命周期脚本列表

        # @param request: Request instance for DescribeNotebookLifecycleScripts.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeNotebookLifecycleScriptsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeNotebookLifecycleScriptsResponse`
        def DescribeNotebookLifecycleScripts(request)
          body = send_request('DescribeNotebookLifecycleScripts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookLifecycleScriptsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Notebook概览数据

        # @param request: Request instance for DescribeNotebookSummary.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeNotebookSummaryRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeNotebookSummaryResponse`
        def DescribeNotebookSummary(request)
          body = send_request('DescribeNotebookSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询训练任务

        # @param request: Request instance for DescribeTrainingJob.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeTrainingJobRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeTrainingJobResponse`
        def DescribeTrainingJob(request)
          body = send_request('DescribeTrainingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询训练任务列表

        # @param request: Request instance for DescribeTrainingJobs.
        # @type request: :class:`Tencentcloud::tione::V20191022::DescribeTrainingJobsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::DescribeTrainingJobsResponse`
        def DescribeTrainingJobs(request)
          body = send_request('DescribeTrainingJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动Notebook实例

        # @param request: Request instance for StartNotebookInstance.
        # @type request: :class:`Tencentcloud::tione::V20191022::StartNotebookInstanceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::StartNotebookInstanceResponse`
        def StartNotebookInstance(request)
          body = send_request('StartNotebookInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartNotebookInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止Notebook实例

        # @param request: Request instance for StopNotebookInstance.
        # @type request: :class:`Tencentcloud::tione::V20191022::StopNotebookInstanceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::StopNotebookInstanceResponse`
        def StopNotebookInstance(request)
          body = send_request('StopNotebookInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopNotebookInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止训练任务

        # @param request: Request instance for StopTrainingJob.
        # @type request: :class:`Tencentcloud::tione::V20191022::StopTrainingJobRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::StopTrainingJobResponse`
        def StopTrainingJob(request)
          body = send_request('StopTrainingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopTrainingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新存储库

        # @param request: Request instance for UpdateCodeRepository.
        # @type request: :class:`Tencentcloud::tione::V20191022::UpdateCodeRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::UpdateCodeRepositoryResponse`
        def UpdateCodeRepository(request)
          body = send_request('UpdateCodeRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCodeRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新Notebook实例

        # @param request: Request instance for UpdateNotebookInstance.
        # @type request: :class:`Tencentcloud::tione::V20191022::UpdateNotebookInstanceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::UpdateNotebookInstanceResponse`
        def UpdateNotebookInstance(request)
          body = send_request('UpdateNotebookInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateNotebookInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新notebook生命周期脚本

        # @param request: Request instance for UpdateNotebookLifecycleScript.
        # @type request: :class:`Tencentcloud::tione::V20191022::UpdateNotebookLifecycleScriptRequest`
        # @rtype: :class:`Tencentcloud::tione::V20191022::UpdateNotebookLifecycleScriptResponse`
        def UpdateNotebookLifecycleScript(request)
          body = send_request('UpdateNotebookLifecycleScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateNotebookLifecycleScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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