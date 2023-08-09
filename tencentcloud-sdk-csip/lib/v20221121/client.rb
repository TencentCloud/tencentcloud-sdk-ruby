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
  module Csip
    module V20221121
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-11-21'
            api_endpoint = 'csip.tencentcloudapi.com'
            sdk_version = 'CSIP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # csip角色授权绑定接口

        # @param request: Request instance for AddNewBindRoleUser.
        # @type request: :class:`Tencentcloud::csip::V20221121::AddNewBindRoleUserRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AddNewBindRoleUserResponse`
        def AddNewBindRoleUser(request)
          body = send_request('AddNewBindRoleUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNewBindRoleUserResponse.new
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

        # 创建域名、ip相关信息

        # @param request: Request instance for CreateDomainAndIp.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDomainAndIpRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDomainAndIpResponse`
        def CreateDomainAndIp(request)
          body = send_request('CreateDomainAndIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainAndIpResponse.new
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

        # 创建风险中心扫描任务

        # @param request: Request instance for CreateRiskCenterScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateRiskCenterScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateRiskCenterScanTaskResponse`
        def CreateRiskCenterScanTask(request)
          body = send_request('CreateRiskCenterScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRiskCenterScanTaskResponse.new
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

        # cvm详情

        # @param request: Request instance for DescribeCVMAssetInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetInfoResponse`
        def DescribeCVMAssetInfo(request)
          body = send_request('DescribeCVMAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCVMAssetInfoResponse.new
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

        # cvm列表

        # @param request: Request instance for DescribeCVMAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetsResponse`
        def DescribeCVMAssets(request)
          body = send_request('DescribeCVMAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCVMAssetsResponse.new
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

        # 集群pod列表

        # @param request: Request instance for DescribeClusterPodAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodAssetsResponse`
        def DescribeClusterPodAssets(request)
          body = send_request('DescribeClusterPodAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPodAssetsResponse.new
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

        # db资产详情

        # @param request: Request instance for DescribeDbAssetInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetInfoResponse`
        def DescribeDbAssetInfo(request)
          body = send_request('DescribeDbAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbAssetInfoResponse.new
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

        # 资产列表

        # @param request: Request instance for DescribeDbAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetsResponse`
        def DescribeDbAssets(request)
          body = send_request('DescribeDbAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbAssetsResponse.new
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

        # 域名列表

        # @param request: Request instance for DescribeDomainAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDomainAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDomainAssetsResponse`
        def DescribeDomainAssets(request)
          body = send_request('DescribeDomainAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainAssetsResponse.new
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

        # 查询clb监听器列表

        # @param request: Request instance for DescribeListenerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeListenerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeListenerListResponse`
        def DescribeListenerList(request)
          body = send_request('DescribeListenerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerListResponse.new
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

        # ip公网列表

        # @param request: Request instance for DescribePublicIpAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePublicIpAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePublicIpAssetsResponse`
        def DescribePublicIpAssets(request)
          body = send_request('DescribePublicIpAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicIpAssetsResponse.new
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

        # 获取资产视角的端口风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewPortRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewPortRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewPortRiskListResponse`
        def DescribeRiskCenterAssetViewPortRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewPortRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewPortRiskListResponse.new
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

        # 获取资产视角的漏洞风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewVULRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewVULRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewVULRiskListResponse`
        def DescribeRiskCenterAssetViewVULRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewVULRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewVULRiskListResponse.new
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

        # 获取扫描报告列表

        # @param request: Request instance for DescribeScanReportList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanReportListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanReportListResponse`
        def DescribeScanReportList(request)
          body = send_request('DescribeScanReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanReportListResponse.new
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

        # 获取子网列表

        # @param request: Request instance for DescribeSubnetAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSubnetAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSubnetAssetsResponse`
        def DescribeSubnetAssets(request)
          body = send_request('DescribeSubnetAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetAssetsResponse.new
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

        # 获取vpc列表

        # @param request: Request instance for DescribeVpcAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVpcAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVpcAssetsResponse`
        def DescribeVpcAssets(request)
          body = send_request('DescribeVpcAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcAssetsResponse.new
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