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
  module Drm
    module V20181115
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-11-15'
        @@endpoint = 'drm.tencentcloudapi.com'
        @@sdk_version = 'DRM_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口用来设置fairplay方案所需的私钥、私钥密钥、ask等信息。
        # 如需使用fairplay方案，请务必先设置私钥。

        # @param request: Request instance for AddFairPlayPem.
        # @type request: :class:`Tencentcloud::drm::V20181115::AddFairPlayPemRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::AddFairPlayPemResponse`
        def AddFairPlayPem(request)
          body = send_request('AddFairPlayPem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddFairPlayPemResponse.new
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

        # 该接口用来设置加密的密钥。注意，同一个content id，只能设置一次！

        # @param request: Request instance for CreateEncryptKeys.
        # @type request: :class:`Tencentcloud::drm::V20181115::CreateEncryptKeysRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::CreateEncryptKeysResponse`
        def CreateEncryptKeys(request)
          body = send_request('CreateEncryptKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEncryptKeysResponse.new
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

        # 本接口用来生成DRM方案对应的播放许可证，开发者需提供DRM方案类型、内容类型参数，后台将生成许可证后返回许可证数据
        # 开发者需要转发终端设备发出的许可证请求信息。

        # @param request: Request instance for CreateLicense.
        # @type request: :class:`Tencentcloud::drm::V20181115::CreateLicenseRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::CreateLicenseResponse`
        def CreateLicense(request)
          body = send_request('CreateLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLicenseResponse.new
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

        # 本接口用来删除fairplay方案的私钥、ask等信息
        # 注：高风险操作，删除后，您将无法使用腾讯云DRM提供的fairplay服务。
        # 由于缓存，删除操作需要约半小时生效

        # @param request: Request instance for DeleteFairPlayPem.
        # @type request: :class:`Tencentcloud::drm::V20181115::DeleteFairPlayPemRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::DeleteFairPlayPemResponse`
        def DeleteFairPlayPem(request)
          body = send_request('DeleteFairPlayPem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFairPlayPemResponse.new
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

        # 本接口用来查询指定DRM类型、ContentType的所有加密密钥

        # @param request: Request instance for DescribeAllKeys.
        # @type request: :class:`Tencentcloud::drm::V20181115::DescribeAllKeysRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::DescribeAllKeysResponse`
        def DescribeAllKeys(request)
          body = send_request('DescribeAllKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllKeysResponse.new
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

        # 该接口用来查询设置的FairPlay私钥校验信息。可用该接口校验设置的私钥与本身的私钥是否一致。

        # @param request: Request instance for DescribeFairPlayPem.
        # @type request: :class:`Tencentcloud::drm::V20181115::DescribeFairPlayPemRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::DescribeFairPlayPemResponse`
        def DescribeFairPlayPem(request)
          body = send_request('DescribeFairPlayPem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFairPlayPemResponse.new
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

        # 开发者需要指定使用的DRM类型、和需要加密的Track类型，后台返回加密使用的密钥
        # 如果加密使用的ContentID没有关联的密钥信息，后台会自动生成新的密钥返回

        # @param request: Request instance for DescribeKeys.
        # @type request: :class:`Tencentcloud::drm::V20181115::DescribeKeysRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::DescribeKeysResponse`
        def DescribeKeys(request)
          body = send_request('DescribeKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeysResponse.new
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

        # 本接口用来设置fairplay方案所需的私钥、私钥密钥、ask等信息。
        # 如需使用fairplay方案，请务必先设置私钥。

        # @param request: Request instance for ModifyFairPlayPem.
        # @type request: :class:`Tencentcloud::drm::V20181115::ModifyFairPlayPemRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::ModifyFairPlayPemResponse`
        def ModifyFairPlayPem(request)
          body = send_request('ModifyFairPlayPem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFairPlayPemResponse.new
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

        # 开发者调用该接口，启动一次内容文件的DRM加密工作流

        # @param request: Request instance for StartEncryption.
        # @type request: :class:`Tencentcloud::drm::V20181115::StartEncryptionRequest`
        # @rtype: :class:`Tencentcloud::drm::V20181115::StartEncryptionResponse`
        def StartEncryption(request)
          body = send_request('StartEncryption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartEncryptionResponse.new
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