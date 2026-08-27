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
  module Monitor
    module V20230616
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-06-16'
            api_endpoint = 'monitor.tencentcloudapi.com'
            sdk_version = 'MONITOR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 取消对话执行

        # @param request: Request instance for CancelAIWorkbenchChat.
        # @type request: :class:`Tencentcloud::monitor::V20230616::CancelAIWorkbenchChatRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::CancelAIWorkbenchChatResponse`
        def CancelAIWorkbenchChat(request)
          body = send_request('CancelAIWorkbenchChat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelAIWorkbenchChatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 Agent

        # @param request: Request instance for CreateAIWorkbenchAgent.
        # @type request: :class:`Tencentcloud::monitor::V20230616::CreateAIWorkbenchAgentRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::CreateAIWorkbenchAgentResponse`
        def CreateAIWorkbenchAgent(request)
          body = send_request('CreateAIWorkbenchAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIWorkbenchAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建任务

        # @param request: Request instance for CreateAIWorkbenchTask.
        # @type request: :class:`Tencentcloud::monitor::V20230616::CreateAIWorkbenchTaskRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::CreateAIWorkbenchTaskResponse`
        def CreateAIWorkbenchTask(request)
          body = send_request('CreateAIWorkbenchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIWorkbenchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发接口：创建转发规则

        # @param request: Request instance for CreateDispenseExternalRule.
        # @type request: :class:`Tencentcloud::monitor::V20230616::CreateDispenseExternalRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::CreateDispenseExternalRuleResponse`
        def CreateDispenseExternalRule(request)
          body = send_request('CreateDispenseExternalRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDispenseExternalRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义通知内容模板

        # @param request: Request instance for CreateNoticeContentTmpl.
        # @type request: :class:`Tencentcloud::monitor::V20230616::CreateNoticeContentTmplRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::CreateNoticeContentTmplResponse`
        def CreateNoticeContentTmpl(request)
          body = send_request('CreateNoticeContentTmpl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNoticeContentTmplResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 Agent

        # @param request: Request instance for DeleteAIWorkbenchAgent.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DeleteAIWorkbenchAgentRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DeleteAIWorkbenchAgentResponse`
        def DeleteAIWorkbenchAgent(request)
          body = send_request('DeleteAIWorkbenchAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIWorkbenchAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除任务

        # @param request: Request instance for DeleteAIWorkbenchTask.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DeleteAIWorkbenchTaskRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DeleteAIWorkbenchTaskResponse`
        def DeleteAIWorkbenchTask(request)
          body = send_request('DeleteAIWorkbenchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIWorkbenchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 规则删除接口

        # @param request: Request instance for DeleteDispenseExternalRule.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DeleteDispenseExternalRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DeleteDispenseExternalRuleResponse`
        def DeleteDispenseExternalRule(request)
          body = send_request('DeleteDispenseExternalRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDispenseExternalRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除通知内容模板

        # @param request: Request instance for DeleteNoticeContentTmpls.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DeleteNoticeContentTmplsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DeleteNoticeContentTmplsResponse`
        def DeleteNoticeContentTmpls(request)
          body = send_request('DeleteNoticeContentTmpls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNoticeContentTmplsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Agent 详情

        # @param request: Request instance for DescribeAIWorkbenchAgent.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchAgentRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchAgentResponse`
        def DescribeAIWorkbenchAgent(request)
          body = send_request('DescribeAIWorkbenchAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询制品详情

        # @param request: Request instance for DescribeAIWorkbenchArtifact.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchArtifactRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchArtifactResponse`
        def DescribeAIWorkbenchArtifact(request)
          body = send_request('DescribeAIWorkbenchArtifact', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchArtifactResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询执行详情

        # @param request: Request instance for DescribeAIWorkbenchExecution.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchExecutionRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchExecutionResponse`
        def DescribeAIWorkbenchExecution(request)
          body = send_request('DescribeAIWorkbenchExecution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchExecutionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI工作台SRE数字分身任务列表

        # @param request: Request instance for DescribeAIWorkbenchSREDigitalTwinTaskList.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSREDigitalTwinTaskListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSREDigitalTwinTaskListResponse`
        def DescribeAIWorkbenchSREDigitalTwinTaskList(request)
          body = send_request('DescribeAIWorkbenchSREDigitalTwinTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchSREDigitalTwinTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI工作台SRE数字分身工作日志详细信息

        # @param request: Request instance for DescribeAIWorkbenchSREDigitalTwinWorkLogDetail.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSREDigitalTwinWorkLogDetailRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSREDigitalTwinWorkLogDetailResponse`
        def DescribeAIWorkbenchSREDigitalTwinWorkLogDetail(request)
          body = send_request('DescribeAIWorkbenchSREDigitalTwinWorkLogDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchSREDigitalTwinWorkLogDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI工作台SRE数字分身任务工作日志列表

        # @param request: Request instance for DescribeAIWorkbenchSREDigitalTwinWorkLogList.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSREDigitalTwinWorkLogListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSREDigitalTwinWorkLogListResponse`
        def DescribeAIWorkbenchSREDigitalTwinWorkLogList(request)
          body = send_request('DescribeAIWorkbenchSREDigitalTwinWorkLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchSREDigitalTwinWorkLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询会话详情

        # @param request: Request instance for DescribeAIWorkbenchSession.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSessionRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSessionResponse`
        def DescribeAIWorkbenchSession(request)
          body = send_request('DescribeAIWorkbenchSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询技能详情

        # @param request: Request instance for DescribeAIWorkbenchSkill.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSkillRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAIWorkbenchSkillResponse`
        def DescribeAIWorkbenchSkill(request)
          body = send_request('DescribeAIWorkbenchSkill', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIWorkbenchSkillResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按需查询告警的通知历史

        # @param request: Request instance for DescribeAlarmNotifyHistories.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeAlarmNotifyHistoriesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeAlarmNotifyHistoriesResponse`
        def DescribeAlarmNotifyHistories(request)
          body = send_request('DescribeAlarmNotifyHistories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNotifyHistoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发规则查询接口

        # @param request: Request instance for DescribeDispenseExternalRule.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeDispenseExternalRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeDispenseExternalRuleResponse`
        def DescribeDispenseExternalRule(request)
          body = send_request('DescribeDispenseExternalRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDispenseExternalRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询所有列表

        # @param request: Request instance for DescribeDispenseExternalRuleList.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeDispenseExternalRuleListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeDispenseExternalRuleListResponse`
        def DescribeDispenseExternalRuleList(request)
          body = send_request('DescribeDispenseExternalRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDispenseExternalRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发地域列表查询接口

        # @param request: Request instance for DescribeDispenseRegion.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeDispenseRegionRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeDispenseRegionResponse`
        def DescribeDispenseRegion(request)
          body = send_request('DescribeDispenseRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDispenseRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询对外指标

        # @param request: Request instance for DescribeExtMetric.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeExtMetricRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeExtMetricResponse`
        def DescribeExtMetric(request)
          body = send_request('DescribeExtMetric', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtMetricResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发查询对外命名空间接口

        # @param request: Request instance for DescribeExtNamespace.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeExtNamespaceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeExtNamespaceResponse`
        def DescribeExtNamespace(request)
          body = send_request('DescribeExtNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发kafka连通性测试

        # @param request: Request instance for DescribeKafka.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeKafkaRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeKafkaResponse`
        def DescribeKafka(request)
          body = send_request('DescribeKafka', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKafkaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据查询条件获取自定义通知内容模板，若所有查询条件空，则获取账号下所有模板

        # @param request: Request instance for DescribeNoticeContentTmpl.
        # @type request: :class:`Tencentcloud::monitor::V20230616::DescribeNoticeContentTmplRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::DescribeNoticeContentTmplResponse`
        def DescribeNoticeContentTmpl(request)
          body = send_request('DescribeNoticeContentTmpl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNoticeContentTmplResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取AI工作台制品的下载地址

        # @param request: Request instance for GetAIWorkbenchArtifactDownloadURL.
        # @type request: :class:`Tencentcloud::monitor::V20230616::GetAIWorkbenchArtifactDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::GetAIWorkbenchArtifactDownloadURLResponse`
        def GetAIWorkbenchArtifactDownloadURL(request)
          body = send_request('GetAIWorkbenchArtifactDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAIWorkbenchArtifactDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Agent 列表

        # @param request: Request instance for ListAIWorkbenchAgents.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchAgentsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchAgentsResponse`
        def ListAIWorkbenchAgents(request)
          body = send_request('ListAIWorkbenchAgents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchAgentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询产物列表

        # @param request: Request instance for ListAIWorkbenchArtifacts.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchArtifactsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchArtifactsResponse`
        def ListAIWorkbenchArtifacts(request)
          body = send_request('ListAIWorkbenchArtifacts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchArtifactsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询执行列表

        # @param request: Request instance for ListAIWorkbenchExecutions.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchExecutionsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchExecutionsResponse`
        def ListAIWorkbenchExecutions(request)
          body = send_request('ListAIWorkbenchExecutions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchExecutionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 MCP 列表

        # @param request: Request instance for ListAIWorkbenchMCPs.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchMCPsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchMCPsResponse`
        def ListAIWorkbenchMCPs(request)
          body = send_request('ListAIWorkbenchMCPs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchMCPsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消息列表

        # @param request: Request instance for ListAIWorkbenchMessages.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchMessagesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchMessagesResponse`
        def ListAIWorkbenchMessages(request)
          body = send_request('ListAIWorkbenchMessages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchMessagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出资源实例

        # @param request: Request instance for ListAIWorkbenchResourceInstances.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchResourceInstancesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchResourceInstancesResponse`
        def ListAIWorkbenchResourceInstances(request)
          body = send_request('ListAIWorkbenchResourceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchResourceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源地图列表

        # @param request: Request instance for ListAIWorkbenchResourceMaps.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchResourceMapsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchResourceMapsResponse`
        def ListAIWorkbenchResourceMaps(request)
          body = send_request('ListAIWorkbenchResourceMaps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchResourceMapsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询会话列表

        # @param request: Request instance for ListAIWorkbenchSessions.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchSessionsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchSessionsResponse`
        def ListAIWorkbenchSessions(request)
          body = send_request('ListAIWorkbenchSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchSessionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询技能列表

        # @param request: Request instance for ListAIWorkbenchSkills.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchSkillsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchSkillsResponse`
        def ListAIWorkbenchSkills(request)
          body = send_request('ListAIWorkbenchSkills', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchSkillsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务列表

        # @param request: Request instance for ListAIWorkbenchTasks.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchTasksRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ListAIWorkbenchTasksResponse`
        def ListAIWorkbenchTasks(request)
          body = send_request('ListAIWorkbenchTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAIWorkbenchTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发规则更新接口

        # @param request: Request instance for ModifyDispenseExternalRule.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ModifyDispenseExternalRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ModifyDispenseExternalRuleResponse`
        def ModifyDispenseExternalRule(request)
          body = send_request('ModifyDispenseExternalRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDispenseExternalRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增规则开启关闭接口

        # @param request: Request instance for ModifyDispenseExternalRuleStatus.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ModifyDispenseExternalRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ModifyDispenseExternalRuleStatusResponse`
        def ModifyDispenseExternalRuleStatus(request)
          body = send_request('ModifyDispenseExternalRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDispenseExternalRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改通知内容模板

        # @param request: Request instance for ModifyNoticeContentTmpl.
        # @type request: :class:`Tencentcloud::monitor::V20230616::ModifyNoticeContentTmplRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::ModifyNoticeContentTmplResponse`
        def ModifyNoticeContentTmpl(request)
          body = send_request('ModifyNoticeContentTmpl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNoticeContentTmplResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 触发数字分身任务请求

        # @param request: Request instance for TriggerAIWorkbenchSREDigitalTwinTask.
        # @type request: :class:`Tencentcloud::monitor::V20230616::TriggerAIWorkbenchSREDigitalTwinTaskRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::TriggerAIWorkbenchSREDigitalTwinTaskResponse`
        def TriggerAIWorkbenchSREDigitalTwinTask(request)
          body = send_request('TriggerAIWorkbenchSREDigitalTwinTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerAIWorkbenchSREDigitalTwinTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动触发任务

        # @param request: Request instance for TriggerAIWorkbenchTask.
        # @type request: :class:`Tencentcloud::monitor::V20230616::TriggerAIWorkbenchTaskRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::TriggerAIWorkbenchTaskResponse`
        def TriggerAIWorkbenchTask(request)
          body = send_request('TriggerAIWorkbenchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TriggerAIWorkbenchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 Agent

        # @param request: Request instance for UpdateAIWorkbenchAgent.
        # @type request: :class:`Tencentcloud::monitor::V20230616::UpdateAIWorkbenchAgentRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20230616::UpdateAIWorkbenchAgentResponse`
        def UpdateAIWorkbenchAgent(request)
          body = send_request('UpdateAIWorkbenchAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAIWorkbenchAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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