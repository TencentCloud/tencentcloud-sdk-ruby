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
  module Cdwpg
    module V20201230
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-30'
            api_endpoint = 'cdwpg.tencentcloudapi.com'
            sdk_version = 'CDWPG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建集群

        # @param request: Request instance for CreateInstanceByApi.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::CreateInstanceByApiRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::CreateInstanceByApiResponse`
        def CreateInstanceByApi(request)
          body = send_request('CreateInstanceByApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceByApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生实例对应的账号列表

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeAccountsResponse`
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

        # DescribeDBConfigHistory1

        # @param request: Request instance for DescribeDBConfigHistory.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeDBConfigHistoryRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeDBConfigHistoryResponse`
        def DescribeDBConfigHistory(request)
          body = send_request('DescribeDBConfigHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBConfigHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置描述

        # @param request: Request instance for DescribeDBParams.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeDBParamsRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeDBParamsResponse`
        def DescribeDBParams(request)
          body = send_request('DescribeDBParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询错误日志

        # @param request: Request instance for DescribeErrorLog.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeErrorLogRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeErrorLogResponse`
        def DescribeErrorLog(request)
          body = send_request('DescribeErrorLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeErrorLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据实例ID查询某个实例的具体信息

        # @param request: Request instance for DescribeInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceResponse`
        def DescribeInstance(request)
          body = send_request('DescribeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群信息

        # @param request: Request instance for DescribeInstanceInfo.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceInfoRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceInfoResponse`
        def DescribeInstanceInfo(request)
          body = send_request('DescribeInstanceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 节点list

        # @param request: Request instance for DescribeInstanceNodes.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceNodesRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceNodesResponse`
        def DescribeInstanceNodes(request)
          body = send_request('DescribeInstanceNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在集群详情页面，拉取该集群的操作

        # @param request: Request instance for DescribeInstanceOperations.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceOperationsRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceOperationsResponse`
        def DescribeInstanceOperations(request)
          body = send_request('DescribeInstanceOperations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceOperationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群详情页中显示集群状态、流程进度等

        # @param request: Request instance for DescribeInstanceState.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceStateRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstanceStateResponse`
        def DescribeInstanceState(request)
          body = send_request('DescribeInstanceState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生实例列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeInstancesResponse`
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

        # 获取集群实例列表

        # @param request: Request instance for DescribeSimpleInstances.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeSimpleInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeSimpleInstancesResponse`
        def DescribeSimpleInstances(request)
          body = send_request('DescribeSimpleInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSimpleInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询慢SQL日志

        # @param request: Request instance for DescribeSlowLog.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeSlowLogRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeSlowLogResponse`
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

        # 升级记录

        # @param request: Request instance for DescribeUpgradeList.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeUpgradeListRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeUpgradeListResponse`
        def DescribeUpgradeList(request)
          body = send_request('DescribeUpgradeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpgradeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # user_hba

        # @param request: Request instance for DescribeUserHbaConfig.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DescribeUserHbaConfigRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DescribeUserHbaConfigResponse`
        def DescribeUserHbaConfig(request)
          body = send_request('DescribeUserHbaConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserHbaConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁集群

        # @param request: Request instance for DestroyInstanceByApi.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::DestroyInstanceByApiRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::DestroyInstanceByApiResponse`
        def DestroyInstanceByApi(request)
          body = send_request('DestroyInstanceByApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyInstanceByApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群配置下发

        # @param request: Request instance for ModifyDBParameters.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ModifyDBParametersRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ModifyDBParametersResponse`
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

        # 修改实例信息，目前为实例名称

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ModifyInstanceResponse`
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

        # 修改用户Hba配置

        # @param request: Request instance for ModifyUserHba.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ModifyUserHbaRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ModifyUserHbaResponse`
        def ModifyUserHba(request)
          body = send_request('ModifyUserHba', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserHbaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改账号密码

        # @param request: Request instance for ResetAccountPassword.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ResetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ResetAccountPasswordResponse`
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

        # 用户在控制台主动发起重启实例

        # @param request: Request instance for RestartInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::RestartInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::RestartInstanceResponse`
        def RestartInstance(request)
          body = send_request('RestartInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 水平扩容

        # @param request: Request instance for ScaleOutInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ScaleOutInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ScaleOutInstanceResponse`
        def ScaleOutInstance(request)
          body = send_request('ScaleOutInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleOutInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 控制台垂直变配集群

        # @param request: Request instance for ScaleUpInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::ScaleUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::ScaleUpInstanceResponse`
        def ScaleUpInstance(request)
          body = send_request('ScaleUpInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleUpInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在线升级

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::cdwpg::V20201230::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwpg::V20201230::UpgradeInstanceResponse`
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