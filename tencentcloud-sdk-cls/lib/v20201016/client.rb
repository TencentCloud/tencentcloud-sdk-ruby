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
        @@api_version = '2020-10-16'
        @@endpoint = 'cls.tencentcloudapi.com'
        @@sdk_version = 'CLS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 该接口用户创建告警通知模板。

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

        # 本接口用于创建日志导出

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

        # 该接口用于删除告警通知模板

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

        # 本接口用于删除日志导出

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

        # 本接口用于日志主题的索引配置

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

        # 该接口用于获取告警通知模板列表

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

        # 本接口用于获取告警策略。

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

        # 本接口用于获取日志导出列表

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

        # 该接口用于修改告警通知模板。

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

        # 本接口用于搜索日志

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


      end
    end
  end
end