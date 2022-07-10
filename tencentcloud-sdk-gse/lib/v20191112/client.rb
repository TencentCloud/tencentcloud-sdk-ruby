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
  module Gse
    module V20191112
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-11-12'
            api_endpoint = 'gse.tencentcloudapi.com'
            sdk_version = 'GSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（AttachCcnInstances）用于关联云联网实例。

        # @param request: Request instance for AttachCcnInstances.
        # @type request: :class:`Tencentcloud::gse::V20191112::AttachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::AttachCcnInstancesResponse`
        def AttachCcnInstances(request)
          body = send_request('AttachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachCcnInstancesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CopyFleet）用于复制服务器舰队。

        # @param request: Request instance for CopyFleet.
        # @type request: :class:`Tencentcloud::gse::V20191112::CopyFleetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CopyFleetResponse`
        def CopyFleet(request)
          body = send_request('CopyFleet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyFleetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CreateAlias）用于创建别名。

        # @param request: Request instance for CreateAlias.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateAliasRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateAliasResponse`
        def CreateAlias(request)
          body = send_request('CreateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAliasResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CreateAsset）用于创建生成包。
        # 通过获取上传cos的临时密钥，将文件上传至cos，然后将生成包的zip名称下发给本接口完成资源创建。

        # 上传文件至 cos支持俩种方式：

        # - 获取预签名方式，COS 简单上传
        #     1. [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) 获取预签名信息
        #     2. 使用 COS API 进行上传([参考文档](https://cloud.tencent.com/document/product/436/7749))
        # -  临时密钥方式，COS 简单上传或者分块上传方式
        #     1. [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727)（获取上传 bucket  第一次调用需要，后续可以不用调用）
        #     2. [GetUploadFederationToken](https://cloud.tencent.com/document/product/1165/48742) 获取临时密钥
        #     3. 使用 COS API 进行上传([参考文档](https://cloud.tencent.com/document/product/436/7742))

        # 具体使用场景可以参考 [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) ,  [GetUploadFederationToken](https://cloud.tencent.com/document/product/1165/48742)和下面 CreateAsset 示例。

        # @param request: Request instance for CreateAsset.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateAssetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateAssetResponse`
        def CreateAsset(request)
          body = send_request('CreateAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CreateAssetWithImage）用于创建生成包镜像信息。

        # @param request: Request instance for CreateAssetWithImage.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateAssetWithImageRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateAssetWithImageResponse`
        def CreateAssetWithImage(request)
          body = send_request('CreateAssetWithImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetWithImageResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CreateFleet）用于创建服务器舰队。

        # @param request: Request instance for CreateFleet.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateFleetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateFleetResponse`
        def CreateFleet(request)
          body = send_request('CreateFleet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFleetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CreateGameServerSession）用于创建游戏服务会话。

        # @param request: Request instance for CreateGameServerSession.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateGameServerSessionRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateGameServerSessionResponse`
        def CreateGameServerSession(request)
          body = send_request('CreateGameServerSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGameServerSessionResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（CreateGameServerSessionQueue）用于创建游戏服务器会话队列。

        # @param request: Request instance for CreateGameServerSessionQueue.
        # @type request: :class:`Tencentcloud::gse::V20191112::CreateGameServerSessionQueueRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::CreateGameServerSessionQueueResponse`
        def CreateGameServerSessionQueue(request)
          body = send_request('CreateGameServerSessionQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGameServerSessionQueueResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DeleteAlias）用于删除别名。

        # @param request: Request instance for DeleteAlias.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteAliasRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteAliasResponse`
        def DeleteAlias(request)
          body = send_request('DeleteAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAliasResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DeleteAsset）用于删除生成包。

        # @param request: Request instance for DeleteAsset.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteAssetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteAssetResponse`
        def DeleteAsset(request)
          body = send_request('DeleteAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAssetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DeleteFleet）用于删除服务器舰队。

        # @param request: Request instance for DeleteFleet.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteFleetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteFleetResponse`
        def DeleteFleet(request)
          body = send_request('DeleteFleet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFleetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。

        # @param request: Request instance for DeleteGameServerSessionQueue.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteGameServerSessionQueueRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteGameServerSessionQueueResponse`
        def DeleteGameServerSessionQueue(request)
          body = send_request('DeleteGameServerSessionQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGameServerSessionQueueResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DeleteScalingPolicy）用于删除服务器舰队的扩缩容策略。
        # 通过服务器舰队ID和策略名称删除服务器舰队的扩缩容策略，只传递服务器舰队ID时，会将这个服务器舰队下的所有策略都删除。
        # 传递策略名称时，单独删除策略名称对应的策略。

        # @param request: Request instance for DeleteScalingPolicy.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteScalingPolicyRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteScalingPolicyResponse`
        def DeleteScalingPolicy(request)
          body = send_request('DeleteScalingPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScalingPolicyResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。

        # @param request: Request instance for DeleteTimerScalingPolicy.
        # @type request: :class:`Tencentcloud::gse::V20191112::DeleteTimerScalingPolicyRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DeleteTimerScalingPolicyResponse`
        def DeleteTimerScalingPolicy(request)
          body = send_request('DeleteTimerScalingPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTimerScalingPolicyResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeAlias）用于获取别名详情。

        # @param request: Request instance for DescribeAlias.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeAliasRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeAliasResponse`
        def DescribeAlias(request)
          body = send_request('DescribeAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAliasResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeAsset）获取生成包信息。

        # @param request: Request instance for DescribeAsset.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeAssetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeAssetResponse`
        def DescribeAsset(request)
          body = send_request('DescribeAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeAssetSystems）用于获取生成包支持的操作系统。

        # @param request: Request instance for DescribeAssetSystems.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeAssetSystemsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeAssetSystemsResponse`
        def DescribeAssetSystems(request)
          body = send_request('DescribeAssetSystems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetSystemsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeAssets）用于获取生成包列表。

        # @param request: Request instance for DescribeAssets.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeAssetsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeAssetsResponse`
        def DescribeAssets(request)
          body = send_request('DescribeAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeCcnInstances）用于查询云联网实例。

        # @param request: Request instance for DescribeCcnInstances.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeCcnInstancesResponse`
        def DescribeCcnInstances(request)
          body = send_request('DescribeCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnInstancesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetAttributes）用于查询服务器舰队属性。

        # @param request: Request instance for DescribeFleetAttributes.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetAttributesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetAttributesResponse`
        def DescribeFleetAttributes(request)
          body = send_request('DescribeFleetAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetAttributesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetCapacity）用于查询服务部署容量配置。

        # @param request: Request instance for DescribeFleetCapacity.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetCapacityRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetCapacityResponse`
        def DescribeFleetCapacity(request)
          body = send_request('DescribeFleetCapacity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetCapacityResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetEvents）用于查询服务器舰队相关的事件列表。

        # @param request: Request instance for DescribeFleetEvents.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetEventsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetEventsResponse`
        def DescribeFleetEvents(request)
          body = send_request('DescribeFleetEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetEventsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetPortSettings）用于获取服务器舰队安全组信息。

        # @param request: Request instance for DescribeFleetPortSettings.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetPortSettingsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetPortSettingsResponse`
        def DescribeFleetPortSettings(request)
          body = send_request('DescribeFleetPortSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetPortSettingsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetRelatedResources）用于获取与游戏服务器舰队关联的资源信息，如别名、队列

        # @param request: Request instance for DescribeFleetRelatedResources.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetRelatedResourcesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetRelatedResourcesResponse`
        def DescribeFleetRelatedResources(request)
          body = send_request('DescribeFleetRelatedResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetRelatedResourcesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetStatisticDetails）用于查询服务部署统计详情。

        # @param request: Request instance for DescribeFleetStatisticDetails.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetStatisticDetailsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetStatisticDetailsResponse`
        def DescribeFleetStatisticDetails(request)
          body = send_request('DescribeFleetStatisticDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetStatisticDetailsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetStatisticFlows）用于查询服务部署统计用量。

        # @param request: Request instance for DescribeFleetStatisticFlows.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetStatisticFlowsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetStatisticFlowsResponse`
        def DescribeFleetStatisticFlows(request)
          body = send_request('DescribeFleetStatisticFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetStatisticFlowsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetStatisticSummary）用于查询服务部署统计汇总信息。

        # @param request: Request instance for DescribeFleetStatisticSummary.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetStatisticSummaryRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetStatisticSummaryResponse`
        def DescribeFleetStatisticSummary(request)
          body = send_request('DescribeFleetStatisticSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetStatisticSummaryResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeFleetUtilization）用于查询服务器舰队的利用率信息。

        # @param request: Request instance for DescribeFleetUtilization.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeFleetUtilizationRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeFleetUtilizationResponse`
        def DescribeFleetUtilization(request)
          body = send_request('DescribeFleetUtilization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFleetUtilizationResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeGameServerSessionDetails）用于查询游戏服务器会话详情列表。

        # @param request: Request instance for DescribeGameServerSessionDetails.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionDetailsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionDetailsResponse`
        def DescribeGameServerSessionDetails(request)
          body = send_request('DescribeGameServerSessionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionDetailsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeGameServerSessionPlacement）用于查询游戏服务器会话的放置。

        # @param request: Request instance for DescribeGameServerSessionPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionPlacementResponse`
        def DescribeGameServerSessionPlacement(request)
          body = send_request('DescribeGameServerSessionPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionPlacementResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。

        # @param request: Request instance for DescribeGameServerSessionQueues.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionQueuesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionQueuesResponse`
        def DescribeGameServerSessionQueues(request)
          body = send_request('DescribeGameServerSessionQueues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionQueuesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeGameServerSessions）用于查询游戏服务器会话列表。

        # @param request: Request instance for DescribeGameServerSessions.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeGameServerSessionsResponse`
        def DescribeGameServerSessions(request)
          body = send_request('DescribeGameServerSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGameServerSessionsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeInstanceLimit）用于查询用户实例数限额。

        # @param request: Request instance for DescribeInstanceLimit.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeInstanceLimitRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeInstanceLimitResponse`
        def DescribeInstanceLimit(request)
          body = send_request('DescribeInstanceLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLimitResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeInstanceTypes）用于获取服务器实例类型列表。

        # @param request: Request instance for DescribeInstanceTypes.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeInstanceTypesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeInstanceTypesResponse`
        def DescribeInstanceTypes(request)
          body = send_request('DescribeInstanceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTypesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeInstances）用于查询服务器实例列表。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeInstancesResponse`
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeInstancesExtend）用于查询实例扩展信息列表。

        # @param request: Request instance for DescribeInstancesExtend.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeInstancesExtendRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeInstancesExtendResponse`
        def DescribeInstancesExtend(request)
          body = send_request('DescribeInstancesExtend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesExtendResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribePlayerSessions）用于获取玩家会话列表。

        # @param request: Request instance for DescribePlayerSessions.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribePlayerSessionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribePlayerSessionsResponse`
        def DescribePlayerSessions(request)
          body = send_request('DescribePlayerSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayerSessionsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeRuntimeConfiguration）用于获取服务器舰队运行配置。

        # @param request: Request instance for DescribeRuntimeConfiguration.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeRuntimeConfigurationRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeRuntimeConfigurationResponse`
        def DescribeRuntimeConfiguration(request)
          body = send_request('DescribeRuntimeConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuntimeConfigurationResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeScalingPolicies）用于查询服务器舰队的动态扩缩容策略列表。

        # @param request: Request instance for DescribeScalingPolicies.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeScalingPoliciesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeScalingPoliciesResponse`
        def DescribeScalingPolicies(request)
          body = send_request('DescribeScalingPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScalingPoliciesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeTimerScalingPolicies）用于查询fleet下的定时器列表。可以通过fleetid，定时器名称分页查询。

        # @param request: Request instance for DescribeTimerScalingPolicies.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeTimerScalingPoliciesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeTimerScalingPoliciesResponse`
        def DescribeTimerScalingPolicies(request)
          body = send_request('DescribeTimerScalingPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimerScalingPoliciesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeUserQuota）获取用户单个模块配额。

        # @param request: Request instance for DescribeUserQuota.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeUserQuotaRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeUserQuotaResponse`
        def DescribeUserQuota(request)
          body = send_request('DescribeUserQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserQuotaResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DescribeUserQuotas）用于获取用户配额

        # @param request: Request instance for DescribeUserQuotas.
        # @type request: :class:`Tencentcloud::gse::V20191112::DescribeUserQuotasRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DescribeUserQuotasResponse`
        def DescribeUserQuotas(request)
          body = send_request('DescribeUserQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserQuotasResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（DetachCcnInstances）用于解关联云联网实例。

        # @param request: Request instance for DetachCcnInstances.
        # @type request: :class:`Tencentcloud::gse::V20191112::DetachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::DetachCcnInstancesResponse`
        def DetachCcnInstances(request)
          body = send_request('DetachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachCcnInstancesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（EndGameServerSessionAndProcess）用于终止游戏服务器会话和对应的进程，适用于时限保护和不保护。

        # @param request: Request instance for EndGameServerSessionAndProcess.
        # @type request: :class:`Tencentcloud::gse::V20191112::EndGameServerSessionAndProcessRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::EndGameServerSessionAndProcessResponse`
        def EndGameServerSessionAndProcess(request)
          body = send_request('EndGameServerSessionAndProcess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EndGameServerSessionAndProcessResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口用于获取游戏服务器实例的日志URL。

        # @param request: Request instance for GetGameServerInstanceLogUrl.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetGameServerInstanceLogUrlRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetGameServerInstanceLogUrlResponse`
        def GetGameServerInstanceLogUrl(request)
          body = send_request('GetGameServerInstanceLogUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGameServerInstanceLogUrlResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（GetGameServerSessionLogUrl）用于获取游戏服务器会话的日志URL。

        # @param request: Request instance for GetGameServerSessionLogUrl.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetGameServerSessionLogUrlRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetGameServerSessionLogUrlResponse`
        def GetGameServerSessionLogUrl(request)
          body = send_request('GetGameServerSessionLogUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGameServerSessionLogUrlResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（GetInstanceAccess）用于获取实例登录所需要的凭据。

        # @param request: Request instance for GetInstanceAccess.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetInstanceAccessRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetInstanceAccessResponse`
        def GetInstanceAccess(request)
          body = send_request('GetInstanceAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInstanceAccessResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（GetUploadCredentials）获取上传文件授权信息。
        # 通过 [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) 接口获取临时授权信息后，调用 COS API将数据上传，根据上传的 BucketKey 信息进行生成包 [CreateAsset](https://cloud.tencent.com/document/product/1165/48731) 的创建。参考下面的示例部分。

        # @param request: Request instance for GetUploadCredentials.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetUploadCredentialsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetUploadCredentialsResponse`
        def GetUploadCredentials(request)
          body = send_request('GetUploadCredentials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUploadCredentialsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（GetUploadFederationToken）用于 获取生成包上传所需要的临时密钥。

        # @param request: Request instance for GetUploadFederationToken.
        # @type request: :class:`Tencentcloud::gse::V20191112::GetUploadFederationTokenRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::GetUploadFederationTokenResponse`
        def GetUploadFederationToken(request)
          body = send_request('GetUploadFederationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUploadFederationTokenResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（JoinGameServerSession）用于加入游戏服务器会话。

        # @param request: Request instance for JoinGameServerSession.
        # @type request: :class:`Tencentcloud::gse::V20191112::JoinGameServerSessionRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::JoinGameServerSessionResponse`
        def JoinGameServerSession(request)
          body = send_request('JoinGameServerSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = JoinGameServerSessionResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（JoinGameServerSessionBatch）用于批量加入游戏服务器会话。

        # @param request: Request instance for JoinGameServerSessionBatch.
        # @type request: :class:`Tencentcloud::gse::V20191112::JoinGameServerSessionBatchRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::JoinGameServerSessionBatchResponse`
        def JoinGameServerSessionBatch(request)
          body = send_request('JoinGameServerSessionBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = JoinGameServerSessionBatchResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（ListAliases）用于检索帐户下的所有别名。

        # @param request: Request instance for ListAliases.
        # @type request: :class:`Tencentcloud::gse::V20191112::ListAliasesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::ListAliasesResponse`
        def ListAliases(request)
          body = send_request('ListAliases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAliasesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（ListFleets）用于获取服务器舰队列表。

        # @param request: Request instance for ListFleets.
        # @type request: :class:`Tencentcloud::gse::V20191112::ListFleetsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::ListFleetsResponse`
        def ListFleets(request)
          body = send_request('ListFleets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListFleetsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（PutScalingPolicy）用于设置服务器舰队的动态扩缩容策略。

        # 通过此接口可以增加或者更新服务器舰队的扩缩容策略。
        # 服务器舰队可以有多个扩缩容策略，但是只有一个TargetBased基于目标的策略。

        # ## TargetBased基于目标的策略

        # TargetBased策略计算的指标是PercentAvailableGameSessions，这个策略用于计算当前服务器舰队应该有多少个CVM实例来支撑和分配游戏会话。
        # PercentAvailableGameSessions表示服务器舰队的缓冲值；用来计算服务器舰队在当前容量下可以处理的额外玩家会话数量。
        # 如果使用基于目标的策略，可以按照业务需求设置一个期望的缓冲区大小，GSE的会按照配置的策略来扩容和缩容到这个目标要求的CVM实例数。

        # 例如：客户可以设置同时承载100个游戏会话的服务器舰队预留10%的缓冲区。GSE会按照这个策略执行时，若服务器舰队的可用容量低于或高于10%的游戏服务器会话时，执行扩缩容动作。
        # GSE按照策略期望，扩容新CVM实例或缩容未使用的实例，保持在10%左右的缓冲区。

        # #### 请求参数取值说明

        # ```
        # Name取值策略名称，
        # FleetId取值为选择的服务器舰队ID，
        # PolicyType取值TargetBased，
        # MetricName取值PercentAvailableGameSessions，
        # TargetConfiguration取值为所需的缓冲区值对象，
        # 其他参数不用传递。
        # 请求成功时，将返回策略名称。扩缩容策略在成功创建立即自动生效。
        # ```



        # ## RuleBased基于规则的策略

        # ####  请求参数取值说明

        # ```
        # Name取值策略名称，
        # FleetId取值为选择的服务器舰队ID，
        # PolicyType取值RuleBased，
        # MetricName取值（AvailableGameServerSessions，AvailableCustomCount，PercentAvailableCustomCount，ActiveInstances，IdleInstances，CurrentPlayerSessions和PercentIdleInstances）说明见备注1，
        # 其他参数不用传递。
        # ComparisonOperator取值为 >,>=,<,<=这4个比较符号中的一个，
        # Threshold取值为指标MetricName达到的阈值是多少，
        # EvaluationPeriods取值为指标MetricName达到的阈值持续了多少时间，单位是分钟，
        # ScalingAdjustmentType取值（ChangeInCapacity，ExactCapacity，PercentChangeInCapacity）说明见备注2
        # ScalingAdjustment取值为指标MetricName达到的阈值的条件后，扩缩容多少个CVM实例。
        # 请求成功时，将返回策略名称。扩缩容策略在成功创建立即自动生效。
        # ```

        # 规则执行的条件表达式如下所示：

        # ```
        # 若 [MetricName] 是 [ComparisonOperator] [Threshold] 持续 [EvaluationPeriods] 分钟, 则 [ScalingAdjustmentType] 调整 [ScalingAdjustment]个实例。
        # ```
        # ```
        # if [MetricName] ComparisonOperator [Threshold] for [EvaluationPeriods] minutes, then scaling up by/to  [ScalingAdjustment]
        # ```
        # 例如1：如果当前AvailableCustomCount值大于等于10，持续5分钟，扩容1台CVM实例。
        # ```
        # ScalingAdjustmentType = ChangeInCapacity
        # if [AvailableGameServerSessions] >= [10] for [5] minutes, then scaling up [1]
        # ```
        # 例如2：如果当前AvailableGameServerSessions值大于等于200，持续5分钟，扩容到2台CVM实例。
        # ```
        # ScalingAdjustmentType = ExactCapacity
        # if [AvailableGameServerSessions] >= [200] for [5] minutes, then scaling to [2]
        # ```
        # 例如3：如果当前AvailableCustomCount值大于等于400，持续5分钟，扩容20%台CVM实例。
        # 当前CVM实例数为10台。扩容20%台CVM实例就是增加 10*20%等于2台
        # ```
        # ScalingAdjustmentType = PercentChangeInCapacity
        # if [AvailableGameServerSessions] >= [400] for [5] minutes, then scaling by [currentCVMCount * 20 %]
        # ```
        # **备注1**

        # - | 策略名称（MetricName）                                       | 计算公式                                   | 场景                                        | 场景使用举例                                                 |
        #   | :----------------------------------------------------------- | :----------------------------------------- | :------------------------------------------ | :----------------------------------------------------------- |
        #   | CurrentPlayerSessions<br>当前玩家数指标                      | = 当前在线的玩家数                         | CVM随着玩家会话数变化做扩缩容。             | 例如：<br>MetricName: CurrentPlayerSessions<br>ComparisonOperator: '<=' <br>Threshold: 300<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: 2<br/>ScalingAdjustment: ChangeInCapacity<br>说明：若当前CurrentPlayerSessions小于等于300，持续1分钟，则扩容2台CVM。 |
        #   | AvailableGameServerSessions<br>可用游戏服务器会话数          | = 可用游戏服务会话数                       | CVM随着可用游戏会话数变化做扩缩容。         | 例如：<br/>MetricName: AvailableGameServerSessions<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 5<br/>ScalingAdjustment: 2<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前AvailableGameServerSessions小于50，持续5分钟，则扩容到2台CVM。 |
        #   | PercentAvailableGameServerSessions<br>可用游戏服务器会话百分比 | = 空闲游戏会话数 / 所有的游戏会话数 * 100% | CVM随着可用游戏会话数百分比变化做扩缩容。   | 例如：<br/>MetricName: PercentAvailableGameServerSessions<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: -30<br/>ScalingAdjustment: PercentChangeInCapacity<br/>说明：若当前PercentAvailableGameServerSessions小于50%，持续1分钟，则缩容当前实例数30%台CVM。 |
        #   | AvailableCustomCount<br>可用客户自定义数指标                 | = 客户自定义的数                           | CVM随着可用客户自定义数变化做扩缩容。       | 例如：<br/>MetricName: AvailableCustomCount<br/>ComparisonOperator: '>=' <br/>Threshold: 6<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: -1<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前AvailableCustomCount大于等于6，持续3分钟，则缩容到1台CVM。 |
        #   | PercentAvailableCustomCount<br>可用客户自定义数百分比        | = 客户自定义数 / 客户最大自定义数* 100%    | CVM随着可用客户自定义数百分比变化做扩缩容。 | 例如：<br/>MetricName: PercentAvailableCustomCount<br/>ComparisonOperator: '<' <br/>Threshold: 15<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前PercentAvailableCustomCount小于15%，持续3分钟，则扩容1台CVM。 |
        #   | ActiveInstances<br>活跃实例数指标                            | = 总实例数 - 缩容中的实例数                | CVM随着活跃实例数变化做扩缩容。             | 例如：<br/>MetricName: ActiveInstances<br/>ComparisonOperator: '<' <br/>Threshold: 3<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: 3<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前ActiveInstances小于3台，持续1分钟，则扩容保留到3台CVM。 |
        #   | IdleInstances<br>空闲实例数指标                              | = 未使用的进程数 / 每实例进程数            | CVM随着空闲实例数变化做扩缩容。             | 例如：<br/>MetricName: IdleInstances<br/>ComparisonOperator: '<' <br/>Threshold: 2<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前IdleInstances小于2台，持续3分钟，则扩容1台CVM。 |
        #   | PercentIdleInstances<br>空闲实例百分比                       | = IdleInstances / ActiveInstances * 100%   | CVM随着空闲实例百分比变化做扩缩容。         | 例如：<br/>MetricName: PercentIdleInstances<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前PercentIdleInstances小于50%，持续3分钟，则扩容1台CVM。 |



        # **备注2**

        # **ChangeInCapacity**

        #     当前CVM实例个数的扩容或缩容的调整值。正值按值扩容，负值按值缩容。

        # **ExactCapacity**

        #     把当前CVM实例个数调整为ScalingAdjustment设置的CVM实例数。

        # **PercentChangeInCapacity**

        #     按比例增加或减少的百分比。正值按比例扩容，负值按比例缩容；例如，值“-10”将按10%的比例缩容CVM实例。

        # @param request: Request instance for PutScalingPolicy.
        # @type request: :class:`Tencentcloud::gse::V20191112::PutScalingPolicyRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::PutScalingPolicyResponse`
        def PutScalingPolicy(request)
          body = send_request('PutScalingPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutScalingPolicyResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（PutTimerScalingPolicy）用于给fleet创建或更新定时器。

        # 填写字段timer_id，表示更新；不填字段timer_id表示新增。

        # @param request: Request instance for PutTimerScalingPolicy.
        # @type request: :class:`Tencentcloud::gse::V20191112::PutTimerScalingPolicyRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::PutTimerScalingPolicyResponse`
        def PutTimerScalingPolicy(request)
          body = send_request('PutTimerScalingPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutTimerScalingPolicyResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（ResolveAlias）用于获取别名当前指向的fleetId。

        # @param request: Request instance for ResolveAlias.
        # @type request: :class:`Tencentcloud::gse::V20191112::ResolveAliasRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::ResolveAliasResponse`
        def ResolveAlias(request)
          body = send_request('ResolveAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResolveAliasResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（SearchGameServerSessions）用于搜索游戏服务器会话列表。

        # @param request: Request instance for SearchGameServerSessions.
        # @type request: :class:`Tencentcloud::gse::V20191112::SearchGameServerSessionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::SearchGameServerSessionsResponse`
        def SearchGameServerSessions(request)
          body = send_request('SearchGameServerSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchGameServerSessionsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（SetServerReserved）用于将异常的实例标记为保留，用于问题排查。

        # 字段ReserveValue：0默认值，不保留；1 保留

        # @param request: Request instance for SetServerReserved.
        # @type request: :class:`Tencentcloud::gse::V20191112::SetServerReservedRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::SetServerReservedResponse`
        def SetServerReserved(request)
          body = send_request('SetServerReserved', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetServerReservedResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（SetServerWeight）用于设置服务器权重。

        # @param request: Request instance for SetServerWeight.
        # @type request: :class:`Tencentcloud::gse::V20191112::SetServerWeightRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::SetServerWeightResponse`
        def SetServerWeight(request)
          body = send_request('SetServerWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetServerWeightResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（StartFleetActions）用于启用服务器舰队自动扩缩容。

        # @param request: Request instance for StartFleetActions.
        # @type request: :class:`Tencentcloud::gse::V20191112::StartFleetActionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StartFleetActionsResponse`
        def StartFleetActions(request)
          body = send_request('StartFleetActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartFleetActionsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（StartGameServerSessionPlacement）用于开始放置游戏服务器会话。

        # @param request: Request instance for StartGameServerSessionPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::StartGameServerSessionPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StartGameServerSessionPlacementResponse`
        def StartGameServerSessionPlacement(request)
          body = send_request('StartGameServerSessionPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartGameServerSessionPlacementResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（StopFleetActions）用于停止服务器舰队自动扩缩容，改为手动扩缩容。

        # @param request: Request instance for StopFleetActions.
        # @type request: :class:`Tencentcloud::gse::V20191112::StopFleetActionsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StopFleetActionsResponse`
        def StopFleetActions(request)
          body = send_request('StopFleetActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopFleetActionsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（StopGameServerSessionPlacement）用于停止放置游戏服务器会话。

        # @param request: Request instance for StopGameServerSessionPlacement.
        # @type request: :class:`Tencentcloud::gse::V20191112::StopGameServerSessionPlacementRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::StopGameServerSessionPlacementResponse`
        def StopGameServerSessionPlacement(request)
          body = send_request('StopGameServerSessionPlacement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopGameServerSessionPlacementResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateAlias）用于更新别名的属性。

        # @param request: Request instance for UpdateAlias.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateAliasRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateAliasResponse`
        def UpdateAlias(request)
          body = send_request('UpdateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAliasResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateAsset）用于修改生成包信息。

        # @param request: Request instance for UpdateAsset.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateAssetRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateAssetResponse`
        def UpdateAsset(request)
          body = send_request('UpdateAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAssetResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateBucketAccelerateOpt）用于开启cos全球加速。

        # @param request: Request instance for UpdateBucketAccelerateOpt.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateBucketAccelerateOptRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateBucketAccelerateOptResponse`
        def UpdateBucketAccelerateOpt(request)
          body = send_request('UpdateBucketAccelerateOpt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateBucketAccelerateOptResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateBucketCORSOpt）用于设置cos跨域访问。

        # @param request: Request instance for UpdateBucketCORSOpt.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateBucketCORSOptRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateBucketCORSOptResponse`
        def UpdateBucketCORSOpt(request)
          body = send_request('UpdateBucketCORSOpt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateBucketCORSOptResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateFleetAttributes）用于更新服务器舰队属性。

        # @param request: Request instance for UpdateFleetAttributes.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateFleetAttributesRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateFleetAttributesResponse`
        def UpdateFleetAttributes(request)
          body = send_request('UpdateFleetAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFleetAttributesResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateFleetCapacity）用于更新服务器舰队容量配置。

        # @param request: Request instance for UpdateFleetCapacity.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateFleetCapacityRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateFleetCapacityResponse`
        def UpdateFleetCapacity(request)
          body = send_request('UpdateFleetCapacity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFleetCapacityResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateFleetName）用于更新服务器舰队名称。

        # @param request: Request instance for UpdateFleetName.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateFleetNameRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateFleetNameResponse`
        def UpdateFleetName(request)
          body = send_request('UpdateFleetName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFleetNameResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateFleetPortSettings）用于更新服务器舰队安全组。

        # @param request: Request instance for UpdateFleetPortSettings.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateFleetPortSettingsRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateFleetPortSettingsResponse`
        def UpdateFleetPortSettings(request)
          body = send_request('UpdateFleetPortSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFleetPortSettingsResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateGameServerSession）用于更新游戏服务器会话。

        # @param request: Request instance for UpdateGameServerSession.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateGameServerSessionRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateGameServerSessionResponse`
        def UpdateGameServerSession(request)
          body = send_request('UpdateGameServerSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGameServerSessionResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateGameServerSessionQueue）用于修改游戏服务器会话队列。

        # @param request: Request instance for UpdateGameServerSessionQueue.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateGameServerSessionQueueRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateGameServerSessionQueueResponse`
        def UpdateGameServerSessionQueue(request)
          body = send_request('UpdateGameServerSessionQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGameServerSessionQueueResponse.new
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

        # 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持

        # 本接口（UpdateRuntimeConfiguration）用于更新服务器舰队配置。

        # @param request: Request instance for UpdateRuntimeConfiguration.
        # @type request: :class:`Tencentcloud::gse::V20191112::UpdateRuntimeConfigurationRequest`
        # @rtype: :class:`Tencentcloud::gse::V20191112::UpdateRuntimeConfigurationResponse`
        def UpdateRuntimeConfiguration(request)
          body = send_request('UpdateRuntimeConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRuntimeConfigurationResponse.new
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