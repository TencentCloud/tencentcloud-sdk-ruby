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
  module Iottid
    module V20190411
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-04-11'
            api_endpoint = 'iottid.tencentcloudapi.com'
            sdk_version = 'IOTTID_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 单向认证测试TID

        # @param request: Request instance for AuthTestTid.
        # @type request: :class:`Tencentcloud::iottid::V20190411::AuthTestTidRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::AuthTestTidResponse`
        def AuthTestTid(request)
          body = send_request('AuthTestTid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuthTestTidResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全芯片TID烧录回执

        # @param request: Request instance for BurnTidNotify.
        # @type request: :class:`Tencentcloud::iottid::V20190411::BurnTidNotifyRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::BurnTidNotifyResponse`
        def BurnTidNotify(request)
          body = send_request('BurnTidNotify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BurnTidNotifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全芯片为载体的TID空发回执，绑定TID与订单号。

        # @param request: Request instance for DeliverTidNotify.
        # @type request: :class:`Tencentcloud::iottid::V20190411::DeliverTidNotifyRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::DeliverTidNotifyResponse`
        def DeliverTidNotify(request)
          body = send_request('DeliverTidNotify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeliverTidNotifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设备服务商请求空发产品订单的TID信息

        # @param request: Request instance for DeliverTids.
        # @type request: :class:`Tencentcloud::iottid::V20190411::DeliverTidsRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::DeliverTidsResponse`
        def DeliverTids(request)
          body = send_request('DeliverTids', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeliverTidsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定订单的可空发的白盒密钥数量

        # @param request: Request instance for DescribeAvailableLibCount.
        # @type request: :class:`Tencentcloud::iottid::V20190411::DescribeAvailableLibCountRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::DescribeAvailableLibCountResponse`
        def DescribeAvailableLibCount(request)
          body = send_request('DescribeAvailableLibCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableLibCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询企业用户TID平台控制台权限

        # @param request: Request instance for DescribePermission.
        # @type request: :class:`Tencentcloud::iottid::V20190411::DescribePermissionRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::DescribePermissionResponse`
        def DescribePermission(request)
          body = send_request('DescribePermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载芯片订单的TID

        # @param request: Request instance for DownloadTids.
        # @type request: :class:`Tencentcloud::iottid::V20190411::DownloadTidsRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::DownloadTidsResponse`
        def DownloadTids(request)
          body = send_request('DownloadTids', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadTidsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传硬件唯一标识码，是软加固设备身份参数。本接口如遇到错误数据，则所有当次上传数据失效。

        # @param request: Request instance for UploadDeviceUniqueCode.
        # @type request: :class:`Tencentcloud::iottid::V20190411::UploadDeviceUniqueCodeRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::UploadDeviceUniqueCodeResponse`
        def UploadDeviceUniqueCode(request)
          body = send_request('UploadDeviceUniqueCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadDeviceUniqueCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载控制台验证芯片烧录信息，保证TID与中心信息一致

        # @param request: Request instance for VerifyChipBurnInfo.
        # @type request: :class:`Tencentcloud::iottid::V20190411::VerifyChipBurnInfoRequest`
        # @rtype: :class:`Tencentcloud::iottid::V20190411::VerifyChipBurnInfoResponse`
        def VerifyChipBurnInfo(request)
          body = send_request('VerifyChipBurnInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyChipBurnInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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