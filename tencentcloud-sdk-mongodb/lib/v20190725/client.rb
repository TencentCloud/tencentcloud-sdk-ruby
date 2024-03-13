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
  module Mongodb
    module V20190725
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-07-25'
            api_endpoint = 'mongodb.tencentcloudapi.com'
            sdk_version = 'MONGODB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(AssignProject)用于指定云数据库实例的所属项目。

        # @param request: Request instance for AssignProject.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::AssignProjectRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::AssignProjectResponse`
        def AssignProject(request)
          body = send_request('AssignProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateAccountUser）用于自定义实例访问账号。

        # @param request: Request instance for CreateAccountUser.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::CreateAccountUserRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::CreateAccountUserResponse`
        def CreateAccountUser(request)
          body = send_request('CreateAccountUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateBackupDBInstance）用于备份实例。

        # @param request: Request instance for CreateBackupDBInstance.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::CreateBackupDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::CreateBackupDBInstanceResponse`
        def CreateBackupDBInstance(request)
          body = send_request('CreateBackupDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来创建某个备份文件的下载任务

        # @param request: Request instance for CreateBackupDownloadTask.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::CreateBackupDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::CreateBackupDownloadTaskResponse`
        def CreateBackupDownloadTask(request)
          body = send_request('CreateBackupDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。接口支持的售卖规格，可从查询云数据库的售卖规格（DescribeSpecInfo）获取。

        # @param request: Request instance for CreateDBInstance.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::CreateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::CreateDBInstanceResponse`
        def CreateDBInstance(request)
          body = send_request('CreateDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDBInstanceHour）用于创建按量计费的MongoDB云数据库实例。

        # @param request: Request instance for CreateDBInstanceHour.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::CreateDBInstanceHourRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::CreateDBInstanceHourResponse`
        def CreateDBInstanceHour(request)
          body = send_request('CreateDBInstanceHour', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDBInstanceHourResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteAccountUser）用于删除实例的自定义账号。

        # @param request: Request instance for DeleteAccountUser.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DeleteAccountUserRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DeleteAccountUserResponse`
        def DeleteAccountUser(request)
          body = send_request('DeleteAccountUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccountUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccountUsers）用于获取当前实例的全部账号。

        # @param request: Request instance for DescribeAccountUsers.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeAccountUsersRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeAccountUsersResponse`
        def DescribeAccountUsers(request)
          body = send_request('DescribeAccountUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询异步任务状态接口

        # @param request: Request instance for DescribeAsyncRequestInfo.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeAsyncRequestInfoRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeAsyncRequestInfoResponse`
        def DescribeAsyncRequestInfo(request)
          body = send_request('DescribeAsyncRequestInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAsyncRequestInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份下载任务信息

        # @param request: Request instance for DescribeBackupDownloadTask.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeBackupDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeBackupDownloadTaskResponse`
        def DescribeBackupDownloadTask(request)
          body = send_request('DescribeBackupDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClientConnections）用于查询实例客户端连接信息，包括连接 IP 和连接数量。

        # @param request: Request instance for DescribeClientConnections.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeClientConnectionsRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeClientConnectionsResponse`
        def DescribeClientConnections(request)
          body = send_request('DescribeClientConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeCurrentOp)用于查询MongoDB云数据库实例的当前正在执行的操作。

        # @param request: Request instance for DescribeCurrentOp.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeCurrentOpRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeCurrentOpResponse`
        def DescribeCurrentOp(request)
          body = send_request('DescribeCurrentOp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCurrentOpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBBackups）用于查询实例备份列表，目前只支持查询7天内的备份记录。

        # @param request: Request instance for DescribeDBBackups.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeDBBackupsRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeDBBackupsResponse`
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

        # 本接口（DescribeDBInstanceDeal）用于获取MongoDB购买、续费及变配订单详细。

        # @param request: Request instance for DescribeDBInstanceDeal.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeDBInstanceDealRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeDBInstanceDealResponse`
        def DescribeDBInstanceDeal(request)
          body = send_request('DescribeDBInstanceDeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceDealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询节点的属性，包括节点所在可用区、节点名称、地址、角色、状态、主从延迟、优先级、投票权、标签等属性。

        # @param request: Request instance for DescribeDBInstanceNodeProperty.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeDBInstanceNodePropertyRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeDBInstanceNodePropertyResponse`
        def DescribeDBInstanceNodeProperty(request)
          body = send_request('DescribeDBInstanceNodeProperty', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstanceNodePropertyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDBInstances）用于查询云数据库实例列表，支持通过项目ID、实例ID、实例状态等过滤条件来筛选主实例、灾备实例和只读实例信息列表。

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeDBInstancesResponse`
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

        # 本接口（DescribeInstanceParams）用于查询当前实例可修改的参数列表。

        # @param request: Request instance for DescribeInstanceParams.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeInstanceParamsRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeInstanceParamsResponse`
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

        # 本接口（DescribeSecurityGroup）用于查询实例绑定的安全组。

        # @param request: Request instance for DescribeSecurityGroup.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeSecurityGroupResponse`
        def DescribeSecurityGroup(request)
          body = send_request('DescribeSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSlowLogPatterns）用于获取数据库实例慢日志的统计信息。

        # @param request: Request instance for DescribeSlowLogPatterns.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeSlowLogPatternsRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeSlowLogPatternsResponse`
        def DescribeSlowLogPatterns(request)
          body = send_request('DescribeSlowLogPatterns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogPatternsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSlowLogs）用于获取云数据库慢日志信息。接口只支持查询最近7天内慢日志。

        # @param request: Request instance for DescribeSlowLogs.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeSlowLogsRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeSlowLogsResponse`
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

        # 本接口(DescribeSpecInfo)用于查询实例的售卖规格。

        # @param request: Request instance for DescribeSpecInfo.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::DescribeSpecInfoRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::DescribeSpecInfoResponse`
        def DescribeSpecInfo(request)
          body = send_request('DescribeSpecInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpecInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在所有mongos上执行FlushRouterConfig命令

        # @param request: Request instance for FlushInstanceRouterConfig.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::FlushInstanceRouterConfigRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::FlushInstanceRouterConfigResponse`
        def FlushInstanceRouterConfig(request)
          body = send_request('FlushInstanceRouterConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FlushInstanceRouterConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquirePriceCreateDBInstances）用于创建数据库实例询价。本接口参数中必须传入region参数，否则无法通过校验。本接口仅允许针对购买限制范围内的实例配置进行询价。

        # @param request: Request instance for InquirePriceCreateDBInstances.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::InquirePriceCreateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::InquirePriceCreateDBInstancesResponse`
        def InquirePriceCreateDBInstances(request)
          body = send_request('InquirePriceCreateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquirePriceModifyDBInstanceSpec) 用于查询实例配置变更后的价格。

        # @param request: Request instance for InquirePriceModifyDBInstanceSpec.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::InquirePriceModifyDBInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::InquirePriceModifyDBInstanceSpecResponse`
        def InquirePriceModifyDBInstanceSpec(request)
          body = send_request('InquirePriceModifyDBInstanceSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceModifyDBInstanceSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceRenewDBInstances) 用于续费包年包月实例询价。

        # @param request: Request instance for InquirePriceRenewDBInstances.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::InquirePriceRenewDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::InquirePriceRenewDBInstancesResponse`
        def InquirePriceRenewDBInstances(request)
          body = send_request('InquirePriceRenewDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceRenewDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateDBInstance)用于隔离MongoDB云数据库按量计费实例。隔离后实例保留在回收站中，不能再写入数据。隔离一定时间后，实例会彻底删除，回收站保存时间请参考按量计费的服务条款。在隔离中的按量计费实例无法恢复，请谨慎操作。

        # @param request: Request instance for IsolateDBInstance.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::IsolateDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::IsolateDBInstanceResponse`
        def IsolateDBInstance(request)
          body = send_request('IsolateDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(KillOps)用于终止MongoDB云数据库实例上执行的特定操作。

        # @param request: Request instance for KillOps.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::KillOpsRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::KillOpsResponse`
        def KillOps(request)
          body = send_request('KillOps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KillOpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBInstanceNetworkAddress)用于修改云数据库实例的网络信息，可进行基础网络转VPC网络和VPC网络之间的变换。

        # @param request: Request instance for ModifyDBInstanceNetworkAddress.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::ModifyDBInstanceNetworkAddressRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::ModifyDBInstanceNetworkAddressResponse`
        def ModifyDBInstanceNetworkAddress(request)
          body = send_request('ModifyDBInstanceNetworkAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceNetworkAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceSecurityGroup）用于修改实例绑定的安全组

        # @param request: Request instance for ModifyDBInstanceSecurityGroup.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::ModifyDBInstanceSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::ModifyDBInstanceSecurityGroupResponse`
        def ModifyDBInstanceSecurityGroup(request)
          body = send_request('ModifyDBInstanceSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDBInstanceSpec）用于调整MongoDB云数据库实例配置。接口支持的售卖规格，可从查询云数据库的售卖规格（DescribeSpecInfo）获取。

        # @param request: Request instance for ModifyDBInstanceSpec.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::ModifyDBInstanceSpecRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::ModifyDBInstanceSpecResponse`
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

        # 本接口(OfflineIsolatedDBInstance)用于立即下线隔离状态的云数据库实例。进行操作的实例状态必须为隔离状态。

        # @param request: Request instance for OfflineIsolatedDBInstance.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::OfflineIsolatedDBInstanceRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::OfflineIsolatedDBInstanceResponse`
        def OfflineIsolatedDBInstance(request)
          body = send_request('OfflineIsolatedDBInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineIsolatedDBInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(RenameInstance)用于修改云数据库实例的名称。

        # @param request: Request instance for RenameInstance.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::RenameInstanceRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::RenameInstanceResponse`
        def RenameInstance(request)
          body = send_request('RenameInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenameInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(RenewDBInstance)用于续费云数据库实例，仅支持付费模式为包年包月的实例。按量计费实例不需要续费。

        # @param request: Request instance for RenewDBInstances.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::RenewDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::RenewDBInstancesResponse`
        def RenewDBInstances(request)
          body = send_request('RenewDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例用户的密码

        # @param request: Request instance for ResetDBInstancePassword.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::ResetDBInstancePasswordRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::ResetDBInstancePasswordResponse`
        def ResetDBInstancePassword(request)
          body = send_request('ResetDBInstancePassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDBInstancePasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SetAccountUserPrivilege）用于设置实例的账号权限。

        # @param request: Request instance for SetAccountUserPrivilege.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::SetAccountUserPrivilegeRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::SetAccountUserPrivilegeResponse`
        def SetAccountUserPrivilege(request)
          body = send_request('SetAccountUserPrivilege', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAccountUserPrivilegeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SetInstanceMaintenance ） 用于设置实例维护时间窗。

        # @param request: Request instance for SetInstanceMaintenance.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::SetInstanceMaintenanceRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::SetInstanceMaintenanceResponse`
        def SetInstanceMaintenance(request)
          body = send_request('SetInstanceMaintenance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetInstanceMaintenanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（TerminateDBInstances）可将包年包月实例退还隔离。

        # @param request: Request instance for TerminateDBInstances.
        # @type request: :class:`Tencentcloud::mongodb::V20190725::TerminateDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::mongodb::V20190725::TerminateDBInstancesResponse`
        def TerminateDBInstances(request)
          body = send_request('TerminateDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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