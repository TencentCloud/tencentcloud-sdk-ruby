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

        # 该接口（DescribleTasks）用于查询任务列表

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