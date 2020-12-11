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
  module Ds
    module V20180523
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-05-23'
        @@endpoint = 'ds.tencentcloudapi.com'
        @@sdk_version = 'DS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 检测验证码接口。此接口用于企业电子合同平台通过给用户发送短信验证码，以短信授权方式签署合同。此接口配合发送验证码接口使用。

        # 用户在企业电子合同平台输入收到的验证码后，由企业电子合同平台调用该接口向腾讯云提交确认受托签署合同验证码命令。验证码验证正确时，本次合同签署的授权成功。

        # @param request: Request instance for CheckVcode.
        # @type request: :class:`Tencentcloud::ds::V20180523::CheckVcodeRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::CheckVcodeResponse`
        def CheckVcode(request)
          body = send_request('CheckVcode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckVcodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口适用于：客户平台通过上传PDF文件作为合同，以备未来进行签署。接口返回任务号，可调用DescribeTaskStatus接口查看任务执行结果。

        # @param request: Request instance for CreateContractByUpload.
        # @type request: :class:`Tencentcloud::ds::V20180523::CreateContractByUploadRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::CreateContractByUploadResponse`
        def CreateContractByUpload(request)
          body = send_request('CreateContractByUpload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateContractByUploadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为企业电子合同平台的最终企业用户进行开户。在企业电子合同平台进行操作的企业用户，企业电子合同平台向腾讯云发送企业用户的信息，提交开户命令。腾讯云接到请求后，自动为企业电子合同平台的企业用户生成一张数字证书。

        # @param request: Request instance for CreateEnterpriseAccount.
        # @type request: :class:`Tencentcloud::ds::V20180523::CreateEnterpriseAccountRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::CreateEnterpriseAccountResponse`
        def CreateEnterpriseAccount(request)
          body = send_request('CreateEnterpriseAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnterpriseAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为企业电子合同平台的最终个人用户进行开户。在企业电子合同平台进行操作的个人用户，企业电子合同平台向腾讯云发送个人用户的信息，提交开户命令。腾讯云接到请求后，自动为企业电子合同平台的个人用户生成一张数字证书。

        # @param request: Request instance for CreatePersonalAccount.
        # @type request: :class:`Tencentcloud::ds::V20180523::CreatePersonalAccountRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::CreatePersonalAccountResponse`
        def CreatePersonalAccount(request)
          body = send_request('CreatePersonalAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePersonalAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于客户电子合同平台增加某用户的印章图片。客户平台可以调用此接口增加某用户的印章图片。

        # @param request: Request instance for CreateSeal.
        # @type request: :class:`Tencentcloud::ds::V20180523::CreateSealRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::CreateSealResponse`
        def CreateSeal(request)
          body = send_request('CreateSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除企业电子合同平台的最终用户。调用该接口后，腾讯云将删除该用户账号。删除账号后，已经签名的合同不受影响。

        # @param request: Request instance for DeleteAccount.
        # @type request: :class:`Tencentcloud::ds::V20180523::DeleteAccountRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::DeleteAccountResponse`
        def DeleteAccount(request)
          body = send_request('DeleteAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除印章接口，删除指定账号的某个印章

        # @param request: Request instance for DeleteSeal.
        # @type request: :class:`Tencentcloud::ds::V20180523::DeleteSealRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::DeleteSealResponse`
        def DeleteSeal(request)
          body = send_request('DeleteSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口使用于：客户平台可使用该接口查询任务执行状态或者执行结果

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::ds::V20180523::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载合同接口。调用该接口可以下载签署中和签署完成的合同。接口返回任务号，可调用DescribeTaskStatus接口查看任务执行结果。

        # @param request: Request instance for DownloadContract.
        # @type request: :class:`Tencentcloud::ds::V20180523::DownloadContractRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::DownloadContractResponse`
        def DownloadContract(request)
          body = send_request('DownloadContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadContractResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送验证码接口。此接口用于：企业电子合同平台需要腾讯云发送验证码对其用户进行验证时调用，腾讯云将向其用户联系手机(企业电子合同平台为用户开户时通过接口传入)发送验证码，以验证码授权方式签署合同。用户验证工作由企业电子合同平台自身完成。

        # @param request: Request instance for SendVcode.
        # @type request: :class:`Tencentcloud::ds::V20180523::SendVcodeRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::SendVcodeResponse`
        def SendVcode(request)
          body = send_request('SendVcode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendVcodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口适用于：客户平台在创建好合同后，由合同签署方对创建的合同内容进行确认，无误后再进行签署。客户平台使用该接口提供详细的PDF文档签名坐标进行签署。

        # @param request: Request instance for SignContractByCoordinate.
        # @type request: :class:`Tencentcloud::ds::V20180523::SignContractByCoordinateRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::SignContractByCoordinateResponse`
        def SignContractByCoordinate(request)
          body = send_request('SignContractByCoordinate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SignContractByCoordinateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口适用于：客户平台在创建好合同后，由合同签署方对创建的合同内容进行确认，无误后再进行签署。客户平台使用该接口对PDF合同文档按照关键字和坐标进行签署。

        # @param request: Request instance for SignContractByKeyword.
        # @type request: :class:`Tencentcloud::ds::V20180523::SignContractByKeywordRequest`
        # @rtype: :class:`Tencentcloud::ds::V20180523::SignContractByKeywordResponse`
        def SignContractByKeyword(request)
          body = send_request('SignContractByKeyword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SignContractByKeywordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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