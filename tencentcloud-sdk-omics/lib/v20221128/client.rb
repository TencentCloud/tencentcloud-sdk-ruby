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

        # 查询表格。

        # @param request: Request instance for DescribeTables.
        # @type request: :class:`Tencentcloud::omics::V20221128::DescribeTablesRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::DescribeTablesResponse`
        def DescribeTables(request)
          body = send_request('DescribeTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesResponse.new
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

        # 查询表格行数据。

        # @param request: Request instance for DescribeTablesRows.
        # @type request: :class:`Tencentcloud::omics::V20221128::DescribeTablesRowsRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::DescribeTablesRowsResponse`
        def DescribeTablesRows(request)
          body = send_request('DescribeTablesRows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesRowsResponse.new
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

        # 获取任务详情文件。

        # @param request: Request instance for GetRunMetadataFile.
        # @type request: :class:`Tencentcloud::omics::V20221128::GetRunMetadataFileRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::GetRunMetadataFileResponse`
        def GetRunMetadataFile(request)
          body = send_request('GetRunMetadataFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRunMetadataFileResponse.new
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

        # 重试任务。

        # @param request: Request instance for RetryRuns.
        # @type request: :class:`Tencentcloud::omics::V20221128::RetryRunsRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::RetryRunsResponse`
        def RetryRuns(request)
          body = send_request('RetryRuns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryRunsResponse.new
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

        # 运行工作流。

        # @param request: Request instance for RunWorkflow.
        # @type request: :class:`Tencentcloud::omics::V20221128::RunWorkflowRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::RunWorkflowResponse`
        def RunWorkflow(request)
          body = send_request('RunWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunWorkflowResponse.new
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

        # 终止任务批次。

        # @param request: Request instance for TerminateRunGroup.
        # @type request: :class:`Tencentcloud::omics::V20221128::TerminateRunGroupRequest`
        # @rtype: :class:`Tencentcloud::omics::V20221128::TerminateRunGroupResponse`
        def TerminateRunGroup(request)
          body = send_request('TerminateRunGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateRunGroupResponse.new
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