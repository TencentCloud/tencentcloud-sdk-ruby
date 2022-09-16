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
  module Redis
    module V20180412
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-12'
            api_endpoint = 'redis.tencentcloudapi.com'
            sdk_version = 'REDIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加复制组成员

        # @param request: Request instance for AddReplicationInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::AddReplicationInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::AddReplicationInstanceResponse`
        def AddReplicationInstance(request)
          body = send_request('AddReplicationInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddReplicationInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通外网

        # @param request: Request instance for AllocateWanAddress.
        # @type request: :class:`Tencentcloud::redis::V20180412::AllocateWanAddressRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::AllocateWanAddressResponse`
        def AllocateWanAddress(request)
          body = send_request('AllocateWanAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateWanAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 应用参数模板到实例

        # @param request: Request instance for ApplyParamsTemplate.
        # @type request: :class:`Tencentcloud::redis::V20180412::ApplyParamsTemplateRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ApplyParamsTemplateResponse`
        def ApplyParamsTemplate(request)
          body = send_request('ApplyParamsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyParamsTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AssociateSecurityGroups) 用于安全组批量绑定多个指定实例。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::redis::V20180412::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::AssociateSecurityGroupsResponse`
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

        # 复制组实例更换角色

        # @param request: Request instance for ChangeInstanceRole.
        # @type request: :class:`Tencentcloud::redis::V20180412::ChangeInstanceRoleRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ChangeInstanceRoleResponse`
        def ChangeInstanceRole(request)
          body = send_request('ChangeInstanceRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeInstanceRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制组实例切主

        # @param request: Request instance for ChangeMasterInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::ChangeMasterInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ChangeMasterInstanceResponse`
        def ChangeMasterInstance(request)
          body = send_request('ChangeMasterInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeMasterInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口仅支持多AZ实例副本组提主和单AZ副本提主

        # @param request: Request instance for ChangeReplicaToMaster.
        # @type request: :class:`Tencentcloud::redis::V20180412::ChangeReplicaToMasterRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ChangeReplicaToMasterResponse`
        def ChangeReplicaToMaster(request)
          body = send_request('ChangeReplicaToMaster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeReplicaToMasterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回收站实例立即下线

        # @param request: Request instance for CleanUpInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::CleanUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CleanUpInstanceResponse`
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

        # 清空Redis实例的实例数据。

        # @param request: Request instance for ClearInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::ClearInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ClearInstanceResponse`
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

        # 创建实例子账号

        # @param request: Request instance for CreateInstanceAccount.
        # @type request: :class:`Tencentcloud::redis::V20180412::CreateInstanceAccountRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CreateInstanceAccountResponse`
        def CreateInstanceAccount(request)
          body = send_request('CreateInstanceAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateInstances)用于创建redis实例。

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::redis::V20180412::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CreateInstancesResponse`
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

        # 创建参数模板。

        # @param request: Request instance for CreateParamTemplate.
        # @type request: :class:`Tencentcloud::redis::V20180412::CreateParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CreateParamTemplateResponse`
        def CreateParamTemplate(request)
          body = send_request('CreateParamTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateParamTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建复制组

        # @param request: Request instance for CreateReplicationGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::CreateReplicationGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CreateReplicationGroupResponse`
        def CreateReplicationGroup(request)
          body = send_request('CreateReplicationGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReplicationGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除实例子账号

        # @param request: Request instance for DeleteInstanceAccount.
        # @type request: :class:`Tencentcloud::redis::V20180412::DeleteInstanceAccountRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DeleteInstanceAccountResponse`
        def DeleteInstanceAccount(request)
          body = send_request('DeleteInstanceAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除参数模板

        # @param request: Request instance for DeleteParamTemplate.
        # @type request: :class:`Tencentcloud::redis::V20180412::DeleteParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DeleteParamTemplateResponse`
        def DeleteParamTemplate(request)
          body = send_request('DeleteParamTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteParamTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 移除复制组成员 注：接口下线中，请使用 RemoveReplicationInstance

        # @param request: Request instance for DeleteReplicationInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::DeleteReplicationInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DeleteReplicationInstanceResponse`
        def DeleteReplicationInstance(request)
          body = send_request('DeleteReplicationInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReplicationInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取备份配置

        # @param request: Request instance for DescribeAutoBackupConfig.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeAutoBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeAutoBackupConfigResponse`
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

        # 查询备份Rdb下载地址(接口灰度中，需要加白名单使用)

        # @param request: Request instance for DescribeBackupUrl.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeBackupUrlRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeBackupUrlResponse`
        def DescribeBackupUrl(request)
          body = send_request('DescribeBackupUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Redis实例列表信息。该接口已废弃。

        # @param request: Request instance for DescribeCommonDBInstances.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeCommonDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeCommonDBInstancesResponse`
        def DescribeCommonDBInstances(request)
          body = send_request('DescribeCommonDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCommonDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeDBSecurityGroupsResponse`
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

        # 查看实例子账号信息

        # @param request: Request instance for DescribeInstanceAccount.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceAccountRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceAccountResponse`
        def DescribeInstanceAccount(request)
          body = send_request('DescribeInstanceAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 CRS 实例备份列表

        # @param request: Request instance for DescribeInstanceBackups.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceBackupsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceBackupsResponse`
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

        # 查询实例DTS信息

        # @param request: Request instance for DescribeInstanceDTSInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceDTSInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceDTSInfoResponse`
        def DescribeInstanceDTSInfo(request)
          body = send_request('DescribeInstanceDTSInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDTSInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询订单信息

        # @param request: Request instance for DescribeInstanceDealDetail.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceDealDetailRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceDealDetailResponse`
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

        # 查询实例大Key

        # @param request: Request instance for DescribeInstanceMonitorBigKey.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorBigKeyRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorBigKeyResponse`
        def DescribeInstanceMonitorBigKey(request)
          body = send_request('DescribeInstanceMonitorBigKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorBigKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例大Key大小分布

        # @param request: Request instance for DescribeInstanceMonitorBigKeySizeDist.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorBigKeySizeDistRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorBigKeySizeDistResponse`
        def DescribeInstanceMonitorBigKeySizeDist(request)
          body = send_request('DescribeInstanceMonitorBigKeySizeDist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorBigKeySizeDistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例大Key类型分布

        # @param request: Request instance for DescribeInstanceMonitorBigKeyTypeDist.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorBigKeyTypeDistRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorBigKeyTypeDistResponse`
        def DescribeInstanceMonitorBigKeyTypeDist(request)
          body = send_request('DescribeInstanceMonitorBigKeyTypeDist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorBigKeyTypeDistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例热Key

        # @param request: Request instance for DescribeInstanceMonitorHotKey.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorHotKeyRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorHotKeyResponse`
        def DescribeInstanceMonitorHotKey(request)
          body = send_request('DescribeInstanceMonitorHotKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorHotKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例访问来源信息

        # @param request: Request instance for DescribeInstanceMonitorSIP.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorSIPRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorSIPResponse`
        def DescribeInstanceMonitorSIP(request)
          body = send_request('DescribeInstanceMonitorSIP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorSIPResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例访问的耗时分布

        # @param request: Request instance for DescribeInstanceMonitorTookDist.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorTookDistRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorTookDistResponse`
        def DescribeInstanceMonitorTookDist(request)
          body = send_request('DescribeInstanceMonitorTookDist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorTookDistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例访问命令

        # @param request: Request instance for DescribeInstanceMonitorTopNCmd.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorTopNCmdRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorTopNCmdResponse`
        def DescribeInstanceMonitorTopNCmd(request)
          body = send_request('DescribeInstanceMonitorTopNCmd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorTopNCmdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例CPU耗时

        # @param request: Request instance for DescribeInstanceMonitorTopNCmdTook.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorTopNCmdTookRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceMonitorTopNCmdTookResponse`
        def DescribeInstanceMonitorTopNCmdTook(request)
          body = send_request('DescribeInstanceMonitorTopNCmdTook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorTopNCmdTookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例节点信息

        # @param request: Request instance for DescribeInstanceNodeInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceNodeInfoResponse`
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

        # 查询参数修改历史列表

        # @param request: Request instance for DescribeInstanceParamRecords.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceParamRecordsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceParamRecordsResponse`
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

        # 查询实例参数列表

        # @param request: Request instance for DescribeInstanceParams.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceParamsResponse`
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

        # 查询实例安全组信息

        # @param request: Request instance for DescribeInstanceSecurityGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceSecurityGroupResponse`
        def DescribeInstanceSecurityGroup(request)
          body = send_request('DescribeInstanceSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群版实例分片信息

        # @param request: Request instance for DescribeInstanceShards.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceShardsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceShardsResponse`
        def DescribeInstanceShards(request)
          body = send_request('DescribeInstanceShards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceShardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Redis节点详细信息

        # @param request: Request instance for DescribeInstanceZoneInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceZoneInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceZoneInfoResponse`
        def DescribeInstanceZoneInfo(request)
          body = send_request('DescribeInstanceZoneInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceZoneInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Redis实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstancesResponse`
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

        # 查询实例维护时间窗，在实例需要进行版本升级或者架构升级的时候，会在维护时间窗时间内进行切换

        # @param request: Request instance for DescribeMaintenanceWindow.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeMaintenanceWindowRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeMaintenanceWindowResponse`
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

        # 查询参数模板详情。

        # @param request: Request instance for DescribeParamTemplateInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeParamTemplateInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeParamTemplateInfoResponse`
        def DescribeParamTemplateInfo(request)
          body = send_request('DescribeParamTemplateInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamTemplateInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询参数模板列表

        # @param request: Request instance for DescribeParamTemplates.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeParamTemplatesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeParamTemplatesResponse`
        def DescribeParamTemplates(request)
          body = send_request('DescribeParamTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口查询指定可用区和实例类型下 Redis 的售卖规格， 如果用户不在购买白名单中，将不能查询该可用区或该类型的售卖规格详情。申请购买某地域白名单可以提交工单

        # @param request: Request instance for DescribeProductInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeProductInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeProductInfoResponse`
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

        # 查询项目安全组信息

        # @param request: Request instance for DescribeProjectSecurityGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeProjectSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeProjectSecurityGroupResponse`
        def DescribeProjectSecurityGroup(request)
          body = send_request('DescribeProjectSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeProjectSecurityGroupsResponse`
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

        # 本接口（DescribeProxySlowLog）用于查询代理慢查询。

        # @param request: Request instance for DescribeProxySlowLog.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeProxySlowLogRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeProxySlowLogResponse`
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

        # 查询复制组

        # @param request: Request instance for DescribeReplicationGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeReplicationGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeReplicationGroupResponse`
        def DescribeReplicationGroup(request)
          body = send_request('DescribeReplicationGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplicationGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例慢查询记录

        # @param request: Request instance for DescribeSlowLog.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeSlowLogRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeSlowLogResponse`
        def DescribeSlowLog(request)
          body = send_request('DescribeSlowLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询任务结果

        # @param request: Request instance for DescribeTaskInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeTaskInfoResponse`
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

        # 查询任务列表信息

        # @param request: Request instance for DescribeTaskList.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeTaskListRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeTaskListResponse`
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

        # 查询Tendis慢查询

        # @param request: Request instance for DescribeTendisSlowLog.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeTendisSlowLogRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeTendisSlowLogResponse`
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

        # 按量计费实例销毁

        # @param request: Request instance for DestroyPostpaidInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::DestroyPostpaidInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DestroyPostpaidInstanceResponse`
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

        # 包年包月实例退还

        # @param request: Request instance for DestroyPrepaidInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::DestroyPrepaidInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DestroyPrepaidInstanceResponse`
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

        # 禁用读写分离

        # @param request: Request instance for DisableReplicaReadonly.
        # @type request: :class:`Tencentcloud::redis::V20180412::DisableReplicaReadonlyRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DisableReplicaReadonlyResponse`
        def DisableReplicaReadonly(request)
          body = send_request('DisableReplicaReadonly', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableReplicaReadonlyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::redis::V20180412::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DisassociateSecurityGroupsResponse`
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

        # 启用读写分离

        # @param request: Request instance for EnableReplicaReadonly.
        # @type request: :class:`Tencentcloud::redis::V20180412::EnableReplicaReadonlyRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::EnableReplicaReadonlyResponse`
        def EnableReplicaReadonly(request)
          body = send_request('EnableReplicaReadonly', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableReplicaReadonlyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询新购实例价格

        # @param request: Request instance for InquiryPriceCreateInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::InquiryPriceCreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::InquiryPriceCreateInstanceResponse`
        def InquiryPriceCreateInstance(request)
          body = send_request('InquiryPriceCreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例续费价格（包年包月）

        # @param request: Request instance for InquiryPriceRenewInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::InquiryPriceRenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::InquiryPriceRenewInstanceResponse`
        def InquiryPriceRenewInstance(request)
          body = send_request('InquiryPriceRenewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例扩容价格

        # @param request: Request instance for InquiryPriceUpgradeInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::InquiryPriceUpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::InquiryPriceUpgradeInstanceResponse`
        def InquiryPriceUpgradeInstance(request)
          body = send_request('InquiryPriceUpgradeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceUpgradeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 模拟故障

        # @param request: Request instance for KillMasterGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::KillMasterGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::KillMasterGroupResponse`
        def KillMasterGroup(request)
          body = send_request('KillMasterGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillMasterGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动备份Redis实例

        # @param request: Request instance for ManualBackupInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::ManualBackupInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ManualBackupInstanceResponse`
        def ManualBackupInstance(request)
          body = send_request('ManualBackupInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManualBackupInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改redis密码

        # @param request: Request instance for ModfiyInstancePassword.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModfiyInstancePasswordRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModfiyInstancePasswordResponse`
        def ModfiyInstancePassword(request)
          body = send_request('ModfiyInstancePassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModfiyInstancePasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置自动备份配置

        # @param request: Request instance for ModifyAutoBackupConfig.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyAutoBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyAutoBackupConfigResponse`
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

        # 修改实例的连接配置，包括带宽和最大连接数。

        # @param request: Request instance for ModifyConnectionConfig.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyConnectionConfigRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyConnectionConfigResponse`
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
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyDBInstanceSecurityGroupsResponse`
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

        # 修改实例相关信息

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceResponse`
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

        # 修改实例子账号

        # @param request: Request instance for ModifyInstanceAccount.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceAccountRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceAccountResponse`
        def ModifyInstanceAccount(request)
          body = send_request('ModifyInstanceAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyInstanceParams)用于修改Redis实例的参数配置。

        # @param request: Request instance for ModifyInstanceParams.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceParamsResponse`
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

        # 设置实例输入模式

        # @param request: Request instance for ModifyInstanceReadOnly.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceReadOnlyRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceReadOnlyResponse`
        def ModifyInstanceReadOnly(request)
          body = send_request('ModifyInstanceReadOnly', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceReadOnlyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例维护时间窗时间，需要进行版本升级或者架构升级的实例，会在维护时间窗内进行时间切换。注意：已经发起版本升级或者架构升级的实例，无法修改维护时间窗。

        # @param request: Request instance for ModifyMaintenanceWindow.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyMaintenanceWindowRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyMaintenanceWindowResponse`
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

        # 修改实例网络配置

        # @param request: Request instance for ModifyNetworkConfig.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyNetworkConfigRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyNetworkConfigResponse`
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

        # 修改参数模板

        # @param request: Request instance for ModifyParamTemplate.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyParamTemplateRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyParamTemplateResponse`
        def ModifyParamTemplate(request)
          body = send_request('ModifyParamTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyParamTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭外网

        # @param request: Request instance for ReleaseWanAddress.
        # @type request: :class:`Tencentcloud::redis::V20180412::ReleaseWanAddressRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ReleaseWanAddressResponse`
        def ReleaseWanAddress(request)
          body = send_request('ReleaseWanAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseWanAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续费实例

        # @param request: Request instance for RenewInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::RenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::RenewInstanceResponse`
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

        # 重置密码

        # @param request: Request instance for ResetPassword.
        # @type request: :class:`Tencentcloud::redis::V20180412::ResetPasswordRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ResetPasswordResponse`
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

        # 恢复 CRS 实例

        # @param request: Request instance for RestoreInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::RestoreInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::RestoreInstanceResponse`
        def RestoreInstance(request)
          body = send_request('RestoreInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例解隔离

        # @param request: Request instance for StartupInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::StartupInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::StartupInstanceResponse`
        def StartupInstance(request)
          body = send_request('StartupInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartupInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在通过DTS支持跨可用区灾备的场景中，通过该接口交换实例VIP完成实例灾备切换。交换VIP后目标实例可写，源和目标实例VIP互换，同时源与目标实例间DTS同步任务断开

        # @param request: Request instance for SwitchInstanceVip.
        # @type request: :class:`Tencentcloud::redis::V20180412::SwitchInstanceVipRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::SwitchInstanceVipResponse`
        def SwitchInstanceVip(request)
          body = send_request('SwitchInstanceVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchInstanceVipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Proxy模拟故障接口

        # @param request: Request instance for SwitchProxy.
        # @type request: :class:`Tencentcloud::redis::V20180412::SwitchProxyRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::SwitchProxyResponse`
        def SwitchProxy(request)
          body = send_request('SwitchProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级实例

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::UpgradeInstanceResponse`
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

        # 将原本实例升级到高版本实例，或者将主从版实例升级到集群版实例

        # @param request: Request instance for UpgradeInstanceVersion.
        # @type request: :class:`Tencentcloud::redis::V20180412::UpgradeInstanceVersionRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::UpgradeInstanceVersionResponse`
        def UpgradeInstanceVersion(request)
          body = send_request('UpgradeInstanceVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeInstanceVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例proxy版本升级

        # @param request: Request instance for UpgradeProxyVersion.
        # @type request: :class:`Tencentcloud::redis::V20180412::UpgradeProxyVersionRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::UpgradeProxyVersionResponse`
        def UpgradeProxyVersion(request)
          body = send_request('UpgradeProxyVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeProxyVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例小版本升级

        # @param request: Request instance for UpgradeSmallVersion.
        # @type request: :class:`Tencentcloud::redis::V20180412::UpgradeSmallVersionRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::UpgradeSmallVersionResponse`
        def UpgradeSmallVersion(request)
          body = send_request('UpgradeSmallVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeSmallVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级实例支持多AZ

        # @param request: Request instance for UpgradeVersionToMultiAvailabilityZones.
        # @type request: :class:`Tencentcloud::redis::V20180412::UpgradeVersionToMultiAvailabilityZonesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::UpgradeVersionToMultiAvailabilityZonesResponse`
        def UpgradeVersionToMultiAvailabilityZones(request)
          body = send_request('UpgradeVersionToMultiAvailabilityZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeVersionToMultiAvailabilityZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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