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
  module Postgres
    module V20170312
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2017-03-12'
        @@endpoint = 'postgres.tencentcloudapi.com'
        @@sdk_version = 'POSTGRES_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（CloseDBExtranetAccess）用于关闭实例外网链接。

        # @param request: Request instance for CloseDBExtranetAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CloseDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CloseDBExtranetAccessResponse`
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

        # 关闭serverlessDB实例外网

        # @param request: Request instance for CloseServerlessDBExtranetAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CloseServerlessDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CloseServerlessDBExtranetAccessResponse`
        def CloseServerlessDBExtranetAccess(request)
          body = send_request('CloseServerlessDBExtranetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseServerlessDBExtranetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateDBInstances) 用于创建一个或者多个PostgreSQL实例。

        # @param request: Request instance for CreateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateDBInstancesResponse`
        def CreateDBInstances(request)
          body = send_request('CreateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateServerlessDBInstance) 用于创建一个ServerlessDB实例，创建成功返回实例ID。

        # @param request: Request instance for CreateServerlessDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateServerlessDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateServerlessDBInstanceResponse`
        def CreateServerlessDBInstance(request)
          body = send_request('CreateServerlessDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServerlessDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteServerlessDBInstance) 用于删除一个ServerlessDB实例。

        # @param request: Request instance for DeleteServerlessDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteServerlessDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteServerlessDBInstanceResponse`
        def DeleteServerlessDBInstance(request)
          body = send_request('DeleteServerlessDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServerlessDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccounts）用于获取实例用户列表。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeAccountsResponse`
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

        # 本接口（DescribeDBBackups）用于查询实例备份列表。

        # @param request: Request instance for DescribeDBBackups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBBackupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBBackupsResponse`
        def DescribeDBBackups(request)
          body = send_request('DescribeDBBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBErrlogs）用于获取错误日志。

        # @param request: Request instance for DescribeDBErrlogs.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBErrlogsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBErrlogsResponse`
        def DescribeDBErrlogs(request)
          body = send_request('DescribeDBErrlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBErrlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeDBInstanceAttribute) 用于查询某个实例的详情信息。

        # @param request: Request instance for DescribeDBInstanceAttribute.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceAttributeRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceAttributeResponse`
        def DescribeDBInstanceAttribute(request)
          body = send_request('DescribeDBInstanceAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeDBInstances) 用于查询一个或多个实例的详细信息。

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstancesResponse`
        def DescribeDBInstances(request)
          body = send_request('DescribeDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBSlowlogs）用于获取慢查询日志。

        # @param request: Request instance for DescribeDBSlowlogs.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBSlowlogsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBSlowlogsResponse`
        def DescribeDBSlowlogs(request)
          body = send_request('DescribeDBSlowlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSlowlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBXlogs）用于获取实例Xlog列表。

        # @param request: Request instance for DescribeDBXlogs.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBXlogsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBXlogsResponse`
        def DescribeDBXlogs(request)
          body = send_request('DescribeDBXlogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBXlogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口（DescribeDatabases）用来拉取数据库列表

        # @param request: Request instance for DescribeDatabases.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDatabasesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDatabasesResponse`
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

        # 本接口（DescribeOrders）用于获取订单信息。

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeOrdersResponse`
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

        # 本接口 (DescribeProductConfig) 用于查询售卖规格配置。

        # @param request: Request instance for DescribeProductConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeProductConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeProductConfigResponse`
        def DescribeProductConfig(request)
          body = send_request('DescribeProductConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeRegions) 用于查询售卖地域信息。

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询一个或多个serverlessDB实例的详细信息

        # @param request: Request instance for DescribeServerlessDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeServerlessDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeServerlessDBInstancesResponse`
        def DescribeServerlessDBInstances(request)
          body = send_request('DescribeServerlessDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServerlessDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeZones) 用于查询支持的可用区信息。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeZonesResponse`
        def DescribeZones(request)
          body = send_request('DescribeZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DestroyDBInstance) 用于销毁指定DBInstanceId对应的实例。

        # @param request: Request instance for DestroyDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DestroyDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DestroyDBInstanceResponse`
        def DestroyDBInstance(request)
          body = send_request('DestroyDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InitDBInstances) 用于初始化云数据库PostgreSQL实例。

        # @param request: Request instance for InitDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InitDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InitDBInstancesResponse`
        def InitDBInstances(request)
          body = send_request('InitDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceCreateDBInstances) 用于查询购买一个或多个实例的价格信息。

        # @param request: Request instance for InquiryPriceCreateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InquiryPriceCreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InquiryPriceCreateDBInstancesResponse`
        def InquiryPriceCreateDBInstances(request)
          body = send_request('InquiryPriceCreateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquiryPriceRenewDBInstance）用于查询续费实例的价格。

        # @param request: Request instance for InquiryPriceRenewDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InquiryPriceRenewDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InquiryPriceRenewDBInstanceResponse`
        def InquiryPriceRenewDBInstance(request)
          body = send_request('InquiryPriceRenewDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。

        # @param request: Request instance for InquiryPriceUpgradeDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::InquiryPriceUpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::InquiryPriceUpgradeDBInstanceResponse`
        def InquiryPriceUpgradeDBInstance(request)
          body = send_request('InquiryPriceUpgradeDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceUpgradeDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAccountRemark）用于修改帐号备注。

        # @param request: Request instance for ModifyAccountRemark.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyAccountRemarkRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyAccountRemarkResponse`
        def ModifyAccountRemark(request)
          body = send_request('ModifyAccountRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceName）用于修改postgresql实例名字。

        # @param request: Request instance for ModifyDBInstanceName.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceNameResponse`
        def ModifyDBInstanceName(request)
          body = send_request('ModifyDBInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstancesProject）用于将实例转至其他项目。

        # @param request: Request instance for ModifyDBInstancesProject.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstancesProjectRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstancesProjectResponse`
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

        # 本接口（OpenDBExtranetAccess）用于开通外网。

        # @param request: Request instance for OpenDBExtranetAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::OpenDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::OpenDBExtranetAccessResponse`
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

        # 开通serverlessDB实例外网

        # @param request: Request instance for OpenServerlessDBExtranetAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::OpenServerlessDBExtranetAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::OpenServerlessDBExtranetAccessResponse`
        def OpenServerlessDBExtranetAccess(request)
          body = send_request('OpenServerlessDBExtranetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenServerlessDBExtranetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RenewInstance）用于续费实例。

        # @param request: Request instance for RenewInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RenewInstanceResponse`
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

        # 本接口（ResetAccountPassword）用于重置实例的账户密码。

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ResetAccountPasswordResponse`
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

        # 本接口（RestartDBInstance）用于重启实例。

        # @param request: Request instance for RestartDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RestartDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RestartDBInstanceResponse`
        def RestartDBInstance(request)
          body = send_request('RestartDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SetAutoRenewFlag）用于设置自动续费。

        # @param request: Request instance for SetAutoRenewFlag.
        # @type request: :class:`Tencentcloud::postgres::V20170312::SetAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::SetAutoRenewFlagResponse`
        def SetAutoRenewFlag(request)
          body = send_request('SetAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAutoRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpgradeDBInstance）用于升级实例。

        # @param request: Request instance for UpgradeDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::UpgradeDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::UpgradeDBInstanceResponse`
        def UpgradeDBInstance(request)
          body = send_request('UpgradeDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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