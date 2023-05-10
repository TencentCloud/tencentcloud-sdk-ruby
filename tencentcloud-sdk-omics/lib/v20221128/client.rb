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
  module Omics
    module V20221128
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-11-28'
            api_endpoint = 'omics.tencentcloudapi.com'
            sdk_version = 'OMICS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建组学平台计算环境。

        # @param request: Request instance for CreateEnvironment.
        # @type request: :class:`Tencentcloud::omics::V20221128::CreateEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::CreateEnvironmentResponse`
        def CreateEnvironment(request)
          body = send_request('CreateEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnvironmentResponse.new
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

        # 删除环境。

        # @param request: Request instance for DeleteEnvironment.
        # @type request: :class:`Tencentcloud::omics::V20221128::DeleteEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::DeleteEnvironmentResponse`
        def DeleteEnvironment(request)
          body = send_request('DeleteEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEnvironmentResponse.new
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

        # 查询环境列表。

        # @param request: Request instance for DescribeEnvironments.
        # @type request: :class:`Tencentcloud::omics::V20221128::DescribeEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::DescribeEnvironmentsResponse`
        def DescribeEnvironments(request)
          body = send_request('DescribeEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentsResponse.new
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

        # 查询任务批次列表。

        # @param request: Request instance for DescribeRunGroups.
        # @type request: :class:`Tencentcloud::omics::V20221128::DescribeRunGroupsRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::DescribeRunGroupsResponse`
        def DescribeRunGroups(request)
          body = send_request('DescribeRunGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRunGroupsResponse.new
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

        # 查询任务列表。

        # @param request: Request instance for DescribeRuns.
        # @type request: :class:`Tencentcloud::omics::V20221128::DescribeRunsRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::DescribeRunsResponse`
        def DescribeRuns(request)
          body = send_request('DescribeRuns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRunsResponse.new
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

        # 查询作业详情。

        # @param request: Request instance for GetRunCalls.
        # @type request: :class:`Tencentcloud::omics::V20221128::GetRunCallsRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::GetRunCallsResponse`
        def GetRunCalls(request)
          body = send_request('GetRunCalls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRunCallsResponse.new
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

        # 查询任务详情。

        # @param request: Request instance for GetRunStatus.
        # @type request: :class:`Tencentcloud::omics::V20221128::GetRunStatusRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::GetRunStatusResponse`
        def GetRunStatus(request)
          body = send_request('GetRunStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRunStatusResponse.new
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

        # 导入表格文件。

        # @param request: Request instance for ImportTableFile.
        # @type request: :class:`Tencentcloud::omics::V20221128::ImportTableFileRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::ImportTableFileResponse`
        def ImportTableFile(request)
          body = send_request('ImportTableFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportTableFileResponse.new
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

        # 运行应用。

        # @param request: Request instance for RunApplication.
        # @type request: :class:`Tencentcloud::omics::V20221128::RunApplicationRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::RunApplicationResponse`
        def RunApplication(request)
          body = send_request('RunApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunApplicationResponse.new
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