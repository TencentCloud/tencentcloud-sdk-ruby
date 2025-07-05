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
  module Ssa
    module V20180608
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-08'
            api_endpoint = 'ssa.tencentcloudapi.com'
            sdk_version = 'SSA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 安全大屏-用户威胁告警信息

        # @param request: Request instance for DescribeAlarmStat.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeAlarmStatRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeAlarmStatResponse`
        def DescribeAlarmStat(request)
          body = send_request('DescribeAlarmStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmStatResponse.new
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

        # 资产安全页资产详情

        # @param request: Request instance for DescribeAssetDetail.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeAssetDetailResponse`
        def DescribeAssetDetail(request)
          body = send_request('DescribeAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDetailResponse.new
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

        # 资产条件查询

        # @param request: Request instance for DescribeAssetDetailList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeAssetDetailListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeAssetDetailListResponse`
        def DescribeAssetDetailList(request)
          body = send_request('DescribeAssetDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDetailListResponse.new
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

        # 资产安全资产列表

        # @param request: Request instance for DescribeAssetList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeAssetListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeAssetListResponse`
        def DescribeAssetList(request)
          body = send_request('DescribeAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetListResponse.new
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

        # 云安全配置管理资产组列表

        # @param request: Request instance for DescribeCheckConfigAssetList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeCheckConfigAssetListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeCheckConfigAssetListResponse`
        def DescribeCheckConfigAssetList(request)
          body = send_request('DescribeCheckConfigAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckConfigAssetListResponse.new
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

        # 云安全配置检查项详情

        # @param request: Request instance for DescribeCheckConfigDetail.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeCheckConfigDetailRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeCheckConfigDetailResponse`
        def DescribeCheckConfigDetail(request)
          body = send_request('DescribeCheckConfigDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckConfigDetailResponse.new
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

        # 合规管理-资产列表

        # @param request: Request instance for DescribeComplianceAssetList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeComplianceAssetListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeComplianceAssetListResponse`
        def DescribeComplianceAssetList(request)
          body = send_request('DescribeComplianceAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceAssetListResponse.new
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

        # 合规管理检查项详情

        # @param request: Request instance for DescribeComplianceDetail.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeComplianceDetailRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeComplianceDetailResponse`
        def DescribeComplianceDetail(request)
          body = send_request('DescribeComplianceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceDetailResponse.new
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

        # 合规管理总览页检查项列表

        # @param request: Request instance for DescribeComplianceList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeComplianceListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeComplianceListResponse`
        def DescribeComplianceList(request)
          body = send_request('DescribeComplianceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceListResponse.new
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

        # 云配置检查项总览页检查项列表

        # @param request: Request instance for DescribeConfigList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeConfigListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeConfigListResponse`
        def DescribeConfigList(request)
          body = send_request('DescribeConfigList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigListResponse.new
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

        # 域名列表信息

        # @param request: Request instance for DescribeDomainList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeDomainListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeDomainListResponse`
        def DescribeDomainList(request)
          body = send_request('DescribeDomainList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainListResponse.new
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

        # 获取安全事件详情

        # @param request: Request instance for DescribeEventDetail.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeEventDetailRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeEventDetailResponse`
        def DescribeEventDetail(request)
          body = send_request('DescribeEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventDetailResponse.new
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

        # 获取泄露列表

        # @param request: Request instance for DescribeLeakDetectionList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeLeakDetectionListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeLeakDetectionListResponse`
        def DescribeLeakDetectionList(request)
          body = send_request('DescribeLeakDetectionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLeakDetectionListResponse.new
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

        # 获取测绘列表

        # @param request: Request instance for DescribeMappingResults.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeMappingResultsRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeMappingResultsResponse`
        def DescribeMappingResults(request)
          body = send_request('DescribeMappingResults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMappingResultsResponse.new
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

        # 返回告警详情

        # @param request: Request instance for DescribeSocAlertDetails.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeSocAlertDetailsRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeSocAlertDetailsResponse`
        def DescribeSocAlertDetails(request)
          body = send_request('DescribeSocAlertDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSocAlertDetailsResponse.new
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

        # 拉取告警列表

        # @param request: Request instance for DescribeSocAlertList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeSocAlertListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeSocAlertListResponse`
        def DescribeSocAlertList(request)
          body = send_request('DescribeSocAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSocAlertListResponse.new
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

        # 云安全配置检查项列表

        # @param request: Request instance for DescribeSocCheckItemList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeSocCheckItemListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeSocCheckItemListResponse`
        def DescribeSocCheckItemList(request)
          body = send_request('DescribeSocCheckItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSocCheckItemListResponse.new
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

        # 云安全配置检查项结果列表

        # @param request: Request instance for DescribeSocCheckResultList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeSocCheckResultListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeSocCheckResultListResponse`
        def DescribeSocCheckResultList(request)
          body = send_request('DescribeSocCheckResultList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSocCheckResultListResponse.new
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

        # 合规详情项

        # @param request: Request instance for DescribeSocCspmCompliance.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeSocCspmComplianceRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeSocCspmComplianceResponse`
        def DescribeSocCspmCompliance(request)
          body = send_request('DescribeSocCspmCompliance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSocCspmComplianceResponse.new
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

        # 漏洞列表页，获取漏洞详情信息

        # @param request: Request instance for DescribeVulDetail.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeVulDetailRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeVulDetailResponse`
        def DescribeVulDetail(request)
          body = send_request('DescribeVulDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDetailResponse.new
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

        # 漏洞管理页，获取漏洞列表

        # @param request: Request instance for DescribeVulList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeVulListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeVulListResponse`
        def DescribeVulList(request)
          body = send_request('DescribeVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulListResponse.new
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

        # SaDivulgeScanRuleMutate

        # @param request: Request instance for SaDivulgeScanRuleMutate.
        # @type request: :class:`Tencentcloud::ssa::V20180608::SaDivulgeScanRuleMutateRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::SaDivulgeScanRuleMutateResponse`
        def SaDivulgeScanRuleMutate(request)
          body = send_request('SaDivulgeScanRuleMutate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaDivulgeScanRuleMutateResponse.new
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

        # 安全事件通用字段

        # @param request: Request instance for SaEventPub.
        # @type request: :class:`Tencentcloud::ssa::V20180608::SaEventPubRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::SaEventPubResponse`
        def SaEventPub(request)
          body = send_request('SaEventPub', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaEventPubResponse.new
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