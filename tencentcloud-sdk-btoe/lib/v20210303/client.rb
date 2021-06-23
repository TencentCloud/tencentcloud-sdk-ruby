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
  module Btoe
    module V20210303
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-03'
            api_endpoint = 'btoe.tencentcloudapi.com'
            sdk_version = 'BTOE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 用户通过本接口向BTOE写入待存证的音频原文件或下载URL，BTOE对音频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。音频类型支持格式：mp3、wav、wma、midi、flac；原文件上传大小不超过5 MB，下载URL文件大小不超过25 MB。

        # @param request: Request instance for CreateAudioDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateAudioDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateAudioDepositResponse`
        def CreateAudioDeposit(request)
          body = send_request('CreateAudioDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAudioDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的业务数据明文，业务数据明文存证写入后不可修改，BTOE对业务数据明文存证生成含有电子签章的区块链存证电子凭证。

        # @param request: Request instance for CreateDataDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateDataDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateDataDepositResponse`
        def CreateDataDeposit(request)
          body = send_request('CreateDataDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的文档原文件或下载URL，BTOE对文档原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。文档类型支持格式：doc、docx、xls、xlsx、ppt、pptx、 pdf、html、txt、md、csv；原文件上传大小不超过5 MB，下载URL文件大小不超过10 MB。

        # @param request: Request instance for CreateDocDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateDocDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateDocDepositResponse`
        def CreateDocDeposit(request)
          body = send_request('CreateDocDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDocDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。

        # @param request: Request instance for CreateHashDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateHashDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateHashDepositResponse`
        def CreateHashDeposit(request)
          body = send_request('CreateHashDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHashDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，本接口不生成区块链存证电子凭证。

        # @param request: Request instance for CreateHashDepositNoCert.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateHashDepositNoCertRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateHashDepositNoCertResponse`
        def CreateHashDepositNoCert(request)
          body = send_request('CreateHashDepositNoCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHashDepositNoCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的原文数据Hash值，BTOE对业务数据Hash值存证上链，并生成无电子签章的区块链存证电子凭证。

        # @param request: Request instance for CreateHashDepositNoSeal.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateHashDepositNoSealRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateHashDepositNoSealResponse`
        def CreateHashDepositNoSeal(request)
          body = send_request('CreateHashDepositNoSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHashDepositNoSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的图片原文件或下载URL，BTOE对图片原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。图片类型支持格式：png、jpg、jpeg、bmp、gif、svg；原文件上传大小不超过5 MB，下载URL文件大小不超过10 MB。

        # @param request: Request instance for CreateImageDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateImageDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateImageDepositResponse`
        def CreateImageDeposit(request)
          body = send_request('CreateImageDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE写入待存证的视频的原文件或下载URL，BTOE对视频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。视频文件支持格式：mp4、avi、mkv、mov、flv,wmv,rmvb,3gp；文件大小限制：直接上传原文件不大于5MB，下载URL文件大小不大于200 MB。

        # @param request: Request instance for CreateVideoDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateVideoDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateVideoDepositResponse`
        def CreateVideoDeposit(request)
          body = send_request('CreateVideoDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过本接口向BTOE提交待存证网页的URL，BTOE对URL进行网页快照，并将快照图片存储，将网页快照Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。URL格式必须以http、https开头。

        # @param request: Request instance for CreateWebpageDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210303::CreateWebpageDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::CreateWebpageDepositResponse`
        def CreateWebpageDeposit(request)
          body = send_request('CreateWebpageDeposit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWebpageDepositResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过存证编码向BTOE查询存证电子凭证信息。

        # @param request: Request instance for GetDepositCert.
        # @type request: :class:`Tencentcloud::btoe::V20210303::GetDepositCertRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::GetDepositCertResponse`
        def GetDepositCert(request)
          body = send_request('GetDepositCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDepositCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过存证编码向BTOE获取存证文件的下载URL。
        # -注：Hash类存证、业务数据明文存证不产生存证文件。

        # @param request: Request instance for GetDepositFile.
        # @type request: :class:`Tencentcloud::btoe::V20210303::GetDepositFileRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::GetDepositFileResponse`
        def GetDepositFile(request)
          body = send_request('GetDepositFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDepositFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过存证编码向BTOE查询存证基本信息。

        # @param request: Request instance for GetDepositInfo.
        # @type request: :class:`Tencentcloud::btoe::V20210303::GetDepositInfoRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210303::GetDepositInfoResponse`
        def GetDepositInfo(request)
          body = send_request('GetDepositInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDepositInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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