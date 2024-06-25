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
  module Ioa
    module V20220601
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-06-01'
            api_endpoint = 'ioa.tencentcloudapi.com'
            sdk_version = 'IOA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 以分页的方式查询账户目录列表,私有化调用path为：/capi/Assets/DescribeAccountGroups

        # @param request: Request instance for DescribeAccountGroups.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeAccountGroupsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeAccountGroupsResponse`
        def DescribeAccountGroups(request)
          body = send_request('DescribeAccountGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询满足条件的终端数据详情，私有化调用path为：/capi/Assets/Device/DescribeDevices

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeDevicesResponse`
        def DescribeDevices(request)
          body = send_request('DescribeDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号列表，支持分页，模糊搜索，私有化调用path为：/capi/Assets/Account/DescribeLocalAccounts

        # @param request: Request instance for DescribeLocalAccounts.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeLocalAccountsRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeLocalAccountsResponse`
        def DescribeLocalAccounts(request)
          body = send_request('DescribeLocalAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLocalAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账户根分组详情，私有化调用path为：capi/Assets/DescribeRootAccountGroup

        # @param request: Request instance for DescribeRootAccountGroup.
        # @type request: :class:`Tencentcloud::ioa::V20220601::DescribeRootAccountGroupRequest`
        # @rtype: :class:`Tencentcloud::ioa::V20220601::DescribeRootAccountGroupResponse`
        def DescribeRootAccountGroup(request)
          body = send_request('DescribeRootAccountGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRootAccountGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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