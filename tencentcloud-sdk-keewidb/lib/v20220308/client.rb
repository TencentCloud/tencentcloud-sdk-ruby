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
  module Keewidb
    module V20220308
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-03-08'
            api_endpoint = 'keewidb.tencentcloudapi.com'
            sdk_version = 'KEEWIDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口 (AssociateSecurityGroups) 用于安全组批量绑定多个指定实例。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::AssociateSecurityGroupsResponse`
        def AssociateSecurityGroups(request)
          body = send_request('AssociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ChangeInstanceMaster）用于将副本节点提升为主节点。

        # @param request: Request instance for ChangeInstanceMaster.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ChangeInstanceMasterRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ChangeInstanceMasterResponse`
        def ChangeInstanceMaster(request)
          body = send_request('ChangeInstanceMaster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeInstanceMasterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CleanUpInstance）用于立即下线回收站已隔离的实例。

        # @param request: Request instance for CleanUpInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::CleanUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::CleanUpInstanceResponse`
        def CleanUpInstance(request)
          body = send_request('CleanUpInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CleanUpInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ClearInstance）用于清空实例数据。

        # @param request: Request instance for ClearInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ClearInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ClearInstanceResponse`
        def ClearInstance(request)
          body = send_request('ClearInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动发起备份

        # @param request: Request instance for CreateBackupManually.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::CreateBackupManuallyRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::CreateBackupManuallyResponse`
        def CreateBackupManually(request)
          body = send_request('CreateBackupManually', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupManuallyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建数据库实例

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::CreateInstancesResponse`
        def CreateInstances(request)
          body = send_request('CreateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAutoBackupConfig）用于获取自动备份配置。

        # @param request: Request instance for DescribeAutoBackupConfig.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeAutoBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeAutoBackupConfigResponse`
        def DescribeAutoBackupConfig(request)
          body = send_request('DescribeAutoBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeDBSecurityGroupsResponse`
        def DescribeDBSecurityGroups(request)
          body = send_request('DescribeDBSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceBackups）用于查询实例全量备份列表。

        # @param request: Request instance for DescribeInstanceBackups.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceBackupsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceBackupsResponse`
        def DescribeInstanceBackups(request)
          body = send_request('DescribeInstanceBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。

        # @param request: Request instance for DescribeInstanceBinlogs.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceBinlogsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceBinlogsResponse`
        def DescribeInstanceBinlogs(request)
          body = send_request('DescribeInstanceBinlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceBinlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceDealDetail）用于查询预付费订单信息。

        # @param request: Request instance for DescribeInstanceDealDetail.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceDealDetailRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceDealDetailResponse`
        def DescribeInstanceDealDetail(request)
          body = send_request('DescribeInstanceDealDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDealDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceNodeInfo）查询实例节点信息。

        # @param request: Request instance for DescribeInstanceNodeInfo.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceNodeInfoResponse`
        def DescribeInstanceNodeInfo(request)
          body = send_request('DescribeInstanceNodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceParamRecords）查询参数配置修改历史列表。

        # @param request: Request instance for DescribeInstanceParamRecords.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceParamRecordsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceParamRecordsResponse`
        def DescribeInstanceParamRecords(request)
          body = send_request('DescribeInstanceParamRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceParamRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceParams）用于查询实例的参数列表。

        # @param request: Request instance for DescribeInstanceParams.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceParamsResponse`
        def DescribeInstanceParams(request)
          body = send_request('DescribeInstanceParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceReplicas）用于获取实例副本节点信息。

        # @param request: Request instance for DescribeInstanceReplicas.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceReplicasRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstanceReplicasResponse`
        def DescribeInstanceReplicas(request)
          body = send_request('DescribeInstanceReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstances）可以根据地域、网络、实例id、标签、计费方式等条件，搜索查询实例列表。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMaintenanceWindow）用于查询实例维护时间窗。

        # @param request: Request instance for DescribeMaintenanceWindow.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeMaintenanceWindowRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeMaintenanceWindowResponse`
        def DescribeMaintenanceWindow(request)
          body = send_request('DescribeMaintenanceWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaintenanceWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口查询指定可用区和实例类型下keewidb 的售卖规格， 如果用户不在购买白名单中，将不能查询该可用区或该类型的售卖规格详情。申请购买某地域白名单可以提交工单

        # @param request: Request instance for DescribeProductInfo.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeProductInfoRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeProductInfoResponse`
        def DescribeProductInfo(request)
          body = send_request('DescribeProductInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。

        # @param request: Request instance for DescribeProjectSecurityGroups.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeProjectSecurityGroupsResponse`
        def DescribeProjectSecurityGroups(request)
          body = send_request('DescribeProjectSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxySlowLog）用于查询代理（Proxy）慢日志。

        # @param request: Request instance for DescribeProxySlowLog.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeProxySlowLogRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeProxySlowLogResponse`
        def DescribeProxySlowLog(request)
          body = send_request('DescribeProxySlowLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxySlowLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTaskInfo）用于查询异步任务结果。

        # @param request: Request instance for DescribeTaskInfo.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeTaskInfoResponse`
        def DescribeTaskInfo(request)
          body = send_request('DescribeTaskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTaskList）用于查询任务列表信息。

        # @param request: Request instance for DescribeTaskList.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeTaskListRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeTaskListResponse`
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

        # 本接口（DescribeTendisSlowLog）用于查询实例慢日志。

        # @param request: Request instance for DescribeTendisSlowLog.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DescribeTendisSlowLogRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DescribeTendisSlowLogResponse`
        def DescribeTendisSlowLog(request)
          body = send_request('DescribeTendisSlowLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTendisSlowLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DestroyPostpaidInstance）用于退还按量计费实例。

        # @param request: Request instance for DestroyPostpaidInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DestroyPostpaidInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DestroyPostpaidInstanceResponse`
        def DestroyPostpaidInstance(request)
          body = send_request('DestroyPostpaidInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyPostpaidInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DestroyPrepaidInstance）用于退还包年包月计费实例。

        # @param request: Request instance for DestroyPrepaidInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DestroyPrepaidInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DestroyPrepaidInstanceResponse`
        def DestroyPrepaidInstance(request)
          body = send_request('DestroyPrepaidInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyPrepaidInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::DisassociateSecurityGroupsResponse`
        def DisassociateSecurityGroups(request)
          body = send_request('DisassociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAutoBackupConfig）用于修改自动备份配置。

        # @param request: Request instance for ModifyAutoBackupConfig.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyAutoBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyAutoBackupConfigResponse`
        def ModifyAutoBackupConfig(request)
          body = send_request('ModifyAutoBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyConnectionConfig）用于修改实例的连接配置，包括带宽和最大连接数。

        # @param request: Request instance for ModifyConnectionConfig.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyConnectionConfigRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyConnectionConfigResponse`
        def ModifyConnectionConfig(request)
          body = send_request('ModifyConnectionConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConnectionConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyDBInstanceSecurityGroupsResponse`
        def ModifyDBInstanceSecurityGroups(request)
          body = send_request('ModifyDBInstanceSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstance）用于修改实例相关信息。

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyInstanceResponse`
        def ModifyInstance(request)
          body = send_request('ModifyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceParams）用于修改实例参数配置。

        # @param request: Request instance for ModifyInstanceParams.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyInstanceParamsResponse`
        def ModifyInstanceParams(request)
          body = send_request('ModifyInstanceParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyMaintenanceWindow）修改实例维护时间窗时间。

        # @param request: Request instance for ModifyMaintenanceWindow.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyMaintenanceWindowRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyMaintenanceWindowResponse`
        def ModifyMaintenanceWindow(request)
          body = send_request('ModifyMaintenanceWindow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaintenanceWindowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyNetworkConfig）用于修改实例网络配置。

        # @param request: Request instance for ModifyNetworkConfig.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ModifyNetworkConfigRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ModifyNetworkConfigResponse`
        def ModifyNetworkConfig(request)
          body = send_request('ModifyNetworkConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewInstance）用于为包年包月计费实例续费。

        # @param request: Request instance for RenewInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::RenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::RenewInstanceResponse`
        def RenewInstance(request)
          body = send_request('RenewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ResetPassword）用于重置数据库访问密码。

        # @param request: Request instance for ResetPassword.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::ResetPasswordRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::ResetPasswordResponse`
        def ResetPassword(request)
          body = send_request('ResetPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StartUpInstance）用于按量计费实例解隔离

        # @param request: Request instance for StartUpInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::StartUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::StartUpInstanceResponse`
        def StartUpInstance(request)
          body = send_request('StartUpInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartUpInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeInstance）用于对实例进行配置变更。

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::keewidb::V20220308::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::keewidb::V20220308::UpgradeInstanceResponse`
        def UpgradeInstance(request)
          body = send_request('UpgradeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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