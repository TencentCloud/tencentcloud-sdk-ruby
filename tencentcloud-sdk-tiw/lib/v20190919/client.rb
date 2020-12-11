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
  module Tiw
    module V20190919
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-09-19'
        @@endpoint = 'tiw.tencentcloudapi.com'
        @@sdk_version = 'TIW_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 创建一个文档转码任务

        # @param request: Request instance for CreateTranscode.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateTranscodeRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateTranscodeResponse`
        def CreateTranscode(request)
          body = send_request('CreateTranscode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTranscodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时录制任务状态与结果

        # @param request: Request instance for DescribeOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordResponse`
        def DescribeOnlineRecord(request)
          body = send_request('DescribeOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时录制回调地址

        # @param request: Request instance for DescribeOnlineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordCallbackResponse`
        def DescribeOnlineRecordCallback(request)
          body = send_request('DescribeOnlineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineRecordCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文档转码任务的执行进度与转码结果

        # @param request: Request instance for DescribeTranscode.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeResponse`
        def DescribeTranscode(request)
          body = send_request('DescribeTranscode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文档转码回调地址

        # @param request: Request instance for DescribeTranscodeCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeCallbackResponse`
        def DescribeTranscodeCallback(request)
          body = send_request('DescribeTranscodeCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停实时录制

        # @param request: Request instance for PauseOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::PauseOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::PauseOnlineRecordResponse`
        def PauseOnlineRecord(request)
          body = send_request('PauseOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复实时录制

        # @param request: Request instance for ResumeOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ResumeOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ResumeOnlineRecordResponse`
        def ResumeOnlineRecord(request)
          body = send_request('ResumeOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258

        # @param request: Request instance for SetOnlineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackResponse`
        def SetOnlineRecordCallback(request)
          body = send_request('SetOnlineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOnlineRecordCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetOnlineRecordCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackKeyResponse`
        def SetOnlineRecordCallbackKey(request)
          body = send_request('SetOnlineRecordCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOnlineRecordCallbackKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置文档转码回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260

        # @param request: Request instance for SetTranscodeCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackResponse`
        def SetTranscodeCallback(request)
          body = send_request('SetTranscodeCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTranscodeCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置文档转码回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetTranscodeCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackKeyResponse`
        def SetTranscodeCallbackKey(request)
          body = send_request('SetTranscodeCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTranscodeCallbackKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起一个实时录制任务

        # @param request: Request instance for StartOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StartOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StartOnlineRecordResponse`
        def StartOnlineRecord(request)
          body = send_request('StartOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止实时录制

        # @param request: Request instance for StopOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StopOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StopOnlineRecordResponse`
        def StopOnlineRecord(request)
          body = send_request('StopOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopOnlineRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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