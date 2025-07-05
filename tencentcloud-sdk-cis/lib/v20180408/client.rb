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
  module Cis
    module V20180408
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-08'
            api_endpoint = 'cis.tencentcloudapi.com'
            sdk_version = 'CIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口（CreateContainerInstance）用于创建容器实例

        # @param request: Request instance for CreateContainerInstance.
        # @type request: :class:`Tencentcloud::cis::V20180408::CreateContainerInstanceRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::CreateContainerInstanceResponse`
        def CreateContainerInstance(request)
          body = send_request('CreateContainerInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateContainerInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DeleteContainerInstance）用于删除容器实例

        # @param request: Request instance for DeleteContainerInstance.
        # @type request: :class:`Tencentcloud::cis::V20180408::DeleteContainerInstanceRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::DeleteContainerInstanceResponse`
        def DeleteContainerInstance(request)
          body = send_request('DeleteContainerInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteContainerInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeContainerInstance）用于获取容器实例详情

        # @param request: Request instance for DescribeContainerInstance.
        # @type request: :class:`Tencentcloud::cis::V20180408::DescribeContainerInstanceRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::DescribeContainerInstanceResponse`
        def DescribeContainerInstance(request)
          body = send_request('DescribeContainerInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeContainerInstanceEvents）用于查询容器实例事件列表

        # @param request: Request instance for DescribeContainerInstanceEvents.
        # @type request: :class:`Tencentcloud::cis::V20180408::DescribeContainerInstanceEventsRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::DescribeContainerInstanceEventsResponse`
        def DescribeContainerInstanceEvents(request)
          body = send_request('DescribeContainerInstanceEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerInstanceEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeContainerInstances）查询容器实例列表

        # @param request: Request instance for DescribeContainerInstances.
        # @type request: :class:`Tencentcloud::cis::V20180408::DescribeContainerInstancesRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::DescribeContainerInstancesResponse`
        def DescribeContainerInstances(request)
          body = send_request('DescribeContainerInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeContainerLog）用于获取容器日志信息

        # @param request: Request instance for DescribeContainerLog.
        # @type request: :class:`Tencentcloud::cis::V20180408::DescribeContainerLogRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::DescribeContainerLogResponse`
        def DescribeContainerLog(request)
          body = send_request('DescribeContainerLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（InquiryPriceCreateCis）用于查询容器实例价格

        # @param request: Request instance for InquiryPriceCreateCis.
        # @type request: :class:`Tencentcloud::cis::V20180408::InquiryPriceCreateCisRequest`
        # @rtype: :class:`Tencentcloud::cis::V20180408::InquiryPriceCreateCisResponse`
        def InquiryPriceCreateCis(request)
          body = send_request('InquiryPriceCreateCis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateCisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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