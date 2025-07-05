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
  module Ape
    module V20200513
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-05-13'
            api_endpoint = 'ape.tencentcloudapi.com'
            sdk_version = 'APE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量获取授权书下载地址

        # @param request: Request instance for BatchDescribeOrderCertificate.
        # @type request: :class:`Tencentcloud::ape::V20200513::BatchDescribeOrderCertificateRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::BatchDescribeOrderCertificateResponse`
        def BatchDescribeOrderCertificate(request)
          body = send_request('BatchDescribeOrderCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDescribeOrderCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量获取图片下载地址

        # @param request: Request instance for BatchDescribeOrderImage.
        # @type request: :class:`Tencentcloud::ape::V20200513::BatchDescribeOrderImageRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::BatchDescribeOrderImageResponse`
        def BatchDescribeOrderImage(request)
          body = send_request('BatchDescribeOrderImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDescribeOrderImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核销图片，获取原图URL地址

        # @param request: Request instance for CreateOrderAndDownloads.
        # @type request: :class:`Tencentcloud::ape::V20200513::CreateOrderAndDownloadsRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::CreateOrderAndDownloadsResponse`
        def CreateOrderAndDownloads(request)
          body = send_request('CreateOrderAndDownloads', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrderAndDownloadsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买一张图片并且支付

        # @param request: Request instance for CreateOrderAndPay.
        # @type request: :class:`Tencentcloud::ape::V20200513::CreateOrderAndPayRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::CreateOrderAndPayResponse`
        def CreateOrderAndPay(request)
          body = send_request('CreateOrderAndPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrderAndPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询授权人列表

        # @param request: Request instance for DescribeAuthUsers.
        # @type request: :class:`Tencentcloud::ape::V20200513::DescribeAuthUsersRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::DescribeAuthUsersResponse`
        def DescribeAuthUsers(request)
          body = send_request('DescribeAuthUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户图片下载记录

        # @param request: Request instance for DescribeDownloadInfos.
        # @type request: :class:`Tencentcloud::ape::V20200513::DescribeDownloadInfosRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::DescribeDownloadInfosResponse`
        def DescribeDownloadInfos(request)
          body = send_request('DescribeDownloadInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDownloadInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据ID查询一张图片的详细信息

        # @param request: Request instance for DescribeImage.
        # @type request: :class:`Tencentcloud::ape::V20200513::DescribeImageRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::DescribeImageResponse`
        def DescribeImage(request)
          body = send_request('DescribeImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据关键字搜索图片列表

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::ape::V20200513::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::ape::V20200513::DescribeImagesResponse`
        def DescribeImages(request)
          body = send_request('DescribeImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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