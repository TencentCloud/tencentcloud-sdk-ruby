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
  module Iotvideo
    module V20191126
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-11-26'
            api_endpoint = 'iotvideo.tencentcloudapi.com'
            sdk_version = 'IOTVIDEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 清除设备激活码

        # @param request: Request instance for ClearDeviceActiveCode.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::ClearDeviceActiveCodeRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::ClearDeviceActiveCodeResponse`
        def ClearDeviceActiveCode(request)
          body = send_request('ClearDeviceActiveCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearDeviceActiveCodeResponse.new
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

        # 创建匿名访问Token

        # @param request: Request instance for CreateAnonymousAccessToken.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateAnonymousAccessTokenRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateAnonymousAccessTokenResponse`
        def CreateAnonymousAccessToken(request)
          body = send_request('CreateAnonymousAccessToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAnonymousAccessTokenResponse.new
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

        # 本接口（CreateAppUsr）用于接收由厂商云发送过来的注册请求,建立厂商云终端用户与IoT Video终端用户的映射关系。

        # @param request: Request instance for CreateAppUsr.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateAppUsrRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateAppUsrResponse`
        def CreateAppUsr(request)
          body = send_request('CreateAppUsr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAppUsrResponse.new
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

        # 本接口（CreateBinding）用于终端用户和设备进行绑定，具体的应用场景如下：
        #     终端用户与设备具有“强关联”关系。用户与设备绑定之后，用户终端即具备了该设备的访问权限,访问或操作设备时，无需获取设备访问Token。

        # @param request: Request instance for CreateBinding.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateBindingRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateBindingResponse`
        def CreateBinding(request)
          body = send_request('CreateBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBindingResponse.new
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

        # 本接口（CreateDevToken）用于以下场景：
        # 终端用户与设备没有强绑定关联关系;
        # 允许终端用户短时或一次性临时访问设备;
        # 当终端用户与设备有强绑定关系时，可以不用调用此接口

        # @param request: Request instance for CreateDevToken.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateDevTokenRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateDevTokenResponse`
        def CreateDevToken(request)
          body = send_request('CreateDevToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDevTokenResponse.new
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

        # 本接口（CreateDevices）用于批量创建新的物联网视频通信设备。
        # 注意：腾讯云不会对设备私钥进行保存，请自行保管好您的设备私钥。

        # @param request: Request instance for CreateDevices.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateDevicesResponse`
        def CreateDevices(request)
          body = send_request('CreateDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDevicesResponse.new
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

        # 本接口（CreateGencode）用于生成设备物模型源代码

        # @param request: Request instance for CreateGencode.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateGencodeRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateGencodeResponse`
        def CreateGencode(request)
          body = send_request('CreateGencode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGencodeResponse.new
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

        # 本接口（CreateIotDataType）用于创建自定义物模型数据类型。

        # @param request: Request instance for CreateIotDataType.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateIotDataTypeRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateIotDataTypeResponse`
        def CreateIotDataType(request)
          body = send_request('CreateIotDataType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIotDataTypeResponse.new
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

        # 本接口（CreateIotModel）用于定义的物模型提交。
        # 该接口实现了物模型草稿箱的功能，保存用户最后一次编辑的物模型数据。

        # @param request: Request instance for CreateIotModel.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateIotModelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateIotModelResponse`
        def CreateIotModel(request)
          body = send_request('CreateIotModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIotModelResponse.new
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

        # 本接口（CreateProduct）用于创建一个新的物联网智能视频产品。

        # @param request: Request instance for CreateProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateProductResponse`
        def CreateProduct(request)
          body = send_request('CreateProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProductResponse.new
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

        # 该接口已经停止维护，请勿使用

        # @param request: Request instance for CreateStorage.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateStorageRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateStorageResponse`
        def CreateStorage(request)
          body = send_request('CreateStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStorageResponse.new
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

        # 购买云存服务

        # @param request: Request instance for CreateStorageService.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateStorageServiceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateStorageServiceResponse`
        def CreateStorageService(request)
          body = send_request('CreateStorageService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStorageServiceResponse.new
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

        # 本接口（CreateTraceIds）用于将设备加到日志跟踪白名单。

        # @param request: Request instance for CreateTraceIds.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateTraceIdsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateTraceIdsResponse`
        def CreateTraceIds(request)
          body = send_request('CreateTraceIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTraceIdsResponse.new
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

        # 本接口（CreateUploadPath）用于获取固件上传路径。

        # @param request: Request instance for CreateUploadPath.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateUploadPathRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateUploadPathResponse`
        def CreateUploadPath(request)
          body = send_request('CreateUploadPath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUploadPathResponse.new
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

        # 设备申请cos上传证书

        # @param request: Request instance for CreateUploadTest.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateUploadTestRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateUploadTestResponse`
        def CreateUploadTest(request)
          body = send_request('CreateUploadTest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUploadTestResponse.new
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

        # 本接口（CreateUsrToken）用于终端用户获取IoT Video平台的accessToken，初始化SDK,连接到IoT Video接入服务器。

        # @param request: Request instance for CreateUsrToken.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::CreateUsrTokenRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::CreateUsrTokenResponse`
        def CreateUsrToken(request)
          body = send_request('CreateUsrToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUsrTokenResponse.new
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

        # 本接口（DeleteAppUsr）用于删除终端用户。

        # @param request: Request instance for DeleteAppUsr.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteAppUsrRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteAppUsrResponse`
        def DeleteAppUsr(request)
          body = send_request('DeleteAppUsr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAppUsrResponse.new
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

        # 本接口（DeleteBinding）用于终端用户和设备进行解绑定。

        # @param request: Request instance for DeleteBinding.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteBindingRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteBindingResponse`
        def DeleteBinding(request)
          body = send_request('DeleteBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBindingResponse.new
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

        # 本接口（DeleteDevice）用于删除设备，可进行批量操作，每次操作最多100台设备。

        # @param request: Request instance for DeleteDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteDeviceResponse`
        def DeleteDevice(request)
          body = send_request('DeleteDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDeviceResponse.new
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

        # 本接口（DeleteIotDataType）用于删除自定义物模型数据类型。

        # @param request: Request instance for DeleteIotDataType.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteIotDataTypeRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteIotDataTypeResponse`
        def DeleteIotDataType(request)
          body = send_request('DeleteIotDataType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIotDataTypeResponse.new
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

        # 本接口（DeleteMessageQueue）用于删除物联网智能视频产品的转发消息配置信息。

        # @param request: Request instance for DeleteMessageQueue.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteMessageQueueRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteMessageQueueResponse`
        def DeleteMessageQueue(request)
          body = send_request('DeleteMessageQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMessageQueueResponse.new
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

        # 本接口（DeleteOtaVersion）用于删除固件版本信息。

        # @param request: Request instance for DeleteOtaVersion.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteOtaVersionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteOtaVersionResponse`
        def DeleteOtaVersion(request)
          body = send_request('DeleteOtaVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOtaVersionResponse.new
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

        # 本接口（DeleteProduct）用于删除一个物联网智能视频产品。

        # @param request: Request instance for DeleteProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteProductResponse`
        def DeleteProduct(request)
          body = send_request('DeleteProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProductResponse.new
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

        # 本接口（DeleteTraceIds）用于将设备从日志跟踪白名单中删除，该接口可批量操作，最多支持同时操作100台设备。

        # @param request: Request instance for DeleteTraceIds.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeleteTraceIdsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeleteTraceIdsResponse`
        def DeleteTraceIds(request)
          body = send_request('DeleteTraceIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTraceIdsResponse.new
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

        # 将已购买的云存服务转移到另一设备

        # @param request: Request instance for DeliverStorageService.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DeliverStorageServiceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DeliverStorageServiceResponse`
        def DeliverStorageService(request)
          body = send_request('DeliverStorageService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeliverStorageServiceResponse.new
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

        # 客户可通过本接口获取账户余额信息, 默认接口请求频率限制：1次/秒

        # @param request: Request instance for DescribeAccountBalance.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeAccountBalanceResponse`
        def DescribeAccountBalance(request)
          body = send_request('DescribeAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountBalanceResponse.new
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

        # 本接口（DescribeBindDev）用于查询终端用户绑定的设备列表。

        # @param request: Request instance for DescribeBindDev.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeBindDevRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeBindDevResponse`
        def DescribeBindDev(request)
          body = send_request('DescribeBindDev', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindDevResponse.new
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

        # 本接口（DescribeBindUsr）用于查询设备被分享的所有用户列表。

        # @param request: Request instance for DescribeBindUsr.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeBindUsrRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeBindUsrResponse`
        def DescribeBindUsr(request)
          body = send_request('DescribeBindUsr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindUsrResponse.new
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

        # 本接口（DescribeDevice）获取设备信息。

        # @param request: Request instance for DescribeDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeDeviceResponse`
        def DescribeDevice(request)
          body = send_request('DescribeDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceResponse.new
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

        # 本接口（DescribeDeviceModel）用于获取设备物模型。

        # @param request: Request instance for DescribeDeviceModel.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeDeviceModelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeDeviceModelResponse`
        def DescribeDeviceModel(request)
          body = send_request('DescribeDeviceModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceModelResponse.new
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

        # 本接口（DescribeDevices）用于获取设备信息列表。

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeDevicesResponse`
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

        # 本接口（DescribeIotDataType）用于查询自定义的物模型数据类型。

        # @param request: Request instance for DescribeIotDataType.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeIotDataTypeRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeIotDataTypeResponse`
        def DescribeIotDataType(request)
          body = send_request('DescribeIotDataType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIotDataTypeResponse.new
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

        # 本接口（DescribeIotModel）用于获取物模型定义详情。

        # @param request: Request instance for DescribeIotModel.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeIotModelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeIotModelResponse`
        def DescribeIotModel(request)
          body = send_request('DescribeIotModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIotModelResponse.new
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

        # 本接口（DescribeIotModels）用于列出物模型历史版本列表。

        # @param request: Request instance for DescribeIotModels.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeIotModelsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeIotModelsResponse`
        def DescribeIotModels(request)
          body = send_request('DescribeIotModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIotModelsResponse.new
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

        # 本接口（DescribeLogs）用于查询设备日志列表。
        # 设备日志最长保留时长为15天,超期自动清除。

        # @param request: Request instance for DescribeLogs.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeLogsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeLogsResponse`
        def DescribeLogs(request)
          body = send_request('DescribeLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogsResponse.new
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

        # 本接口（DescribeMessageQueue）用于查询物联网智能视频产品转发消息配置。

        # @param request: Request instance for DescribeMessageQueue.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeMessageQueueRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeMessageQueueResponse`
        def DescribeMessageQueue(request)
          body = send_request('DescribeMessageQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageQueueResponse.new
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

        # 本接口（DescribeModelDataRet）用于根据TaskId获取对设备物模型操作最终响应的结果。

        # @param request: Request instance for DescribeModelDataRet.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeModelDataRetRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeModelDataRetResponse`
        def DescribeModelDataRet(request)
          body = send_request('DescribeModelDataRet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelDataRetResponse.new
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

        # 查看操作系统支持的芯片列表

        # @param request: Request instance for DescribeOsList.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeOsListRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeOsListResponse`
        def DescribeOsList(request)
          body = send_request('DescribeOsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOsListResponse.new
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

        # 本接口（DescribeOtaVersions）用于查询固件版本信息列表。

        # @param request: Request instance for DescribeOtaVersions.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeOtaVersionsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeOtaVersionsResponse`
        def DescribeOtaVersions(request)
          body = send_request('DescribeOtaVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOtaVersionsResponse.new
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

        # 本接口（DescribeProduct）用于获取单个产品的详细信息。

        # @param request: Request instance for DescribeProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeProductResponse`
        def DescribeProduct(request)
          body = send_request('DescribeProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductResponse.new
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

        # 本接口（DescribeProducts）用于列出用户账号下的物联网智能视频产品列表。

        # @param request: Request instance for DescribeProducts.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeProductsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeProductsResponse`
        def DescribeProducts(request)
          body = send_request('DescribeProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductsResponse.new
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

        # 本接口（DescribePubVersions）用于获取某一产品发布过的全部固件版本。

        # @param request: Request instance for DescribePubVersions.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribePubVersionsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribePubVersionsResponse`
        def DescribePubVersions(request)
          body = send_request('DescribePubVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePubVersionsResponse.new
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

        # 客户可通过本接口获取充值记录信息, 一次最多返回50条记录。

        # @param request: Request instance for DescribeRechargeRecords.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeRechargeRecordsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeRechargeRecordsResponse`
        def DescribeRechargeRecords(request)
          body = send_request('DescribeRechargeRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRechargeRecordsResponse.new
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

        # 本接口（DescribeRegistrationStatus）用于查询终端用户的注册状态。

        # @param request: Request instance for DescribeRegistrationStatus.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeRegistrationStatusRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeRegistrationStatusResponse`
        def DescribeRegistrationStatus(request)
          body = send_request('DescribeRegistrationStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistrationStatusResponse.new
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

        # 本接口（DescribeRunLog）用于获取设备运行日志。

        # @param request: Request instance for DescribeRunLog.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeRunLogRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeRunLogResponse`
        def DescribeRunLog(request)
          body = send_request('DescribeRunLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRunLogResponse.new
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

        # 查询云存服务

        # @param request: Request instance for DescribeStorageService.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeStorageServiceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeStorageServiceResponse`
        def DescribeStorageService(request)
          body = send_request('DescribeStorageService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStorageServiceResponse.new
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

        # 请求设备直播流地址

        # @param request: Request instance for DescribeStream.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeStreamRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeStreamResponse`
        def DescribeStream(request)
          body = send_request('DescribeStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamResponse.new
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

        # 本接口（DescribeTraceIds）用于查询设备日志跟踪白名单。

        # @param request: Request instance for DescribeTraceIds.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeTraceIdsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeTraceIdsResponse`
        def DescribeTraceIds(request)
          body = send_request('DescribeTraceIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTraceIdsResponse.new
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

        # 本接口（DescribeTraceStatus）用于查询指定设备是否在白名单中。

        # @param request: Request instance for DescribeTraceStatus.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DescribeTraceStatusRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DescribeTraceStatusResponse`
        def DescribeTraceStatus(request)
          body = send_request('DescribeTraceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTraceStatusResponse.new
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

        # 本接口（DisableDevice）用于禁用设备，可进行批量操作，每次操作最多100台设备。

        # @param request: Request instance for DisableDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DisableDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DisableDeviceResponse`
        def DisableDevice(request)
          body = send_request('DisableDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableDeviceResponse.new
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

        # 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。

        # @param request: Request instance for DisableDeviceStream.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DisableDeviceStreamRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DisableDeviceStreamResponse`
        def DisableDeviceStream(request)
          body = send_request('DisableDeviceStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableDeviceStreamResponse.new
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

        # 本接口（DisableOtaVersion）用于禁用固件版本。

        # @param request: Request instance for DisableOtaVersion.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::DisableOtaVersionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::DisableOtaVersionResponse`
        def DisableOtaVersion(request)
          body = send_request('DisableOtaVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableOtaVersionResponse.new
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

        # 修改设备信息

        # @param request: Request instance for ModifyDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::ModifyDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::ModifyDeviceResponse`
        def ModifyDevice(request)
          body = send_request('ModifyDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceResponse.new
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

        # 本接口（ModifyDeviceAction）用于修改设备物模型的行为（Action）。

        # 可对ctlVal数据属性进行写入,如:Action.takePhoto.ctlVal,设备在线且成功发送到设备才返回,物模型写入数据时,不需要传入时标信息,平台以当前时标作为数据的时标更新物模型中的时标信息。
        # 注意:
        #   1.若设备当前不在线,会直接返回错误
        #   2.若设备网络出现异常时,消息发送可能超时,超时等待最长时间为3秒
        #   3.value的内容必须与实际物模型的定义一致

        # @param request: Request instance for ModifyDeviceAction.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::ModifyDeviceActionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::ModifyDeviceActionResponse`
        def ModifyDeviceAction(request)
          body = send_request('ModifyDeviceAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceActionResponse.new
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

        # 本接口（ModifyDeviceProperty）用于修改设备物模型的属性（ProWritable）。
        # 可对setVal数据属性进行写入,如:
        # ProWritable.Pos.setVal
        # 对于嵌套类型的可写属性，可以仅对其部分数据内容进行写入，如:
        # ProWritable.Pos.setVal.x;
        # 可写属性云端写入成功即返回;云端向设备端发布属性变更参数;若当前设备不在线,在设备下次上线时会自动更新这些属性参数;
        # 物模型写入数据时,不需要传入时标信息,平台以当前时标作为数据的时标更新物模型中的时标信息。

        # @param request: Request instance for ModifyDeviceProperty.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::ModifyDevicePropertyRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::ModifyDevicePropertyResponse`
        def ModifyDeviceProperty(request)
          body = send_request('ModifyDeviceProperty', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDevicePropertyResponse.new
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

        # 本接口（ModifyProduct）用于编辑物联网智能视频产品的相关信息。

        # @param request: Request instance for ModifyProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::ModifyProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::ModifyProductResponse`
        def ModifyProduct(request)
          body = send_request('ModifyProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProductResponse.new
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

        # 编辑版本描述信息

        # @param request: Request instance for ModifyVerContent.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::ModifyVerContentRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::ModifyVerContentResponse`
        def ModifyVerContent(request)
          body = send_request('ModifyVerContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVerContentResponse.new
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

        # 本接口（RefundStorageService）用于退订已购买的云存服务。
        # 退订时，云存服务对应订单的处理方式 :
        # 1. 未开始的订单自动回到已付费订单池
        # 2. 已开始的订单自动失效
        # 3. 购买云存接口,优先从已付费订单池中分配订单

        # @param request: Request instance for RefundStorageService.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RefundStorageServiceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RefundStorageServiceResponse`
        def RefundStorageService(request)
          body = send_request('RefundStorageService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundStorageServiceResponse.new
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

        # 设备刷新cos上传证书

        # @param request: Request instance for RenewUploadTest.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RenewUploadTestRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RenewUploadTestResponse`
        def RenewUploadTest(request)
          body = send_request('RenewUploadTest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewUploadTestResponse.new
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

        # 本接口（RunDevice）用于启用设备，可进行批量操作，每次操作最多100台设备。

        # @param request: Request instance for RunDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RunDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RunDeviceResponse`
        def RunDevice(request)
          body = send_request('RunDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunDeviceResponse.new
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

        # 本接口（RunDeviceStream）用于开启设备推流，可进行批量操作，每次操作最多100台设备。

        # @param request: Request instance for RunDeviceStream.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RunDeviceStreamRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RunDeviceStreamResponse`
        def RunDeviceStream(request)
          body = send_request('RunDeviceStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunDeviceStreamResponse.new
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

        # 本接口（RunIotModel）用于对定义的物模型进行发布。

        # @param request: Request instance for RunIotModel.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RunIotModelRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RunIotModelResponse`
        def RunIotModel(request)
          body = send_request('RunIotModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunIotModelResponse.new
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

        # 本接口（RunOtaVersion）用于固件版本正式发布。

        # @param request: Request instance for RunOtaVersion.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RunOtaVersionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RunOtaVersionResponse`
        def RunOtaVersion(request)
          body = send_request('RunOtaVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunOtaVersionResponse.new
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

        # 本接口（RunTestOtaVersion）用于固件版本测试发布。

        # @param request: Request instance for RunTestOtaVersion.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::RunTestOtaVersionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::RunTestOtaVersionResponse`
        def RunTestOtaVersion(request)
          body = send_request('RunTestOtaVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunTestOtaVersionResponse.new
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

        # 本接口（SendOnlineMsg）用于向设备发送在线消息。
        # 注意：
        # 若设备当前不在线,会直接返回错误;
        # 若设备网络出现异常时,消息发送可能超时,超时等待最长时间为3秒.waitresp非0情况下,会导致本接口阻塞3秒。

        # @param request: Request instance for SendOnlineMsg.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::SendOnlineMsgRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::SendOnlineMsgResponse`
        def SendOnlineMsg(request)
          body = send_request('SendOnlineMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendOnlineMsgResponse.new
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

        # 本接口（SetMessageQueue）用于配置物联网智能视频产品的转发消息队列。

        # @param request: Request instance for SetMessageQueue.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::SetMessageQueueRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::SetMessageQueueResponse`
        def SetMessageQueue(request)
          body = send_request('SetMessageQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetMessageQueueResponse.new
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

        # 本接口（UpgradeDevice）用于对设备进行固件升级。
        # 该接口向指定的设备下发固件更新指令,可将固件升级到任意版本(可实现固件降级)。
        # 警告:使能UpgradeNow参数存在一定的风险性！建议仅在debug场景下使用!

        # @param request: Request instance for UpgradeDevice.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::UpgradeDeviceRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::UpgradeDeviceResponse`
        def UpgradeDevice(request)
          body = send_request('UpgradeDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeDeviceResponse.new
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

        # 本接口（UploadOtaVersion）接收上传到控制台的固件版本信息。

        # @param request: Request instance for UploadOtaVersion.
        # @type request: :class:`Tencentcloud::iotvideo::V20191126::UploadOtaVersionRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20191126::UploadOtaVersionResponse`
        def UploadOtaVersion(request)
          body = send_request('UploadOtaVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadOtaVersionResponse.new
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