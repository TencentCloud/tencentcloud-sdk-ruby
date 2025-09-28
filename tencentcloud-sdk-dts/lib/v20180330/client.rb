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
    module V20180330
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-30'
            api_endpoint = 'dts.tencentcloudapi.com'
            sdk_version = 'DTS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口用于配置数据订阅，只有在未配置状态的订阅实例才能调用此接口。

        # @param request: Request instance for ActivateSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20180330::ActivateSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ActivateSubscribeResponse`
        def ActivateSubscribe(request)
          body = send_request('ActivateSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CompleteMigrateJob）用于完成数据迁移任务。
        # 选择采用增量迁移方式的任务, 需要在迁移进度进入准备完成阶段后, 调用本接口, 停止迁移增量数据。
        # 通过DescribeMigrateJobs接口查询到任务的状态为准备完成（status=8）时，此时可以调用本接口完成迁移任务。

        # @param request: Request instance for CompleteMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::CompleteMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::CompleteMigrateJobResponse`
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

        # 创建校验迁移任务
        # 在开始迁移前, 必须调用本接口创建校验, 且校验成功后才能开始迁移. 校验的结果可以通过DescribeMigrateCheckJob查看.
        # 校验成功后,迁移任务若有修改, 则必须重新创建校验并通过后, 才能开始迁移.

        # 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com

        # @param request: Request instance for CreateMigrateCheckJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::CreateMigrateCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::CreateMigrateCheckJobResponse`
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

        # 本接口（CreateMigrateJob）用于创建数据迁移任务。

        # 如果是金融区链路, 请使用域名: dts.ap-shenzhen-fsi.tencentcloudapi.com

        # @param request: Request instance for CreateMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::CreateMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::CreateMigrateJobResponse`
        def CreateMigrateJob(request)
          body = send_request('CreateMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMigrateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateSubscribe)用于创建一个数据订阅实例。

        # @param request: Request instance for CreateSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20180330::CreateSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::CreateSubscribeResponse`
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

        # 本接口（DeleteMigrationJob）用于删除数据迁移任务。当通过DescribeMigrateJobs接口查询到任务的状态为：检验中（status=3）、运行中（status=7）、准备完成（status=8）、撤销中（status=11）或者完成中（status=12）时，不允许删除任务。

        # @param request: Request instance for DeleteMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::DeleteMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::DeleteMigrateJobResponse`
        def DeleteMigrateJob(request)
          body = send_request('DeleteMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMigrateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAsyncRequestInfo）用于查询任务执行结果

        # @param request: Request instance for DescribeAsyncRequestInfo.
        # @type request: :class:`Tencentcloud::dts::V20180330::DescribeAsyncRequestInfoRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::DescribeAsyncRequestInfoResponse`
        def DescribeAsyncRequestInfo(request)
          body = send_request('DescribeAsyncRequestInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAsyncRequestInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # 若未通过校验, 则能查询到校验失败的原因. 请按照报错, 通过'ModifyMigrateJob'修改迁移配置或是调整源/目标实例的相关参数.

        # @param request: Request instance for DescribeMigrateCheckJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::DescribeMigrateCheckJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::DescribeMigrateCheckJobResponse`
        def DescribeMigrateCheckJob(request)
          body = send_request('DescribeMigrateCheckJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrateCheckJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据迁移任务.
        # 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com

        # @param request: Request instance for DescribeMigrateJobs.
        # @type request: :class:`Tencentcloud::dts::V20180330::DescribeMigrateJobsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::DescribeMigrateJobsResponse`
        def DescribeMigrateJobs(request)
          body = send_request('DescribeMigrateJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrateJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSubscribeConf）用于查询订阅实例配置

        # @param request: Request instance for DescribeSubscribeConf.
        # @type request: :class:`Tencentcloud::dts::V20180330::DescribeSubscribeConfRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::DescribeSubscribeConfResponse`
        def DescribeSubscribeConf(request)
          body = send_request('DescribeSubscribeConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscribeConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeSubscribes.
        # @type request: :class:`Tencentcloud::dts::V20180330::DescribeSubscribesRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::DescribeSubscribesResponse`
        def DescribeSubscribes(request)
          body = send_request('DescribeSubscribes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubscribesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（IsolateSubscribe）用于隔离小时计费的订阅实例。调用后，订阅实例将不能使用，同时停止计费。

        # @param request: Request instance for IsolateSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20180330::IsolateSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::IsolateSubscribeResponse`
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

        # 本接口（ModifyMigrateJob）用于修改数据迁移任务。
        # 当迁移任务处于下述状态时，允许调用本接口修改迁移任务：迁移创建中（status=1）、 校验成功(status=4)、校验失败(status=5)、迁移失败(status=10)。但源实例、目标实例类型和目标实例地域不允许修改。

        # 如果是金融区链路, 请使用域名: dts.ap-shenzhen-fsi.tencentcloudapi.com

        # @param request: Request instance for ModifyMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::ModifyMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ModifyMigrateJobResponse`
        def ModifyMigrateJob(request)
          body = send_request('ModifyMigrateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改订阅实例自动续费标识

        # @param request: Request instance for ModifySubscribeAutoRenewFlag.
        # @type request: :class:`Tencentcloud::dts::V20180330::ModifySubscribeAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ModifySubscribeAutoRenewFlagResponse`
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

        # 本接口(ModifySubscribeConsumeTime)用于修改数据订阅通道的消费时间点

        # @param request: Request instance for ModifySubscribeConsumeTime.
        # @type request: :class:`Tencentcloud::dts::V20180330::ModifySubscribeConsumeTimeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ModifySubscribeConsumeTimeResponse`
        def ModifySubscribeConsumeTime(request)
          body = send_request('ModifySubscribeConsumeTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscribeConsumeTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::dts::V20180330::ModifySubscribeNameRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ModifySubscribeNameResponse`
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

        # 本接口(ModifySubscribeObjects)用于修改数据订阅通道的订阅规则

        # @param request: Request instance for ModifySubscribeObjects.
        # @type request: :class:`Tencentcloud::dts::V20180330::ModifySubscribeObjectsRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ModifySubscribeObjectsResponse`
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

        # 本接口(ModifySubscribeVipVport)用于修改数据订阅实例的IP和端口号

        # @param request: Request instance for ModifySubscribeVipVport.
        # @type request: :class:`Tencentcloud::dts::V20180330::ModifySubscribeVipVportRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ModifySubscribeVipVportResponse`
        def ModifySubscribeVipVport(request)
          body = send_request('ModifySubscribeVipVport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubscribeVipVportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OfflineIsolatedSubscribe）用于下线已隔离的数据订阅实例

        # @param request: Request instance for OfflineIsolatedSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20180330::OfflineIsolatedSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::OfflineIsolatedSubscribeResponse`
        def OfflineIsolatedSubscribe(request)
          body = send_request('OfflineIsolatedSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineIsolatedSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ResetSubscribe)用于重置数据订阅实例，已经激活的数据订阅实例，重置后可以使用ActivateSubscribe接口绑定其他的数据库实例

        # @param request: Request instance for ResetSubscribe.
        # @type request: :class:`Tencentcloud::dts::V20180330::ResetSubscribeRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::ResetSubscribeResponse`
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

        # 本接口（StartMigrateJob）用于启动迁移任务。非定时迁移任务会在调用后立即开始迁移，定时任务则会开始倒计时。
        # 调用此接口前，请务必先使用CreateMigrateCheckJob校验数据迁移任务，并通过DescribeMigrateJobs接口查询到任务状态为校验通过（status=4）时，才能启动数据迁移任务。

        # @param request: Request instance for StartMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::StartMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::StartMigrateJobResponse`
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

        # 本接口（StopMigrateJob）用于撤销数据迁移任务。
        # 在迁移过程中允许调用该接口撤销迁移, 撤销迁移的任务会失败。通过DescribeMigrateJobs接口查询到任务状态为运行中（status=7）或准备完成（status=8）时，才能撤销数据迁移任务。

        # @param request: Request instance for StopMigrateJob.
        # @type request: :class:`Tencentcloud::dts::V20180330::StopMigrateJobRequest`
        # @rtype: :class:`Tencentcloud::dts::V20180330::StopMigrateJobResponse`
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


      end
    end
  end
end