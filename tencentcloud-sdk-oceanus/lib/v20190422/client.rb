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
  module Oceanus
    module V20190422
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-04-22'
            api_endpoint = 'oceanus.tencentcloudapi.com'
            sdk_version = 'OCEANUS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 检查快照是否可用

        # @param request: Request instance for CheckSavepoint.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CheckSavepointRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CheckSavepointResponse`
        def CheckSavepoint(request)
          body = send_request('CheckSavepoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckSavepointResponse.new
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

        # 单条和批量复制作业

        # @param request: Request instance for CopyJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CopyJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CopyJobsResponse`
        def CopyJobs(request)
          body = send_request('CopyJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyJobsResponse.new
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

        # 作业列表页面新建文件夹请求

        # @param request: Request instance for CreateFolder.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CreateFolderRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CreateFolderResponse`
        def CreateFolder(request)
          body = send_request('CreateFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFolderResponse.new
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

        # 新建作业接口，一个 AppId 最多允许创建1000个作业

        # @param request: Request instance for CreateJob.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CreateJobRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CreateJobResponse`
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

        # 创建作业配置，一个作业最多有100个配置版本

        # @param request: Request instance for CreateJobConfig.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CreateJobConfigRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CreateJobConfigResponse`
        def CreateJobConfig(request)
          body = send_request('CreateJobConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJobConfigResponse.new
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

        # 创建资源接口

        # @param request: Request instance for CreateResource.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CreateResourceRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CreateResourceResponse`
        def CreateResource(request)
          body = send_request('CreateResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceResponse.new
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

        # 创建资源配置接口

        # @param request: Request instance for CreateResourceConfig.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CreateResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CreateResourceConfigResponse`
        def CreateResourceConfig(request)
          body = send_request('CreateResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceConfigResponse.new
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

        # 创建工作空间

        # @param request: Request instance for CreateWorkSpace.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::CreateWorkSpaceRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::CreateWorkSpaceResponse`
        def CreateWorkSpace(request)
          body = send_request('CreateWorkSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkSpaceResponse.new
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

        # 作业列表删除文件夹

        # @param request: Request instance for DeleteFolders.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteFoldersRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteFoldersResponse`
        def DeleteFolders(request)
          body = send_request('DeleteFolders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFoldersResponse.new
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

        # 删除作业配置

        # @param request: Request instance for DeleteJobConfigs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteJobConfigsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteJobConfigsResponse`
        def DeleteJobConfigs(request)
          body = send_request('DeleteJobConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJobConfigsResponse.new
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

        # 批量删除作业接口，批量操作数量上限20

        # @param request: Request instance for DeleteJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteJobsResponse`
        def DeleteJobs(request)
          body = send_request('DeleteJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJobsResponse.new
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

        # 删除资源版本

        # @param request: Request instance for DeleteResourceConfigs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteResourceConfigsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteResourceConfigsResponse`
        def DeleteResourceConfigs(request)
          body = send_request('DeleteResourceConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceConfigsResponse.new
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

        # 删除资源接口

        # @param request: Request instance for DeleteResources.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteResourcesRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteResourcesResponse`
        def DeleteResources(request)
          body = send_request('DeleteResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourcesResponse.new
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

        # 删除作业表配置

        # @param request: Request instance for DeleteTableConfig.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteTableConfigRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteTableConfigResponse`
        def DeleteTableConfig(request)
          body = send_request('DeleteTableConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTableConfigResponse.new
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

        # 删除工作空间

        # @param request: Request instance for DeleteWorkSpace.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DeleteWorkSpaceRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DeleteWorkSpaceResponse`
        def DeleteWorkSpace(request)
          body = send_request('DeleteWorkSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkSpaceResponse.new
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

        # 查询集群

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeClustersResponse`
        def DescribeClusters(request)
          body = send_request('DescribeClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClustersResponse.new
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

        # 查询作业配置列表，一次最多查询100个

        # @param request: Request instance for DescribeJobConfigs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeJobConfigsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeJobConfigsResponse`
        def DescribeJobConfigs(request)
          body = send_request('DescribeJobConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobConfigsResponse.new
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

        # 查找Savepoint列表

        # @param request: Request instance for DescribeJobSavepoint.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeJobSavepointRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeJobSavepointResponse`
        def DescribeJobSavepoint(request)
          body = send_request('DescribeJobSavepoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobSavepointResponse.new
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

        # 查询作业实例启动日志

        # @param request: Request instance for DescribeJobSubmissionLog.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeJobSubmissionLogRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeJobSubmissionLogResponse`
        def DescribeJobSubmissionLog(request)
          body = send_request('DescribeJobSubmissionLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobSubmissionLogResponse.new
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

        # 查询作业

        # @param request: Request instance for DescribeJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeJobsResponse`
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

        # 描述资源配置接口

        # @param request: Request instance for DescribeResourceConfigs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeResourceConfigsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeResourceConfigsResponse`
        def DescribeResourceConfigs(request)
          body = send_request('DescribeResourceConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceConfigsResponse.new
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

        # 获取资源关联作业信息

        # @param request: Request instance for DescribeResourceRelatedJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeResourceRelatedJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeResourceRelatedJobsResponse`
        def DescribeResourceRelatedJobs(request)
          body = send_request('DescribeResourceRelatedJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceRelatedJobsResponse.new
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

        # 描述资源接口

        # @param request: Request instance for DescribeResources.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeResourcesRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeResourcesResponse`
        def DescribeResources(request)
          body = send_request('DescribeResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesResponse.new
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

        # 描述系统资源接口

        # @param request: Request instance for DescribeSystemResources.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeSystemResourcesRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeSystemResourcesResponse`
        def DescribeSystemResources(request)
          body = send_request('DescribeSystemResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSystemResourcesResponse.new
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

        # 生成树状作业显示结构

        # @param request: Request instance for DescribeTreeJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeTreeJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeTreeJobsResponse`
        def DescribeTreeJobs(request)
          body = send_request('DescribeTreeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTreeJobsResponse.new
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

        # 查询树状结构资源列表

        # @param request: Request instance for DescribeTreeResources.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeTreeResourcesRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeTreeResourcesResponse`
        def DescribeTreeResources(request)
          body = send_request('DescribeTreeResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTreeResourcesResponse.new
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

        # 授权工作空间列表

        # @param request: Request instance for DescribeWorkSpaces.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::DescribeWorkSpacesRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::DescribeWorkSpacesResponse`
        def DescribeWorkSpaces(request)
          body = send_request('DescribeWorkSpaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkSpacesResponse.new
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

        # 查询Sql Gateway的Statement执行结果

        # @param request: Request instance for FetchSqlGatewayStatementResult.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::FetchSqlGatewayStatementResultRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::FetchSqlGatewayStatementResultResponse`
        def FetchSqlGatewayStatementResult(request)
          body = send_request('FetchSqlGatewayStatementResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchSqlGatewayStatementResultResponse.new
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

        # 自定义树状结构页面拖拽文件夹

        # @param request: Request instance for ModifyFolder.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::ModifyFolderRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::ModifyFolderResponse`
        def ModifyFolder(request)
          body = send_request('ModifyFolder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFolderResponse.new
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

        # 更新作业属性，仅允许以下3种操作，不支持组合操作：
        # (1)	更新作业名称
        # (2)	更新作业备注
        # (3)	更新作业最大并行度
        # 变更前提：WorkerCuNum<=MaxParallelism
        # 如果MaxParallelism变小，不重启作业，待下一次重启生效
        # 如果MaxParallelism变大，则要求入参RestartAllowed必须为True
        # 假设作业运行状态，则先停止作业，再启动作业，中间状态丢失
        # 假设作业暂停状态，则将作业更改为停止状态，中间状态丢失

        # @param request: Request instance for ModifyJob.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::ModifyJobRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::ModifyJobResponse`
        def ModifyJob(request)
          body = send_request('ModifyJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyJobResponse.new
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

        # 修改工作空间

        # @param request: Request instance for ModifyWorkSpace.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::ModifyWorkSpaceRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::ModifyWorkSpaceResponse`
        def ModifyWorkSpace(request)
          body = send_request('ModifyWorkSpace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkSpaceResponse.new
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

        # 批量启动或者恢复作业，批量操作数量上限20

        # @param request: Request instance for RunJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::RunJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::RunJobsResponse`
        def RunJobs(request)
          body = send_request('RunJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunJobsResponse.new
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

        # 通过Sql gateway执行satement

        # @param request: Request instance for RunSqlGatewayStatement.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::RunSqlGatewayStatementRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::RunSqlGatewayStatementResponse`
        def RunSqlGatewayStatement(request)
          body = send_request('RunSqlGatewayStatement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunSqlGatewayStatementResponse.new
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

        # 批量停止作业，批量操作数量上限为20

        # @param request: Request instance for StopJobs.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::StopJobsRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::StopJobsResponse`
        def StopJobs(request)
          body = send_request('StopJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopJobsResponse.new
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

        # 触发Savepoint

        # @param request: Request instance for TriggerJobSavepoint.
        # @type request: :class:`Tencentcloud::oceanus::V20190422::TriggerJobSavepointRequest`
        # @rtype: :class:`Tencentcloud::oceanus::V20190422::TriggerJobSavepointResponse`
        def TriggerJobSavepoint(request)
          body = send_request('TriggerJobSavepoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerJobSavepointResponse.new
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