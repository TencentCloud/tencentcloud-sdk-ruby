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

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-12'
            api_endpoint = 'postgres.tencentcloudapi.com'
            sdk_version = 'POSTGRES_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（AddDBInstanceToReadOnlyGroup）用于添加只读实例到只读组

        # @param request: Request instance for AddDBInstanceToReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::AddDBInstanceToReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::AddDBInstanceToReadOnlyGroupResponse`
        def AddDBInstanceToReadOnlyGroup(request)
          body = send_request('AddDBInstanceToReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDBInstanceToReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于克隆实例，支持指定备份集、指定时间点进行克隆。

        # @param request: Request instance for CloneDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CloneDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CloneDBInstanceResponse`
        def CloneDBInstance(request)
          body = send_request('CloneDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

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

        # 可对实例进行网络的添加操作。

        # @param request: Request instance for CreateDBInstanceNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateDBInstanceNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateDBInstanceNetworkAccessResponse`
        def CreateDBInstanceNetworkAccess(request)
          body = send_request('CreateDBInstanceNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstanceNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateDBInstances) 用于创建一个或者多个PostgreSQL实例,仅发货实例不会进行初始化。

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

        # 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateInstancesResponse`
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

        # 本接口(CreateReadOnlyDBInstance)用于创建只读实例

        # @param request: Request instance for CreateReadOnlyDBInstance.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyDBInstanceResponse`
        def CreateReadOnlyDBInstance(request)
          body = send_request('CreateReadOnlyDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateReadOnlyGroup）用于创建只读组

        # @param request: Request instance for CreateReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupResponse`
        def CreateReadOnlyGroup(request)
          body = send_request('CreateReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可对RO组进行网络的添加操作。

        # @param request: Request instance for CreateReadOnlyGroupNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::CreateReadOnlyGroupNetworkAccessResponse`
        def CreateReadOnlyGroupNetworkAccess(request)
          body = send_request('CreateReadOnlyGroupNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReadOnlyGroupNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 可对实例进行网络的删除操作。

        # @param request: Request instance for DeleteDBInstanceNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteDBInstanceNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteDBInstanceNetworkAccessResponse`
        def DeleteDBInstanceNetworkAccess(request)
          body = send_request('DeleteDBInstanceNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDBInstanceNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteReadOnlyGroup)用于删除指定的只读组

        # @param request: Request instance for DeleteReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupResponse`
        def DeleteReadOnlyGroup(request)
          body = send_request('DeleteReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可对RO组进行网络的删除操作。

        # @param request: Request instance for DeleteReadOnlyGroupNetworkAccess.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupNetworkAccessRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DeleteReadOnlyGroupNetworkAccessResponse`
        def DeleteReadOnlyGroupNetworkAccess(request)
          body = send_request('DeleteReadOnlyGroupNetworkAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReadOnlyGroupNetworkAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeAvailableRecoveryTime）用于查询实例可恢复的时间范围。

        # @param request: Request instance for DescribeAvailableRecoveryTime.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeAvailableRecoveryTimeRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeAvailableRecoveryTimeResponse`
        def DescribeAvailableRecoveryTime(request)
          body = send_request('DescribeAvailableRecoveryTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableRecoveryTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeBackupPlans) 用于实例所有的备份计划查询

        # @param request: Request instance for DescribeBackupPlans.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeBackupPlansResponse`
        def DescribeBackupPlans(request)
          body = send_request('DescribeBackupPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCloneDBInstanceSpec）用于查询克隆实例可选择的最小规格，包括SpecCode和磁盘。

        # @param request: Request instance for DescribeCloneDBInstanceSpec.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeCloneDBInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeCloneDBInstanceSpecResponse`
        def DescribeCloneDBInstanceSpec(request)
          body = send_request('DescribeCloneDBInstanceSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloneDBInstanceSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取实例可修改参数列表

        # @param request: Request instance for DescribeDBInstanceParameters.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceParametersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeDBInstanceParametersResponse`
        def DescribeDBInstanceParameters(request)
          body = send_request('DescribeDBInstanceParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeDBSlowlogs）用于获取慢查询日志。已于2021.09.01日正式废弃，后续此接口将不再返回任何数据，新接口为DescribeSlowQueryList，详细请查看：https://cloud.tencent.com/document/product/409/60540

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

        # 获取实例的密钥信息列表。

        # @param request: Request instance for DescribeEncryptionKeys.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeEncryptionKeysRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeEncryptionKeysResponse`
        def DescribeEncryptionKeys(request)
          body = send_request('DescribeEncryptionKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEncryptionKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取参数修改事件详情

        # @param request: Request instance for DescribeParamsEvent.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeParamsEventRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeParamsEventResponse`
        def DescribeParamsEvent(request)
          body = send_request('DescribeParamsEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeParamsEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组

        # @param request: Request instance for DescribeReadOnlyGroups.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeReadOnlyGroupsRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeReadOnlyGroupsResponse`
        def DescribeReadOnlyGroups(request)
          body = send_request('DescribeReadOnlyGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReadOnlyGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 此接口（DescribeSlowQueryAnalysis）用于统计指定时间范围内的所有慢查询，根据SQL语句抽象参数后，进行聚合分析，并返回同类SQL列表。

        # @param request: Request instance for DescribeSlowQueryAnalysis.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryAnalysisRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryAnalysisResponse`
        def DescribeSlowQueryAnalysis(request)
          body = send_request('DescribeSlowQueryAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowQueryAnalysisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeSlowQueryList）用于查询指定时间范围内的所有慢查询。

        # @param request: Request instance for DescribeSlowQueryList.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryListRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DescribeSlowQueryListResponse`
        def DescribeSlowQueryList(request)
          body = send_request('DescribeSlowQueryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowQueryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口 (DestroyDBInstance) 用于彻底销毁指定DBInstanceId对应的实例，销毁后实例数据将彻底删除，无法找回，只能销毁隔离中的实例。

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

        # 本接口（DisIsolateDBInstances）用于解隔离实例

        # @param request: Request instance for DisIsolateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::DisIsolateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::DisIsolateDBInstancesResponse`
        def DisIsolateDBInstances(request)
          body = send_request('DisIsolateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisIsolateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（InquiryPriceUpgradeDBInstance）用于查询升级实例的价格。只支持按量计费实例。

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

        # 本接口（IsolateDBInstances）用于隔离实例

        # @param request: Request instance for IsolateDBInstances.
        # @type request: :class:`Tencentcloud::postgres::V20170312::IsolateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::IsolateDBInstancesResponse`
        def IsolateDBInstances(request)
          body = send_request('IsolateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口 (ModifyBackupPlan) 用于实例备份计划的修改，默认是在每天的凌晨开始全量备份，备份保留时长是7天。可以根据此接口指定时间进行实例的备份。

        # @param request: Request instance for ModifyBackupPlan.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyBackupPlanResponse`
        def ModifyBackupPlan(request)
          body = send_request('ModifyBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceDeployment）用于修改节点可用区部署方式，仅支持主实例。

        # @param request: Request instance for ModifyDBInstanceDeployment.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceDeploymentRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceDeploymentResponse`
        def ModifyDBInstanceDeployment(request)
          body = send_request('ModifyDBInstanceDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceDeploymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 批量修改参数

        # @param request: Request instance for ModifyDBInstanceParameters.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceParametersRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceParametersResponse`
        def ModifyDBInstanceParameters(request)
          body = send_request('ModifyDBInstanceParameters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceParametersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceReadOnlyGroup）用于修改实例所属的只读组

        # @param request: Request instance for ModifyDBInstanceReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceReadOnlyGroupResponse`
        def ModifyDBInstanceReadOnlyGroup(request)
          body = send_request('ModifyDBInstanceReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceSpec）用于调整实例规格，包括内存、磁盘。

        # @param request: Request instance for ModifyDBInstanceSpec.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyDBInstanceSpecResponse`
        def ModifyDBInstanceSpec(request)
          body = send_request('ModifyDBInstanceSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(ModifyReadOnlyGroupConfig)用于更新只读组配置信息

        # @param request: Request instance for ModifyReadOnlyGroupConfig.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifyReadOnlyGroupConfigRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifyReadOnlyGroupConfigResponse`
        def ModifyReadOnlyGroupConfig(request)
          body = send_request('ModifyReadOnlyGroupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReadOnlyGroupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当升级完成后，对处于等待切换状态下的实例，强制实例立即切换。

        # @param request: Request instance for ModifySwitchTimePeriod.
        # @type request: :class:`Tencentcloud::postgres::V20170312::ModifySwitchTimePeriodRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::ModifySwitchTimePeriodResponse`
        def ModifySwitchTimePeriod(request)
          body = send_request('ModifySwitchTimePeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySwitchTimePeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(RebalanceReadOnlyGroup)用于重新均衡 RO 组内实例的负载。注意，RO 组内 RO 实例会有一次数据库连接瞬断，请确保应用程序能重连数据库，谨慎操作。

        # @param request: Request instance for RebalanceReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RebalanceReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RebalanceReadOnlyGroupResponse`
        def RebalanceReadOnlyGroup(request)
          body = send_request('RebalanceReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebalanceReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RemoveDBInstanceFromReadOnlyGroup）用户将只读实例从只读组中移除

        # @param request: Request instance for RemoveDBInstanceFromReadOnlyGroup.
        # @type request: :class:`Tencentcloud::postgres::V20170312::RemoveDBInstanceFromReadOnlyGroupRequest`
        # @rtype: :class:`Tencentcloud::postgres::V20170312::RemoveDBInstanceFromReadOnlyGroupResponse`
        def RemoveDBInstanceFromReadOnlyGroup(request)
          body = send_request('RemoveDBInstanceFromReadOnlyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveDBInstanceFromReadOnlyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（UpgradeDBInstance）用于升级实例配置。

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