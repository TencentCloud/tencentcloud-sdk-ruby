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
  module Dcdb
    module V20180411
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-04-11'
        @@endpoint = 'dcdb.tencentcloudapi.com'
        @@sdk_version = 'DCDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口 (AssociateSecurityGroups) 用于安全组批量绑定云资源。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::AssociateSecurityGroupsResponse`
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

        # 本接口（CloneAccount）用于克隆实例账户。

        # @param request: Request instance for CloneAccount.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CloneAccountRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CloneAccountResponse`
        def CloneAccount(request)
          body = send_request('CloneAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CloseDBExtranetAccess)用于关闭云数据库实例的外网访问。关闭外网访问后，外网地址将不可访问，查询实例列表接口将不返回对应实例的外网域名和端口信息。

        # @param request: Request instance for CloseDBExtranetAccess.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CloseDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CloseDBExtranetAccessResponse`
        def CloseDBExtranetAccess(request)
          body = send_request('CloseDBExtranetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseDBExtranetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CopyAccountPrivileges）用于复制云数据库账号的权限。
        # 注意：相同用户名，不同Host是不同的账号，Readonly属性相同的账号之间才能复制权限。

        # @param request: Request instance for CopyAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CopyAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CopyAccountPrivilegesResponse`
        def CopyAccountPrivileges(request)
          body = send_request('CopyAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateAccount）用于创建云数据库账号。一个实例可以创建多个不同的账号，相同的用户名+不同的host是不同的账号。

        # @param request: Request instance for CreateAccount.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateAccountResponse`
        def CreateAccount(request)
          body = send_request('CreateAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDCDBInstance）用于创建包年包月的云数据库实例，可通过传入实例规格、数据库版本号、购买时长等信息创建云数据库实例。

        # @param request: Request instance for CreateDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::CreateDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::CreateDCDBInstanceResponse`
        def CreateDCDBInstance(request)
          body = send_request('CreateDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteAccount）用于删除云数据库账号。用户名+host唯一确定一个账号。

        # @param request: Request instance for DeleteAccount.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DeleteAccountResponse`
        def DeleteAccount(request)
          body = send_request('DeleteAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccountPrivileges）用于查询云数据库账号权限。
        # 注意：注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for DescribeAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountPrivilegesResponse`
        def DescribeAccountPrivileges(request)
          body = send_request('DescribeAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccounts）用于查询指定云数据库实例的账号列表。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeAccountsResponse`
        def DescribeAccounts(request)
          body = send_request('DescribeAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBLogFiles)用于获取数据库的各种日志列表，包括冷备、binlog、errlog和slowlog。

        # @param request: Request instance for DescribeDBLogFiles.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBLogFilesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBLogFilesResponse`
        def DescribeDBLogFiles(request)
          body = send_request('DescribeDBLogFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBLogFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDBParameters)用于获取数据库的当前参数设置。

        # @param request: Request instance for DescribeDBParameters.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBParametersRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBParametersResponse`
        def DescribeDBParameters(request)
          body = send_request('DescribeDBParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSecurityGroupsResponse`
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

        # 本接口（DescribeDBSyncMode）用于查询云数据库实例的同步模式。

        # @param request: Request instance for DescribeDBSyncMode.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSyncModeRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDBSyncModeResponse`
        def DescribeDBSyncMode(request)
          body = send_request('DescribeDBSyncMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSyncModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息

        # @param request: Request instance for DescribeDCDBInstanceNodeInfo.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstanceNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstanceNodeInfoResponse`
        def DescribeDCDBInstanceNodeInfo(request)
          body = send_request('DescribeDCDBInstanceNodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBInstanceNodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云数据库实例列表，支持通过项目ID、实例ID、内网地址、实例名称等来筛选实例。
        # 如果不指定任何筛选条件，则默认返回10条实例记录，单次请求最多支持返回100条实例记录。

        # @param request: Request instance for DescribeDCDBInstances.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBInstancesResponse`
        def DescribeDCDBInstances(request)
          body = send_request('DescribeDCDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBPrice）用于在购买实例前，查询实例的价格。

        # @param request: Request instance for DescribeDCDBPrice.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBPriceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBPriceResponse`
        def DescribeDCDBPrice(request)
          body = send_request('DescribeDCDBPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBRenewalPrice）用于在续费分布式数据库实例时，查询续费的价格。

        # @param request: Request instance for DescribeDCDBRenewalPrice.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBRenewalPriceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBRenewalPriceResponse`
        def DescribeDCDBRenewalPrice(request)
          body = send_request('DescribeDCDBRenewalPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBRenewalPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDCDBSaleInfo)用于查询分布式数据库可售卖的地域和可用区信息。

        # @param request: Request instance for DescribeDCDBSaleInfo.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBSaleInfoRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBSaleInfoResponse`
        def DescribeDCDBSaleInfo(request)
          body = send_request('DescribeDCDBSaleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBSaleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBShards）用于查询云数据库实例的分片信息。

        # @param request: Request instance for DescribeDCDBShards.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBShardsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBShardsResponse`
        def DescribeDCDBShards(request)
          body = send_request('DescribeDCDBShards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBShardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDCDBUpgradePrice）用于查询升级分布式数据库实例价格。

        # @param request: Request instance for DescribeDCDBUpgradePrice.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBUpgradePriceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDCDBUpgradePriceResponse`
        def DescribeDCDBUpgradePrice(request)
          body = send_request('DescribeDCDBUpgradePrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDCDBUpgradePriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。

        # @param request: Request instance for DescribeDatabaseObjects.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseObjectsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseObjectsResponse`
        def DescribeDatabaseObjects(request)
          body = send_request('DescribeDatabaseObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。

        # @param request: Request instance for DescribeDatabaseTable.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseTableRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabaseTableResponse`
        def DescribeDatabaseTable(request)
          body = send_request('DescribeDatabaseTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeDatabasesResponse`
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

        # 本接口（DescribeOrders）用于查询分布式数据库订单信息。传入订单ID来查询订单关联的分布式数据库实例，和对应的任务流程ID。

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeOrdersResponse`
        def DescribeOrders(request)
          body = send_request('DescribeOrders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrdersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProjectSecurityGroups）用于查询项目安全组信息

        # @param request: Request instance for DescribeProjectSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectSecurityGroupsResponse`
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

        # 本接口（DescribeProjects）用于查询项目列表

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可创建的分布式数据库可售卖的分片规格配置。

        # @param request: Request instance for DescribeShardSpec.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeShardSpecRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeShardSpecResponse`
        def DescribeShardSpec(request)
          body = send_request('DescribeShardSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShardSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSqlLogs）用于获取实例SQL日志。

        # @param request: Request instance for DescribeSqlLogs.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeSqlLogsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeSqlLogsResponse`
        def DescribeSqlLogs(request)
          body = send_request('DescribeSqlLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSqlLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUserTasks）用于拉取用户任务列表

        # @param request: Request instance for DescribeUserTasks.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DescribeUserTasksRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DescribeUserTasksResponse`
        def DescribeUserTasks(request)
          body = send_request('DescribeUserTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::dcdb::V20180411::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::DisassociateSecurityGroupsResponse`
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

        # 相当于在所有分片的mysqld中执行flush logs，完成切分的binlog将展示在各个分片控制台binlog列表里。

        # @param request: Request instance for FlushBinlog.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::FlushBinlogRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::FlushBinlogResponse`
        def FlushBinlog(request)
          body = send_request('FlushBinlog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FlushBinlogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（GrantAccountPrivileges）用于给云数据库账号赋权。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for GrantAccountPrivileges.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::GrantAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::GrantAccountPrivilegesResponse`
        def GrantAccountPrivileges(request)
          body = send_request('GrantAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GrantAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(InitDCDBInstances)用于初始化云数据库实例，包括设置默认字符集、表名大小写敏感等。

        # @param request: Request instance for InitDCDBInstances.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::InitDCDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::InitDCDBInstancesResponse`
        def InitDCDBInstances(request)
          body = send_request('InitDCDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitDCDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（KillSession）用于杀死指定会话。

        # @param request: Request instance for KillSession.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::KillSessionRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::KillSessionResponse`
        def KillSession(request)
          body = send_request('KillSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAccountDescription）用于修改云数据库账号备注。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for ModifyAccountDescription.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountDescriptionRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyAccountDescriptionResponse`
        def ModifyAccountDescription(request)
          body = send_request('ModifyAccountDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceSecurityGroups）用于修改云数据库安全组

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstanceSecurityGroupsResponse`
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

        # 本接口（ModifyDBInstancesProject）用于修改云数据库实例所属项目。

        # @param request: Request instance for ModifyDBInstancesProject.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstancesProjectRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBInstancesProjectResponse`
        def ModifyDBInstancesProject(request)
          body = send_request('ModifyDBInstancesProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstancesProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBParameters)用于修改数据库参数。

        # @param request: Request instance for ModifyDBParameters.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBParametersRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBParametersResponse`
        def ModifyDBParameters(request)
          body = send_request('ModifyDBParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBSyncMode）用于修改云数据库实例的同步模式。

        # @param request: Request instance for ModifyDBSyncMode.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ModifyDBSyncModeRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ModifyDBSyncModeResponse`
        def ModifyDBSyncMode(request)
          body = send_request('ModifyDBSyncMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBSyncModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（OpenDBExtranetAccess）用于开通云数据库实例的外网访问。开通外网访问后，您可通过外网域名和端口访问实例，可使用查询实例列表接口获取外网域名和端口信息。

        # @param request: Request instance for OpenDBExtranetAccess.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::OpenDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::OpenDBExtranetAccessResponse`
        def OpenDBExtranetAccess(request)
          body = send_request('OpenDBExtranetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenDBExtranetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewDCDBInstance）用于续费分布式数据库实例。

        # @param request: Request instance for RenewDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::RenewDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::RenewDCDBInstanceResponse`
        def RenewDCDBInstance(request)
          body = send_request('RenewDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ResetAccountPassword）用于重置云数据库账号的密码。
        # 注意：相同用户名，不同Host是不同的账号。

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::ResetAccountPasswordResponse`
        def ResetAccountPassword(request)
          body = send_request('ResetAccountPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetAccountPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDCDBInstance）用于升级分布式数据库实例。本接口完成下单和支付两个动作，如果发生支付失败的错误，调用用户账户相关接口中的支付订单接口（PayDeals）重新支付即可。

        # @param request: Request instance for UpgradeDCDBInstance.
        # @type request: :class:`Tencentcloud::dcdb::V20180411::UpgradeDCDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::dcdb::V20180411::UpgradeDCDBInstanceResponse`
        def UpgradeDCDBInstance(request)
          body = send_request('UpgradeDCDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDCDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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