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
  module Cdwch
    module V20200915
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-09-15'
            api_endpoint = 'cdwch.tencentcloudapi.com'
            sdk_version = 'CDWCH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新增和修改用户接口

        # @param request: Request instance for ActionAlterCkUser.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ActionAlterCkUserRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ActionAlterCkUserResponse`
        def ActionAlterCkUser(request)
          body = send_request('ActionAlterCkUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActionAlterCkUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或者修改备份策略

        # @param request: Request instance for CreateBackUpSchedule.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::CreateBackUpScheduleRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::CreateBackUpScheduleResponse`
        def CreateBackUpSchedule(request)
          body = send_request('CreateBackUpSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackUpScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 针对驱动sql命令查询ck集群接口

        # @param request: Request instance for DescribeCkSqlApis.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeCkSqlApisRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeCkSqlApisResponse`
        def DescribeCkSqlApis(request)
          body = send_request('DescribeCkSqlApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCkSqlApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例shard信息列表

        # @param request: Request instance for DescribeInstanceShards.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceShardsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceShardsResponse`
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

        # 在集群配置页面修改集群配置文件接口，xml模式

        # @param request: Request instance for ModifyClusterConfigs.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ModifyClusterConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ModifyClusterConfigsResponse`
        def ModifyClusterConfigs(request)
          body = send_request('ModifyClusterConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 针对ck账号的权限做管控（新版）

        # @param request: Request instance for ModifyUserNewPrivilege.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ModifyUserNewPrivilegeRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ModifyUserNewPrivilegeResponse`
        def ModifyUserNewPrivilege(request)
          body = send_request('ModifyUserNewPrivilege', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserNewPrivilegeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或者关闭策略

        # @param request: Request instance for OpenBackUp.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::OpenBackUpRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::OpenBackUpResponse`
        def OpenBackUp(request)
          body = send_request('OpenBackUp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenBackUpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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