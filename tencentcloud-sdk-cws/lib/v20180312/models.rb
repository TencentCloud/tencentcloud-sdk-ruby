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

module TencentCloud
  module Cws
    module V20180312
      # CreateMonitors请求参数结构体
      class CreateMonitorsRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 站点的url列表
        # @type Urls: Array
        # @param Name: 任务名称
        # @type Name: String
        # @param ScannerType: 扫描模式，normal-正常扫描；deep-深度扫描
        # @type ScannerType: String
        # @param Crontab: 扫描周期，单位小时，每X小时执行一次
        # @type Crontab: Integer
        # @param RateLimit: 扫描速率限制，每秒发送X个HTTP请求
        # @type RateLimit: Integer
        # @param FirstScanStartTime: 首次扫描开始时间
        # @type FirstScanStartTime: String

        attr_accessor :Urls, :Name, :ScannerType, :Crontab, :RateLimit, :FirstScanStartTime
        
        def initialize(urls=nil, name=nil, scannertype=nil, crontab=nil, ratelimit=nil, firstscanstarttime=nil)
          @Urls = urls
          @Name = name
          @ScannerType = scannertype
          @Crontab = crontab
          @RateLimit = ratelimit
          @FirstScanStartTime = firstscanstarttime
        end

        def deserialize(params)
          @Urls = params['Urls']
          @Name = params['Name']
          @ScannerType = params['ScannerType']
          @Crontab = params['Crontab']
          @RateLimit = params['RateLimit']
          @FirstScanStartTime = params['FirstScanStartTime']
        end
      end

      # CreateMonitors返回参数结构体
      class CreateMonitorsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateSites请求参数结构体
      class CreateSitesRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 站点的url列表
        # @type Urls: Array
        # @param UserAgent: 访问网站的客户端标识
        # @type UserAgent: String

        attr_accessor :Urls, :UserAgent
        
        def initialize(urls=nil, useragent=nil)
          @Urls = urls
          @UserAgent = useragent
        end

        def deserialize(params)
          @Urls = params['Urls']
          @UserAgent = params['UserAgent']
        end
      end

      # CreateSites返回参数结构体
      class CreateSitesResponse < TencentCloud::Common::AbstractModel
        # @param Number: 新增站点数。
        # @type Number: Integer
        # @param Sites: 站点数组
        # @type Sites: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Number, :Sites, :RequestId
        
        def initialize(number=nil, sites=nil, requestid=nil)
          @Number = number
          @Sites = sites
          @RequestId = requestid
        end

        def deserialize(params)
          @Number = params['Number']
          @Sites = params['Sites']
          @RequestId = params['RequestId']
        end
      end

      # CreateSitesScans请求参数结构体
      class CreateSitesScansRequest < TencentCloud::Common::AbstractModel
        # @param SiteIds: 站点的ID列表
        # @type SiteIds: Array
        # @param ScannerType: 扫描模式，normal-正常扫描；deep-深度扫描
        # @type ScannerType: String
        # @param RateLimit: 扫描速率限制，每秒发送X个HTTP请求
        # @type RateLimit: Integer

        attr_accessor :SiteIds, :ScannerType, :RateLimit
        
        def initialize(siteids=nil, scannertype=nil, ratelimit=nil)
          @SiteIds = siteids
          @ScannerType = scannertype
          @RateLimit = ratelimit
        end

        def deserialize(params)
          @SiteIds = params['SiteIds']
          @ScannerType = params['ScannerType']
          @RateLimit = params['RateLimit']
        end
      end

      # CreateSitesScans返回参数结构体
      class CreateSitesScansResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateVulsMisinformation请求参数结构体
      class CreateVulsMisinformationRequest < TencentCloud::Common::AbstractModel
        # @param VulIds: 漏洞ID列表
        # @type VulIds: Array

        attr_accessor :VulIds
        
        def initialize(vulids=nil)
          @VulIds = vulids
        end

        def deserialize(params)
          @VulIds = params['VulIds']
        end
      end

      # CreateVulsMisinformation返回参数结构体
      class CreateVulsMisinformationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateVulsReport请求参数结构体
      class CreateVulsReportRequest < TencentCloud::Common::AbstractModel
        # @param SiteId: 站点ID
        # @type SiteId: Integer
        # @param MonitorId: 监控任务ID
        # @type MonitorId: Integer

        attr_accessor :SiteId, :MonitorId
        
        def initialize(siteid=nil, monitorid=nil)
          @SiteId = siteid
          @MonitorId = monitorid
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @MonitorId = params['MonitorId']
        end
      end

      # CreateVulsReport返回参数结构体
      class CreateVulsReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportFileUrl: 报告下载地址
        # @type ReportFileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportFileUrl, :RequestId
        
        def initialize(reportfileurl=nil, requestid=nil)
          @ReportFileUrl = reportfileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportFileUrl = params['ReportFileUrl']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMonitors请求参数结构体
      class DeleteMonitorsRequest < TencentCloud::Common::AbstractModel
        # @param MonitorIds: 监控任务ID列表
        # @type MonitorIds: Array

        attr_accessor :MonitorIds
        
        def initialize(monitorids=nil)
          @MonitorIds = monitorids
        end

        def deserialize(params)
          @MonitorIds = params['MonitorIds']
        end
      end

      # DeleteMonitors返回参数结构体
      class DeleteMonitorsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteSites请求参数结构体
      class DeleteSitesRequest < TencentCloud::Common::AbstractModel
        # @param SiteIds: 站点ID列表
        # @type SiteIds: Array

        attr_accessor :SiteIds
        
        def initialize(siteids=nil)
          @SiteIds = siteids
        end

        def deserialize(params)
          @SiteIds = params['SiteIds']
        end
      end

      # DeleteSites返回参数结构体
      class DeleteSitesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfig请求参数结构体
      class DescribeConfigRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeConfig返回参数结构体
      class DescribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param NoticeLevel: 漏洞告警通知等级，4位分别代表：高危、中危、低危、提示。
        # @type NoticeLevel: String
        # @param Id: 配置ID。
        # @type Id: Integer
        # @param CreatedAt: 记录创建时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 记录更新新建。
        # @type UpdatedAt: String
        # @param Appid: 云用户appid。
        # @type Appid: Integer
        # @param ContentLevel: 内容检测通知等级-1:通知,0-不通知
        # @type ContentLevel: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoticeLevel, :Id, :CreatedAt, :UpdatedAt, :Appid, :ContentLevel, :RequestId
        
        def initialize(noticelevel=nil, id=nil, createdat=nil, updatedat=nil, appid=nil, contentlevel=nil, requestid=nil)
          @NoticeLevel = noticelevel
          @Id = id
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Appid = appid
          @ContentLevel = contentlevel
          @RequestId = requestid
        end

        def deserialize(params)
          @NoticeLevel = params['NoticeLevel']
          @Id = params['Id']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Appid = params['Appid']
          @ContentLevel = params['ContentLevel']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonitors请求参数结构体
      class DescribeMonitorsRequest < TencentCloud::Common::AbstractModel
        # @param MonitorIds: 监控任务ID列表
        # @type MonitorIds: Array
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :MonitorIds, :Filters, :Offset, :Limit
        
        def initialize(monitorids=nil, filters=nil, offset=nil, limit=nil)
          @MonitorIds = monitorids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @MonitorIds = params['MonitorIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMonitors返回参数结构体
      class DescribeMonitorsResponse < TencentCloud::Common::AbstractModel
        # @param Monitors: 监控任务列表。
        # @type Monitors: Array
        # @param TotalCount: 监控任务数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Monitors, :TotalCount, :RequestId
        
        def initialize(monitors=nil, totalcount=nil, requestid=nil)
          @Monitors = monitors
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Monitors = params['Monitors']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSiteQuota请求参数结构体
      class DescribeSiteQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSiteQuota返回参数结构体
      class DescribeSiteQuotaResponse < TencentCloud::Common::AbstractModel
        # @param Total: 已购买的扫描次数。
        # @type Total: Integer
        # @param Used: 已使用的扫描次数。
        # @type Used: Integer
        # @param Available: 剩余可用的扫描次数。
        # @type Available: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Used, :Available, :RequestId
        
        def initialize(total=nil, used=nil, available=nil, requestid=nil)
          @Total = total
          @Used = used
          @Available = available
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Used = params['Used']
          @Available = params['Available']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSites请求参数结构体
      class DescribeSitesRequest < TencentCloud::Common::AbstractModel
        # @param SiteIds: 站点ID列表
        # @type SiteIds: Array
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :SiteIds, :Filters, :Offset, :Limit
        
        def initialize(siteids=nil, filters=nil, offset=nil, limit=nil)
          @SiteIds = siteids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SiteIds = params['SiteIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSites返回参数结构体
      class DescribeSitesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 站点数量。
        # @type TotalCount: Integer
        # @param Sites: 站点信息列表。
        # @type Sites: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Sites, :RequestId
        
        def initialize(totalcount=nil, sites=nil, requestid=nil)
          @TotalCount = totalcount
          @Sites = sites
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Sites = params['Sites']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSitesVerification请求参数结构体
      class DescribeSitesVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 站点的url列表
        # @type Urls: Array

        attr_accessor :Urls
        
        def initialize(urls=nil)
          @Urls = urls
        end

        def deserialize(params)
          @Urls = params['Urls']
        end
      end

      # DescribeSitesVerification返回参数结构体
      class DescribeSitesVerificationResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 验证信息数量。
        # @type TotalCount: Integer
        # @param SitesVerification: 验证信息列表。
        # @type SitesVerification: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SitesVerification, :RequestId
        
        def initialize(totalcount=nil, sitesverification=nil, requestid=nil)
          @TotalCount = totalcount
          @SitesVerification = sitesverification
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SitesVerification = params['SitesVerification']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulsNumber请求参数结构体
      class DescribeVulsNumberRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVulsNumber返回参数结构体
      class DescribeVulsNumberResponse < TencentCloud::Common::AbstractModel
        # @param ImpactSiteNumber: 受影响的网站总数。
        # @type ImpactSiteNumber: Integer
        # @param SiteNumber: 已验证的网站总数。
        # @type SiteNumber: Integer
        # @param VulsHighNumber: 高风险漏洞总数。
        # @type VulsHighNumber: Integer
        # @param VulsMiddleNumber: 中风险漏洞总数。
        # @type VulsMiddleNumber: Integer
        # @param VulsLowNumber: 低高风险漏洞总数。
        # @type VulsLowNumber: Integer
        # @param VulsNoticeNumber: 风险提示总数。
        # @type VulsNoticeNumber: Integer
        # @param PageCount: 扫描页面总数。
        # @type PageCount: Integer
        # @param Sites: 已验证的网站列表。
        # @type Sites: Array
        # @param ImpactSites: 受影响的网站列表。
        # @type ImpactSites: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImpactSiteNumber, :SiteNumber, :VulsHighNumber, :VulsMiddleNumber, :VulsLowNumber, :VulsNoticeNumber, :PageCount, :Sites, :ImpactSites, :RequestId
        
        def initialize(impactsitenumber=nil, sitenumber=nil, vulshighnumber=nil, vulsmiddlenumber=nil, vulslownumber=nil, vulsnoticenumber=nil, pagecount=nil, sites=nil, impactsites=nil, requestid=nil)
          @ImpactSiteNumber = impactsitenumber
          @SiteNumber = sitenumber
          @VulsHighNumber = vulshighnumber
          @VulsMiddleNumber = vulsmiddlenumber
          @VulsLowNumber = vulslownumber
          @VulsNoticeNumber = vulsnoticenumber
          @PageCount = pagecount
          @Sites = sites
          @ImpactSites = impactsites
          @RequestId = requestid
        end

        def deserialize(params)
          @ImpactSiteNumber = params['ImpactSiteNumber']
          @SiteNumber = params['SiteNumber']
          @VulsHighNumber = params['VulsHighNumber']
          @VulsMiddleNumber = params['VulsMiddleNumber']
          @VulsLowNumber = params['VulsLowNumber']
          @VulsNoticeNumber = params['VulsNoticeNumber']
          @PageCount = params['PageCount']
          @Sites = params['Sites']
          @ImpactSites = params['ImpactSites']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulsNumberTimeline请求参数结构体
      class DescribeVulsNumberTimelineRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVulsNumberTimeline返回参数结构体
      class DescribeVulsNumberTimelineResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 统计数据记录数量。
        # @type TotalCount: Integer
        # @param VulsTimeline: 用户漏洞数随时间变化统计数据。
        # @type VulsTimeline: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VulsTimeline, :RequestId
        
        def initialize(totalcount=nil, vulstimeline=nil, requestid=nil)
          @TotalCount = totalcount
          @VulsTimeline = vulstimeline
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @VulsTimeline = params['VulsTimeline']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVuls请求参数结构体
      class DescribeVulsRequest < TencentCloud::Common::AbstractModel
        # @param SiteId: 站点ID
        # @type SiteId: Integer
        # @param MonitorId: 监控任务ID
        # @type MonitorId: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :SiteId, :MonitorId, :Filters, :Offset, :Limit
        
        def initialize(siteid=nil, monitorid=nil, filters=nil, offset=nil, limit=nil)
          @SiteId = siteid
          @MonitorId = monitorid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @MonitorId = params['MonitorId']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVuls返回参数结构体
      class DescribeVulsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 漏洞数量。
        # @type TotalCount: Integer
        # @param Vuls: 漏洞信息列表。
        # @type Vuls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Vuls, :RequestId
        
        def initialize(totalcount=nil, vuls=nil, requestid=nil)
          @TotalCount = totalcount
          @Vuls = vuls
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Vuls = params['Vuls']
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array

        attr_accessor :Name, :Values
        
        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 站点信息。
      class MiniSite < TencentCloud::Common::AbstractModel
        # @param SiteId: 站点ID。
        # @type SiteId: Integer
        # @param Url: 站点Url。
        # @type Url: String

        attr_accessor :SiteId, :Url
        
        def initialize(siteid=nil, url=nil)
          @SiteId = siteid
          @Url = url
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @Url = params['Url']
        end
      end

      # ModifyConfigAttribute请求参数结构体
      class ModifyConfigAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NoticeLevel: 漏洞告警通知等级，4位分别代表：高危、中危、低危、提示
        # @type NoticeLevel: String

        attr_accessor :NoticeLevel
        
        def initialize(noticelevel=nil)
          @NoticeLevel = noticelevel
        end

        def deserialize(params)
          @NoticeLevel = params['NoticeLevel']
        end
      end

      # ModifyConfigAttribute返回参数结构体
      class ModifyConfigAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyMonitorAttribute请求参数结构体
      class ModifyMonitorAttributeRequest < TencentCloud::Common::AbstractModel
        # @param MonitorId: 监测任务ID
        # @type MonitorId: Integer
        # @param Urls: 站点的url列表
        # @type Urls: Array
        # @param Name: 任务名称
        # @type Name: String
        # @param ScannerType: 扫描模式，normal-正常扫描；deep-深度扫描
        # @type ScannerType: String
        # @param Crontab: 扫描周期，单位小时，每X小时执行一次
        # @type Crontab: Integer
        # @param RateLimit: 扫描速率限制，每秒发送X个HTTP请求
        # @type RateLimit: Integer
        # @param FirstScanStartTime: 首次扫描开始时间
        # @type FirstScanStartTime: String
        # @param MonitorStatus: 监测状态：1-监测中；2-暂停监测
        # @type MonitorStatus: Integer

        attr_accessor :MonitorId, :Urls, :Name, :ScannerType, :Crontab, :RateLimit, :FirstScanStartTime, :MonitorStatus
        
        def initialize(monitorid=nil, urls=nil, name=nil, scannertype=nil, crontab=nil, ratelimit=nil, firstscanstarttime=nil, monitorstatus=nil)
          @MonitorId = monitorid
          @Urls = urls
          @Name = name
          @ScannerType = scannertype
          @Crontab = crontab
          @RateLimit = ratelimit
          @FirstScanStartTime = firstscanstarttime
          @MonitorStatus = monitorstatus
        end

        def deserialize(params)
          @MonitorId = params['MonitorId']
          @Urls = params['Urls']
          @Name = params['Name']
          @ScannerType = params['ScannerType']
          @Crontab = params['Crontab']
          @RateLimit = params['RateLimit']
          @FirstScanStartTime = params['FirstScanStartTime']
          @MonitorStatus = params['MonitorStatus']
        end
      end

      # ModifyMonitorAttribute返回参数结构体
      class ModifyMonitorAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifySiteAttribute请求参数结构体
      class ModifySiteAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SiteId: 站点ID
        # @type SiteId: Integer
        # @param Name: 站点名称
        # @type Name: String
        # @param NeedLogin: 网站是否需要登录扫描：0-未知；-1-不需要；1-需要
        # @type NeedLogin: Integer
        # @param LoginCookie: 登录后的cookie
        # @type LoginCookie: String
        # @param LoginCheckUrl: 用于测试cookie是否有效的URL
        # @type LoginCheckUrl: String
        # @param LoginCheckKw: 用于测试cookie是否有效的关键字
        # @type LoginCheckKw: String
        # @param ScanDisallow: 禁止扫描器扫描的目录关键字
        # @type ScanDisallow: String

        attr_accessor :SiteId, :Name, :NeedLogin, :LoginCookie, :LoginCheckUrl, :LoginCheckKw, :ScanDisallow
        
        def initialize(siteid=nil, name=nil, needlogin=nil, logincookie=nil, logincheckurl=nil, logincheckkw=nil, scandisallow=nil)
          @SiteId = siteid
          @Name = name
          @NeedLogin = needlogin
          @LoginCookie = logincookie
          @LoginCheckUrl = logincheckurl
          @LoginCheckKw = logincheckkw
          @ScanDisallow = scandisallow
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @Name = params['Name']
          @NeedLogin = params['NeedLogin']
          @LoginCookie = params['LoginCookie']
          @LoginCheckUrl = params['LoginCheckUrl']
          @LoginCheckKw = params['LoginCheckKw']
          @ScanDisallow = params['ScanDisallow']
        end
      end

      # ModifySiteAttribute返回参数结构体
      class ModifySiteAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 监控任务基础数据
      class Monitor < TencentCloud::Common::AbstractModel
        # @param Id: 监控任务ID。
        # @type Id: Integer
        # @param Name: 监控名称。
        # @type Name: String
        # @param MonitorStatus: 监测状态：1-监测中；2-暂停监测。
        # @type MonitorStatus: Integer
        # @param ScannerType: 监测模式，normal-正常扫描；deep-深度扫描。
        # @type ScannerType: String
        # @param Crontab: 扫描周期，单位小时，每X小时执行一次。
        # @type Crontab: Integer
        # @param IncludedVulsTypes: 指定扫描类型，3位数每位依次表示：扫描Web漏洞、扫描系统漏洞、扫描系统端口。
        # @type IncludedVulsTypes: String
        # @param RateLimit: 速率限制，每秒发送X个HTTP请求。
        # @type RateLimit: Integer
        # @param FirstScanStartTime: 首次扫描开始时间。
        # @type FirstScanStartTime: String
        # @param ScanStatus: 扫描状态：0-待扫描（无任何扫描结果）；1-扫描中（正在进行扫描）；2-已扫描（有扫描结果且不正在扫描）；3-扫描完成待同步结果。
        # @type ScanStatus: Integer
        # @param LastScanFinishTime: 上一次扫描完成时间。
        # @type LastScanFinishTime: String
        # @param CurrentScanStartTime: 当前扫描开始时间，如扫描完成则为上一次扫描的开始时间。
        # @type CurrentScanStartTime: String
        # @param CreatedAt: CreatedAt。
        # @type CreatedAt: String
        # @param UpdatedAt: UpdatedAt。
        # @type UpdatedAt: String
        # @param Appid: 云用户appid。
        # @type Appid: Integer
        # @param ContentScanStatus: 扫描状态：0-待检测；1-检测完成
        # @type ContentScanStatus: Integer

        attr_accessor :Id, :Name, :MonitorStatus, :ScannerType, :Crontab, :IncludedVulsTypes, :RateLimit, :FirstScanStartTime, :ScanStatus, :LastScanFinishTime, :CurrentScanStartTime, :CreatedAt, :UpdatedAt, :Appid, :ContentScanStatus
        
        def initialize(id=nil, name=nil, monitorstatus=nil, scannertype=nil, crontab=nil, includedvulstypes=nil, ratelimit=nil, firstscanstarttime=nil, scanstatus=nil, lastscanfinishtime=nil, currentscanstarttime=nil, createdat=nil, updatedat=nil, appid=nil, contentscanstatus=nil)
          @Id = id
          @Name = name
          @MonitorStatus = monitorstatus
          @ScannerType = scannertype
          @Crontab = crontab
          @IncludedVulsTypes = includedvulstypes
          @RateLimit = ratelimit
          @FirstScanStartTime = firstscanstarttime
          @ScanStatus = scanstatus
          @LastScanFinishTime = lastscanfinishtime
          @CurrentScanStartTime = currentscanstarttime
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Appid = appid
          @ContentScanStatus = contentscanstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @MonitorStatus = params['MonitorStatus']
          @ScannerType = params['ScannerType']
          @Crontab = params['Crontab']
          @IncludedVulsTypes = params['IncludedVulsTypes']
          @RateLimit = params['RateLimit']
          @FirstScanStartTime = params['FirstScanStartTime']
          @ScanStatus = params['ScanStatus']
          @LastScanFinishTime = params['LastScanFinishTime']
          @CurrentScanStartTime = params['CurrentScanStartTime']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Appid = params['Appid']
          @ContentScanStatus = params['ContentScanStatus']
        end
      end

      # 监控任务中的站点信息。
      class MonitorMiniSite < TencentCloud::Common::AbstractModel
        # @param SiteId: 站点ID。
        # @type SiteId: Integer
        # @param Url: 站点Url。
        # @type Url: String

        attr_accessor :SiteId, :Url
        
        def initialize(siteid=nil, url=nil)
          @SiteId = siteid
          @Url = url
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @Url = params['Url']
        end
      end

      # 监控任务详细数据
      class MonitorsDetail < TencentCloud::Common::AbstractModel
        # @param Basic: 监控任务基础信息。
        # @type Basic: :class:`Tencentcloud::Cws.v20180312.models.Monitor`
        # @param Sites: 监控任务包含的站点列表。
        # @type Sites: Array
        # @param SiteNumber: 监控任务包含的站点列表数量。
        # @type SiteNumber: Integer
        # @param ImpactSites: 监控任务包含的受漏洞威胁的站点列表。
        # @type ImpactSites: Array
        # @param ImpactSiteNumber: 监控任务包含的受漏洞威胁的站点列表数量。
        # @type ImpactSiteNumber: Integer
        # @param VulsHighNumber: 高风险漏洞数量。
        # @type VulsHighNumber: Integer
        # @param VulsMiddleNumber: 中风险漏洞数量。
        # @type VulsMiddleNumber: Integer
        # @param VulsLowNumber: 低风险漏洞数量。
        # @type VulsLowNumber: Integer
        # @param VulsNoticeNumber: 提示数量。
        # @type VulsNoticeNumber: Integer
        # @param Progress: 监控任务包含的站点列表的平均扫描进度。
        # @type Progress: Integer
        # @param PageCount: 扫描页面总数。
        # @type PageCount: Integer
        # @param ContentNumber: 内容检测数量。
        # @type ContentNumber: Integer

        attr_accessor :Basic, :Sites, :SiteNumber, :ImpactSites, :ImpactSiteNumber, :VulsHighNumber, :VulsMiddleNumber, :VulsLowNumber, :VulsNoticeNumber, :Progress, :PageCount, :ContentNumber
        
        def initialize(basic=nil, sites=nil, sitenumber=nil, impactsites=nil, impactsitenumber=nil, vulshighnumber=nil, vulsmiddlenumber=nil, vulslownumber=nil, vulsnoticenumber=nil, progress=nil, pagecount=nil, contentnumber=nil)
          @Basic = basic
          @Sites = sites
          @SiteNumber = sitenumber
          @ImpactSites = impactsites
          @ImpactSiteNumber = impactsitenumber
          @VulsHighNumber = vulshighnumber
          @VulsMiddleNumber = vulsmiddlenumber
          @VulsLowNumber = vulslownumber
          @VulsNoticeNumber = vulsnoticenumber
          @Progress = progress
          @PageCount = pagecount
          @ContentNumber = contentnumber
        end

        def deserialize(params)
          unless params['Basic'].nil?
            @Basic = Monitor.new.deserialize(params[Basic])
          end
          @Sites = params['Sites']
          @SiteNumber = params['SiteNumber']
          @ImpactSites = params['ImpactSites']
          @ImpactSiteNumber = params['ImpactSiteNumber']
          @VulsHighNumber = params['VulsHighNumber']
          @VulsMiddleNumber = params['VulsMiddleNumber']
          @VulsLowNumber = params['VulsLowNumber']
          @VulsNoticeNumber = params['VulsNoticeNumber']
          @Progress = params['Progress']
          @PageCount = params['PageCount']
          @ContentNumber = params['ContentNumber']
        end
      end

      # 站点数据
      class Site < TencentCloud::Common::AbstractModel
        # @param Id: 站点ID。
        # @type Id: Integer
        # @param MonitorId: 监控任务ID，为0时表示未加入监控任务。
        # @type MonitorId: Integer
        # @param Url: 站点url。
        # @type Url: String
        # @param Name: 站点名称。
        # @type Name: String
        # @param VerifyStatus: 验证状态：0-未验证；1-已验证；2-验证失效，待重新验证。
        # @type VerifyStatus: Integer
        # @param MonitorStatus: 监测状态：0-未监测；1-监测中；2-暂停监测。
        # @type MonitorStatus: Integer
        # @param ScanStatus: 扫描状态：0-待扫描（无任何扫描结果）；1-扫描中（正在进行扫描）；2-已扫描（有扫描结果且不正在扫描）；3-扫描完成待同步结果。
        # @type ScanStatus: Integer
        # @param LastScanTaskId: 最近一次的AIScanner的扫描任务id，注意取消的情况。
        # @type LastScanTaskId: Integer
        # @param LastScanStartTime: 最近一次扫描开始时间。
        # @type LastScanStartTime: String
        # @param LastScanFinishTime: 最近一次扫描完成时间。
        # @type LastScanFinishTime: String
        # @param LastScanCancelTime: 最近一次取消时间，取消即使用上一次扫描结果。
        # @type LastScanCancelTime: String
        # @param LastScanPageCount: 最近一次扫描扫描的页面数。
        # @type LastScanPageCount: Integer
        # @param LastScanScannerType: normal-正常扫描；deep-深度扫描。
        # @type LastScanScannerType: String
        # @param LastScanVulsHighNum: 最近一次扫描高风险漏洞数量。
        # @type LastScanVulsHighNum: Integer
        # @param LastScanVulsMiddleNum: 最近一次扫描中风险漏洞数量。
        # @type LastScanVulsMiddleNum: Integer
        # @param LastScanVulsLowNum: 最近一次扫描低风险漏洞数量。
        # @type LastScanVulsLowNum: Integer
        # @param LastScanVulsNoticeNum: 最近一次扫描提示信息数量。
        # @type LastScanVulsNoticeNum: Integer
        # @param CreatedAt: 记录添加时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 记录最近修改时间。
        # @type UpdatedAt: String
        # @param LastScanRateLimit: 速率限制，每秒发送X个HTTP请求。
        # @type LastScanRateLimit: Integer
        # @param LastScanVulsNum: 最近一次扫描漏洞总数量。
        # @type LastScanVulsNum: Integer
        # @param LastScanNoticeNum: 最近一次扫描提示总数量
        # @type LastScanNoticeNum: Integer
        # @param Progress: 扫描进度，百分比整数
        # @type Progress: Integer
        # @param Appid: 云用户appid。
        # @type Appid: Integer
        # @param Uin: 云用户标识。
        # @type Uin: String
        # @param NeedLogin: 网站是否需要登录扫描：0-未知；-1-不需要；1-需要。
        # @type NeedLogin: Integer
        # @param LoginCookie: 登录后的cookie。
        # @type LoginCookie: String
        # @param LoginCookieValid: 登录后的cookie是否有效：0-无效；1-有效。
        # @type LoginCookieValid: Integer
        # @param LoginCheckUrl: 用于测试cookie是否有效的URL。
        # @type LoginCheckUrl: String
        # @param LoginCheckKw: 用于测试cookie是否有效的关键字。
        # @type LoginCheckKw: String
        # @param ScanDisallow: 禁止扫描器扫描的目录关键字。
        # @type ScanDisallow: String
        # @param UserAgent: 访问网站的客户端标识。
        # @type UserAgent: String
        # @param ContentStatus: 内容检测状态：0-未检测；1-已检测；
        # @type ContentStatus: Integer
        # @param LastScanContentNum: 最近一次扫描内容检测数量
        # @type LastScanContentNum: Integer

        attr_accessor :Id, :MonitorId, :Url, :Name, :VerifyStatus, :MonitorStatus, :ScanStatus, :LastScanTaskId, :LastScanStartTime, :LastScanFinishTime, :LastScanCancelTime, :LastScanPageCount, :LastScanScannerType, :LastScanVulsHighNum, :LastScanVulsMiddleNum, :LastScanVulsLowNum, :LastScanVulsNoticeNum, :CreatedAt, :UpdatedAt, :LastScanRateLimit, :LastScanVulsNum, :LastScanNoticeNum, :Progress, :Appid, :Uin, :NeedLogin, :LoginCookie, :LoginCookieValid, :LoginCheckUrl, :LoginCheckKw, :ScanDisallow, :UserAgent, :ContentStatus, :LastScanContentNum
        
        def initialize(id=nil, monitorid=nil, url=nil, name=nil, verifystatus=nil, monitorstatus=nil, scanstatus=nil, lastscantaskid=nil, lastscanstarttime=nil, lastscanfinishtime=nil, lastscancanceltime=nil, lastscanpagecount=nil, lastscanscannertype=nil, lastscanvulshighnum=nil, lastscanvulsmiddlenum=nil, lastscanvulslownum=nil, lastscanvulsnoticenum=nil, createdat=nil, updatedat=nil, lastscanratelimit=nil, lastscanvulsnum=nil, lastscannoticenum=nil, progress=nil, appid=nil, uin=nil, needlogin=nil, logincookie=nil, logincookievalid=nil, logincheckurl=nil, logincheckkw=nil, scandisallow=nil, useragent=nil, contentstatus=nil, lastscancontentnum=nil)
          @Id = id
          @MonitorId = monitorid
          @Url = url
          @Name = name
          @VerifyStatus = verifystatus
          @MonitorStatus = monitorstatus
          @ScanStatus = scanstatus
          @LastScanTaskId = lastscantaskid
          @LastScanStartTime = lastscanstarttime
          @LastScanFinishTime = lastscanfinishtime
          @LastScanCancelTime = lastscancanceltime
          @LastScanPageCount = lastscanpagecount
          @LastScanScannerType = lastscanscannertype
          @LastScanVulsHighNum = lastscanvulshighnum
          @LastScanVulsMiddleNum = lastscanvulsmiddlenum
          @LastScanVulsLowNum = lastscanvulslownum
          @LastScanVulsNoticeNum = lastscanvulsnoticenum
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @LastScanRateLimit = lastscanratelimit
          @LastScanVulsNum = lastscanvulsnum
          @LastScanNoticeNum = lastscannoticenum
          @Progress = progress
          @Appid = appid
          @Uin = uin
          @NeedLogin = needlogin
          @LoginCookie = logincookie
          @LoginCookieValid = logincookievalid
          @LoginCheckUrl = logincheckurl
          @LoginCheckKw = logincheckkw
          @ScanDisallow = scandisallow
          @UserAgent = useragent
          @ContentStatus = contentstatus
          @LastScanContentNum = lastscancontentnum
        end

        def deserialize(params)
          @Id = params['Id']
          @MonitorId = params['MonitorId']
          @Url = params['Url']
          @Name = params['Name']
          @VerifyStatus = params['VerifyStatus']
          @MonitorStatus = params['MonitorStatus']
          @ScanStatus = params['ScanStatus']
          @LastScanTaskId = params['LastScanTaskId']
          @LastScanStartTime = params['LastScanStartTime']
          @LastScanFinishTime = params['LastScanFinishTime']
          @LastScanCancelTime = params['LastScanCancelTime']
          @LastScanPageCount = params['LastScanPageCount']
          @LastScanScannerType = params['LastScanScannerType']
          @LastScanVulsHighNum = params['LastScanVulsHighNum']
          @LastScanVulsMiddleNum = params['LastScanVulsMiddleNum']
          @LastScanVulsLowNum = params['LastScanVulsLowNum']
          @LastScanVulsNoticeNum = params['LastScanVulsNoticeNum']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @LastScanRateLimit = params['LastScanRateLimit']
          @LastScanVulsNum = params['LastScanVulsNum']
          @LastScanNoticeNum = params['LastScanNoticeNum']
          @Progress = params['Progress']
          @Appid = params['Appid']
          @Uin = params['Uin']
          @NeedLogin = params['NeedLogin']
          @LoginCookie = params['LoginCookie']
          @LoginCookieValid = params['LoginCookieValid']
          @LoginCheckUrl = params['LoginCheckUrl']
          @LoginCheckKw = params['LoginCheckKw']
          @ScanDisallow = params['ScanDisallow']
          @UserAgent = params['UserAgent']
          @ContentStatus = params['ContentStatus']
          @LastScanContentNum = params['LastScanContentNum']
        end
      end

      # 站点验证数据
      class SitesVerification < TencentCloud::Common::AbstractModel
        # @param Domain: 根域名。
        # @type Domain: String
        # @param TxtName: txt解析域名验证的name。
        # @type TxtName: String
        # @param TxtText: txt解析域名验证的text。
        # @type TxtText: String
        # @param ValidTo: 验证有效期，在此之前有效。
        # @type ValidTo: String
        # @param VerifyStatus: 验证状态：0-未验证；1-已验证；2-验证失效，待重新验证。
        # @type VerifyStatus: Integer
        # @param CreatedAt: CreatedAt。
        # @type CreatedAt: String
        # @param UpdatedAt: UpdatedAt。
        # @type UpdatedAt: String
        # @param Id: ID。
        # @type Id: Integer
        # @param Appid: 云用户appid
        # @type Appid: Integer
        # @param VerifyUrl: 用于验证站点的url，即访问该url获取验证数据。
        # @type VerifyUrl: String
        # @param VerifyFileUrl: 获取验证验证文件的url。
        # @type VerifyFileUrl: String

        attr_accessor :Domain, :TxtName, :TxtText, :ValidTo, :VerifyStatus, :CreatedAt, :UpdatedAt, :Id, :Appid, :VerifyUrl, :VerifyFileUrl
        
        def initialize(domain=nil, txtname=nil, txttext=nil, validto=nil, verifystatus=nil, createdat=nil, updatedat=nil, id=nil, appid=nil, verifyurl=nil, verifyfileurl=nil)
          @Domain = domain
          @TxtName = txtname
          @TxtText = txttext
          @ValidTo = validto
          @VerifyStatus = verifystatus
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Id = id
          @Appid = appid
          @VerifyUrl = verifyurl
          @VerifyFileUrl = verifyfileurl
        end

        def deserialize(params)
          @Domain = params['Domain']
          @TxtName = params['TxtName']
          @TxtText = params['TxtText']
          @ValidTo = params['ValidTo']
          @VerifyStatus = params['VerifyStatus']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Id = params['Id']
          @Appid = params['Appid']
          @VerifyUrl = params['VerifyUrl']
          @VerifyFileUrl = params['VerifyFileUrl']
        end
      end

      # VerifySites请求参数结构体
      class VerifySitesRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 站点的url列表
        # @type Urls: Array

        attr_accessor :Urls
        
        def initialize(urls=nil)
          @Urls = urls
        end

        def deserialize(params)
          @Urls = params['Urls']
        end
      end

      # VerifySites返回参数结构体
      class VerifySitesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessNumber: 验证成功的根域名数量。
        # @type SuccessNumber: Integer
        # @param FailNumber: 验证失败的根域名数量。
        # @type FailNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessNumber, :FailNumber, :RequestId
        
        def initialize(successnumber=nil, failnumber=nil, requestid=nil)
          @SuccessNumber = successnumber
          @FailNumber = failnumber
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessNumber = params['SuccessNumber']
          @FailNumber = params['FailNumber']
          @RequestId = params['RequestId']
        end
      end

      # 漏洞数据
      class Vul < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞ID。
        # @type Id: Integer
        # @param SiteId: 站点ID。
        # @type SiteId: Integer
        # @param TaskId: 扫描引擎的扫描任务ID。
        # @type TaskId: Integer
        # @param Level: 漏洞级别：high、middle、low、notice。
        # @type Level: String
        # @param Name: 漏洞名称。
        # @type Name: String
        # @param Url: 出现漏洞的url。
        # @type Url: String
        # @param Html: 网址/细节。
        # @type Html: String
        # @param Nickname: 漏洞类型。
        # @type Nickname: String
        # @param Harm: 危害说明。
        # @type Harm: String
        # @param Describe: 漏洞描述。
        # @type Describe: String
        # @param Solution: 解决方案。
        # @type Solution: String
        # @param From: 漏洞参考。
        # @type From: String
        # @param Parameter: 漏洞通过该参数攻击。
        # @type Parameter: String
        # @param CreatedAt: CreatedAt。
        # @type CreatedAt: String
        # @param UpdatedAt: UpdatedAt。
        # @type UpdatedAt: String
        # @param IsReported: 是否已经添加误报，0-否，1-是。
        # @type IsReported: Integer
        # @param Appid: 云用户appid。
        # @type Appid: Integer
        # @param Uin: 云用户标识。
        # @type Uin: String

        attr_accessor :Id, :SiteId, :TaskId, :Level, :Name, :Url, :Html, :Nickname, :Harm, :Describe, :Solution, :From, :Parameter, :CreatedAt, :UpdatedAt, :IsReported, :Appid, :Uin
        
        def initialize(id=nil, siteid=nil, taskid=nil, level=nil, name=nil, url=nil, html=nil, nickname=nil, harm=nil, describe=nil, solution=nil, from=nil, parameter=nil, createdat=nil, updatedat=nil, isreported=nil, appid=nil, uin=nil)
          @Id = id
          @SiteId = siteid
          @TaskId = taskid
          @Level = level
          @Name = name
          @Url = url
          @Html = html
          @Nickname = nickname
          @Harm = harm
          @Describe = describe
          @Solution = solution
          @From = from
          @Parameter = parameter
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @IsReported = isreported
          @Appid = appid
          @Uin = uin
        end

        def deserialize(params)
          @Id = params['Id']
          @SiteId = params['SiteId']
          @TaskId = params['TaskId']
          @Level = params['Level']
          @Name = params['Name']
          @Url = params['Url']
          @Html = params['Html']
          @Nickname = params['Nickname']
          @Harm = params['Harm']
          @Describe = params['Describe']
          @Solution = params['Solution']
          @From = params['From']
          @Parameter = params['Parameter']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @IsReported = params['IsReported']
          @Appid = params['Appid']
          @Uin = params['Uin']
        end
      end

      # 用户漏洞数随时间变化统计数据
      class VulsTimeline < TencentCloud::Common::AbstractModel
        # @param Id: ID。
        # @type Id: Integer
        # @param Appid: 云用户appid。
        # @type Appid: Integer
        # @param Date: 日期。
        # @type Date: String
        # @param PageCount: 扫描页面总数量。
        # @type PageCount: Integer
        # @param SiteNum: 已验证网站总数量。
        # @type SiteNum: Integer
        # @param ImpactSiteNum: 受影响的网站总数量。
        # @type ImpactSiteNum: Integer
        # @param VulsHighNum: 高危漏洞总数量。
        # @type VulsHighNum: Integer
        # @param VulsMiddleNum: 中危漏洞总数量。
        # @type VulsMiddleNum: Integer
        # @param VulsLowNum: 低危漏洞总数量。
        # @type VulsLowNum: Integer
        # @param VulsNoticeNum: 风险提示总数量
        # @type VulsNoticeNum: Integer
        # @param CreatedAt: 记录添加时间。
        # @type CreatedAt: String
        # @param UpdatedAt: 记录最近修改时间。
        # @type UpdatedAt: String

        attr_accessor :Id, :Appid, :Date, :PageCount, :SiteNum, :ImpactSiteNum, :VulsHighNum, :VulsMiddleNum, :VulsLowNum, :VulsNoticeNum, :CreatedAt, :UpdatedAt
        
        def initialize(id=nil, appid=nil, date=nil, pagecount=nil, sitenum=nil, impactsitenum=nil, vulshighnum=nil, vulsmiddlenum=nil, vulslownum=nil, vulsnoticenum=nil, createdat=nil, updatedat=nil)
          @Id = id
          @Appid = appid
          @Date = date
          @PageCount = pagecount
          @SiteNum = sitenum
          @ImpactSiteNum = impactsitenum
          @VulsHighNum = vulshighnum
          @VulsMiddleNum = vulsmiddlenum
          @VulsLowNum = vulslownum
          @VulsNoticeNum = vulsnoticenum
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Id = params['Id']
          @Appid = params['Appid']
          @Date = params['Date']
          @PageCount = params['PageCount']
          @SiteNum = params['SiteNum']
          @ImpactSiteNum = params['ImpactSiteNum']
          @VulsHighNum = params['VulsHighNum']
          @VulsMiddleNum = params['VulsMiddleNum']
          @VulsLowNum = params['VulsLowNum']
          @VulsNoticeNum = params['VulsNoticeNum']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

    end
  end
end

