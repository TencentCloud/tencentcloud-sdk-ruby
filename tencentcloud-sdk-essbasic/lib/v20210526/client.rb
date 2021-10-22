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
  module Essbasic
    module V20210526
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-26'
            api_endpoint = 'essbasic.tencentcloudapi.com'
            sdk_version = 'ESSBASIC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口（CreateConsoleLoginUrl）用于创建电子签控制台登录链接。若企业未激活，调用同步企业信息、同步经办人信息

        # @param request: Request instance for CreateConsoleLoginUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateConsoleLoginUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateConsoleLoginUrlResponse`
        def CreateConsoleLoginUrl(request)
          body = send_request('CreateConsoleLoginUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsoleLoginUrlResponse.new
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

        # 接口（CreateFlowsByTemplates）用于使用多个模板批量创建流程

        # @param request: Request instance for CreateFlowsByTemplates.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateFlowsByTemplatesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateFlowsByTemplatesResponse`
        def CreateFlowsByTemplates(request)
          body = send_request('CreateFlowsByTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowsByTemplatesResponse.new
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

        # 根据流程Id批量创建签署参与者签署H5链接

        # @param request: Request instance for CreateSignUrls.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateSignUrlsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateSignUrlsResponse`
        def CreateSignUrls(request)
          body = send_request('CreateSignUrls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSignUrlsResponse.new
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

        # 根据流程信息批量获取资源下载链接

        # @param request: Request instance for DescribeResourceUrlsByFlows.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeResourceUrlsByFlowsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeResourceUrlsByFlowsResponse`
        def DescribeResourceUrlsByFlows(request)
          body = send_request('DescribeResourceUrlsByFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceUrlsByFlowsResponse.new
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

        # 通过此接口（DescribeTemplates）查询该企业在电子签渠道版中配置的有效模板列表

        # @param request: Request instance for DescribeTemplates.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeTemplatesResponse`
        def DescribeTemplates(request)
          body = send_request('DescribeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplatesResponse.new
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

        # 此接口（DescribeUsage）用于获取渠道所有合作企业流量消耗情况。
        #  注: 此接口每日限频2次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。

        # @param request: Request instance for DescribeUsage.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeUsageRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeUsageResponse`
        def DescribeUsage(request)
          body = send_request('DescribeUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsageResponse.new
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

        # 该接口 (PrepareFlows) 用于创建待发起文件

        # @param request: Request instance for PrepareFlows.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::PrepareFlowsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::PrepareFlowsResponse`
        def PrepareFlows(request)
          body = send_request('PrepareFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PrepareFlowsResponse.new
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

        # 此接口（SyncProxyOrganization）用于同步渠道侧企业信息

        # @param request: Request instance for SyncProxyOrganization.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationResponse`
        def SyncProxyOrganization(request)
          body = send_request('SyncProxyOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncProxyOrganizationResponse.new
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

        # 此接口（SyncProxyOrganizationOperators）用于同步渠道合作企业经办人列表

        # @param request: Request instance for SyncProxyOrganizationOperators.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationOperatorsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationOperatorsResponse`
        def SyncProxyOrganizationOperators(request)
          body = send_request('SyncProxyOrganizationOperators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncProxyOrganizationOperatorsResponse.new
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