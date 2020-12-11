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
  module Dc
    module V20180410
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-04-10'
        @@endpoint = 'dc.tencentcloudapi.com'
        @@sdk_version = 'DC_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 接受专用通道申请

        # @param request: Request instance for AcceptDirectConnectTunnel.
        # @type request: :class:`Tencentcloud::dc::V20180410::AcceptDirectConnectTunnelRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::AcceptDirectConnectTunnelResponse`
        def AcceptDirectConnectTunnel(request)
          body = send_request('AcceptDirectConnectTunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptDirectConnectTunnelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 申请物理专线接入。
        # 调用该接口时，请注意：
        # 账号要进行实名认证，否则不允许申请物理专线；
        # 若账户下存在欠费状态的物理专线，则不能申请更多的物理专线。

        # @param request: Request instance for CreateDirectConnect.
        # @type request: :class:`Tencentcloud::dc::V20180410::CreateDirectConnectRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::CreateDirectConnectResponse`
        def CreateDirectConnect(request)
          body = send_request('CreateDirectConnect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDirectConnectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建专用通道的接口

        # @param request: Request instance for CreateDirectConnectTunnel.
        # @type request: :class:`Tencentcloud::dc::V20180410::CreateDirectConnectTunnelRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::CreateDirectConnectTunnelResponse`
        def CreateDirectConnectTunnel(request)
          body = send_request('CreateDirectConnectTunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDirectConnectTunnelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除物理专线。
        # 只能删除处于已连接状态的物理专线。

        # @param request: Request instance for DeleteDirectConnect.
        # @type request: :class:`Tencentcloud::dc::V20180410::DeleteDirectConnectRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::DeleteDirectConnectResponse`
        def DeleteDirectConnect(request)
          body = send_request('DeleteDirectConnect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDirectConnectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除专用通道

        # @param request: Request instance for DeleteDirectConnectTunnel.
        # @type request: :class:`Tencentcloud::dc::V20180410::DeleteDirectConnectTunnelRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::DeleteDirectConnectTunnelResponse`
        def DeleteDirectConnectTunnel(request)
          body = send_request('DeleteDirectConnectTunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDirectConnectTunnelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询物理专线接入点

        # @param request: Request instance for DescribeAccessPoints.
        # @type request: :class:`Tencentcloud::dc::V20180410::DescribeAccessPointsRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::DescribeAccessPointsResponse`
        def DescribeAccessPoints(request)
          body = send_request('DescribeAccessPoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessPointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询专用通道列表。

        # @param request: Request instance for DescribeDirectConnectTunnels.
        # @type request: :class:`Tencentcloud::dc::V20180410::DescribeDirectConnectTunnelsRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::DescribeDirectConnectTunnelsResponse`
        def DescribeDirectConnectTunnels(request)
          body = send_request('DescribeDirectConnectTunnels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDirectConnectTunnelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询物理专线列表。

        # @param request: Request instance for DescribeDirectConnects.
        # @type request: :class:`Tencentcloud::dc::V20180410::DescribeDirectConnectsRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::DescribeDirectConnectsResponse`
        def DescribeDirectConnects(request)
          body = send_request('DescribeDirectConnects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDirectConnectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改物理专线的属性。

        # @param request: Request instance for ModifyDirectConnectAttribute.
        # @type request: :class:`Tencentcloud::dc::V20180410::ModifyDirectConnectAttributeRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::ModifyDirectConnectAttributeResponse`
        def ModifyDirectConnectAttribute(request)
          body = send_request('ModifyDirectConnectAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDirectConnectAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改专用通道属性

        # @param request: Request instance for ModifyDirectConnectTunnelAttribute.
        # @type request: :class:`Tencentcloud::dc::V20180410::ModifyDirectConnectTunnelAttributeRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::ModifyDirectConnectTunnelAttributeResponse`
        def ModifyDirectConnectTunnelAttribute(request)
          body = send_request('ModifyDirectConnectTunnelAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDirectConnectTunnelAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拒绝专用通道申请

        # @param request: Request instance for RejectDirectConnectTunnel.
        # @type request: :class:`Tencentcloud::dc::V20180410::RejectDirectConnectTunnelRequest`
        # @rtype: :class:`Tencentcloud::dc::V20180410::RejectDirectConnectTunnelResponse`
        def RejectDirectConnectTunnel(request)
          body = send_request('RejectDirectConnectTunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectDirectConnectTunnelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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