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
  module Dbbrain
    module V20210527
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-27'
            api_endpoint = 'dbbrain.tencentcloudapi.com'
            sdk_version = 'DBBRAIN_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加邮件接收联系人的姓名， 邮件地址，返回值为添加成功的联系人id。

        # @param request: Request instance for AddUserContact.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::AddUserContactRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::AddUserContactResponse`
        def AddUserContact(request)
          body = send_request('AddUserContact', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUserContactResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）

        # @param request: Request instance for CancelDBAutonomyAction.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CancelDBAutonomyActionRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CancelDBAutonomyActionResponse`
        def CancelDBAutonomyAction(request)
          body = send_request('CancelDBAutonomyAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelDBAutonomyActionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终止中断会话任务。

        # @param request: Request instance for CancelKillTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CancelKillTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CancelKillTaskResponse`
        def CancelKillTask(request)
          body = send_request('CancelKillTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelKillTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）

        # @param request: Request instance for CancelRedisBigKeyAnalysisTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CancelRedisBigKeyAnalysisTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CancelRedisBigKeyAnalysisTasksResponse`
        def CancelRedisBigKeyAnalysisTasks(request)
          body = send_request('CancelRedisBigKeyAnalysisTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelRedisBigKeyAnalysisTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 不用审计日志时，关闭数据库审计

        # @param request: Request instance for CloseAuditService.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CloseAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CloseAuditServiceResponse`
        def CloseAuditService(request)
          body = send_request('CloseAuditService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseAuditServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建云数据库实例的审计日志文件，最多下载600w审计日志。

        # @param request: Request instance for CreateAuditLogFile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateAuditLogFileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateAuditLogFileResponse`
        def CreateAuditLogFile(request)
          body = send_request('CreateAuditLogFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuditLogFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建健康报告，并可以选择是否发送邮件。

        # @param request: Request instance for CreateDBDiagReportTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateDBDiagReportTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateDBDiagReportTaskResponse`
        def CreateDBDiagReportTask(request)
          body = send_request('CreateDBDiagReportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBDiagReportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建健康报告的浏览地址。

        # @param request: Request instance for CreateDBDiagReportUrl.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateDBDiagReportUrlRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateDBDiagReportUrlResponse`
        def CreateDBDiagReportUrl(request)
          body = send_request('CreateDBDiagReportUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBDiagReportUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建中断会话的任务。

        # @param request: Request instance for CreateKillTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateKillTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateKillTaskResponse`
        def CreateKillTask(request)
          body = send_request('CreateKillTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKillTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建邮件配置。其中入参ProfileType表示所创建配置的类型，ProfileType 取值包括：dbScan_mail_configuration（数据库巡检邮件配置）、scheduler_mail_configuration（定期生成健康报告的邮件发送配置）。Region统一选择广州，和实例所属地域无关。

        # @param request: Request instance for CreateMailProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateMailProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateMailProfileResponse`
        def CreateMailProfile(request)
          body = send_request('CreateMailProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMailProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建中止所有代理节点连接会话的异步任务。当前仅支持 Redis。得到的返回值为异步任务 id，可以作为参数传入接口 DescribeProxySessionKillTasks 查询kill会话任务执行状态。

        # @param request: Request instance for CreateProxySessionKillTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateProxySessionKillTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateProxySessionKillTaskResponse`
        def CreateProxySessionKillTask(request)
          body = send_request('CreateProxySessionKillTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProxySessionKillTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 即时创建redis实例大key分析任务，限制正在运行的即时分析任务数量默认为5。

        # @param request: Request instance for CreateRedisBigKeyAnalysisTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateRedisBigKeyAnalysisTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateRedisBigKeyAnalysisTaskResponse`
        def CreateRedisBigKeyAnalysisTask(request)
          body = send_request('CreateRedisBigKeyAnalysisTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRedisBigKeyAnalysisTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于创建定期生成健康报告并邮件发送的配置，将健康报告的定期生成时间作为参数传入（周一至周日），用于设置健康报告的定期生成时间，同时保存相应的定期邮件发送的配置。

        # @param request: Request instance for CreateSchedulerMailProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateSchedulerMailProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateSchedulerMailProfileResponse`
        def CreateSchedulerMailProfile(request)
          body = send_request('CreateSchedulerMailProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSchedulerMailProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安全审计日志导出任务。

        # @param request: Request instance for CreateSecurityAuditLogExportTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateSecurityAuditLogExportTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateSecurityAuditLogExportTaskResponse`
        def CreateSecurityAuditLogExportTask(request)
          body = send_request('CreateSecurityAuditLogExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityAuditLogExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例SQL限流任务。

        # @param request: Request instance for CreateSqlFilter.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateSqlFilterRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateSqlFilterResponse`
        def CreateSqlFilter(request)
          body = send_request('CreateSqlFilter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSqlFilterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）；注意：接口需要加白名单。

        # @param request: Request instance for CreateUserAutonomyProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::CreateUserAutonomyProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::CreateUserAutonomyProfileResponse`
        def CreateUserAutonomyProfile(request)
          body = send_request('CreateUserAutonomyProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserAutonomyProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除云数据库实例的审计日志文件。

        # @param request: Request instance for DeleteAuditLogFile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DeleteAuditLogFileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DeleteAuditLogFileResponse`
        def DeleteAuditLogFile(request)
          body = send_request('DeleteAuditLogFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuditLogFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务id删除健康报告生成任务

        # @param request: Request instance for DeleteDBDiagReportTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DeleteDBDiagReportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DeleteDBDiagReportTasksResponse`
        def DeleteDBDiagReportTasks(request)
          body = send_request('DeleteDBDiagReportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDBDiagReportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Redis实例的大key分析任务。

        # @param request: Request instance for DeleteRedisBigKeyAnalysisTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DeleteRedisBigKeyAnalysisTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DeleteRedisBigKeyAnalysisTasksResponse`
        def DeleteRedisBigKeyAnalysisTasks(request)
          body = send_request('DeleteRedisBigKeyAnalysisTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRedisBigKeyAnalysisTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安全审计日志导出任务。

        # @param request: Request instance for DeleteSecurityAuditLogExportTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DeleteSecurityAuditLogExportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DeleteSecurityAuditLogExportTasksResponse`
        def DeleteSecurityAuditLogExportTasks(request)
          body = send_request('DeleteSecurityAuditLogExportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityAuditLogExportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除实例SQL限流任务。

        # @param request: Request instance for DeleteSqlFilters.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DeleteSqlFiltersRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DeleteSqlFiltersResponse`
        def DeleteSqlFilters(request)
          body = send_request('DeleteSqlFilters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSqlFiltersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通知模板查询

        # @param request: Request instance for DescribeAlarmTemplate.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeAlarmTemplateRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeAlarmTemplateResponse`
        def DescribeAlarmTemplate(request)
          body = send_request('DescribeAlarmTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取邮件发送中联系人的相关信息。

        # @param request: Request instance for DescribeAllUserContact.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeAllUserContactRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeAllUserContactResponse`
        def DescribeAllUserContact(request)
          body = send_request('DescribeAllUserContact', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllUserContactResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取邮件发送联系组的相关信息。

        # @param request: Request instance for DescribeAllUserGroup.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeAllUserGroupRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeAllUserGroupResponse`
        def DescribeAllUserGroup(request)
          body = send_request('DescribeAllUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例列表

        # @param request: Request instance for DescribeAuditInstanceList.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeAuditInstanceListRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeAuditInstanceListResponse`
        def DescribeAuditInstanceList(request)
          body = send_request('DescribeAuditInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建云数据库实例的审计日志文件

        # @param request: Request instance for DescribeAuditLogFiles.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeAuditLogFilesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeAuditLogFilesResponse`
        def DescribeAuditLogFiles(request)
          body = send_request('DescribeAuditLogFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditLogFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）

        # @param request: Request instance for DescribeDBAutonomyActions.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBAutonomyActionsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBAutonomyActionsResponse`
        def DescribeDBAutonomyActions(request)
          body = send_request('DescribeDBAutonomyActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBAutonomyActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）

        # @param request: Request instance for DescribeDBAutonomyEvents.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBAutonomyEventsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBAutonomyEventsResponse`
        def DescribeDBAutonomyEvents(request)
          body = send_request('DescribeDBAutonomyEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBAutonomyEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例异常诊断事件的详情信息。

        # @param request: Request instance for DescribeDBDiagEvent.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagEventRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagEventResponse`
        def DescribeDBDiagEvent(request)
          body = send_request('DescribeDBDiagEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBDiagEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。

        # @param request: Request instance for DescribeDBDiagEvents.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagEventsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagEventsResponse`
        def DescribeDBDiagEvents(request)
          body = send_request('DescribeDBDiagEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBDiagEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例诊断事件的列表。

        # @param request: Request instance for DescribeDBDiagHistory.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagHistoryRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagHistoryResponse`
        def DescribeDBDiagHistory(request)
          body = send_request('DescribeDBDiagHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBDiagHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询健康报告生成任务列表。

        # @param request: Request instance for DescribeDBDiagReportTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagReportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBDiagReportTasksResponse`
        def DescribeDBDiagReportTasks(request)
          body = send_request('DescribeDBDiagReportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBDiagReportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据实例ID获取指定时间段的性能趋势。

        # @param request: Request instance for DescribeDBPerfTimeSeries.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBPerfTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBPerfTimeSeriesResponse`
        def DescribeDBPerfTimeSeries(request)
          body = send_request('DescribeDBPerfTimeSeries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBPerfTimeSeriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。

        # @param request: Request instance for DescribeDBSpaceStatus.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBSpaceStatusRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDBSpaceStatusResponse`
        def DescribeDBSpaceStatus(request)
          body = send_request('DescribeDBSpaceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSpaceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例信息列表。Region统一选择广州。

        # @param request: Request instance for DescribeDiagDBInstances.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeDiagDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeDiagDBInstancesResponse`
        def DescribeDiagDBInstances(request)
          body = send_request('DescribeDiagDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiagDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据实例ID获取指定时间段（30分钟）的健康得分，以及异常扣分项。

        # @param request: Request instance for DescribeHealthScore.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeHealthScoreRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeHealthScoreResponse`
        def DescribeHealthScore(request)
          body = send_request('DescribeHealthScore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHealthScoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某张表的慢查模板概览

        # @param request: Request instance for DescribeIndexRecommendAggregationSlowLogs.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeIndexRecommendAggregationSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeIndexRecommendAggregationSlowLogsResponse`
        def DescribeIndexRecommendAggregationSlowLogs(request)
          body = send_request('DescribeIndexRecommendAggregationSlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexRecommendAggregationSlowLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例的索引推荐信息，包括索引统计相关信息，推荐索引列表，无效索引列表等。

        # @param request: Request instance for DescribeIndexRecommendInfo.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeIndexRecommendInfoRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeIndexRecommendInfoResponse`
        def DescribeIndexRecommendInfo(request)
          body = send_request('DescribeIndexRecommendInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexRecommendInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取发送邮件的配置， 包括数据库巡检的邮件配置以及定期生成健康报告的邮件发送配置。

        # @param request: Request instance for DescribeMailProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeMailProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeMailProfileResponse`
        def DescribeMailProfile(request)
          body = send_request('DescribeMailProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMailProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询关系型数据库的实时线程列表。

        # @param request: Request instance for DescribeMySqlProcessList.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeMySqlProcessListRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeMySqlProcessListResponse`
        def DescribeMySqlProcessList(request)
          body = send_request('DescribeMySqlProcessList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMySqlProcessListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例无主键表。

        # @param request: Request instance for DescribeNoPrimaryKeyTables.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeNoPrimaryKeyTablesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeNoPrimaryKeyTablesResponse`
        def DescribeNoPrimaryKeyTables(request)
          body = send_request('DescribeNoPrimaryKeyTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNoPrimaryKeyTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。

        # @param request: Request instance for DescribeProxyProcessStatistics.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeProxyProcessStatisticsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeProxyProcessStatisticsResponse`
        def DescribeProxyProcessStatistics(request)
          body = send_request('DescribeProxyProcessStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyProcessStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询 redis 执行 kill 会话任务后代理节点的执行结果，入参异步任务 ID 从接口 CreateProxySessionKillTask 调用成功后取得。当前 product 只支持：redis。

        # @param request: Request instance for DescribeProxySessionKillTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeProxySessionKillTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeProxySessionKillTasksResponse`
        def DescribeProxySessionKillTasks(request)
          body = send_request('DescribeProxySessionKillTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxySessionKillTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询redis大key分析任务列表。

        # @param request: Request instance for DescribeRedisBigKeyAnalysisTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisBigKeyAnalysisTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisBigKeyAnalysisTasksResponse`
        def DescribeRedisBigKeyAnalysisTasks(request)
          body = send_request('DescribeRedisBigKeyAnalysisTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisBigKeyAnalysisTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 延迟分析-命令字分析-查询命令延迟趋势

        # @param request: Request instance for DescribeRedisCmdPerfTimeSeries.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisCmdPerfTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisCmdPerfTimeSeriesResponse`
        def DescribeRedisCmdPerfTimeSeries(request)
          body = send_request('DescribeRedisCmdPerfTimeSeries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisCmdPerfTimeSeriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 延迟分析-查询命令延迟分布

        # @param request: Request instance for DescribeRedisCommandCostStatistics.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisCommandCostStatisticsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisCommandCostStatisticsResponse`
        def DescribeRedisCommandCostStatistics(request)
          body = send_request('DescribeRedisCommandCostStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisCommandCostStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 延迟分析-查询实例访问命令统计

        # @param request: Request instance for DescribeRedisCommandOverview.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisCommandOverviewRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisCommandOverviewResponse`
        def DescribeRedisCommandOverview(request)
          body = send_request('DescribeRedisCommandOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisCommandOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 Redis 实例所有 proxy 节点的实时会话详情列表。

        # @param request: Request instance for DescribeRedisProcessList.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisProcessListRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisProcessListResponse`
        def DescribeRedisProcessList(request)
          body = send_request('DescribeRedisProcessList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisProcessListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询redis实例大key列表。

        # @param request: Request instance for DescribeRedisTopBigKeys.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisTopBigKeysRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisTopBigKeysResponse`
        def DescribeRedisTopBigKeys(request)
          body = send_request('DescribeRedisTopBigKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisTopBigKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 热Key分析

        # @param request: Request instance for DescribeRedisTopHotKeys.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisTopHotKeysRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisTopHotKeysResponse`
        def DescribeRedisTopHotKeys(request)
          body = send_request('DescribeRedisTopHotKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisTopHotKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询redis实例top key前缀列表。

        # @param request: Request instance for DescribeRedisTopKeyPrefixList.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisTopKeyPrefixListRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeRedisTopKeyPrefixListResponse`
        def DescribeRedisTopKeyPrefixList(request)
          body = send_request('DescribeRedisTopKeyPrefixList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisTopKeyPrefixListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全审计日志导出文件下载链接。目前日志文件下载仅提供腾讯云内网地址，请通过广州地域的腾讯云服务器进行下载。

        # @param request: Request instance for DescribeSecurityAuditLogDownloadUrls.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSecurityAuditLogDownloadUrlsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSecurityAuditLogDownloadUrlsResponse`
        def DescribeSecurityAuditLogDownloadUrls(request)
          body = send_request('DescribeSecurityAuditLogDownloadUrls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityAuditLogDownloadUrlsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全审计日志导出任务列表。

        # @param request: Request instance for DescribeSecurityAuditLogExportTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSecurityAuditLogExportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSecurityAuditLogExportTasksResponse`
        def DescribeSecurityAuditLogExportTasks(request)
          body = send_request('DescribeSecurityAuditLogExportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityAuditLogExportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取慢日志统计柱状图。

        # @param request: Request instance for DescribeSlowLogTimeSeriesStats.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogTimeSeriesStatsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogTimeSeriesStatsResponse`
        def DescribeSlowLogTimeSeriesStats(request)
          body = send_request('DescribeSlowLogTimeSeriesStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogTimeSeriesStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按照Sql模板+schema的聚合方式，统计排序指定时间段内的top慢sql。

        # @param request: Request instance for DescribeSlowLogTopSqls.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogTopSqlsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogTopSqlsResponse`
        def DescribeSlowLogTopSqls(request)
          body = send_request('DescribeSlowLogTopSqls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogTopSqlsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取慢日志来源地址统计分布图。

        # @param request: Request instance for DescribeSlowLogUserHostStats.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogUserHostStatsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogUserHostStatsResponse`
        def DescribeSlowLogUserHostStats(request)
          body = send_request('DescribeSlowLogUserHostStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogUserHostStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定时间内某个sql模板的慢日志明细

        # @param request: Request instance for DescribeSlowLogs.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSlowLogsResponse`
        def DescribeSlowLogs(request)
          body = send_request('DescribeSlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例SQL限流任务列表。

        # @param request: Request instance for DescribeSqlFilters.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSqlFiltersRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSqlFiltersResponse`
        def DescribeSqlFilters(request)
          body = send_request('DescribeSqlFilters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSqlFiltersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SQL模板。

        # @param request: Request instance for DescribeSqlTemplate.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeSqlTemplateRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeSqlTemplateResponse`
        def DescribeSqlTemplate(request)
          body = send_request('DescribeSqlTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSqlTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例占用空间最大的前几个库在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceSchemaTimeSeries.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceSchemaTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceSchemaTimeSeriesResponse`
        def DescribeTopSpaceSchemaTimeSeries(request)
          body = send_request('DescribeTopSpaceSchemaTimeSeries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopSpaceSchemaTimeSeriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例Top库的实时空间统计信息，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceSchemas.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceSchemasRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceSchemasResponse`
        def DescribeTopSpaceSchemas(request)
          body = send_request('DescribeTopSpaceSchemas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopSpaceSchemasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例占用空间最大的前几张表在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceTableTimeSeries.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceTableTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceTableTimeSeriesResponse`
        def DescribeTopSpaceTableTimeSeries(request)
          body = send_request('DescribeTopSpaceTableTimeSeries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopSpaceTableTimeSeriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例Top表的实时空间统计信息，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceTables.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceTablesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeTopSpaceTablesResponse`
        def DescribeTopSpaceTables(request)
          body = send_request('DescribeTopSpaceTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopSpaceTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）；注意： 接口调用需要加白名单。

        # @param request: Request instance for DescribeUserAutonomyProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeUserAutonomyProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeUserAutonomyProfileResponse`
        def DescribeUserAutonomyProfile(request)
          body = send_request('DescribeUserAutonomyProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserAutonomyProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取SQL优化建议。【产品用户回馈，此接口限免开放，后续将并入dbbrain专业版】

        # @param request: Request instance for DescribeUserSqlAdvice.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::DescribeUserSqlAdviceRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::DescribeUserSqlAdviceResponse`
        def DescribeUserSqlAdvice(request)
          body = send_request('DescribeUserSqlAdvice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserSqlAdviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据会话ID中断当前会话，该接口分为两次提交：第一次为预提交阶段，Stage为"Prepare"，得到的返回值包含SqlExecId；第二次为确认提交， Stage为"Commit"， 将SqlExecId的值作为参数传入，最终终止会话进程。

        # @param request: Request instance for KillMySqlThreads.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::KillMySqlThreadsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::KillMySqlThreadsResponse`
        def KillMySqlThreads(request)
          body = send_request('KillMySqlThreads', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillMySqlThreadsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警策略

        # @param request: Request instance for ModifyAlarmPolicy.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::ModifyAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::ModifyAlarmPolicyResponse`
        def ModifyAlarmPolicy(request)
          body = send_request('ModifyAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改审计配置相关信息，如高频存储时长等

        # @param request: Request instance for ModifyAuditService.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::ModifyAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::ModifyAuditServiceResponse`
        def ModifyAuditService(request)
          body = send_request('ModifyAuditService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAuditServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例的配置信息。

        # @param request: Request instance for ModifyDiagDBInstanceConf.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::ModifyDiagDBInstanceConfRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::ModifyDiagDBInstanceConfResponse`
        def ModifyDiagDBInstanceConf(request)
          body = send_request('ModifyDiagDBInstanceConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDiagDBInstanceConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改实例限流任务状态，目前仅用于终止限流。

        # @param request: Request instance for ModifySqlFilters.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::ModifySqlFiltersRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::ModifySqlFiltersResponse`
        def ModifySqlFilters(request)
          body = send_request('ModifySqlFilters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySqlFiltersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自治中心-终止自治任务（单次）；注意：接口需要加白名单。

        # @param request: Request instance for ModifyUserAutonomyProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::ModifyUserAutonomyProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::ModifyUserAutonomyProfileResponse`
        def ModifyUserAutonomyProfile(request)
          body = send_request('ModifyUserAutonomyProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserAutonomyProfileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启数据库审计服务

        # @param request: Request instance for OpenAuditService.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::OpenAuditServiceRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::OpenAuditServiceResponse`
        def OpenAuditService(request)
          body = send_request('OpenAuditService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenAuditServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新agent状态（停止或重连Agent）

        # @param request: Request instance for UpdateAgentSwitch.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::UpdateAgentSwitchRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::UpdateAgentSwitchResponse`
        def UpdateAgentSwitch(request)
          body = send_request('UpdateAgentSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAgentSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新Agent实例状态（停止或重连实例）

        # @param request: Request instance for UpdateMonitorSwitch.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::UpdateMonitorSwitchRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::UpdateMonitorSwitchResponse`
        def UpdateMonitorSwitch(request)
          body = send_request('UpdateMonitorSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateMonitorSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证用户数据库账号权限，获取会话token。

        # @param request: Request instance for VerifyUserAccount.
        # @type request: :class:`Tencentcloud::dbbrain::V20210527::VerifyUserAccountRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20210527::VerifyUserAccountResponse`
        def VerifyUserAccount(request)
          body = send_request('VerifyUserAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyUserAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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