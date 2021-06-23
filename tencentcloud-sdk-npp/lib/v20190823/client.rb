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
  module Npp
    module V20190823
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-08-23'
            api_endpoint = 'npp.tencentcloudapi.com'
            sdk_version = 'NPP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 回拨呼叫请求

        # @param request: Request instance for CreateCallBack.
        # @type request: :class:`Tencentcloud::npp::V20190823::CreateCallBackRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::CreateCallBackResponse`
        def CreateCallBack(request)
          body = send_request('CreateCallBack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCallBackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直拨解绑中间号

        # @param request: Request instance for DelVirtualNum.
        # @type request: :class:`Tencentcloud::npp::V20190823::DelVirtualNumRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::DelVirtualNumResponse`
        def DelVirtualNum(request)
          body = send_request('DelVirtualNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DelVirtualNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回拨呼叫取消

        # @param request: Request instance for DeleteCallBack.
        # @type request: :class:`Tencentcloud::npp::V20190823::DeleteCallBackRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::DeleteCallBackResponse`
        def DeleteCallBack(request)
          body = send_request('DeleteCallBack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCallBackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回拨话单获取接口

        # @param request: Request instance for DescribeCallBackCdr.
        # @type request: :class:`Tencentcloud::npp::V20190823::DescribeCallBackCdrRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::DescribeCallBackCdrResponse`
        def DescribeCallBackCdr(request)
          body = send_request('DescribeCallBackCdr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallBackCdrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回拨通话状态获取

        # @param request: Request instance for DescribeCallBackStatus.
        # @type request: :class:`Tencentcloud::npp::V20190823::DescribeCallBackStatusRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::DescribeCallBackStatusResponse`
        def DescribeCallBackStatus(request)
          body = send_request('DescribeCallBackStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallBackStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回拨拉取主叫显号号码集合

        # @param request: Request instance for DescribeCallerDisplayList.
        # @type request: :class:`Tencentcloud::npp::V20190823::DescribeCallerDisplayListRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::DescribeCallerDisplayListResponse`
        def DescribeCallerDisplayList(request)
          body = send_request('DescribeCallerDisplayList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallerDisplayListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直拨话单获取接口

        # @param request: Request instance for Get400Cdr.
        # @type request: :class:`Tencentcloud::npp::V20190823::Get400CdrRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::Get400CdrResponse`
        def Get400Cdr(request)
          body = send_request('Get400Cdr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Get400CdrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直拨获取中间号（App 使用方发起）

        # @param request: Request instance for GetVirtualNum.
        # @type request: :class:`Tencentcloud::npp::V20190823::GetVirtualNumRequest`
        # @rtype: :class:`Tencentcloud::npp::V20190823::GetVirtualNumResponse`
        def GetVirtualNum(request)
          body = send_request('GetVirtualNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetVirtualNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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