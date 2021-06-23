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


      end
    end
  end
end