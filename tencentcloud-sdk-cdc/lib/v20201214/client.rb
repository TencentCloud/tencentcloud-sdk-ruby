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
  module Cdc
    module V20201214
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-14'
            api_endpoint = 'cdc.tencentcloudapi.com'
            sdk_version = 'CDC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建专用集群

        # @param request: Request instance for CreateDedicatedCluster.
        # @type request: :class:`Tencentcloud::cdc::V20201214::CreateDedicatedClusterRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::CreateDedicatedClusterResponse`
        def CreateDedicatedCluster(request)
          body = send_request('CreateDedicatedCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDedicatedClusterResponse.new
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

        # 创建云上镜像缓存到本地专用集群中

        # @param request: Request instance for CreateDedicatedClusterImageCache.
        # @type request: :class:`Tencentcloud::cdc::V20201214::CreateDedicatedClusterImageCacheRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::CreateDedicatedClusterImageCacheResponse`
        def CreateDedicatedClusterImageCache(request)
          body = send_request('CreateDedicatedClusterImageCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDedicatedClusterImageCacheResponse.new
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

        # 创建专用集群订单

        # @param request: Request instance for CreateDedicatedClusterOrder.
        # @type request: :class:`Tencentcloud::cdc::V20201214::CreateDedicatedClusterOrderRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::CreateDedicatedClusterOrderResponse`
        def CreateDedicatedClusterOrder(request)
          body = send_request('CreateDedicatedClusterOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDedicatedClusterOrderResponse.new
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

        # 创建站点

        # @param request: Request instance for CreateSite.
        # @type request: :class:`Tencentcloud::cdc::V20201214::CreateSiteRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::CreateSiteResponse`
        def CreateSite(request)
          body = send_request('CreateSite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSiteResponse.new
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

        # 删除本地专用集群的云上镜像缓存

        # @param request: Request instance for DeleteDedicatedClusterImageCache.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DeleteDedicatedClusterImageCacheRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DeleteDedicatedClusterImageCacheResponse`
        def DeleteDedicatedClusterImageCache(request)
          body = send_request('DeleteDedicatedClusterImageCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDedicatedClusterImageCacheResponse.new
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

        # 删除专用集群

        # @param request: Request instance for DeleteDedicatedClusters.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DeleteDedicatedClustersRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DeleteDedicatedClustersResponse`
        def DeleteDedicatedClusters(request)
          body = send_request('DeleteDedicatedClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDedicatedClustersResponse.new
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

        # 删除站点

        # @param request: Request instance for DeleteSites.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DeleteSitesRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DeleteSitesResponse`
        def DeleteSites(request)
          body = send_request('DeleteSites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSitesResponse.new
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

        # 查询本地专用集群云硬盘仓库信息

        # @param request: Request instance for DescribeDedicatedClusterCbsStatistics.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterCbsStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterCbsStatisticsResponse`
        def DescribeDedicatedClusterCbsStatistics(request)
          body = send_request('DescribeDedicatedClusterCbsStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterCbsStatisticsResponse.new
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

        # 查询专用集群内cos的容量信息

        # @param request: Request instance for DescribeDedicatedClusterCosCapacity.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterCosCapacityRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterCosCapacityResponse`
        def DescribeDedicatedClusterCosCapacity(request)
          body = send_request('DescribeDedicatedClusterCosCapacity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterCosCapacityResponse.new
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

        # 查询专用集群内宿主机的统计信息

        # @param request: Request instance for DescribeDedicatedClusterHostStatistics.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterHostStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterHostStatisticsResponse`
        def DescribeDedicatedClusterHostStatistics(request)
          body = send_request('DescribeDedicatedClusterHostStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterHostStatisticsResponse.new
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

        # 查询专用集群宿主机信息

        # @param request: Request instance for DescribeDedicatedClusterHosts.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterHostsRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterHostsResponse`
        def DescribeDedicatedClusterHosts(request)
          body = send_request('DescribeDedicatedClusterHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterHostsResponse.new
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

        # 查询专用集群支持的实例规格列表

        # @param request: Request instance for DescribeDedicatedClusterInstanceTypes.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterInstanceTypesRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterInstanceTypesResponse`
        def DescribeDedicatedClusterInstanceTypes(request)
          body = send_request('DescribeDedicatedClusterInstanceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterInstanceTypesResponse.new
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

        # 查询专用集群订单列表

        # @param request: Request instance for DescribeDedicatedClusterOrders.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterOrdersRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterOrdersResponse`
        def DescribeDedicatedClusterOrders(request)
          body = send_request('DescribeDedicatedClusterOrders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterOrdersResponse.new
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

        # 查询专用集群概览信息

        # @param request: Request instance for DescribeDedicatedClusterOverview.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterOverviewRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterOverviewResponse`
        def DescribeDedicatedClusterOverview(request)
          body = send_request('DescribeDedicatedClusterOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterOverviewResponse.new
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

        # 查询专有集群配置列表

        # @param request: Request instance for DescribeDedicatedClusterTypes.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterTypesRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClusterTypesResponse`
        def DescribeDedicatedClusterTypes(request)
          body = send_request('DescribeDedicatedClusterTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClusterTypesResponse.new
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

        # 查询专用集群列表

        # @param request: Request instance for DescribeDedicatedClusters.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClustersRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedClustersResponse`
        def DescribeDedicatedClusters(request)
          body = send_request('DescribeDedicatedClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedClustersResponse.new
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

        # 查询专用集群支持的可用区列表

        # @param request: Request instance for DescribeDedicatedSupportedZones.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedSupportedZonesRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeDedicatedSupportedZonesResponse`
        def DescribeDedicatedSupportedZones(request)
          body = send_request('DescribeDedicatedSupportedZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDedicatedSupportedZonesResponse.new
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

        # 查询站点列表

        # @param request: Request instance for DescribeSites.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeSitesRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeSitesResponse`
        def DescribeSites(request)
          body = send_request('DescribeSites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSitesResponse.new
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

        # 查询站点详情

        # @param request: Request instance for DescribeSitesDetail.
        # @type request: :class:`Tencentcloud::cdc::V20201214::DescribeSitesDetailRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::DescribeSitesDetailResponse`
        def DescribeSitesDetail(request)
          body = send_request('DescribeSitesDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSitesDetailResponse.new
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

        # 修改本地专用集群信息

        # @param request: Request instance for ModifyDedicatedClusterInfo.
        # @type request: :class:`Tencentcloud::cdc::V20201214::ModifyDedicatedClusterInfoRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::ModifyDedicatedClusterInfoResponse`
        def ModifyDedicatedClusterInfo(request)
          body = send_request('ModifyDedicatedClusterInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDedicatedClusterInfoResponse.new
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

        # 修改大订单、小订单的状态

        # @param request: Request instance for ModifyOrderStatus.
        # @type request: :class:`Tencentcloud::cdc::V20201214::ModifyOrderStatusRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::ModifyOrderStatusResponse`
        def ModifyOrderStatus(request)
          body = send_request('ModifyOrderStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOrderStatusResponse.new
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

        # 修改机房设备信息

        # @param request: Request instance for ModifySiteDeviceInfo.
        # @type request: :class:`Tencentcloud::cdc::V20201214::ModifySiteDeviceInfoRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::ModifySiteDeviceInfoResponse`
        def ModifySiteDeviceInfo(request)
          body = send_request('ModifySiteDeviceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySiteDeviceInfoResponse.new
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

        # 修改机房信息

        # @param request: Request instance for ModifySiteInfo.
        # @type request: :class:`Tencentcloud::cdc::V20201214::ModifySiteInfoRequest`
        # @rtype: :class:`Tencentcloud::cdc::V20201214::ModifySiteInfoResponse`
        def ModifySiteInfo(request)
          body = send_request('ModifySiteInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySiteInfoResponse.new
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