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
  module Cls
    module V20201016
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-10-16'
            api_endpoint = 'cls.tencentcloudapi.com'
            sdk_version = 'CLS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
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

        # 该接口用于创建通知渠道组。

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

        # 本接口用于创建投递任务

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

        # 本接口用于创建日志下载任务，导出原始日志

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

        # 创建新的投递规则，客户如果使用此接口，需要自行处理CLS对指定bucket的写权限。

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

        # 本接口用于创建日志主题。

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

        # 本接口用于删除投递配置

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

        # 删除投递规则

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

        # 本接口用于删除日志主题。

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

        # 本接口用于搜索日志上下文附近的内容

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

        # 获取制定机器组下的机器状态

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

        # 本接口用于获取主题分区列表。

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

        # 获取投递规则信息列表

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

        #  本接口用于获取日志主题列表，支持分页

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

        # 本接口用于获取告警任务历史

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

        # 本接口用于合并一个读写态的主题分区，合并时指定一个主题分区 ID，日志服务会自动合并范围右相邻的分区。

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

        # 本接口用于修改投递任务

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

        # 本接口用于修改索引配置

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

        # 修改机器组

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

        # 本接口用于修改日志主题。

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

        # 本接口用于检索分析日志, 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。

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

        # 本接口用于分裂主题分区

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

        # ## 功能描述

        # 本接口用于将日志写入到指定的日志主题。

        # 日志服务提供以下两种模式：

        # #### 负载均衡模式

        # 系统根据当前日志主题下所有可读写的分区，遵循负载均衡原则自动分配写入的目标分区。该模式适合消费不保序的场景。

        # #### 哈希路由模式

        # 系统根据携带的哈希值（X-CLS-HashKey）将数据写入到符合范围要求的目标分区。例如，可以将某个日志源端通过 hashkey 与某个主题分区强绑定，这样可以保证数据在该分区上写入和消费是严格保序的。

        # 此外日志服务还为用户提供以下两种不同的日志上传模式：


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