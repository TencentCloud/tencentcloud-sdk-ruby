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
  module Antiddos
    module V20250903
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-09-03'
            api_endpoint = 'antiddos.tencentcloudapi.com'
            sdk_version = 'ANTIDDOS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # <p>创建 DDoS 高防服务防护实例。</p>
        # <p>防护实例是高防服务下承载防护策略与防护资源的基本单元。创建后，您可以在实例中配置防护策略，并绑定需要防护的云资源。</p>
        # <p><strong>前提条件：</strong>当前腾讯云主账号已订阅 DDoS 高防套餐，具体操作请参见 <a href="https://cloud.tencent.com/document/product/297/137989">购买指引</a>。</p>

        # @param request: Request instance for CreateProtection.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::CreateProtectionRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::CreateProtectionResponse`
        def CreateProtection(request)
          body = send_request('CreateProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>删除防护实例。</p>
        # <p>删除后，该实例及其绑定的防护策略将不再生效。请确保实例中没有正在使用的防护资源，或已提前将防护资源换绑至其他实例。</p>

        # @param request: Request instance for DeleteProtection.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::DeleteProtectionRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::DeleteProtectionResponse`
        def DeleteProtection(request)
          body = send_request('DeleteProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询封堵解封记录和解封配额信息。

        # @param request: Request instance for DescribeDDoSBlockRecords.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::DescribeDDoSBlockRecordsRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::DescribeDDoSBlockRecordsResponse`
        def DescribeDDoSBlockRecords(request)
          body = send_request('DescribeDDoSBlockRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSBlockRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>按防护实例 ID 查询该实例下的 L3/4 DDoS 防护策略详情。</p>

        # @param request: Request instance for DescribeDDoSProtectionPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::DescribeDDoSProtectionPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::DescribeDDoSProtectionPolicyResponse`
        def DescribeDDoSProtectionPolicy(request)
          body = send_request('DescribeDDoSProtectionPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSProtectionPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>按防护实例 ID 查询该实例下绑定的防护资源，支持分页与按资源类型过滤。</p>

        # @param request: Request instance for DescribeProtectionResources.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::DescribeProtectionResourcesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::DescribeProtectionResourcesResponse`
        def DescribeProtectionResources(request)
          body = send_request('DescribeProtectionResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectionResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>按过滤条件查询当前账号下有权限访问的 DDoS 高防服务防护实例，支持分页返回。</p>

        # @param request: Request instance for DescribeProtections.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::DescribeProtectionsRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::DescribeProtectionsResponse`
        def DescribeProtections(request)
          body = send_request('DescribeProtections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>按资源六段式查询云资源当前绑定的 DDoS 高防服务防护实例。</p>

        # @param request: Request instance for DescribeResourceProtections.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::DescribeResourceProtectionsRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::DescribeResourceProtectionsResponse`
        def DescribeResourceProtections(request)
          body = send_request('DescribeResourceProtections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceProtectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>按防护实例 ID 修改该实例下的 L3/4 DDoS 防护策略。</p>

        # @param request: Request instance for ModifyDDoSProtectionPolicy.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::ModifyDDoSProtectionPolicyRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::ModifyDDoSProtectionPolicyResponse`
        def ModifyDDoSProtectionPolicy(request)
          body = send_request('ModifyDDoSProtectionPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSProtectionPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改防护实例。支持修改防护实例的名称。

        # @param request: Request instance for ModifyProtection.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::ModifyProtectionRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::ModifyProtectionResponse`
        def ModifyProtection(request)
          body = send_request('ModifyProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # <p>修改防护实例的防护资源。</p>
        # <p>向防护实例中添加、替换或移除防护对象（即绑定到该实例进行防护的云资源）。</p>

        # @param request: Request instance for ModifyProtectionResource.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::ModifyProtectionResourceRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::ModifyProtectionResourceResponse`
        def ModifyProtectionResource(request)
          body = send_request('ModifyProtectionResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProtectionResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 申请解封资源，可通过 DescribeDDoSBlockRecords 接口获取资源的封堵解封状态。

        # @param request: Request instance for UnblockResources.
        # @type request: :class:`Tencentcloud::antiddos::V20250903::UnblockResourcesRequest`
        # @rtype: :class:`Tencentcloud::antiddos::V20250903::UnblockResourcesResponse`
        def UnblockResources(request)
          body = send_request('UnblockResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnblockResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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