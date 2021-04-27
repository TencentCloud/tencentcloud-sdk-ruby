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
  module Cwp
    module V20180228
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-02-28'
        @@endpoint = 'cwp.tencentcloudapi.com'
        @@sdk_version = 'CWP_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口用于新增异地登录白名单规则。

        # @param request: Request instance for AddLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::AddLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::AddLoginWhiteListResponse`
        def AddLoginWhiteList(request)
          body = send_request('AddLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLoginWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加机器关联标签

        # @param request: Request instance for AddMachineTag.
        # @type request: :class:`Tencentcloud::cwp::V20180228::AddMachineTagRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::AddMachineTagResponse`
        def AddMachineTag(request)
          body = send_request('AddMachineTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddMachineTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CloseProVersion) 用于关闭专业版。

        # @param request: Request instance for CloseProVersion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CloseProVersionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CloseProVersionResponse`
        def CloseProVersion(request)
          body = send_request('CloseProVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseProVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据策略信息创建基线策略

        # @param request: Request instance for CreateBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateBaselineStrategyResponse`
        def CreateBaselineStrategy(request)
          body = send_request('CreateBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateOpenPortTask) 用于创建实时获取端口任务。

        # @param request: Request instance for CreateOpenPortTask.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateOpenPortTaskRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateOpenPortTaskResponse`
        def CreateOpenPortTask(request)
          body = send_request('CreateOpenPortTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenPortTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateProcessTask) 用于创建实时拉取进程任务。

        # @param request: Request instance for CreateProcessTask.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateProcessTaskRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateProcessTaskResponse`
        def CreateProcessTask(request)
          body = send_request('CreateProcessTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProcessTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateUsualLoginPlaces）用于添加常用登录地。

        # @param request: Request instance for CreateUsualLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateUsualLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateUsualLoginPlacesResponse`
        def CreateUsualLoginPlaces(request)
          body = send_request('CreateUsualLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUsualLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网络攻击日志

        # @param request: Request instance for DeleteAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteAttackLogsResponse`
        def DeleteAttackLogs(request)
          body = send_request('DeleteAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAttackLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据Ids删除高危命令事件

        # @param request: Request instance for DeleteBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashEventsResponse`
        def DeleteBashEvents(request)
          body = send_request('DeleteBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除高危命令规则

        # @param request: Request instance for DeleteBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashRulesResponse`
        def DeleteBashRules(request)
          body = send_request('DeleteBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteBruteAttacks) 用于删除暴力破解记录。

        # @param request: Request instance for DeleteBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBruteAttacksResponse`
        def DeleteBruteAttacks(request)
          body = send_request('DeleteBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBruteAttacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除异地登录白名单规则。

        # @param request: Request instance for DeleteLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteLoginWhiteListResponse`
        def DeleteLoginWhiteList(request)
          body = send_request('DeleteLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoginWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteMachine）用于卸载云镜客户端。

        # @param request: Request instance for DeleteMachine.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineResponse`
        def DeleteMachine(request)
          body = send_request('DeleteMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除服务器关联的标签

        # @param request: Request instance for DeleteMachineTag.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineTagRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineTagResponse`
        def DeleteMachineTag(request)
          body = send_request('DeleteMachineTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteMaliciousRequests) 用于删除恶意请求记录。

        # @param request: Request instance for DeleteMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestsResponse`
        def DeleteMaliciousRequests(request)
          body = send_request('DeleteMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMaliciousRequestsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteMalwares) 用于删除木马记录。

        # @param request: Request instance for DeleteMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMalwaresResponse`
        def DeleteMalwares(request)
          body = send_request('DeleteMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。

        # @param request: Request instance for DeleteNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteNonlocalLoginPlacesResponse`
        def DeleteNonlocalLoginPlaces(request)
          body = send_request('DeleteNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据Ids删除本地提权

        # @param request: Request instance for DeletePrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeEventsResponse`
        def DeletePrivilegeEvents(request)
          body = send_request('DeletePrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivilegeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除本地提权规则

        # @param request: Request instance for DeletePrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeRulesResponse`
        def DeletePrivilegeRules(request)
          body = send_request('DeletePrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivilegeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据Ids删除反弹Shell事件

        # @param request: Request instance for DeleteReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellEventsResponse`
        def DeleteReverseShellEvents(request)
          body = send_request('DeleteReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除反弹Shell规则

        # @param request: Request instance for DeleteReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellRulesResponse`
        def DeleteReverseShellRules(request)
          body = send_request('DeleteReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除标签

        # @param request: Request instance for DeleteTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteTagsResponse`
        def DeleteTags(request)
          body = send_request('DeleteTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteUsualLoginPlaces）用于删除常用登录地。

        # @param request: Request instance for DeleteUsualLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteUsualLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteUsualLoginPlacesResponse`
        def DeleteUsualLoginPlaces(request)
          body = send_request('DeleteUsualLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsualLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。

        # @param request: Request instance for DescribeAccountStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAccountStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAccountStatisticsResponse`
        def DescribeAccountStatistics(request)
          body = send_request('DescribeAccountStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeAccounts) 用于获取帐号列表数据。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAccountsResponse`
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

        # 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。

        # @param request: Request instance for DescribeAgentVuls.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAgentVulsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAgentVulsResponse`
        def DescribeAgentVuls(request)
          body = send_request('DescribeAgentVuls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentVulsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeAlarmAttribute) 用于获取告警设置。

        # @param request: Request instance for DescribeAlarmAttribute.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAlarmAttributeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAlarmAttributeResponse`
        def DescribeAlarmAttribute(request)
          body = send_request('DescribeAlarmAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网络攻击日志详情

        # @param request: Request instance for DescribeAttackLogInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogInfoResponse`
        def DescribeAttackLogInfo(request)
          body = send_request('DescribeAttackLogInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackLogInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按分页形式展示网络攻击日志列表

        # @param request: Request instance for DescribeAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogsResponse`
        def DescribeAttackLogs(request)
          body = send_request('DescribeAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取网络攻击威胁类型列表

        # @param request: Request instance for DescribeAttackVulTypeList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackVulTypeListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackVulTypeListResponse`
        def DescribeAttackVulTypeList(request)
          body = send_request('DescribeAttackVulTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackVulTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高危命令列表

        # @param request: Request instance for DescribeBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsResponse`
        def DescribeBashEvents(request)
          body = send_request('DescribeBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高危命令规则列表

        # @param request: Request instance for DescribeBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashRulesResponse`
        def DescribeBashRules(request)
          body = send_request('DescribeBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口{DescribeBruteAttacks}用于获取暴力破解事件列表。

        # @param request: Request instance for DescribeBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttacksResponse`
        def DescribeBruteAttacks(request)
          body = send_request('DescribeBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBruteAttacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeComponentInfo) 用于获取组件信息数据。

        # @param request: Request instance for DescribeComponentInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeComponentInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeComponentInfoResponse`
        def DescribeComponentInfo(request)
          body = send_request('DescribeComponentInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComponentInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。

        # @param request: Request instance for DescribeComponentStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeComponentStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeComponentStatisticsResponse`
        def DescribeComponentStatistics(request)
          body = send_request('DescribeComponentStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComponentStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeComponents) 用于获取组件列表数据。

        # @param request: Request instance for DescribeComponents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeComponentsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeComponentsResponse`
        def DescribeComponents(request)
          body = send_request('DescribeComponents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComponentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeExportMachines) 用于导出区域主机列表。

        # @param request: Request instance for DescribeExportMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeExportMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeExportMachinesResponse`
        def DescribeExportMachines(request)
          body = send_request('DescribeExportMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机安全相关统计

        # @param request: Request instance for DescribeGeneralStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeGeneralStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeGeneralStatResponse`
        def DescribeGeneralStat(request)
          body = send_request('DescribeGeneralStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。

        # @param request: Request instance for DescribeHistoryAccounts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryAccountsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryAccountsResponse`
        def DescribeHistoryAccounts(request)
          body = send_request('DescribeHistoryAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistoryAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。

        # @param request: Request instance for DescribeImpactedHosts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeImpactedHostsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeImpactedHostsResponse`
        def DescribeImpactedHosts(request)
          body = send_request('DescribeImpactedHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImpactedHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询批量导入机器信息

        # @param request: Request instance for DescribeImportMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeImportMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeImportMachineInfoResponse`
        def DescribeImportMachineInfo(request)
          body = send_request('DescribeImportMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImportMachineInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取异地登录白名单列表

        # @param request: Request instance for DescribeLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteListResponse`
        def DescribeLoginWhiteList(request)
          body = send_request('DescribeLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMachineInfo）用于获取机器详细信息。

        # @param request: Request instance for DescribeMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineInfoResponse`
        def DescribeMachineInfo(request)
          body = send_request('DescribeMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMachineList) 用于网页防篡改获取区域主机列表。

        # @param request: Request instance for DescribeMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineListResponse`
        def DescribeMachineList(request)
          body = send_request('DescribeMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可筛选操作系统列表.

        # @param request: Request instance for DescribeMachineOsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineOsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineOsListResponse`
        def DescribeMachineOsList(request)
          body = send_request('DescribeMachineOsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineOsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机器地域列表

        # @param request: Request instance for DescribeMachineRegions.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionsResponse`
        def DescribeMachineRegions(request)
          body = send_request('DescribeMachineRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMachines) 用于获取区域主机列表。

        # @param request: Request instance for DescribeMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesResponse`
        def DescribeMachines(request)
          body = send_request('DescribeMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。

        # @param request: Request instance for DescribeMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMaliciousRequestsResponse`
        def DescribeMaliciousRequests(request)
          body = send_request('DescribeMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaliciousRequestsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看恶意文件详情

        # @param request: Request instance for DescribeMalwareInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareInfoResponse`
        def DescribeMalwareInfo(request)
          body = send_request('DescribeMalwareInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeMalwares）用于获取木马事件列表。

        # @param request: Request instance for DescribeMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwaresResponse`
        def DescribeMalwares(request)
          body = send_request('DescribeMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。

        # @param request: Request instance for DescribeNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeNonlocalLoginPlacesResponse`
        def DescribeNonlocalLoginPlaces(request)
          body = send_request('DescribeNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。

        # @param request: Request instance for DescribeOpenPortStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortStatisticsResponse`
        def DescribeOpenPortStatistics(request)
          body = send_request('DescribeOpenPortStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpenPortStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeOpenPortTaskStatus) 用于获取实时拉取端口任务状态。

        # @param request: Request instance for DescribeOpenPortTaskStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortTaskStatusResponse`
        def DescribeOpenPortTaskStatus(request)
          body = send_request('DescribeOpenPortTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpenPortTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeOpenPorts) 用于获取端口列表数据。

        # @param request: Request instance for DescribeOpenPorts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortsResponse`
        def DescribeOpenPorts(request)
          body = send_request('DescribeOpenPorts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpenPortsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于（DescribeOverviewStatistics）获取概览统计数据。

        # @param request: Request instance for DescribeOverviewStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOverviewStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOverviewStatisticsResponse`
        def DescribeOverviewStatistics(request)
          body = send_request('DescribeOverviewStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取本地提权事件列表

        # @param request: Request instance for DescribePrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventsResponse`
        def DescribePrivilegeEvents(request)
          body = send_request('DescribePrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取本地提权规则列表

        # @param request: Request instance for DescribePrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeRulesResponse`
        def DescribePrivilegeRules(request)
          body = send_request('DescribePrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeProVersionInfo) 用于获取专业版信息。

        # @param request: Request instance for DescribeProVersionInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionInfoResponse`
        def DescribeProVersionInfo(request)
          body = send_request('DescribeProVersionInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProVersionInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。

        # @param request: Request instance for DescribeProcessStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProcessStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProcessStatisticsResponse`
        def DescribeProcessStatistics(request)
          body = send_request('DescribeProcessStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeProcessTaskStatus) 用于获取实时拉取进程任务状态。

        # @param request: Request instance for DescribeProcessTaskStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProcessTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProcessTaskStatusResponse`
        def DescribeProcessTaskStatus(request)
          body = send_request('DescribeProcessTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeProcesses) 用于获取进程列表数据。

        # @param request: Request instance for DescribeProcesses.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProcessesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProcessesResponse`
        def DescribeProcesses(request)
          body = send_request('DescribeProcesses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取反弹Shell列表

        # @param request: Request instance for DescribeReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventsResponse`
        def DescribeReverseShellEvents(request)
          body = send_request('DescribeReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取反弹Shell规则列表

        # @param request: Request instance for DescribeReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellRulesResponse`
        def DescribeReverseShellRules(request)
          body = send_request('DescribeReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 入侵检测，获取恶意请求列表

        # @param request: Request instance for DescribeRiskDnsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsListResponse`
        def DescribeRiskDnsList(request)
          body = send_request('DescribeRiskDnsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询木马扫描进度

        # @param request: Request instance for DescribeScanMalwareSchedule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanMalwareScheduleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanMalwareScheduleResponse`
        def DescribeScanMalwareSchedule(request)
          body = send_request('DescribeScanMalwareSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanMalwareScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。

        # @param request: Request instance for DescribeSecurityDynamics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityDynamicsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityDynamicsResponse`
        def DescribeSecurityDynamics(request)
          body = send_request('DescribeSecurityDynamics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityDynamicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 概览页抽屉侧边弹窗：安全概览“立即处理”页面中的相关事件数统计接口。

        # @param request: Request instance for DescribeSecurityEventsCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventsCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventsCntResponse`
        def DescribeSecurityEventsCnt(request)
          body = send_request('DescribeSecurityEventsCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityEventsCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。

        # @param request: Request instance for DescribeSecurityTrends.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityTrendsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityTrendsResponse`
        def DescribeSecurityTrends(request)
          body = send_request('DescribeSecurityTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityTrendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定标签关联的服务器信息

        # @param request: Request instance for DescribeTagMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTagMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTagMachinesResponse`
        def DescribeTagMachines(request)
          body = send_request('DescribeTagMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有主机标签

        # @param request: Request instance for DescribeTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTagsResponse`
        def DescribeTags(request)
          body = send_request('DescribeTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。

        # @param request: Request instance for DescribeUsualLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeUsualLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeUsualLoginPlacesResponse`
        def DescribeUsualLoginPlaces(request)
          body = send_request('DescribeUsualLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsualLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeVulInfo) 用于获取漏洞详情。

        # @param request: Request instance for DescribeVulInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulInfoResponse`
        def DescribeVulInfo(request)
          body = send_request('DescribeVulInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeVulScanResult) 用于获取漏洞检测结果。

        # @param request: Request instance for DescribeVulScanResult.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulScanResultRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulScanResultResponse`
        def DescribeVulScanResult(request)
          body = send_request('DescribeVulScanResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeVuls) 用于获取漏洞列表数据。

        # @param request: Request instance for DescribeVuls.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulsResponse`
        def DescribeVuls(request)
          body = send_request('DescribeVuls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeWeeklyReportBruteAttacks) 用于获取专业周报密码破解数据。

        # @param request: Request instance for DescribeWeeklyReportBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportBruteAttacksResponse`
        def DescribeWeeklyReportBruteAttacks(request)
          body = send_request('DescribeWeeklyReportBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeeklyReportBruteAttacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeWeeklyReportInfo) 用于获取专业周报详情数据。

        # @param request: Request instance for DescribeWeeklyReportInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportInfoResponse`
        def DescribeWeeklyReportInfo(request)
          body = send_request('DescribeWeeklyReportInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeeklyReportInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeWeeklyReportMalwares) 用于获取专业周报木马数据。

        # @param request: Request instance for DescribeWeeklyReportMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportMalwaresResponse`
        def DescribeWeeklyReportMalwares(request)
          body = send_request('DescribeWeeklyReportMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeeklyReportMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeWeeklyReportNonlocalLoginPlaces) 用于获取专业周报异地登录数据。

        # @param request: Request instance for DescribeWeeklyReportNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportNonlocalLoginPlacesResponse`
        def DescribeWeeklyReportNonlocalLoginPlaces(request)
          body = send_request('DescribeWeeklyReportNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeeklyReportNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。

        # @param request: Request instance for DescribeWeeklyReportVuls.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportVulsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportVulsResponse`
        def DescribeWeeklyReportVuls(request)
          body = send_request('DescribeWeeklyReportVuls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeeklyReportVulsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。

        # @param request: Request instance for DescribeWeeklyReports.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWeeklyReportsResponse`
        def DescribeWeeklyReports(request)
          body = send_request('DescribeWeeklyReports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeeklyReportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改高危命令规则

        # @param request: Request instance for EditBashRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditBashRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditBashRuleResponse`
        def EditBashRule(request)
          body = send_request('EditBashRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditBashRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改本地提权规则

        # @param request: Request instance for EditPrivilegeRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditPrivilegeRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditPrivilegeRuleResponse`
        def EditPrivilegeRule(request)
          body = send_request('EditPrivilegeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditPrivilegeRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑反弹Shell规则

        # @param request: Request instance for EditReverseShellRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditReverseShellRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditReverseShellRuleResponse`
        def EditReverseShellRule(request)
          body = send_request('EditReverseShellRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditReverseShellRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或编辑标签

        # @param request: Request instance for EditTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditTagsResponse`
        def EditTags(request)
          body = send_request('EditTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出网络攻击日志

        # @param request: Request instance for ExportAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAttackLogsResponse`
        def ExportAttackLogs(request)
          body = send_request('ExportAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAttackLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出高危命令事件

        # @param request: Request instance for ExportBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsResponse`
        def ExportBashEvents(request)
          body = send_request('ExportBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBashEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportBruteAttacks) 用于导出密码破解记录成CSV文件。

        # @param request: Request instance for ExportBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBruteAttacksResponse`
        def ExportBruteAttacks(request)
          body = send_request('ExportBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBruteAttacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportMaliciousRequests) 用于导出下载恶意请求文件。

        # @param request: Request instance for ExportMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportMaliciousRequestsResponse`
        def ExportMaliciousRequests(request)
          body = send_request('ExportMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportMaliciousRequestsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportMalwares) 用于导出木马记录CSV文件。

        # @param request: Request instance for ExportMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportMalwaresResponse`
        def ExportMalwares(request)
          body = send_request('ExportMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。

        # @param request: Request instance for ExportNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportNonlocalLoginPlacesResponse`
        def ExportNonlocalLoginPlaces(request)
          body = send_request('ExportNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出本地提权事件

        # @param request: Request instance for ExportPrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportPrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportPrivilegeEventsResponse`
        def ExportPrivilegeEvents(request)
          body = send_request('ExportPrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportPrivilegeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出反弹Shell事件

        # @param request: Request instance for ExportReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportReverseShellEventsResponse`
        def ExportReverseShellEvents(request)
          body = send_request('ExportReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportReverseShellEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于异步导出数据量大的日志文件

        # @param request: Request instance for ExportTasks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportTasksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportTasksResponse`
        def ExportTasks(request)
          body = send_request('ExportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出本次漏洞检测Excel

        # @param request: Request instance for ExportVulDetectionExcel.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionExcelRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionExcelResponse`
        def ExportVulDetectionExcel(request)
          body = send_request('ExportVulDetectionExcel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDetectionExcelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出漏洞检测报告。

        # @param request: Request instance for ExportVulDetectionReport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionReportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionReportResponse`
        def ExportVulDetectionReport(request)
          body = send_request('ExportVulDetectionReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDetectionReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。

        # @param request: Request instance for IgnoreImpactedHosts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::IgnoreImpactedHostsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::IgnoreImpactedHostsResponse`
        def IgnoreImpactedHosts(request)
          body = send_request('IgnoreImpactedHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IgnoreImpactedHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceOpenProVersionPrepaid) 用于开通专业版询价(预付费)。

        # @param request: Request instance for InquiryPriceOpenProVersionPrepaid.
        # @type request: :class:`Tencentcloud::cwp::V20180228::InquiryPriceOpenProVersionPrepaidRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::InquiryPriceOpenProVersionPrepaidResponse`
        def InquiryPriceOpenProVersionPrepaid(request)
          body = send_request('InquiryPriceOpenProVersionPrepaid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceOpenProVersionPrepaidResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口{MisAlarmNonlocalLoginPlaces}将设置当前地点为常用登录地。

        # @param request: Request instance for MisAlarmNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::MisAlarmNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::MisAlarmNonlocalLoginPlacesResponse`
        def MisAlarmNonlocalLoginPlaces(request)
          body = send_request('MisAlarmNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MisAlarmNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyAlarmAttribute）用于修改告警设置。

        # @param request: Request instance for ModifyAlarmAttribute.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyAlarmAttributeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyAlarmAttributeResponse`
        def ModifyAlarmAttribute(request)
          body = send_request('ModifyAlarmAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyAutoOpenProVersionConfig) 用于设置新增主机自动开通专业版配置。

        # @param request: Request instance for ModifyAutoOpenProVersionConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyAutoOpenProVersionConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyAutoOpenProVersionConfigResponse`
        def ModifyAutoOpenProVersionConfig(request)
          body = send_request('ModifyAutoOpenProVersionConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoOpenProVersionConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于编辑异地登录白名单规则。

        # @param request: Request instance for ModifyLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLoginWhiteListResponse`
        def ModifyLoginWhiteList(request)
          body = send_request('ModifyLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoginWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 定时扫描设置

        # @param request: Request instance for ModifyMalwareTimingScanSettings.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareTimingScanSettingsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareTimingScanSettingsResponse`
        def ModifyMalwareTimingScanSettings(request)
          body = send_request('ModifyMalwareTimingScanSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMalwareTimingScanSettingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyProVersionRenewFlag) 用于修改专业版包年包月续费标识。

        # @param request: Request instance for ModifyProVersionRenewFlag.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyProVersionRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyProVersionRenewFlagResponse`
        def ModifyProVersionRenewFlag(request)
          body = send_request('ModifyProVersionRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProVersionRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (OpenProVersion) 用于开通专业版。

        # @param request: Request instance for OpenProVersion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::OpenProVersionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::OpenProVersionResponse`
        def OpenProVersion(request)
          body = send_request('OpenProVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenProVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (OpenProVersionPrepaid) 用于开通专业版(包年包月)。

        # @param request: Request instance for OpenProVersionPrepaid.
        # @type request: :class:`Tencentcloud::cwp::V20180228::OpenProVersionPrepaidRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::OpenProVersionPrepaidResponse`
        def OpenProVersionPrepaid(request)
          body = send_request('OpenProVersionPrepaid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenProVersionPrepaidResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RecoverMalwares）用于批量恢复已经被隔离的木马文件。

        # @param request: Request instance for RecoverMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RecoverMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RecoverMalwaresResponse`
        def RecoverMalwares(request)
          body = send_request('RecoverMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (RenewProVersion) 用于续费专业版(包年包月)。

        # @param request: Request instance for RenewProVersion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RenewProVersionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RenewProVersionResponse`
        def RenewProVersion(request)
          body = send_request('RenewProVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewProVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (RescanImpactedHost) 用于漏洞重新检测。

        # @param request: Request instance for RescanImpactedHost.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RescanImpactedHostRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RescanImpactedHostResponse`
        def RescanImpactedHost(request)
          body = send_request('RescanImpactedHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RescanImpactedHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SeparateMalwares）用于隔离木马。

        # @param request: Request instance for SeparateMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SeparateMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SeparateMalwaresResponse`
        def SeparateMalwares(request)
          body = send_request('SeparateMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SeparateMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置高危命令事件状态

        # @param request: Request instance for SetBashEventsStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SetBashEventsStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SetBashEventsStatusResponse`
        def SetBashEventsStatus(request)
          body = send_request('SetBashEventsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetBashEventsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换高危命令规则状态

        # @param request: Request instance for SwitchBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SwitchBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SwitchBashRulesResponse`
        def SwitchBashRules(request)
          body = send_request('SwitchBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (TrustMaliciousRequest) 用于恶意请求添加信任。

        # @param request: Request instance for TrustMaliciousRequest.
        # @type request: :class:`Tencentcloud::cwp::V20180228::TrustMaliciousRequestRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::TrustMaliciousRequestResponse`
        def TrustMaliciousRequest(request)
          body = send_request('TrustMaliciousRequest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrustMaliciousRequestResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(TrustMalwares)将被识别木马文件设为信任。

        # @param request: Request instance for TrustMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::TrustMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::TrustMalwaresResponse`
        def TrustMalwares(request)
          body = send_request('TrustMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrustMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (UntrustMaliciousRequest) 用于取消信任恶意请求。

        # @param request: Request instance for UntrustMaliciousRequest.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UntrustMaliciousRequestRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UntrustMaliciousRequestResponse`
        def UntrustMaliciousRequest(request)
          body = send_request('UntrustMaliciousRequest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UntrustMaliciousRequestResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UntrustMalwares）用于取消信任木马文件。

        # @param request: Request instance for UntrustMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UntrustMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UntrustMalwaresResponse`
        def UntrustMalwares(request)
          body = send_request('UntrustMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UntrustMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线策略id更新策略信息

        # @param request: Request instance for UpdateBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UpdateBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UpdateBaselineStrategyResponse`
        def UpdateBaselineStrategy(request)
          body = send_request('UpdateBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateBaselineStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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