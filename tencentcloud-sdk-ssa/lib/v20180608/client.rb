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
  module Ssa
    module V20180608
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-08'
            api_endpoint = 'ssa.tencentcloudapi.com'
            sdk_version = 'SSA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
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

        # 资产测绘-测绘列表

        # @param request: Request instance for DescribeAssetsMappingList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeAssetsMappingListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeAssetsMappingListResponse`
        def DescribeAssetsMappingList(request)
          body = send_request('DescribeAssetsMappingList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetsMappingListResponse.new
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

        # 获取安全事件列表

        # @param request: Request instance for DescribeSafetyEventList.
        # @type request: :class:`Tencentcloud::ssa::V20180608::DescribeSafetyEventListRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::DescribeSafetyEventListResponse`
        def DescribeSafetyEventList(request)
          body = send_request('DescribeSafetyEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSafetyEventListResponse.new
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

        # 查询【通用字段】【泄露监测数据列表】

        # @param request: Request instance for SaDivulgeDataQueryPub.
        # @type request: :class:`Tencentcloud::ssa::V20180608::SaDivulgeDataQueryPubRequest`
        # @rtype: :class:`Tencentcloud::ssa::V20180608::SaDivulgeDataQueryPubResponse`
        def SaDivulgeDataQueryPub(request)
          body = send_request('SaDivulgeDataQueryPub', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaDivulgeDataQueryPubResponse.new
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