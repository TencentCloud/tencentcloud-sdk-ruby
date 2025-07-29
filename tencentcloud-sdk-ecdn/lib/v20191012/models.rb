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

module TencentCloud
  module Ecdn
    module V20191012
      # 回源的自定义Https配置
      class AdvanceHttps < TencentCloud::Common::AbstractModel
        # @param CustomTlsStatus: 自定义Tls数据开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomTlsStatus: String
        # @param TlsVersion: Tls版本列表，支持设置 TLSv1, TLSV1.1, TLSV1.2, TLSv1.3，修改时必须开启连续的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TlsVersion: Array
        # @param Cipher: 自定义加密套件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cipher: String
        # @param VerifyOriginType: 回源双向校验开启状态
        # off - 关闭校验
        # oneWay - 校验源站
        # twoWay - 双向校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyOriginType: String
        # @param CertInfo: 回源层证书配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: :class:`Tencentcloud::Ecdn.v20191012.models.ServerCert`
        # @param OriginCertInfo: 源站证书配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginCertInfo: :class:`Tencentcloud::Ecdn.v20191012.models.ClientCert`

        attr_accessor :CustomTlsStatus, :TlsVersion, :Cipher, :VerifyOriginType, :CertInfo, :OriginCertInfo

        def initialize(customtlsstatus=nil, tlsversion=nil, cipher=nil, verifyorigintype=nil, certinfo=nil, origincertinfo=nil)
          @CustomTlsStatus = customtlsstatus
          @TlsVersion = tlsversion
          @Cipher = cipher
          @VerifyOriginType = verifyorigintype
          @CertInfo = certinfo
          @OriginCertInfo = origincertinfo
        end

        def deserialize(params)
          @CustomTlsStatus = params['CustomTlsStatus']
          @TlsVersion = params['TlsVersion']
          @Cipher = params['Cipher']
          @VerifyOriginType = params['VerifyOriginType']
          unless params['CertInfo'].nil?
            @CertInfo = ServerCert.new
            @CertInfo.deserialize(params['CertInfo'])
          end
          unless params['OriginCertInfo'].nil?
            @OriginCertInfo = ClientCert.new
            @OriginCertInfo.deserialize(params['OriginCertInfo'])
          end
        end
      end

      # 缓存配置简单版本，该版本不支持设置源站未返回max-age情况下的缓存规则。
      class Cache < TencentCloud::Common::AbstractModel
        # @param CacheRules: 缓存配置规则数组。
        # @type CacheRules: Array
        # @param FollowOrigin: 遵循源站 Cache-Control: max-age 配置，白名单功能。
        # on：开启
        # off：关闭
        # 开启后，未能匹配 CacheRules 规则的资源将根据源站返回的 max-age 值进行节点缓存；匹配了 CacheRules 规则的资源将按照 CacheRules 中设置的缓存过期时间在节点进行缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: String

        attr_accessor :CacheRules, :FollowOrigin

        def initialize(cacherules=nil, followorigin=nil)
          @CacheRules = cacherules
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          unless params['CacheRules'].nil?
            @CacheRules = []
            params['CacheRules'].each do |i|
              cacherule_tmp = CacheRule.new
              cacherule_tmp.deserialize(i)
              @CacheRules << cacherule_tmp
            end
          end
          @FollowOrigin = params['FollowOrigin']
        end
      end

      # 缓存相关配置。
      class CacheKey < TencentCloud::Common::AbstractModel
        # @param FullUrlCache: 是否开启全路径缓存，on或off。
        # @type FullUrlCache: String

        attr_accessor :FullUrlCache

        def initialize(fullurlcache=nil)
          @FullUrlCache = fullurlcache
        end

        def deserialize(params)
          @FullUrlCache = params['FullUrlCache']
        end
      end

      # 缓存配置规则。
      class CacheRule < TencentCloud::Common::AbstractModel
        # @param CacheType: 缓存类型，支持all，file，directory，path，index，分别表示全部文件，后缀类型，目录，完整路径，首页。
        # @type CacheType: String
        # @param CacheContents: 缓存内容列表。
        # @type CacheContents: Array
        # @param CacheTime: 缓存时间，单位秒。
        # @type CacheTime: Integer

        attr_accessor :CacheType, :CacheContents, :CacheTime

        def initialize(cachetype=nil, cachecontents=nil, cachetime=nil)
          @CacheType = cachetype
          @CacheContents = cachecontents
          @CacheTime = cachetime
        end

        def deserialize(params)
          @CacheType = params['CacheType']
          @CacheContents = params['CacheContents']
          @CacheTime = params['CacheTime']
        end
      end

      # https客户端证书配置。
      class ClientCert < TencentCloud::Common::AbstractModel
        # @param Certificate: 客户端证书，pem格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: String
        # @param CertName: 客户端证书名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertName: String
        # @param ExpireTime: 证书过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书颁发时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployTime: String

        attr_accessor :Certificate, :CertName, :ExpireTime, :DeployTime

        def initialize(certificate=nil, certname=nil, expiretime=nil, deploytime=nil)
          @Certificate = certificate
          @CertName = certname
          @ExpireTime = expiretime
          @DeployTime = deploytime
        end

        def deserialize(params)
          @Certificate = params['Certificate']
          @CertName = params['CertName']
          @ExpireTime = params['ExpireTime']
          @DeployTime = params['DeployTime']
        end
      end

      # DescribeDomainsConfig请求参数结构体
      class DescribeDomainsConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询的偏移地址，默认0。
        # @type Offset: Integer
        # @param Limit: 分页查询的域名个数，默认100。
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器。
        # @type Filters: Array
        # @param Sort: 查询结果排序规则。
        # @type Sort: :class:`Tencentcloud::Ecdn.v20191012.models.Sort`

        attr_accessor :Offset, :Limit, :Filters, :Sort

        def initialize(offset=nil, limit=nil, filters=nil, sort=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Sort = sort
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              domainfilter_tmp = DomainFilter.new
              domainfilter_tmp.deserialize(i)
              @Filters << domainfilter_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribeDomainsConfig返回参数结构体
      class DescribeDomainsConfigResponse < TencentCloud::Common::AbstractModel
        # @param Domains: 域名列表。
        # @type Domains: Array
        # @param TotalCount: 符合查询条件的域名总数，用于分页查询。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :TotalCount, :RequestId

        def initialize(domains=nil, totalcount=nil, requestid=nil)
          @Domains = domains
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              domaindetailinfo_tmp = DomainDetailInfo.new
              domaindetailinfo_tmp.deserialize(i)
              @Domains << domaindetailinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomains请求参数结构体
      class DescribeDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询的偏移地址，默认0。
        # @type Offset: Integer
        # @param Limit: 分页查询的域名个数，默认100，最大支持1000。
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              domainfilter_tmp = DomainFilter.new
              domainfilter_tmp.deserialize(i)
              @Filters << domainfilter_tmp
            end
          end
        end
      end

      # DescribeDomains返回参数结构体
      class DescribeDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Domains: 域名信息列表。
        # @type Domains: Array
        # @param TotalCount: 域名总个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :TotalCount, :RequestId

        def initialize(domains=nil, totalcount=nil, requestid=nil)
          @Domains = domains
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              domainbriefinfo_tmp = DomainBriefInfo.new
              domainbriefinfo_tmp.deserialize(i)
              @Domains << domainbriefinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEcdnDomainLogs请求参数结构体
      class DescribeEcdnDomainLogsRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 待查询域名。
        # @type Domain: String
        # @param StartTime: 日志起始时间。如：2019-10-01 00:00:00
        # @type StartTime: String
        # @param EndTime: 日志结束时间，只支持最近30天内日志查询。2019-10-02 00:00:00
        # @type EndTime: String
        # @param Offset: 日志链接列表分页起始地址，默认0。
        # @type Offset: Integer
        # @param Limit: 日志链接列表分页记录条数，默认100，最大1000。
        # @type Limit: Integer

        attr_accessor :Domain, :StartTime, :EndTime, :Offset, :Limit

        def initialize(domain=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @Domain = domain
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeEcdnDomainLogs返回参数结构体
      class DescribeEcdnDomainLogsResponse < TencentCloud::Common::AbstractModel
        # @param DomainLogs: 日志链接列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainLogs: Array
        # @param TotalCount: 日志链接总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainLogs, :TotalCount, :RequestId

        def initialize(domainlogs=nil, totalcount=nil, requestid=nil)
          @DomainLogs = domainlogs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainLogs'].nil?
            @DomainLogs = []
            params['DomainLogs'].each do |i|
              domainlogs_tmp = DomainLogs.new
              domainlogs_tmp.deserialize(i)
              @DomainLogs << domainlogs_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEcdnDomainStatistics请求参数结构体
      class DescribeEcdnDomainStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2019-12-13 00:00:00。
        # 起止时间不超过90天。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2019-12-13 23:59:59。
        # 起止时间不超过90天。
        # @type EndTime: String
        # @param Metrics: 统计指标名称:
        # flux：流量，单位为 byte
        # bandwidth：带宽，单位为 bps
        # request：请求数，单位为 次
        # @type Metrics: Array
        # @param Domains: 指定查询域名列表
        # @type Domains: Array
        # @param Projects: 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        # @type Projects: Array
        # @param Offset: 列表分页起始地址，默认0。
        # @type Offset: Integer
        # @param Limit: 列表分页记录条数，默认1000，最大3000。
        # @type Limit: Integer
        # @param Area: 统计区域:
        # mainland: 境内
        # oversea: 境外
        # global: 全部
        # 默认 global
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :Metrics, :Domains, :Projects, :Offset, :Limit, :Area

        def initialize(starttime=nil, endtime=nil, metrics=nil, domains=nil, projects=nil, offset=nil, limit=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Metrics = metrics
          @Domains = domains
          @Projects = projects
          @Offset = offset
          @Limit = limit
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metrics = params['Metrics']
          @Domains = params['Domains']
          @Projects = params['Projects']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Area = params['Area']
        end
      end

      # DescribeEcdnDomainStatistics返回参数结构体
      class DescribeEcdnDomainStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 域名数据
        # @type Data: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domaindata_tmp = DomainData.new
              domaindata_tmp.deserialize(i)
              @Data << domaindata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEcdnStatistics请求参数结构体
      class DescribeEcdnStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2019-12-13 00:00:00
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2019-12-13 23:59:59
        # @type EndTime: String
        # @param Metrics: 指定查询指标，支持的类型有：
        # flux：流量，单位为 byte
        # bandwidth：带宽，单位为 bps
        # request：请求数，单位为 次
        # 2xx：返回 2xx 状态码汇总或者 2 开头状态码数据，单位为 个
        # 3xx：返回 3xx 状态码汇总或者 3 开头状态码数据，单位为 个
        # 4xx：返回 4xx 状态码汇总或者 4 开头状态码数据，单位为 个
        # 5xx：返回 5xx 状态码汇总或者 5 开头状态码数据，单位为 个
        # @type Metrics: Array
        # @param Interval: 时间粒度，支持以下几种模式：
        # 1 天	 1，5，15，30，60，120，240，1440
        # 2 ~ 3 天	15，30，60，120，240，1440
        # 4 ~ 7 天	30，60，120，240，1440
        # 8 ~ 31 天	 60，120，240，1440
        # @type Interval: Integer
        # @param Domains: 指定查询域名列表

        # 最多可一次性查询30个加速域名。
        # @type Domains: Array
        # @param Projects: 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        # @type Projects: Array
        # @param Area: 统计区域:
        # mainland: 境内
        # oversea: 境外
        # global: 全部
        # 默认 global
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :Metrics, :Interval, :Domains, :Projects, :Area

        def initialize(starttime=nil, endtime=nil, metrics=nil, interval=nil, domains=nil, projects=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Metrics = metrics
          @Interval = interval
          @Domains = domains
          @Projects = projects
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metrics = params['Metrics']
          @Interval = params['Interval']
          @Domains = params['Domains']
          @Projects = params['Projects']
          @Area = params['Area']
        end
      end

      # DescribeEcdnStatistics返回参数结构体
      class DescribeEcdnStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 指定条件查询得到的数据明细
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resourcedata_tmp = ResourceData.new
              resourcedata_tmp.deserialize(i)
              @Data << resourcedata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpStatus请求参数结构体
      class DescribeIpStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 加速域名
        # @type Domain: String
        # @param Area: 查询区域：
        # mainland: 国内节点
        # overseas: 海外节点
        # global: 全球节点
        # @type Area: String

        attr_accessor :Domain, :Area

        def initialize(domain=nil, area=nil)
          @Domain = domain
          @Area = area
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Area = params['Area']
        end
      end

      # DescribeIpStatus返回参数结构体
      class DescribeIpStatusResponse < TencentCloud::Common::AbstractModel
        # @param Ips: 节点列表
        # @type Ips: Array
        # @param TotalCount: 节点总个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ips, :TotalCount, :RequestId

        def initialize(ips=nil, totalcount=nil, requestid=nil)
          @Ips = ips
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ips'].nil?
            @Ips = []
            params['Ips'].each do |i|
              ipstatus_tmp = IpStatus.new
              ipstatus_tmp.deserialize(i)
              @Ips << ipstatus_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 排序类型的数据结构
      class DetailData < TencentCloud::Common::AbstractModel
        # @param Name: 数据类型的名称
        # @type Name: String
        # @param Value: 数据值
        # @type Value: Float

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # CDN域名简要信息。
      class DomainBriefInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 域名ID。
        # @type ResourceId: String
        # @param AppId: 腾讯云账号ID。
        # @type AppId: Integer
        # @param Domain: CDN加速域名。
        # @type Domain: String
        # @param Cname: 域名CName。
        # @type Cname: String
        # @param Status: 域名状态，pending，rejected，processing， online，offline，deleted分别表示审核中，审核未通过，审核通过部署中，已开启，已关闭，已删除。
        # @type Status: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param CreateTime: 域名创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 域名更新时间。
        # @type UpdateTime: String
        # @param Origin: 源站配置详情。
        # @type Origin: :class:`Tencentcloud::Ecdn.v20191012.models.Origin`
        # @param Disable: 域名封禁状态，normal，overdue，quota，malicious，ddos，idle，unlicensed，capping，readonly分别表示 正常，欠费停服，试用客户流量包耗尽，恶意用户，ddos攻击，无流量域名，未备案，带宽封顶，只读
        # @type Disable: String
        # @param Area: 加速区域，mainland，oversea或global。
        # @type Area: String
        # @param Readonly: 域名锁定状态，normal、global，分别表示未被锁定、全球锁定。
        # @type Readonly: String
        # @param Tag: 域名标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array

        attr_accessor :ResourceId, :AppId, :Domain, :Cname, :Status, :ProjectId, :CreateTime, :UpdateTime, :Origin, :Disable, :Area, :Readonly, :Tag

        def initialize(resourceid=nil, appid=nil, domain=nil, cname=nil, status=nil, projectid=nil, createtime=nil, updatetime=nil, origin=nil, disable=nil, area=nil, readonly=nil, tag=nil)
          @ResourceId = resourceid
          @AppId = appid
          @Domain = domain
          @Cname = cname
          @Status = status
          @ProjectId = projectid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Origin = origin
          @Disable = disable
          @Area = area
          @Readonly = readonly
          @Tag = tag
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppId = params['AppId']
          @Domain = params['Domain']
          @Cname = params['Cname']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          @Disable = params['Disable']
          @Area = params['Area']
          @Readonly = params['Readonly']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
        end
      end

      # 排序类型数据结构
      class DomainData < TencentCloud::Common::AbstractModel
        # @param Resource: 域名
        # @type Resource: String
        # @param DetailData: 结果详情
        # @type DetailData: Array

        attr_accessor :Resource, :DetailData

        def initialize(resource=nil, detaildata=nil)
          @Resource = resource
          @DetailData = detaildata
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['DetailData'].nil?
            @DetailData = []
            params['DetailData'].each do |i|
              detaildata_tmp = DetailData.new
              detaildata_tmp.deserialize(i)
              @DetailData << detaildata_tmp
            end
          end
        end
      end

      # ECDN域名详细配置信息。
      class DomainDetailInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 域名ID。
        # @type ResourceId: String
        # @param AppId: 腾讯云账号ID。
        # @type AppId: Integer
        # @param Domain: 加速域名。
        # @type Domain: String
        # @param Cname: 域名CName。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Status: 域名状态，pending，rejected，processing， online，offline，deleted分别表示审核中，审核未通过，审核通过部署中，已开启，已关闭，已删除。
        # @type Status: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param CreateTime: 域名创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 域名更新时间。
        # @type UpdateTime: String
        # @param Origin: 源站配置。
        # @type Origin: :class:`Tencentcloud::Ecdn.v20191012.models.Origin`
        # @param IpFilter: IP黑白名单配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFilter: :class:`Tencentcloud::Ecdn.v20191012.models.IpFilter`
        # @param IpFreqLimit: IP限频配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFreqLimit: :class:`Tencentcloud::Ecdn.v20191012.models.IpFreqLimit`
        # @param ResponseHeader: 源站响应头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeader: :class:`Tencentcloud::Ecdn.v20191012.models.ResponseHeader`
        # @param CacheKey: 节点缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Ecdn.v20191012.models.CacheKey`
        # @param Cache: 缓存规则配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Ecdn.v20191012.models.Cache`
        # @param Https: Https配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Ecdn.v20191012.models.Https`
        # @param Disable: 域名封禁状态，normal，overdue，quota，malicious，ddos，idle，unlicensed，capping，readonly分别表示 正常，欠费停服，试用客户流量包耗尽，恶意用户，ddos攻击，无流量域名，未备案，带宽封顶，只读。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disable: String
        # @param ForceRedirect: 访问协议强制跳转配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Ecdn.v20191012.models.ForceRedirect`
        # @param Area: 加速区域，mainland，overseas或global。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param Readonly: 域名锁定状态，normal、global 分别表示未被锁定，全球锁定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Readonly: String
        # @param Tag: 域名标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param WebSocket: WebSocket配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Ecdn.v20191012.models.WebSocket`

        attr_accessor :ResourceId, :AppId, :Domain, :Cname, :Status, :ProjectId, :CreateTime, :UpdateTime, :Origin, :IpFilter, :IpFreqLimit, :ResponseHeader, :CacheKey, :Cache, :Https, :Disable, :ForceRedirect, :Area, :Readonly, :Tag, :WebSocket

        def initialize(resourceid=nil, appid=nil, domain=nil, cname=nil, status=nil, projectid=nil, createtime=nil, updatetime=nil, origin=nil, ipfilter=nil, ipfreqlimit=nil, responseheader=nil, cachekey=nil, cache=nil, https=nil, disable=nil, forceredirect=nil, area=nil, readonly=nil, tag=nil, websocket=nil)
          @ResourceId = resourceid
          @AppId = appid
          @Domain = domain
          @Cname = cname
          @Status = status
          @ProjectId = projectid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Origin = origin
          @IpFilter = ipfilter
          @IpFreqLimit = ipfreqlimit
          @ResponseHeader = responseheader
          @CacheKey = cachekey
          @Cache = cache
          @Https = https
          @Disable = disable
          @ForceRedirect = forceredirect
          @Area = area
          @Readonly = readonly
          @Tag = tag
          @WebSocket = websocket
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppId = params['AppId']
          @Domain = params['Domain']
          @Cname = params['Cname']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['IpFilter'].nil?
            @IpFilter = IpFilter.new
            @IpFilter.deserialize(params['IpFilter'])
          end
          unless params['IpFreqLimit'].nil?
            @IpFreqLimit = IpFreqLimit.new
            @IpFreqLimit.deserialize(params['IpFreqLimit'])
          end
          unless params['ResponseHeader'].nil?
            @ResponseHeader = ResponseHeader.new
            @ResponseHeader.deserialize(params['ResponseHeader'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          @Disable = params['Disable']
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          @Area = params['Area']
          @Readonly = params['Readonly']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
        end
      end

      # 域名查询时过滤条件。
      class DomainFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # - origin：主源站。
        # - domain：域名。
        # - resourceId：域名id。
        # - status：域名状态，online，offline，processing。
        # - disable：域名封禁状态，normal，unlicensed。
        # - projectId：项目ID。
        # - fullUrlCache：全路径缓存，on或off。
        # - https：是否配置https，on，off或processing。
        # - originPullProtocol：回源协议类型，支持http，follow或https。
        # - area：加速区域，支持mainland，overseas或global。
        # - tagKey：标签键。
        # @type Name: String
        # @param Value: 过滤字段值。
        # @type Value: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为origin，domain。
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Value, :Fuzzy

        def initialize(name=nil, value=nil, fuzzy=nil)
          @Name = name
          @Value = value
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Fuzzy = params['Fuzzy']
        end
      end

      # 域名日志信息
      class DomainLogs < TencentCloud::Common::AbstractModel
        # @param StartTime: 日志起始时间。
        # @type StartTime: String
        # @param EndTime: 日志结束时间。
        # @type EndTime: String
        # @param LogPath: 日志下载路径。
        # @type LogPath: String

        attr_accessor :StartTime, :EndTime, :LogPath

        def initialize(starttime=nil, endtime=nil, logpath=nil)
          @StartTime = starttime
          @EndTime = endtime
          @LogPath = logpath
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @LogPath = params['LogPath']
        end
      end

      # 访问明细数据类型
      class EcdnData < TencentCloud::Common::AbstractModel
        # @param Metrics: 查询指定的指标名称：Bandwidth，Flux，Request，Delay，状态码，LogBandwidth，LogFlux，LogRequest
        # @type Metrics: Array
        # @param DetailData: 明细数据组合
        # @type DetailData: Array

        attr_accessor :Metrics, :DetailData

        def initialize(metrics=nil, detaildata=nil)
          @Metrics = metrics
          @DetailData = detaildata
        end

        def deserialize(params)
          @Metrics = params['Metrics']
          unless params['DetailData'].nil?
            @DetailData = []
            params['DetailData'].each do |i|
              timestampdata_tmp = TimestampData.new
              timestampdata_tmp.deserialize(i)
              @DetailData << timestampdata_tmp
            end
          end
        end
      end

      # 访问协议强制跳转配置。
      class ForceRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: 访问协议强制跳转配置开关，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param RedirectType: 强制跳转访问协议类型，支持http，https，分别表示请求强制跳转http协议，请求强制跳转https协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectType: String
        # @param RedirectStatusCode: 强制跳转开启时返回的http状态码，支持301或302。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectStatusCode: Integer

        attr_accessor :Switch, :RedirectType, :RedirectStatusCode

        def initialize(switch=nil, redirecttype=nil, redirectstatuscode=nil)
          @Switch = switch
          @RedirectType = redirecttype
          @RedirectStatusCode = redirectstatuscode
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RedirectType = params['RedirectType']
          @RedirectStatusCode = params['RedirectStatusCode']
        end
      end

      # HSTS 配置。
      class Hsts < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启，on或off。
        # @type Switch: String
        # @param MaxAge: MaxAge数值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: Integer
        # @param IncludeSubDomains: 是否包含子域名，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeSubDomains: String

        attr_accessor :Switch, :MaxAge, :IncludeSubDomains

        def initialize(switch=nil, maxage=nil, includesubdomains=nil)
          @Switch = switch
          @MaxAge = maxage
          @IncludeSubDomains = includesubdomains
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxAge = params['MaxAge']
          @IncludeSubDomains = params['IncludeSubDomains']
        end
      end

      # 分路径的http头部设置规则。
      class HttpHeaderPathRule < TencentCloud::Common::AbstractModel
        # @param HeaderMode: http头部设置方式，支持add，set或del，分别表示新增，设置或删除头部。
        # 请求头部暂不支持set。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderMode: String
        # @param HeaderName: http头部名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderName: String
        # @param HeaderValue: http头部值。del时可不填写该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderValue: String
        # @param RuleType: 生效的url路径规则类型，支持all，file，directory或path，分别表示全部路径，文件后缀类型，目录或绝对路径生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param RulePaths: url路径或文件类型列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulePaths: Array

        attr_accessor :HeaderMode, :HeaderName, :HeaderValue, :RuleType, :RulePaths

        def initialize(headermode=nil, headername=nil, headervalue=nil, ruletype=nil, rulepaths=nil)
          @HeaderMode = headermode
          @HeaderName = headername
          @HeaderValue = headervalue
          @RuleType = ruletype
          @RulePaths = rulepaths
        end

        def deserialize(params)
          @HeaderMode = params['HeaderMode']
          @HeaderName = params['HeaderName']
          @HeaderValue = params['HeaderValue']
          @RuleType = params['RuleType']
          @RulePaths = params['RulePaths']
        end
      end

      # 域名https配置。
      class Https < TencentCloud::Common::AbstractModel
        # @param Switch: https配置开关，on或off。开启https配置的域名在部署中状态，开关保持off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Http2: 是否开启http2，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Http2: String
        # @param OcspStapling: 是否开启OCSP功能，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcspStapling: String
        # @param VerifyClient: 是否开启客户端证书校验功能，on或off，开启时必选上传客户端证书信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyClient: String
        # @param CertInfo: 服务器证书配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: :class:`Tencentcloud::Ecdn.v20191012.models.ServerCert`
        # @param ClientCertInfo: 客户端证书配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertInfo: :class:`Tencentcloud::Ecdn.v20191012.models.ClientCert`
        # @param Spdy: 是否开启Spdy，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spdy: String
        # @param SslStatus: https证书部署状态，closed，deploying，deployed，failed分别表示已关闭，部署中，部署成功，部署失败。不可作为入参使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SslStatus: String
        # @param Hsts: Hsts配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hsts: :class:`Tencentcloud::Ecdn.v20191012.models.Hsts`

        attr_accessor :Switch, :Http2, :OcspStapling, :VerifyClient, :CertInfo, :ClientCertInfo, :Spdy, :SslStatus, :Hsts

        def initialize(switch=nil, http2=nil, ocspstapling=nil, verifyclient=nil, certinfo=nil, clientcertinfo=nil, spdy=nil, sslstatus=nil, hsts=nil)
          @Switch = switch
          @Http2 = http2
          @OcspStapling = ocspstapling
          @VerifyClient = verifyclient
          @CertInfo = certinfo
          @ClientCertInfo = clientcertinfo
          @Spdy = spdy
          @SslStatus = sslstatus
          @Hsts = hsts
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Http2 = params['Http2']
          @OcspStapling = params['OcspStapling']
          @VerifyClient = params['VerifyClient']
          unless params['CertInfo'].nil?
            @CertInfo = ServerCert.new
            @CertInfo.deserialize(params['CertInfo'])
          end
          unless params['ClientCertInfo'].nil?
            @ClientCertInfo = ClientCert.new
            @ClientCertInfo.deserialize(params['ClientCertInfo'])
          end
          @Spdy = params['Spdy']
          @SslStatus = params['SslStatus']
          unless params['Hsts'].nil?
            @Hsts = Hsts.new
            @Hsts.deserialize(params['Hsts'])
          end
        end
      end

      # IP黑白名单。
      class IpFilter < TencentCloud::Common::AbstractModel
        # @param Switch: IP黑白名单开关，on或off。
        # @type Switch: String
        # @param FilterType: IP黑白名单类型，whitelist或blacklist。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterType: String
        # @param Filters: IP黑白名单列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filters: Array

        attr_accessor :Switch, :FilterType, :Filters

        def initialize(switch=nil, filtertype=nil, filters=nil)
          @Switch = switch
          @FilterType = filtertype
          @Filters = filters
        end

        def deserialize(params)
          @Switch = params['Switch']
          @FilterType = params['FilterType']
          @Filters = params['Filters']
        end
      end

      # IP限频配置。
      class IpFreqLimit < TencentCloud::Common::AbstractModel
        # @param Switch: IP限频配置开关，on或off。
        # @type Switch: String
        # @param Qps: 每秒请求数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Integer

        attr_accessor :Switch, :Qps

        def initialize(switch=nil, qps=nil)
          @Switch = switch
          @Qps = qps
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Qps = params['Qps']
        end
      end

      # 节点 IP 信息
      class IpStatus < TencentCloud::Common::AbstractModel
        # @param Ip: 节点 IP
        # @type Ip: String
        # @param District: 节点所属区域
        # @type District: String
        # @param Isp: 节点所属运营商
        # @type Isp: String
        # @param City: 节点所在城市
        # @type City: String
        # @param Status: 节点状态
        # online：上线状态，正常调度服务中
        # offline：下线状态
        # @type Status: String
        # @param CreateTime: 节点 IP 添加时间
        # @type CreateTime: String

        attr_accessor :Ip, :District, :Isp, :City, :Status, :CreateTime

        def initialize(ip=nil, district=nil, isp=nil, city=nil, status=nil, createtime=nil)
          @Ip = ip
          @District = district
          @Isp = isp
          @City = city
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @Ip = params['Ip']
          @District = params['District']
          @Isp = params['Isp']
          @City = params['City']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # 源站配置。
      class Origin < TencentCloud::Common::AbstractModel
        # @param Origins: 主源站列表，IP与域名源站不可混填。配置源站端口["origin1:port1", "origin2:port2"]，配置回源权重["origin1::weight1", "origin2::weight2"]，同时配置端口与权重 ["origin1:port1:weight1", "origin2:port2:weight2"]，权重值有效范围为0-100。
        # @type Origins: Array
        # @param OriginType: 主源站类型，支持domain，ip，分别表示域名源站，ip源站。
        # 设置Origins时必须填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginType: String
        # @param ServerName: 回源时Host头部值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerName: String
        # @param OriginPullProtocol: 回源协议类型，支持http，follow，https，分别表示强制http回源，协议跟随回源，https回源。
        # 不传入的情况下默认为http回源.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullProtocol: String
        # @param BackupOrigins: 备份源站列表。
        # @type BackupOrigins: Array
        # @param BackupOriginType: 备份源站类型，同OriginType。
        # 设置BackupOrigins时必须填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOriginType: String
        # @param AdvanceHttps: HTTPS回源高级配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceHttps: :class:`Tencentcloud::Ecdn.v20191012.models.AdvanceHttps`

        attr_accessor :Origins, :OriginType, :ServerName, :OriginPullProtocol, :BackupOrigins, :BackupOriginType, :AdvanceHttps

        def initialize(origins=nil, origintype=nil, servername=nil, originpullprotocol=nil, backuporigins=nil, backuporigintype=nil, advancehttps=nil)
          @Origins = origins
          @OriginType = origintype
          @ServerName = servername
          @OriginPullProtocol = originpullprotocol
          @BackupOrigins = backuporigins
          @BackupOriginType = backuporigintype
          @AdvanceHttps = advancehttps
        end

        def deserialize(params)
          @Origins = params['Origins']
          @OriginType = params['OriginType']
          @ServerName = params['ServerName']
          @OriginPullProtocol = params['OriginPullProtocol']
          @BackupOrigins = params['BackupOrigins']
          @BackupOriginType = params['BackupOriginType']
          unless params['AdvanceHttps'].nil?
            @AdvanceHttps = AdvanceHttps.new
            @AdvanceHttps.deserialize(params['AdvanceHttps'])
          end
        end
      end

      # 查询对象及其对应的访问明细数据
      class ResourceData < TencentCloud::Common::AbstractModel
        # @param Resource: 资源名称，根据查询条件不同分为以下几类：
        # 具体域名：表示该域名明细数据
        # multiDomains：表示多域名汇总明细数据
        # 项目 ID：指定项目查询时，显示为项目 ID
        # all：账号维度明细数据
        # @type Resource: String
        # @param EcdnData: 资源对应的数据明细
        # @type EcdnData: :class:`Tencentcloud::Ecdn.v20191012.models.EcdnData`

        attr_accessor :Resource, :EcdnData

        def initialize(resource=nil, ecdndata=nil)
          @Resource = resource
          @EcdnData = ecdndata
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['EcdnData'].nil?
            @EcdnData = EcdnData.new
            @EcdnData.deserialize(params['EcdnData'])
          end
        end
      end

      # 自定义响应头配置。
      class ResponseHeader < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义响应头开关，on或off。
        # @type Switch: String
        # @param HeaderRules: 自定义响应头规则数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderRules: Array

        attr_accessor :Switch, :HeaderRules

        def initialize(switch=nil, headerrules=nil)
          @Switch = switch
          @HeaderRules = headerrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['HeaderRules'].nil?
            @HeaderRules = []
            params['HeaderRules'].each do |i|
              httpheaderpathrule_tmp = HttpHeaderPathRule.new
              httpheaderpathrule_tmp.deserialize(i)
              @HeaderRules << httpheaderpathrule_tmp
            end
          end
        end
      end

      # https服务端证书配置。
      class ServerCert < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书id，当证书为腾讯云托管证书时必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param CertName: 服务器证书名称，当证书为腾讯云托管证书时必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertName: String
        # @param Certificate: 服务器证书信息，上传自有证书时必填，必须包含完整的证书链信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: String
        # @param PrivateKey: 服务器密钥信息，上传自有证书时必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateKey: String
        # @param ExpireTime: 证书过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书颁发时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployTime: String
        # @param Message: 证书备注信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :CertId, :CertName, :Certificate, :PrivateKey, :ExpireTime, :DeployTime, :Message

        def initialize(certid=nil, certname=nil, certificate=nil, privatekey=nil, expiretime=nil, deploytime=nil, message=nil)
          @CertId = certid
          @CertName = certname
          @Certificate = certificate
          @PrivateKey = privatekey
          @ExpireTime = expiretime
          @DeployTime = deploytime
          @Message = message
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertName = params['CertName']
          @Certificate = params['Certificate']
          @PrivateKey = params['PrivateKey']
          @ExpireTime = params['ExpireTime']
          @DeployTime = params['DeployTime']
          @Message = params['Message']
        end
      end

      # 查询结果排序条件。
      class Sort < TencentCloud::Common::AbstractModel
        # @param Key: 排序字段，当前支持：
        # createTime，域名创建时间
        # certExpireTime，证书过期时间
        # @type Key: String
        # @param Sequence: asc/desc，默认desc。
        # @type Sequence: String

        attr_accessor :Key, :Sequence

        def initialize(key=nil, sequence=nil)
          @Key = key
          @Sequence = sequence
        end

        def deserialize(params)
          @Key = params['Key']
          @Sequence = params['Sequence']
        end
      end

      # 标签键和标签值
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 时间戳与其对应的数值
      class TimestampData < TencentCloud::Common::AbstractModel
        # @param Time: 数据统计时间点，采用向前汇总模式
        # 以 5 分钟粒度为例，13:35:00 时间点代表的统计数据区间为 13:35:00 至 13:39:59
        # @type Time: String
        # @param Value: 数据值
        # @type Value: Array

        attr_accessor :Time, :Value

        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # WebSocket配置。
      class WebSocket < TencentCloud::Common::AbstractModel
        # @param Switch: WebSocket 超时配置开关, 开关为off时，平台仍支持WebSocket连接，此时超时时间默认为15秒，若需要调整超时时间，将开关置为on.

        # * WebSocket 为内测功能,如需使用,请联系腾讯云工程师开白.
        # @type Switch: String
        # @param Timeout: 设置超时时间，单位为秒，最大超时时间65秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer

        attr_accessor :Switch, :Timeout

        def initialize(switch=nil, timeout=nil)
          @Switch = switch
          @Timeout = timeout
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Timeout = params['Timeout']
        end
      end

    end
  end
end

