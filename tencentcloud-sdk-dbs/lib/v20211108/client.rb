# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Dbs
    module V20211108
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-11-08'
            api_endpoint = 'dbs.tencentcloudapi.com'
            sdk_version = 'DBS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（ConfigureBackupPlan）用于配置备份计划。包括配置备份源实例信息、备份对象以及备份策略等。

        # @param request: Request instance for ConfigureBackupPlan.
        # @type request: :class:`Tencentcloud::dbs::V20211108::ConfigureBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::ConfigureBackupPlanResponse`
        def ConfigureBackupPlan(request)
          body = send_request('ConfigureBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfigureBackupPlanResponse.new
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

        # 该接口用于创建备份计划。

        # @param request: Request instance for CreateBackupPlan.
        # @type request: :class:`Tencentcloud::dbs::V20211108::CreateBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::CreateBackupPlanResponse`
        def CreateBackupPlan(request)
          body = send_request('CreateBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupPlanResponse.new
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

        # 该接口用于创建连通性检测任务，请在创建备份计划前，通过该接口来检测你的源端实例是否连通性正常。

        # @param request: Request instance for CreateConnectTestJob.
        # @type request: :class:`Tencentcloud::dbs::V20211108::CreateConnectTestJobRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::CreateConnectTestJobResponse`
        def CreateConnectTestJob(request)
          body = send_request('CreateConnectTestJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConnectTestJobResponse.new
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

        # 本接口（DescribeBackupCheckJob）用于查询备份计划预校验任务的结果。仅对于预校验通过的任务，才能启动备份计划。

        # @param request: Request instance for DescribeBackupCheckJob.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeBackupCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeBackupCheckJobResponse`
        def DescribeBackupCheckJob(request)
          body = send_request('DescribeBackupCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupCheckJobResponse.new
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

        # 本接口（DescribeBackupPlans）用于查询备份计划列表。

        # @param request: Request instance for DescribeBackupPlans.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeBackupPlansResponse`
        def DescribeBackupPlans(request)
          body = send_request('DescribeBackupPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupPlansResponse.new
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

        # 该接口用于查询连通性检测任务的结果

        # @param request: Request instance for DescribeConnectTestResult.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeConnectTestResultRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeConnectTestResultResponse`
        def DescribeConnectTestResult(request)
          body = send_request('DescribeConnectTestResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConnectTestResultResponse.new
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

        # 本接口（StartBackupCheckJob）用于创建备份计划预校验任务。

        # @param request: Request instance for StartBackupCheckJob.
        # @type request: :class:`Tencentcloud::dbs::V20211108::StartBackupCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::StartBackupCheckJobResponse`
        def StartBackupCheckJob(request)
          body = send_request('StartBackupCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartBackupCheckJobResponse.new
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

        # 本接口（StartBackupPlan）用于启动备份计划。调用此接口前，请务必先使用 StartBackupCheckJob 创建备份计划预校验任务，并通过 DescribeBackupCheckJob 接口查询到任务状态为校验通过时，才能启动备份计划。

        # @param request: Request instance for StartBackupPlan.
        # @type request: :class:`Tencentcloud::dbs::V20211108::StartBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::StartBackupPlanResponse`
        def StartBackupPlan(request)
          body = send_request('StartBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartBackupPlanResponse.new
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