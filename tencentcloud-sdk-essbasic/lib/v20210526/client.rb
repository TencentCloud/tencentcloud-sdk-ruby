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


        # 接口（ChannelCreateFlowByFiles）用于渠道版通过文件创建流程。此接口不可直接使用，需要运营申请

        # @param request: Request instance for ChannelCreateFlowByFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowByFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowByFilesResponse`
        def ChannelCreateFlowByFiles(request)
          body = send_request('ChannelCreateFlowByFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowByFilesResponse.new
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

        # 接口（CreateFlowsByTemplates）用于使用多个模板批量创建流程。当前可批量发起合同（流程）数量最大为20个。

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

        # 渠道通过图片为子客代创建印章，图片最大5m；此接口不可直接使用，需要运营申请

        # @param request: Request instance for CreateSealByImage.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateSealByImageRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateSealByImageResponse`
        def CreateSealByImage(request)
          body = send_request('CreateSealByImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSealByImageResponse.new
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

        # 创建参与者签署短链

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

        # 此接口（DescribeFlowDetailInfo）用于查询合同(流程)的详细信息。

        # @param request: Request instance for DescribeFlowDetailInfo.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeFlowDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeFlowDetailInfoResponse`
        def DescribeFlowDetailInfo(request)
          body = send_request('DescribeFlowDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowDetailInfoResponse.new
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

        # 根据流程信息批量获取资源下载链接，可直接下载
        # 限制：只能下载合作企业授权过的、单方签署的流程文件（若合作企业与渠道是同一企业，可以下载所有流程文件）

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

        # 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
        # 当前接口限制最多合同（流程）50个.

        # @param request: Request instance for GetDownloadFlowUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::GetDownloadFlowUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::GetDownloadFlowUrlResponse`
        def GetDownloadFlowUrl(request)
          body = send_request('GetDownloadFlowUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDownloadFlowUrlResponse.new
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

        # 此接口（OperateChannelTemplate）用于渠道侧将模板库中的模板对合作企业进行查询和设置, 其中包括可见性的修改以及对合作企业的设置.
        # 1、同步标识=select时：
        # 返回渠道侧模板库当前模板的属性.
        # 2、同步标识=update或者delete时：
        # 对渠道子客进行模板库中模板授权,修改操作

        # @param request: Request instance for OperateChannelTemplate.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::OperateChannelTemplateRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::OperateChannelTemplateResponse`
        def OperateChannelTemplate(request)
          body = send_request('OperateChannelTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OperateChannelTemplateResponse.new
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
        # 用户通过该接口进入流程发起的确认页面，进行发起信息二次确认， 如果确认则进行正常发起。
        # 目前该接口只支持B2C，不建议使用。

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

        # 此接口（UploadFiles）用于文件上传。
        # 调用时需要设置Domain 为 file.ess.tencent.cn

        # @param request: Request instance for UploadFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::UploadFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::UploadFilesResponse`
        def UploadFiles(request)
          body = send_request('UploadFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFilesResponse.new
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