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


        # 创建跑批任务

        # @param request: Request instance for CreateBatchTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreateBatchTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreateBatchTaskResponse`
        def CreateBatchTask(request)
          body = send_request('CreateBatchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBatchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建模型训练任务

        # @param request: Request instance for CreateTrainingTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::CreateTrainingTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::CreateTrainingTaskResponse`
        def CreateTrainingTask(request)
          body = send_request('CreateTrainingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrainingTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除跑批任务

        # @param request: Request instance for DeleteBatchTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteBatchTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteBatchTaskResponse`
        def DeleteBatchTask(request)
          body = send_request('DeleteBatchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBatchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除训练任务

        # @param request: Request instance for DeleteTrainingTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::DeleteTrainingTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DeleteTrainingTaskResponse`
        def DeleteTrainingTask(request)
          body = send_request('DeleteTrainingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrainingTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询跑批任务

        # @param request: Request instance for DescribeBatchTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBatchTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBatchTaskResponse`
        def DescribeBatchTask(request)
          body = send_request('DescribeBatchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询跑批实例列表

        # @param request: Request instance for DescribeBatchTaskInstances.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBatchTaskInstancesRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBatchTaskInstancesResponse`
        def DescribeBatchTaskInstances(request)
          body = send_request('DescribeBatchTaskInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchTaskInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量预测任务列表信息

        # @param request: Request instance for DescribeBatchTasks.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBatchTasksRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBatchTasksResponse`
        def DescribeBatchTasks(request)
          body = send_request('DescribeBatchTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(DescribeBillingSpecs)用于查询计费项列表

        # @param request: Request instance for DescribeBillingSpecs.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBillingSpecsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBillingSpecsResponse`
        def DescribeBillingSpecs(request)
          body = send_request('DescribeBillingSpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingSpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeBillingSpecsPrice)用于查询计费项价格。

        # @param request: Request instance for DescribeBillingSpecsPrice.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeBillingSpecsPriceRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeBillingSpecsPriceResponse`
        def DescribeBillingSpecsPrice(request)
          body = send_request('DescribeBillingSpecsPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingSpecsPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询结构化数据集详情

        # @param request: Request instance for DescribeDatasetDetailStructured.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeDatasetDetailStructuredRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeDatasetDetailStructuredResponse`
        def DescribeDatasetDetailStructured(request)
          body = send_request('DescribeDatasetDetailStructured', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatasetDetailStructuredResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询非结构化数据集详情

        # @param request: Request instance for DescribeDatasetDetailUnstructured.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeDatasetDetailUnstructuredRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeDatasetDetailUnstructuredResponse`
        def DescribeDatasetDetailUnstructured(request)
          body = send_request('DescribeDatasetDetailUnstructured', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatasetDetailUnstructuredResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询最近上报的训练自定义指标

        # @param request: Request instance for DescribeLatestTrainingMetrics.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeLatestTrainingMetricsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeLatestTrainingMetricsResponse`
        def DescribeLatestTrainingMetrics(request)
          body = send_request('DescribeLatestTrainingMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLatestTrainingMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取训练、推理、Notebook服务的日志

        # @param request: Request instance for DescribeLogs.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeLogsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeLogsResponse`
        def DescribeLogs(request)
          body = send_request('DescribeLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 训练框架列表

        # @param request: Request instance for DescribeTrainingFrameworks.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingFrameworksRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingFrameworksResponse`
        def DescribeTrainingFrameworks(request)
          body = send_request('DescribeTrainingFrameworks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingFrameworksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询训练自定义指标

        # @param request: Request instance for DescribeTrainingMetrics.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingMetricsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingMetricsResponse`
        def DescribeTrainingMetrics(request)
          body = send_request('DescribeTrainingMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 模型列表

        # @param request: Request instance for DescribeTrainingModels.
        # @type request: :class:`Tencentcloud::tione::V20211111::DescribeTrainingModelsRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::DescribeTrainingModelsResponse`
        def DescribeTrainingModels(request)
          body = send_request('DescribeTrainingModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingModelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 启动模型训练任务

        # @param request: Request instance for StartTrainingTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::StartTrainingTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::StartTrainingTaskResponse`
        def StartTrainingTask(request)
          body = send_request('StartTrainingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartTrainingTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止跑批任务

        # @param request: Request instance for StopBatchTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::StopBatchTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::StopBatchTaskResponse`
        def StopBatchTask(request)
          body = send_request('StopBatchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopBatchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止模型训练任务

        # @param request: Request instance for StopTrainingTask.
        # @type request: :class:`Tencentcloud::tione::V20211111::StopTrainingTaskRequest`
        # @rtype: :class:`Tencentcloud::tione::V20211111::StopTrainingTaskResponse`
        def StopTrainingTask(request)
          body = send_request('StopTrainingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopTrainingTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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