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
  module Weilingwith
    module V20230427
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-04-27'
            api_endpoint = 'weilingwith.tencentcloudapi.com'
            sdk_version = 'WEILINGWITH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查询指定空间关联的应用列表

        # @param request: Request instance for DescribeApplicationList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeApplicationListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeApplicationListResponse`
        def DescribeApplicationList(request)
          body = send_request('DescribeApplicationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘应用凭证

        # @param request: Request instance for DescribeEdgeApplicationToken.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeEdgeApplicationTokenRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeEdgeApplicationTokenResponse`
        def DescribeEdgeApplicationToken(request)
          body = send_request('DescribeEdgeApplicationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeApplicationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询接口列表

        # @param request: Request instance for DescribeInterfaceList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeInterfaceListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeInterfaceListResponse`
        def DescribeInterfaceList(request)
          body = send_request('DescribeInterfaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInterfaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取租户下的空间列表

        # @param request: Request instance for DescribeWorkspaceList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceListResponse`
        def DescribeWorkspaceList(request)
          body = send_request('DescribeWorkspaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询项目空间人员列表

        # @param request: Request instance for DescribeWorkspaceUserList.
        # @type request: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceUserListRequest`
        # @rtype: :class:`Tencentcloud::weilingwith::V20230427::DescribeWorkspaceUserListResponse`
        def DescribeWorkspaceUserList(request)
          body = send_request('DescribeWorkspaceUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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