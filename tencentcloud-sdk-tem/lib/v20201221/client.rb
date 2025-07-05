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
  module Tem
    module V20201221
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-21'
            api_endpoint = 'tem.tencentcloudapi.com'
            sdk_version = 'TEM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 生成Cos临时秘钥

        # @param request: Request instance for CreateCosToken.
        # @type request: :class:`Tencentcloud::tem::V20201221::CreateCosTokenRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::CreateCosTokenResponse`
        def CreateCosToken(request)
          body = send_request('CreateCosToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成Cos临时秘钥

        # @param request: Request instance for CreateCosTokenV2.
        # @type request: :class:`Tencentcloud::tem::V20201221::CreateCosTokenV2Request`
        # @rtype: :class:`Tencentcloud::tem::V20201221::CreateCosTokenV2Response`
        def CreateCosTokenV2(request)
          body = send_request('CreateCosTokenV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosTokenV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建环境

        # @param request: Request instance for CreateNamespace.
        # @type request: :class:`Tencentcloud::tem::V20201221::CreateNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::CreateNamespaceResponse`
        def CreateNamespace(request)
          body = send_request('CreateNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定云资源

        # @param request: Request instance for CreateResource.
        # @type request: :class:`Tencentcloud::tem::V20201221::CreateResourceRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::CreateResourceResponse`
        def CreateResource(request)
          body = send_request('CreateResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建服务

        # @param request: Request instance for CreateServiceV2.
        # @type request: :class:`Tencentcloud::tem::V20201221::CreateServiceV2Request`
        # @rtype: :class:`Tencentcloud::tem::V20201221::CreateServiceV2Response`
        def CreateServiceV2(request)
          body = send_request('CreateServiceV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 Ingress 规则

        # @param request: Request instance for DeleteIngress.
        # @type request: :class:`Tencentcloud::tem::V20201221::DeleteIngressRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DeleteIngressResponse`
        def DeleteIngress(request)
          body = send_request('DeleteIngress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIngressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 服务部署

        # @param request: Request instance for DeployServiceV2.
        # @type request: :class:`Tencentcloud::tem::V20201221::DeployServiceV2Request`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DeployServiceV2Response`
        def DeployServiceV2(request)
          body = send_request('DeployServiceV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployServiceV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Ingress 规则

        # @param request: Request instance for DescribeIngress.
        # @type request: :class:`Tencentcloud::tem::V20201221::DescribeIngressRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DescribeIngressResponse`
        def DescribeIngress(request)
          body = send_request('DescribeIngress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIngressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Ingress 规则列表

        # @param request: Request instance for DescribeIngresses.
        # @type request: :class:`Tencentcloud::tem::V20201221::DescribeIngressesRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DescribeIngressesResponse`
        def DescribeIngresses(request)
          body = send_request('DescribeIngresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIngressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取租户环境列表

        # @param request: Request instance for DescribeNamespaces.
        # @type request: :class:`Tencentcloud::tem::V20201221::DescribeNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DescribeNamespacesResponse`
        def DescribeNamespaces(request)
          body = send_request('DescribeNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务关联的 Ingress 规则列表

        # @param request: Request instance for DescribeRelatedIngresses.
        # @type request: :class:`Tencentcloud::tem::V20201221::DescribeRelatedIngressesRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DescribeRelatedIngressesResponse`
        def DescribeRelatedIngresses(request)
          body = send_request('DescribeRelatedIngresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRelatedIngressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取服务下面运行pod列表

        # @param request: Request instance for DescribeServiceRunPodListV2.
        # @type request: :class:`Tencentcloud::tem::V20201221::DescribeServiceRunPodListV2Request`
        # @rtype: :class:`Tencentcloud::tem::V20201221::DescribeServiceRunPodListV2Response`
        def DescribeServiceRunPodListV2(request)
          body = send_request('DescribeServiceRunPodListV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceRunPodListV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成包预签名下载链接

        # @param request: Request instance for GenerateDownloadUrl.
        # @type request: :class:`Tencentcloud::tem::V20201221::GenerateDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::GenerateDownloadUrlResponse`
        def GenerateDownloadUrl(request)
          body = send_request('GenerateDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或者更新 Ingress 规则

        # @param request: Request instance for ModifyIngress.
        # @type request: :class:`Tencentcloud::tem::V20201221::ModifyIngressRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::ModifyIngressResponse`
        def ModifyIngress(request)
          body = send_request('ModifyIngress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIngressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑环境

        # @param request: Request instance for ModifyNamespace.
        # @type request: :class:`Tencentcloud::tem::V20201221::ModifyNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::ModifyNamespaceResponse`
        def ModifyNamespace(request)
          body = send_request('ModifyNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改服务基本信息

        # @param request: Request instance for ModifyServiceInfo.
        # @type request: :class:`Tencentcloud::tem::V20201221::ModifyServiceInfoRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::ModifyServiceInfoResponse`
        def ModifyServiceInfo(request)
          body = send_request('ModifyServiceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyServiceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启实例

        # @param request: Request instance for RestartServiceRunPod.
        # @type request: :class:`Tencentcloud::tem::V20201221::RestartServiceRunPodRequest`
        # @rtype: :class:`Tencentcloud::tem::V20201221::RestartServiceRunPodResponse`
        def RestartServiceRunPod(request)
          body = send_request('RestartServiceRunPod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartServiceRunPodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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