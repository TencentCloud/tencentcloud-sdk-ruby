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
  module Dlc
    module V20210125
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-01-25'
            api_endpoint = 'dlc.tencentcloudapi.com'
            sdk_version = 'DLC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # DMS元数据新增分区

        # @param request: Request instance for AddDMSPartitions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AddDMSPartitionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AddDMSPartitionsResponse`
        def AddDMSPartitions(request)
          body = send_request('AddDMSPartitions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDMSPartitionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为已有推理服务新增部署

        # @param request: Request instance for AddDeployment.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AddDeploymentRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AddDeploymentResponse`
        def AddDeployment(request)
          body = send_request('AddDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加数据优化资源

        # @param request: Request instance for AddOptimizerEngines.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AddOptimizerEnginesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AddOptimizerEnginesResponse`
        def AddOptimizerEngines(request)
          body = send_request('AddOptimizerEngines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddOptimizerEnginesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加用户到工作组

        # @param request: Request instance for AddUsersToWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AddUsersToWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AddUsersToWorkGroupResponse`
        def AddUsersToWorkGroup(request)
          body = send_request('AddUsersToWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUsersToWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据更新库

        # @param request: Request instance for AlterDMSDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AlterDMSDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AlterDMSDatabaseResponse`
        def AlterDMSDatabase(request)
          body = send_request('AlterDMSDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AlterDMSDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据更新分区

        # @param request: Request instance for AlterDMSPartition.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AlterDMSPartitionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AlterDMSPartitionResponse`
        def AlterDMSPartition(request)
          body = send_request('AlterDMSPartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AlterDMSPartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据更新表

        # @param request: Request instance for AlterDMSTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AlterDMSTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AlterDMSTableResponse`
        def AlterDMSTable(request)
          body = send_request('AlterDMSTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AlterDMSTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改表备注

        # @param request: Request instance for AlterTableComment.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AlterTableCommentRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AlterTableCommentResponse`
        def AlterTableComment(request)
          body = send_request('AlterTableComment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AlterTableCommentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分配原生表表属性

        # @param request: Request instance for AssignMangedTableProperties.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AssignMangedTablePropertiesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AssignMangedTablePropertiesResponse`
        def AssignMangedTableProperties(request)
          body = send_request('AssignMangedTableProperties', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignMangedTablePropertiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定数据源和队列

        # @param request: Request instance for AssociateDatasourceHouse.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AssociateDatasourceHouseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AssociateDatasourceHouseResponse`
        def AssociateDatasourceHouse(request)
          body = send_request('AssociateDatasourceHouse', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateDatasourceHouseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定数据脱敏策略

        # @param request: Request instance for AttachDataMaskPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AttachDataMaskPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AttachDataMaskPolicyResponse`
        def AttachDataMaskPolicy(request)
          body = send_request('AttachDataMaskPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachDataMaskPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定鉴权策略到用户

        # @param request: Request instance for AttachUserPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AttachUserPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AttachUserPolicyResponse`
        def AttachUserPolicy(request)
          body = send_request('AttachUserPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachUserPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定鉴权策略到工作组

        # @param request: Request instance for AttachWorkGroupPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::AttachWorkGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::AttachWorkGroupPolicyResponse`
        def AttachWorkGroupPolicy(request)
          body = send_request('AttachWorkGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachWorkGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定 API Key 到推理服务

        # @param request: Request instance for BindApiKey.
        # @type request: :class:`Tencentcloud::dlc::V20210125::BindApiKeyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::BindApiKeyResponse`
        def BindApiKey(request)
          body = send_request('BindApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定工作组到用户

        # @param request: Request instance for BindWorkGroupsToUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::BindWorkGroupsToUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::BindWorkGroupsToUserResponse`
        def BindWorkGroupsToUser(request)
          body = send_request('BindWorkGroupsToUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindWorkGroupsToUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CancelNotebookSessionStatement）用于取消session中执行的任务

        # @param request: Request instance for CancelNotebookSessionStatement.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelNotebookSessionStatementRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelNotebookSessionStatementResponse`
        def CancelNotebookSessionStatement(request)
          body = send_request('CancelNotebookSessionStatement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelNotebookSessionStatementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CancelNotebookSessionStatementBatch）用于批量取消Session 中执行的任务

        # @param request: Request instance for CancelNotebookSessionStatementBatch.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelNotebookSessionStatementBatchRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelNotebookSessionStatementBatchResponse`
        def CancelNotebookSessionStatementBatch(request)
          body = send_request('CancelNotebookSessionStatementBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelNotebookSessionStatementBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务ID取消正在运行的Ray任务

        # @param request: Request instance for CancelRayJob.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelRayJobRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelRayJobResponse`
        def CancelRayJob(request)
          body = send_request('CancelRayJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelRayJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CancelSparkSessionBatchSQL）用于取消Spark SQL批任务。

        # @param request: Request instance for CancelSparkSessionBatchSQL.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelSparkSessionBatchSQLRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelSparkSessionBatchSQLResponse`
        def CancelSparkSessionBatchSQL(request)
          body = send_request('CancelSparkSessionBatchSQL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelSparkSessionBatchSQLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CancelTask），用于取消任务

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelTaskResponse`
        def CancelTask(request)
          body = send_request('CancelTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量取消任务

        # @param request: Request instance for CancelTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelTasksResponse`
        def CancelTasks(request)
          body = send_request('CancelTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停（取消）实例

        # @param request: Request instance for CancelTrainingJobInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CancelTrainingJobInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CancelTrainingJobInstanceResponse`
        def CancelTrainingJobInstance(request)
          body = send_request('CancelTrainingJobInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTrainingJobInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查 API Key 名称是否重复

        # @param request: Request instance for CheckApiKeyName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckApiKeyNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckApiKeyNameResponse`
        def CheckApiKeyName(request)
          body = send_request('CheckApiKeyName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckApiKeyNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CheckDataEngineConfigPairsValidity）用于检查引擎用户自定义参数的有效性

        # @param request: Request instance for CheckDataEngineConfigPairsValidity.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckDataEngineConfigPairsValidityRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckDataEngineConfigPairsValidityResponse`
        def CheckDataEngineConfigPairsValidity(request)
          body = send_request('CheckDataEngineConfigPairsValidity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDataEngineConfigPairsValidityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CheckDataEngineImageCanBeRollback）用于查看集群是否能回滚。

        # @param request: Request instance for CheckDataEngineImageCanBeRollback.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckDataEngineImageCanBeRollbackRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckDataEngineImageCanBeRollbackResponse`
        def CheckDataEngineImageCanBeRollback(request)
          body = send_request('CheckDataEngineImageCanBeRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDataEngineImageCanBeRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CheckDataEngineImageCanBeUpgrade）用于查看集群镜像是否能够升级。

        # @param request: Request instance for CheckDataEngineImageCanBeUpgrade.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckDataEngineImageCanBeUpgradeRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckDataEngineImageCanBeUpgradeResponse`
        def CheckDataEngineImageCanBeUpgrade(request)
          body = send_request('CheckDataEngineImageCanBeUpgrade', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDataEngineImageCanBeUpgradeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 训练作业配置与普通 RayJob 配置共用 job_spec 表及 (appId, name) 唯一命名空间，重名检查统一挂在本接口，供两类前端表单复用

        # @param request: Request instance for CheckJobSpecName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckJobSpecNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckJobSpecNameResponse`
        def CheckJobSpecName(request)
          body = send_request('CheckJobSpecName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckJobSpecNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 元数据锁检查

        # @param request: Request instance for CheckLockMetaData.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckLockMetaDataRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckLockMetaDataResponse`
        def CheckLockMetaData(request)
          body = send_request('CheckLockMetaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckLockMetaDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查模型标识符是否重复

        # @param request: Request instance for CheckModelIdentifier.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckModelIdentifierRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckModelIdentifierResponse`
        def CheckModelIdentifier(request)
          body = send_request('CheckModelIdentifier', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckModelIdentifierResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 变配校验：判断用户的目标配置是否可以执行变配。校验逻辑：对于缩容场景（目标值 < 当前值），检查 default 队列的 min 值是否足够承受缩容差值。

        # @param request: Request instance for CheckModifyPartition.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckModifyPartitionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckModifyPartitionResponse`
        def CheckModifyPartition(request)
          body = send_request('CheckModifyPartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckModifyPartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资源队列名称合法性检测：校验队列名称是否合法，包括非空校验、格式校验（以小写字母开头，只允许小写字母、数字和连字符，长度1~11）和同分区下重名校验。

        # @param request: Request instance for CheckQueueName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckQueueNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckQueueNameResponse`
        def CheckQueueName(request)
          body = send_request('CheckQueueName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckQueueNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 校验资源名称合法性

        # @param request: Request instance for CheckResourceName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckResourceNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckResourceNameResponse`
        def CheckResourceName(request)
          body = send_request('CheckResourceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckResourceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查推理服务名称是否重复

        # @param request: Request instance for CheckServiceName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CheckServiceNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CheckServiceNameResponse`
        def CheckServiceName(request)
          body = send_request('CheckServiceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckServiceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制一份已有的作业配置

        # @param request: Request instance for CopyJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CopyJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CopyJobSpecResponse`
        def CopyJobSpec(request)
          body = send_request('CopyJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 API Key

        # @param request: Request instance for CreateApiKey.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateApiKeyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateApiKeyResponse`
        def CreateApiKey(request)
          body = send_request('CreateApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建性能评测任务

        # @param request: Request instance for CreateBenchmarkTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateBenchmarkTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateBenchmarkTaskResponse`
        def CreateBenchmarkTask(request)
          body = send_request('CreateBenchmarkTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBenchmarkTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateCHDFSBindingProduct）用于创建元数据加速桶和产品绑定关系

        # @param request: Request instance for CreateCHDFSBindingProduct.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateCHDFSBindingProductRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateCHDFSBindingProductResponse`
        def CreateCHDFSBindingProduct(request)
          body = send_request('CreateCHDFSBindingProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCHDFSBindingProductResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群组

        # @param request: Request instance for CreateClusterGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateClusterGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateClusterGroupResponse`
        def CreateClusterGroup(request)
          body = send_request('CreateClusterGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据创建库

        # @param request: Request instance for CreateDMSDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDMSDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDMSDatabaseResponse`
        def CreateDMSDatabase(request)
          body = send_request('CreateDMSDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDMSDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据创建表

        # @param request: Request instance for CreateDMSTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDMSTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDMSTableResponse`
        def CreateDMSTable(request)
          body = send_request('CreateDMSTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDMSTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为用户创建数据引擎

        # @param request: Request instance for CreateDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDataEngineResponse`
        def CreateDataEngine(request)
          body = send_request('CreateDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据脱敏策略

        # @param request: Request instance for CreateDataMaskStrategy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDataMaskStrategyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDataMaskStrategyResponse`
        def CreateDataMaskStrategy(request)
          body = send_request('CreateDataMaskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataMaskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDatabase）用于生成建库SQL语句。

        # @param request: Request instance for CreateDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDatabaseResponse`
        def CreateDatabase(request)
          body = send_request('CreateDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据源

        # @param request: Request instance for CreateDatasourceConnection.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateDatasourceConnectionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateDatasourceConnectionResponse`
        def CreateDatasourceConnection(request)
          body = send_request('CreateDatasourceConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatasourceConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateExportTask）用于创建导出任务

        # @param request: Request instance for CreateExportTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateExportTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateExportTaskResponse`
        def CreateExportTask(request)
          body = send_request('CreateExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateImportTask）用于创建导入任务

        # @param request: Request instance for CreateImportTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateImportTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateImportTaskResponse`
        def CreateImportTask(request)
          body = send_request('CreateImportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建推理模型（模型上传）

        # @param request: Request instance for CreateInferenceModel.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateInferenceModelRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateInferenceModelResponse`
        def CreateInferenceModel(request)
          body = send_request('CreateInferenceModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInferenceModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建推理服务（含默认部署）

        # @param request: Request instance for CreateInferenceService.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateInferenceServiceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateInferenceServiceResponse`
        def CreateInferenceService(request)
          body = send_request('CreateInferenceService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInferenceServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建托管存储内表（该接口已废弃）

        # @param request: Request instance for CreateInternalTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateInternalTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateInternalTableResponse`
        def CreateInternalTable(request)
          body = send_request('CreateInternalTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInternalTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建作业配置

        # @param request: Request instance for CreateJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateJobSpecResponse`
        def CreateJobSpec(request)
          body = send_request('CreateJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实验室

        # @param request: Request instance for CreateLab.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateLabRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateLabResponse`
        def CreateLab(request)
          body = send_request('CreateLab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateMetaDatabase）用于创建元数据库

        # @param request: Request instance for CreateMetaDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateMetaDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateMetaDatabaseResponse`
        def CreateMetaDatabase(request)
          body = send_request('CreateMetaDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMetaDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 MlFlow Server

        # @param request: Request instance for CreateMlflowServer.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateMlflowServerRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateMlflowServerResponse`
        def CreateMlflowServer(request)
          body = send_request('CreateMlflowServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMlflowServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建模型新版本

        # @param request: Request instance for CreateModelVersion.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateModelVersionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateModelVersionResponse`
        def CreateModelVersion(request)
          body = send_request('CreateModelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateNotebookSession）用于创建交互式session（notebook）

        # @param request: Request instance for CreateNotebookSession.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateNotebookSessionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateNotebookSessionResponse`
        def CreateNotebookSession(request)
          body = send_request('CreateNotebookSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNotebookSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateNotebookSessionStatement）用于在session中执行代码片段

        # @param request: Request instance for CreateNotebookSessionStatement.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateNotebookSessionStatementRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateNotebookSessionStatementResponse`
        def CreateNotebookSessionStatement(request)
          body = send_request('CreateNotebookSessionStatement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNotebookSessionStatementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateNotebookSessionStatementSupportBatchSQL）用于创建交互式session并执行SQL任务

        # @param request: Request instance for CreateNotebookSessionStatementSupportBatchSQL.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateNotebookSessionStatementSupportBatchSQLRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateNotebookSessionStatementSupportBatchSQLResponse`
        def CreateNotebookSessionStatementSupportBatchSQL(request)
          body = send_request('CreateNotebookSessionStatementSupportBatchSQL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNotebookSessionStatementSupportBatchSQLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增资源包

        # @param request: Request instance for CreatePartition.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreatePartitionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreatePartitionResponse`
        def CreatePartition(request)
          body = send_request('CreatePartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePartitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增资源队列：在指定分区下创建一个新的资源队列，支持设置队列名称、描述、资源规格列表和队列类型。

        # @param request: Request instance for CreatePartitionQueue.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreatePartitionQueueRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreatePartitionQueueResponse`
        def CreatePartitionQueue(request)
          body = send_request('CreatePartitionQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePartitionQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群

        # @param request: Request instance for CreateRayCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateRayClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateRayClusterResponse`
        def CreateRayCluster(request)
          body = send_request('CreateRayCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRayClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资源配置模板

        # @param request: Request instance for CreateResourceConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateResourceConfigResponse`
        def CreateResourceConfig(request)
          body = send_request('CreateResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建查询结果下载任务

        # @param request: Request instance for CreateResultDownload.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateResultDownloadRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateResultDownloadResponse`
        def CreateResultDownload(request)
          body = send_request('CreateResultDownload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResultDownloadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateScript）用于创建sql脚本。

        # @param request: Request instance for CreateScript.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateScriptRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateScriptResponse`
        def CreateScript(request)
          body = send_request('CreateScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建spark作业

        # @param request: Request instance for CreateSparkApp.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppResponse`
        def CreateSparkApp(request)
          body = send_request('CreateSparkApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建tdlc spark作业

        # @param request: Request instance for CreateSparkAppForTDLC.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppForTDLCRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppForTDLCResponse`
        def CreateSparkAppForTDLC(request)
          body = send_request('CreateSparkAppForTDLC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkAppForTDLCResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动Spark作业

        # @param request: Request instance for CreateSparkAppTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkAppTaskResponse`
        def CreateSparkAppTask(request)
          body = send_request('CreateSparkAppTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkAppTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateSparkSessionBatchSQL）用于向Spark作业引擎提交Spark SQL批任务。

        # @param request: Request instance for CreateSparkSessionBatchSQL.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkSessionBatchSQLRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkSessionBatchSQLResponse`
        def CreateSparkSessionBatchSQL(request)
          body = send_request('CreateSparkSessionBatchSQL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkSessionBatchSQLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateSparkSubmitTask）用于提交SparkSbumit批流任务。

        # @param request: Request instance for CreateSparkSubmitTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateSparkSubmitTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateSparkSubmitTaskResponse`
        def CreateSparkSubmitTask(request)
          body = send_request('CreateSparkSubmitTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSparkSubmitTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建标准引擎资源组

        # @param request: Request instance for CreateStandardEngineResourceGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateStandardEngineResourceGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateStandardEngineResourceGroupResponse`
        def CreateStandardEngineResourceGroup(request)
          body = send_request('CreateStandardEngineResourceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStandardEngineResourceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateStoreLocation）新增或覆盖计算结果存储位置。

        # @param request: Request instance for CreateStoreLocation.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateStoreLocationRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateStoreLocationResponse`
        def CreateStoreLocation(request)
          body = send_request('CreateStoreLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStoreLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateTable）用于生成建表SQL。

        # @param request: Request instance for CreateTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTableResponse`
        def CreateTable(request)
          body = send_request('CreateTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateTask）用于创建并执行SQL任务。（推荐使用CreateTasks接口）

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTaskResponse`
        def CreateTask(request)
          body = send_request('CreateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateTasks），用于批量创建并执行SQL任务

        # @param request: Request instance for CreateTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTasksResponse`
        def CreateTasks(request)
          body = send_request('CreateTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 废弃接口，申请下线

        # 按顺序创建任务（已经废弃，后期不再维护，请使用接口CreateTasks）

        # @param request: Request instance for CreateTasksInOrder.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTasksInOrderRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTasksInOrderResponse`
        def CreateTasksInOrder(request)
          body = send_request('CreateTasksInOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTasksInOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建TIceberg表

        # @param request: Request instance for CreateTcIcebergTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTcIcebergTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTcIcebergTableResponse`
        def CreateTcIcebergTable(request)
          body = send_request('CreateTcIcebergTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTcIcebergTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基于配置创建实例并提交 RayJob

        # @param request: Request instance for CreateTrainingJobInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateTrainingJobInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateTrainingJobInstanceResponse`
        def CreateTrainingJobInstance(request)
          body = send_request('CreateTrainingJobInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrainingJobInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateUserResponse`
        def CreateUser(request)
          body = send_request('CreateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户角色

        # @param request: Request instance for CreateUserRole.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateUserRoleRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateUserRoleResponse`
        def CreateUserRole(request)
          body = send_request('CreateUserRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户vpc连接到指定引擎网络

        # @param request: Request instance for CreateUserVpcConnection.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateUserVpcConnectionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateUserVpcConnectionResponse`
        def CreateUserVpcConnection(request)
          body = send_request('CreateUserVpcConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserVpcConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建工作组

        # @param request: Request instance for CreateWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::CreateWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::CreateWorkGroupResponse`
        def CreateWorkGroup(request)
          body = send_request('CreateWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 API Key

        # @param request: Request instance for DeleteApiKey.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteApiKeyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteApiKeyResponse`
        def DeleteApiKey(request)
          body = send_request('DeleteApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除性能评测任务

        # @param request: Request instance for DeleteBenchmarkTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteBenchmarkTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteBenchmarkTaskResponse`
        def DeleteBenchmarkTask(request)
          body = send_request('DeleteBenchmarkTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBenchmarkTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DeleteCHDFSBindingProduct）用于删除元数据加速桶和产品绑定关系

        # @param request: Request instance for DeleteCHDFSBindingProduct.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteCHDFSBindingProductRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteCHDFSBindingProductResponse`
        def DeleteCHDFSBindingProduct(request)
          body = send_request('DeleteCHDFSBindingProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCHDFSBindingProductResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集群组

        # @param request: Request instance for DeleteClusterGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteClusterGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteClusterGroupResponse`
        def DeleteClusterGroup(request)
          body = send_request('DeleteClusterGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据引擎

        # @param request: Request instance for DeleteDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteDataEngineResponse`
        def DeleteDataEngine(request)
          body = send_request('DeleteDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据脱敏策略

        # @param request: Request instance for DeleteDataMaskStrategy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteDataMaskStrategyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteDataMaskStrategyResponse`
        def DeleteDataMaskStrategy(request)
          body = send_request('DeleteDataMaskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataMaskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定部署

        # @param request: Request instance for DeleteDeployment.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteDeploymentRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteDeploymentResponse`
        def DeleteDeployment(request)
          body = send_request('DeleteDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除推理服务（含所有部署）

        # @param request: Request instance for DeleteInferenceService.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteInferenceServiceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteInferenceServiceResponse`
        def DeleteInferenceService(request)
          body = send_request('DeleteInferenceService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInferenceServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据配置ID删除作业配置

        # @param request: Request instance for DeleteJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteJobSpecResponse`
        def DeleteJobSpec(request)
          body = send_request('DeleteJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除数据实验室

        # @param request: Request instance for DeleteLab.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteLabRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteLabResponse`
        def DeleteLab(request)
          body = send_request('DeleteLab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteMetaDatabase）用于一键删除元数据库

        # @param request: Request instance for DeleteMetaDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteMetaDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteMetaDatabaseResponse`
        def DeleteMetaDatabase(request)
          body = send_request('DeleteMetaDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMetaDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 MlFlow Server 请求

        # @param request: Request instance for DeleteMlflowServer.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteMlflowServerRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteMlflowServerResponse`
        def DeleteMlflowServer(request)
          body = send_request('DeleteMlflowServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMlflowServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除模型及其所有版本（平台托管模型同时删除 COS 文件，用户自带桶仅删除元数据）

        # @param request: Request instance for DeleteModel.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteModelRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteModelResponse`
        def DeleteModel(request)
          body = send_request('DeleteModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除模型版本（平台托管模型同时删除 COS 文件，用户自带桶仅删除元数据）

        # @param request: Request instance for DeleteModelVersion.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteModelVersionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteModelVersionResponse`
        def DeleteModelVersion(request)
          body = send_request('DeleteModelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据spark session名称销毁eg spark session

        # @param request: Request instance for DeleteNativeSparkSession.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteNativeSparkSessionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteNativeSparkSessionResponse`
        def DeleteNativeSparkSession(request)
          body = send_request('DeleteNativeSparkSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNativeSparkSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteNotebookSession）用于删除交互式session（notebook）

        # @param request: Request instance for DeleteNotebookSession.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteNotebookSessionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteNotebookSessionResponse`
        def DeleteNotebookSession(request)
          body = send_request('DeleteNotebookSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNotebookSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除资源队列

        # @param request: Request instance for DeletePartitionQueue.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeletePartitionQueueRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeletePartitionQueueResponse`
        def DeletePartitionQueue(request)
          body = send_request('DeletePartitionQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePartitionQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集群

        # @param request: Request instance for DeleteRayCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteRayClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteRayClusterResponse`
        def DeleteRayCluster(request)
          body = send_request('DeleteRayCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRayClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务ID删除Ray任务

        # @param request: Request instance for DeleteRayJob.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteRayJobRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteRayJobResponse`
        def DeleteRayJob(request)
          body = send_request('DeleteRayJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRayJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除资源配置模板

        # @param request: Request instance for DeleteResourceConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteResourceConfigResponse`
        def DeleteResourceConfig(request)
          body = send_request('DeleteResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DeleteScript）用于删除sql脚本。

        # @param request: Request instance for DeleteScript.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteScriptRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteScriptResponse`
        def DeleteScript(request)
          body = send_request('DeleteScript', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScriptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除spark作业

        # @param request: Request instance for DeleteSparkApp.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteSparkAppRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteSparkAppResponse`
        def DeleteSparkApp(request)
          body = send_request('DeleteSparkApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSparkAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除标准引擎资源组

        # @param request: Request instance for DeleteStandardEngineResourceGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteStandardEngineResourceGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteStandardEngineResourceGroupResponse`
        def DeleteStandardEngineResourceGroup(request)
          body = send_request('DeleteStandardEngineResourceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStandardEngineResourceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除表

        # @param request: Request instance for DeleteTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteTableResponse`
        def DeleteTable(request)
          body = send_request('DeleteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RegisterThirdPartyAccessUser）用于移除第三方平台访问

        # @param request: Request instance for DeleteThirdPartyAccessUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteThirdPartyAccessUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteThirdPartyAccessUserResponse`
        def DeleteThirdPartyAccessUser(request)
          body = send_request('DeleteThirdPartyAccessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteThirdPartyAccessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除训练作业实例（软删除本地元数据，仅终态实例可删除）

        # @param request: Request instance for DeleteTrainingJobInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteTrainingJobInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteTrainingJobInstanceResponse`
        def DeleteTrainingJobInstance(request)
          body = send_request('DeleteTrainingJobInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrainingJobInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除训练作业配置

        # @param request: Request instance for DeleteTrainingJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteTrainingJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteTrainingJobSpecResponse`
        def DeleteTrainingJobSpec(request)
          body = send_request('DeleteTrainingJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrainingJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteUserResponse`
        def DeleteUser(request)
          body = send_request('DeleteUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户vpc到引擎网络的连接

        # @param request: Request instance for DeleteUserVpcConnection.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteUserVpcConnectionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteUserVpcConnectionResponse`
        def DeleteUserVpcConnection(request)
          body = send_request('DeleteUserVpcConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserVpcConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从工作组中删除用户

        # @param request: Request instance for DeleteUsersFromWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteUsersFromWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteUsersFromWorkGroupResponse`
        def DeleteUsersFromWorkGroup(request)
          body = send_request('DeleteUsersFromWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsersFromWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除工作组

        # @param request: Request instance for DeleteWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DeleteWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DeleteWorkGroupResponse`
        def DeleteWorkGroup(request)
          body = send_request('DeleteWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询sql查询界面高级设置

        # @param request: Request instance for DescribeAdvancedStoreLocation.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeAdvancedStoreLocationRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeAdvancedStoreLocationResponse`
        def DescribeAdvancedStoreLocation(request)
          body = send_request('DescribeAdvancedStoreLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAdvancedStoreLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 TKE 集群可绑定的托管 Prometheus 实例列表。若 TKE 已绑定，返回 Bound=true 与 BoundInstance；若未绑定，返回 Bound=false 与候选列表 Instances（同 VPC 实例前置）。

        # @param request: Request instance for DescribeBindablePrometheus.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeBindablePrometheusRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeBindablePrometheusResponse`
        def DescribeBindablePrometheus(request)
          body = send_request('DescribeBindablePrometheus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindablePrometheusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 CLS 日志主题列表：TopicName 走模糊匹配，TopicId 走精确匹配，两者均可为空；分页返回。

        # @param request: Request instance for DescribeClsTopics.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeClsTopicsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeClsTopicsResponse`
        def DescribeClsTopics(request)
          body = send_request('DescribeClsTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClsTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定 TKE 集群是否开启了事件日志。已开启时同时返回关联的 CLS 日志集 ID、日志主题 ID 与主题所在地域。

        # @param request: Request instance for DescribeClusterEventLogSwitch.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeClusterEventLogSwitchRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeClusterEventLogSwitchResponse`
        def DescribeClusterEventLogSwitch(request)
          body = send_request('DescribeClusterEventLogSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterEventLogSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据集群组 ID 获取集群组详情。支持通过 IncludeDeleted 参数控制是否返回已软删除的记录（用于悬挂 cluster 回显场景）。

        # @param request: Request instance for DescribeClusterGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeClusterGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeClusterGroupResponse`
        def DescribeClusterGroup(request)
          body = send_request('DescribeClusterGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 计算组关联 cluster 使用情况响应

        # @param request: Request instance for DescribeClusterGroupClusters.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeClusterGroupClustersRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeClusterGroupClustersResponse`
        def DescribeClusterGroupClusters(request)
          body = send_request('DescribeClusterGroupClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterGroupClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务监控指标信息

        # @param request: Request instance for DescribeClusterMonitorInfos.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeClusterMonitorInfosRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeClusterMonitorInfosResponse`
        def DescribeClusterMonitorInfos(request)
          body = send_request('DescribeClusterMonitorInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterMonitorInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询DLC Catalog授权列表

        # @param request: Request instance for DescribeDLCCatalogAccess.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDLCCatalogAccessRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDLCCatalogAccessResponse`
        def DescribeDLCCatalogAccess(request)
          body = send_request('DescribeDLCCatalogAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDLCCatalogAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据获取库

        # @param request: Request instance for DescribeDMSDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDMSDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDMSDatabaseResponse`
        def DescribeDMSDatabase(request)
          body = send_request('DescribeDMSDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDMSDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据获取分区

        # @param request: Request instance for DescribeDMSPartitions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDMSPartitionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDMSPartitionsResponse`
        def DescribeDMSPartitions(request)
          body = send_request('DescribeDMSPartitions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDMSPartitionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据获取表

        # @param request: Request instance for DescribeDMSTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDMSTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDMSTableResponse`
        def DescribeDMSTable(request)
          body = send_request('DescribeDMSTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDMSTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据获取表列表

        # @param request: Request instance for DescribeDMSTables.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDMSTablesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDMSTablesResponse`
        def DescribeDMSTables(request)
          body = send_request('DescribeDMSTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDMSTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口根据名称用于获取数据引擎详细信息

        # @param request: Request instance for DescribeDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineResponse`
        def DescribeDataEngine(request)
          body = send_request('DescribeDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据引擎事件

        # @param request: Request instance for DescribeDataEngineEvents.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineEventsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineEventsResponse`
        def DescribeDataEngineEvents(request)
          body = send_request('DescribeDataEngineEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEngineEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDataEngineImageVersions）用于获取独享集群大版本镜像列表。

        # @param request: Request instance for DescribeDataEngineImageVersions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineImageVersionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineImageVersionsResponse`
        def DescribeDataEngineImageVersions(request)
          body = send_request('DescribeDataEngineImageVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEngineImageVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDataEnginePythonSparkImages）用于获取PYSPARK镜像列表

        # @param request: Request instance for DescribeDataEnginePythonSparkImages.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEnginePythonSparkImagesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEnginePythonSparkImagesResponse`
        def DescribeDataEnginePythonSparkImages(request)
          body = send_request('DescribeDataEnginePythonSparkImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEnginePythonSparkImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDataEngineSessionParameters）用于获取指定小版本下的Session配置。

        # @param request: Request instance for DescribeDataEngineSessionParameters.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineSessionParametersRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEngineSessionParametersResponse`
        def DescribeDataEngineSessionParameters(request)
          body = send_request('DescribeDataEngineSessionParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEngineSessionParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDataEngines）用于查询DataEngines信息列表.

        # @param request: Request instance for DescribeDataEngines.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEnginesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEnginesResponse`
        def DescribeDataEngines(request)
          body = send_request('DescribeDataEngines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEnginesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询引擎规格详情

        # @param request: Request instance for DescribeDataEnginesScaleDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataEnginesScaleDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataEnginesScaleDetailResponse`
        def DescribeDataEnginesScaleDetail(request)
          body = send_request('DescribeDataEnginesScaleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEnginesScaleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询数据脱敏列表接口

        # @param request: Request instance for DescribeDataMaskStrategies.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDataMaskStrategiesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDataMaskStrategiesResponse`
        def DescribeDataMaskStrategies(request)
          body = send_request('DescribeDataMaskStrategies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataMaskStrategiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabase）,查询数据库详细信息

        # @param request: Request instance for DescribeDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDatabaseResponse`
        def DescribeDatabase(request)
          body = send_request('DescribeDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabases）用于查询数据库列表。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDatabasesResponse`
        def DescribeDatabases(request)
          body = send_request('DescribeDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatasourceConnection）用于查询数据源信息

        # @param request: Request instance for DescribeDatasourceConnection.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeDatasourceConnectionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeDatasourceConnectionResponse`
        def DescribeDatasourceConnection(request)
          body = send_request('DescribeDatasourceConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatasourceConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按 EMR 集群 ID 精确查询单个 EMR 集群的详细信息，包含 VPC、COS Bucket、关联 TKE 集群 ID、资源用量等。

        # @param request: Request instance for DescribeEmrClusterInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeEmrClusterInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeEmrClusterInfoResponse`
        def DescribeEmrClusterInfo(request)
          body = send_request('DescribeEmrClusterInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEmrClusterInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询引擎网络信息

        # @param request: Request instance for DescribeEngineNetworks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeEngineNetworksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeEngineNetworksResponse`
        def DescribeEngineNetworks(request)
          body = send_request('DescribeEngineNetworks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEngineNetworksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询引擎可用的节点规格

        # @param request: Request instance for DescribeEngineNodeSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeEngineNodeSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeEngineNodeSpecResponse`
        def DescribeEngineNodeSpec(request)
          body = send_request('DescribeEngineNodeSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEngineNodeSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口根据引擎ID查询数据引擎资源使用情况

        # @param request: Request instance for DescribeEngineUsageInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeEngineUsageInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeEngineUsageInfoResponse`
        def DescribeEngineUsageInfo(request)
          body = send_request('DescribeEngineUsageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEngineUsageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询指定分区的流程详情列表，包含每个流程的基本信息和活动列表

        # @param request: Request instance for DescribeFlowDetailList.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeFlowDetailListRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeFlowDetailListResponse`
        def DescribeFlowDetailList(request)
          body = send_request('DescribeFlowDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowDetailListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定分区的流程列表

        # @param request: Request instance for DescribeFlowList.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeFlowListRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeFlowListResponse`
        def DescribeFlowList(request)
          body = send_request('DescribeFlowList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeForbiddenTablePro）用于查询被禁用的表属性列表（新）

        # @param request: Request instance for DescribeForbiddenTablePro.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeForbiddenTableProRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeForbiddenTableProResponse`
        def DescribeForbiddenTablePro(request)
          body = send_request('DescribeForbiddenTablePro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeForbiddenTableProResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询托管存储指定目录的Summary

        # @param request: Request instance for DescribeLakeFsDirSummary.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeLakeFsDirSummaryRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeLakeFsDirSummaryResponse`
        def DescribeLakeFsDirSummary(request)
          body = send_request('DescribeLakeFsDirSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLakeFsDirSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户的托管存储信息

        # @param request: Request instance for DescribeLakeFsInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeLakeFsInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeLakeFsInfoResponse`
        def DescribeLakeFsInfo(request)
          body = send_request('DescribeLakeFsInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLakeFsInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取LakeFs上task执行结果访问信息

        # @param request: Request instance for DescribeLakeFsTaskResult.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeLakeFsTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeLakeFsTaskResultResponse`
        def DescribeLakeFsTaskResult(request)
          body = send_request('DescribeLakeFsTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLakeFsTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账户子账户信息

        # @param request: Request instance for DescribeMCPSubUin.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMCPSubUinRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMCPSubUinResponse`
        def DescribeMCPSubUin(request)
          body = send_request('DescribeMCPSubUin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMCPSubUinResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeTasks）用于查询任务列表

        # @param request: Request instance for DescribeMCPTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMCPTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMCPTaskResponse`
        def DescribeMCPTask(request)
          body = send_request('DescribeMCPTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMCPTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务结果查询

        # @param request: Request instance for DescribeMCPTaskResult.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMCPTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMCPTaskResultResponse`
        def DescribeMCPTaskResult(request)
          body = send_request('DescribeMCPTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMCPTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询训练实例的 MLflow 接入配置。
        # MlFlowMode 表示接入的 mlflow 模式，支持 local=Sidecar / remote=已有 Server / none=不启用。云上默认为 remote。
        # MlFlowUrl 表示访问的 MLflow URL。
        # RunID, ExperimentID 对应MLflow 实验追踪用的参数 RunID, ExperimentID

        # @param request: Request instance for DescribeMlFlowConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMlFlowConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMlFlowConfigResponse`
        def DescribeMlFlowConfig(request)
          body = send_request('DescribeMlFlowConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMlFlowConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 MlFlow Server 状态

        # @param request: Request instance for DescribeMlflowServer.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMlflowServerRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMlflowServerResponse`
        def DescribeMlflowServer(request)
          body = send_request('DescribeMlflowServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMlflowServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 MlFlow Server K8s 事件

        # @param request: Request instance for DescribeMlflowServerEvents.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMlflowServerEventsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMlflowServerEventsResponse`
        def DescribeMlflowServerEvents(request)
          body = send_request('DescribeMlflowServerEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMlflowServerEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # MlFlow Server Pod 列表响应

        # @param request: Request instance for DescribeMlflowServerPods.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeMlflowServerPodsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeMlflowServerPodsResponse`
        def DescribeMlflowServerPods(request)
          body = send_request('DescribeMlflowServerPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMlflowServerPodsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据模型 UID 查询该模型可选的推理引擎列表。后端自动根据模型的 SupportedEngines 声明或 ModelType 进行引擎过滤

        # @param request: Request instance for DescribeModelEngines.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeModelEnginesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeModelEnginesResponse`
        def DescribeModelEngines(request)
          body = send_request('DescribeModelEngines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelEnginesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定模型类型下可选的任务类型列表。

        # @param request: Request instance for DescribeModelTaskOptions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeModelTaskOptionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeModelTaskOptionsResponse`
        def DescribeModelTaskOptions(request)
          body = send_request('DescribeModelTaskOptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelTaskOptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据资源组获取spark session列表

        # @param request: Request instance for DescribeNativeSparkSessions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNativeSparkSessionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNativeSparkSessionsResponse`
        def DescribeNativeSparkSessions(request)
          body = send_request('DescribeNativeSparkSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNativeSparkSessionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网络配置列表

        # @param request: Request instance for DescribeNetworkConnections.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNetworkConnectionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNetworkConnectionsResponse`
        def DescribeNetworkConnections(request)
          body = send_request('DescribeNetworkConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeNotebookSession）用于查询交互式 session详情信息

        # @param request: Request instance for DescribeNotebookSession.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionResponse`
        def DescribeNotebookSession(request)
          body = send_request('DescribeNotebookSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志

        # @param request: Request instance for DescribeNotebookSessionLog.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionLogRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionLogResponse`
        def DescribeNotebookSessionLog(request)
          body = send_request('DescribeNotebookSessionLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSessionLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeNotebookSessionStatement）用于查询session 中执行任务的详情

        # @param request: Request instance for DescribeNotebookSessionStatement.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionStatementRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionStatementResponse`
        def DescribeNotebookSessionStatement(request)
          body = send_request('DescribeNotebookSessionStatement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSessionStatementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeNotebookSessionStatementSqlResult）用于获取statement运行结果。

        # @param request: Request instance for DescribeNotebookSessionStatementSqlResult.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionStatementSqlResultRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionStatementSqlResultResponse`
        def DescribeNotebookSessionStatementSqlResult(request)
          body = send_request('DescribeNotebookSessionStatementSqlResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSessionStatementSqlResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeNotebookSessionStatements）用于查询Session中执行的任务列表

        # @param request: Request instance for DescribeNotebookSessionStatements.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionStatementsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionStatementsResponse`
        def DescribeNotebookSessionStatements(request)
          body = send_request('DescribeNotebookSessionStatements', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSessionStatementsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeNotebookSessions）用于查询交互式 session列表

        # @param request: Request instance for DescribeNotebookSessions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeNotebookSessionsResponse`
        def DescribeNotebookSessions(request)
          body = send_request('DescribeNotebookSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotebookSessionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeOtherCHDFSBindingList）用于查询其他产品元数据加速桶绑定列表

        # @param request: Request instance for DescribeOtherCHDFSBindingList.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeOtherCHDFSBindingListRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeOtherCHDFSBindingListResponse`
        def DescribeOtherCHDFSBindingList(request)
          body = send_request('DescribeOtherCHDFSBindingList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOtherCHDFSBindingListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定资源分区详情

        # @param request: Request instance for DescribePartitionDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribePartitionDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribePartitionDetailResponse`
        def DescribePartitionDetail(request)
          body = send_request('DescribePartitionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePartitionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定分区的所有队列列表

        # @param request: Request instance for DescribePartitionQueues.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribePartitionQueuesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribePartitionQueuesResponse`
        def DescribePartitionQueues(request)
          body = send_request('DescribePartitionQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePartitionQueuesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分区列表信息

        # @param request: Request instance for DescribePartitions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribePartitionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribePartitionsResponse`
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

        # 获取零代码后训练的推荐参数和资源规格配置

        # @param request: Request instance for DescribePostTrainingPreset.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribePostTrainingPresetRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribePostTrainingPresetResponse`
        def DescribePostTrainingPreset(request)
          body = send_request('DescribePostTrainingPreset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostTrainingPresetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取推荐的高级参数

        # @param request: Request instance for DescribeRecommendedParams.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeRecommendedParamsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeRecommendedParamsResponse`
        def DescribeRecommendedParams(request)
          body = send_request('DescribeRecommendedParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecommendedParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口根据资源组ID查询资源组CU使用情况

        # @param request: Request instance for DescribeResourceGroupUsageInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeResourceGroupUsageInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeResourceGroupUsageInfoResponse`
        def DescribeResourceGroupUsageInfo(request)
          body = send_request('DescribeResourceGroupUsageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceGroupUsageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询结果下载任务

        # @param request: Request instance for DescribeResultDownload.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeResultDownloadRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeResultDownloadResponse`
        def DescribeResultDownload(request)
          body = send_request('DescribeResultDownload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResultDownloadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可售卖的地域列表，仅返回状态为AVAILABLE的地域

        # @param request: Request instance for DescribeSaleRegions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSaleRegionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSaleRegionsResponse`
        def DescribeSaleRegions(request)
          body = send_request('DescribeSaleRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSaleRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前地域可售卖的资源规格、最大配额，以及库存情况。StatusCategory 与 DescribePartitionAvailableQuota 数据同源，将实时可新增数量映射为库存分级；当请求 Region 与资源池实际部署地域不一致，或服务 cold-start 快照尚未就绪时，StatusCategory 为 null。

        # @param request: Request instance for DescribeSaleResourceInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSaleResourceInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSaleResourceInfoResponse`
        def DescribeSaleResourceInfo(request)
          body = send_request('DescribeSaleResourceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSaleResourceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeScripts）用于查询SQL脚本列表

        # @param request: Request instance for DescribeScripts.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeScriptsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeScriptsResponse`
        def DescribeScripts(request)
          body = send_request('DescribeScripts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScriptsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定大版本下所有小版本的所有内置镜像

        # @param request: Request instance for DescribeSessionImageVersion.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSessionImageVersionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSessionImageVersionResponse`
        def DescribeSessionImageVersion(request)
          body = send_request('DescribeSessionImageVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionImageVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询spark作业信息

        # @param request: Request instance for DescribeSparkAppJob.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobResponse`
        def DescribeSparkAppJob(request)
          body = send_request('DescribeSparkAppJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkAppJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询spark作业列表

        # @param request: Request instance for DescribeSparkAppJobs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppJobsResponse`
        def DescribeSparkAppJobs(request)
          body = send_request('DescribeSparkAppJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkAppJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Spark作业的运行任务列表

        # @param request: Request instance for DescribeSparkAppTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkAppTasksResponse`
        def DescribeSparkAppTasks(request)
          body = send_request('DescribeSparkAppTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkAppTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSparkSessionBatchSQL）用于查询Spark SQL批任务运行状态

        # @param request: Request instance for DescribeSparkSessionBatchSQL.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkSessionBatchSQLRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkSessionBatchSQLResponse`
        def DescribeSparkSessionBatchSQL(request)
          body = send_request('DescribeSparkSessionBatchSQL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkSessionBatchSQLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSparkSessionBatchSQLCost）用于查询Spark SQL批任务消耗

        # @param request: Request instance for DescribeSparkSessionBatchSQLCost.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkSessionBatchSQLCostRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkSessionBatchSQLCostResponse`
        def DescribeSparkSessionBatchSQLCost(request)
          body = send_request('DescribeSparkSessionBatchSQLCost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkSessionBatchSQLCostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSparkSessionBatchSqlLog）用于查询Spark SQL批任务日志

        # @param request: Request instance for DescribeSparkSessionBatchSqlLog.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSparkSessionBatchSqlLogRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSparkSessionBatchSqlLogResponse`
        def DescribeSparkSessionBatchSqlLog(request)
          body = send_request('DescribeSparkSessionBatchSqlLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkSessionBatchSqlLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询标准引擎资源组信息

        # @param request: Request instance for DescribeStandardEngineResourceGroupConfigInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeStandardEngineResourceGroupConfigInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeStandardEngineResourceGroupConfigInfoResponse`
        def DescribeStandardEngineResourceGroupConfigInfo(request)
          body = send_request('DescribeStandardEngineResourceGroupConfigInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStandardEngineResourceGroupConfigInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询标准引擎资源组信息

        # @param request: Request instance for DescribeStandardEngineResourceGroups.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeStandardEngineResourceGroupsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeStandardEngineResourceGroupsResponse`
        def DescribeStandardEngineResourceGroups(request)
          body = send_request('DescribeStandardEngineResourceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStandardEngineResourceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询计算结果存储位置。

        # @param request: Request instance for DescribeStoreLocation.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeStoreLocationRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeStoreLocationResponse`
        def DescribeStoreLocation(request)
          body = send_request('DescribeStoreLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStoreLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSubUserAccessPolicy）用于开通了第三方平台访问的用户，查询其子用户的访问策略

        # @param request: Request instance for DescribeSubUserAccessPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeSubUserAccessPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeSubUserAccessPolicyResponse`
        def DescribeSubUserAccessPolicy(request)
          body = send_request('DescribeSubUserAccessPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubUserAccessPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 是否成功开通TCLake

        # @param request: Request instance for DescribeTCLakeMetaInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTCLakeMetaInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTCLakeMetaInstanceResponse`
        def DescribeTCLakeMetaInstance(request)
          body = send_request('DescribeTCLakeMetaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTCLakeMetaInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTable），用于查询单个表的详细信息。

        # @param request: Request instance for DescribeTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTableResponse`
        def DescribeTable(request)
          body = send_request('DescribeTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTablePartitions）用于查询数据表分区信息

        # @param request: Request instance for DescribeTablePartitions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTablePartitionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTablePartitionsResponse`
        def DescribeTablePartitions(request)
          body = send_request('DescribeTablePartitions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablePartitionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTables）用于查询数据表列表。

        # @param request: Request instance for DescribeTables.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTablesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTablesResponse`
        def DescribeTables(request)
          body = send_request('DescribeTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTables）用于查询数据表名称列表

        # @param request: Request instance for DescribeTablesName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTablesNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTablesNameResponse`
        def DescribeTablesName(request)
          body = send_request('DescribeTablesName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeTaskDetail）用于查询历史任务详情

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskDetailResponse`
        def DescribeTaskDetail(request)
          body = send_request('DescribeTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribleTasks）用于查询任务列表

        # @param request: Request instance for DescribeTaskList.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskListRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskListResponse`
        def DescribeTaskList(request)
          body = send_request('DescribeTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTaskLog）用于获取spark 作业任务日志详情

        # @param request: Request instance for DescribeTaskLog.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskLogRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskLogResponse`
        def DescribeTaskLog(request)
          body = send_request('DescribeTaskLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务监控指标信息

        # @param request: Request instance for DescribeTaskMonitorInfos.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskMonitorInfosRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskMonitorInfosResponse`
        def DescribeTaskMonitorInfos(request)
          body = send_request('DescribeTaskMonitorInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskMonitorInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回任务洞察资源用量

        # @param request: Request instance for DescribeTaskResourceUsage.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskResourceUsageRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskResourceUsageResponse`
        def DescribeTaskResourceUsage(request)
          body = send_request('DescribeTaskResourceUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResourceUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询任务结果，仅支持30天以内的任务查询结果，且返回数据大小超过近50M会进行截断。

        # @param request: Request instance for DescribeTaskResult.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTaskResultResponse`
        def DescribeTaskResult(request)
          body = send_request('DescribeTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeTasks）用于查询任务列表

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于洞察分析列表

        # @param request: Request instance for DescribeTasksAnalysis.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTasksAnalysisRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTasksAnalysisResponse`
        def DescribeTasksAnalysis(request)
          body = send_request('DescribeTasksAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksAnalysisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeTasksCostInfo）用于查询任务消耗

        # @param request: Request instance for DescribeTasksCostInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTasksCostInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTasksCostInfoResponse`
        def DescribeTasksCostInfo(request)
          body = send_request('DescribeTasksCostInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksCostInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看任务概览页

        # @param request: Request instance for DescribeTasksOverview.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTasksOverviewRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTasksOverviewResponse`
        def DescribeTasksOverview(request)
          body = send_request('DescribeTasksOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RegisterThirdPartyAccessUser）查询开通第三方平台访问的用户信息

        # @param request: Request instance for DescribeThirdPartyAccessUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeThirdPartyAccessUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeThirdPartyAccessUserResponse`
        def DescribeThirdPartyAccessUser(request)
          body = send_request('DescribeThirdPartyAccessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeThirdPartyAccessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按 EMR 集群 ID 查询已导入的 TKE 集群详情，返回 tke_cluster 表中该条导入记录的核心字段，并对 LoadBalancerId / PrometheusInstanceId / ContainerLogTopicId 三个 ID 分别回查腾讯云 API 获取对应名称一并返回。名称查询失败或查不到时对应字段返回空字符串，不影响主接口返回。

        # @param request: Request instance for DescribeTkeClusterImportInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTkeClusterImportInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTkeClusterImportInfoResponse`
        def DescribeTkeClusterImportInfo(request)
          body = send_request('DescribeTkeClusterImportInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTkeClusterImportInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出训练实例 Checkpoint 文件列表的响应

        # @param request: Request instance for DescribeTrainingCheckpoints.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTrainingCheckpointsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTrainingCheckpointsResponse`
        def DescribeTrainingCheckpoints(request)
          body = send_request('DescribeTrainingCheckpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingCheckpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询训练实例详情

        # @param request: Request instance for DescribeTrainingJobInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTrainingJobInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTrainingJobInstanceResponse`
        def DescribeTrainingJobInstance(request)
          body = send_request('DescribeTrainingJobInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingJobInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取训练作业配置详情

        # @param request: Request instance for DescribeTrainingJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeTrainingJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeTrainingJobSpecResponse`
        def DescribeTrainingJobSpec(request)
          body = send_request('DescribeTrainingJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrainingJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取UDF权限信息

        # @param request: Request instance for DescribeUDFPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUDFPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUDFPolicyResponse`
        def DescribeUDFPolicy(request)
          body = send_request('DescribeUDFPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUDFPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可更新配置的引擎列表

        # @param request: Request instance for DescribeUpdatableDataEngines.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUpdatableDataEnginesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUpdatableDataEnginesResponse`
        def DescribeUpdatableDataEngines(request)
          body = send_request('DescribeUpdatableDataEngines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpdatableDataEnginesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户自定义引擎参数

        # @param request: Request instance for DescribeUserDataEngineConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUserDataEngineConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUserDataEngineConfigResponse`
        def DescribeUserDataEngineConfig(request)
          body = send_request('DescribeUserDataEngineConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserDataEngineConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户详细信息

        # @param request: Request instance for DescribeUserInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUserInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUserInfoResponse`
        def DescribeUserInfo(request)
          body = send_request('DescribeUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeUserRegisterTime）用于查询当前用户注册时间，并判断是否是老用户。

        # @param request: Request instance for DescribeUserRegisterTime.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUserRegisterTimeRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUserRegisterTimeResponse`
        def DescribeUserRegisterTime(request)
          body = send_request('DescribeUserRegisterTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserRegisterTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列举用户角色信息

        # @param request: Request instance for DescribeUserRoles.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUserRolesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUserRolesResponse`
        def DescribeUserRoles(request)
          body = send_request('DescribeUserRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户类型

        # @param request: Request instance for DescribeUserType.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUserTypeRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUserTypeResponse`
        def DescribeUserType(request)
          body = send_request('DescribeUserType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户vpc到引擎网络的连接

        # @param request: Request instance for DescribeUserVpcConnection.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUserVpcConnectionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUserVpcConnectionResponse`
        def DescribeUserVpcConnection(request)
          body = send_request('DescribeUserVpcConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserVpcConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户列表信息

        # @param request: Request instance for DescribeUsers.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeUsersResponse`
        def DescribeUsers(request)
          body = send_request('DescribeUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeViews）用于查询数据视图列表。

        # @param request: Request instance for DescribeViews.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeViewsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeViewsResponse`
        def DescribeViews(request)
          body = send_request('DescribeViews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeViewsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取工作组详细信息

        # @param request: Request instance for DescribeWorkGroupInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeWorkGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeWorkGroupInfoResponse`
        def DescribeWorkGroupInfo(request)
          body = send_request('DescribeWorkGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取工作组列表

        # @param request: Request instance for DescribeWorkGroups.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DescribeWorkGroupsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DescribeWorkGroupsResponse`
        def DescribeWorkGroups(request)
          body = send_request('DescribeWorkGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑用户鉴权策略

        # @param request: Request instance for DetachUserPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DetachUserPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DetachUserPolicyResponse`
        def DetachUserPolicy(request)
          body = send_request('DetachUserPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachUserPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑工作组鉴权策略

        # @param request: Request instance for DetachWorkGroupPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DetachWorkGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DetachWorkGroupPolicyResponse`
        def DetachWorkGroupPolicy(request)
          body = send_request('DetachWorkGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachWorkGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据删除库

        # @param request: Request instance for DropDMSDatabase.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DropDMSDatabaseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DropDMSDatabaseResponse`
        def DropDMSDatabase(request)
          body = send_request('DropDMSDatabase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DropDMSDatabaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据删除分区

        # @param request: Request instance for DropDMSPartitions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DropDMSPartitionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DropDMSPartitionsResponse`
        def DropDMSPartitions(request)
          body = send_request('DropDMSPartitions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DropDMSPartitionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DMS元数据删除表

        # @param request: Request instance for DropDMSTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::DropDMSTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::DropDMSTableResponse`
        def DropDMSTable(request)
          body = send_request('DropDMSTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DropDMSTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成创建托管表语句

        # @param request: Request instance for GenerateCreateMangedTableSql.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GenerateCreateMangedTableSqlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GenerateCreateMangedTableSqlResponse`
        def GenerateCreateMangedTableSql(request)
          body = send_request('GenerateCreateMangedTableSql', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateCreateMangedTableSqlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 建表

        # @param request: Request instance for GenerateInternalTable.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GenerateInternalTableRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GenerateInternalTableResponse`
        def GenerateInternalTable(request)
          body = send_request('GenerateInternalTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateInternalTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据 exampleId 获取单个案例详情

        # @param request: Request instance for GetExampleDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetExampleDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetExampleDetailResponse`
        def GetExampleDetail(request)
          body = send_request('GetExampleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetExampleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个模型详情

        # @param request: Request instance for GetInferenceModel.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetInferenceModelRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetInferenceModelResponse`
        def GetInferenceModel(request)
          body = send_request('GetInferenceModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInferenceModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个推理服务详情

        # @param request: Request instance for GetInferenceService.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetInferenceServiceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetInferenceServiceResponse`
        def GetInferenceService(request)
          body = send_request('GetInferenceService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInferenceServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据配置ID获取作业配置详情

        # @param request: Request instance for GetJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetJobSpecResponse`
        def GetJobSpec(request)
          body = send_request('GetJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实验室详情

        # @param request: Request instance for GetLabDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabDetailResponse`
        def GetLabDetail(request)
          body = send_request('GetLabDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实验室的事件流（基于 K8s Event + CLS 日志）

        # @param request: Request instance for GetLabEvent.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabEventRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabEventResponse`
        def GetLabEvent(request)
          body = send_request('GetLabEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实验室的状态变更历史记录

        # @param request: Request instance for GetLabHistory.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabHistoryRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabHistoryResponse`
        def GetLabHistory(request)
          body = send_request('GetLabHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据实验室Pod的YAML内容

        # @param request: Request instance for GetLabPodYaml.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabPodYamlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabPodYamlResponse`
        def GetLabPodYaml(request)
          body = send_request('GetLabPodYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabPodYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据实验室的Pod列表

        # @param request: Request instance for GetLabPods.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabPodsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabPodsResponse`
        def GetLabPods(request)
          body = send_request('GetLabPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabPodsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实验室ide访问地址

        # @param request: Request instance for GetLabServiceUrls.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabServiceUrlsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabServiceUrlsResponse`
        def GetLabServiceUrls(request)
          body = send_request('GetLabServiceUrls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabServiceUrlsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据实验室对应的RayCluster YAML内容

        # @param request: Request instance for GetLabYaml.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetLabYamlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetLabYamlResponse`
        def GetLabYaml(request)
          body = send_request('GetLabYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模型 config.json 配置（默认最新版本）

        # @param request: Request instance for GetModelConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetModelConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetModelConfigResponse`
        def GetModelConfig(request)
          body = send_request('GetModelConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetModelConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模型文件树（默认最新版本）

        # @param request: Request instance for GetModelFiles.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetModelFilesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetModelFilesResponse`
        def GetModelFiles(request)
          body = send_request('GetModelFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetModelFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模型 README 信息（默认最新版本）

        # @param request: Request instance for GetModelReadme.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetModelReadmeRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetModelReadmeResponse`
        def GetModelReadme(request)
          body = send_request('GetModelReadme', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetModelReadmeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # GetOptimizerPolicy

        # @param request: Request instance for GetOptimizerPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetOptimizerPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetOptimizerPolicyResponse`
        def GetOptimizerPolicy(request)
          body = send_request('GetOptimizerPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOptimizerPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Ray集群详情请求

        # @param request: Request instance for GetRayCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayClusterResponse`
        def GetRayCluster(request)
          body = send_request('GetRayCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Ray集群的事件流（基于 K8s Event + CLS 日志）

        # @param request: Request instance for GetRayClusterEvent.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayClusterEventRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayClusterEventResponse`
        def GetRayClusterEvent(request)
          body = send_request('GetRayClusterEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayClusterEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群状态历史

        # @param request: Request instance for GetRayClusterHistory.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayClusterHistoryRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayClusterHistoryResponse`
        def GetRayClusterHistory(request)
          body = send_request('GetRayClusterHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayClusterHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群Pod的YAML内容

        # @param request: Request instance for GetRayClusterPodYaml.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayClusterPodYamlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayClusterPodYamlResponse`
        def GetRayClusterPodYaml(request)
          body = send_request('GetRayClusterPodYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayClusterPodYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群的Pod列表

        # @param request: Request instance for GetRayClusterPods.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayClusterPodsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayClusterPodsResponse`
        def GetRayClusterPods(request)
          body = send_request('GetRayClusterPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayClusterPodsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取RayCluster的YAML内容

        # @param request: Request instance for GetRayClusterYaml.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayClusterYamlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayClusterYamlResponse`
        def GetRayClusterYaml(request)
          body = send_request('GetRayClusterYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayClusterYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务ID获取Ray任务详情

        # @param request: Request instance for GetRayJob.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobResponse`
        def GetRayJob(request)
          body = send_request('GetRayJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过 ResourceManager 调用 CLS SearchLog API 查询作业相关日志。不返回总数，使用 Context 进行翻页，ListOver 标识是否还有更多数据。

        # @param request: Request instance for GetRayJobEvent.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobEventRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobEventResponse`
        def GetRayJobEvent(request)
          body = send_request('GetRayJobEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取作业事件日志

        # @param request: Request instance for GetRayJobEventLog.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobEventLogRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobEventLogResponse`
        def GetRayJobEventLog(request)
          body = send_request('GetRayJobEventLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobEventLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务ID获取Ray任务的历史执行记录

        # @param request: Request instance for GetRayJobHistory.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobHistoryRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobHistoryResponse`
        def GetRayJobHistory(request)
          body = send_request('GetRayJobHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Pod的YAML内容

        # @param request: Request instance for GetRayJobPodYaml.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobPodYamlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobPodYamlResponse`
        def GetRayJobPodYaml(request)
          body = send_request('GetRayJobPodYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobPodYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取作业的Pod列表

        # @param request: Request instance for GetRayJobPods.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobPodsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobPodsResponse`
        def GetRayJobPods(request)
          body = send_request('GetRayJobPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobPodsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取RayJob的YAML内容

        # @param request: Request instance for GetRayJobYaml.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetRayJobYamlRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetRayJobYamlResponse`
        def GetRayJobYaml(request)
          body = send_request('GetRayJobYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRayJobYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源配置模板详情

        # @param request: Request instance for GetResourceConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GetResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GetResourceConfigResponse`
        def GetResourceConfig(request)
          body = send_request('GetResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetResourceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 授权访问DLC Catalog

        # @param request: Request instance for GrantDLCCatalogAccess.
        # @type request: :class:`Tencentcloud::dlc::V20210125::GrantDLCCatalogAccessRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::GrantDLCCatalogAccessResponse`
        def GrantDLCCatalogAccess(request)
          body = send_request('GrantDLCCatalogAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GrantDLCCatalogAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过 ClusterType 区分两种导入模式：TKE（直接导入裸 TKE 集群，ClusterId 为 TKE 集群 ID）或 EMR（通过 EMR 集群导入，ClusterId 为 EMR 集群 ID，底层会关联查询对应的 TKE 集群 ID 一并落库）。两种模式均将 TKE 集群 ID 存入 tke_cluster 表。接口是异步的，返回的 WorkflowId 可用于轮询注册进度；ResourcePoolId / ResourcePoolCode 为资源池的唯一标识。

        # @param request: Request instance for ImportExternalCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ImportExternalClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ImportExternalClusterResponse`
        def ImportExternalCluster(request)
          body = send_request('ImportExternalCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportExternalClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将用户在控制台选择的 EMR-TKE 集群及配套的 COS Bucket、Prometheus 实例、负载均衡、容器日志主题等资源，注册为 DLC 的外部资源池（EXTERNAL_TKE）。接口是异步的，返回的 WorkflowId 可用于轮询注册进度；ResourcePoolId / ResourcePoolCode 为资源池的唯一标识。

        # @param request: Request instance for ImportTkeCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ImportTkeClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ImportTkeClusterResponse`
        def ImportTkeCluster(request)
          body = send_request('ImportTkeCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportTkeClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通TCLake

        # @param request: Request instance for InitializeTCLake.
        # @type request: :class:`Tencentcloud::dlc::V20210125::InitializeTCLakeRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::InitializeTCLakeResponse`
        def InitializeTCLake(request)
          body = send_request('InitializeTCLake', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitializeTCLakeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动标准引擎资源组

        # @param request: Request instance for LaunchStandardEngineResourceGroups.
        # @type request: :class:`Tencentcloud::dlc::V20210125::LaunchStandardEngineResourceGroupsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::LaunchStandardEngineResourceGroupsResponse`
        def LaunchStandardEngineResourceGroups(request)
          body = send_request('LaunchStandardEngineResourceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LaunchStandardEngineResourceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出 API Key

        # @param request: Request instance for ListApiKeys.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListApiKeysRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListApiKeysResponse`
        def ListApiKeys(request)
          body = send_request('ListApiKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListApiKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出空闲 API Key（未绑定服务）

        # @param request: Request instance for ListAvailableApiKeys.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListAvailableApiKeysRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListAvailableApiKeysResponse`
        def ListAvailableApiKeys(request)
          body = send_request('ListAvailableApiKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAvailableApiKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询评测排行榜（所有模型的评测汇总数据）

        # @param request: Request instance for ListBenchmarkSummary.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListBenchmarkSummaryRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListBenchmarkSummaryResponse`
        def ListBenchmarkSummary(request)
          body = send_request('ListBenchmarkSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListBenchmarkSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出性能评测任务

        # @param request: Request instance for ListBenchmarkTasks.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListBenchmarkTasksRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListBenchmarkTasksResponse`
        def ListBenchmarkTasks(request)
          body = send_request('ListBenchmarkTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListBenchmarkTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出所有集群组

        # @param request: Request instance for ListClusterGroups.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListClusterGroupsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListClusterGroupsResponse`
        def ListClusterGroups(request)
          body = send_request('ListClusterGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListClusterGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出部署的副本列表

        # @param request: Request instance for ListDeploymentReplicas.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListDeploymentReplicasRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListDeploymentReplicasResponse`
        def ListDeploymentReplicas(request)
          body = send_request('ListDeploymentReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDeploymentReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出推理服务的部署列表

        # @param request: Request instance for ListDeployments.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListDeploymentsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListDeploymentsResponse`
        def ListDeployments(request)
          body = send_request('ListDeployments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDeploymentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有案例分类

        # @param request: Request instance for ListExampleCategories.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListExampleCategoriesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListExampleCategoriesResponse`
        def ListExampleCategories(request)
          body = send_request('ListExampleCategories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListExampleCategoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有案例分类

        # @param request: Request instance for ListExampleDifficulties.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListExampleDifficultiesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListExampleDifficultiesResponse`
        def ListExampleDifficulties(request)
          body = send_request('ListExampleDifficulties', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListExampleDifficultiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回标签去重列表，按出现频次从高到低排序。

        # @param request: Request instance for ListExampleTags.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListExampleTagsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListExampleTagsResponse`
        def ListExampleTags(request)
          body = send_request('ListExampleTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListExampleTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 案例列表

        # @param request: Request instance for ListExamples.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListExamplesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListExamplesResponse`
        def ListExamples(request)
          body = send_request('ListExamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListExamplesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出所有镜像

        # @param request: Request instance for ListImages.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListImagesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListImagesResponse`
        def ListImages(request)
          body = send_request('ListImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出推理引擎

        # @param request: Request instance for ListInferenceEngines.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListInferenceEnginesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListInferenceEnginesResponse`
        def ListInferenceEngines(request)
          body = send_request('ListInferenceEngines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListInferenceEnginesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出推理模型（支持关键词过滤 + 分页）

        # @param request: Request instance for ListInferenceModels.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListInferenceModelsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListInferenceModelsResponse`
        def ListInferenceModels(request)
          body = send_request('ListInferenceModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListInferenceModelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出推理服务（支持关键词和状态过滤 + 分页）

        # @param request: Request instance for ListInferenceServices.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListInferenceServicesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListInferenceServicesResponse`
        def ListInferenceServices(request)
          body = send_request('ListInferenceServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListInferenceServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询作业配置列表

        # @param request: Request instance for ListJobSpecs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListJobSpecsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListJobSpecsResponse`
        def ListJobSpecs(request)
          body = send_request('ListJobSpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListJobSpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询某作业配置下产生的所有作业实例

        # @param request: Request instance for ListJobsBySpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListJobsBySpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListJobsBySpecResponse`
        def ListJobsBySpec(request)
          body = send_request('ListJobsBySpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListJobsBySpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出实验室列表

        # @param request: Request instance for ListLabs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListLabsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListLabsResponse`
        def ListLabs(request)
          body = send_request('ListLabs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListLabsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 MlFlow Server 关联的训练实例列表

        # @param request: Request instance for ListMlflowServerTrainingInstances.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListMlflowServerTrainingInstancesRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListMlflowServerTrainingInstancesResponse`
        def ListMlflowServerTrainingInstances(request)
          body = send_request('ListMlflowServerTrainingInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListMlflowServerTrainingInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出 MlFlow Server

        # @param request: Request instance for ListMlflowServers.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListMlflowServersRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListMlflowServersResponse`
        def ListMlflowServers(request)
          body = send_request('ListMlflowServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListMlflowServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出模型所有版本

        # @param request: Request instance for ListModelVersions.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListModelVersionsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListModelVersionsResponse`
        def ListModelVersions(request)
          body = send_request('ListModelVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListModelVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定 Ray 集群下提交的所有作业，分页返回。底层委托给 ListRayJobs，强制注入 ClusterId 作为过滤条件。

        # @param request: Request instance for ListRayClusterJobs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListRayClusterJobsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListRayClusterJobsResponse`
        def ListRayClusterJobs(request)
          body = send_request('ListRayClusterJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRayClusterJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出所有集群

        # @param request: Request instance for ListRayClusters.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListRayClustersRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListRayClustersResponse`
        def ListRayClusters(request)
          body = send_request('ListRayClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRayClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据集群ID列出所有Ray任务

        # @param request: Request instance for ListRayJobs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListRayJobsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListRayJobsResponse`
        def ListRayJobs(request)
          body = send_request('ListRayJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRayJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出用户在指定地域下的 CLB 负载均衡实例，返回实例 ID、名称与网络类型（OPEN/INTERNAL）。

        # @param request: Request instance for ListRegionLbs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListRegionLbsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListRegionLbsResponse`
        def ListRegionLbs(request)
          body = send_request('ListRegionLbs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRegionLbsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出所有资源配置模板

        # @param request: Request instance for ListResourceConfigs.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListResourceConfigsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListResourceConfigsResponse`
        def ListResourceConfigs(request)
          body = send_request('ListResourceConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListResourceConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出指定推理服务绑定的 API Key

        # @param request: Request instance for ListServiceApiKeys.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListServiceApiKeysRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListServiceApiKeysResponse`
        def ListServiceApiKeys(request)
          body = send_request('ListServiceApiKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListServiceApiKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListTaskJobLogDetail）用于获取spark 作业任务日志详情

        # @param request: Request instance for ListTaskJobLogDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListTaskJobLogDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListTaskJobLogDetailResponse`
        def ListTaskJobLogDetail(request)
          body = send_request('ListTaskJobLogDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTaskJobLogDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ListTaskJobLogName）用于获取spark-jar日志名称列表

        # @param request: Request instance for ListTaskJobLogName.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListTaskJobLogNameRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListTaskJobLogNameResponse`
        def ListTaskJobLogName(request)
          body = send_request('ListTaskJobLogName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTaskJobLogNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取tke纳管cos列表

        # @param request: Request instance for ListTkeCosBuckets.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListTkeCosBucketsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListTkeCosBucketsResponse`
        def ListTkeCosBuckets(request)
          body = send_request('ListTkeCosBuckets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTkeCosBucketsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出训练作业实例

        # @param request: Request instance for ListTrainingJobInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListTrainingJobInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListTrainingJobInstanceResponse`
        def ListTrainingJobInstance(request)
          body = send_request('ListTrainingJobInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTrainingJobInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取训练作业配置的列表。

        # @param request: Request instance for ListTrainingJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ListTrainingJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ListTrainingJobSpecResponse`
        def ListTrainingJobSpec(request)
          body = send_request('ListTrainingJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTrainingJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 元数据锁

        # @param request: Request instance for LockMetaData.
        # @type request: :class:`Tencentcloud::dlc::V20210125::LockMetaDataRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::LockMetaDataResponse`
        def LockMetaData(request)
          body = send_request('LockMetaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LockMetaDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改sql查询界面高级设置。

        # @param request: Request instance for ModifyAdvancedStoreLocation.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyAdvancedStoreLocationRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyAdvancedStoreLocationResponse`
        def ModifyAdvancedStoreLocation(request)
          body = send_request('ModifyAdvancedStoreLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAdvancedStoreLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群的调度优先级（1-9，数字越大优先级越高）

        # @param request: Request instance for ModifyClusterPriority.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyClusterPriorityRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyClusterPriorityResponse`
        def ModifyClusterPriority(request)
          body = send_request('ModifyClusterPriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterPriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改引擎描述信息

        # @param request: Request instance for ModifyDataEngineDescription.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyDataEngineDescriptionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyDataEngineDescriptionResponse`
        def ModifyDataEngineDescription(request)
          body = send_request('ModifyDataEngineDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataEngineDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改数据治理事件阈值

        # @param request: Request instance for ModifyGovernEventRule.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyGovernEventRuleRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyGovernEventRuleResponse`
        def ModifyGovernEventRule(request)
          body = send_request('ModifyGovernEventRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGovernEventRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实验室的调度优先级（1-9，数字越大优先级越高）

        # @param request: Request instance for ModifyLabPriority.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyLabPriorityRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyLabPriorityResponse`
        def ModifyLabPriority(request)
          body = send_request('ModifyLabPriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLabPriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分区描述

        # @param request: Request instance for ModifyPartitionDescription.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyPartitionDescriptionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyPartitionDescriptionResponse`
        def ModifyPartitionDescription(request)
          body = send_request('ModifyPartitionDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPartitionDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑资源队列：根据队列ID修改指定资源队列的名称、描述、资源规格列表和队列类型等信息。

        # @param request: Request instance for ModifyPartitionQueue.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyPartitionQueueRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyPartitionQueueResponse`
        def ModifyPartitionQueue(request)
          body = send_request('ModifyPartitionQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPartitionQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新spark作业

        # @param request: Request instance for ModifySparkApp.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppResponse`
        def ModifySparkApp(request)
          body = send_request('ModifySparkApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySparkAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifySparkAppBatch）用于批量修改Spark作业参数配置

        # @param request: Request instance for ModifySparkAppBatch.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppBatchRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppBatchResponse`
        def ModifySparkAppBatch(request)
          body = send_request('ModifySparkAppBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySparkAppBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新tdlc spark作业

        # @param request: Request instance for ModifySparkAppForTDLC.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppForTDLCRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifySparkAppForTDLCResponse`
        def ModifySparkAppForTDLC(request)
          body = send_request('ModifySparkAppForTDLC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySparkAppForTDLCResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 就地更新训练作业配置

        # @param request: Request instance for ModifyTrainingJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyTrainingJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyTrainingJobSpecResponse`
        def ModifyTrainingJobSpec(request)
          body = send_request('ModifyTrainingJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTrainingJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户信息

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyUserResponse`
        def ModifyUser(request)
          body = send_request('ModifyUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户类型。只有管理员用户能够调用该接口进行操作

        # @param request: Request instance for ModifyUserType.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyUserTypeRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyUserTypeResponse`
        def ModifyUserType(request)
          body = send_request('ModifyUserType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改工作组信息

        # @param request: Request instance for ModifyWorkGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ModifyWorkGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ModifyWorkGroupResponse`
        def ModifyWorkGroup(request)
          body = send_request('ModifyWorkGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停标准引擎session

        # @param request: Request instance for PauseStandardEngineResourceGroups.
        # @type request: :class:`Tencentcloud::dlc::V20210125::PauseStandardEngineResourceGroupsRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::PauseStandardEngineResourceGroupsResponse`
        def PauseStandardEngineResourceGroups(request)
          body = send_request('PauseStandardEngineResourceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseStandardEngineResourceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回指定时间范围内所有推理服务的聚合 KPI 值。

        # @param request: Request instance for QueryDashboardOverview.
        # @type request: :class:`Tencentcloud::dlc::V20210125::QueryDashboardOverviewRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::QueryDashboardOverviewResponse`
        def QueryDashboardOverview(request)
          body = send_request('QueryDashboardOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDashboardOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询监控大盘服务列表

        # @param request: Request instance for QueryDashboardServiceList.
        # @type request: :class:`Tencentcloud::dlc::V20210125::QueryDashboardServiceListRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::QueryDashboardServiceListResponse`
        def QueryDashboardServiceList(request)
          body = send_request('QueryDashboardServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDashboardServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（QueryInternalTableWarehouse）用于获取原生表warehouse路径

        # @param request: Request instance for QueryInternalTableWarehouse.
        # @type request: :class:`Tencentcloud::dlc::V20210125::QueryInternalTableWarehouseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::QueryInternalTableWarehouseResponse`
        def QueryInternalTableWarehouse(request)
          body = send_request('QueryInternalTableWarehouse', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryInternalTableWarehouseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询监控概览数据（瞬时值）

        # @param request: Request instance for QueryMonitorOverview.
        # @type request: :class:`Tencentcloud::dlc::V20210125::QueryMonitorOverviewRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::QueryMonitorOverviewResponse`
        def QueryMonitorOverview(request)
          body = send_request('QueryMonitorOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMonitorOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务结果查询

        # @param request: Request instance for QueryResult.
        # @type request: :class:`Tencentcloud::dlc::V20210125::QueryResultRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::QueryResultResponse`
        def QueryResult(request)
          body = send_request('QueryResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（QueryTaskCostDetail）用于查询任务消耗明细

        # @param request: Request instance for QueryTaskCostDetail.
        # @type request: :class:`Tencentcloud::dlc::V20210125::QueryTaskCostDetailRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::QueryTaskCostDetailResponse`
        def QueryTaskCostDetail(request)
          body = send_request('QueryTaskCostDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTaskCostDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RegisterThirdPartyAccessUser）用于开通第三方平台访问

        # @param request: Request instance for RegisterThirdPartyAccessUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RegisterThirdPartyAccessUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RegisterThirdPartyAccessUserResponse`
        def RegisterThirdPartyAccessUser(request)
          body = send_request('RegisterThirdPartyAccessUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterThirdPartyAccessUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续费数据引擎

        # @param request: Request instance for RenewDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RenewDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RenewDataEngineResponse`
        def RenewDataEngine(request)
          body = send_request('RenewDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上报元数据心跳

        # @param request: Request instance for ReportHeartbeatMetaData.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ReportHeartbeatMetaDataRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ReportHeartbeatMetaDataResponse`
        def ReportHeartbeatMetaData(request)
          body = send_request('ReportHeartbeatMetaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportHeartbeatMetaDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新运行性能评测任务

        # @param request: Request instance for RerunBenchmarkTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RerunBenchmarkTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RerunBenchmarkTaskResponse`
        def RerunBenchmarkTask(request)
          body = send_request('RerunBenchmarkTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunBenchmarkTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启引擎

        # @param request: Request instance for RestartDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RestartDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RestartDataEngineResponse`
        def RestartDataEngine(request)
          body = send_request('RestartDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 再次运行部署（以当前配置重新部署）

        # @param request: Request instance for RestartDeployment.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RestartDeploymentRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RestartDeploymentResponse`
        def RestartDeployment(request)
          body = send_request('RestartDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启推理服务（操作所有部署）。

        # @param request: Request instance for RestartInferenceService.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RestartInferenceServiceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RestartInferenceServiceResponse`
        def RestartInferenceService(request)
          body = send_request('RestartInferenceService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartInferenceServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 断点续训（克隆实例）

        # @param request: Request instance for ResumeTrainingJobInstance.
        # @type request: :class:`Tencentcloud::dlc::V20210125::ResumeTrainingJobInstanceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::ResumeTrainingJobInstanceResponse`
        def ResumeTrainingJobInstance(request)
          body = send_request('ResumeTrainingJobInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeTrainingJobInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 撤销DLC Catalog访问权限

        # @param request: Request instance for RevokeDLCCatalogAccess.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RevokeDLCCatalogAccessRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RevokeDLCCatalogAccessResponse`
        def RevokeDLCCatalogAccess(request)
          body = send_request('RevokeDLCCatalogAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeDLCCatalogAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回滚引擎镜像版本

        # @param request: Request instance for RollbackDataEngineImage.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RollbackDataEngineImageRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RollbackDataEngineImageResponse`
        def RollbackDataEngineImage(request)
          body = send_request('RollbackDataEngineImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackDataEngineImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基于指定作业配置提交一次作业实例

        # @param request: Request instance for RunJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::RunJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::RunJobSpecResponse`
        def RunJobSpec(request)
          body = send_request('RunJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置优化策略的接口

        # @param request: Request instance for SetOptimizerPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::SetOptimizerPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::SetOptimizerPolicyResponse`
        def SetOptimizerPolicy(request)
          body = send_request('SetOptimizerPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOptimizerPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动实验室

        # @param request: Request instance for StartLab.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StartLabRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StartLabResponse`
        def StartLab(request)
          body = send_request('StartLab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartLabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动 MlFlow Server（apply K8s 资源，幂等可重试）

        # @param request: Request instance for StartMlflowServer.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StartMlflowServerRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StartMlflowServerResponse`
        def StartMlflowServer(request)
          body = send_request('StartMlflowServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMlflowServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动集群

        # @param request: Request instance for StartRayCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StartRayClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StartRayClusterResponse`
        def StartRayCluster(request)
          body = send_request('StartRayCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartRayClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止性能评测任务

        # @param request: Request instance for StopBenchmarkTask.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StopBenchmarkTaskRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StopBenchmarkTaskResponse`
        def StopBenchmarkTask(request)
          body = send_request('StopBenchmarkTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopBenchmarkTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止部署

        # @param request: Request instance for StopDeployment.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StopDeploymentRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StopDeploymentResponse`
        def StopDeployment(request)
          body = send_request('StopDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止推理服务（操作所有部署）。

        # @param request: Request instance for StopInferenceService.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StopInferenceServiceRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StopInferenceServiceResponse`
        def StopInferenceService(request)
          body = send_request('StopInferenceService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInferenceServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止实验室

        # @param request: Request instance for StopLab.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StopLabRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StopLabResponse`
        def StopLab(request)
          body = send_request('StopLab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopLabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止 MlFlow Server

        # @param request: Request instance for StopMlflowServer.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StopMlflowServerRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StopMlflowServerResponse`
        def StopMlflowServer(request)
          body = send_request('StopMlflowServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMlflowServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止集群

        # @param request: Request instance for StopRayCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::StopRayClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::StopRayClusterResponse`
        def StopRayCluster(request)
          body = send_request('StopRayCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRayClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 断点续训（克隆实例）

        # @param request: Request instance for SubmitTrainingJob.
        # @type request: :class:`Tencentcloud::dlc::V20210125::SubmitTrainingJobRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::SubmitTrainingJobResponse`
        def SubmitTrainingJob(request)
          body = send_request('SubmitTrainingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTrainingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于控制挂起或启动数据引擎

        # @param request: Request instance for SuspendResumeDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::SuspendResumeDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::SuspendResumeDataEngineResponse`
        def SuspendResumeDataEngine(request)
          body = send_request('SuspendResumeDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SuspendResumeDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换主备集群

        # @param request: Request instance for SwitchDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::SwitchDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::SwitchDataEngineResponse`
        def SwitchDataEngine(request)
          body = send_request('SwitchDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换引擎镜像版本

        # @param request: Request instance for SwitchDataEngineImage.
        # @type request: :class:`Tencentcloud::dlc::V20210125::SwitchDataEngineImageRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::SwitchDataEngineImageResponse`
        def SwitchDataEngineImage(request)
          body = send_request('SwitchDataEngineImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDataEngineImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑用户上的用户组

        # @param request: Request instance for UnbindWorkGroupsFromUser.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UnbindWorkGroupsFromUserRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UnbindWorkGroupsFromUserResponse`
        def UnbindWorkGroupsFromUser(request)
          body = send_request('UnbindWorkGroupsFromUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindWorkGroupsFromUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑数据源与队列

        # @param request: Request instance for UnboundDatasourceHouse.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UnboundDatasourceHouseRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UnboundDatasourceHouseResponse`
        def UnboundDatasourceHouse(request)
          body = send_request('UnboundDatasourceHouse', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnboundDatasourceHouseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 元数据解锁

        # @param request: Request instance for UnlockMetaData.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UnlockMetaDataRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UnlockMetaDataResponse`
        def UnlockMetaData(request)
          body = send_request('UnlockMetaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnlockMetaDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新 API Key 状态

        # @param request: Request instance for UpdateApiKeyStatus.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateApiKeyStatusRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateApiKeyStatusResponse`
        def UpdateApiKeyStatus(request)
          body = send_request('UpdateApiKeyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiKeyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新集群组

        # @param request: Request instance for UpdateClusterGroup.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateClusterGroupRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateClusterGroupResponse`
        def UpdateClusterGroup(request)
          body = send_request('UpdateClusterGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateClusterGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于更新数据引擎配置

        # @param request: Request instance for UpdateDataEngine.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateDataEngineRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateDataEngineResponse`
        def UpdateDataEngine(request)
          body = send_request('UpdateDataEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDataEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户某种操作，触发引擎配置修改

        # @param request: Request instance for UpdateDataEngineConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateDataEngineConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateDataEngineConfigResponse`
        def UpdateDataEngineConfig(request)
          body = send_request('UpdateDataEngineConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDataEngineConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新数据脱敏策略

        # @param request: Request instance for UpdateDataMaskStrategy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateDataMaskStrategyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateDataMaskStrategyResponse`
        def UpdateDataMaskStrategy(request)
          body = send_request('UpdateDataMaskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDataMaskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新部署配置

        # @param request: Request instance for UpdateDeployment.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateDeploymentRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateDeploymentResponse`
        def UpdateDeployment(request)
          body = send_request('UpdateDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新标准引擎资源组网络配置信息

        # @param request: Request instance for UpdateEngineResourceGroupNetworkConfigInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateEngineResourceGroupNetworkConfigInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateEngineResourceGroupNetworkConfigInfoResponse`
        def UpdateEngineResourceGroupNetworkConfigInfo(request)
          body = send_request('UpdateEngineResourceGroupNetworkConfigInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEngineResourceGroupNetworkConfigInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新推理模型（编辑标签、描述、参数量）

        # @param request: Request instance for UpdateInferenceModel.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateInferenceModelRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateInferenceModelResponse`
        def UpdateInferenceModel(request)
          body = send_request('UpdateInferenceModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateInferenceModelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新已有作业配置的字段

        # @param request: Request instance for UpdateJobSpec.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateJobSpecRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateJobSpecResponse`
        def UpdateJobSpec(request)
          body = send_request('UpdateJobSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateJobSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改作业配置的调度优先级（1-9，数字越大优先级越高）

        # @param request: Request instance for UpdateJobSpecPriority.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateJobSpecPriorityRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateJobSpecPriorityResponse`
        def UpdateJobSpecPriority(request)
          body = send_request('UpdateJobSpecPriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateJobSpecPriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新实验室配置：仅在 CREATED / STOPPED / FAILED 终态可用；变更落 MySQL，下次 Start 按新 spec 创建 K8s 资源

        # @param request: Request instance for UpdateLab.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateLabRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateLabResponse`
        def UpdateLab(request)
          body = send_request('UpdateLab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateLabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新网络配置

        # @param request: Request instance for UpdateNetworkConnection.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateNetworkConnectionRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateNetworkConnectionResponse`
        def UpdateNetworkConnection(request)
          body = send_request('UpdateNetworkConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateNetworkConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新集群配置：仅在 CREATED / STOPPED / FAILED 终态可用；变更落 MySQL，下次 Start 按新 spec 创建 K8s 资源

        # @param request: Request instance for UpdateRayCluster.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateRayClusterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateRayClusterResponse`
        def UpdateRayCluster(request)
          body = send_request('UpdateRayCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRayClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新处于 SUBMITTED/PENDING 状态的作业的优先级。仅 SUBMITTED/PENDING 状态的作业允许调整优先级。内部通过调用 Neutrino 的 UpdateJobConfig 接口更新 ENVIRONMENT 配置中的 priority 字段。

        # @param request: Request instance for UpdateRayJobPriority.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateRayJobPriorityRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateRayJobPriorityResponse`
        def UpdateRayJobPriority(request)
          body = send_request('UpdateRayJobPriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRayJobPriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新资源配置模板

        # @param request: Request instance for UpdateResourceConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateResourceConfigResponse`
        def UpdateResourceConfig(request)
          body = send_request('UpdateResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateResourceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于更新行过滤规则。注意只能更新过滤规则，不能更新规格对象catalog，database和table。

        # @param request: Request instance for UpdateRowFilter.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateRowFilterRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateRowFilterResponse`
        def UpdateRowFilter(request)
          body = send_request('UpdateRowFilter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRowFilterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新推理服务的 API-Key 鉴权配置（启用/停用）

        # @param request: Request instance for UpdateServiceAuthConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateServiceAuthConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateServiceAuthConfigResponse`
        def UpdateServiceAuthConfig(request)
          body = send_request('UpdateServiceAuthConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateServiceAuthConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新标准引擎资源组基础信息

        # @param request: Request instance for UpdateStandardEngineResourceGroupBaseInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateStandardEngineResourceGroupBaseInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateStandardEngineResourceGroupBaseInfoResponse`
        def UpdateStandardEngineResourceGroupBaseInfo(request)
          body = send_request('UpdateStandardEngineResourceGroupBaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateStandardEngineResourceGroupBaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新标准引擎资源组基础信息

        # @param request: Request instance for UpdateStandardEngineResourceGroupConfigInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateStandardEngineResourceGroupConfigInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateStandardEngineResourceGroupConfigInfoResponse`
        def UpdateStandardEngineResourceGroupConfigInfo(request)
          body = send_request('UpdateStandardEngineResourceGroupConfigInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateStandardEngineResourceGroupConfigInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新标准引擎资源组基础信息

        # @param request: Request instance for UpdateStandardEngineResourceGroupResourceInfo.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateStandardEngineResourceGroupResourceInfoRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateStandardEngineResourceGroupResourceInfoResponse`
        def UpdateStandardEngineResourceGroupResourceInfo(request)
          body = send_request('UpdateStandardEngineResourceGroupResourceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateStandardEngineResourceGroupResourceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # UDP权限修改

        # @param request: Request instance for UpdateUDFPolicy.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateUDFPolicyRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateUDFPolicyResponse`
        def UpdateUDFPolicy(request)
          body = send_request('UpdateUDFPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUDFPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户引擎自定义配置

        # @param request: Request instance for UpdateUserDataEngineConfig.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpdateUserDataEngineConfigRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpdateUserDataEngineConfigResponse`
        def UpdateUserDataEngineConfig(request)
          body = send_request('UpdateUserDataEngineConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUserDataEngineConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级引擎镜像

        # @param request: Request instance for UpgradeDataEngineImage.
        # @type request: :class:`Tencentcloud::dlc::V20210125::UpgradeDataEngineImageRequest`
        # @rtype: :class:`Tencentcloud::dlc::V20210125::UpgradeDataEngineImageResponse`
        def UpgradeDataEngineImage(request)
          body = send_request('UpgradeDataEngineImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDataEngineImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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