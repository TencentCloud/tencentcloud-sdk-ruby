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
  module Batch
    module V20170312
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-12'
            api_endpoint = 'batch.tencentcloudapi.com'
            sdk_version = 'BATCH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口可将已存在实例添加到计算环境中。
        # 实例需要满足如下条件：<br/>
        # 1.实例不在批量计算系统中。<br/>
        # 2.实例状态要求处于运行中。<br/>
        # 3.支持预付费实例，按小时后付费实例，专享子机实例。不支持竞价实例。<br/>

        # 此接口会将加入到计算环境中的实例重设UserData和重装操作系统。

        # @param request: Request instance for AttachInstances.
        # @type request: :class:`Tencentcloud::batch::V20170312::AttachInstancesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::AttachInstancesResponse`
        def AttachInstances(request)
          body = send_request('AttachInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建计算环境

        # @param request: Request instance for CreateComputeEnv.
        # @type request: :class:`Tencentcloud::batch::V20170312::CreateComputeEnvRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::CreateComputeEnvResponse`
        def CreateComputeEnv(request)
          body = send_request('CreateComputeEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateComputeEnvResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建任务模板

        # @param request: Request instance for CreateTaskTemplate.
        # @type request: :class:`Tencentcloud::batch::V20170312::CreateTaskTemplateRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::CreateTaskTemplateResponse`
        def CreateTaskTemplate(request)
          body = send_request('CreateTaskTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除计算环境

        # @param request: Request instance for DeleteComputeEnv.
        # @type request: :class:`Tencentcloud::batch::V20170312::DeleteComputeEnvRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DeleteComputeEnvResponse`
        def DeleteComputeEnv(request)
          body = send_request('DeleteComputeEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteComputeEnvResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除作业记录。
        # 删除作业的效果相当于删除作业相关的所有信息。删除成功后，作业相关的所有信息都无法查询。
        # 待删除的作业必须处于完结状态，且其内部包含的所有任务实例也必须处于完结状态，否则会禁止操作。完结状态，是指处于 SUCCEED 或 FAILED 状态。

        # @param request: Request instance for DeleteJob.
        # @type request: :class:`Tencentcloud::batch::V20170312::DeleteJobRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DeleteJobResponse`
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

        # 用于删除任务模板信息

        # @param request: Request instance for DeleteTaskTemplates.
        # @type request: :class:`Tencentcloud::batch::V20170312::DeleteTaskTemplatesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DeleteTaskTemplatesResponse`
        def DeleteTaskTemplates(request)
          body = send_request('DeleteTaskTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看可用的CVM机型配置信息

        # @param request: Request instance for DescribeAvailableCvmInstanceTypes.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeAvailableCvmInstanceTypesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeAvailableCvmInstanceTypesResponse`
        def DescribeAvailableCvmInstanceTypes(request)
          body = send_request('DescribeAvailableCvmInstanceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableCvmInstanceTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询计算环境的详细信息

        # @param request: Request instance for DescribeComputeEnv.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvResponse`
        def DescribeComputeEnv(request)
          body = send_request('DescribeComputeEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComputeEnvResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询计算环境的活动信息

        # @param request: Request instance for DescribeComputeEnvActivities.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvActivitiesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvActivitiesResponse`
        def DescribeComputeEnvActivities(request)
          body = send_request('DescribeComputeEnvActivities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComputeEnvActivitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看计算环境的创建信息。

        # @param request: Request instance for DescribeComputeEnvCreateInfo.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvCreateInfoRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvCreateInfoResponse`
        def DescribeComputeEnvCreateInfo(request)
          body = send_request('DescribeComputeEnvCreateInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComputeEnvCreateInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。

        # @param request: Request instance for DescribeComputeEnvCreateInfos.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvCreateInfosRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvCreateInfosResponse`
        def DescribeComputeEnvCreateInfos(request)
          body = send_request('DescribeComputeEnvCreateInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComputeEnvCreateInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查看计算环境列表

        # @param request: Request instance for DescribeComputeEnvs.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvsRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeComputeEnvsResponse`
        def DescribeComputeEnvs(request)
          body = send_request('DescribeComputeEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComputeEnvsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取批量计算可用区机型配置信息

        # @param request: Request instance for DescribeCvmZoneInstanceConfigInfos.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeCvmZoneInstanceConfigInfosRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeCvmZoneInstanceConfigInfosResponse`
        def DescribeCvmZoneInstanceConfigInfos(request)
          body = send_request('DescribeCvmZoneInstanceConfigInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCvmZoneInstanceConfigInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 目前对CVM现有实例族分类，每一类包含若干实例族。该接口用于查询实例分类信息。

        # @param request: Request instance for DescribeInstanceCategories.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeInstanceCategoriesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeInstanceCategoriesResponse`
        def DescribeInstanceCategories(request)
          body = send_request('DescribeInstanceCategories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceCategoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查看一个作业的详细信息，包括内部任务（Task）和依赖（Dependence）信息。

        # @param request: Request instance for DescribeJob.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeJobRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeJobResponse`
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

        # 用于查询指定作业的提交信息，其返回内容包括 JobId 和 SubmitJob 接口中作为输入参数的作业提交信息

        # @param request: Request instance for DescribeJobSubmitInfo.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeJobSubmitInfoRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeJobSubmitInfoResponse`
        def DescribeJobSubmitInfo(request)
          body = send_request('DescribeJobSubmitInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobSubmitInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询若干个作业的概览信息

        # @param request: Request instance for DescribeJobs.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeJobsRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeJobsResponse`
        def DescribeJobs(request)
          body = send_request('DescribeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询指定任务的详细信息，包括任务内部的任务实例信息。

        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeTaskResponse`
        def DescribeTask(request)
          body = send_request('DescribeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取任务多个实例标准输出和标准错误日志。

        # @param request: Request instance for DescribeTaskLogs.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeTaskLogsRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeTaskLogsResponse`
        def DescribeTaskLogs(request)
          body = send_request('DescribeTaskLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询任务模板信息

        # @param request: Request instance for DescribeTaskTemplates.
        # @type request: :class:`Tencentcloud::batch::V20170312::DescribeTaskTemplatesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DescribeTaskTemplatesResponse`
        def DescribeTaskTemplates(request)
          body = send_request('DescribeTaskTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将添加到计算环境中的实例从计算环境中移出。若是由批量计算自动创建的计算节点实例则不允许移出。

        # @param request: Request instance for DetachInstances.
        # @type request: :class:`Tencentcloud::batch::V20170312::DetachInstancesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::DetachInstancesResponse`
        def DetachInstances(request)
          body = send_request('DetachInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改计算环境属性

        # @param request: Request instance for ModifyComputeEnv.
        # @type request: :class:`Tencentcloud::batch::V20170312::ModifyComputeEnvRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::ModifyComputeEnvResponse`
        def ModifyComputeEnv(request)
          body = send_request('ModifyComputeEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyComputeEnvResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改任务模板

        # @param request: Request instance for ModifyTaskTemplate.
        # @type request: :class:`Tencentcloud::batch::V20170312::ModifyTaskTemplateRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::ModifyTaskTemplateResponse`
        def ModifyTaskTemplate(request)
          body = send_request('ModifyTaskTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTaskTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于重试作业中失败的任务实例。
        # 仅当作业处于“FAILED”状态，支持重试操作。重试操作成功后，作业会按照有向无环图中指定的任务依赖关系，依次重试各个任务中失败的任务实例。任务实例的历史信息将被重置，如同首次运行一样，参与后续的调度和执行。

        # @param request: Request instance for RetryJobs.
        # @type request: :class:`Tencentcloud::batch::V20170312::RetryJobsRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::RetryJobsResponse`
        def RetryJobs(request)
          body = send_request('RetryJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交一个作业

        # @param request: Request instance for SubmitJob.
        # @type request: :class:`Tencentcloud::batch::V20170312::SubmitJobRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::SubmitJobResponse`
        def SubmitJob(request)
          body = send_request('SubmitJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于销毁计算节点。
        # 对于状态为CREATED、CREATION_FAILED、RUNNING和ABNORMAL的节点，允许销毁处理。

        # @param request: Request instance for TerminateComputeNode.
        # @type request: :class:`Tencentcloud::batch::V20170312::TerminateComputeNodeRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::TerminateComputeNodeResponse`
        def TerminateComputeNode(request)
          body = send_request('TerminateComputeNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateComputeNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于批量销毁计算节点，不允许重复销毁同一个节点。

        # @param request: Request instance for TerminateComputeNodes.
        # @type request: :class:`Tencentcloud::batch::V20170312::TerminateComputeNodesRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::TerminateComputeNodesResponse`
        def TerminateComputeNodes(request)
          body = send_request('TerminateComputeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateComputeNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于终止作业。
        # 当作业处于“SUBMITTED”状态时，禁止终止操作；当作业处于“SUCCEED”状态时，终止操作不会生效。
        # 终止作业是一个异步过程。整个终止过程的耗时和任务总数成正比。终止的效果相当于所含的所有任务实例进行[TerminateTaskInstance](https://cloud.tencent.com/document/product/599/15908)操作。具体效果和用法可参考[TerminateTaskInstance](https://cloud.tencent.com/document/product/599/15908)。

        # @param request: Request instance for TerminateJob.
        # @type request: :class:`Tencentcloud::batch::V20170312::TerminateJobRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::TerminateJobResponse`
        def TerminateJob(request)
          body = send_request('TerminateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于终止任务实例。
        # 对于状态已经为“SUCCEED”和“FAILED”的任务实例，不做处理。
        # 对于状态为“SUBMITTED”、“PENDING”、“RUNNABLE”的任务实例，状态将置为“FAILED”状态。
        # 对于状态为“STARTING”、“RUNNING”、“FAILED_INTERRUPTED”的任务实例，区分两种情况：如果未显示指定计算环境，会先销毁CVM服务器，然后将状态置为“FAILED”，具有一定耗时；如果指定了计算环境EnvId，任务实例状态置为“FAILED”，并重启执行该任务的CVM服务器，具有一定的耗时。
        # 对于状态为“FAILED_INTERRUPTED”的任务实例，终止操作实际成功之后，相关资源和配额才会释放。

        # @param request: Request instance for TerminateTaskInstance.
        # @type request: :class:`Tencentcloud::batch::V20170312::TerminateTaskInstanceRequest`
        # @rtype: :class:`Tencentcloud::batch::V20170312::TerminateTaskInstanceResponse`
        def TerminateTaskInstance(request)
          body = send_request('TerminateTaskInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateTaskInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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