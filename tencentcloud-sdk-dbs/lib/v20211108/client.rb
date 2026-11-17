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

        # 删除备份计划。

        # 仅已下线的备份计划支持删除，删除后不可恢复。已隔离（isolated）的备份计划请先调用 DestroyBackupPlanByUser 完成下线，再进行删除。调用接口后，若通过 DescribeBackupPlans 接口查询不到对应的备份计划，则表示删除成功。

        # @param request: Request instance for DeleteBackupPlan.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DeleteBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DeleteBackupPlanResponse`
        def DeleteBackupPlan(request)
          body = send_request('DeleteBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupPlanResponse.new
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

        # 查询备份计划详情。
        # 返回备份计划的基本信息、源库信息、备份对象、备份策略、备份进度和付费信息。

        # @param request: Request instance for DescribeBackupPlanDetail.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeBackupPlanDetailRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeBackupPlanDetailResponse`
        def DescribeBackupPlanDetail(request)
          body = send_request('DescribeBackupPlanDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupPlanDetailResponse.new
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

        # 查询全量备份集详情。

        # 返回全量备份集的基本信息、源库信息、备份对象、备份进度和加密信息。

        # @param request: Request instance for DescribeFullBackupSetDetail.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeFullBackupSetDetailRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeFullBackupSetDetailResponse`
        def DescribeFullBackupSetDetail(request)
          body = send_request('DescribeFullBackupSetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFullBackupSetDetailResponse.new
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

        # 查询增量备份集文件列表。

        # 文件按最后修改时间倒序返回，支持分页。

        # @param request: Request instance for DescribeIncrementBackupSetFiles.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeIncrementBackupSetFilesRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeIncrementBackupSetFilesResponse`
        def DescribeIncrementBackupSetFiles(request)
          body = send_request('DescribeIncrementBackupSetFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIncrementBackupSetFilesResponse.new
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

        # 本接口（DescribeIncrementBackupSets）用于查询增量备份集列表。

        # @param request: Request instance for DescribeIncrementBackupSets.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DescribeIncrementBackupSetsRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DescribeIncrementBackupSetsResponse`
        def DescribeIncrementBackupSets(request)
          body = send_request('DescribeIncrementBackupSets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIncrementBackupSetsResponse.new
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

        # 立即下线已隔离的备份计划。

        # 下线后备份计划不可恢复。调用接口后，若通过 DescribeBackupPlanDetail 接口查询到备份计划状态为 offlined，则表示下线成功。

        # @param request: Request instance for DestroyBackupPlanByUser.
        # @type request: :class:`Tencentcloud::dbs::V20211108::DestroyBackupPlanByUserRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::DestroyBackupPlanByUserResponse`
        def DestroyBackupPlanByUser(request)
          body = send_request('DestroyBackupPlanByUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyBackupPlanByUserResponse.new
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

        # 本接口（ModifyBackupPlanSourceInfo）用于修改备份计划的源实例信息、备份对象信息等。注意，调用该接口后，原有备份计划任务将立即停止，您可以在修改完源信息后重新启动备份任务。

        # @param request: Request instance for ModifyBackupPlanSourceInfo.
        # @type request: :class:`Tencentcloud::dbs::V20211108::ModifyBackupPlanSourceInfoRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::ModifyBackupPlanSourceInfoResponse`
        def ModifyBackupPlanSourceInfo(request)
          body = send_request('ModifyBackupPlanSourceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupPlanSourceInfoResponse.new
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

        # 恢复已暂停的备份计划。

        # 仅已暂停的备份计划支持恢复。调用接口后，若通过 DescribeBackupPlanDetail 接口查询到备份计划状态为 running，则表示恢复成功。

        # @param request: Request instance for ResumeBackupPlan.
        # @type request: :class:`Tencentcloud::dbs::V20211108::ResumeBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::ResumeBackupPlanResponse`
        def ResumeBackupPlan(request)
          body = send_request('ResumeBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeBackupPlanResponse.new
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

        # 暂停备份计划。

        # 仅运行中的备份计划支持暂停。调用接口后，若通过 DescribeBackupPlanDetail 接口查询到备份计划状态为 paused，则表示暂停成功。

        # @param request: Request instance for StopBackupPlan.
        # @type request: :class:`Tencentcloud::dbs::V20211108::StopBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::dbs::V20211108::StopBackupPlanResponse`
        def StopBackupPlan(request)
          body = send_request('StopBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopBackupPlanResponse.new
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