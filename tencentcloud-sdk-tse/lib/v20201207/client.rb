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
  module Tse
    module V20201207
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-07'
            api_endpoint = 'tse.tencentcloudapi.com'
            sdk_version = 'TSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建引擎实例

        # @param request: Request instance for CreateEngine.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateEngineRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateEngineResponse`
        def CreateEngine(request)
          body = send_request('CreateEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除引擎实例

        # @param request: Request instance for DeleteEngine.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteEngineRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteEngineResponse`
        def DeleteEngine(request)
          body = send_request('DeleteEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关节点列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayNodes.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayNodesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayNodesResponse`
        def DescribeCloudNativeAPIGatewayNodes(request)
          body = send_request('DescribeCloudNativeAPIGatewayNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Nacos类型引擎实例副本信息

        # @param request: Request instance for DescribeNacosReplicas.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNacosReplicasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNacosReplicasResponse`
        def DescribeNacosReplicas(request)
          body = send_request('DescribeNacosReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNacosReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询nacos服务接口列表

        # @param request: Request instance for DescribeNacosServerInterfaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNacosServerInterfacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNacosServerInterfacesResponse`
        def DescribeNacosServerInterfaces(request)
          body = send_request('DescribeNacosServerInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNacosServerInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询引擎实例访问地址

        # @param request: Request instance for DescribeSREInstanceAccessAddress.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressResponse`
        def DescribeSREInstanceAccessAddress(request)
          body = send_request('DescribeSREInstanceAccessAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstanceAccessAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询引擎实例列表

        # @param request: Request instance for DescribeSREInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesResponse`
        def DescribeSREInstances(request)
          body = send_request('DescribeSREInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Zookeeper类型注册引擎实例副本信息

        # @param request: Request instance for DescribeZookeeperReplicas.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperReplicasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperReplicasResponse`
        def DescribeZookeeperReplicas(request)
          body = send_request('DescribeZookeeperReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZookeeperReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询zookeeper服务接口列表

        # @param request: Request instance for DescribeZookeeperServerInterfaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperServerInterfacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperServerInterfacesResponse`
        def DescribeZookeeperServerInterfaces(request)
          body = send_request('DescribeZookeeperServerInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZookeeperServerInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改引擎公网访问配置

        # @param request: Request instance for UpdateEngineInternetAccess.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateEngineInternetAccessRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateEngineInternetAccessResponse`
        def UpdateEngineInternetAccess(request)
          body = send_request('UpdateEngineInternetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEngineInternetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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