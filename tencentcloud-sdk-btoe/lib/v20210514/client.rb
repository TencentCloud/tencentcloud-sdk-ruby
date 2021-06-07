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
    module V20210514
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2021-05-14'
        @@endpoint = 'btoe.tencentcloudapi.com'
        @@sdk_version = 'BTOE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 用户通过本接口向BTOE写入待存证的音频原文件或下载URL，BTOE对音频原文件存储后，将其Hash值存证上链，并生成含有电子签章的区块链存证电子凭证。音频类型支持格式：mp3、wav、wma、midi、flac；原文件上传大小不超过5 MB，下载URL文件大小不超过25 MB。

        # @param request: Request instance for CreateAudioDeposit.
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateAudioDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateAudioDepositResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateDataDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateDataDepositResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateDocDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateDocDepositResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateHashDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateHashDepositResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateHashDepositNoCertRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateHashDepositNoCertResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateHashDepositNoSealRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateHashDepositNoSealResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateImageDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateImageDepositResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::CreateVideoDepositRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::CreateVideoDepositResponse`
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

        # 用户通过存证编码向BTOE查询存证电子凭证信息。

        # @param request: Request instance for GetDepositCert.
        # @type request: :class:`Tencentcloud::btoe::V20210514::GetDepositCertRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::GetDepositCertResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::GetDepositFileRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::GetDepositFileResponse`
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
        # @type request: :class:`Tencentcloud::btoe::V20210514::GetDepositInfoRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::GetDepositInfoResponse`
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

        # 用户向BTOE核验存证结果中的区块链交易hash的真实性

        # @param request: Request instance for VerifyEvidenceBlockChainTxHash.
        # @type request: :class:`Tencentcloud::btoe::V20210514::VerifyEvidenceBlockChainTxHashRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::VerifyEvidenceBlockChainTxHashResponse`
        def VerifyEvidenceBlockChainTxHash(request)
          body = send_request('VerifyEvidenceBlockChainTxHash', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyEvidenceBlockChainTxHashResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户存证内容hash向BTOE核验存证记录的真实性。

        # @param request: Request instance for VerifyEvidenceHash.
        # @type request: :class:`Tencentcloud::btoe::V20210514::VerifyEvidenceHashRequest`
        # @rtype: :class:`Tencentcloud::btoe::V20210514::VerifyEvidenceHashResponse`
        def VerifyEvidenceHash(request)
          body = send_request('VerifyEvidenceHash', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyEvidenceHashResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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