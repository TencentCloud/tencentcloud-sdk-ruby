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
  module Redis
    module V20180412
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-12'
            api_endpoint = 'redis.tencentcloudapi.com'
            sdk_version = 'REDIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（AddReplicationInstance）用于为全球复制组添加实例成员。

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

        # 本接口（AllocateWanAddress）用于开通实例外网访问。

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

        # 本接口（ApplyParamsTemplate）用于应用参数模板到实例。

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

        # 本接口 (AssociateSecurityGroups) 用于将一个安全组绑定于一个或多个数据库实例。创建实例时，未配置安全组，建议通过该接口，绑定安全组。

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

        # 本接口（ChangeInstanceRole）用于更换复制组内实例的角色。

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

        # 该接口（ChangeMasterInstance）用于将复制组内只读实例设置为主实例。

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

        # 本接口（ChangeReplicaToMaster）适用于实例副本组提主或副本提主。

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

        # 本接口（CleanUpInstance）用于立即下线回收站的实例。

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

        # 本接口（ClearInstance）用于清空实例数据。

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

        # 本接口（CloneInstances）用于基于当前实例的备份文件克隆一个完整的新实例。

        # @param request: Request instance for CloneInstances.
        # @type request: :class:`Tencentcloud::redis::V20180412::CloneInstancesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CloneInstancesResponse`
        def CloneInstances(request)
          body = send_request('CloneInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloseSSL）用于关闭SSL加密认证。

        # @param request: Request instance for CloseSSL.
        # @type request: :class:`Tencentcloud::redis::V20180412::CloseSSLRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::CloseSSLResponse`
        def CloseSSL(request)
          body = send_request('CloseSSL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseSSLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateInstanceAccount）用于自定义访问实例的账号。

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

        # 本接口（CreateInstances）用于创建 Redis 实例。

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

        # 该接口（CreateParamTemplate）用于创建参数模板。

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

        # 本接口（CreateReplicationGroup）用于创建复制组。

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

        # 本接口（DeleteInstanceAccount）用于删除实例子账号。

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

        # 本接口（DeleteParamTemplate）用于删除参数模板。

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

        # 本接口（DeleteReplicationInstance）移除复制组成员。注：该接口下线中，请使用 [RemoveReplicationInstance](https://cloud.tencent.com/document/product/239/90099)。

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

        # 本接口（DescribeAutoBackupConfig）用于获取自动备份配置规则。

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

        # 本接口（DescribeBackupDetail）用于查询实例的备份信息详情。

        # @param request: Request instance for DescribeBackupDetail.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeBackupDetailRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeBackupDetailResponse`
        def DescribeBackupDetail(request)
          body = send_request('DescribeBackupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupDownloadRestriction）用于查询当前地域数据库备份文件的下载地址。

        # @param request: Request instance for DescribeBackupDownloadRestriction.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeBackupDownloadRestrictionRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeBackupDownloadRestrictionResponse`
        def DescribeBackupDownloadRestriction(request)
          body = send_request('DescribeBackupDownloadRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDownloadRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBackupUrl）用于查询备份 Rdb 文件的下载地址。

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

        # 本接口（DescribeBandwidthRange）用于查询实例带宽信息。

        # @param request: Request instance for DescribeBandwidthRange.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeBandwidthRangeRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeBandwidthRangeResponse`
        def DescribeBandwidthRange(request)
          body = send_request('DescribeBandwidthRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBandwidthRangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCommonDBInstances）用于查询Redis实例列表信息。当前该接口已废弃。

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

        # 本接口（DescribeDBSecurityGroups）用于查询实例的安全组详情。

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

        # 本接口（DescribeGlobalReplicationArea）用于查询全球复制支持地域信息。

        # @param request: Request instance for DescribeGlobalReplicationArea.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeGlobalReplicationAreaRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeGlobalReplicationAreaResponse`
        def DescribeGlobalReplicationArea(request)
          body = send_request('DescribeGlobalReplicationArea', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlobalReplicationAreaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceAccount）用于查看实例子账号信息。

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

        # 本接口（DescribeInstanceBackups）用于查询实例备份列表。

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

        # 本接口（DescribeInstanceDTSInfo）用于查询实例 DTS 信息。

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

        # 本接口（DescribeInstanceDealDetail）用于查询订单信息。

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

        # 本接口（DescribeInstanceEvents）用于查询 Redis 实例事件信息。

        # @param request: Request instance for DescribeInstanceEvents.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceEventsRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceEventsResponse`
        def DescribeInstanceEvents(request)
          body = send_request('DescribeInstanceEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceLogDelivery）用于查询实例的日志投递配置。

        # @param request: Request instance for DescribeInstanceLogDelivery.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceLogDeliveryRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceLogDeliveryResponse`
        def DescribeInstanceLogDelivery(request)
          body = send_request('DescribeInstanceLogDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见[查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。

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

        # 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见 [查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。

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

        # 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见 [查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。

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

        # 本接口（DescribeInstanceMonitorHotKey）用于查询实例热Key。

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

        # 该接口已下线，请使用数据库智能管家 DBbrain 接口 [DescribeProxyProcessStatistics](https://cloud.tencent.com/document/product/1130/84544) 获取实例访问来源。

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

        # 本接口（DescribeInstanceMonitorTookDist）用于查询实例访问的耗时分布。

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

        # 本接口（DescribeInstanceMonitorTopNCmd）用于查询实例访问命令。

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

        # 本接口（DescribeInstanceMonitorTopNCmdTook）用于查询实例 CPU 耗时。

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

        # 本接口（DescribeInstanceNodeInfo）用于查询实例节点信息。

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

        # 本接口（DescribeInstanceParamRecords）用于查询参数修改历史列表。

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

        # 本接口（DescribeInstanceParams）用于查询实例参数列表。

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

        # 本接口（DescribeInstanceSecurityGroup）用于查询实例安全组信息。

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

        # 本接口（DescribeInstanceShards）用于获取集群架构实例的分片信息。

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

        # 本接口（DescribeInstanceSpecBandwidth）用于查询或计算带宽规格。

        # @param request: Request instance for DescribeInstanceSpecBandwidth.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceSpecBandwidthRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceSpecBandwidthResponse`
        def DescribeInstanceSpecBandwidth(request)
          body = send_request('DescribeInstanceSpecBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSpecBandwidthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceSupportFeature）用于查询实例支持的功能特性。

        # @param request: Request instance for DescribeInstanceSupportFeature.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeInstanceSupportFeatureRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeInstanceSupportFeatureResponse`
        def DescribeInstanceSupportFeature(request)
          body = send_request('DescribeInstanceSupportFeature', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSupportFeatureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceZoneInfo）用于查询 Redis 节点详细信息。

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

        # 本接口（DescribeInstances）用于查询Redis实例列表。

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

        # 本接口（DescribeMaintenanceWindow）用于查询实例维护时间窗。在实例需要进行版本升级或者架构升级的时候，会在维护时间窗时间内进行切换

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

        # 本接口（DescribeParamTemplateInfo）用于查询参数模板详情。

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

        # 本接口（DescribeParamTemplates）用于查询参数模板列表。

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

        # 本接口（DescribeProductInfo）用于查询全地域 Redis 的售卖规格。

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

        # 本接口（DescribeProjectSecurityGroup）用于查询项目安全组信息。

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

        # 本接口（DescribeProjectSecurityGroups）用于查询项目的安全组详情。

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

        # 本接口（DescribeRedisClusterOverview）用于查询 Redis 独享集群概览信息。

        # @param request: Request instance for DescribeRedisClusterOverview.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeRedisClusterOverviewRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeRedisClusterOverviewResponse`
        def DescribeRedisClusterOverview(request)
          body = send_request('DescribeRedisClusterOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisClusterOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRedisClusters）用于查询Redis独享集群列表。

        # @param request: Request instance for DescribeRedisClusters.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeRedisClustersRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeRedisClustersResponse`
        def DescribeRedisClusters(request)
          body = send_request('DescribeRedisClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRedisClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeReplicationGroup）用于查询复制组。

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

        # 本接口（DescribeReplicationGroupInstance）用于查询复制组信息。

        # @param request: Request instance for DescribeReplicationGroupInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeReplicationGroupInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeReplicationGroupInstanceResponse`
        def DescribeReplicationGroupInstance(request)
          body = send_request('DescribeReplicationGroupInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplicationGroupInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSSLStatus）用于查询实例 SSL 认证相关信息，包括开启状态、配置状态、证书地址等。

        # @param request: Request instance for DescribeSSLStatus.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeSSLStatusRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeSSLStatusResponse`
        def DescribeSSLStatus(request)
          body = send_request('DescribeSSLStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSSLStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSecondLevelBackupInfo）用于查询实例秒级备份信息。

        # @param request: Request instance for DescribeSecondLevelBackupInfo.
        # @type request: :class:`Tencentcloud::redis::V20180412::DescribeSecondLevelBackupInfoRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::DescribeSecondLevelBackupInfoResponse`
        def DescribeSecondLevelBackupInfo(request)
          body = send_request('DescribeSecondLevelBackupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecondLevelBackupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSlowLog）查询实例慢查询记录。

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

        # 本接口（DescribeTaskInfo）用于获取指定任务的执行情况。

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

        # 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。

        # - 可查询近30天内任务列表数据。

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

        # 本接口（DescribeTendisSlowLog）用于查询 Tendis 实例慢查询。

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

        # 本接口（DestroyPostpaidInstance）用于销毁按量计费实例。

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

        # 本接口（DestroyPrepaidInstance）用于退还包年包月计费的 Redis 实例。

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

        # 本接口（DisableReplicaReadonly）用于禁用读写分离功能。

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

        # 本接口（DisassociateSecurityGroups）用于安全组批量解绑实例。

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

        # 本接口（EnableReplicaReadonly）用于启用读写分离功能。

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

        # 本接口（InquiryPriceCreateInstance）用于查询新购实例价格。

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

        # 本接口（InquiryPriceRenewInstance）用于查询包年包月计费实例的续费价格。

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

        # 本接口（InquiryPriceUpgradeInstance）用于查询实例扩容价格。

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

        # 本接口（KillMasterGroup）用于模拟故障。

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

        # 本接口（ManualBackupInstance）用于手动备份Redis实例。

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

        # 本接口（ModfiyInstancePassword）用于修改实例访问密码。鉴于该接口名存在拼写错误，现已更正为（[ModifyInstancePassword](https://cloud.tencent.com/document/product/239/111555)）接口，推荐使用更正后的接口。

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

        # 本接口（ModifyAutoBackupConfig）用于设置自动备份的配置。

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

        # 本接口（ModifyBackupDownloadRestriction）用于修改备份文件下载的网络信息与地址。

        # @param request: Request instance for ModifyBackupDownloadRestriction.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyBackupDownloadRestrictionRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyBackupDownloadRestrictionResponse`
        def ModifyBackupDownloadRestriction(request)
          body = send_request('ModifyBackupDownloadRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupDownloadRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（ModifyDBInstanceSecurityGroups）用于对实例原有的安全组列表进行修改。

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

        # 本接口（ModifyInstance）用于修改实例相关信息。

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

        # 本接口（ModifyInstanceAccount）用于修改实例账号。

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

        # 本接口（ModifyInstanceAvailabilityZones）用于变更实例可用区

        # @param request: Request instance for ModifyInstanceAvailabilityZones.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceAvailabilityZonesRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceAvailabilityZonesResponse`
        def ModifyInstanceAvailabilityZones(request)
          body = send_request('ModifyInstanceAvailabilityZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceAvailabilityZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例的备份模式

        # @param request: Request instance for ModifyInstanceBackupMode.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceBackupModeRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceBackupModeResponse`
        def ModifyInstanceBackupMode(request)
          body = send_request('ModifyInstanceBackupMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceBackupModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceEvent）用于修改实例的运维事件的执行计划。

        # @param request: Request instance for ModifyInstanceEvent.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceEventRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceEventResponse`
        def ModifyInstanceEvent(request)
          body = send_request('ModifyInstanceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceLogDelivery）用于开启或关闭投递实例日志到CLS。

        # @param request: Request instance for ModifyInstanceLogDelivery.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstanceLogDeliveryRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstanceLogDeliveryResponse`
        def ModifyInstanceLogDelivery(request)
          body = send_request('ModifyInstanceLogDelivery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceLogDeliveryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceParams）用于修改 Redis 实例的参数配置。

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

        # 本接口（ModifyInstancePassword）用于修改实例访问密码。

        # @param request: Request instance for ModifyInstancePassword.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyInstancePasswordRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyInstancePasswordResponse`
        def ModifyInstancePassword(request)
          body = send_request('ModifyInstancePassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancePasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstanceReadOnly）用于设置实例输入模式。

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

        # 本接口（ModifyMaintenanceWindow）用于修改实例维护时间窗时间，需要进行版本升级或者架构升级的实例，会在维护时间窗内进行时间切换。注意：已经发起版本升级或者架构升级的实例，无法修改维护时间窗。

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

        # 本接口（ModifyNetworkConfig）用于修改实例网络配置。

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

        # 本接口（ModifyParamTemplate）用于修改参数模板。

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

        # 本接口（ModifyReplicationGroup）用于修改复制组信息。

        # @param request: Request instance for ModifyReplicationGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::ModifyReplicationGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::ModifyReplicationGroupResponse`
        def ModifyReplicationGroup(request)
          body = send_request('ModifyReplicationGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReplicationGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenSSL）用于开启 SSL 加密认证功能。

        # @param request: Request instance for OpenSSL.
        # @type request: :class:`Tencentcloud::redis::V20180412::OpenSSLRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::OpenSSLResponse`
        def OpenSSL(request)
          body = send_request('OpenSSL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenSSLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ReleaseWanAddress）用于关闭外网访问。

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

        # 本接口（RemoveReplicationGroup）用于删除复制组。

        # @param request: Request instance for RemoveReplicationGroup.
        # @type request: :class:`Tencentcloud::redis::V20180412::RemoveReplicationGroupRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::RemoveReplicationGroupResponse`
        def RemoveReplicationGroup(request)
          body = send_request('RemoveReplicationGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveReplicationGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RemoveReplicationInstance）用于移除复制组中的实例。

        # @param request: Request instance for RemoveReplicationInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::RemoveReplicationInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::RemoveReplicationInstanceResponse`
        def RemoveReplicationInstance(request)
          body = send_request('RemoveReplicationInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveReplicationInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewInstance）可用于为实例续费。

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

        # 本接口（ResetPassword）用于重置实例访问密码。

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

        # 本接口（RestoreInstance）用于恢复实例。

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

        # 本接口（StartupInstance）用于实例解隔离。

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

        # 本接口（SwitchAccessNewInstance）针对处于时间窗口中待切换操作的实例，用户可主动发起该操作。

        # @param request: Request instance for SwitchAccessNewInstance.
        # @type request: :class:`Tencentcloud::redis::V20180412::SwitchAccessNewInstanceRequest`
        # @rtype: :class:`Tencentcloud::redis::V20180412::SwitchAccessNewInstanceResponse`
        def SwitchAccessNewInstance(request)
          body = send_request('SwitchAccessNewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchAccessNewInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在通过 DTS 支持跨可用区灾备的场景中，通过该接口（SwitchInstanceVip）交换实例 VIP 完成实例灾备切换。交换 VIP 后目标实例可写，源和目标实例VIP互换，同时源与目标实例间 DTS 同步任务断开。

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

        # 本接口（SwitchProxy）为 Proxy 模拟故障接口。

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

        # 本接口（UpgradeInstance）用于变更实例的配置规格。

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

        # 本接口（UpgradeInstanceVersion）用于将当前实例升级到更高版本，或者将当前标准架构升级至集群架构。

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

        # 本接口（UpgradeProxyVersion）用于升级实例 Proxy 版本。

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

        # 本接口（UpgradeSmallVersion）用于实例小版本升级。

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

        # 本接口（UpgradeVersionToMultiAvailabilityZones）用于升级实例支持多AZ。

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