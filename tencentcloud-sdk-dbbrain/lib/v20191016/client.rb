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
    module V20191016
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-10-16'
        @@endpoint = 'dbbrain.tencentcloudapi.com'
        @@sdk_version = 'DBBRAIN_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 添加邮件接收联系人的姓名， 邮件地址，返回值为添加成功的联系人id。Region统一选择广州。

        # @param request: Request instance for AddUserContact.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::AddUserContactRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::AddUserContactResponse`
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

        # 创建健康报告，并可以选择是否发送邮件。

        # @param request: Request instance for CreateDBDiagReportTask.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::CreateDBDiagReportTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::CreateDBDiagReportTaskResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::CreateDBDiagReportUrlRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::CreateDBDiagReportUrlResponse`
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

        # 创建邮件配置。其中入参ProfileType表示所创建配置的类型，ProfileType 取值包括：dbScan_mail_configuration（数据库巡检邮件配置）、scheduler_mail_configuration（定期生成健康报告的邮件发送配置）。Region统一选择广州，和实例所属地域无关。

        # @param request: Request instance for CreateMailProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::CreateMailProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::CreateMailProfileResponse`
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

        # 该接口用于创建定期生成健康报告并邮件发送的配置，将健康报告的定期生成时间作为参数传入（周一至周日），用于设置健康报告的定期生成时间，同时保存相应的定期邮件发送的配置。

        # @param request: Request instance for CreateSchedulerMailProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::CreateSchedulerMailProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::CreateSchedulerMailProfileResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::CreateSecurityAuditLogExportTaskRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::CreateSecurityAuditLogExportTaskResponse`
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

        # 删除安全审计日志导出任务。

        # @param request: Request instance for DeleteSecurityAuditLogExportTasks.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DeleteSecurityAuditLogExportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DeleteSecurityAuditLogExportTasksResponse`
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

        # 获取邮件发送中联系人的相关信息。

        # @param request: Request instance for DescribeAllUserContact.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeAllUserContactRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeAllUserContactResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeAllUserGroupRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeAllUserGroupResponse`
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

        # 获取实例异常诊断事件的详情信息。

        # @param request: Request instance for DescribeDBDiagEvent.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagEventRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagEventResponse`
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

        # 获取实例诊断事件的列表。

        # @param request: Request instance for DescribeDBDiagHistory.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagHistoryRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagHistoryResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagReportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagReportTasksResponse`
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

        # 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。

        # @param request: Request instance for DescribeDBSpaceStatus.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBSpaceStatusRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBSpaceStatusResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDiagDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDiagDBInstancesResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeHealthScoreRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeHealthScoreResponse`
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

        # 获取发送邮件的配置， 包括数据库巡检的邮件配置以及定期生成健康报告的邮件发送配置。Region统一选择广州。

        # @param request: Request instance for DescribeMailProfile.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeMailProfileRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeMailProfileResponse`
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

        # 查询安全审计日志导出文件下载链接。目前日志文件下载仅提供腾讯云内网地址，请通过广州地域的腾讯云服务器进行下载。

        # @param request: Request instance for DescribeSecurityAuditLogDownloadUrls.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSecurityAuditLogDownloadUrlsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSecurityAuditLogDownloadUrlsResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSecurityAuditLogExportTasksRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSecurityAuditLogExportTasksResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTimeSeriesStatsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTimeSeriesStatsResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTopSqlsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTopSqlsResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogUserHostStatsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogUserHostStatsResponse`
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

        # 获取实例占用空间最大的前几个库在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceSchemaTimeSeries.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceSchemaTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceSchemaTimeSeriesResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceSchemasRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceSchemasResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTableTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTableTimeSeriesResponse`
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
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTablesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTablesResponse`
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

        # 获取SQL优化建议。

        # @param request: Request instance for DescribeUserSqlAdvice.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeUserSqlAdviceRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeUserSqlAdviceResponse`
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

        # 修改实例巡检开关。

        # @param request: Request instance for ModifyDiagDBInstanceConf.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::ModifyDiagDBInstanceConfRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::ModifyDiagDBInstanceConfResponse`
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


      end
    end
  end
end