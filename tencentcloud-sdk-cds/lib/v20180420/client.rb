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
  module Cds
    module V20180420
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-20'
            api_endpoint = 'cds.tencentcloudapi.com'
            sdk_version = 'CDS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 下载报表PDF

        # @param request: Request instance for CreateReportPdf.
        # @type request: :class:`Tencentcloud::cds::V20180420::CreateReportPdfRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::CreateReportPdfResponse`
        def CreateReportPdf(request)
          body = send_request('CreateReportPdf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReportPdfResponse.new
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

        # 新建报表任务

        # @param request: Request instance for CreateTimerReport.
        # @type request: :class:`Tencentcloud::cds::V20180420::CreateTimerReportRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::CreateTimerReportResponse`
        def CreateTimerReport(request)
          body = send_request('CreateTimerReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTimerReportResponse.new
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

        # 查询资产列表

        # @param request: Request instance for DescribeAssetsList.
        # @type request: :class:`Tencentcloud::cds::V20180420::DescribeAssetsListRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::DescribeAssetsListResponse`
        def DescribeAssetsList(request)
          body = send_request('DescribeAssetsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetsListResponse.new
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

        # 本接口 (DescribeDbauditInstanceType) 用于查询可售卖的产品规格列表。

        # @param request: Request instance for DescribeDbauditInstanceType.
        # @type request: :class:`Tencentcloud::cds::V20180420::DescribeDbauditInstanceTypeRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::DescribeDbauditInstanceTypeResponse`
        def DescribeDbauditInstanceType(request)
          body = send_request('DescribeDbauditInstanceType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbauditInstanceTypeResponse.new
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

        # 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表

        # @param request: Request instance for DescribeDbauditInstances.
        # @type request: :class:`Tencentcloud::cds::V20180420::DescribeDbauditInstancesRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::DescribeDbauditInstancesResponse`
        def DescribeDbauditInstances(request)
          body = send_request('DescribeDbauditInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbauditInstancesResponse.new
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

        # 本接口 (DescribeDbauditUsedRegions) 用于查询可售卖地域列表。

        # @param request: Request instance for DescribeDbauditUsedRegions.
        # @type request: :class:`Tencentcloud::cds::V20180420::DescribeDbauditUsedRegionsRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::DescribeDbauditUsedRegionsResponse`
        def DescribeDbauditUsedRegions(request)
          body = send_request('DescribeDbauditUsedRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbauditUsedRegionsResponse.new
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

        # 查询报表列表

        # @param request: Request instance for DescribeReportList.
        # @type request: :class:`Tencentcloud::cds::V20180420::DescribeReportListRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::DescribeReportListResponse`
        def DescribeReportList(request)
          body = send_request('DescribeReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportListResponse.new
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

        # 查询报表任务列表

        # @param request: Request instance for DescribeReportMissionList.
        # @type request: :class:`Tencentcloud::cds::V20180420::DescribeReportMissionListRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::DescribeReportMissionListResponse`
        def DescribeReportMissionList(request)
          body = send_request('DescribeReportMissionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportMissionListResponse.new
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

        # 用于查询数据安全审计产品实例价格

        # @param request: Request instance for InquiryPriceDbauditInstance.
        # @type request: :class:`Tencentcloud::cds::V20180420::InquiryPriceDbauditInstanceRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::InquiryPriceDbauditInstanceResponse`
        def InquiryPriceDbauditInstance(request)
          body = send_request('InquiryPriceDbauditInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceDbauditInstanceResponse.new
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

        # 本接口 (ModifyDbauditInstancesRenewFlag) 用于修改数据安全审计产品实例续费标识

        # @param request: Request instance for ModifyDbauditInstancesRenewFlag.
        # @type request: :class:`Tencentcloud::cds::V20180420::ModifyDbauditInstancesRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cds::V20180420::ModifyDbauditInstancesRenewFlagResponse`
        def ModifyDbauditInstancesRenewFlag(request)
          body = send_request('ModifyDbauditInstancesRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDbauditInstancesRenewFlagResponse.new
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