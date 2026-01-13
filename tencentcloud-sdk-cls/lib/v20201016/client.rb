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
  module Cls
    module V20201016
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-10-16'
            api_endpoint = 'cls.tencentcloudapi.com'
            sdk_version = 'CLS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 用于添加机器组信息

        # @param request: Request instance for AddMachineGroupInfo.
        # @type request: :class:`Tencentcloud::cls::V20201016::AddMachineGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::AddMachineGroupInfoResponse`
        def AddMachineGroupInfo(request)
          body = send_request('AddMachineGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddMachineGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 应用采集配置到指定机器组

        # @param request: Request instance for ApplyConfigToMachineGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::ApplyConfigToMachineGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ApplyConfigToMachineGroupResponse`
        def ApplyConfigToMachineGroup(request)
          body = send_request('ApplyConfigToMachineGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyConfigToMachineGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于数据加工DSL函数的语法校验。

        # @param request: Request instance for CheckFunction.
        # @type request: :class:`Tencentcloud::cls::V20201016::CheckFunctionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CheckFunctionResponse`
        def CheckFunction(request)
          body = send_request('CheckFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验Kafka服务集群是否可以正常访问

        # @param request: Request instance for CheckRechargeKafkaServer.
        # @type request: :class:`Tencentcloud::cls::V20201016::CheckRechargeKafkaServerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CheckRechargeKafkaServerResponse`
        def CheckRechargeKafkaServer(request)
          body = send_request('CheckRechargeKafkaServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckRechargeKafkaServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭Kafka协议消费

        # @param request: Request instance for CloseKafkaConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::CloseKafkaConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CloseKafkaConsumerResponse`
        def CloseKafkaConsumer(request)
          body = send_request('CloseKafkaConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseKafkaConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交消费点位

        # @param request: Request instance for CommitConsumerOffsets.
        # @type request: :class:`Tencentcloud::cls::V20201016::CommitConsumerOffsetsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CommitConsumerOffsetsResponse`
        def CommitConsumerOffsets(request)
          body = send_request('CommitConsumerOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitConsumerOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建告警策略。

        # @param request: Request instance for CreateAlarm.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateAlarmRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateAlarmResponse`
        def CreateAlarm(request)
          body = send_request('CreateAlarm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于创建通知渠道组，提供两种配置模式，二选一：
        # 1，简易模式，提供最基本的通知渠道功能。需填写如下参数：
        # - Type
        # - NoticeReceivers
        # - WebCallbacks

        # 2，高级模式，在简易模式基础上，支持设定规则，为不同类型的告警分别设定通知渠道，并支持告警升级功能。需填写如下参数：
        # - NoticeRules

        # @param request: Request instance for CreateAlarmNotice.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateAlarmNoticeResponse`
        def CreateAlarmNotice(request)
          body = send_request('CreateAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于创建告警屏蔽规则。

        # @param request: Request instance for CreateAlarmShield.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateAlarmShieldRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateAlarmShieldResponse`
        def CreateAlarmShield(request)
          body = send_request('CreateAlarmShield', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmShieldResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 内部云产品接入使用相关接口

        # @param request: Request instance for CreateCloudProductLogCollection.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateCloudProductLogCollectionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateCloudProductLogCollectionResponse`
        def CreateCloudProductLogCollection(request)
          body = send_request('CreateCloudProductLogCollection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudProductLogCollectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建采集规则配置

        # @param request: Request instance for CreateConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateConfigResponse`
        def CreateConfig(request)
          body = send_request('CreateConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建特殊采集配置任务，特殊采集配置应用于自建K8S环境的采集Agent

        # @param request: Request instance for CreateConfigExtra.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateConfigExtraRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateConfigExtraResponse`
        def CreateConfigExtra(request)
          body = send_request('CreateConfigExtra', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigExtraResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建控制台分享

        # @param request: Request instance for CreateConsoleSharing.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateConsoleSharingRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateConsoleSharingResponse`
        def CreateConsoleSharing(request)
          body = send_request('CreateConsoleSharing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsoleSharingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建投递CKafka任务

        # @param request: Request instance for CreateConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateConsumerResponse`
        def CreateConsumer(request)
          body = send_request('CreateConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 消费组心跳

        # @param request: Request instance for CreateConsumerGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateConsumerGroupResponse`
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

        # 本接口用于创建cos导入任务

        # @param request: Request instance for CreateCosRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateCosRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateCosRechargeResponse`
        def CreateCosRecharge(request)
          body = send_request('CreateCosRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建仪表盘

        # @param request: Request instance for CreateDashboard.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateDashboardRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateDashboardResponse`
        def CreateDashboard(request)
          body = send_request('CreateDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDashboardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于创建仪表盘订阅

        # @param request: Request instance for CreateDashboardSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateDashboardSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateDashboardSubscribeResponse`
        def CreateDashboardSubscribe(request)
          body = send_request('CreateDashboardSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDashboardSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建数据加工任务。

        # @param request: Request instance for CreateDataTransform.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateDataTransformRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateDataTransformResponse`
        def CreateDataTransform(request)
          body = send_request('CreateDataTransform', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataTransformResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建投递SCF任务

        # @param request: Request instance for CreateDeliverCloudFunction.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateDeliverCloudFunctionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateDeliverCloudFunctionResponse`
        def CreateDeliverCloudFunction(request)
          body = send_request('CreateDeliverCloudFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeliverCloudFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建DLC投递任务

        # @param request: Request instance for CreateDlcDeliver.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateDlcDeliverRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateDlcDeliverResponse`
        def CreateDlcDeliver(request)
          body = send_request('CreateDlcDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDlcDeliverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建es导入配置

        # @param request: Request instance for CreateEsRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateEsRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateEsRechargeResponse`
        def CreateEsRecharge(request)
          body = send_request('CreateEsRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEsRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口仅创建下载任务。任务返回的下载地址，请用户调用[DescribeExports](https://cloud.tencent.com/document/product/614/56449)查看任务列表，其中有下载地址CosPath参数。

        # @param request: Request instance for CreateExport.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateExportRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateExportResponse`
        def CreateExport(request)
          body = send_request('CreateExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建主机指标采集配置

        # @param request: Request instance for CreateHostMetricConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateHostMetricConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateHostMetricConfigResponse`
        def CreateHostMetricConfig(request)
          body = send_request('CreateHostMetricConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostMetricConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建索引

        # @param request: Request instance for CreateIndex.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateIndexRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateIndexResponse`
        def CreateIndex(request)
          body = send_request('CreateIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建Kafka数据订阅任务

        # @param request: Request instance for CreateKafkaRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateKafkaRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateKafkaRechargeResponse`
        def CreateKafkaRecharge(request)
          body = send_request('CreateKafkaRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKafkaRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建日志集，返回新创建的日志集的 ID。

        # @param request: Request instance for CreateLogset.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateLogsetRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateLogsetResponse`
        def CreateLogset(request)
          body = send_request('CreateLogset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLogsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建机器组

        # @param request: Request instance for CreateMachineGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateMachineGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateMachineGroupResponse`
        def CreateMachineGroup(request)
          body = send_request('CreateMachineGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMachineGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建指标采集配置

        # @param request: Request instance for CreateMetricConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateMetricConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateMetricConfigResponse`
        def CreateMetricConfig(request)
          body = send_request('CreateMetricConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMetricConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建指标订阅配置

        # @param request: Request instance for CreateMetricSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateMetricSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateMetricSubscribeResponse`
        def CreateMetricSubscribe(request)
          body = send_request('CreateMetricSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMetricSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于创建通知内容。

        # @param request: Request instance for CreateNoticeContent.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateNoticeContentRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateNoticeContentResponse`
        def CreateNoticeContent(request)
          body = send_request('CreateNoticeContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNoticeContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建定时SQL分析任务

        # @param request: Request instance for CreateScheduledSql.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateScheduledSqlRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateScheduledSqlResponse`
        def CreateScheduledSql(request)
          body = send_request('CreateScheduledSql', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScheduledSqlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建投递到COS的任务，【！！！注意】使用此接口，需要检查是否配置了投递COS的角色和权限。如果没有配置，请参考文档投递权限查看和配置https://cloud.tencent.com/document/product/614/71623。

        # @param request: Request instance for CreateShipper.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateShipperRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateShipperResponse`
        def CreateShipper(request)
          body = send_request('CreateShipper', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateShipperResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Splunk投递任务

        # @param request: Request instance for CreateSplunkDeliver.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateSplunkDeliverRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateSplunkDeliverResponse`
        def CreateSplunkDeliver(request)
          body = send_request('CreateSplunkDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSplunkDeliverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建日志或指标主题。

        # @param request: Request instance for CreateTopic.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateTopicRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateTopicResponse`
        def CreateTopic(request)
          body = send_request('CreateTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于创建告警渠道回调配置。

        # @param request: Request instance for CreateWebCallback.
        # @type request: :class:`Tencentcloud::cls::V20201016::CreateWebCallbackRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::CreateWebCallbackResponse`
        def CreateWebCallback(request)
          body = send_request('CreateWebCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWebCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除告警策略。

        # @param request: Request instance for DeleteAlarm.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteAlarmRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteAlarmResponse`
        def DeleteAlarm(request)
          body = send_request('DeleteAlarm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于删除通知渠道组

        # @param request: Request instance for DeleteAlarmNotice.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteAlarmNoticeResponse`
        def DeleteAlarmNotice(request)
          body = send_request('DeleteAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于删除告警屏蔽规则。当告警屏蔽规则在生效中或者是在失效中，无法被删除

        # @param request: Request instance for DeleteAlarmShield.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteAlarmShieldRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteAlarmShieldResponse`
        def DeleteAlarmShield(request)
          body = send_request('DeleteAlarmShield', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmShieldResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 内部云产品接入使用相关接口

        # @param request: Request instance for DeleteCloudProductLogCollection.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteCloudProductLogCollectionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteCloudProductLogCollectionResponse`
        def DeleteCloudProductLogCollection(request)
          body = send_request('DeleteCloudProductLogCollection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudProductLogCollectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除采集规则配置

        # @param request: Request instance for DeleteConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteConfigResponse`
        def DeleteConfig(request)
          body = send_request('DeleteConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除特殊采集规则配置，特殊采集配置应用于自建K8S环境的采集Agent

        # @param request: Request instance for DeleteConfigExtra.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteConfigExtraRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteConfigExtraResponse`
        def DeleteConfigExtra(request)
          body = send_request('DeleteConfigExtra', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigExtraResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除应用到机器组的采集配置

        # @param request: Request instance for DeleteConfigFromMachineGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteConfigFromMachineGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteConfigFromMachineGroupResponse`
        def DeleteConfigFromMachineGroup(request)
          body = send_request('DeleteConfigFromMachineGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigFromMachineGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除控制台分享

        # @param request: Request instance for DeleteConsoleSharing.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteConsoleSharingRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteConsoleSharingResponse`
        def DeleteConsoleSharing(request)
          body = send_request('DeleteConsoleSharing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConsoleSharingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除投递Ckafka任务

        # @param request: Request instance for DeleteConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteConsumerResponse`
        def DeleteConsumer(request)
          body = send_request('DeleteConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消费组

        # @param request: Request instance for DeleteConsumerGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteConsumerGroupResponse`
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

        # 本接口用于删除cos导入任务

        # @param request: Request instance for DeleteCosRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteCosRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteCosRechargeResponse`
        def DeleteCosRecharge(request)
          body = send_request('DeleteCosRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCosRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除仪表盘

        # @param request: Request instance for DeleteDashboard.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteDashboardRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteDashboardResponse`
        def DeleteDashboard(request)
          body = send_request('DeleteDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDashboardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于删除仪表盘订阅

        # @param request: Request instance for DeleteDashboardSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteDashboardSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteDashboardSubscribeResponse`
        def DeleteDashboardSubscribe(request)
          body = send_request('DeleteDashboardSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDashboardSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除数据加工任务

        # @param request: Request instance for DeleteDataTransform.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteDataTransformRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteDataTransformResponse`
        def DeleteDataTransform(request)
          body = send_request('DeleteDataTransform', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataTransformResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DLC投递任务

        # @param request: Request instance for DeleteDlcDeliver.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteDlcDeliverRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteDlcDeliverResponse`
        def DeleteDlcDeliver(request)
          body = send_request('DeleteDlcDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDlcDeliverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除es导入配置

        # @param request: Request instance for DeleteEsRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteEsRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteEsRechargeResponse`
        def DeleteEsRecharge(request)
          body = send_request('DeleteEsRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEsRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除日志下载任务

        # @param request: Request instance for DeleteExport.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteExportRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteExportResponse`
        def DeleteExport(request)
          body = send_request('DeleteExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主机指标采集配置

        # @param request: Request instance for DeleteHostMetricConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteHostMetricConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteHostMetricConfigResponse`
        def DeleteHostMetricConfig(request)
          body = send_request('DeleteHostMetricConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHostMetricConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除日志主题的索引配置，删除索引配置后将无法检索和查询采集到的日志。

        # @param request: Request instance for DeleteIndex.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteIndexRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteIndexResponse`
        def DeleteIndex(request)
          body = send_request('DeleteIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除Kafka数据订阅任务

        # @param request: Request instance for DeleteKafkaRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteKafkaRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteKafkaRechargeResponse`
        def DeleteKafkaRecharge(request)
          body = send_request('DeleteKafkaRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteKafkaRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除日志集。

        # @param request: Request instance for DeleteLogset.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteLogsetRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteLogsetResponse`
        def DeleteLogset(request)
          body = send_request('DeleteLogset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除机器组

        # @param request: Request instance for DeleteMachineGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteMachineGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteMachineGroupResponse`
        def DeleteMachineGroup(request)
          body = send_request('DeleteMachineGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除机器组信息

        # @param request: Request instance for DeleteMachineGroupInfo.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteMachineGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteMachineGroupInfoResponse`
        def DeleteMachineGroupInfo(request)
          body = send_request('DeleteMachineGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指标采集配置

        # @param request: Request instance for DeleteMetricConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteMetricConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteMetricConfigResponse`
        def DeleteMetricConfig(request)
          body = send_request('DeleteMetricConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMetricConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指标订阅配置

        # @param request: Request instance for DeleteMetricSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteMetricSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteMetricSubscribeResponse`
        def DeleteMetricSubscribe(request)
          body = send_request('DeleteMetricSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMetricSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于删除通知内容配置

        # @param request: Request instance for DeleteNoticeContent.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteNoticeContentRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteNoticeContentResponse`
        def DeleteNoticeContent(request)
          body = send_request('DeleteNoticeContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNoticeContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除定时SQL分析任务

        # @param request: Request instance for DeleteScheduledSql.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteScheduledSqlRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteScheduledSqlResponse`
        def DeleteScheduledSql(request)
          body = send_request('DeleteScheduledSql', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScheduledSqlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除投递COS任务

        # @param request: Request instance for DeleteShipper.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteShipperRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteShipperResponse`
        def DeleteShipper(request)
          body = send_request('DeleteShipper', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteShipperResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Splunk投递任务

        # @param request: Request instance for DeleteSplunkDeliver.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteSplunkDeliverRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteSplunkDeliverResponse`
        def DeleteSplunkDeliver(request)
          body = send_request('DeleteSplunkDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSplunkDeliverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除日志或指标主题。

        # @param request: Request instance for DeleteTopic.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteTopicRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteTopicResponse`
        def DeleteTopic(request)
          body = send_request('DeleteTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于删除告警渠道回调配置。

        # @param request: Request instance for DeleteWebCallback.
        # @type request: :class:`Tencentcloud::cls::V20201016::DeleteWebCallbackRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DeleteWebCallbackResponse`
        def DeleteWebCallback(request)
          body = send_request('DeleteWebCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于获取通知渠道组列表

        # @param request: Request instance for DescribeAlarmNotices.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeAlarmNoticesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeAlarmNoticesResponse`
        def DescribeAlarmNotices(request)
          body = send_request('DescribeAlarmNotices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警屏蔽配置规则

        # @param request: Request instance for DescribeAlarmShields.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeAlarmShieldsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeAlarmShieldsResponse`
        def DescribeAlarmShields(request)
          body = send_request('DescribeAlarmShields', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmShieldsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取告警策略列表。

        # @param request: Request instance for DescribeAlarms.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeAlarmsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeAlarmsResponse`
        def DescribeAlarms(request)
          body = send_request('DescribeAlarms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警历史，例如今天未恢复的告警

        # @param request: Request instance for DescribeAlertRecordHistory.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeAlertRecordHistoryRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeAlertRecordHistoryResponse`
        def DescribeAlertRecordHistory(request)
          body = send_request('DescribeAlertRecordHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlertRecordHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云产品接入使用相关接口

        # @param request: Request instance for DescribeCloudProductLogTasks.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeCloudProductLogTasksRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeCloudProductLogTasksResponse`
        def DescribeCloudProductLogTasks(request)
          body = send_request('DescribeCloudProductLogTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudProductLogTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeClusterBaseMetricConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeClusterBaseMetricConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeClusterBaseMetricConfigsResponse`
        def DescribeClusterBaseMetricConfigs(request)
          body = send_request('DescribeClusterBaseMetricConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterBaseMetricConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeClusterMetricConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeClusterMetricConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeClusterMetricConfigsResponse`
        def DescribeClusterMetricConfigs(request)
          body = send_request('DescribeClusterMetricConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterMetricConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent

        # @param request: Request instance for DescribeConfigExtras.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConfigExtrasRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConfigExtrasResponse`
        def DescribeConfigExtras(request)
          body = send_request('DescribeConfigExtras', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigExtrasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取采集规则配置所绑定的机器组

        # @param request: Request instance for DescribeConfigMachineGroups.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConfigMachineGroupsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConfigMachineGroupsResponse`
        def DescribeConfigMachineGroups(request)
          body = send_request('DescribeConfigMachineGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigMachineGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取采集规则配置

        # @param request: Request instance for DescribeConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConfigsResponse`
        def DescribeConfigs(request)
          body = send_request('DescribeConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量查询控制台分享列表

        # @param request: Request instance for DescribeConsoleSharingList.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConsoleSharingListRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConsoleSharingListResponse`
        def DescribeConsoleSharingList(request)
          body = send_request('DescribeConsoleSharingList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsoleSharingListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取投递配置

        # @param request: Request instance for DescribeConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConsumerResponse`
        def DescribeConsumer(request)
          body = send_request('DescribeConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取消费组列表

        # @param request: Request instance for DescribeConsumerGroups.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConsumerGroupsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConsumerGroupsResponse`
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

        # 获取消费组点位信息

        # @param request: Request instance for DescribeConsumerOffsets.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConsumerOffsetsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConsumerOffsetsResponse`
        def DescribeConsumerOffsets(request)
          body = send_request('DescribeConsumerOffsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerOffsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于kafka投递数据预览

        # @param request: Request instance for DescribeConsumerPreview.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConsumerPreviewRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConsumerPreviewResponse`
        def DescribeConsumerPreview(request)
          body = send_request('DescribeConsumerPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumerPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取投递规则信息列表

        # @param request: Request instance for DescribeConsumers.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeConsumersRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeConsumersResponse`
        def DescribeConsumers(request)
          body = send_request('DescribeConsumers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConsumersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取cos导入配置

        # @param request: Request instance for DescribeCosRecharges.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeCosRechargesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeCosRechargesResponse`
        def DescribeCosRecharges(request)
          body = send_request('DescribeCosRecharges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosRechargesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取仪表盘订阅列表，支持分页

        # @param request: Request instance for DescribeDashboardSubscribes.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeDashboardSubscribesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeDashboardSubscribesResponse`
        def DescribeDashboardSubscribes(request)
          body = send_request('DescribeDashboardSubscribes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDashboardSubscribesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取仪表盘

        # @param request: Request instance for DescribeDashboards.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeDashboardsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeDashboardsResponse`
        def DescribeDashboards(request)
          body = send_request('DescribeDashboards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDashboardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取数据加工任务列表基本信息

        # @param request: Request instance for DescribeDataTransformInfo.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeDataTransformInfoRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeDataTransformInfoResponse`
        def DescribeDataTransformInfo(request)
          body = send_request('DescribeDataTransformInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataTransformInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警渠道回调配置列表。

        # @param request: Request instance for DescribeDlcDelivers.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeDlcDeliversRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeDlcDeliversResponse`
        def DescribeDlcDelivers(request)
          body = send_request('DescribeDlcDelivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDlcDeliversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # es导入预览

        # @param request: Request instance for DescribeEsRechargePreview.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeEsRechargePreviewRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeEsRechargePreviewResponse`
        def DescribeEsRechargePreview(request)
          body = send_request('DescribeEsRechargePreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEsRechargePreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取es导入配置

        # @param request: Request instance for DescribeEsRecharges.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeEsRechargesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeEsRechargesResponse`
        def DescribeEsRecharges(request)
          body = send_request('DescribeEsRecharges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEsRechargesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取日志下载任务列表

        # @param request: Request instance for DescribeExports.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeExportsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeExportsResponse`
        def DescribeExports(request)
          body = send_request('DescribeExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeHostMetricConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeHostMetricConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeHostMetricConfigsResponse`
        def DescribeHostMetricConfigs(request)
          body = send_request('DescribeHostMetricConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostMetricConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取索引配置信息

        # @param request: Request instance for DescribeIndex.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeIndexRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeIndexResponse`
        def DescribeIndex(request)
          body = send_request('DescribeIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Kafka协议消费信息

        # @param request: Request instance for DescribeKafkaConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerResponse`
        def DescribeKafkaConsumer(request)
          body = send_request('DescribeKafkaConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Kafka协议消费组详情

        # @param request: Request instance for DescribeKafkaConsumerGroupDetail.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerGroupDetailRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerGroupDetailResponse`
        def DescribeKafkaConsumerGroupDetail(request)
          body = send_request('DescribeKafkaConsumerGroupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaConsumerGroupDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Kafka协议消费组信息列表

        # @param request: Request instance for DescribeKafkaConsumerGroupList.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerGroupListRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerGroupListResponse`
        def DescribeKafkaConsumerGroupList(request)
          body = send_request('DescribeKafkaConsumerGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaConsumerGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # kafka协议消费预览接口

        # @param request: Request instance for DescribeKafkaConsumerPreview.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerPreviewRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerPreviewResponse`
        def DescribeKafkaConsumerPreview(request)
          body = send_request('DescribeKafkaConsumerPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaConsumerPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取kafka协议消费主题信息列表

        # @param request: Request instance for DescribeKafkaConsumerTopics.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerTopicsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeKafkaConsumerTopicsResponse`
        def DescribeKafkaConsumerTopics(request)
          body = send_request('DescribeKafkaConsumerTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaConsumerTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取Kafka数据订阅任务

        # @param request: Request instance for DescribeKafkaRecharges.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeKafkaRechargesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeKafkaRechargesResponse`
        def DescribeKafkaRecharges(request)
          body = send_request('DescribeKafkaRecharges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaRechargesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于搜索日志上下文附近的内容，详情参考[上下文检索](https://cloud.tencent.com/document/product/614/53248)。
        # API返回数据包最大49MB，建议启用 gzip 压缩（HTTP Request Header Accept-Encoding:gzip）。

        # @param request: Request instance for DescribeLogContext.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeLogContextRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeLogContextResponse`
        def DescribeLogContext(request)
          body = send_request('DescribeLogContext', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogContextResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于构建日志数量直方图

        # @param request: Request instance for DescribeLogHistogram.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeLogHistogramRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeLogHistogramResponse`
        def DescribeLogHistogram(request)
          body = send_request('DescribeLogHistogram', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogHistogramResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取日志集信息列表。

        # @param request: Request instance for DescribeLogsets.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeLogsetsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeLogsetsResponse`
        def DescribeLogsets(request)
          body = send_request('DescribeLogsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogsetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机器组绑定的采集规则配置

        # @param request: Request instance for DescribeMachineGroupConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeMachineGroupConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeMachineGroupConfigsResponse`
        def DescribeMachineGroupConfigs(request)
          body = send_request('DescribeMachineGroupConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineGroupConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机器组信息列表

        # @param request: Request instance for DescribeMachineGroups.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeMachineGroupsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeMachineGroupsResponse`
        def DescribeMachineGroups(request)
          body = send_request('DescribeMachineGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定机器组下的机器状态

        # @param request: Request instance for DescribeMachines.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeMachinesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeMachinesResponse`
        def DescribeMachines(request)
          body = send_request('DescribeMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeMetricCorrectDimension.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeMetricCorrectDimensionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeMetricCorrectDimensionResponse`
        def DescribeMetricCorrectDimension(request)
          body = send_request('DescribeMetricCorrectDimension', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMetricCorrectDimensionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建指标订阅配置

        # @param request: Request instance for DescribeMetricSubscribePreview.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeMetricSubscribePreviewRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeMetricSubscribePreviewResponse`
        def DescribeMetricSubscribePreview(request)
          body = send_request('DescribeMetricSubscribePreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMetricSubscribePreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeMetricSubscribes.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeMetricSubscribesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeMetricSubscribesResponse`
        def DescribeMetricSubscribes(request)
          body = send_request('DescribeMetricSubscribes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMetricSubscribesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取通知内容列表

        # @param request: Request instance for DescribeNoticeContents.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeNoticeContentsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeNoticeContentsResponse`
        def DescribeNoticeContents(request)
          body = send_request('DescribeNoticeContents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNoticeContentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口已废弃，如需获取分区数量，请使用DescribeTopics接口。

        # @param request: Request instance for DescribePartitions.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribePartitionsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribePartitionsResponse`
        def DescribePartitions(request)
          body = send_request('DescribePartitions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePartitionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取定时SQL分析任务列表

        # @param request: Request instance for DescribeScheduledSqlInfo.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeScheduledSqlInfoRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeScheduledSqlInfoResponse`
        def DescribeScheduledSqlInfo(request)
          body = send_request('DescribeScheduledSqlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScheduledSqlInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取投递任务列表

        # @param request: Request instance for DescribeShipperTasks.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeShipperTasksRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeShipperTasksResponse`
        def DescribeShipperTasks(request)
          body = send_request('DescribeShipperTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShipperTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取投递到COS的任务配置信息

        # @param request: Request instance for DescribeShippers.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeShippersRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeShippersResponse`
        def DescribeShippers(request)
          body = send_request('DescribeShippers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShippersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Splunk投递任务列表

        # @param request: Request instance for DescribeSplunkDelivers.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeSplunkDeliversRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeSplunkDeliversResponse`
        def DescribeSplunkDelivers(request)
          body = send_request('DescribeSplunkDelivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSplunkDeliversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # splunk投递任务预览

        # @param request: Request instance for DescribeSplunkPreview.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeSplunkPreviewRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeSplunkPreviewResponse`
        def DescribeSplunkPreview(request)
          body = send_request('DescribeSplunkPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSplunkPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeTopicBaseMetricConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeTopicBaseMetricConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeTopicBaseMetricConfigsResponse`
        def DescribeTopicBaseMetricConfigs(request)
          body = send_request('DescribeTopicBaseMetricConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicBaseMetricConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指标订阅配置

        # @param request: Request instance for DescribeTopicMetricConfigs.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeTopicMetricConfigsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeTopicMetricConfigsResponse`
        def DescribeTopicMetricConfigs(request)
          body = send_request('DescribeTopicMetricConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicMetricConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取日志或指标主题列表，支持分页

        # @param request: Request instance for DescribeTopics.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeTopicsRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeTopicsResponse`
        def DescribeTopics(request)
          body = send_request('DescribeTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警渠道回调配置列表。

        # @param request: Request instance for DescribeWebCallbacks.
        # @type request: :class:`Tencentcloud::cls::V20201016::DescribeWebCallbacksRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::DescribeWebCallbacksResponse`
        def DescribeWebCallbacks(request)
          body = send_request('DescribeWebCallbacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebCallbacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取告警策略执行详情

        # @param request: Request instance for GetAlarmLog.
        # @type request: :class:`Tencentcloud::cls::V20201016::GetAlarmLogRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::GetAlarmLogResponse`
        def GetAlarmLog(request)
          body = send_request('GetAlarmLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAlarmLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取时序label values列表

        # @param request: Request instance for GetMetricLabelValues.
        # @type request: :class:`Tencentcloud::cls::V20201016::GetMetricLabelValuesRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::GetMetricLabelValuesResponse`
        def GetMetricLabelValues(request)
          body = send_request('GetMetricLabelValues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMetricLabelValuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口已废弃，如需修改分区数量，请使用ModifyTopic接口。

        # @param request: Request instance for MergePartition.
        # @type request: :class:`Tencentcloud::cls::V20201016::MergePartitionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::MergePartitionResponse`
        def MergePartition(request)
          body = send_request('MergePartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MergePartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改告警策略。需要至少修改一项有效内容。

        # @param request: Request instance for ModifyAlarm.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyAlarmRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyAlarmResponse`
        def ModifyAlarm(request)
          body = send_request('ModifyAlarm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改通知渠道组

        # @param request: Request instance for ModifyAlarmNotice.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyAlarmNoticeResponse`
        def ModifyAlarmNotice(request)
          body = send_request('ModifyAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmNoticeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改告警屏蔽规则。当告警屏蔽规则为失效中时，无法对其进行修改

        # @param request: Request instance for ModifyAlarmShield.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyAlarmShieldRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyAlarmShieldResponse`
        def ModifyAlarmShield(request)
          body = send_request('ModifyAlarmShield', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmShieldResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 内部云产品接入使用相关接口

        # @param request: Request instance for ModifyCloudProductLogCollection.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyCloudProductLogCollectionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyCloudProductLogCollectionResponse`
        def ModifyCloudProductLogCollection(request)
          body = send_request('ModifyCloudProductLogCollection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudProductLogCollectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改采集规则配置

        # @param request: Request instance for ModifyConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyConfigResponse`
        def ModifyConfig(request)
          body = send_request('ModifyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改特殊采集配置任务，特殊采集配置应用于自建K8S环境的采集Agent

        # @param request: Request instance for ModifyConfigExtra.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyConfigExtraRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyConfigExtraResponse`
        def ModifyConfigExtra(request)
          body = send_request('ModifyConfigExtra', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConfigExtraResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改控制台分享，目前仅允许修改有效期

        # @param request: Request instance for ModifyConsoleSharing.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyConsoleSharingRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyConsoleSharingResponse`
        def ModifyConsoleSharing(request)
          body = send_request('ModifyConsoleSharing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsoleSharingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改投递Ckafka任务

        # @param request: Request instance for ModifyConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyConsumerResponse`
        def ModifyConsumer(request)
          body = send_request('ModifyConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新消费组信息

        # @param request: Request instance for ModifyConsumerGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyConsumerGroupResponse`
        def ModifyConsumerGroup(request)
          body = send_request('ModifyConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改cos导入任务

        # @param request: Request instance for ModifyCosRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyCosRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyCosRechargeResponse`
        def ModifyCosRecharge(request)
          body = send_request('ModifyCosRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCosRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改仪表盘

        # @param request: Request instance for ModifyDashboard.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyDashboardRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyDashboardResponse`
        def ModifyDashboard(request)
          body = send_request('ModifyDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDashboardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于修改仪表盘订阅

        # @param request: Request instance for ModifyDashboardSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyDashboardSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyDashboardSubscribeResponse`
        def ModifyDashboardSubscribe(request)
          body = send_request('ModifyDashboardSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDashboardSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改数据加工任务

        # @param request: Request instance for ModifyDataTransform.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyDataTransformRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyDataTransformResponse`
        def ModifyDataTransform(request)
          body = send_request('ModifyDataTransform', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataTransformResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DLC投递任务

        # @param request: Request instance for ModifyDlcDeliver.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyDlcDeliverRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyDlcDeliverResponse`
        def ModifyDlcDeliver(request)
          body = send_request('ModifyDlcDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDlcDeliverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改es导入配置

        # @param request: Request instance for ModifyEsRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyEsRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyEsRechargeResponse`
        def ModifyEsRecharge(request)
          body = send_request('ModifyEsRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEsRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改主机指标采集配置

        # @param request: Request instance for ModifyHostMetricConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyHostMetricConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyHostMetricConfigResponse`
        def ModifyHostMetricConfig(request)
          body = send_request('ModifyHostMetricConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostMetricConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改索引配置，该接口除受默认接口请求频率限制外，针对单个日志主题，并发数不能超过1，即同一时间同一个日志主题只能有一个正在执行的索引配置修改操作。

        # @param request: Request instance for ModifyIndex.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyIndexRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyIndexResponse`
        def ModifyIndex(request)
          body = send_request('ModifyIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Kafka协议消费信息

        # @param request: Request instance for ModifyKafkaConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyKafkaConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyKafkaConsumerResponse`
        def ModifyKafkaConsumer(request)
          body = send_request('ModifyKafkaConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyKafkaConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Kafka协议消费组点位

        # @param request: Request instance for ModifyKafkaConsumerGroupOffset.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyKafkaConsumerGroupOffsetRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyKafkaConsumerGroupOffsetResponse`
        def ModifyKafkaConsumerGroupOffset(request)
          body = send_request('ModifyKafkaConsumerGroupOffset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyKafkaConsumerGroupOffsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改Kafka数据订阅任务

        # @param request: Request instance for ModifyKafkaRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyKafkaRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyKafkaRechargeResponse`
        def ModifyKafkaRecharge(request)
          body = send_request('ModifyKafkaRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyKafkaRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改日志集信息

        # @param request: Request instance for ModifyLogset.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyLogsetRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyLogsetResponse`
        def ModifyLogset(request)
          body = send_request('ModifyLogset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogsetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改机器组。
        # 注意：修改接口直接覆盖历史数据，改为本次合法入参数据，请谨慎调用此接口。

        # @param request: Request instance for ModifyMachineGroup.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyMachineGroupRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyMachineGroupResponse`
        def ModifyMachineGroup(request)
          body = send_request('ModifyMachineGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMachineGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建指标采集配置

        # @param request: Request instance for ModifyMetricConfig.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyMetricConfigRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyMetricConfigResponse`
        def ModifyMetricConfig(request)
          body = send_request('ModifyMetricConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMetricConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改指标订阅配置

        # @param request: Request instance for ModifyMetricSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyMetricSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyMetricSubscribeResponse`
        def ModifyMetricSubscribe(request)
          body = send_request('ModifyMetricSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMetricSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改通知内容配置

        # @param request: Request instance for ModifyNoticeContent.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyNoticeContentRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyNoticeContentResponse`
        def ModifyNoticeContent(request)
          body = send_request('ModifyNoticeContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNoticeContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改定时SQL分析任务

        # @param request: Request instance for ModifyScheduledSql.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyScheduledSqlRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyScheduledSqlResponse`
        def ModifyScheduledSql(request)
          body = send_request('ModifyScheduledSql', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyScheduledSqlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改现有的投递规则，客户如果使用此接口，需要自行处理CLS对指定bucket的写权限。

        # @param request: Request instance for ModifyShipper.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyShipperRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyShipperResponse`
        def ModifyShipper(request)
          body = send_request('ModifyShipper', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyShipperResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改splunk投递任务相关信息

        # @param request: Request instance for ModifySplunkDeliver.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifySplunkDeliverRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifySplunkDeliverResponse`
        def ModifySplunkDeliver(request)
          body = send_request('ModifySplunkDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySplunkDeliverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改日志或指标主题。

        # @param request: Request instance for ModifyTopic.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyTopicRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyTopicResponse`
        def ModifyTopic(request)
          body = send_request('ModifyTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改告警渠道回调配置。

        # @param request: Request instance for ModifyWebCallback.
        # @type request: :class:`Tencentcloud::cls::V20201016::ModifyWebCallbackRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::ModifyWebCallbackResponse`
        def ModifyWebCallback(request)
          body = send_request('ModifyWebCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 打开Kafka协议消费功能

        # @param request: Request instance for OpenKafkaConsumer.
        # @type request: :class:`Tencentcloud::cls::V20201016::OpenKafkaConsumerRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::OpenKafkaConsumerResponse`
        def OpenKafkaConsumer(request)
          body = send_request('OpenKafkaConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenKafkaConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于预览Kafka数据订阅任务客户日志信息

        # @param request: Request instance for PreviewKafkaRecharge.
        # @type request: :class:`Tencentcloud::cls::V20201016::PreviewKafkaRechargeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::PreviewKafkaRechargeResponse`
        def PreviewKafkaRecharge(request)
          body = send_request('PreviewKafkaRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PreviewKafkaRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时刻指标的最新值。
        # 如果该时刻向前推5分钟内均无指标数据，则无相应的查询结果。

        # @param request: Request instance for QueryMetric.
        # @type request: :class:`Tencentcloud::cls::V20201016::QueryMetricRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::QueryMetricResponse`
        def QueryMetric(request)
          body = send_request('QueryMetric', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMetricResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时间范围内指标的变化趋势

        # @param request: Request instance for QueryRangeMetric.
        # @type request: :class:`Tencentcloud::cls::V20201016::QueryRangeMetricRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::QueryRangeMetricResponse`
        def QueryRangeMetric(request)
          body = send_request('QueryRangeMetric', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryRangeMetricResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重试失败的投递任务

        # @param request: Request instance for RetryShipperTask.
        # @type request: :class:`Tencentcloud::cls::V20201016::RetryShipperTaskRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::RetryShipperTaskResponse`
        def RetryShipperTask(request)
          body = send_request('RetryShipperTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryShipperTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于预览cos导入信息

        # @param request: Request instance for SearchCosRechargeInfo.
        # @type request: :class:`Tencentcloud::cls::V20201016::SearchCosRechargeInfoRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::SearchCosRechargeInfoResponse`
        def SearchCosRechargeInfo(request)
          body = send_request('SearchCosRechargeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchCosRechargeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于预览仪表盘订阅

        # @param request: Request instance for SearchDashboardSubscribe.
        # @type request: :class:`Tencentcloud::cls::V20201016::SearchDashboardSubscribeRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::SearchDashboardSubscribeResponse`
        def SearchDashboardSubscribe(request)
          body = send_request('SearchDashboardSubscribe', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchDashboardSubscribeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于检索分析日志，使用该接口时请注意如下事项：
        # 1. 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。
        # 2. 检索语法建议使用日志服务专用检索语法CQL，请使用SyntaxRule参数，将值设置为1，控制台默认也使用该语法规则。
        # 3. API返回数据包最大49MB，建议启用 gzip 压缩（HTTP Request Header Accept-Encoding:gzip）。

        # @param request: Request instance for SearchLog.
        # @type request: :class:`Tencentcloud::cls::V20201016::SearchLogRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::SearchLogResponse`
        def SearchLog(request)
          body = send_request('SearchLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 消费组心跳

        # @param request: Request instance for SendConsumerHeartbeat.
        # @type request: :class:`Tencentcloud::cls::V20201016::SendConsumerHeartbeatRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::SendConsumerHeartbeatResponse`
        def SendConsumerHeartbeat(request)
          body = send_request('SendConsumerHeartbeat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendConsumerHeartbeatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口已废弃，如需修改分区数量，请使用ModifyTopic接口。

        # @param request: Request instance for SplitPartition.
        # @type request: :class:`Tencentcloud::cls::V20201016::SplitPartitionRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::SplitPartitionResponse`
        def SplitPartition(request)
          body = send_request('SplitPartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SplitPartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ## 提示
        # 为了保障您日志数据的可靠性以及更高效地使用日志服务，建议您使用CLS优化后的接口[上传结构化日志](https://cloud.tencent.com/document/product/614/16873)。

        # 同时我们给此接口专门优化定制了多个语言版本的SDK供您选择，SDK提供统一的异步发送、资源控制、自动重试、优雅关闭、感知上报等功能，使上报日志功能更完善，详情请参考[SDK采集](https://cloud.tencent.com/document/product/614/67157)。

        # 同时云API上传日志接口也支持同步上传日志数据，如果您选择继续使用此接口请参考下文。

        # ## 功能描述

        # 本接口用于将日志写入到指定的日志主题。

        # #### 输入参数(pb二进制流，位于body中)

        # | 字段名       | 类型    | 位置 | 必须 | 含义                                                         |
        # | ------------ | ------- | ---- | ---- | ------------------------------------------------------------ |
        # | logGroupList | message | pb   | 是   | logGroup 列表，封装好的日志组列表内容，建议 logGroup 数量不要超过5个 |

        # LogGroup 说明：

        # | 字段名      | 是否必选 | 含义                                                         |
        # | ----------- | -------- | ------------------------------------------------------------ |
        # | logs        | 是       | 日志数组，表示有多个 Log 组成的集合，一个 Log 表示一条日志，一个 LogGroup 中 Log 个数不能超过10000 |
        # | contextFlow | 否       | LogGroup 的唯一ID，需要使用上下文功能时传入。格式："{上下文ID}-{LogGroupID}"。<br>上下文ID：唯一标识一个上下文（连续滚动的一系列日志文件，或者是需要保序的一系列日志），16进制64位整型字符串。<br>LogGroupID：连续递增的一串整型，16进制64位整型字符串。样例："102700A66102516A-59F59"。                        |
        # | filename    | 否       | 日志文件名                                                   |
        # | source      | 否       | 日志来源，一般使用机器 IP 作为标识                           |
        # | logTags     | 否       | 日志的标签列表                                               |

        # Log 说明：

        # | 字段名   | 是否必选 | 含义                                                         |
        # | -------- | -------- | ------------------------------------------------------------ |
        # | time     | 是       | 日志时间（Unix 格式时间戳），支持秒、毫秒，建议采用毫秒      |
        # | contents | 否       | key-value 格式的日志内容，表示一条日志里的多个 key-value 组合 |

        # Content 说明：

        # | 字段名 | 是否必选 | 含义                                                         |
        # | ------ | -------- | ------------------------------------------------------------ |
        # | key    | 是       | 单条日志里某个字段组的 key 值，不能以`_`开头                 |
        # | value  | 是       | 单条日志某个字段组的 value 值，单条日志 value 不能超过1MB，LogGroup 中所有 value 总和不能超过5MB |

        # LogTag 说明：

        # | 字段名 | 是否必选 | 含义                             |
        # | ------ | -------- | -------------------------------- |
        # | key    | 是       | 自定义的标签 key                 |
        # | value  | 是       | 自定义的标签 key 对应的 value 值 |

        # ## PB 编译示例

        # 本示例将说明如何使用官方 protoc 编译工具将 PB 描述文件 编译生成为 C++ 语言可调用的上传日志接口。

        # > ?目前 protoc 官方支持 Java、C++、Python 等语言的编译，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf)。

        # #### 1. 安装 Protocol Buffer

        # 下载 [Protocol Buffer](https://main.qcloudimg.com/raw/d7810aaf8b3073fbbc9d4049c21532aa/protobuf-2.6.1.tar.gz) ，解压并安装。示例版本为 protobuf 2.6.1，环境为 Centos 7.3 系统。 解压`protobuf-2.6.1.tar.gz`压缩包至`/usr/local`目录并进入该目录，执行命令如下：

        # ```
        # tar -zxvf protobuf-2.6.1.tar.gz -C /usr/local/ && cd /usr/local/protobuf-2.6.1
        # ```

        # 开始编译和安装，配置环境变量，执行命令如下：

        # ```
        # [root@VM_0_8_centos protobuf-2.6.1]# ./configure
        # [root@VM_0_8_centos protobuf-2.6.1]# make && make install
        # [root@VM_0_8_centos protobuf-2.6.1]# export PATH=$PATH:/usr/local/protobuf-2.6.1/bin
        # ```

        # 编译成功后，您可以使用以下命令查看版本：

        # ```
        # [root@VM_0_8_centos protobuf-2.6.1]# protoc --version
        # liprotoc 2.6.1
        # ```

        # #### 2. 创建 PB 描述文件

        # PB 描述文件是通信双方约定的数据交换格式，上传日志时须将规定的协议格式编译成对应语言版本的调用接口，然后添加到工程代码里，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf) 。

        # 以日志服务所规定的 PB 数据格式内容为准， 在本地创建 PB 消息描述文件 cls.proto。

        # > !PB 描述文件内容不可更改，且文件名须以`.proto`结尾。

        # cls.proto 内容（PB 描述文件）如下：

        # ```
        # package cls;

        # message Log
        # {
        #     message Content
        #     {
        #         required string key   = 1; // 每组字段的 key
        #         required string value = 2; // 每组字段的 value
        #     }
        #     required int64   time     = 1; // 时间戳，UNIX时间格式
        #     repeated Content contents = 2; // 一条日志里的多个kv组合
        # }

        # message LogTag
        # {
        #     required string key       = 1;
        #     required string value     = 2;
        # }

        # message LogGroup
        # {
        #     repeated Log    logs        = 1; // 多条日志合成的日志数组
        #     optional string contextFlow = 2; // 目前暂无效用
        #     optional string filename    = 3; // 日志文件名
        #     optional string source      = 4; // 日志来源，一般使用机器IP
        #     repeated LogTag logTags     = 5;
        # }

        # message LogGroupList
        # {
        #     repeated LogGroup logGroupList = 1; // 日志组列表
        # }
        # ```

        # #### 3. 编译生成

        # 此例中，使用 proto 编译器生成 C++ 语言的文件，在 cls.proto 文件的同一目录下，执行如下编译命令：

        # ```
        # protoc --cpp_out=./ ./cls.proto
        # ```

        # > ?`--cpp_out=./`表示编译成 cpp 格式并输出当前目录下，`./cls.proto`表示位于当前目录下的 cls.proto 描述文件。

        # 编译成功后，会输出对应语言的代码文件。此例会生成 cls.pb.h 头文件和 [cls.pb.cc](http://cls.pb.cc) 代码实现文件，如下所示：

        # ```
        # [root@VM_0_8_centos protobuf-2.6.1]# protoc --cpp_out=./ ./cls.proto
        # [root@VM_0_8_centos protobuf-2.6.1]# ls
        # cls.pb.cc cls.pb.h cls.proto
        # ```

        # #### 4. 调用

        # 将生成的 cls.pb.h 头文件引入代码中，调用接口进行数据格式封装。

        # @param request: Request instance for UploadLog.
        # @type request: :class:`Tencentcloud::cls::V20201016::UploadLogRequest`
        # @rtype: :class:`Tencentcloud::cls::V20201016::UploadLogResponse`
        def UploadLog(request)
          body = send_request('UploadLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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