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

        # 本接口(ConfigureSubscribeJob)用于配置数据订阅实例。

        # @param request: Request instance for ConfigureSubscribeJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ConfigureSubscribeJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ConfigureSubscribeJobResponse`
        def ConfigureSubscribeJob(request)
          body = send_request('ConfigureSubscribeJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfigureSubscribeJobResponse.new
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

        # 恢复一个暂停中的迁移任务。

        # @param request: Request instance for ContinueMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ContinueMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ContinueMigrateJobResponse`
        def ContinueMigrateJob(request)
          body = send_request('ContinueMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ContinueMigrateJobResponse.new
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

        # 恢复处于已暂停状态的数据同步任务。

        # @param request: Request instance for ContinueSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ContinueSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ContinueSyncJobResponse`
        def ContinueSyncJob(request)
          body = send_request('ContinueSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ContinueSyncJobResponse.new
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

        # 为订阅实例创建消费者组

        # @param request: Request instance for CreateConsumerGroup.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateConsumerGroupResponse`
        def CreateConsumerGroup(request)
          body = send_request('CreateConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsumerGroupResponse.new
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

        # 在修改同步任务的配置后、通过该接口校验当前任务是否支持修改对象操作

        # @param request: Request instance for CreateModifyCheckSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateModifyCheckSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateModifyCheckSyncJobResponse`
        def CreateModifyCheckSyncJob(request)
          body = send_request('CreateModifyCheckSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModifyCheckSyncJobResponse.new
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

        # 本接口(CreateSubscribe)用于创建一个数据订阅任务。

        # @param request: Request instance for CreateSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateSubscribeResponse`
        def CreateSubscribe(request)
          body = send_request('CreateSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubscribeResponse.new
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

        # 本接口(CreateSubscribeCheckJob)用于创建一个订阅校验任务。任务必须已经成功调用ConfigureSubscribeJob接口配置了所有的必要信息才能启动校验。

        # @param request: Request instance for CreateSubscribeCheckJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::CreateSubscribeCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::CreateSubscribeCheckJobResponse`
        def CreateSubscribeCheckJob(request)
          body = send_request('CreateSubscribeCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubscribeCheckJobResponse.new
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

        # 删除一致性校验任务。当一致性校验任务状态为success、failed、canceled 时可以执行此操作。

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

        # 本接口(DeleteConsumerGroup)用于删除一个订阅任务的消费组。

        # @param request: Request instance for DeleteConsumerGroup.
        # @type request: :class:`Tencentcloud::dts::V20211206::DeleteConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DeleteConsumerGroupResponse`
        def DeleteConsumerGroup(request)
          body = send_request('DeleteConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConsumerGroupResponse.new
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

        # 查询同步校验任务结果，检查必要参数和周边配置

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

        # 本接口(DescribeConsumerGroups)用于获取订阅实例配置的消费者组详情。

        # @param request: Request instance for DescribeConsumerGroups.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeConsumerGroupsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeConsumerGroupsResponse`
        def DescribeConsumerGroups(request)
          body = send_request('DescribeConsumerGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerGroupsResponse.new
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

        # 在创建修改对象的校验任务后、通过该接口查看校验任务的结果

        # @param request: Request instance for DescribeModifyCheckSyncJobResult.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeModifyCheckSyncJobResultRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeModifyCheckSyncJobResultResponse`
        def DescribeModifyCheckSyncJobResult(request)
          body = send_request('DescribeModifyCheckSyncJobResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModifyCheckSyncJobResultResponse.new
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

        # 本接口(DescribeOffsetByTime)查询KafkaTopic中指定时间前最近的offset。
        # 接口输出的offset是离这个时间最近的offset。
        # 如果输入时间比当前时间晚的多，相当于输出的就是最新的offset；
        # 如果输入时间比当前时间早的多，相当于输出的就是最老的offset；
        # 如果输入空，默认0时间，也就是查询最老的offset。

        # @param request: Request instance for DescribeOffsetByTime.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeOffsetByTimeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeOffsetByTimeResponse`
        def DescribeOffsetByTime(request)
          body = send_request('DescribeOffsetByTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOffsetByTimeResponse.new
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

        # 本接口(DescribeSubscribeCheckJob)用于查询订阅校验任务结果。

        # @param request: Request instance for DescribeSubscribeCheckJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeCheckJobResponse`
        def DescribeSubscribeCheckJob(request)
          body = send_request('DescribeSubscribeCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscribeCheckJobResponse.new
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

        # 本接口(DescribeSubscribeDetail)获取数据订阅实例的配置信息。

        # @param request: Request instance for DescribeSubscribeDetail.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeDetailRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeDetailResponse`
        def DescribeSubscribeDetail(request)
          body = send_request('DescribeSubscribeDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscribeDetailResponse.new
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

        # 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条

        # @param request: Request instance for DescribeSubscribeJobs.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeJobsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeJobsResponse`
        def DescribeSubscribeJobs(request)
          body = send_request('DescribeSubscribeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscribeJobsResponse.new
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

        # 本接口(DescribeSubscribeReturnable)用于查询订阅任务是否可以销毁和退货。

        # @param request: Request instance for DescribeSubscribeReturnable.
        # @type request: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeReturnableRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DescribeSubscribeReturnableResponse`
        def DescribeSubscribeReturnable(request)
          body = send_request('DescribeSubscribeReturnable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscribeReturnableResponse.new
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

        # 本接口（DestroyIsolatedSubscribe）用于下线已隔离的数据订阅实例

        # @param request: Request instance for DestroyIsolatedSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20211206::DestroyIsolatedSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::DestroyIsolatedSubscribeResponse`
        def DestroyIsolatedSubscribe(request)
          body = send_request('DestroyIsolatedSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyIsolatedSubscribeResponse.new
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

        # 本接口（IsolateSubscribe）用于隔离订阅任务。调用后，订阅任务将不能使用。按量计费的任务会停止计费，包年包月的任务会自动退费

        # @param request: Request instance for IsolateSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20211206::IsolateSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::IsolateSubscribeResponse`
        def IsolateSubscribe(request)
          body = send_request('IsolateSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateSubscribeResponse.new
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

        # 本接口(ModifyConsumerGroupDescription)用于修改指定订阅消费组备注。

        # @param request: Request instance for ModifyConsumerGroupDescription.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyConsumerGroupDescriptionRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyConsumerGroupDescriptionResponse`
        def ModifyConsumerGroupDescription(request)
          body = send_request('ModifyConsumerGroupDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsumerGroupDescriptionResponse.new
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

        # 本接口(ModifyConsumerGroupPassword)用于修改指定订阅消费组密码。

        # @param request: Request instance for ModifyConsumerGroupPassword.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyConsumerGroupPasswordRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyConsumerGroupPasswordResponse`
        def ModifyConsumerGroupPassword(request)
          body = send_request('ModifyConsumerGroupPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsumerGroupPasswordResponse.new
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

        # 用户在发现迁移任务对用户的数据库的负载影响较大时、可通过该接口限制任务的传输速率

        # @param request: Request instance for ModifyMigrateRateLimit.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyMigrateRateLimitRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyMigrateRateLimitResponse`
        def ModifyMigrateRateLimit(request)
          body = send_request('ModifyMigrateRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrateRateLimitResponse.new
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

        # 修改任务运行时属性，此接口不同于配置类接口，不会进行状态机判断。

        # @param request: Request instance for ModifyMigrateRuntimeAttribute.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifyMigrateRuntimeAttributeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifyMigrateRuntimeAttributeResponse`
        def ModifyMigrateRuntimeAttribute(request)
          body = send_request('ModifyMigrateRuntimeAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrateRuntimeAttributeResponse.new
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

        # 修改订阅实例自动续费标识。只有包年包月的任务修改才有意义，按量计费任务修改后无影响。

        # @param request: Request instance for ModifySubscribeAutoRenewFlag.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifySubscribeAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifySubscribeAutoRenewFlagResponse`
        def ModifySubscribeAutoRenewFlag(request)
          body = send_request('ModifySubscribeAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscribeAutoRenewFlagResponse.new
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

        # 本接口(ModifySubscribeName)用于修改数据订阅实例的名称

        # @param request: Request instance for ModifySubscribeName.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifySubscribeNameRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifySubscribeNameResponse`
        def ModifySubscribeName(request)
          body = send_request('ModifySubscribeName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscribeNameResponse.new
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

        # 本接口(ModifySubscribeObjects)用于修改数据订阅对象和kafka分区规则，如果是mongo订阅，还可以修改输出聚合规则。

        # @param request: Request instance for ModifySubscribeObjects.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifySubscribeObjectsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifySubscribeObjectsResponse`
        def ModifySubscribeObjects(request)
          body = send_request('ModifySubscribeObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscribeObjectsResponse.new
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

        # 该接口支持在同步任务启动后修改任务的配置
        # 修改同步配置的完整流程：修改同步任务配置->创建修改同步任务配置的校验任务->查询修改配置的校验任务的结果->启动修改配置任务

        # @param request: Request instance for ModifySyncJobConfig.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifySyncJobConfigRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifySyncJobConfigResponse`
        def ModifySyncJobConfig(request)
          body = send_request('ModifySyncJobConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySyncJobConfigResponse.new
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

        # 用户在发现同步任务对用户的数据库的负载影响较大时、可通过该接口限制任务的传输速率

        # @param request: Request instance for ModifySyncRateLimit.
        # @type request: :class:`Tencentcloud::dts::V20211206::ModifySyncRateLimitRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ModifySyncRateLimitResponse`
        def ModifySyncRateLimit(request)
          body = send_request('ModifySyncRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySyncRateLimitResponse.new
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

        # 暂停一个迁移任务。

        # @param request: Request instance for PauseMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::PauseMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::PauseMigrateJobResponse`
        def PauseMigrateJob(request)
          body = send_request('PauseMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseMigrateJobResponse.new
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

        # 暂停处于同步中的数据同步任务。

        # @param request: Request instance for PauseSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::PauseSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::PauseSyncJobResponse`
        def PauseSyncJob(request)
          body = send_request('PauseSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseSyncJobResponse.new
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

        # 本接口(ResetConsumerGroupOffset)用于重置订阅消费组的offset。调用DescribeConsumerGroups接口查询消费组状态，只有消费组状态为 Dead 或 Empty 才可以执行重置该操作。否则重置不会生效，接口也不会报错。

        # @param request: Request instance for ResetConsumerGroupOffset.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResetConsumerGroupOffsetRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResetConsumerGroupOffsetResponse`
        def ResetConsumerGroupOffset(request)
          body = send_request('ResetConsumerGroupOffset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetConsumerGroupOffsetResponse.new
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

        # 本接口(ResetSubscribe)用于重置订阅实例，重置后，可以重新配置订阅任务。
        # 可以调用 DescribeSubscribeDetail 查询订阅信息判断是否置成功。当SubsStatus变为notStarted时，表示重置成功。

        # @param request: Request instance for ResetSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResetSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResetSubscribeResponse`
        def ResetSubscribe(request)
          body = send_request('ResetSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetSubscribeResponse.new
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

        # 重置已经结束的同步任务，重置后可以重新配置启动任务。

        # @param request: Request instance for ResetSyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResetSyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResetSyncJobResponse`
        def ResetSyncJob(request)
          body = send_request('ResetSyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetSyncJobResponse.new
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

        # 本接口(ResumeSubscribe) 用于恢复报错的订阅任务。当订阅任务的状态为error时，可通过本接口尝试对任务进行恢复。

        # @param request: Request instance for ResumeSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20211206::ResumeSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::ResumeSubscribeResponse`
        def ResumeSubscribe(request)
          body = send_request('ResumeSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeSubscribeResponse.new
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

        # 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。

        # @param request: Request instance for SkipCheckItem.
        # @type request: :class:`Tencentcloud::dts::V20211206::SkipCheckItemRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::SkipCheckItemResponse`
        def SkipCheckItem(request)
          body = send_request('SkipCheckItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SkipCheckItemResponse.new
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

        # 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。

        # @param request: Request instance for SkipSyncCheckItem.
        # @type request: :class:`Tencentcloud::dts::V20211206::SkipSyncCheckItemRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::SkipSyncCheckItemResponse`
        def SkipSyncCheckItem(request)
          body = send_request('SkipSyncCheckItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SkipSyncCheckItemResponse.new
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

        # 在查询修改对象的校验任务的结果中的status为success后、通过该接口开始修改配置流程

        # @param request: Request instance for StartModifySyncJob.
        # @type request: :class:`Tencentcloud::dts::V20211206::StartModifySyncJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StartModifySyncJobResponse`
        def StartModifySyncJob(request)
          body = send_request('StartModifySyncJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartModifySyncJobResponse.new
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

        # 本接口(StartSubscribe)用于启动一个kafka版本的数据订阅实例。只有当订阅任务的状态为checkPass时，才能调用本接口。

        # @param request: Request instance for StartSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20211206::StartSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20211206::StartSubscribeResponse`
        def StartSubscribe(request)
          body = send_request('StartSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartSubscribeResponse.new
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

        # 结束同步任务，操作后可通过查询同步任务信息接口DescribeSyncJobs，获取操作后的状态。

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