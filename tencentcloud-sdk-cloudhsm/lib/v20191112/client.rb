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
  module Cloudhsm
    module V20191112
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-11-12'
            api_endpoint = 'cloudhsm.tencentcloudapi.com'
            sdk_version = 'CLOUDHSM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 通过SubnetId获取Hsm资源数

        # @param request: Request instance for DescribeHSMBySubnetId.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeHSMBySubnetIdRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeHSMBySubnetIdResponse`
        def DescribeHSMBySubnetId(request)
          body = send_request('DescribeHSMBySubnetId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHSMBySubnetIdResponse.new
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

        # 通过VpcId获取Hsm资源数

        # @param request: Request instance for DescribeHSMByVpcId.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeHSMByVpcIdRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeHSMByVpcIdResponse`
        def DescribeHSMByVpcId(request)
          body = send_request('DescribeHSMByVpcId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHSMByVpcIdResponse.new
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

        # 查询子网列表

        # @param request: Request instance for DescribeSubnet.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeSubnetRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeSubnetResponse`
        def DescribeSubnet(request)
          body = send_request('DescribeSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetResponse.new
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

        # 获取当前地域所支持的设备列表

        # @param request: Request instance for DescribeSupportedHsm.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeSupportedHsmRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeSupportedHsmResponse`
        def DescribeSupportedHsm(request)
          body = send_request('DescribeSupportedHsm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSupportedHsmResponse.new
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

        # 根据用户的AppId获取用户安全组列表

        # @param request: Request instance for DescribeUsg.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeUsgRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeUsgResponse`
        def DescribeUsg(request)
          body = send_request('DescribeUsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsgResponse.new
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

        # 获取安全组详情

        # @param request: Request instance for DescribeUsgRule.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeUsgRuleRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeUsgRuleResponse`
        def DescribeUsgRule(request)
          body = send_request('DescribeUsgRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsgRuleResponse.new
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

        # 查询用户的私有网络列表

        # @param request: Request instance for DescribeVpc.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeVpcRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeVpcResponse`
        def DescribeVpc(request)
          body = send_request('DescribeVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcResponse.new
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

        # 获取VSM属性

        # @param request: Request instance for DescribeVsmAttributes.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeVsmAttributesRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeVsmAttributesResponse`
        def DescribeVsmAttributes(request)
          body = send_request('DescribeVsmAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVsmAttributesResponse.new
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

        # 获取用户VSM列表

        # @param request: Request instance for DescribeVsms.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::DescribeVsmsRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::DescribeVsmsResponse`
        def DescribeVsms(request)
          body = send_request('DescribeVsms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVsmsResponse.new
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

        # 购买询价接口

        # @param request: Request instance for InquiryPriceBuyVsm.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::InquiryPriceBuyVsmRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::InquiryPriceBuyVsmResponse`
        def InquiryPriceBuyVsm(request)
          body = send_request('InquiryPriceBuyVsm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceBuyVsmResponse.new
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

        # 修改VSM属性

        # @param request: Request instance for ModifyVsmAttributes.
        # @type request: :class:`Tencentcloud::cloudhsm::V20191112::ModifyVsmAttributesRequest`
        # @rtype: :class:`Tencentcloud::cloudhsm::V20191112::ModifyVsmAttributesResponse`
        def ModifyVsmAttributes(request)
          body = send_request('ModifyVsmAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVsmAttributesResponse.new
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