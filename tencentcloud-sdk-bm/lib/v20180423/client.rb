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
  module Bm
    module V20180423
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-04-23'
        @@endpoint = 'bm.tencentcloudapi.com'
        @@sdk_version = 'BM_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 服务器绑定CAM角色，该角色授权访问黑石物理服务器服务，为黑石物理服务器提供了访问资源的权限，如请求服务器的临时证书

        # @param request: Request instance for AttachCamRole.
        # @type request: :class:`Tencentcloud::bm::V20180423::AttachCamRoleRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::AttachCamRoleResponse`
        def AttachCamRole(request)
          body = send_request('AttachCamRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachCamRoleResponse.new
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

        # 为预授权规则绑定标签

        # @param request: Request instance for BindPsaTag.
        # @type request: :class:`Tencentcloud::bm::V20180423::BindPsaTagRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::BindPsaTagResponse`
        def BindPsaTag(request)
          body = send_request('BindPsaTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindPsaTagResponse.new
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

        # 购买黑石物理机

        # @param request: Request instance for BuyDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::BuyDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::BuyDevicesResponse`
        def BuyDevices(request)
          body = send_request('BuyDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BuyDevicesResponse.new
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

        # 创建自定义镜像<br>
        # 每个AppId在每个可用区最多保留20个自定义镜像

        # @param request: Request instance for CreateCustomImage.
        # @type request: :class:`Tencentcloud::bm::V20180423::CreateCustomImageRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::CreateCustomImageResponse`
        def CreateCustomImage(request)
          body = send_request('CreateCustomImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomImageResponse.new
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

        # 创建预授权规则

        # @param request: Request instance for CreatePsaRegulation.
        # @type request: :class:`Tencentcloud::bm::V20180423::CreatePsaRegulationRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::CreatePsaRegulationResponse`
        def CreatePsaRegulation(request)
          body = send_request('CreatePsaRegulation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePsaRegulationResponse.new
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

        # 创建黑石竞价实例

        # @param request: Request instance for CreateSpotDevice.
        # @type request: :class:`Tencentcloud::bm::V20180423::CreateSpotDeviceRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::CreateSpotDeviceResponse`
        def CreateSpotDevice(request)
          body = send_request('CreateSpotDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSpotDeviceResponse.new
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

        # 创建自定义脚本

        # @param request: Request instance for CreateUserCmd.
        # @type request: :class:`Tencentcloud::bm::V20180423::CreateUserCmdRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::CreateUserCmdResponse`
        def CreateUserCmd(request)
          body = send_request('CreateUserCmd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserCmdResponse.new
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

        # 删除自定义镜像<br>
        # 正用于部署或重装中的镜像被删除后，镜像文件将保留一段时间，直到部署或重装结束

        # @param request: Request instance for DeleteCustomImages.
        # @type request: :class:`Tencentcloud::bm::V20180423::DeleteCustomImagesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DeleteCustomImagesResponse`
        def DeleteCustomImages(request)
          body = send_request('DeleteCustomImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomImagesResponse.new
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

        # 删除预授权规则

        # @param request: Request instance for DeletePsaRegulation.
        # @type request: :class:`Tencentcloud::bm::V20180423::DeletePsaRegulationRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DeletePsaRegulationResponse`
        def DeletePsaRegulation(request)
          body = send_request('DeletePsaRegulation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePsaRegulationResponse.new
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

        # 删除自定义脚本

        # @param request: Request instance for DeleteUserCmds.
        # @type request: :class:`Tencentcloud::bm::V20180423::DeleteUserCmdsRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DeleteUserCmdsResponse`
        def DeleteUserCmds(request)
          body = send_request('DeleteUserCmds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserCmdsResponse.new
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

        # 查询自定义镜像制作进度

        # @param request: Request instance for DescribeCustomImageProcess.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeCustomImageProcessRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeCustomImageProcessResponse`
        def DescribeCustomImageProcess(request)
          body = send_request('DescribeCustomImageProcess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomImageProcessResponse.new
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

        # 查看自定义镜像列表

        # @param request: Request instance for DescribeCustomImages.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeCustomImagesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeCustomImagesResponse`
        def DescribeCustomImages(request)
          body = send_request('DescribeCustomImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomImagesResponse.new
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

        # 获取获取设备类型

        # @param request: Request instance for DescribeDeviceClass.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDeviceClassRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDeviceClassResponse`
        def DescribeDeviceClass(request)
          body = send_request('DescribeDeviceClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceClassResponse.new
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

        # 查询机型支持的RAID方式， 并返回系统盘的分区和逻辑盘的列表

        # @param request: Request instance for DescribeDeviceClassPartition.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDeviceClassPartitionRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDeviceClassPartitionResponse`
        def DescribeDeviceClassPartition(request)
          body = send_request('DescribeDeviceClassPartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceClassPartitionResponse.new
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

        # 查询设备硬件配置信息，如 CPU 型号，内存大小，磁盘大小和数量

        # @param request: Request instance for DescribeDeviceHardwareInfo.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDeviceHardwareInfoRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDeviceHardwareInfoResponse`
        def DescribeDeviceHardwareInfo(request)
          body = send_request('DescribeDeviceHardwareInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceHardwareInfoResponse.new
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

        # 查询设备库存

        # @param request: Request instance for DescribeDeviceInventory.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDeviceInventoryRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDeviceInventoryResponse`
        def DescribeDeviceInventory(request)
          body = send_request('DescribeDeviceInventory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceInventoryResponse.new
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

        # 查询设备操作日志， 如设备重启，重装，设置密码等操作

        # @param request: Request instance for DescribeDeviceOperationLog.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDeviceOperationLogRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDeviceOperationLogResponse`
        def DescribeDeviceOperationLog(request)
          body = send_request('DescribeDeviceOperationLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceOperationLogResponse.new
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

        # 获取物理机的分区格式

        # @param request: Request instance for DescribeDevicePartition.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDevicePartitionRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDevicePartitionResponse`
        def DescribeDevicePartition(request)
          body = send_request('DescribeDevicePartition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePartitionResponse.new
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

        # 查询服务器所在的位置，如机架，上联交换机等信息

        # @param request: Request instance for DescribeDevicePosition.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDevicePositionRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDevicePositionResponse`
        def DescribeDevicePosition(request)
          body = send_request('DescribeDevicePosition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePositionResponse.new
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

        # 查询服务器价格信息，支持设备的批量查找，支持标准机型和弹性机型的混合查找

        # @param request: Request instance for DescribeDevicePriceInfo.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDevicePriceInfoRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDevicePriceInfoResponse`
        def DescribeDevicePriceInfo(request)
          body = send_request('DescribeDevicePriceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicePriceInfoResponse.new
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

        # 查询物理服务器，可以按照实例，业务IP等过滤

        # @param request: Request instance for DescribeDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeDevicesResponse`
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

        # 查询自定义机型部件信息，包括CpuId对应的型号，DiskTypeId对应的磁盘类型

        # @param request: Request instance for DescribeHardwareSpecification.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeHardwareSpecificationRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeHardwareSpecificationResponse`
        def DescribeHardwareSpecification(request)
          body = send_request('DescribeHardwareSpecification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHardwareSpecificationResponse.new
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

        # 查询托管设备带外信息

        # @param request: Request instance for DescribeHostedDeviceOutBandInfo.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeHostedDeviceOutBandInfoRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeHostedDeviceOutBandInfoResponse`
        def DescribeHostedDeviceOutBandInfo(request)
          body = send_request('DescribeHostedDeviceOutBandInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostedDeviceOutBandInfoResponse.new
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

        # 获取异步操作状态的完成状态

        # @param request: Request instance for DescribeOperationResult.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeOperationResultRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeOperationResultResponse`
        def DescribeOperationResult(request)
          body = send_request('DescribeOperationResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOperationResultResponse.new
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

        # 查询指定机型所支持的操作系统

        # @param request: Request instance for DescribeOsInfo.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeOsInfoRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeOsInfoResponse`
        def DescribeOsInfo(request)
          body = send_request('DescribeOsInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOsInfoResponse.new
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

        # 获取预授权规则列表

        # @param request: Request instance for DescribePsaRegulations.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribePsaRegulationsRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribePsaRegulationsResponse`
        def DescribePsaRegulations(request)
          body = send_request('DescribePsaRegulations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePsaRegulationsResponse.new
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

        # 查询地域以及可用区

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
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

        # 维修任务配置获取

        # @param request: Request instance for DescribeRepairTaskConstant.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeRepairTaskConstantRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeRepairTaskConstantResponse`
        def DescribeRepairTaskConstant(request)
          body = send_request('DescribeRepairTaskConstant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepairTaskConstantResponse.new
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

        # 获取用户维修任务列表及详细信息<br>
        # <br>
        # TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
        # 1：未授权<br>
        # 2：处理中<br>
        # 3：待确认<br>
        # 4：未授权-暂不处理<br>
        # 5：已恢复<br>
        # 6：待确认-未恢复<br>

        # @param request: Request instance for DescribeTaskInfo.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeTaskInfoResponse`
        def DescribeTaskInfo(request)
          body = send_request('DescribeTaskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskInfoResponse.new
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

        # 获取维修任务操作日志

        # @param request: Request instance for DescribeTaskOperationLog.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeTaskOperationLogRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeTaskOperationLogResponse`
        def DescribeTaskOperationLog(request)
          body = send_request('DescribeTaskOperationLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskOperationLogResponse.new
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

        # 获取自定义脚本任务详细信息

        # @param request: Request instance for DescribeUserCmdTaskInfo.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeUserCmdTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeUserCmdTaskInfoResponse`
        def DescribeUserCmdTaskInfo(request)
          body = send_request('DescribeUserCmdTaskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserCmdTaskInfoResponse.new
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

        # 获取自定义脚本任务列表

        # @param request: Request instance for DescribeUserCmdTasks.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeUserCmdTasksRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeUserCmdTasksResponse`
        def DescribeUserCmdTasks(request)
          body = send_request('DescribeUserCmdTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserCmdTasksResponse.new
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

        # 获取自定义脚本信息列表

        # @param request: Request instance for DescribeUserCmds.
        # @type request: :class:`Tencentcloud::bm::V20180423::DescribeUserCmdsRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DescribeUserCmdsResponse`
        def DescribeUserCmds(request)
          body = send_request('DescribeUserCmds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserCmdsResponse.new
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

        # 服务器绑定CAM角色

        # @param request: Request instance for DetachCamRole.
        # @type request: :class:`Tencentcloud::bm::V20180423::DetachCamRoleRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::DetachCamRoleResponse`
        def DetachCamRole(request)
          body = send_request('DetachCamRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachCamRoleResponse.new
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

        # 用于修改自定义镜像名或描述

        # @param request: Request instance for ModifyCustomImageAttribute.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyCustomImageAttributeRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyCustomImageAttributeResponse`
        def ModifyCustomImageAttribute(request)
          body = send_request('ModifyCustomImageAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomImageAttributeResponse.new
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

        # 修改服务器名称

        # @param request: Request instance for ModifyDeviceAliases.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyDeviceAliasesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyDeviceAliasesResponse`
        def ModifyDeviceAliases(request)
          body = send_request('ModifyDeviceAliases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceAliasesResponse.new
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

        # 修改物理机服务器自动续费标志

        # @param request: Request instance for ModifyDeviceAutoRenewFlag.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyDeviceAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyDeviceAutoRenewFlagResponse`
        def ModifyDeviceAutoRenewFlag(request)
          body = send_request('ModifyDeviceAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDeviceAutoRenewFlagResponse.new
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

        # 修改物理机内网IP（不重装系统）

        # @param request: Request instance for ModifyLanIp.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyLanIpRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyLanIpResponse`
        def ModifyLanIp(request)
          body = send_request('ModifyLanIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLanIpResponse.new
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

        # 将设备的预付费模式修改为后付费计费模式，支持批量转换。（前提是客户要加入黑石物理机后付费计费的白名单，申请黑石物理机后付费可以联系腾讯云客服）

        # @param request: Request instance for ModifyPayModePre2Post.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyPayModePre2PostRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyPayModePre2PostResponse`
        def ModifyPayModePre2Post(request)
          body = send_request('ModifyPayModePre2Post', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPayModePre2PostResponse.new
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

        # 允许修改规则信息及关联故障类型

        # @param request: Request instance for ModifyPsaRegulation.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyPsaRegulationRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyPsaRegulationResponse`
        def ModifyPsaRegulation(request)
          body = send_request('ModifyPsaRegulation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPsaRegulationResponse.new
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

        # 修改自定义脚本

        # @param request: Request instance for ModifyUserCmd.
        # @type request: :class:`Tencentcloud::bm::V20180423::ModifyUserCmdRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ModifyUserCmdResponse`
        def ModifyUserCmd(request)
          body = send_request('ModifyUserCmd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserCmdResponse.new
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

        # 销毁黑石物理机实例：可以销毁物理机列表中的竞价实例，或回收站列表中所有计费模式的实例

        # @param request: Request instance for OfflineDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::OfflineDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::OfflineDevicesResponse`
        def OfflineDevices(request)
          body = send_request('OfflineDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineDevicesResponse.new
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

        # 重启机器

        # @param request: Request instance for RebootDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::RebootDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::RebootDevicesResponse`
        def RebootDevices(request)
          body = send_request('RebootDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebootDevicesResponse.new
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

        # 恢复回收站中的物理机（仅限后付费的物理机）

        # @param request: Request instance for RecoverDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::RecoverDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::RecoverDevicesResponse`
        def RecoverDevices(request)
          body = send_request('RecoverDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverDevicesResponse.new
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

        # 重装操作系统

        # @param request: Request instance for ReloadDeviceOs.
        # @type request: :class:`Tencentcloud::bm::V20180423::ReloadDeviceOsRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ReloadDeviceOsResponse`
        def ReloadDeviceOs(request)
          body = send_request('ReloadDeviceOs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReloadDeviceOsResponse.new
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

        # 此接口用于操作维修任务<br>
        # 入参TaskId为维修任务ID<br>
        # 入参Operate表示对维修任务的操作，支持如下取值：<br>
        # AuthorizeRepair（授权维修）<br>
        # Ignore（暂不提醒）<br>
        # ConfirmRecovered（维修完成后，确认故障恢复）<br>
        # ConfirmUnRecovered（维修完成后，确认故障未恢复）<br>
        # <br>
        # 操作约束（当前任务状态(TaskStatus)->对应可执行的操作）：<br>
        # 未授权(1)->授权维修；暂不处理<br>
        # 暂不处理(4)->授权维修<br>
        # 待确认(3)->确认故障恢复；确认故障未恢复<br>
        # 未恢复(6)->确认故障恢复<br>
        # <br>
        # 对于Ping不可达故障的任务，还允许：<br>
        # 未授权->确认故障恢复<br>
        # 暂不处理->确认故障恢复<br>
        # <br>
        # 处理中与已恢复状态的任务不允许进行操作。<br>
        # <br>
        # 详细信息请访问：https://cloud.tencent.com/document/product/386/18190

        # @param request: Request instance for RepairTaskControl.
        # @type request: :class:`Tencentcloud::bm::V20180423::RepairTaskControlRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::RepairTaskControlResponse`
        def RepairTaskControl(request)
          body = send_request('RepairTaskControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RepairTaskControlResponse.new
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

        # 重置服务器密码

        # @param request: Request instance for ResetDevicePassword.
        # @type request: :class:`Tencentcloud::bm::V20180423::ResetDevicePasswordRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ResetDevicePasswordResponse`
        def ResetDevicePassword(request)
          body = send_request('ResetDevicePassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDevicePasswordResponse.new
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

        # 退回物理机至回收站，支持批量退还不同计费模式的物理机（包括预付费、后付费、预付费转后付费）

        # @param request: Request instance for ReturnDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::ReturnDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ReturnDevicesResponse`
        def ReturnDevices(request)
          body = send_request('ReturnDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReturnDevicesResponse.new
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

        # 运行自定义脚本

        # @param request: Request instance for RunUserCmd.
        # @type request: :class:`Tencentcloud::bm::V20180423::RunUserCmdRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::RunUserCmdResponse`
        def RunUserCmd(request)
          body = send_request('RunUserCmd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunUserCmdResponse.new
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

        # 设置带外VPN认证用户密码

        # @param request: Request instance for SetOutBandVpnAuthPassword.
        # @type request: :class:`Tencentcloud::bm::V20180423::SetOutBandVpnAuthPasswordRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::SetOutBandVpnAuthPasswordResponse`
        def SetOutBandVpnAuthPassword(request)
          body = send_request('SetOutBandVpnAuthPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOutBandVpnAuthPasswordResponse.new
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

        # 关闭服务器

        # @param request: Request instance for ShutdownDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::ShutdownDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::ShutdownDevicesResponse`
        def ShutdownDevices(request)
          body = send_request('ShutdownDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ShutdownDevicesResponse.new
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

        # 开启服务器

        # @param request: Request instance for StartDevices.
        # @type request: :class:`Tencentcloud::bm::V20180423::StartDevicesRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::StartDevicesResponse`
        def StartDevices(request)
          body = send_request('StartDevices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartDevicesResponse.new
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

        # 解除标签与预授权规则的绑定

        # @param request: Request instance for UnbindPsaTag.
        # @type request: :class:`Tencentcloud::bm::V20180423::UnbindPsaTagRequest`
        # @rtype: :class:`Tencentcloud::bm::V20180423::UnbindPsaTagResponse`
        def UnbindPsaTag(request)
          body = send_request('UnbindPsaTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindPsaTagResponse.new
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