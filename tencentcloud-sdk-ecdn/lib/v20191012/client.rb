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
  module Ecdn
    module V20191012
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-10-12'
            api_endpoint = 'ecdn.tencentcloudapi.com'
            sdk_version = 'ECDN_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # ECDN平台下线，接口开始预下线处理

        # 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。

        # >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。

        # @param request: Request instance for DescribeDomains.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribeDomainsRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribeDomainsResponse`
        def DescribeDomains(request)
          body = send_request('DescribeDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsResponse.new
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

        # ECDN平台下线，接口开始预下线处理

        # 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。

        # >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41117"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。

        # @param request: Request instance for DescribeDomainsConfig.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribeDomainsConfigRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribeDomainsConfigResponse`
        def DescribeDomainsConfig(request)
          body = send_request('DescribeDomainsConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsConfigResponse.new
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

        # ECDN平台下线，接口开始预下线处理

        # 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。

        # @param request: Request instance for DescribeEcdnDomainLogs.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribeEcdnDomainLogsRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribeEcdnDomainLogsResponse`
        def DescribeEcdnDomainLogs(request)
          body = send_request('DescribeEcdnDomainLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEcdnDomainLogsResponse.new
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

        # ECDN平台下线，接口开始预下线处理

        # 本接口（DescribeEcdnDomainStatistics）用于查询指定时间段内的域名访问统计指标。

        # >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/30986"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。

        # @param request: Request instance for DescribeEcdnDomainStatistics.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribeEcdnDomainStatisticsRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribeEcdnDomainStatisticsResponse`
        def DescribeEcdnDomainStatistics(request)
          body = send_request('DescribeEcdnDomainStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEcdnDomainStatisticsResponse.new
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

        # ECDN平台下线，接口开始预下线处理

        # DescribeEcdnStatistics用于查询 ECDN 实时访问监控数据，支持以下指标查询：

        # + 流量（单位为 byte）
        # + 带宽（单位为 bps）
        # + 请求数（单位为 次）
        # + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
        # + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
        # + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
        # + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）

        # @param request: Request instance for DescribeEcdnStatistics.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribeEcdnStatisticsRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribeEcdnStatisticsResponse`
        def DescribeEcdnStatistics(request)
          body = send_request('DescribeEcdnStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEcdnStatisticsResponse.new
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

        # ECDN平台下线，接口开始预下线处理

        # DescribeIpStatus 用于查询域名所在加速平台的所有节点信息, 如果您的源站有白名单设置,可以通过本接口获取ECDN服务的节点IP进行加白, 本接口为内测接口,请联系腾讯云工程师开白。

        # 由于产品服务节点常有更新，对于源站开白的使用场景，请定期调用接口获取最新节点信息，若新增服务节点发布7日后您尚未更新加白导致回源失败等问题，ECDN侧不对此承担责任。

        # @param request: Request instance for DescribeIpStatus.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribeIpStatusRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribeIpStatusResponse`
        def DescribeIpStatus(request)
          body = send_request('DescribeIpStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpStatusResponse.new
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

        # ECDN即将下线，如需要动态加速请使用EdgeOne

        # DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。

        # >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/37873"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。

        # @param request: Request instance for DescribePurgeTasks.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::DescribePurgeTasksRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::DescribePurgeTasksResponse`
        def DescribePurgeTasks(request)
          body = send_request('DescribePurgeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePurgeTasksResponse.new
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

        # ECDN即将下线，如需要动态加速请使用EdgeOne

        # PurgeUrlsCache 用于批量刷新Url，一次提交将返回一个刷新任务id。

        # >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/37870"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。

        # @param request: Request instance for PurgeUrlsCache.
        # @type request: :class:`Tencentcloud::ecdn::V20191012::PurgeUrlsCacheRequest`
        # @rtype: :class:`Tencentcloud::ecdn::V20191012::PurgeUrlsCacheResponse`
        def PurgeUrlsCache(request)
          body = send_request('PurgeUrlsCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PurgeUrlsCacheResponse.new
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