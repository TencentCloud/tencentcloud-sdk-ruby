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
  module Dts
    module V20211206
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-12-06'
            api_endpoint = 'dts.tencentcloudapi.com'
            sdk_version = 'DTS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（CompleteMigrateJob）用于完成数据迁移任务。
        # 选择采用增量迁移方式的任务, 需要在迁移进度进入准备完成阶段后, 调用本接口, 停止迁移增量数据。
        # 通过DescribeMigrationJobs接口查询到任务的状态为准备完成（Status="readyComplete"）时，此时可以调用本接口完成迁移任务。

        # @param request: Request instance for CompleteMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::CompleteMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CompleteMigrateJobResponse`
        def CompleteMigrateJob(request)
          body = send_request('CompleteMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CompleteMigrateJobResponse.new
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

        # 配置一个同步任务

        # @param request: Request instance for ConfigureSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ConfigureSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ConfigureSyncJobResponse`
        def ConfigureSyncJob(request)
          body = send_request('ConfigureSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfigureSyncJobResponse.new
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

        # 校验同步任务，检查必要参数和周边配置。

        # @param request: Request instance for CreateCheckSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateCheckSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateCheckSyncJobResponse`
        def CreateCheckSyncJob(request)
          body = send_request('CreateCheckSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCheckSyncJobResponse.new
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

        # 本接口用于创建数据对比任务，创建成功后会返回数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9，创建成功后可通过StartCompare启动一致性校验任务

        # @param request: Request instance for CreateCompareTask.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateCompareTaskRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateCompareTaskResponse`
        def CreateCompareTask(request)
          body = send_request('CreateCompareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCompareTaskResponse.new
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

        # 校验迁移任务，
        # 在开始迁移前, 必须调用本接口创建校验迁移任务, 且校验成功后才能开始迁移. 校验的结果可以通过DescribeMigrationCheckJob查看，
        # 校验成功后,迁移任务若有修改, 则必须重新校验并通过后, 才能开始迁移

        # @param request: Request instance for CreateMigrateCheckJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateMigrateCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateMigrateCheckJobResponse`
        def CreateMigrateCheckJob(request)
          body = send_request('CreateMigrateCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMigrateCheckJobResponse.new
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

        # 购买迁移任务。购买成功后会返回随机生成的迁移任务id列表，也可以通过查询迁移任务任务列表接口`DescribeMigrationJobs`看到购买成功的实例Id。注意，一旦购买成功后源及目标数据库类型，源及目标实例地域不可修改。

        # @param request: Request instance for CreateMigrationService.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateMigrationServiceRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateMigrationServiceResponse`
        def CreateMigrationService(request)
          body = send_request('CreateMigrationService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMigrationServiceResponse.new
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

        # 创建一个同步任务

        # @param request: Request instance for CreateSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateSyncJobResponse`
        def CreateSyncJob(request)
          body = send_request('CreateSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSyncJobResponse.new
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

        # 删除一致性校验任务

        # @param request: Request instance for DeleteCompareTask.
        # @type request: :class:`Tencentcloud::dts::V20211206::DeleteCompareTaskRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DeleteCompareTaskResponse`
        def DeleteCompareTask(request)
          body = send_request('DeleteCompareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCompareTaskResponse.new
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

        # 查询同步校验任务结果

        # @param request: Request instance for DescribeCheckSyncJobResult.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeCheckSyncJobResultRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeCheckSyncJobResultResponse`
        def DescribeCheckSyncJobResult(request)
          body = send_request('DescribeCheckSyncJobResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckSyncJobResultResponse.new
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

        # 查询一致性校验任务详情

        # @param request: Request instance for DescribeCompareReport.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeCompareReportRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeCompareReportResponse`
        def DescribeCompareReport(request)
          body = send_request('DescribeCompareReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompareReportResponse.new
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

        # 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。

        # @param request: Request instance for DescribeCompareTasks.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeCompareTasksRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeCompareTasksResponse`
        def DescribeCompareTasks(request)
          body = send_request('DescribeCompareTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompareTasksResponse.new
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

        # 本接口用于查询支持迁移的云数据库实例

        # @param request: Request instance for DescribeMigrateDBInstances.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeMigrateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeMigrateDBInstancesResponse`
        def DescribeMigrateDBInstances(request)
          body = send_request('DescribeMigrateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrateDBInstancesResponse.new
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

        # 本接口用于创建校验后,获取校验的结果. 能查询到当前校验的状态和进度.
        # 若通过校验, 则可调用'StartMigrateJob' 开始迁移.
        # 若未通过校验, 则能查询到校验失败的原因. 请按照报错, 通过'ModifyMigrationJob'修改迁移配置或是调整源/目标实例的相关参数.

        # @param request: Request instance for DescribeMigrationCheckJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeMigrationCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeMigrationCheckJobResponse`
        def DescribeMigrationCheckJob(request)
          body = send_request('DescribeMigrationCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationCheckJobResponse.new
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

        # 查询某个迁移任务详情

        # @param request: Request instance for DescribeMigrationDetail.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeMigrationDetailRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeMigrationDetailResponse`
        def DescribeMigrationDetail(request)
          body = send_request('DescribeMigrationDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationDetailResponse.new
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

        # 查询数据迁移任务列表

        # @param request: Request instance for DescribeMigrationJobs.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeMigrationJobsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeMigrationJobsResponse`
        def DescribeMigrationJobs(request)
          body = send_request('DescribeMigrationJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationJobsResponse.new
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

        # 查询同步任务信息

        # @param request: Request instance for DescribeSyncJobs.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeSyncJobsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeSyncJobsResponse`
        def DescribeSyncJobs(request)
          body = send_request('DescribeSyncJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSyncJobsResponse.new
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

        # 下线数据迁移任务。计费任务必须先调用隔离(IsolateMigrateJob)接口，且只有是**已隔离**状态下，才能调用此接口销毁任务。对于不计费任务，调用隔离(IsolateMigrateJob)接口删除任务操作。

        # @param request: Request instance for DestroyMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::DestroyMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DestroyMigrateJobResponse`
        def DestroyMigrateJob(request)
          body = send_request('DestroyMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyMigrateJobResponse.new
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

        # 下线同步任务，任务在已隔离状态下可以通过此操作进行任务下线，即彻底删除任务。下线操作后可通过查询同步任务信息接口DescribeSyncJobs获取任务列表查看状态，此操作成功后无法看到此任务表示下线成功。

        # @param request: Request instance for DestroySyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::DestroySyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DestroySyncJobResponse`
        def DestroySyncJob(request)
          body = send_request('DestroySyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroySyncJobResponse.new
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

        #  隔离退还数据迁移服务。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。对于计费任务，在任务隔离后可进行解除隔离(RecoverMigrationJob)操作或直接进行下线销毁(DestroyMigrateJob)操作。对于不计费任务，调用此接口会直接销毁任务，无法进行恢复操作。

        # @param request: Request instance for IsolateMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::IsolateMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::IsolateMigrateJobResponse`
        def IsolateMigrateJob(request)
          body = send_request('IsolateMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateMigrateJobResponse.new
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

        # 隔离同步任务，隔离后可通过查询同步任务信息接口DescribeSyncJobs获取隔离后状态。在任务隔离后可进行解除隔离(RecoverSyncJob)操作或直接进行下线操作。对于不计费任务，调用此接口后会直接删除任务，无法进行恢复操作。

        # @param request: Request instance for IsolateSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::IsolateSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::IsolateSyncJobResponse`
        def IsolateSyncJob(request)
          body = send_request('IsolateSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateSyncJobResponse.new
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

        # 修改一致性校验任务，在任务创建后启动之前，可修改一致性校验参数

        # @param request: Request instance for ModifyCompareTask.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyCompareTaskRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyCompareTaskResponse`
        def ModifyCompareTask(request)
          body = send_request('ModifyCompareTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCompareTaskResponse.new
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

        # 修改一致性校验任务名称

        # @param request: Request instance for ModifyCompareTaskName.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyCompareTaskNameRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyCompareTaskNameResponse`
        def ModifyCompareTaskName(request)
          body = send_request('ModifyCompareTaskName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCompareTaskNameResponse.new
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

        # 调整实例规格，此接口只支持按量计费任务的调整。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。

        # @param request: Request instance for ModifyMigrateJobSpec.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyMigrateJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyMigrateJobSpecResponse`
        def ModifyMigrateJobSpec(request)
          body = send_request('ModifyMigrateJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrateJobSpecResponse.new
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

        # 修改迁移任务名

        # @param request: Request instance for ModifyMigrateName.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyMigrateNameRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyMigrateNameResponse`
        def ModifyMigrateName(request)
          body = send_request('ModifyMigrateName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrateNameResponse.new
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

        # 配置迁移服务，配置成功后可通过`CreateMigrationCheckJob` 创建迁移校验任务接口发起校验任务，只有校验通过才能启动迁移任务。

        # @param request: Request instance for ModifyMigrationJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyMigrationJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyMigrationJobResponse`
        def ModifyMigrationJob(request)
          body = send_request('ModifyMigrationJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrationJobResponse.new
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

        # 解除隔离数据迁移任务，用户手动发起隔离后的手动解隔离，只有任务状态为已隔离(手动操作)状态下才能触发此操作。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。

        # @param request: Request instance for RecoverMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::RecoverMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::RecoverMigrateJobResponse`
        def RecoverMigrateJob(request)
          body = send_request('RecoverMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverMigrateJobResponse.new
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

        # 解除隔离同步任务，任务在已隔离状态下可调用该接口解除隔离状态任务，同时可通过查询同步任务信息接口DescribeSyncJobs，获取操作后状态。

        # @param request: Request instance for RecoverSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::RecoverSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::RecoverSyncJobResponse`
        def RecoverSyncJob(request)
          body = send_request('RecoverSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverSyncJobResponse.new
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

        # 调整同步任务规格，此接口只支持按量计费任务的调整，调用此接口后不会立即生效，后台调整时间大概为3~5分钟。调用此接口后可通过查询同步任务信息接口DescribeSyncJobs，获取变配后的状态。

        # @param request: Request instance for ResizeSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResizeSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResizeSyncJobResponse`
        def ResizeSyncJob(request)
          body = send_request('ResizeSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResizeSyncJobResponse.new
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

        # 重试数据迁移任务，针对异常情况可进行重试，对于redis在失败时也可重试。注意：此操作跳过校验阶段，直接重新发起任务，相当于从StartMigrationJob开始执行。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。

        # @param request: Request instance for ResumeMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResumeMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResumeMigrateJobResponse`
        def ResumeMigrateJob(request)
          body = send_request('ResumeMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeMigrateJobResponse.new
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

        # 重试同步任务，部分可恢复报错情况下，可通过该接口重试同步任务，可通过查询同步任务信息接口DescribeSyncJobs，获取操作后状态。

        # @param request: Request instance for ResumeSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResumeSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResumeSyncJobResponse`
        def ResumeSyncJob(request)
          body = send_request('ResumeSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeSyncJobResponse.new
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

        # 启动一致性校验任务，启动之前需要先通过接口`CreateCompareTask` 创建一致性校验任务，启动后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态

        # @param request: Request instance for StartCompare.
        # @type request: :class:`Tencentcloud::dts::V20211206::StartCompareRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StartCompareResponse`
        def StartCompare(request)
          body = send_request('StartCompare', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartCompareResponse.new
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

        # 本接口（StartMigrationJob）用于启动迁移任务。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。

        # @param request: Request instance for StartMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::StartMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StartMigrateJobResponse`
        def StartMigrateJob(request)
          body = send_request('StartMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMigrateJobResponse.new
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

        # 启动同步任务

        # @param request: Request instance for StartSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::StartSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StartSyncJobResponse`
        def StartSyncJob(request)
          body = send_request('StartSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartSyncJobResponse.new
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

        # 终止一致性校验任务

        # @param request: Request instance for StopCompare.
        # @type request: :class:`Tencentcloud::dts::V20211206::StopCompareRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StopCompareResponse`
        def StopCompare(request)
          body = send_request('StopCompare', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopCompareResponse.new
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

        # 本接口（StopMigrateJob）用于终止数据迁移任务。
        # 调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。

        # @param request: Request instance for StopMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::StopMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StopMigrateJobResponse`
        def StopMigrateJob(request)
          body = send_request('StopMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMigrateJobResponse.new
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

        # 终止同步任务

        # @param request: Request instance for StopSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::StopSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StopSyncJobResponse`
        def StopSyncJob(request)
          body = send_request('StopSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopSyncJobResponse.new
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