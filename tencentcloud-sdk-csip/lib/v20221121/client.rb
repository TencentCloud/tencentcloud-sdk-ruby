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

        # 删除域名和ip请求

        # @param request: Request instance for DeleteDomainAndIp.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDomainAndIpRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDomainAndIpResponse`
        def DeleteDomainAndIp(request)
          body = send_request('DeleteDomainAndIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainAndIpResponse.new
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

        # 删除风险中心扫描任务

        # @param request: Request instance for DeleteRiskScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteRiskScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteRiskScanTaskResponse`
        def DeleteRiskScanTask(request)
          body = send_request('DeleteRiskScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRiskScanTaskResponse.new
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

        # 告警中心全量告警列表接口

        # @param request: Request instance for DescribeAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAlertListResponse`
        def DescribeAlertList(request)
          body = send_request('DescribeAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlertListResponse.new
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

        # 资产视角下云资源配置风险列表

        # @param request: Request instance for DescribeAssetRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetRiskListResponse`
        def DescribeAssetRiskList(request)
          body = send_request('DescribeAssetRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetRiskListResponse.new
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

        # @param request: Request instance for DescribeAssetViewVulRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetViewVulRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetViewVulRiskListResponse`
        def DescribeAssetViewVulRiskList(request)
          body = send_request('DescribeAssetViewVulRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetViewVulRiskListResponse.new
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

        # 云防资产中心统计数据

        # @param request: Request instance for DescribeCFWAssetStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCFWAssetStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCFWAssetStatisticsResponse`
        def DescribeCFWAssetStatistics(request)
          body = send_request('DescribeCFWAssetStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCFWAssetStatisticsResponse.new
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

        # 获取风险中心风险概况示例

        # @param request: Request instance for DescribeCSIPRiskStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSIPRiskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSIPRiskStatisticsResponse`
        def DescribeCSIPRiskStatistics(request)
          body = send_request('DescribeCSIPRiskStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSIPRiskStatisticsResponse.new
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

        # 获取cvm列表

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

        # 检查视角下云资源配置风险列表示例

        # @param request: Request instance for DescribeCheckViewRisks.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCheckViewRisksRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCheckViewRisksResponse`
        def DescribeCheckViewRisks(request)
          body = send_request('DescribeCheckViewRisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckViewRisksResponse.new
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

        # 集群列表

        # @param request: Request instance for DescribeClusterAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetsResponse`
        def DescribeClusterAssets(request)
          body = send_request('DescribeClusterAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAssetsResponse.new
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

        # 数据库资产列表

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

        # 暴露面资产分类

        # @param request: Request instance for DescribeExposeAssetCategory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposeAssetCategoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposeAssetCategoryResponse`
        def DescribeExposeAssetCategory(request)
          body = send_request('DescribeExposeAssetCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposeAssetCategoryResponse.new
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

        # 查询互联网暴露节点

        # @param request: Request instance for DescribeExposePath.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposePathRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposePathResponse`
        def DescribeExposePath(request)
          body = send_request('DescribeExposePath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposePathResponse.new
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

        # 互联网暴露资产列表

        # @param request: Request instance for DescribeExposures.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposuresRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposuresResponse`
        def DescribeExposures(request)
          body = send_request('DescribeExposures', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposuresResponse.new
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

        # 获取网关列表

        # @param request: Request instance for DescribeGatewayAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeGatewayAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeGatewayAssetsResponse`
        def DescribeGatewayAssets(request)
          body = send_request('DescribeGatewayAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayAssetsResponse.new
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

        # 获取网卡列表

        # @param request: Request instance for DescribeNICAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNICAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNICAssetsResponse`
        def DescribeNICAssets(request)
          body = send_request('DescribeNICAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNICAssetsResponse.new
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

        # 查询集团账号详情

        # @param request: Request instance for DescribeOrganizationInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationInfoResponse`
        def DescribeOrganizationInfo(request)
          body = send_request('DescribeOrganizationInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationInfoResponse.new
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

        # 查询集团账号用户列表

        # @param request: Request instance for DescribeOrganizationUserInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationUserInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationUserInfoResponse`
        def DescribeOrganizationUserInfo(request)
          body = send_request('DescribeOrganizationUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationUserInfoResponse.new
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

        # @param request: Request instance for DescribeOtherCloudAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeOtherCloudAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeOtherCloudAssetsResponse`
        def DescribeOtherCloudAssets(request)
          body = send_request('DescribeOtherCloudAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOtherCloudAssetsResponse.new
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

        # 仓库镜像列表

        # @param request: Request instance for DescribeRepositoryImageAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRepositoryImageAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRepositoryImageAssetsResponse`
        def DescribeRepositoryImageAssets(request)
          body = send_request('DescribeRepositoryImageAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoryImageAssetsResponse.new
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

        # 获取资产视角的配置风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewCFGRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewCFGRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewCFGRiskListResponse`
        def DescribeRiskCenterAssetViewCFGRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewCFGRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewCFGRiskListResponse.new
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

        # 获取资产视角的弱口令风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewWeakPasswordRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewWeakPasswordRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewWeakPasswordRiskListResponse`
        def DescribeRiskCenterAssetViewWeakPasswordRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewWeakPasswordRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewWeakPasswordRiskListResponse.new
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

        # 获取配置视角的配置风险列表

        # @param request: Request instance for DescribeRiskCenterCFGViewCFGRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterCFGViewCFGRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterCFGViewCFGRiskListResponse`
        def DescribeRiskCenterCFGViewCFGRiskList(request)
          body = send_request('DescribeRiskCenterCFGViewCFGRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterCFGViewCFGRiskListResponse.new
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

        # 获取端口视角的端口风险列表

        # @param request: Request instance for DescribeRiskCenterPortViewPortRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterPortViewPortRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterPortViewPortRiskListResponse`
        def DescribeRiskCenterPortViewPortRiskList(request)
          body = send_request('DescribeRiskCenterPortViewPortRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterPortViewPortRiskListResponse.new
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

        # 获取风险服务列表

        # @param request: Request instance for DescribeRiskCenterServerRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterServerRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterServerRiskListResponse`
        def DescribeRiskCenterServerRiskList(request)
          body = send_request('DescribeRiskCenterServerRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterServerRiskListResponse.new
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

        # 获取漏洞视角的漏洞风险列表

        # @param request: Request instance for DescribeRiskCenterVULViewVULRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterVULViewVULRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterVULViewVULRiskListResponse`
        def DescribeRiskCenterVULViewVULRiskList(request)
          body = send_request('DescribeRiskCenterVULViewVULRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterVULViewVULRiskListResponse.new
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

        # 获取内容风险列表

        # @param request: Request instance for DescribeRiskCenterWebsiteRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterWebsiteRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterWebsiteRiskListResponse`
        def DescribeRiskCenterWebsiteRiskList(request)
          body = send_request('DescribeRiskCenterWebsiteRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterWebsiteRiskListResponse.new
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

        # 风险详情列表示例

        # @param request: Request instance for DescribeRiskDetailList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskDetailListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskDetailListResponse`
        def DescribeRiskDetailList(request)
          body = send_request('DescribeRiskDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDetailListResponse.new
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

        # 查询风险规则详情示例

        # @param request: Request instance for DescribeRiskRuleDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskRuleDetailResponse`
        def DescribeRiskRuleDetail(request)
          body = send_request('DescribeRiskRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskRuleDetailResponse.new
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

        # 高级配置风险规则列表示例

        # @param request: Request instance for DescribeRiskRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskRulesResponse`
        def DescribeRiskRules(request)
          body = send_request('DescribeRiskRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskRulesResponse.new
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

        # 查询互联网暴露扫描结果统计信息

        # @param request: Request instance for DescribeScanStatistic.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanStatisticRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanStatisticResponse`
        def DescribeScanStatistic(request)
          body = send_request('DescribeScanStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanStatisticResponse.new
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

        # 获取扫描任务列表

        # @param request: Request instance for DescribeScanTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanTaskListResponse`
        def DescribeScanTaskList(request)
          body = send_request('DescribeScanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskListResponse.new
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

        # 立体防护中心查询漏洞信息

        # @param request: Request instance for DescribeSearchBugInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSearchBugInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSearchBugInfoResponse`
        def DescribeSearchBugInfo(request)
          body = send_request('DescribeSearchBugInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchBugInfoResponse.new
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

        # 查询集团的子账号列表

        # @param request: Request instance for DescribeSubUserInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSubUserInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSubUserInfoResponse`
        def DescribeSubUserInfo(request)
          body = send_request('DescribeSubUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubUserInfoResponse.new
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

        # 获取任务扫描报告列表

        # @param request: Request instance for DescribeTaskLogList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogListResponse`
        def DescribeTaskLogList(request)
          body = send_request('DescribeTaskLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLogListResponse.new
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

        # 获取报告下载的临时链接

        # @param request: Request instance for DescribeTaskLogURL.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogURLRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogURLResponse`
        def DescribeTaskLogURL(request)
          body = send_request('DescribeTaskLogURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLogURLResponse.new
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

        # 查询TOP攻击信息

        # @param request: Request instance for DescribeTopAttackInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTopAttackInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTopAttackInfoResponse`
        def DescribeTopAttackInfo(request)
          body = send_request('DescribeTopAttackInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopAttackInfoResponse.new
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

        # 查询用户行为分析策略列表

        # @param request: Request instance for DescribeUebaRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUebaRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUebaRuleResponse`
        def DescribeUebaRule(request)
          body = send_request('DescribeUebaRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUebaRuleResponse.new
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

        # 新安全中心风险中心-漏洞列表

        # @param request: Request instance for DescribeVULList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVULListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVULListResponse`
        def DescribeVULList(request)
          body = send_request('DescribeVULList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVULListResponse.new
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

        # 查询漏洞风险高级配置

        # @param request: Request instance for DescribeVULRiskAdvanceCFGList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskAdvanceCFGListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskAdvanceCFGListResponse`
        def DescribeVULRiskAdvanceCFGList(request)
          body = send_request('DescribeVULRiskAdvanceCFGList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVULRiskAdvanceCFGListResponse.new
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

        # 获取漏洞展开详情

        # @param request: Request instance for DescribeVULRiskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskDetailResponse`
        def DescribeVULRiskDetail(request)
          body = send_request('DescribeVULRiskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVULRiskDetailResponse.new
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

        # 获取漏洞视角的漏洞风险列表

        # @param request: Request instance for DescribeVulViewVulRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulViewVulRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulViewVulRiskListResponse`
        def DescribeVulViewVulRiskList(request)
          body = send_request('DescribeVulViewVulRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulViewVulRiskListResponse.new
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

        # 修改集团账号状态

        # @param request: Request instance for ModifyOrganizationAccountStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyOrganizationAccountStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyOrganizationAccountStatusResponse`
        def ModifyOrganizationAccountStatus(request)
          body = send_request('ModifyOrganizationAccountStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOrganizationAccountStatusResponse.new
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

        # 修改风险中心风险状态

        # @param request: Request instance for ModifyRiskCenterRiskStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterRiskStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterRiskStatusResponse`
        def ModifyRiskCenterRiskStatus(request)
          body = send_request('ModifyRiskCenterRiskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskCenterRiskStatusResponse.new
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

        # 修改风险中心扫描任务

        # @param request: Request instance for ModifyRiskCenterScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterScanTaskResponse`
        def ModifyRiskCenterScanTask(request)
          body = send_request('ModifyRiskCenterScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskCenterScanTaskResponse.new
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

        # 更新自定义策略的开关

        # @param request: Request instance for ModifyUebaRuleSwitch.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyUebaRuleSwitchRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyUebaRuleSwitchResponse`
        def ModifyUebaRuleSwitch(request)
          body = send_request('ModifyUebaRuleSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUebaRuleSwitchResponse.new
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

        # 停止扫风险中心扫描任务

        # @param request: Request instance for StopRiskCenterTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopRiskCenterTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopRiskCenterTaskResponse`
        def StopRiskCenterTask(request)
          body = send_request('StopRiskCenterTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRiskCenterTaskResponse.new
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

        # 批量告警状态处理接口

        # @param request: Request instance for UpdateAlertStatusList.
        # @type request: :class:`Tencentcloud::csip::V20221121::UpdateAlertStatusListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UpdateAlertStatusListResponse`
        def UpdateAlertStatusList(request)
          body = send_request('UpdateAlertStatusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAlertStatusListResponse.new
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