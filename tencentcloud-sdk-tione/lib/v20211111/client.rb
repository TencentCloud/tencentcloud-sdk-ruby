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
    module V20211111
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-11-11'
            api_endpoint = 'tione.tencentcloudapi.com'
            sdk_version = 'TIONE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 该接口支持与自行部署的大模型的聊天。

        # @param request: Request instance for ChatCompletion.
        # @type request: :class:`Tencentcloud::tione::V20211111::ChatCompletionRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::ChatCompletionResponse`
        def ChatCompletion(request)
          body = send_request('ChatCompletion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChatCompletionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据集

        # @param request: Request instance for CreateDataset.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreateDatasetRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreateDatasetResponse`
        def CreateDataset(request)
          body = send_request('CreateDataset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatasetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建、发布一个新的模型服务

        # @param request: Request instance for CreateModelService.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreateModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreateModelServiceResponse`
        def CreateModelService(request)
          body = send_request('CreateModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Notebook

        # @param request: Request instance for CreateNotebook.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreateNotebookRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreateNotebookResponse`
        def CreateNotebook(request)
          body = send_request('CreateNotebook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNotebookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成Notebook访问链接

        # @param request: Request instance for CreatePresignedNotebookUrl.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreatePresignedNotebookUrlRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreatePresignedNotebookUrlResponse`
        def CreatePresignedNotebookUrl(request)
          body = send_request('CreatePresignedNotebookUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePresignedNotebookUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入模型

        # @param request: Request instance for CreateTrainingModel.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreateTrainingModelRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreateTrainingModelResponse`
        def CreateTrainingModel(request)
          body = send_request('CreateTrainingModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrainingModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据集

        # @param request: Request instance for DeleteDataset.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteDatasetRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteDatasetResponse`
        def DeleteDataset(request)
          body = send_request('DeleteDataset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDatasetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据服务id删除模型服务

        # @param request: Request instance for DeleteModelService.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteModelServiceResponse`
        def DeleteModelService(request)
          body = send_request('DeleteModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据服务组id删除服务组下所有模型服务

        # @param request: Request instance for DeleteModelServiceGroup.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteModelServiceGroupRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteModelServiceGroupResponse`
        def DeleteModelServiceGroup(request)
          body = send_request('DeleteModelServiceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelServiceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Notebook

        # @param request: Request instance for DeleteNotebook.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteNotebookRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteNotebookResponse`
        def DeleteNotebook(request)
          body = send_request('DeleteNotebook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNotebookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除模型

        # @param request: Request instance for DeleteTrainingModel.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteTrainingModelRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteTrainingModelResponse`
        def DeleteTrainingModel(request)
          body = send_request('DeleteTrainingModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrainingModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除模型版本

        # @param request: Request instance for DeleteTrainingModelVersion.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteTrainingModelVersionRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteTrainingModelVersionResponse`
        def DeleteTrainingModelVersion(request)
          body = send_request('DeleteTrainingModelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrainingModelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源组节点列表

        # @param request: Request instance for DescribeBillingResourceGroup.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBillingResourceGroupRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBillingResourceGroupResponse`
        def DescribeBillingResourceGroup(request)
          body = send_request('DescribeBillingResourceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingResourceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源组详情

        # @param request: Request instance for DescribeBillingResourceGroups.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBillingResourceGroupsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBillingResourceGroupsResponse`
        def DescribeBillingResourceGroups(request)
          body = send_request('DescribeBillingResourceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingResourceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源组节点运行中的任务

        # @param request: Request instance for DescribeBillingResourceInstanceRunningJobs.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBillingResourceInstanceRunningJobsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBillingResourceInstanceRunningJobsResponse`
        def DescribeBillingResourceInstanceRunningJobs(request)
          body = send_request('DescribeBillingResourceInstanceRunningJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingResourceInstanceRunningJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取内置镜像列表

        # @param request: Request instance for DescribeBuildInImages.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBuildInImagesRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBuildInImagesResponse`
        def DescribeBuildInImages(request)
          body = send_request('DescribeBuildInImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBuildInImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据集列表

        # @param request: Request instance for DescribeDatasets.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeDatasetsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeDatasetsResponse`
        def DescribeDatasets(request)
          body = send_request('DescribeDatasets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatasetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询推理镜像模板

        # @param request: Request instance for DescribeInferTemplates.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeInferTemplatesRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeInferTemplatesResponse`
        def DescribeInferTemplates(request)
          body = send_request('DescribeInferTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInferTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型优化任务详情

        # @param request: Request instance for DescribeModelAccelerateTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelAccelerateTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelAccelerateTaskResponse`
        def DescribeModelAccelerateTask(request)
          body = send_request('DescribeModelAccelerateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelAccelerateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 模型加速之后的模型版本列表

        # @param request: Request instance for DescribeModelAccelerateVersions.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelAccelerateVersionsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelAccelerateVersionsResponse`
        def DescribeModelAccelerateVersions(request)
          body = send_request('DescribeModelAccelerateVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelAccelerateVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个服务

        # @param request: Request instance for DescribeModelService.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceResponse`
        def DescribeModelService(request)
          body = send_request('DescribeModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示服务的调用信息

        # @param request: Request instance for DescribeModelServiceCallInfo.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceCallInfoRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceCallInfoResponse`
        def DescribeModelServiceCallInfo(request)
          body = send_request('DescribeModelServiceCallInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServiceCallInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个服务组

        # @param request: Request instance for DescribeModelServiceGroup.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceGroupRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceGroupResponse`
        def DescribeModelServiceGroup(request)
          body = send_request('DescribeModelServiceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServiceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列举在线推理服务组

        # @param request: Request instance for DescribeModelServiceGroups.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceGroupsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceGroupsResponse`
        def DescribeModelServiceGroups(request)
          body = send_request('DescribeModelServiceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServiceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询模型服务能否开启热更新

        # @param request: Request instance for DescribeModelServiceHotUpdated.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceHotUpdatedRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeModelServiceHotUpdatedResponse`
        def DescribeModelServiceHotUpdated(request)
          body = send_request('DescribeModelServiceHotUpdated', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelServiceHotUpdatedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Notebook详情

        # @param request: Request instance for DescribeNotebook.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeNotebookRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeNotebookResponse`
        def DescribeNotebook(request)
          body = send_request('DescribeNotebook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Notebook列表

        # @param request: Request instance for DescribeNotebooks.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeNotebooksRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeNotebooksResponse`
        def DescribeNotebooks(request)
          body = send_request('DescribeNotebooks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebooksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询模型版本

        # @param request: Request instance for DescribeTrainingModelVersion.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingModelVersionRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingModelVersionResponse`
        def DescribeTrainingModelVersion(request)
          body = send_request('DescribeTrainingModelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingModelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 模型版本列表

        # @param request: Request instance for DescribeTrainingModelVersions.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingModelVersionsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingModelVersionsResponse`
        def DescribeTrainingModelVersions(request)
          body = send_request('DescribeTrainingModelVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingModelVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 训练任务详情

        # @param request: Request instance for DescribeTrainingTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingTaskResponse`
        def DescribeTrainingTask(request)
          body = send_request('DescribeTrainingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 训练任务pod列表

        # @param request: Request instance for DescribeTrainingTaskPods.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingTaskPodsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingTaskPodsResponse`
        def DescribeTrainingTaskPods(request)
          body = send_request('DescribeTrainingTaskPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingTaskPodsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 训练任务列表

        # @param request: Request instance for DescribeTrainingTasks.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingTasksRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingTasksResponse`
        def DescribeTrainingTasks(request)
          body = send_request('DescribeTrainingTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于更新模型服务

        # @param request: Request instance for ModifyModelService.
        # @type request: :class:`Tencentcloud::tione::V20211111::ModifyModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::ModifyModelServiceResponse`
        def ModifyModelService(request)
          body = send_request('ModifyModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报训练自定义指标

        # @param request: Request instance for PushTrainingMetrics.
        # @type request: :class:`Tencentcloud::tione::V20211111::PushTrainingMetricsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::PushTrainingMetricsResponse`
        def PushTrainingMetrics(request)
          body = send_request('PushTrainingMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PushTrainingMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 这是一个供您体验大模型聊天的接口。

        # @param request: Request instance for SendChatMessage.
        # @type request: :class:`Tencentcloud::tione::V20211111::SendChatMessageRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::SendChatMessageResponse`
        def SendChatMessage(request)
          body = send_request('SendChatMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendChatMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动Notebook

        # @param request: Request instance for StartNotebook.
        # @type request: :class:`Tencentcloud::tione::V20211111::StartNotebookRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::StartNotebookResponse`
        def StartNotebook(request)
          body = send_request('StartNotebook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartNotebookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止模型加速任务

        # @param request: Request instance for StopModelAccelerateTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::StopModelAccelerateTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::StopModelAccelerateTaskResponse`
        def StopModelAccelerateTask(request)
          body = send_request('StopModelAccelerateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopModelAccelerateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止Notebook

        # @param request: Request instance for StopNotebook.
        # @type request: :class:`Tencentcloud::tione::V20211111::StopNotebookRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::StopNotebookResponse`
        def StopNotebook(request)
          body = send_request('StopNotebook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopNotebookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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