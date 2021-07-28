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
  module Cdn
    module V20180606
      # 请求头部及请求url访问控制
      class AccessControl < TencentCloud::Common::AbstractModel
        # @param Switch: on | off 是否启用请求头部及请求url访问控制
        # @type Switch: String
        # @param AccessControlRules: 请求头部及请求url访问规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessControlRules: Array
        # @param ReturnCode: 返回状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnCode: Integer

        attr_accessor :Switch, :AccessControlRules, :ReturnCode
        
        def initialize(switch=nil, accesscontrolrules=nil, returncode=nil)
          @Switch = switch
          @AccessControlRules = accesscontrolrules
          @ReturnCode = returncode
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['AccessControlRules'].nil?
            @AccessControlRules = []
            params['AccessControlRules'].each do |i|
              accesscontrolrule_tmp = AccessControlRule.new
              accesscontrolrule_tmp.deserialize(i)
              @AccessControlRules << accesscontrolrule_tmp
            end
          end
          @ReturnCode = params['ReturnCode']
        end
      end

      # 访问控制规则
      class AccessControlRule < TencentCloud::Common::AbstractModel
        # @param RuleType: requestHeader ：对请求头部进行访问控制
        # url ： 对访问url进行访问控制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param RuleContent: 封禁内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleContent: String
        # @param Regex: on ：正则匹配
        # off ：字面匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regex: String
        # @param RuleHeader: RuleType为requestHeader时必填，否则不需要填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleHeader: String

        attr_accessor :RuleType, :RuleContent, :Regex, :RuleHeader
        
        def initialize(ruletype=nil, rulecontent=nil, regex=nil, ruleheader=nil)
          @RuleType = ruletype
          @RuleContent = rulecontent
          @Regex = regex
          @RuleHeader = ruleheader
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RuleContent = params['RuleContent']
          @Regex = params['Regex']
          @RuleHeader = params['RuleHeader']
        end
      end

      # AddCdnDomain请求参数结构体
      class AddCdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param ServiceType: 加速域名业务类型
        # web：静态加速
        # download：下载加速
        # media：流媒体点播加速
        # @type ServiceType: String
        # @param Origin: 源站配置
        # @type Origin: :class:`Tencentcloud::Cdn.v20180606.models.Origin`
        # @param ProjectId: 项目 ID，默认为 0，代表【默认项目】
        # @type ProjectId: Integer
        # @param IpFilter: IP 黑白名单配置
        # @type IpFilter: :class:`Tencentcloud::Cdn.v20180606.models.IpFilter`
        # @param IpFreqLimit: IP 限频配置
        # @type IpFreqLimit: :class:`Tencentcloud::Cdn.v20180606.models.IpFreqLimit`
        # @param StatusCodeCache: 状态码缓存配置
        # @type StatusCodeCache: :class:`Tencentcloud::Cdn.v20180606.models.StatusCodeCache`
        # @param Compression: 智能压缩配置
        # @type Compression: :class:`Tencentcloud::Cdn.v20180606.models.Compression`
        # @param BandwidthAlert: 带宽封顶配置
        # @type BandwidthAlert: :class:`Tencentcloud::Cdn.v20180606.models.BandwidthAlert`
        # @param RangeOriginPull: Range 回源配置
        # @type RangeOriginPull: :class:`Tencentcloud::Cdn.v20180606.models.RangeOriginPull`
        # @param FollowRedirect: 301/302 回源跟随配置。
        # @type FollowRedirect: :class:`Tencentcloud::Cdn.v20180606.models.FollowRedirect`
        # @param ErrorPage: 错误码重定向配置（功能灰度中，尚未全量）
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ErrorPage`
        # @param RequestHeader: 请求头部配置
        # @type RequestHeader: :class:`Tencentcloud::Cdn.v20180606.models.RequestHeader`
        # @param ResponseHeader: 响应头部配置
        # @type ResponseHeader: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeader`
        # @param DownstreamCapping: 下载速度配置
        # @type DownstreamCapping: :class:`Tencentcloud::Cdn.v20180606.models.DownstreamCapping`
        # @param CacheKey: 节点缓存键配置
        # @type CacheKey: :class:`Tencentcloud::Cdn.v20180606.models.CacheKey`
        # @param ResponseHeaderCache: 头部缓存配置
        # @type ResponseHeaderCache: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeaderCache`
        # @param VideoSeek: 视频拖拽配置
        # @type VideoSeek: :class:`Tencentcloud::Cdn.v20180606.models.VideoSeek`
        # @param Cache: 缓存过期时间配置
        # @type Cache: :class:`Tencentcloud::Cdn.v20180606.models.Cache`
        # @param OriginPullOptimization: 跨国链路优化配置
        # @type OriginPullOptimization: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullOptimization`
        # @param Https: Https 加速配置
        # @type Https: :class:`Tencentcloud::Cdn.v20180606.models.Https`
        # @param Authentication: 时间戳防盗链配置
        # @type Authentication: :class:`Tencentcloud::Cdn.v20180606.models.Authentication`
        # @param Seo: SEO 优化配置
        # @type Seo: :class:`Tencentcloud::Cdn.v20180606.models.Seo`
        # @param ForceRedirect: 访问协议强制跳转配置
        # @type ForceRedirect: :class:`Tencentcloud::Cdn.v20180606.models.ForceRedirect`
        # @param Referer: Referer 防盗链配置
        # @type Referer: :class:`Tencentcloud::Cdn.v20180606.models.Referer`
        # @param MaxAge: 浏览器缓存配置（功能灰度中，尚未全量）
        # @type MaxAge: :class:`Tencentcloud::Cdn.v20180606.models.MaxAge`
        # @param Ipv6: Ipv6 配置（功能灰度中，尚未全量）
        # @type Ipv6: :class:`Tencentcloud::Cdn.v20180606.models.Ipv6`
        # @param SpecificConfig: 地域属性特殊配置
        # 适用于域名境内加速、境外加速配置不一致场景
        # @type SpecificConfig: :class:`Tencentcloud::Cdn.v20180606.models.SpecificConfig`
        # @param Area: 域名加速区域
        # mainland：中国境内加速
        # overseas：中国境外加速
        # global：全球加速
        # 使用中国境外加速、全球加速时，需要先开通中国境外加速服务
        # @type Area: String
        # @param OriginPullTimeout: 回源超时配置
        # @type OriginPullTimeout: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullTimeout`
        # @param Tag: 标签配置
        # @type Tag: Array
        # @param Ipv6Access: Ipv6 访问配置
        # @type Ipv6Access: :class:`Tencentcloud::Cdn.v20180606.models.Ipv6Access`
        # @param OfflineCache: 离线缓存
        # @type OfflineCache: :class:`Tencentcloud::Cdn.v20180606.models.OfflineCache`
        # @param Quic: QUIC正在内测中，请先提交内测申请，详情请前往QUIC产品文档。
        # @type Quic: :class:`Tencentcloud::Cdn.v20180606.models.Quic`
        # @param AwsPrivateAccess: 回源S3私有鉴权
        # @type AwsPrivateAccess: :class:`Tencentcloud::Cdn.v20180606.models.AwsPrivateAccess`
        # @param OssPrivateAccess: 回源OSS私有鉴权
        # @type OssPrivateAccess: :class:`Tencentcloud::Cdn.v20180606.models.OssPrivateAccess`

        attr_accessor :Domain, :ServiceType, :Origin, :ProjectId, :IpFilter, :IpFreqLimit, :StatusCodeCache, :Compression, :BandwidthAlert, :RangeOriginPull, :FollowRedirect, :ErrorPage, :RequestHeader, :ResponseHeader, :DownstreamCapping, :CacheKey, :ResponseHeaderCache, :VideoSeek, :Cache, :OriginPullOptimization, :Https, :Authentication, :Seo, :ForceRedirect, :Referer, :MaxAge, :Ipv6, :SpecificConfig, :Area, :OriginPullTimeout, :Tag, :Ipv6Access, :OfflineCache, :Quic, :AwsPrivateAccess, :OssPrivateAccess
        
        def initialize(domain=nil, servicetype=nil, origin=nil, projectid=nil, ipfilter=nil, ipfreqlimit=nil, statuscodecache=nil, compression=nil, bandwidthalert=nil, rangeoriginpull=nil, followredirect=nil, errorpage=nil, requestheader=nil, responseheader=nil, downstreamcapping=nil, cachekey=nil, responseheadercache=nil, videoseek=nil, cache=nil, originpulloptimization=nil, https=nil, authentication=nil, seo=nil, forceredirect=nil, referer=nil, maxage=nil, ipv6=nil, specificconfig=nil, area=nil, originpulltimeout=nil, tag=nil, ipv6access=nil, offlinecache=nil, quic=nil, awsprivateaccess=nil, ossprivateaccess=nil)
          @Domain = domain
          @ServiceType = servicetype
          @Origin = origin
          @ProjectId = projectid
          @IpFilter = ipfilter
          @IpFreqLimit = ipfreqlimit
          @StatusCodeCache = statuscodecache
          @Compression = compression
          @BandwidthAlert = bandwidthalert
          @RangeOriginPull = rangeoriginpull
          @FollowRedirect = followredirect
          @ErrorPage = errorpage
          @RequestHeader = requestheader
          @ResponseHeader = responseheader
          @DownstreamCapping = downstreamcapping
          @CacheKey = cachekey
          @ResponseHeaderCache = responseheadercache
          @VideoSeek = videoseek
          @Cache = cache
          @OriginPullOptimization = originpulloptimization
          @Https = https
          @Authentication = authentication
          @Seo = seo
          @ForceRedirect = forceredirect
          @Referer = referer
          @MaxAge = maxage
          @Ipv6 = ipv6
          @SpecificConfig = specificconfig
          @Area = area
          @OriginPullTimeout = originpulltimeout
          @Tag = tag
          @Ipv6Access = ipv6access
          @OfflineCache = offlinecache
          @Quic = quic
          @AwsPrivateAccess = awsprivateaccess
          @OssPrivateAccess = ossprivateaccess
        end

        def deserialize(params)
          @Domain = params['Domain']
          @ServiceType = params['ServiceType']
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          @ProjectId = params['ProjectId']
          unless params['IpFilter'].nil?
            @IpFilter = IpFilter.new
            @IpFilter.deserialize(params['IpFilter'])
          end
          unless params['IpFreqLimit'].nil?
            @IpFreqLimit = IpFreqLimit.new
            @IpFreqLimit.deserialize(params['IpFreqLimit'])
          end
          unless params['StatusCodeCache'].nil?
            @StatusCodeCache = StatusCodeCache.new
            @StatusCodeCache.deserialize(params['StatusCodeCache'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['BandwidthAlert'].nil?
            @BandwidthAlert = BandwidthAlert.new
            @BandwidthAlert.deserialize(params['BandwidthAlert'])
          end
          unless params['RangeOriginPull'].nil?
            @RangeOriginPull = RangeOriginPull.new
            @RangeOriginPull.deserialize(params['RangeOriginPull'])
          end
          unless params['FollowRedirect'].nil?
            @FollowRedirect = FollowRedirect.new
            @FollowRedirect.deserialize(params['FollowRedirect'])
          end
          unless params['ErrorPage'].nil?
            @ErrorPage = ErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
          unless params['RequestHeader'].nil?
            @RequestHeader = RequestHeader.new
            @RequestHeader.deserialize(params['RequestHeader'])
          end
          unless params['ResponseHeader'].nil?
            @ResponseHeader = ResponseHeader.new
            @ResponseHeader.deserialize(params['ResponseHeader'])
          end
          unless params['DownstreamCapping'].nil?
            @DownstreamCapping = DownstreamCapping.new
            @DownstreamCapping.deserialize(params['DownstreamCapping'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['ResponseHeaderCache'].nil?
            @ResponseHeaderCache = ResponseHeaderCache.new
            @ResponseHeaderCache.deserialize(params['ResponseHeaderCache'])
          end
          unless params['VideoSeek'].nil?
            @VideoSeek = VideoSeek.new
            @VideoSeek.deserialize(params['VideoSeek'])
          end
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['OriginPullOptimization'].nil?
            @OriginPullOptimization = OriginPullOptimization.new
            @OriginPullOptimization.deserialize(params['OriginPullOptimization'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['Authentication'].nil?
            @Authentication = Authentication.new
            @Authentication.deserialize(params['Authentication'])
          end
          unless params['Seo'].nil?
            @Seo = Seo.new
            @Seo.deserialize(params['Seo'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Referer'].nil?
            @Referer = Referer.new
            @Referer.deserialize(params['Referer'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['SpecificConfig'].nil?
            @SpecificConfig = SpecificConfig.new
            @SpecificConfig.deserialize(params['SpecificConfig'])
          end
          @Area = params['Area']
          unless params['OriginPullTimeout'].nil?
            @OriginPullTimeout = OriginPullTimeout.new
            @OriginPullTimeout.deserialize(params['OriginPullTimeout'])
          end
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          unless params['Ipv6Access'].nil?
            @Ipv6Access = Ipv6Access.new
            @Ipv6Access.deserialize(params['Ipv6Access'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['AwsPrivateAccess'].nil?
            @AwsPrivateAccess = AwsPrivateAccess.new
            @AwsPrivateAccess.deserialize(params['AwsPrivateAccess'])
          end
          unless params['OssPrivateAccess'].nil?
            @OssPrivateAccess = OssPrivateAccess.new
            @OssPrivateAccess.deserialize(params['OssPrivateAccess'])
          end
        end
      end

      # AddCdnDomain返回参数结构体
      class AddCdnDomainResponse < TencentCloud::Common::AbstractModel
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

      # 缓存配置高级版本规则
      class AdvanceCacheRule < TencentCloud::Common::AbstractModel
        # @param CacheType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # default：源站未返回 max-age 情况下的缓存规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheType: String
        # @param CacheContents: 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
        # default 时填充 "no max-age"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheContents: Array
        # @param CacheTime: 缓存过期时间
        # 单位为秒，最大可设置为 365 天
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 高级配置集合
      class AdvanceConfig < TencentCloud::Common::AbstractModel
        # @param Name: 高级配置名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 是否支持高级配置，
        # on：支持
        # off：不支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

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

      # 时间戳防盗链高级版配置，白名单功能
      class AdvancedAuthentication < TencentCloud::Common::AbstractModel
        # @param Switch: 防盗链配置开关，on或off，开启时必须且只能配置一种模式，其余模式为null。
        # @type Switch: String
        # @param TypeA: 时间戳防盗链高级版模式A配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeA: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthenticationTypeA`
        # @param TypeB: 时间戳防盗链高级版模式B配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeB: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthenticationTypeB`
        # @param TypeC: 时间戳防盗链高级版模式C配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeC: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthenticationTypeC`
        # @param TypeD: 时间戳防盗链高级版模式D配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeD: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthenticationTypeD`
        # @param TypeE: 时间戳防盗链高级版模式E配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeE: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthenticationTypeE`
        # @param TypeF: 时间戳防盗链高级版模式F配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeF: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthenticationTypeF`

        attr_accessor :Switch, :TypeA, :TypeB, :TypeC, :TypeD, :TypeE, :TypeF
        
        def initialize(switch=nil, typea=nil, typeb=nil, typec=nil, typed=nil, typee=nil, typef=nil)
          @Switch = switch
          @TypeA = typea
          @TypeB = typeb
          @TypeC = typec
          @TypeD = typed
          @TypeE = typee
          @TypeF = typef
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['TypeA'].nil?
            @TypeA = AdvancedAuthenticationTypeA.new
            @TypeA.deserialize(params['TypeA'])
          end
          unless params['TypeB'].nil?
            @TypeB = AdvancedAuthenticationTypeB.new
            @TypeB.deserialize(params['TypeB'])
          end
          unless params['TypeC'].nil?
            @TypeC = AdvancedAuthenticationTypeC.new
            @TypeC.deserialize(params['TypeC'])
          end
          unless params['TypeD'].nil?
            @TypeD = AdvancedAuthenticationTypeD.new
            @TypeD.deserialize(params['TypeD'])
          end
          unless params['TypeE'].nil?
            @TypeE = AdvancedAuthenticationTypeE.new
            @TypeE.deserialize(params['TypeE'])
          end
          unless params['TypeF'].nil?
            @TypeF = AdvancedAuthenticationTypeF.new
            @TypeF.deserialize(params['TypeF'])
          end
        end
      end

      # 时间戳防盗链高级版模式A配置。
      class AdvancedAuthenticationTypeA < TencentCloud::Common::AbstractModel
        # @param SecretKey: 用于计算签名的密钥，只允许字母和数字，长度6-32字节。
        # @type SecretKey: String
        # @param SignParam: uri串中签名的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # @type SignParam: String
        # @param TimeParam: uri串中时间的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # @type TimeParam: String
        # @param ExpireTime: 过期时间，单位秒。
        # @type ExpireTime: Integer
        # @param ExpireTimeRequired: 是否必须提供过期时间参数。
        # @type ExpireTimeRequired: Boolean
        # @param Format: Url组成格式，如：${private_key}${schema}${host}${full_uri。
        # @type Format: String
        # @param TimeFormat: 时间格式，dec，hex分别表示十进制，十六进制。
        # @type TimeFormat: String
        # @param FailCode: 鉴权失败时返回的状态码。
        # @type FailCode: Integer
        # @param ExpireCode: 链接过期时返回的状态码。
        # @type ExpireCode: Integer
        # @param RulePaths: 需要鉴权的url路径列表。
        # @type RulePaths: Array
        # @param Transformation: 保留字段。
        # @type Transformation: Integer

        attr_accessor :SecretKey, :SignParam, :TimeParam, :ExpireTime, :ExpireTimeRequired, :Format, :TimeFormat, :FailCode, :ExpireCode, :RulePaths, :Transformation
        
        def initialize(secretkey=nil, signparam=nil, timeparam=nil, expiretime=nil, expiretimerequired=nil, format=nil, timeformat=nil, failcode=nil, expirecode=nil, rulepaths=nil, transformation=nil)
          @SecretKey = secretkey
          @SignParam = signparam
          @TimeParam = timeparam
          @ExpireTime = expiretime
          @ExpireTimeRequired = expiretimerequired
          @Format = format
          @TimeFormat = timeformat
          @FailCode = failcode
          @ExpireCode = expirecode
          @RulePaths = rulepaths
          @Transformation = transformation
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @SignParam = params['SignParam']
          @TimeParam = params['TimeParam']
          @ExpireTime = params['ExpireTime']
          @ExpireTimeRequired = params['ExpireTimeRequired']
          @Format = params['Format']
          @TimeFormat = params['TimeFormat']
          @FailCode = params['FailCode']
          @ExpireCode = params['ExpireCode']
          @RulePaths = params['RulePaths']
          @Transformation = params['Transformation']
        end
      end

      # 时间戳防盗链高级版模式B配置。
      class AdvancedAuthenticationTypeB < TencentCloud::Common::AbstractModel
        # @param KeyAlpha: alpha键名。
        # @type KeyAlpha: String
        # @param KeyBeta: beta键名。
        # @type KeyBeta: String
        # @param KeyGamma: gamma键名。
        # @type KeyGamma: String
        # @param SignParam: uri串中签名的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # @type SignParam: String
        # @param TimeParam: uri串中时间的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # @type TimeParam: String
        # @param ExpireTime: 过期时间，单位秒。
        # @type ExpireTime: Integer
        # @param TimeFormat: 时间格式，dec，hex分别表示十进制，十六进制。
        # @type TimeFormat: String
        # @param FailCode: 鉴权失败时返回的状态码。
        # @type FailCode: Integer
        # @param ExpireCode: 链接过期时返回的状态码。
        # @type ExpireCode: Integer
        # @param RulePaths: 需要鉴权的url路径列表。
        # @type RulePaths: Array

        attr_accessor :KeyAlpha, :KeyBeta, :KeyGamma, :SignParam, :TimeParam, :ExpireTime, :TimeFormat, :FailCode, :ExpireCode, :RulePaths
        
        def initialize(keyalpha=nil, keybeta=nil, keygamma=nil, signparam=nil, timeparam=nil, expiretime=nil, timeformat=nil, failcode=nil, expirecode=nil, rulepaths=nil)
          @KeyAlpha = keyalpha
          @KeyBeta = keybeta
          @KeyGamma = keygamma
          @SignParam = signparam
          @TimeParam = timeparam
          @ExpireTime = expiretime
          @TimeFormat = timeformat
          @FailCode = failcode
          @ExpireCode = expirecode
          @RulePaths = rulepaths
        end

        def deserialize(params)
          @KeyAlpha = params['KeyAlpha']
          @KeyBeta = params['KeyBeta']
          @KeyGamma = params['KeyGamma']
          @SignParam = params['SignParam']
          @TimeParam = params['TimeParam']
          @ExpireTime = params['ExpireTime']
          @TimeFormat = params['TimeFormat']
          @FailCode = params['FailCode']
          @ExpireCode = params['ExpireCode']
          @RulePaths = params['RulePaths']
        end
      end

      # 时间戳防盗链高级版模式C配置。
      class AdvancedAuthenticationTypeC < TencentCloud::Common::AbstractModel
        # @param AccessKey: 访问密钥。
        # @type AccessKey: String
        # @param SecretKey: 鉴权密钥。
        # @type SecretKey: String

        attr_accessor :AccessKey, :SecretKey
        
        def initialize(accesskey=nil, secretkey=nil)
          @AccessKey = accesskey
          @SecretKey = secretkey
        end

        def deserialize(params)
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
        end
      end

      # 时间戳防盗链高级版模式D配置。
      class AdvancedAuthenticationTypeD < TencentCloud::Common::AbstractModel
        # @param SecretKey: 用于计算签名的密钥，只允许字母和数字，长度6-32字节。
        # @type SecretKey: String
        # @param BackupSecretKey: 备份密钥，当使用SecretKey鉴权失败时会使用该密钥重新鉴权。
        # @type BackupSecretKey: String
        # @param SignParam: uri串中签名的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # @type SignParam: String
        # @param TimeParam: uri串中时间的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # @type TimeParam: String
        # @param ExpireTime: 过期时间，单位秒。
        # @type ExpireTime: Integer
        # @param TimeFormat: 时间格式，dec，hex分别表示十进制，十六进制。
        # @type TimeFormat: String

        attr_accessor :SecretKey, :BackupSecretKey, :SignParam, :TimeParam, :ExpireTime, :TimeFormat
        
        def initialize(secretkey=nil, backupsecretkey=nil, signparam=nil, timeparam=nil, expiretime=nil, timeformat=nil)
          @SecretKey = secretkey
          @BackupSecretKey = backupsecretkey
          @SignParam = signparam
          @TimeParam = timeparam
          @ExpireTime = expiretime
          @TimeFormat = timeformat
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @BackupSecretKey = params['BackupSecretKey']
          @SignParam = params['SignParam']
          @TimeParam = params['TimeParam']
          @ExpireTime = params['ExpireTime']
          @TimeFormat = params['TimeFormat']
        end
      end

      # 时间戳防盗链高级版模式E配置。
      class AdvancedAuthenticationTypeE < TencentCloud::Common::AbstractModel
        # @param SecretKey: 用于计算签名的密钥，只允许字母和数字，长度6-32字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param SignParam: uri串中签名的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignParam: String
        # @param AclSignParam: uri串中Acl签名的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclSignParam: String
        # @param StartTimeParam: uri串中开始时间字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeParam: String
        # @param ExpireTimeParam: uri串中过期时间字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTimeParam: String
        # @param TimeFormat: 时间格式，dec
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeFormat: String

        attr_accessor :SecretKey, :SignParam, :AclSignParam, :StartTimeParam, :ExpireTimeParam, :TimeFormat
        
        def initialize(secretkey=nil, signparam=nil, aclsignparam=nil, starttimeparam=nil, expiretimeparam=nil, timeformat=nil)
          @SecretKey = secretkey
          @SignParam = signparam
          @AclSignParam = aclsignparam
          @StartTimeParam = starttimeparam
          @ExpireTimeParam = expiretimeparam
          @TimeFormat = timeformat
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @SignParam = params['SignParam']
          @AclSignParam = params['AclSignParam']
          @StartTimeParam = params['StartTimeParam']
          @ExpireTimeParam = params['ExpireTimeParam']
          @TimeFormat = params['TimeFormat']
        end
      end

      # 时间戳防盗链高级鉴权模式TypeF配置
      class AdvancedAuthenticationTypeF < TencentCloud::Common::AbstractModel
        # @param SignParam: uri串中签名的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignParam: String
        # @param TimeParam: uri串中时间的字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeParam: String
        # @param TransactionParam: uri串中Transaction字段名，字母，数字或下划线构成，同时必须以字母开头。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionParam: String
        # @param SecretKey: 用于计算签名的主密钥，只允许字母和数字，长度6-32字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param BackupSecretKey: 用于计算签名的备选密钥，主密钥校验失败后再次尝试备选密钥，只允许字母和数字，长度6-32字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupSecretKey: String

        attr_accessor :SignParam, :TimeParam, :TransactionParam, :SecretKey, :BackupSecretKey
        
        def initialize(signparam=nil, timeparam=nil, transactionparam=nil, secretkey=nil, backupsecretkey=nil)
          @SignParam = signparam
          @TimeParam = timeparam
          @TransactionParam = transactionparam
          @SecretKey = secretkey
          @BackupSecretKey = backupsecretkey
        end

        def deserialize(params)
          @SignParam = params['SignParam']
          @TimeParam = params['TimeParam']
          @TransactionParam = params['TransactionParam']
          @SecretKey = params['SecretKey']
          @BackupSecretKey = params['BackupSecretKey']
        end
      end

      # 缓存过期配置高级版（功能灰度中，尚未全量）
      # 注意：该版本不支持设置首页缓存规则
      class AdvancedCache < TencentCloud::Common::AbstractModel
        # @param CacheRules: 缓存过期规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheRules: Array
        # @param IgnoreCacheControl: 强制缓存配置
        # on：开启
        # off：关闭
        # 开启时，源站返回 no-cache、no-store 头部时，仍按照缓存过期规则进行节点缓存
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCacheControl: String
        # @param IgnoreSetCookie: 当源站返回Set-Cookie头部时，节点是否缓存该头部及body
        # on：开启，不缓存该头部及body
        # off：关闭，遵循用户自定义的节点缓存规则
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreSetCookie: String

        attr_accessor :CacheRules, :IgnoreCacheControl, :IgnoreSetCookie
        
        def initialize(cacherules=nil, ignorecachecontrol=nil, ignoresetcookie=nil)
          @CacheRules = cacherules
          @IgnoreCacheControl = ignorecachecontrol
          @IgnoreSetCookie = ignoresetcookie
        end

        def deserialize(params)
          unless params['CacheRules'].nil?
            @CacheRules = []
            params['CacheRules'].each do |i|
              advancecacherule_tmp = AdvanceCacheRule.new
              advancecacherule_tmp.deserialize(i)
              @CacheRules << advancecacherule_tmp
            end
          end
          @IgnoreCacheControl = params['IgnoreCacheControl']
          @IgnoreSetCookie = params['IgnoreSetCookie']
        end
      end

      # 时间戳防盗链配置
      class Authentication < TencentCloud::Common::AbstractModel
        # @param Switch: 防盗链配置开关
        # on：开启
        # off：关闭
        # 开启时必须且只配置一种模式，其余模式需要设置为 null
        # @type Switch: String
        # @param TypeA: 时间戳防盗链模式 A 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeA: :class:`Tencentcloud::Cdn.v20180606.models.AuthenticationTypeA`
        # @param TypeB: 时间戳防盗链模式 B 配置（模式 B 后台升级中，暂时不支持配置）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeB: :class:`Tencentcloud::Cdn.v20180606.models.AuthenticationTypeB`
        # @param TypeC: 时间戳防盗链模式 C 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeC: :class:`Tencentcloud::Cdn.v20180606.models.AuthenticationTypeC`
        # @param TypeD: 时间戳防盗链模式 D 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeD: :class:`Tencentcloud::Cdn.v20180606.models.AuthenticationTypeD`

        attr_accessor :Switch, :TypeA, :TypeB, :TypeC, :TypeD
        
        def initialize(switch=nil, typea=nil, typeb=nil, typec=nil, typed=nil)
          @Switch = switch
          @TypeA = typea
          @TypeB = typeb
          @TypeC = typec
          @TypeD = typed
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['TypeA'].nil?
            @TypeA = AuthenticationTypeA.new
            @TypeA.deserialize(params['TypeA'])
          end
          unless params['TypeB'].nil?
            @TypeB = AuthenticationTypeB.new
            @TypeB.deserialize(params['TypeB'])
          end
          unless params['TypeC'].nil?
            @TypeC = AuthenticationTypeC.new
            @TypeC.deserialize(params['TypeC'])
          end
          unless params['TypeD'].nil?
            @TypeD = AuthenticationTypeD.new
            @TypeD.deserialize(params['TypeD'])
          end
        end
      end

      # 时间戳防盗链模式 A 配置
      # 时间戳防盗链模式 A 的访问 URL 格式为：http://DomainName/Filename?sign=timestamp-rand-uid-md5hash
      # 其中 timestamp 为十进制 UNIX 时间戳；
      # rand 为随机字符串，0 ~ 100 位大小写字母与数字组成；
      # uid 为 0；
      # md5hash：MD5（文件路径-timestamp-rand-uid-自定义密钥）
      class AuthenticationTypeA < TencentCloud::Common::AbstractModel
        # @param SecretKey: 计算签名的密钥
        # 仅允许大小写字母与数字，长度 6~32 位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param SignParam: 签名参数名设置
        # 仅允许大小写字母、数字或下划线，长度 1~100 位，不能以数字开头
        # @type SignParam: String
        # @param ExpireTime: 签名过期时间设置
        # 单位为秒，最大可设置为 630720000
        # @type ExpireTime: Integer
        # @param FileExtensions: 鉴权/不做鉴权的文件扩展名列表设置
        # 如果包含字符 *  则表示所有文件
        # @type FileExtensions: Array
        # @param FilterType: whitelist：白名单，表示对除了 FileExtensions 列表之外的所有类型进行鉴权
        # blacklist：黑名单，表示仅对 FileExtensions 中的类型进行鉴权
        # @type FilterType: String

        attr_accessor :SecretKey, :SignParam, :ExpireTime, :FileExtensions, :FilterType
        
        def initialize(secretkey=nil, signparam=nil, expiretime=nil, fileextensions=nil, filtertype=nil)
          @SecretKey = secretkey
          @SignParam = signparam
          @ExpireTime = expiretime
          @FileExtensions = fileextensions
          @FilterType = filtertype
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @SignParam = params['SignParam']
          @ExpireTime = params['ExpireTime']
          @FileExtensions = params['FileExtensions']
          @FilterType = params['FilterType']
        end
      end

      # 时间戳防盗链模式 B 配置（B 模式正在进行平台升级，暂不支持配置）
      class AuthenticationTypeB < TencentCloud::Common::AbstractModel
        # @param SecretKey: 计算签名的密钥
        # 仅允许大小写字母与数字，长度 6~32 位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param ExpireTime: 签名过期时间设置
        # 单位为秒，最大可设置为 630720000
        # @type ExpireTime: Integer
        # @param FileExtensions: 鉴权/不做鉴权的文件扩展名列表设置
        # 如果包含字符 *  则表示所有文件
        # @type FileExtensions: Array
        # @param FilterType: whitelist：白名单，表示对除了 FileExtensions 列表之外的所有类型进行鉴权
        # blacklist：黑名单，表示仅对 FileExtensions 中的类型进行鉴权
        # @type FilterType: String

        attr_accessor :SecretKey, :ExpireTime, :FileExtensions, :FilterType
        
        def initialize(secretkey=nil, expiretime=nil, fileextensions=nil, filtertype=nil)
          @SecretKey = secretkey
          @ExpireTime = expiretime
          @FileExtensions = fileextensions
          @FilterType = filtertype
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @ExpireTime = params['ExpireTime']
          @FileExtensions = params['FileExtensions']
          @FilterType = params['FilterType']
        end
      end

      # 时间戳防盗链模式 C 配置
      # 时间戳防盗链模式 C 的访问 URL 格式为：http://DomainName/md5hash/timestamp/FileName
      # 其中 timestamp 为十六进制 UNIX 时间戳；
      # md5hash：MD5（自定义密钥 + 文件路径 + timestamp）
      class AuthenticationTypeC < TencentCloud::Common::AbstractModel
        # @param SecretKey: 计算签名的密钥
        # 仅允许大小写字母与数字，长度 6~32 位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param ExpireTime: 签名过期时间设置
        # 单位为秒，最大可设置为 630720000
        # @type ExpireTime: Integer
        # @param FileExtensions: 鉴权/不做鉴权的文件扩展名列表设置
        # 如果包含字符 *  则表示所有文件
        # @type FileExtensions: Array
        # @param FilterType: whitelist：白名单，表示对除了 FileExtensions 列表之外的所有类型进行鉴权
        # blacklist：黑名单，表示仅对 FileExtensions 中的类型进行鉴权
        # @type FilterType: String
        # @param TimeFormat: 时间戳进制设置
        # dec：十进制
        # hex：十六进制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeFormat: String

        attr_accessor :SecretKey, :ExpireTime, :FileExtensions, :FilterType, :TimeFormat
        
        def initialize(secretkey=nil, expiretime=nil, fileextensions=nil, filtertype=nil, timeformat=nil)
          @SecretKey = secretkey
          @ExpireTime = expiretime
          @FileExtensions = fileextensions
          @FilterType = filtertype
          @TimeFormat = timeformat
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @ExpireTime = params['ExpireTime']
          @FileExtensions = params['FileExtensions']
          @FilterType = params['FilterType']
          @TimeFormat = params['TimeFormat']
        end
      end

      # 时间戳防盗链模式 D 配置
      # 时间戳防盗链模式 D 的访问 URL 格式为：http://DomainName/FileName?sign=md5hash&t=timestamp
      # 其中 timestamp 为十进制或十六进制 UNIX 时间戳；
      # md5hash：MD5（自定义密钥 + 文件路径 + timestamp）
      class AuthenticationTypeD < TencentCloud::Common::AbstractModel
        # @param SecretKey: 计算签名的密钥
        # 仅允许大小写字母与数字，长度 6~32 位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param ExpireTime: 签名过期时间设置
        # 单位为秒，最大可设置为 630720000
        # @type ExpireTime: Integer
        # @param FileExtensions: 鉴权/不做鉴权的文件扩展名列表设置
        # 如果包含字符 *  则表示所有文件
        # @type FileExtensions: Array
        # @param FilterType: whitelist：白名单，表示对除了 FileExtensions 列表之外的所有类型进行鉴权
        # blacklist：黑名单，表示仅对 FileExtensions 中的类型进行鉴权
        # @type FilterType: String
        # @param SignParam: 签名参数名设置
        # 仅允许大小写字母、数字或下划线，长度 1~100 位，不能以数字开头
        # @type SignParam: String
        # @param TimeParam: 时间戳参数名设置
        # 仅允许大小写字母、数字或下划线，长度 1~100 位，不能以数字开头
        # @type TimeParam: String
        # @param TimeFormat: 时间戳进制设置
        # dec：十进制
        # hex：十六进制
        # @type TimeFormat: String

        attr_accessor :SecretKey, :ExpireTime, :FileExtensions, :FilterType, :SignParam, :TimeParam, :TimeFormat
        
        def initialize(secretkey=nil, expiretime=nil, fileextensions=nil, filtertype=nil, signparam=nil, timeparam=nil, timeformat=nil)
          @SecretKey = secretkey
          @ExpireTime = expiretime
          @FileExtensions = fileextensions
          @FilterType = filtertype
          @SignParam = signparam
          @TimeParam = timeparam
          @TimeFormat = timeformat
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @ExpireTime = params['ExpireTime']
          @FileExtensions = params['FileExtensions']
          @FilterType = params['FilterType']
          @SignParam = params['SignParam']
          @TimeParam = params['TimeParam']
          @TimeFormat = params['TimeFormat']
        end
      end

      # s3源站回源鉴权。
      class AwsPrivateAccess < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，on/off。
        # @type Switch: String
        # @param AccessKey: 访问ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKey: String
        # @param SecretKey: 密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String

        attr_accessor :Switch, :AccessKey, :SecretKey
        
        def initialize(switch=nil, accesskey=nil, secretkey=nil)
          @Switch = switch
          @AccessKey = accesskey
          @SecretKey = secretkey
        end

        def deserialize(params)
          @Switch = params['Switch']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
        end
      end

      # 带宽封顶配置，默认为关闭状态
      class BandwidthAlert < TencentCloud::Common::AbstractModel
        # @param Switch: 带宽封顶配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param BpsThreshold: 带宽封顶阈值，单位为bps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BpsThreshold: Integer
        # @param CounterMeasure: 达到阈值后的操作
        # RESOLVE_DNS_TO_ORIGIN：直接回源，仅自有源站域名支持
        # RETURN_404：全部请求返回 404
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CounterMeasure: String
        # @param LastTriggerTime: 上次触发带宽封顶阈值的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTriggerTime: String

        attr_accessor :Switch, :BpsThreshold, :CounterMeasure, :LastTriggerTime
        
        def initialize(switch=nil, bpsthreshold=nil, countermeasure=nil, lasttriggertime=nil)
          @Switch = switch
          @BpsThreshold = bpsthreshold
          @CounterMeasure = countermeasure
          @LastTriggerTime = lasttriggertime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BpsThreshold = params['BpsThreshold']
          @CounterMeasure = params['CounterMeasure']
          @LastTriggerTime = params['LastTriggerTime']
        end
      end

      # Bot cookie策略
      class BotCookie < TencentCloud::Common::AbstractModel
        # @param Switch: on|off
        # @type Switch: String
        # @param RuleType: 规则类型，当前只有all
        # @type RuleType: String
        # @param RuleValue: 规则值，['*']
        # @type RuleValue: Array
        # @param Action: 执行动作，monitor|intercept|redirect|captcha
        # @type Action: String
        # @param RedirectUrl: 重定向时设置的重定向页面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectUrl: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Switch, :RuleType, :RuleValue, :Action, :RedirectUrl, :UpdateTime
        
        def initialize(switch=nil, ruletype=nil, rulevalue=nil, action=nil, redirecturl=nil, updatetime=nil)
          @Switch = switch
          @RuleType = ruletype
          @RuleValue = rulevalue
          @Action = action
          @RedirectUrl = redirecturl
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RuleType = params['RuleType']
          @RuleValue = params['RuleValue']
          @Action = params['Action']
          @RedirectUrl = params['RedirectUrl']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Bot js策略
      class BotJavaScript < TencentCloud::Common::AbstractModel
        # @param Switch: on|off
        # @type Switch: String
        # @param RuleType: 规则类型，当前只有file
        # @type RuleType: String
        # @param RuleValue: 规则值，['html', 'htm']
        # @type RuleValue: Array
        # @param Action: 执行动作，monitor|intercept|redirect|captcha
        # @type Action: String
        # @param RedirectUrl: 重定向时设置的重定向页面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectUrl: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Switch, :RuleType, :RuleValue, :Action, :RedirectUrl, :UpdateTime
        
        def initialize(switch=nil, ruletype=nil, rulevalue=nil, action=nil, redirecturl=nil, updatetime=nil)
          @Switch = switch
          @RuleType = ruletype
          @RuleValue = rulevalue
          @Action = action
          @RedirectUrl = redirecturl
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RuleType = params['RuleType']
          @RuleValue = params['RuleValue']
          @Action = params['Action']
          @RedirectUrl = params['RedirectUrl']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 域名基础配置信息，含 CNAME、状态、业务类型、加速区域、创建时间、更新时间、源站配置等。
      class BriefDomain < TencentCloud::Common::AbstractModel
        # @param ResourceId: 域名 ID
        # @type ResourceId: String
        # @param AppId: 腾讯云账号 ID
        # @type AppId: Integer
        # @param Domain: 加速域名
        # @type Domain: String
        # @param Cname: 域名对应的 CNAME 地址
        # @type Cname: String
        # @param Status: 加速服务状态
        # rejected：域名审核未通过，域名备案过期/被注销导致
        # processing：部署中
        # online：已启动
        # offline：已关闭
        # @type Status: String
        # @param ProjectId: 项目 ID，可前往腾讯云项目管理页面查看
        # @type ProjectId: Integer
        # @param ServiceType: 域名业务类型
        # web：静态加速
        # download：下载加速
        # media：流媒体点播加速
        # @type ServiceType: String
        # @param CreateTime: 域名创建时间
        # @type CreateTime: String
        # @param UpdateTime: 域名更新时间
        # @type UpdateTime: String
        # @param Origin: 源站配置详情
        # @type Origin: :class:`Tencentcloud::Cdn.v20180606.models.Origin`
        # @param Disable: 域名封禁状态
        # normal：正常状态
        # overdue：账号欠费导致域名关闭，充值完成后可自行启动加速服务
        # malicious：域名出现恶意行为，强制关闭加速服务
        # ddos：域名被大规模 DDoS 攻击，关闭加速服务
        # idle：域名超过 90 天内无任何操作、数据产生，判定为不活跃域名自动关闭加速服务，可自行启动加速服务
        # unlicensed：域名未备案/备案注销，自动关闭加速服务，备案完成后可自行启动加速服务
        # capping：触发配置的带宽阈值上限
        # readonly：域名存在特殊配置，被锁定
        # @type Disable: String
        # @param Area: 加速区域
        # mainland：中国境内加速
        # overseas：中国境外加速
        # global：全球加速
        # @type Area: String
        # @param Readonly: 域名锁定状态
        # normal：未锁定
        # mainland：中国境内锁定
        # overseas：中国境外锁定
        # global：全球锁定
        # @type Readonly: String
        # @param Product: 域名所属产品，cdn/ecdn
        # @type Product: String

        attr_accessor :ResourceId, :AppId, :Domain, :Cname, :Status, :ProjectId, :ServiceType, :CreateTime, :UpdateTime, :Origin, :Disable, :Area, :Readonly, :Product
        
        def initialize(resourceid=nil, appid=nil, domain=nil, cname=nil, status=nil, projectid=nil, servicetype=nil, createtime=nil, updatetime=nil, origin=nil, disable=nil, area=nil, readonly=nil, product=nil)
          @ResourceId = resourceid
          @AppId = appid
          @Domain = domain
          @Cname = cname
          @Status = status
          @ProjectId = projectid
          @ServiceType = servicetype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Origin = origin
          @Disable = disable
          @Area = area
          @Readonly = readonly
          @Product = product
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppId = params['AppId']
          @Domain = params['Domain']
          @Cname = params['Cname']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @ServiceType = params['ServiceType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          @Disable = params['Disable']
          @Area = params['Area']
          @Readonly = params['Readonly']
          @Product = params['Product']
        end
      end

      # 节点缓存过期时间配置，分为以下两种：
      # + 基础版缓存过期规则配置
      # + 高级版缓存过期规则配置
      class Cache < TencentCloud::Common::AbstractModel
        # @param SimpleCache: 基础缓存过期时间配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SimpleCache: :class:`Tencentcloud::Cdn.v20180606.models.SimpleCache`
        # @param AdvancedCache: 高级缓存过期时间配置（功能灰度中，尚未全量）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedCache: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedCache`
        # @param RuleCache: 高级路径缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCache: Array

        attr_accessor :SimpleCache, :AdvancedCache, :RuleCache
        
        def initialize(simplecache=nil, advancedcache=nil, rulecache=nil)
          @SimpleCache = simplecache
          @AdvancedCache = advancedcache
          @RuleCache = rulecache
        end

        def deserialize(params)
          unless params['SimpleCache'].nil?
            @SimpleCache = SimpleCache.new
            @SimpleCache.deserialize(params['SimpleCache'])
          end
          unless params['AdvancedCache'].nil?
            @AdvancedCache = AdvancedCache.new
            @AdvancedCache.deserialize(params['AdvancedCache'])
          end
          unless params['RuleCache'].nil?
            @RuleCache = []
            params['RuleCache'].each do |i|
              rulecache_tmp = RuleCache.new
              rulecache_tmp.deserialize(i)
              @RuleCache << rulecache_tmp
            end
          end
        end
      end

      # 路径缓存缓存配置
      class CacheConfigCache < TencentCloud::Common::AbstractModel
        # @param Switch: 缓存配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param CacheTime: 缓存过期时间设置
        # 单位为秒，最大可设置为 365 天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheTime: Integer
        # @param CompareMaxAge: 高级缓存过期配置，开启时会对比源站返回的 max-age 值与 CacheRules 中设置的缓存过期时间，取最小值在节点进行缓存
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareMaxAge: String
        # @param IgnoreCacheControl: 强制缓存
        # on：开启
        # off：关闭
        # 默认为关闭状态，开启后，源站返回的 no-store、no-cache 资源，也将按照 CacheRules 规则进行缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCacheControl: String
        # @param IgnoreSetCookie: 当源站返回Set-Cookie头部时，节点是否缓存该头部及body
        # on：开启，不缓存该头部及body
        # off：关闭，遵循用户自定义的节点缓存规则
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreSetCookie: String

        attr_accessor :Switch, :CacheTime, :CompareMaxAge, :IgnoreCacheControl, :IgnoreSetCookie
        
        def initialize(switch=nil, cachetime=nil, comparemaxage=nil, ignorecachecontrol=nil, ignoresetcookie=nil)
          @Switch = switch
          @CacheTime = cachetime
          @CompareMaxAge = comparemaxage
          @IgnoreCacheControl = ignorecachecontrol
          @IgnoreSetCookie = ignoresetcookie
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CacheTime = params['CacheTime']
          @CompareMaxAge = params['CompareMaxAge']
          @IgnoreCacheControl = params['IgnoreCacheControl']
          @IgnoreSetCookie = params['IgnoreSetCookie']
        end
      end

      # 路径缓存遵循源站配置
      class CacheConfigFollowOrigin < TencentCloud::Common::AbstractModel
        # @param Switch: 遵循源站配置开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 路径缓存不缓存配置
      class CacheConfigNoCache < TencentCloud::Common::AbstractModel
        # @param Switch: 不缓存配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Revalidate: 总是回源站校验
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Revalidate: String

        attr_accessor :Switch, :Revalidate
        
        def initialize(switch=nil, revalidate=nil)
          @Switch = switch
          @Revalidate = revalidate
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Revalidate = params['Revalidate']
        end
      end

      # 缓存键配置（过滤参数配置）
      class CacheKey < TencentCloud::Common::AbstractModel
        # @param FullUrlCache: 是否开启全路径缓存
        # on：开启全路径缓存（即关闭参数过滤）
        # off：关闭全路径缓存（即开启参数过滤）
        # @type FullUrlCache: String
        # @param IgnoreCase: 是否忽略大小写缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCase: String
        # @param QueryString: CacheKey中包含请求参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Cdn.v20180606.models.QueryStringKey`
        # @param Cookie: CacheKey中包含Cookie
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cookie: :class:`Tencentcloud::Cdn.v20180606.models.CookieKey`
        # @param Header: CacheKey中包含请求头部
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Header: :class:`Tencentcloud::Cdn.v20180606.models.HeaderKey`
        # @param CacheTag: CacheKey中包含自定义字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheTag: :class:`Tencentcloud::Cdn.v20180606.models.CacheTagKey`
        # @param Scheme: CacheKey中包含请求协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheme: :class:`Tencentcloud::Cdn.v20180606.models.SchemeKey`
        # @param KeyRules: 分路径缓存键配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyRules: Array

        attr_accessor :FullUrlCache, :IgnoreCase, :QueryString, :Cookie, :Header, :CacheTag, :Scheme, :KeyRules
        
        def initialize(fullurlcache=nil, ignorecase=nil, querystring=nil, cookie=nil, header=nil, cachetag=nil, scheme=nil, keyrules=nil)
          @FullUrlCache = fullurlcache
          @IgnoreCase = ignorecase
          @QueryString = querystring
          @Cookie = cookie
          @Header = header
          @CacheTag = cachetag
          @Scheme = scheme
          @KeyRules = keyrules
        end

        def deserialize(params)
          @FullUrlCache = params['FullUrlCache']
          @IgnoreCase = params['IgnoreCase']
          unless params['QueryString'].nil?
            @QueryString = QueryStringKey.new
            @QueryString.deserialize(params['QueryString'])
          end
          unless params['Cookie'].nil?
            @Cookie = CookieKey.new
            @Cookie.deserialize(params['Cookie'])
          end
          unless params['Header'].nil?
            @Header = HeaderKey.new
            @Header.deserialize(params['Header'])
          end
          unless params['CacheTag'].nil?
            @CacheTag = CacheTagKey.new
            @CacheTag.deserialize(params['CacheTag'])
          end
          unless params['Scheme'].nil?
            @Scheme = SchemeKey.new
            @Scheme.deserialize(params['Scheme'])
          end
          unless params['KeyRules'].nil?
            @KeyRules = []
            params['KeyRules'].each do |i|
              keyrule_tmp = KeyRule.new
              keyrule_tmp.deserialize(i)
              @KeyRules << keyrule_tmp
            end
          end
        end
      end

      # 违规资源封禁/解封返回类型
      class CacheOptResult < TencentCloud::Common::AbstractModel
        # @param SuccessUrls: 成功的url列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessUrls: Array
        # @param FailUrls: 失败的url列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailUrls: Array

        attr_accessor :SuccessUrls, :FailUrls
        
        def initialize(successurls=nil, failurls=nil)
          @SuccessUrls = successurls
          @FailUrls = failurls
        end

        def deserialize(params)
          @SuccessUrls = params['SuccessUrls']
          @FailUrls = params['FailUrls']
        end
      end

      # 组成CacheKey的一部分
      class CacheTagKey < TencentCloud::Common::AbstractModel
        # @param Switch: 是否使用CacheTag作为CacheKey的一部分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Value: 自定义CacheTag的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Switch, :Value
        
        def initialize(switch=nil, value=nil)
          @Switch = switch
          @Value = value
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Value = params['Value']
        end
      end

      # 下行限速配置规则，最多可配置 100 条
      class CappingRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # @type RuleType: String
        # @param RulePaths: RuleType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
        # @type RulePaths: Array
        # @param KBpsThreshold: 下行速度值设置，单位为 KB/s
        # @type KBpsThreshold: Integer

        attr_accessor :RuleType, :RulePaths, :KBpsThreshold
        
        def initialize(ruletype=nil, rulepaths=nil, kbpsthreshold=nil)
          @RuleType = ruletype
          @RulePaths = rulepaths
          @KBpsThreshold = kbpsthreshold
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RulePaths = params['RulePaths']
          @KBpsThreshold = params['KBpsThreshold']
        end
      end

      # 访问明细数据类型
      class CdnData < TencentCloud::Common::AbstractModel
        # @param Metric: 查询指定的指标名称：
        # flux：流量，单位为 byte
        # bandwidth：带宽，单位为 bps
        # request：请求数，单位为 次
        # fluxHitRate：流量命中率，单位为 %
        # statusCode：状态码，返回 2XX、3XX、4XX、5XX 汇总数据，单位为 个
        # 2XX：返回 2XX 状态码汇总及各 2 开头状态码数据，单位为 个
        # 3XX：返回 3XX 状态码汇总及各 3 开头状态码数据，单位为 个
        # 4XX：返回 4XX 状态码汇总及各 4 开头状态码数据，单位为 个
        # 5XX：返回 5XX 状态码汇总及各 5 开头状态码数据，单位为 个
        # 或指定查询的某一具体状态码
        # @type Metric: String
        # @param DetailData: 明细数据组合
        # @type DetailData: Array
        # @param SummarizedData: 汇总数据组合
        # @type SummarizedData: :class:`Tencentcloud::Cdn.v20180606.models.SummarizedData`

        attr_accessor :Metric, :DetailData, :SummarizedData
        
        def initialize(metric=nil, detaildata=nil, summarizeddata=nil)
          @Metric = metric
          @DetailData = detaildata
          @SummarizedData = summarizeddata
        end

        def deserialize(params)
          @Metric = params['Metric']
          unless params['DetailData'].nil?
            @DetailData = []
            params['DetailData'].each do |i|
              timestampdata_tmp = TimestampData.new
              timestampdata_tmp.deserialize(i)
              @DetailData << timestampdata_tmp
            end
          end
          unless params['SummarizedData'].nil?
            @SummarizedData = SummarizedData.new
            @SummarizedData.deserialize(params['SummarizedData'])
          end
        end
      end

      # IP 属性信息
      class CdnIp < TencentCloud::Common::AbstractModel
        # @param Ip: 指定查询的 IP
        # @type Ip: String
        # @param Platform: IP 归属：
        # yes：节点归属于腾讯云 CDN
        # no：节点不属于腾讯云 CDN
        # @type Platform: String
        # @param Location: 节点所处的省份/国家
        # unknown 表示节点位置未知
        # @type Location: String
        # @param History: 节点上下线历史记录
        # @type History: Array
        # @param Area: 节点的所在区域
        # mainland：中国境内加速节点
        # overseas：中国境外加速节点
        # unknown：服务地域无法获取
        # @type Area: String
        # @param City: 节点的所在城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String

        attr_accessor :Ip, :Platform, :Location, :History, :Area, :City
        
        def initialize(ip=nil, platform=nil, location=nil, history=nil, area=nil, city=nil)
          @Ip = ip
          @Platform = platform
          @Location = location
          @History = history
          @Area = area
          @City = city
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Platform = params['Platform']
          @Location = params['Location']
          unless params['History'].nil?
            @History = []
            params['History'].each do |i|
              cdniphistory_tmp = CdnIpHistory.new
              cdniphistory_tmp.deserialize(i)
              @History << cdniphistory_tmp
            end
          end
          @Area = params['Area']
          @City = params['City']
        end
      end

      # CDN 节点上下线历史记录
      class CdnIpHistory < TencentCloud::Common::AbstractModel
        # @param Status: 操作类型
        # online：节点上线
        # offline：节点下线
        # @type Status: String
        # @param Datetime: 操作类型对应的操作时间
        # 当该值为 null 时表示无历史状态变更记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Datetime: String

        attr_accessor :Status, :Datetime
        
        def initialize(status=nil, datetime=nil)
          @Status = status
          @Datetime = datetime
        end

        def deserialize(params)
          @Status = params['Status']
          @Datetime = params['Datetime']
        end
      end

      # https 客户端证书配置
      class ClientCert < TencentCloud::Common::AbstractModel
        # @param Certificate: 客户端证书
        # PEM 格式，需要进行 Base 64 编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: String
        # @param CertName: 客户端证书名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertName: String
        # @param ExpireTime: 证书过期时间
        # 作为入参时无需填充
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书颁发时间
        # 作为入参时无需填充
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

      # 客户端信息
      class ClientInfo < TencentCloud::Common::AbstractModel
        # @param ProvName: 省份。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProvName: String
        # @param Country: 国家。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: String
        # @param IspName: 运营商。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IspName: String
        # @param Ip: 客户端IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String

        attr_accessor :ProvName, :Country, :IspName, :Ip
        
        def initialize(provname=nil, country=nil, ispname=nil, ip=nil)
          @ProvName = provname
          @Country = country
          @IspName = ispname
          @Ip = ip
        end

        def deserialize(params)
          @ProvName = params['ProvName']
          @Country = params['Country']
          @IspName = params['IspName']
          @Ip = params['Ip']
        end
      end

      # CLS日志搜索对象
      class ClsLogObject < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param TopicName: 主题名字
        # @type TopicName: String
        # @param Timestamp: 日志时间
        # @type Timestamp: String
        # @param Content: 日志内容
        # @type Content: String
        # @param Filename: 采集路径
        # @type Filename: String
        # @param Source: 日志来源设备
        # @type Source: String

        attr_accessor :TopicId, :TopicName, :Timestamp, :Content, :Filename, :Source
        
        def initialize(topicid=nil, topicname=nil, timestamp=nil, content=nil, filename=nil, source=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Timestamp = timestamp
          @Content = content
          @Filename = filename
          @Source = source
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Timestamp = params['Timestamp']
          @Content = params['Content']
          @Filename = params['Filename']
          @Source = params['Source']
        end
      end

      # Cls日志搜索结果
      class ClsSearchLogs < TencentCloud::Common::AbstractModel
        # @param Context: 获取更多检索结果的游标
        # @type Context: String
        # @param Listover: 搜索结果是否已经全部返回
        # @type Listover: Boolean
        # @param Results: 日志内容信息
        # @type Results: Array

        attr_accessor :Context, :Listover, :Results
        
        def initialize(context=nil, listover=nil, results=nil)
          @Context = context
          @Listover = listover
          @Results = results
        end

        def deserialize(params)
          @Context = params['Context']
          @Listover = params['Listover']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              clslogobject_tmp = ClsLogObject.new
              clslogobject_tmp.deserialize(i)
              @Results << clslogobject_tmp
            end
          end
        end
      end

      # 是否兼容旧版配置
      class Compatibility < TencentCloud::Common::AbstractModel
        # @param Code: 兼容标志状态码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer

        attr_accessor :Code
        
        def initialize(code=nil)
          @Code = code
        end

        def deserialize(params)
          @Code = params['Code']
        end
      end

      # 智能压缩配置，默认对 js、html、css、xml、json、shtml、htm 后缀且大小为 256 ~ 2097152 字节的文件进行 GZIP 压缩
      class Compression < TencentCloud::Common::AbstractModel
        # @param Switch: 智能压缩配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param CompressionRules: 压缩规则数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompressionRules: Array

        attr_accessor :Switch, :CompressionRules
        
        def initialize(switch=nil, compressionrules=nil)
          @Switch = switch
          @CompressionRules = compressionrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['CompressionRules'].nil?
            @CompressionRules = []
            params['CompressionRules'].each do |i|
              compressionrule_tmp = CompressionRule.new
              compressionrule_tmp.deserialize(i)
              @CompressionRules << compressionrule_tmp
            end
          end
        end
      end

      # 压缩规则配置，最多可设置 100 条
      class CompressionRule < TencentCloud::Common::AbstractModel
        # @param Compress: true：需要设置为 ture，启用压缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compress: Boolean
        # @param FileExtensions: 根据文件后缀类型压缩
        # 例如 jpg、txt
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileExtensions: Array
        # @param MinLength: 触发压缩的文件长度最小值，单位为字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinLength: Integer
        # @param MaxLength: 触发压缩的文件长度最大值，单位为字节数
        # 最大可设置为 30MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxLength: Integer
        # @param Algorithms: 文件压缩算法
        # gzip：指定 GZIP 压缩
        # brotli：指定Brotli压缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Algorithms: Array

        attr_accessor :Compress, :FileExtensions, :MinLength, :MaxLength, :Algorithms
        
        def initialize(compress=nil, fileextensions=nil, minlength=nil, maxlength=nil, algorithms=nil)
          @Compress = compress
          @FileExtensions = fileextensions
          @MinLength = minlength
          @MaxLength = maxlength
          @Algorithms = algorithms
        end

        def deserialize(params)
          @Compress = params['Compress']
          @FileExtensions = params['FileExtensions']
          @MinLength = params['MinLength']
          @MaxLength = params['MaxLength']
          @Algorithms = params['Algorithms']
        end
      end

      # 组成CacheKey的一部分
      class CookieKey < TencentCloud::Common::AbstractModel
        # @param Switch: on | off 是否使用Cookie作为Cache的一部分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Value: 使用的cookie，';' 分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Switch, :Value
        
        def initialize(switch=nil, value=nil)
          @Switch = switch
          @Value = value
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Value = params['Value']
        end
      end

      # CreateClsLogTopic请求参数结构体
      class CreateClsLogTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String
        # @param DomainAreaConfigs: 域名区域信息
        # @type DomainAreaConfigs: Array

        attr_accessor :TopicName, :LogsetId, :Channel, :DomainAreaConfigs
        
        def initialize(topicname=nil, logsetid=nil, channel=nil, domainareaconfigs=nil)
          @TopicName = topicname
          @LogsetId = logsetid
          @Channel = channel
          @DomainAreaConfigs = domainareaconfigs
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @LogsetId = params['LogsetId']
          @Channel = params['Channel']
          unless params['DomainAreaConfigs'].nil?
            @DomainAreaConfigs = []
            params['DomainAreaConfigs'].each do |i|
              domainareaconfig_tmp = DomainAreaConfig.new
              domainareaconfig_tmp.deserialize(i)
              @DomainAreaConfigs << domainareaconfig_tmp
            end
          end
        end
      end

      # CreateClsLogTopic返回参数结构体
      class CreateClsLogTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicId, :RequestId
        
        def initialize(topicid=nil, requestid=nil)
          @TopicId = topicid
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDiagnoseUrl请求参数结构体
      class CreateDiagnoseUrlRequest < TencentCloud::Common::AbstractModel
        # @param Url: 需诊断的url，形如：http://www.test.com/test.txt。
        # @type Url: String

        attr_accessor :Url
        
        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # CreateDiagnoseUrl返回参数结构体
      class CreateDiagnoseUrlResponse < TencentCloud::Common::AbstractModel
        # @param DiagnoseLink: 系统生成的诊断链接，一个诊断链接最多可访问10次，有效期为24h。
        # @type DiagnoseLink: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiagnoseLink, :RequestId
        
        def initialize(diagnoselink=nil, requestid=nil)
          @DiagnoseLink = diagnoselink
          @RequestId = requestid
        end

        def deserialize(params)
          @DiagnoseLink = params['DiagnoseLink']
          @RequestId = params['RequestId']
        end
      end

      # CreateEdgePackTask请求参数结构体
      class CreateEdgePackTaskRequest < TencentCloud::Common::AbstractModel
        # @param CosBucket: apk 所在的 cos 存储桶, 如 edgepack-xxxxxxxx
        # @type CosBucket: String
        # @param CosUriFrom: apk 源文件的存储路径, 如 /apk/xxxx.apk
        # @type CosUriFrom: String
        # @param BlockID: BlockID 的值, WALLE为1903654775(0x71777777)，VasDolly为2282837503(0x881155ff),传0或不传时默认为 WALLE 方案
        # @type BlockID: Integer
        # @param CosUriTo: 拓展之后的 apk 目标存储路径,如 /out/xxxx.apk
        # @type CosUriTo: String

        attr_accessor :CosBucket, :CosUriFrom, :BlockID, :CosUriTo
        
        def initialize(cosbucket=nil, cosurifrom=nil, blockid=nil, cosurito=nil)
          @CosBucket = cosbucket
          @CosUriFrom = cosurifrom
          @BlockID = blockid
          @CosUriTo = cosurito
        end

        def deserialize(params)
          @CosBucket = params['CosBucket']
          @CosUriFrom = params['CosUriFrom']
          @BlockID = params['BlockID']
          @CosUriTo = params['CosUriTo']
        end
      end

      # CreateEdgePackTask返回参数结构体
      class CreateEdgePackTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateScdnDomain请求参数结构体
      class CreateScdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Waf: Web 攻击防护（WAF）配置
        # @type Waf: :class:`Tencentcloud::Cdn.v20180606.models.ScdnWafConfig`
        # @param Acl: 自定义防护策略配置
        # @type Acl: :class:`Tencentcloud::Cdn.v20180606.models.ScdnAclConfig`
        # @param CC: CC 防护配置，目前 CC 防护默认开启
        # @type CC: :class:`Tencentcloud::Cdn.v20180606.models.ScdnConfig`
        # @param Ddos: DDOS 防护配置，目前 DDoS 防护默认开启
        # @type Ddos: :class:`Tencentcloud::Cdn.v20180606.models.ScdnDdosConfig`
        # @param Bot: BOT 防护配置
        # @type Bot: :class:`Tencentcloud::Cdn.v20180606.models.ScdnBotConfig`

        attr_accessor :Domain, :Waf, :Acl, :CC, :Ddos, :Bot
        
        def initialize(domain=nil, waf=nil, acl=nil, cc=nil, ddos=nil, bot=nil)
          @Domain = domain
          @Waf = waf
          @Acl = acl
          @CC = cc
          @Ddos = ddos
          @Bot = bot
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['Waf'].nil?
            @Waf = ScdnWafConfig.new
            @Waf.deserialize(params['Waf'])
          end
          unless params['Acl'].nil?
            @Acl = ScdnAclConfig.new
            @Acl.deserialize(params['Acl'])
          end
          unless params['CC'].nil?
            @CC = ScdnConfig.new
            @CC.deserialize(params['CC'])
          end
          unless params['Ddos'].nil?
            @Ddos = ScdnDdosConfig.new
            @Ddos.deserialize(params['Ddos'])
          end
          unless params['Bot'].nil?
            @Bot = ScdnBotConfig.new
            @Bot.deserialize(params['Bot'])
          end
        end
      end

      # CreateScdnDomain返回参数结构体
      class CreateScdnDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建结果，Success表示成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateScdnFailedLogTask请求参数结构体
      class CreateScdnFailedLogTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 重试失败任务的taskID
        # @type TaskId: String
        # @param Area: 地域：mainland或overseas
        # @type Area: String

        attr_accessor :TaskId, :Area
        
        def initialize(taskid=nil, area=nil)
          @TaskId = taskid
          @Area = area
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Area = params['Area']
        end
      end

      # CreateScdnFailedLogTask返回参数结构体
      class CreateScdnFailedLogTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建结果,
        # "0" -> 创建成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateScdnLogTask请求参数结构体
      class CreateScdnLogTaskRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 防护类型
        # Mode 映射如下：
        #   waf = "Web攻击"
        #   cc = "CC攻击"
        #   bot = "Bot攻击"
        # @type Mode: String
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        # @type EndTime: String
        # @param Domain: 指定域名查询, 不填默认查询全部域名
        # @type Domain: String
        # @param AttackType: 指定攻击类型, 不填默认查询全部攻击类型
        # AttackType 映射如下:
        #   other = '未知类型'
        #   malicious_scan = "恶意扫描"
        #   sql_inject = "SQL注入攻击"
        #   xss = "XSS攻击"
        #   cmd_inject = "命令注入攻击"
        #   ldap_inject = "LDAP注入攻击"
        #   ssi_inject = "SSI注入攻击"
        #   xml_inject = "XML注入攻击"
        #   web_service = "WEB服务漏洞攻击"
        #   web_app = "WEB应用漏洞攻击"
        #   path_traversal = "路径跨越攻击"
        #   illegal_access_core_file = "核心文件非法访问"
        #   trojan_horse = "木马后门攻击"
        #   csrf = "CSRF攻击"
        #   malicious_file_upload= '恶意文件上传'
        #   js = "JS主动探测"
        #   cookie = "Cookie指纹"
        # @type AttackType: String
        # @param DefenceMode: 指定执行动作, 不填默认查询全部执行动作
        # DefenceMode 映射如下：
        #   observe = '观察模式'
        #   intercept = '拦截模式'
        #   captcha = "验证码"
        #   redirect = "重定向"
        # @type DefenceMode: String
        # @param Ip: 不填为全部ip
        # @type Ip: String
        # @param Domains: 指定域名查询, 与 Domain 参数同时有值时使用 Domains 参数，不填默认查询全部域名，指定域名查询时最多支持同时选择 5 个域名查询
        # @type Domains: Array
        # @param AttackTypes: 指定攻击类型查询, 与 AttackType 参数同时有值时使用 AttackTypes 参数，不填默认查询全部攻击类型
        # @type AttackTypes: Array
        # @param Conditions: 查询条件
        # @type Conditions: Array
        # @param Source: 来源产品 cdn ecdn
        # @type Source: String
        # @param Area: 地域：mainland 或 overseas
        # @type Area: String

        attr_accessor :Mode, :StartTime, :EndTime, :Domain, :AttackType, :DefenceMode, :Ip, :Domains, :AttackTypes, :Conditions, :Source, :Area
        
        def initialize(mode=nil, starttime=nil, endtime=nil, domain=nil, attacktype=nil, defencemode=nil, ip=nil, domains=nil, attacktypes=nil, conditions=nil, source=nil, area=nil)
          @Mode = mode
          @StartTime = starttime
          @EndTime = endtime
          @Domain = domain
          @AttackType = attacktype
          @DefenceMode = defencemode
          @Ip = ip
          @Domains = domains
          @AttackTypes = attacktypes
          @Conditions = conditions
          @Source = source
          @Area = area
        end

        def deserialize(params)
          @Mode = params['Mode']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Domain = params['Domain']
          @AttackType = params['AttackType']
          @DefenceMode = params['DefenceMode']
          @Ip = params['Ip']
          @Domains = params['Domains']
          @AttackTypes = params['AttackTypes']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              scdneventlogconditions_tmp = ScdnEventLogConditions.new
              scdneventlogconditions_tmp.deserialize(i)
              @Conditions << scdneventlogconditions_tmp
            end
          end
          @Source = params['Source']
          @Area = params['Area']
        end
      end

      # CreateScdnLogTask返回参数结构体
      class CreateScdnLogTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建结果,
        # "0" -> 创建成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateVerifyRecord请求参数结构体
      class CreateVerifyRecordRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 要取回的域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # CreateVerifyRecord返回参数结构体
      class CreateVerifyRecordResponse < TencentCloud::Common::AbstractModel
        # @param SubDomain: 子解析
        # @type SubDomain: String
        # @param Record: 解析值
        # @type Record: String
        # @param RecordType: 解析类型
        # @type RecordType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubDomain, :Record, :RecordType, :RequestId
        
        def initialize(subdomain=nil, record=nil, recordtype=nil, requestid=nil)
          @SubDomain = subdomain
          @Record = record
          @RecordType = recordtype
          @RequestId = requestid
        end

        def deserialize(params)
          @SubDomain = params['SubDomain']
          @Record = params['Record']
          @RecordType = params['RecordType']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCdnDomain请求参数结构体
      class DeleteCdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # 域名状态需要为【已停用】
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DeleteCdnDomain返回参数结构体
      class DeleteCdnDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClsLogTopic请求参数结构体
      class DeleteClsLogTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String

        attr_accessor :TopicId, :LogsetId, :Channel
        
        def initialize(topicid=nil, logsetid=nil, channel=nil)
          @TopicId = topicid
          @LogsetId = logsetid
          @Channel = channel
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @LogsetId = params['LogsetId']
          @Channel = params['Channel']
        end
      end

      # DeleteClsLogTopic返回参数结构体
      class DeleteClsLogTopicResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScdnDomain请求参数结构体
      class DeleteScdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DeleteScdnDomain返回参数结构体
      class DeleteScdnDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建结果，Success表示成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingData请求参数结构体
      class DescribeBillingDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        # 根据指定时间粒度参数不同，会进行向前取整，如指定起始时间为 2018-09-04 10:40:00 按小时粒度查询，返回的第一个数据对应时间点为 2018-09-04 10:00:00
        # 起始时间与结束时间间隔小于等于 90 天
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        # 根据指定时间粒度参数不同，会进行向前取整，如指定结束时间为  2018-09-04 10:40:00 按小时粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:00:00
        # 起始时间与结束时间间隔小于等于 90 天
        # @type EndTime: String
        # @param Interval: 时间粒度，支持模式如下：
        # min：1 分钟粒度，查询区间需要小于等于 24 小时
        # 5min：5 分钟粒度，查询区间需要小于等于 31 天
        # hour：1 小时粒度，查询区间需要小于等于 31 天内
        # day：天粒度，查询区间需要大于 31 天

        # Area 字段为 overseas 时暂不支持1分钟粒度数据查询
        # @type Interval: String
        # @param Domain: 指定域名查询计费数据
        # @type Domain: String
        # @param Project: 指定项目 ID 查询，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 若 Domain 参数填充了具体域名信息，则返回该域名的计费数据，而非指定项目计费数据
        # @type Project: Integer
        # @param Area: 指定加速区域查询计费数据：
        # mainland：中国境内
        # overseas：中国境外
        # 不填充时，默认为 mainland
        # @type Area: String
        # @param District: Area 为 overseas 时，指定国家/地区查询
        # 省份、国家/地区编码可以查看 [省份编码映射](https://cloud.tencent.com/document/product/228/6316#.E7.9C.81.E4.BB.BD.E6.98.A0.E5.B0.84)
        # 不填充时，查询所有国家/地区
        # @type District: Integer
        # @param Metric: 计费统计类型
        # flux：计费流量
        # bandwidth：计费带宽
        # 默认为 bandwidth
        # @type Metric: String
        # @param Product: 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        # @type Product: String

        attr_accessor :StartTime, :EndTime, :Interval, :Domain, :Project, :Area, :District, :Metric, :Product
        
        def initialize(starttime=nil, endtime=nil, interval=nil, domain=nil, project=nil, area=nil, district=nil, metric=nil, product=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Interval = interval
          @Domain = domain
          @Project = project
          @Area = area
          @District = district
          @Metric = metric
          @Product = product
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Interval = params['Interval']
          @Domain = params['Domain']
          @Project = params['Project']
          @Area = params['Area']
          @District = params['District']
          @Metric = params['Metric']
          @Product = params['Product']
        end
      end

      # DescribeBillingData返回参数结构体
      class DescribeBillingDataResponse < TencentCloud::Common::AbstractModel
        # @param Interval: 时间粒度，根据查询时传递参数指定：
        # min：1 分钟粒度
        # 5min：5 分钟粒度
        # hour：1 小时粒度
        # day：天粒度
        # @type Interval: String
        # @param Data: 数据明细
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Interval, :Data, :RequestId
        
        def initialize(interval=nil, data=nil, requestid=nil)
          @Interval = interval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Interval = params['Interval']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resourcebillingdata_tmp = ResourceBillingData.new
              resourcebillingdata_tmp.deserialize(i)
              @Data << resourcebillingdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCdnData请求参数结构体
      class DescribeCdnDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        # 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的第一个数据对应时间点为 2018-09-04 10:00:00
        # 起始时间与结束时间间隔小于等于 90 天
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        # 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:00:00
        # 起始时间与结束时间间隔小于等于 90 天
        # @type EndTime: String
        # @param Metric: 指定查询指标，支持的类型有：
        # flux：流量，单位为 byte
        # fluxIn：上行流量，单位为 byte，该指标仅ecdn支持查询
        # fluxOut：下行流量，单位为 byte，该指标仅ecdn支持查询
        # bandwidth：带宽，单位为 bps
        # bandwidthIn：上行带宽，单位为 bps，该指标仅ecdn支持查询
        # bandwidthOut：下行带宽，单位为 bps，该指标仅ecdn支持查询
        # request：请求数，单位为 次
        # hitRequest：命中请求数，单位为 次
        # requestHitRate：请求命中率，单位为 %，保留小数点后两位
        # hitFlux：命中流量，单位为byte
        # fluxHitRate：流量命中率，单位为 %，保留小数点后两位
        # statusCode：状态码，返回 2xx、3xx、4xx、5xx 汇总数据，单位为 个
        # 2xx：返回 2xx 状态码汇总及各 2 开头状态码数据，单位为 个
        # 3xx：返回 3xx 状态码汇总及各 3 开头状态码数据，单位为 个
        # 4xx：返回 4xx 状态码汇总及各 4 开头状态码数据，单位为 个
        # 5xx：返回 5xx 状态码汇总及各 5 开头状态码数据，单位为 个
        # 支持指定具体状态码查询，若未产生过，则返回为空
        # @type Metric: String
        # @param Domains: 指定查询域名列表
        # 最多可一次性查询 30 个加速域名明细
        # @type Domains: Array
        # @param Project: 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        # @type Project: Integer
        # @param Interval: 时间粒度，支持以下几种模式：
        # min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据（指定查询服务地域为中国境外时不支持 1 分钟粒度）
        # 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        # hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        # day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        # @type Interval: String
        # @param Detail: 多域名查询时，默认（false)返回多个域名的汇总数据
        # 可按需指定为 true，返回每一个 Domain 的明细数据（statusCode 指标暂不支持）
        # @type Detail: Boolean
        # @param Isp: 查询中国境内CDN数据时，指定运营商查询，不填充表示查询所有运营商
        # 运营商编码可以查看 [运营商编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        # 指定运营商查询时，不可同时指定省份、IP协议查询
        # @type Isp: Integer
        # @param District: 查询中国境内CDN数据时，指定省份查询，不填充表示查询所有省份
        # 查询中国境外CDN数据时，指定国家/地区查询，不填充表示查询所有国家/地区
        # 省份、国家/地区编码可以查看 [省份编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        # 指定（中国境内）省份查询时，不可同时指定运营商、IP协议查询
        # @type District: Integer
        # @param Protocol: 指定协议查询，不填充表示查询所有协议
        # all：所有协议
        # http：指定查询 HTTP 对应指标
        # https：指定查询 HTTPS 对应指标
        # @type Protocol: String
        # @param DataSource: 指定数据源查询，白名单功能
        # @type DataSource: String
        # @param IpProtocol: 指定IP协议查询，不填充表示查询所有协议
        # all：所有协议
        # ipv4：指定查询 ipv4 对应指标
        # ipv6：指定查询 ipv6 对应指标
        # 指定IP协议查询时，不可同时指定省份、运营商查询
        # 注意：非IPv6白名单用户不可指定ipv4、ipv6进行查询
        # @type IpProtocol: String
        # @param Area: 指定服务地域查询，不填充表示查询中国境内CDN数据
        # mainland：指定查询中国境内 CDN 数据
        # overseas：指定查询中国境外 CDN 数据
        # @type Area: String
        # @param AreaType: 查询中国境外CDN数据时，可指定地区类型查询，不填充表示查询服务地区数据（仅在 Area 为 overseas 时可用）
        # server：指定查询服务地区（腾讯云 CDN 节点服务器所在地区）数据
        # client：指定查询客户端地区（用户请求终端所在地区）数据
        # @type AreaType: String
        # @param Product: 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        # @type Product: String

        attr_accessor :StartTime, :EndTime, :Metric, :Domains, :Project, :Interval, :Detail, :Isp, :District, :Protocol, :DataSource, :IpProtocol, :Area, :AreaType, :Product
        
        def initialize(starttime=nil, endtime=nil, metric=nil, domains=nil, project=nil, interval=nil, detail=nil, isp=nil, district=nil, protocol=nil, datasource=nil, ipprotocol=nil, area=nil, areatype=nil, product=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Domains = domains
          @Project = project
          @Interval = interval
          @Detail = detail
          @Isp = isp
          @District = district
          @Protocol = protocol
          @DataSource = datasource
          @IpProtocol = ipprotocol
          @Area = area
          @AreaType = areatype
          @Product = product
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Domains = params['Domains']
          @Project = params['Project']
          @Interval = params['Interval']
          @Detail = params['Detail']
          @Isp = params['Isp']
          @District = params['District']
          @Protocol = params['Protocol']
          @DataSource = params['DataSource']
          @IpProtocol = params['IpProtocol']
          @Area = params['Area']
          @AreaType = params['AreaType']
          @Product = params['Product']
        end
      end

      # DescribeCdnData返回参数结构体
      class DescribeCdnDataResponse < TencentCloud::Common::AbstractModel
        # @param Interval: 返回数据的时间粒度，查询时指定：
        # min：1 分钟粒度
        # 5min：5 分钟粒度
        # hour：1 小时粒度
        # day：天粒度
        # @type Interval: String
        # @param Data: 指定条件查询得到的数据明细
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Interval, :Data, :RequestId
        
        def initialize(interval=nil, data=nil, requestid=nil)
          @Interval = interval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Interval = params['Interval']
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

      # DescribeCdnDomainLogs请求参数结构体
      class DescribeCdnDomainLogsRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 指定域名查询
        # @type Domain: String
        # @param StartTime: 开始时间，如 2019-09-04 00:00:00
        # @type StartTime: String
        # @param EndTime: 结束时间，如 2019-09-04 12:00:00
        # @type EndTime: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大为 1000
        # @type Limit: Integer
        # @param Area: 指定区域下载日志
        # mainland：获取境内加速日志包下载链接
        # overseas：获取境外加速日志包下载链接
        # global：同时获取境内、境外加速日志包下载链接（分开打包）
        # 不指定时默认为 mainland
        # @type Area: String
        # @param LogType: 指定下载日志的类型。
        # access：获取访问日志
        # @type LogType: String

        attr_accessor :Domain, :StartTime, :EndTime, :Offset, :Limit, :Area, :LogType
        
        def initialize(domain=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, area=nil, logtype=nil)
          @Domain = domain
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Area = area
          @LogType = logtype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Area = params['Area']
          @LogType = params['LogType']
        end
      end

      # DescribeCdnDomainLogs返回参数结构体
      class DescribeCdnDomainLogsResponse < TencentCloud::Common::AbstractModel
        # @param DomainLogs: 日志包下载链接
        # @type DomainLogs: Array
        # @param TotalCount: 查询到的总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              domainlog_tmp = DomainLog.new
              domainlog_tmp.deserialize(i)
              @DomainLogs << domainlog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCdnIp请求参数结构体
      class DescribeCdnIpRequest < TencentCloud::Common::AbstractModel
        # @param Ips: 需要查询的 IP 列表
        # @type Ips: Array

        attr_accessor :Ips
        
        def initialize(ips=nil)
          @Ips = ips
        end

        def deserialize(params)
          @Ips = params['Ips']
        end
      end

      # DescribeCdnIp返回参数结构体
      class DescribeCdnIpResponse < TencentCloud::Common::AbstractModel
        # @param Ips: 查询的节点归属详情。
        # @type Ips: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ips, :RequestId
        
        def initialize(ips=nil, requestid=nil)
          @Ips = ips
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ips'].nil?
            @Ips = []
            params['Ips'].each do |i|
              cdnip_tmp = CdnIp.new
              cdnip_tmp.deserialize(i)
              @Ips << cdnip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCdnOriginIp请求参数结构体
      class DescribeCdnOriginIpRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCdnOriginIp返回参数结构体
      class DescribeCdnOriginIpResponse < TencentCloud::Common::AbstractModel
        # @param Ips: 回源节点IP详情。
        # @type Ips: Array
        # @param TotalCount: 回源节点IP总个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              originip_tmp = OriginIp.new
              originip_tmp.deserialize(i)
              @Ips << originip_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertDomains请求参数结构体
      class DescribeCertDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Cert: PEM格式证书Base64编码后的字符串
        # @type Cert: String
        # @param CertId: 托管证书ID，Cert和CertId不能均未空，都填写时以CerId为准。
        # @type CertId: String
        # @param Product: 域名所属产品，cdn或ecdn，默认cdn。
        # @type Product: String

        attr_accessor :Cert, :CertId, :Product
        
        def initialize(cert=nil, certid=nil, product=nil)
          @Cert = cert
          @CertId = certid
          @Product = product
        end

        def deserialize(params)
          @Cert = params['Cert']
          @CertId = params['CertId']
          @Product = params['Product']
        end
      end

      # DescribeCertDomains返回参数结构体
      class DescribeCertDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Domains: 已接入CDN的域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param CertifiedDomains: 已配置证书的CDN域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertifiedDomains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :CertifiedDomains, :RequestId
        
        def initialize(domains=nil, certifieddomains=nil, requestid=nil)
          @Domains = domains
          @CertifiedDomains = certifieddomains
          @RequestId = requestid
        end

        def deserialize(params)
          @Domains = params['Domains']
          @CertifiedDomains = params['CertifiedDomains']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiagnoseReport请求参数结构体
      class DescribeDiagnoseReportRequest < TencentCloud::Common::AbstractModel
        # @param ReportId: 报告ID
        # @type ReportId: String

        attr_accessor :ReportId
        
        def initialize(reportid=nil)
          @ReportId = reportid
        end

        def deserialize(params)
          @ReportId = params['ReportId']
        end
      end

      # DescribeDiagnoseReport返回参数结构体
      class DescribeDiagnoseReportResponse < TencentCloud::Common::AbstractModel
        # @param BaskInfo: 诊断报告基础信息
        # @type BaskInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param CnameInfo: CNAME检测信息
        # @type CnameInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param ClientInfo: 客户端检测信息
        # @type ClientInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param DnsInfo: DNS检测信息
        # @type DnsInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param NetworkInfo: 网络检测信息
        # @type NetworkInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param OcNodeInfo: 边缘节点检测信息
        # @type OcNodeInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param MidNodeInfo: 中间源节点检测信息
        # @type MidNodeInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param OriginInfo: 源站检测信息
        # @type OriginInfo: :class:`Tencentcloud::Cdn.v20180606.models.DiagnoseData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaskInfo, :CnameInfo, :ClientInfo, :DnsInfo, :NetworkInfo, :OcNodeInfo, :MidNodeInfo, :OriginInfo, :RequestId
        
        def initialize(baskinfo=nil, cnameinfo=nil, clientinfo=nil, dnsinfo=nil, networkinfo=nil, ocnodeinfo=nil, midnodeinfo=nil, origininfo=nil, requestid=nil)
          @BaskInfo = baskinfo
          @CnameInfo = cnameinfo
          @ClientInfo = clientinfo
          @DnsInfo = dnsinfo
          @NetworkInfo = networkinfo
          @OcNodeInfo = ocnodeinfo
          @MidNodeInfo = midnodeinfo
          @OriginInfo = origininfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaskInfo'].nil?
            @BaskInfo = DiagnoseData.new
            @BaskInfo.deserialize(params['BaskInfo'])
          end
          unless params['CnameInfo'].nil?
            @CnameInfo = DiagnoseData.new
            @CnameInfo.deserialize(params['CnameInfo'])
          end
          unless params['ClientInfo'].nil?
            @ClientInfo = DiagnoseData.new
            @ClientInfo.deserialize(params['ClientInfo'])
          end
          unless params['DnsInfo'].nil?
            @DnsInfo = DiagnoseData.new
            @DnsInfo.deserialize(params['DnsInfo'])
          end
          unless params['NetworkInfo'].nil?
            @NetworkInfo = DiagnoseData.new
            @NetworkInfo.deserialize(params['NetworkInfo'])
          end
          unless params['OcNodeInfo'].nil?
            @OcNodeInfo = DiagnoseData.new
            @OcNodeInfo.deserialize(params['OcNodeInfo'])
          end
          unless params['MidNodeInfo'].nil?
            @MidNodeInfo = DiagnoseData.new
            @MidNodeInfo.deserialize(params['MidNodeInfo'])
          end
          unless params['OriginInfo'].nil?
            @OriginInfo = DiagnoseData.new
            @OriginInfo.deserialize(params['OriginInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDistrictIspData请求参数结构体
      class DescribeDistrictIspDataRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 域名列表，最多支持20个域名
        # @type Domains: Array
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        # 支持近 60 天内的数据查询，每次查询时间区间为 3 小时
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        # 结束时间与起始时间区间最大为 3 小时
        # @type EndTime: String
        # @param Metric: 指定查询指标，支持:
        # bandwidth：带宽，单位为 bps
        # request：请求数，单位为 次
        # @type Metric: String
        # @param Districts: 指定省份查询，不填充表示查询所有省份
        # 省份、国家/地区编码可以查看 [省份编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        # @type Districts: Array
        # @param Isps: 指定运营商查询，不填充表示查询所有运营商
        # 运营商编码可以查看 [运营商编码映射](https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8)
        # @type Isps: Array
        # @param Protocol: 指定协议查询，不填充表示查询所有协议
        # all：所有协议
        # http：指定查询 HTTP 对应指标
        # https：指定查询 HTTPS 对应指标
        # @type Protocol: String
        # @param IpProtocol: 指定IP协议查询，不填充表示查询所有协议
        # all：所有协议
        # ipv4：指定查询 ipv4 对应指标
        # ipv6：指定查询 ipv6 对应指标
        # 指定IP协议查询时，不可同时指定省份、运营商查询
        # @type IpProtocol: String
        # @param Interval: 时间粒度，支持以下几种模式（默认5min）：
        # min：1 分钟粒度，支持近 60 天内的数据查询，每次查询时间区间不超过10分钟，可返回 1 分钟粒度明细数据
        # 5min：5 分钟粒度，支持近 60 天内的数据查询，每次查询时间区间不超过3 小时，可返回 5 分钟粒度明细数据
        # @type Interval: String

        attr_accessor :Domains, :StartTime, :EndTime, :Metric, :Districts, :Isps, :Protocol, :IpProtocol, :Interval
        
        def initialize(domains=nil, starttime=nil, endtime=nil, metric=nil, districts=nil, isps=nil, protocol=nil, ipprotocol=nil, interval=nil)
          @Domains = domains
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Districts = districts
          @Isps = isps
          @Protocol = protocol
          @IpProtocol = ipprotocol
          @Interval = interval
        end

        def deserialize(params)
          @Domains = params['Domains']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Districts = params['Districts']
          @Isps = params['Isps']
          @Protocol = params['Protocol']
          @IpProtocol = params['IpProtocol']
          @Interval = params['Interval']
        end
      end

      # DescribeDistrictIspData返回参数结构体
      class DescribeDistrictIspDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 地区运营商数据明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              districtispinfo_tmp = DistrictIspInfo.new
              districtispinfo_tmp.deserialize(i)
              @Data << districtispinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainsConfig请求参数结构体
      class DescribeDomainsConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器，复杂类型
        # @type Filters: Array
        # @param Sort: 排序规则
        # @type Sort: :class:`Tencentcloud::Cdn.v20180606.models.Sort`

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
        # @param Domains: 域名列表
        # @type Domains: Array
        # @param TotalNumber: 符合查询条件的域名总数
        # 用于分页查询
        # @type TotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :TotalNumber, :RequestId
        
        def initialize(domains=nil, totalnumber=nil, requestid=nil)
          @Domains = domains
          @TotalNumber = totalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              detaildomain_tmp = DetailDomain.new
              detaildomain_tmp.deserialize(i)
              @Domains << detaildomain_tmp
            end
          end
          @TotalNumber = params['TotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomains请求参数结构体
      class DescribeDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器，复杂类型
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
        # @param Domains: 域名列表
        # @type Domains: Array
        # @param TotalNumber: 符合查询条件的域名总数
        # 用于分页查询
        # @type TotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :TotalNumber, :RequestId
        
        def initialize(domains=nil, totalnumber=nil, requestid=nil)
          @Domains = domains
          @TotalNumber = totalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              briefdomain_tmp = BriefDomain.new
              briefdomain_tmp.deserialize(i)
              @Domains << briefdomain_tmp
            end
          end
          @TotalNumber = params['TotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageConfig请求参数结构体
      class DescribeImageConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DescribeImageConfig返回参数结构体
      class DescribeImageConfigResponse < TencentCloud::Common::AbstractModel
        # @param WebpAdapter: WebpAdapter配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebpAdapter: :class:`Tencentcloud::Cdn.v20180606.models.WebpAdapter`
        # @param TpgAdapter: TpgAdapter配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TpgAdapter: :class:`Tencentcloud::Cdn.v20180606.models.TpgAdapter`
        # @param GuetzliAdapter: GuetzliAdapter配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GuetzliAdapter: :class:`Tencentcloud::Cdn.v20180606.models.GuetzliAdapter`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebpAdapter, :TpgAdapter, :GuetzliAdapter, :RequestId
        
        def initialize(webpadapter=nil, tpgadapter=nil, guetzliadapter=nil, requestid=nil)
          @WebpAdapter = webpadapter
          @TpgAdapter = tpgadapter
          @GuetzliAdapter = guetzliadapter
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WebpAdapter'].nil?
            @WebpAdapter = WebpAdapter.new
            @WebpAdapter.deserialize(params['WebpAdapter'])
          end
          unless params['TpgAdapter'].nil?
            @TpgAdapter = TpgAdapter.new
            @TpgAdapter.deserialize(params['TpgAdapter'])
          end
          unless params['GuetzliAdapter'].nil?
            @GuetzliAdapter = GuetzliAdapter.new
            @GuetzliAdapter.deserialize(params['GuetzliAdapter'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpStatus请求参数结构体
      class DescribeIpStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 加速域名
        # @type Domain: String
        # @param Layer: 节点类型：
        # edge：表示边缘节点
        # last：表示回源层节点
        # 不填充情况下，默认返回边缘节点信息
        # @type Layer: String
        # @param Area: 查询区域：
        # mainland: 国内节点
        # overseas: 海外节点
        # global: 全球节点
        # @type Area: String
        # @param Segment: 是否以IP段的格式返回。
        # @type Segment: Boolean

        attr_accessor :Domain, :Layer, :Area, :Segment
        
        def initialize(domain=nil, layer=nil, area=nil, segment=nil)
          @Domain = domain
          @Layer = layer
          @Area = area
          @Segment = segment
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Layer = params['Layer']
          @Area = params['Area']
          @Segment = params['Segment']
        end
      end

      # DescribeIpStatus返回参数结构体
      class DescribeIpStatusResponse < TencentCloud::Common::AbstractModel
        # @param Ips: 节点列表
        # @type Ips: Array
        # @param TotalCount: 节点总个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeIpVisit请求参数结构体
      class DescribeIpVisitRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:10，返回结果大于等于指定时间
        # 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:10 在按 5 分钟的时间粒度查询时，返回的第一个数据对应时间点为 2018-09-04 10:40:00
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:10，返回结果小于等于指定时间
        # 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:10 在按 5 分钟的时间粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:40:00
        # @type EndTime: String
        # @param Domains: 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        # @type Domains: Array
        # @param Project: 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        # @type Project: Integer
        # @param Interval: 时间粒度，支持以下几种模式：
        # 5min：5 分钟粒度，查询时间区间 24 小时内，默认返回 5 分钟粒度活跃用户数
        # day：天粒度，查询时间区间大于 1 天时，默认返回天粒度活跃用户数
        # @type Interval: String

        attr_accessor :StartTime, :EndTime, :Domains, :Project, :Interval
        
        def initialize(starttime=nil, endtime=nil, domains=nil, project=nil, interval=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Domains = domains
          @Project = project
          @Interval = interval
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Domains = params['Domains']
          @Project = params['Project']
          @Interval = params['Interval']
        end
      end

      # DescribeIpVisit返回参数结构体
      class DescribeIpVisitResponse < TencentCloud::Common::AbstractModel
        # @param Interval: 数据统计的时间粒度，支持5min,  day，分别表示5分钟，1天的时间粒度。
        # @type Interval: String
        # @param Data: 各个资源的回源数据详情。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Interval, :Data, :RequestId
        
        def initialize(interval=nil, data=nil, requestid=nil)
          @Interval = interval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Interval = params['Interval']
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

      # DescribeMapInfo请求参数结构体
      class DescribeMapInfoRequest < TencentCloud::Common::AbstractModel
        # @param Name: 映射查询类别：
        # isp：运营商映射查询
        # district：省份（中国境内）、国家/地区（中国境外）映射查询
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeMapInfo返回参数结构体
      class DescribeMapInfoResponse < TencentCloud::Common::AbstractModel
        # @param MapInfoList: 映射关系数组。
        # @type MapInfoList: Array
        # @param ServerRegionRelation: 服务端区域id和子区域id的映射关系。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerRegionRelation: Array
        # @param ClientRegionRelation: 客户端区域id和子区域id的映射关系。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientRegionRelation: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MapInfoList, :ServerRegionRelation, :ClientRegionRelation, :RequestId
        
        def initialize(mapinfolist=nil, serverregionrelation=nil, clientregionrelation=nil, requestid=nil)
          @MapInfoList = mapinfolist
          @ServerRegionRelation = serverregionrelation
          @ClientRegionRelation = clientregionrelation
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MapInfoList'].nil?
            @MapInfoList = []
            params['MapInfoList'].each do |i|
              mapinfo_tmp = MapInfo.new
              mapinfo_tmp.deserialize(i)
              @MapInfoList << mapinfo_tmp
            end
          end
          unless params['ServerRegionRelation'].nil?
            @ServerRegionRelation = []
            params['ServerRegionRelation'].each do |i|
              regionmaprelation_tmp = RegionMapRelation.new
              regionmaprelation_tmp.deserialize(i)
              @ServerRegionRelation << regionmaprelation_tmp
            end
          end
          unless params['ClientRegionRelation'].nil?
            @ClientRegionRelation = []
            params['ClientRegionRelation'].each do |i|
              regionmaprelation_tmp = RegionMapRelation.new
              regionmaprelation_tmp.deserialize(i)
              @ClientRegionRelation << regionmaprelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginData请求参数结构体
      class DescribeOriginDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        # 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的第一个数据对应时间点为 2018-09-04 10:00:00
        # 起始时间与结束时间间隔小于等于 90 天
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        # 根据指定时间粒度不同，会进行向前归整，如 2018-09-04 10:40:00 在按 1 小时的时间粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:00:00
        # 起始时间与结束时间间隔小于等于 90 天
        # @type EndTime: String
        # @param Metric: 指定查询指标，支持的类型有：
        # flux：回源流量，单位为 byte
        # bandwidth：回源带宽，单位为 bps
        # request：回源请求数，单位为 次
        # failRequest：回源失败请求数，单位为 次
        # failRate：回源失败率，单位为 %
        # statusCode：回源状态码，返回 2xx、3xx、4xx、5xx 汇总数据，单位为 个
        # 2xx：返回 2xx 回源状态码汇总及各 2 开头回源状态码数据，单位为 个
        # 3xx：返回 3xx 回源状态码汇总及各 3 开头回源状态码数据，单位为 个
        # 4xx：返回 4xx 回源状态码汇总及各 4 开头回源状态码数据，单位为 个
        # 5xx：返回 5xx 回源状态码汇总及各 5 开头回源状态码数据，单位为 个
        # 支持指定具体状态码查询，若未产生过，则返回为空
        # @type Metric: String
        # @param Domains: 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        # @type Domains: Array
        # @param Project: 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 未填充域名情况下，指定项目查询，最多可一次性查询 30 个加速域名明细
        # 若填充了具体域名信息，以域名为主
        # @type Project: Integer
        # @param Interval: 时间粒度，支持以下几种模式：
        # min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据（指定查询服务地域为中国境外时不支持 1 分钟粒度）
        # 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        # hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        # day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        # @type Interval: String
        # @param Detail: Domains 传入多个时，默认（false)返回多个域名的汇总数据
        # 可按需指定为 true，返回每一个 Domain 的明细数据（statusCode 指标暂不支持）
        # @type Detail: Boolean
        # @param Area: 指定服务地域查询，不填充表示查询中国境内 CDN 数据
        # mainland：指定查询中国境内 CDN 数据
        # overseas：指定查询中国境外 CDN 数据
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :Metric, :Domains, :Project, :Interval, :Detail, :Area
        
        def initialize(starttime=nil, endtime=nil, metric=nil, domains=nil, project=nil, interval=nil, detail=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Domains = domains
          @Project = project
          @Interval = interval
          @Detail = detail
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Domains = params['Domains']
          @Project = params['Project']
          @Interval = params['Interval']
          @Detail = params['Detail']
          @Area = params['Area']
        end
      end

      # DescribeOriginData返回参数结构体
      class DescribeOriginDataResponse < TencentCloud::Common::AbstractModel
        # @param Interval: 数据统计的时间粒度，支持min, 5min, hour, day，分别表示1分钟，5分钟，1小时和1天的时间粒度。
        # @type Interval: String
        # @param Data: 各个资源的回源数据详情。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Interval, :Data, :RequestId
        
        def initialize(interval=nil, data=nil, requestid=nil)
          @Interval = interval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Interval = params['Interval']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resourceorigindata_tmp = ResourceOriginData.new
              resourceorigindata_tmp.deserialize(i)
              @Data << resourceorigindata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePayType请求参数结构体
      class DescribePayTypeRequest < TencentCloud::Common::AbstractModel
        # @param Area: 指定服务地域查询
        # mainland：境内计费方式查询
        # overseas：境外计费方式查询
        # 未填充时默认为 mainland
        # @type Area: String
        # @param Product: 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        # @type Product: String

        attr_accessor :Area, :Product
        
        def initialize(area=nil, product=nil)
          @Area = area
          @Product = product
        end

        def deserialize(params)
          @Area = params['Area']
          @Product = params['Product']
        end
      end

      # DescribePayType返回参数结构体
      class DescribePayTypeResponse < TencentCloud::Common::AbstractModel
        # @param PayType: 计费类型：
        # flux：流量计费
        # bandwidth：带宽计费
        # request：请求数计费
        # 日结计费方式切换时，若当日产生消耗，则此字段表示第二天即将生效的计费方式，若未产生消耗，则表示已经生效的计费方式。
        # @type PayType: String
        # @param BillingCycle: 计费周期：
        # day：日结计费
        # month：月结计费
        # @type BillingCycle: String
        # @param StatType: monthMax：日峰值月平均，月结模式
        # day95：日 95 带宽，月结模式
        # month95：月95带宽，月结模式
        # sum：总流量/总请求数，日结或月结模式
        # max：峰值带宽，日结模式
        # @type StatType: String
        # @param RegionType: 境外计费类型：
        # all：全地区统一计费
        # multiple：分地区计费
        # @type RegionType: String
        # @param CurrentPayType: 当前生效计费类型：
        # flux：流量计费
        # bandwidth：带宽计费
        # request：请求数计费
        # @type CurrentPayType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PayType, :BillingCycle, :StatType, :RegionType, :CurrentPayType, :RequestId
        
        def initialize(paytype=nil, billingcycle=nil, stattype=nil, regiontype=nil, currentpaytype=nil, requestid=nil)
          @PayType = paytype
          @BillingCycle = billingcycle
          @StatType = stattype
          @RegionType = regiontype
          @CurrentPayType = currentpaytype
          @RequestId = requestid
        end

        def deserialize(params)
          @PayType = params['PayType']
          @BillingCycle = params['BillingCycle']
          @StatType = params['StatType']
          @RegionType = params['RegionType']
          @CurrentPayType = params['CurrentPayType']
          @RequestId = params['RequestId']
        end
      end

      # DescribePurgeQuota请求参数结构体
      class DescribePurgeQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePurgeQuota返回参数结构体
      class DescribePurgeQuotaResponse < TencentCloud::Common::AbstractModel
        # @param UrlPurge: URL刷新用量及配额。
        # @type UrlPurge: Array
        # @param PathPurge: 目录刷新用量及配额。
        # @type PathPurge: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UrlPurge, :PathPurge, :RequestId
        
        def initialize(urlpurge=nil, pathpurge=nil, requestid=nil)
          @UrlPurge = urlpurge
          @PathPurge = pathpurge
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UrlPurge'].nil?
            @UrlPurge = []
            params['UrlPurge'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @UrlPurge << quota_tmp
            end
          end
          unless params['PathPurge'].nil?
            @PathPurge = []
            params['PathPurge'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @PathPurge << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePurgeTasks请求参数结构体
      class DescribePurgeTasksRequest < TencentCloud::Common::AbstractModel
        # @param PurgeType: 指定刷新类型查询
        # url：url 刷新记录
        # path：目录刷新记录
        # @type PurgeType: String
        # @param StartTime: 根据时间区间查询时，填充开始时间，如 2018-08-08 00:00:00
        # @type StartTime: String
        # @param EndTime: 根据时间区间查询时，填充结束时间，如 2018-08-08 23:59:59
        # @type EndTime: String
        # @param TaskId: 根据任务 ID 查询时，填充任务 ID
        # 查询时任务 ID 与起始时间必须填充一项
        # @type TaskId: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 20
        # @type Limit: Integer
        # @param Keyword: 支持域名过滤，或 http(s):// 开头完整 URL 过滤
        # @type Keyword: String
        # @param Status: 指定任务状态查询
        # fail：刷新失败
        # done：刷新成功
        # process：刷新中
        # @type Status: String
        # @param Area: 指定刷新地域查询
        # mainland：境内
        # overseas：境外
        # global：全球
        # @type Area: String

        attr_accessor :PurgeType, :StartTime, :EndTime, :TaskId, :Offset, :Limit, :Keyword, :Status, :Area
        
        def initialize(purgetype=nil, starttime=nil, endtime=nil, taskid=nil, offset=nil, limit=nil, keyword=nil, status=nil, area=nil)
          @PurgeType = purgetype
          @StartTime = starttime
          @EndTime = endtime
          @TaskId = taskid
          @Offset = offset
          @Limit = limit
          @Keyword = keyword
          @Status = status
          @Area = area
        end

        def deserialize(params)
          @PurgeType = params['PurgeType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskId = params['TaskId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Keyword = params['Keyword']
          @Status = params['Status']
          @Area = params['Area']
        end
      end

      # DescribePurgeTasks返回参数结构体
      class DescribePurgeTasksResponse < TencentCloud::Common::AbstractModel
        # @param PurgeLogs: 详细刷新记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PurgeLogs: Array
        # @param TotalCount: 任务总数，用于分页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PurgeLogs, :TotalCount, :RequestId
        
        def initialize(purgelogs=nil, totalcount=nil, requestid=nil)
          @PurgeLogs = purgelogs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PurgeLogs'].nil?
            @PurgeLogs = []
            params['PurgeLogs'].each do |i|
              purgetask_tmp = PurgeTask.new
              purgetask_tmp.deserialize(i)
              @PurgeLogs << purgetask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePushQuota请求参数结构体
      class DescribePushQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePushQuota返回参数结构体
      class DescribePushQuotaResponse < TencentCloud::Common::AbstractModel
        # @param UrlPush: Url预热用量及配额。
        # @type UrlPush: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UrlPush, :RequestId
        
        def initialize(urlpush=nil, requestid=nil)
          @UrlPush = urlpush
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UrlPush'].nil?
            @UrlPush = []
            params['UrlPush'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @UrlPush << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePushTasks请求参数结构体
      class DescribePushTasksRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，如2018-08-08 00:00:00。
        # @type StartTime: String
        # @param EndTime: 结束时间，如2018-08-08 23:59:59。
        # @type EndTime: String
        # @param TaskId: 指定任务 ID 查询
        # TaskId 和起始时间必须指定一项
        # @type TaskId: String
        # @param Keyword: 查询关键字，请输入域名或 http(s):// 开头完整 URL
        # @type Keyword: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 20
        # @type Limit: Integer
        # @param Area: 指定地区查询预热纪录
        # mainland：境内
        # overseas：境外
        # global：全球
        # @type Area: String
        # @param Status: 指定任务状态查询
        # fail：预热失败
        # done：预热成功
        # process：预热中
        # @type Status: String

        attr_accessor :StartTime, :EndTime, :TaskId, :Keyword, :Offset, :Limit, :Area, :Status
        
        def initialize(starttime=nil, endtime=nil, taskid=nil, keyword=nil, offset=nil, limit=nil, area=nil, status=nil)
          @StartTime = starttime
          @EndTime = endtime
          @TaskId = taskid
          @Keyword = keyword
          @Offset = offset
          @Limit = limit
          @Area = area
          @Status = status
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskId = params['TaskId']
          @Keyword = params['Keyword']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Area = params['Area']
          @Status = params['Status']
        end
      end

      # DescribePushTasks返回参数结构体
      class DescribePushTasksResponse < TencentCloud::Common::AbstractModel
        # @param PushLogs: 预热历史记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PushLogs: Array
        # @param TotalCount: 任务总数，用于分页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PushLogs, :TotalCount, :RequestId
        
        def initialize(pushlogs=nil, totalcount=nil, requestid=nil)
          @PushLogs = pushlogs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PushLogs'].nil?
            @PushLogs = []
            params['PushLogs'].each do |i|
              pushtask_tmp = PushTask.new
              pushtask_tmp.deserialize(i)
              @PushLogs << pushtask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReportData请求参数结构体
      class DescribeReportDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间：yyyy-MM-dd
        # 当报表类型为daily，起始时间和结束时间必须为同一天
        # 当报表类型为weekly，起始时间须为周一，结束时间须为同一周的周日
        # 当报表类型为monthly，起始时间须为自然月第一天，即1号，结束时间须为该自然月最后一天
        # @type StartTime: String
        # @param EndTime: 查询结束时间：yyyy-MM-dd
        # 当报表类型为daily，起始时间和结束时间必须为同一天
        # 当报表类型为weekly，起始时间须为周一，结束时间须为同一周的周日
        # 当报表类型为monthly，起始时间须为自然月第一天，即1号，结束时间须为该自然月最后一天
        # @type EndTime: String
        # @param ReportType: 报表类型
        # daily：日报表
        # weekly：周报表（周一至周日）
        # monthly：月报表（自然月）
        # @type ReportType: String
        # @param Area: 域名加速区域
        # mainland：中国境内
        # overseas：中国境外
        # @type Area: String
        # @param Offset: 偏移量，默认0。
        # @type Offset: Integer
        # @param Limit: 数据个数，默认1000。
        # @type Limit: Integer
        # @param Project: 按项目ID筛选
        # @type Project: Integer

        attr_accessor :StartTime, :EndTime, :ReportType, :Area, :Offset, :Limit, :Project
        
        def initialize(starttime=nil, endtime=nil, reporttype=nil, area=nil, offset=nil, limit=nil, project=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ReportType = reporttype
          @Area = area
          @Offset = offset
          @Limit = limit
          @Project = project
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReportType = params['ReportType']
          @Area = params['Area']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Project = params['Project']
        end
      end

      # DescribeReportData返回参数结构体
      class DescribeReportDataResponse < TencentCloud::Common::AbstractModel
        # @param DomainReport: 域名维度数据详情
        # @type DomainReport: Array
        # @param ProjectReport: 项目维度数据详情
        # @type ProjectReport: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainReport, :ProjectReport, :RequestId
        
        def initialize(domainreport=nil, projectreport=nil, requestid=nil)
          @DomainReport = domainreport
          @ProjectReport = projectreport
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainReport'].nil?
            @DomainReport = []
            params['DomainReport'].each do |i|
              reportdata_tmp = ReportData.new
              reportdata_tmp.deserialize(i)
              @DomainReport << reportdata_tmp
            end
          end
          unless params['ProjectReport'].nil?
            @ProjectReport = []
            params['ProjectReport'].each do |i|
              reportdata_tmp = ReportData.new
              reportdata_tmp.deserialize(i)
              @ProjectReport << reportdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScdnConfig请求参数结构体
      class DescribeScdnConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DescribeScdnConfig返回参数结构体
      class DescribeScdnConfigResponse < TencentCloud::Common::AbstractModel
        # @param Acl: 自定义防护策略配置
        # @type Acl: :class:`Tencentcloud::Cdn.v20180606.models.ScdnAclConfig`
        # @param Waf: Web 攻击防护（WAF）配置
        # @type Waf: :class:`Tencentcloud::Cdn.v20180606.models.ScdnWafConfig`
        # @param CC: CC 防护配置
        # @type CC: :class:`Tencentcloud::Cdn.v20180606.models.ScdnConfig`
        # @param Ddos: DDOS 防护配置
        # @type Ddos: :class:`Tencentcloud::Cdn.v20180606.models.ScdnDdosConfig`
        # @param Bot: BOT 防护配置
        # @type Bot: :class:`Tencentcloud::Cdn.v20180606.models.ScdnBotConfig`
        # @param Status: 当前状态，取值online | offline
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Acl, :Waf, :CC, :Ddos, :Bot, :Status, :RequestId
        
        def initialize(acl=nil, waf=nil, cc=nil, ddos=nil, bot=nil, status=nil, requestid=nil)
          @Acl = acl
          @Waf = waf
          @CC = cc
          @Ddos = ddos
          @Bot = bot
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Acl'].nil?
            @Acl = ScdnAclConfig.new
            @Acl.deserialize(params['Acl'])
          end
          unless params['Waf'].nil?
            @Waf = ScdnWafConfig.new
            @Waf.deserialize(params['Waf'])
          end
          unless params['CC'].nil?
            @CC = ScdnConfig.new
            @CC.deserialize(params['CC'])
          end
          unless params['Ddos'].nil?
            @Ddos = ScdnDdosConfig.new
            @Ddos.deserialize(params['Ddos'])
          end
          unless params['Bot'].nil?
            @Bot = ScdnBotConfig.new
            @Bot.deserialize(params['Bot'])
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScdnTopData请求参数结构体
      class DescribeScdnTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        # @type EndTime: String
        # @param Mode: 查询的SCDN TOP攻击数据类型：
        # waf：Web 攻击防护TOP数据
        # @type Mode: String
        # @param Metric: 排序对象，支持以下几种形式：
        # url：攻击目标 url 排序
        # ip：攻击源 IP 排序
        # attackType：攻击类型排序
        # @type Metric: String
        # @param Filter: 排序使用的指标名称：
        # request：请求次数
        # @type Filter: String
        # @param Domain: 指定域名查询
        # @type Domain: String
        # @param AttackType: 指定攻击类型, 仅 Mode=waf 时有效
        # 不填则查询所有攻击类型的数据总和
        # AttackType 映射如下:
        #   other = '未知类型'
        #   malicious_scan = "恶意扫描"
        #   sql_inject = "SQL注入攻击"
        #   xss = "XSS攻击"
        #   cmd_inject = "命令注入攻击"
        #   ldap_inject = "LDAP注入攻击"
        #   ssi_inject = "SSI注入攻击"
        #   xml_inject = "XML注入攻击"
        #   web_service = "WEB服务漏洞攻击"
        #   web_app = "WEB应用漏洞攻击"
        #   path_traversal = "路径跨越攻击"
        #   illegal_access_core_file = "核心文件非法访问"
        #   trojan_horse = "木马后门攻击"
        #   csrf = "CSRF攻击"
        #   malicious_file_upload= '恶意文件上传'
        # @type AttackType: String
        # @param DefenceMode: 指定防御模式,仅 Mode=waf 时有效
        # 不填则查询所有防御模式的数据总和
        # DefenceMode 映射如下：
        #   observe = '观察模式'
        #   intercept = '拦截模式'
        # @type DefenceMode: String

        attr_accessor :StartTime, :EndTime, :Mode, :Metric, :Filter, :Domain, :AttackType, :DefenceMode
        
        def initialize(starttime=nil, endtime=nil, mode=nil, metric=nil, filter=nil, domain=nil, attacktype=nil, defencemode=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Mode = mode
          @Metric = metric
          @Filter = filter
          @Domain = domain
          @AttackType = attacktype
          @DefenceMode = defencemode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mode = params['Mode']
          @Metric = params['Metric']
          @Filter = params['Filter']
          @Domain = params['Domain']
          @AttackType = params['AttackType']
          @DefenceMode = params['DefenceMode']
        end
      end

      # DescribeScdnTopData返回参数结构体
      class DescribeScdnTopDataResponse < TencentCloud::Common::AbstractModel
        # @param TopTypeData: WAF 攻击类型统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopTypeData: Array
        # @param TopIpData: TOP 攻击源 IP 统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopIpData: Array
        # @param Mode: 查询的SCDN类型，当前仅支持 waf
        # @type Mode: String
        # @param TopUrlData: TOP URL 统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopUrlData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopTypeData, :TopIpData, :Mode, :TopUrlData, :RequestId
        
        def initialize(toptypedata=nil, topipdata=nil, mode=nil, topurldata=nil, requestid=nil)
          @TopTypeData = toptypedata
          @TopIpData = topipdata
          @Mode = mode
          @TopUrlData = topurldata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopTypeData'].nil?
            @TopTypeData = []
            params['TopTypeData'].each do |i|
              scdntypedata_tmp = ScdnTypeData.new
              scdntypedata_tmp.deserialize(i)
              @TopTypeData << scdntypedata_tmp
            end
          end
          unless params['TopIpData'].nil?
            @TopIpData = []
            params['TopIpData'].each do |i|
              scdntopdata_tmp = ScdnTopData.new
              scdntopdata_tmp.deserialize(i)
              @TopIpData << scdntopdata_tmp
            end
          end
          @Mode = params['Mode']
          unless params['TopUrlData'].nil?
            @TopUrlData = []
            params['TopUrlData'].each do |i|
              scdntopurldata_tmp = ScdnTopUrlData.new
              scdntopurldata_tmp.deserialize(i)
              @TopUrlData << scdntopurldata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrafficPackages请求参数结构体
      class DescribeTrafficPackagesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询起始地址，默认 0
        # @type Offset: Integer
        # @param Limit: 分页查询记录个数，默认100，最大1000
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTrafficPackages返回参数结构体
      class DescribeTrafficPackagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 流量包总个数
        # @type TotalCount: Integer
        # @param TrafficPackages: 流量包详情
        # @type TrafficPackages: Array
        # @param ExpiringCount: 即将过期的流量包个数（7天内）
        # @type ExpiringCount: Integer
        # @param EnabledCount: 有效流量包个数
        # @type EnabledCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TrafficPackages, :ExpiringCount, :EnabledCount, :RequestId
        
        def initialize(totalcount=nil, trafficpackages=nil, expiringcount=nil, enabledcount=nil, requestid=nil)
          @TotalCount = totalcount
          @TrafficPackages = trafficpackages
          @ExpiringCount = expiringcount
          @EnabledCount = enabledcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TrafficPackages'].nil?
            @TrafficPackages = []
            params['TrafficPackages'].each do |i|
              trafficpackage_tmp = TrafficPackage.new
              trafficpackage_tmp.deserialize(i)
              @TrafficPackages << trafficpackage_tmp
            end
          end
          @ExpiringCount = params['ExpiringCount']
          @EnabledCount = params['EnabledCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUrlViolations请求参数结构体
      class DescribeUrlViolationsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100
        # @type Limit: Integer
        # @param Domains: 指定的域名查询
        # @type Domains: Array

        attr_accessor :Offset, :Limit, :Domains
        
        def initialize(offset=nil, limit=nil, domains=nil)
          @Offset = offset
          @Limit = limit
          @Domains = domains
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Domains = params['Domains']
        end
      end

      # DescribeUrlViolations返回参数结构体
      class DescribeUrlViolationsResponse < TencentCloud::Common::AbstractModel
        # @param UrlRecordList: 违规 URL 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlRecordList: Array
        # @param TotalCount: 记录总数，用于分页
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UrlRecordList, :TotalCount, :RequestId
        
        def initialize(urlrecordlist=nil, totalcount=nil, requestid=nil)
          @UrlRecordList = urlrecordlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UrlRecordList'].nil?
            @UrlRecordList = []
            params['UrlRecordList'].each do |i|
              violationurl_tmp = ViolationUrl.new
              violationurl_tmp.deserialize(i)
              @UrlRecordList << violationurl_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 加速域名全量配置信息
      class DetailDomain < TencentCloud::Common::AbstractModel
        # @param ResourceId: 域名 ID
        # @type ResourceId: String
        # @param AppId: 腾讯云账号ID
        # @type AppId: Integer
        # @param Domain: 加速域名
        # @type Domain: String
        # @param Cname: 域名对应的 CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Status: 加速服务状态
        # rejected：域名审核未通过，域名备案过期/被注销导致
        # processing：部署中
        # online：已启动
        # offline：已关闭
        # @type Status: String
        # @param ProjectId: 项目 ID，可前往腾讯云项目管理页面查看
        # @type ProjectId: Integer
        # @param ServiceType: 域名业务类型
        # web：静态加速
        # download：下载加速
        # media：流媒体点播加速
        # @type ServiceType: String
        # @param CreateTime: 域名创建时间
        # @type CreateTime: String
        # @param UpdateTime: 域名更新时间
        # @type UpdateTime: String
        # @param Origin: 源站配置
        # @type Origin: :class:`Tencentcloud::Cdn.v20180606.models.Origin`
        # @param IpFilter: IP 黑白名单配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFilter: :class:`Tencentcloud::Cdn.v20180606.models.IpFilter`
        # @param IpFreqLimit: IP 访问限频配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFreqLimit: :class:`Tencentcloud::Cdn.v20180606.models.IpFreqLimit`
        # @param StatusCodeCache: 状态码缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCodeCache: :class:`Tencentcloud::Cdn.v20180606.models.StatusCodeCache`
        # @param Compression: 智能压缩配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Cdn.v20180606.models.Compression`
        # @param BandwidthAlert: 带宽封顶配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthAlert: :class:`Tencentcloud::Cdn.v20180606.models.BandwidthAlert`
        # @param RangeOriginPull: Range 回源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangeOriginPull: :class:`Tencentcloud::Cdn.v20180606.models.RangeOriginPull`
        # @param FollowRedirect: 301/302 回源自动跟随配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowRedirect: :class:`Tencentcloud::Cdn.v20180606.models.FollowRedirect`
        # @param ErrorPage: 自定义错误页面配置（功能灰度中，敬请期待）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ErrorPage`
        # @param RequestHeader: 自定义请求头部配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeader: :class:`Tencentcloud::Cdn.v20180606.models.RequestHeader`
        # @param ResponseHeader: 自定义响应头部配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeader: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeader`
        # @param DownstreamCapping: 单链接下行限速配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownstreamCapping: :class:`Tencentcloud::Cdn.v20180606.models.DownstreamCapping`
        # @param CacheKey: 带参/不带参缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Cdn.v20180606.models.CacheKey`
        # @param ResponseHeaderCache: 源站头部缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeaderCache: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeaderCache`
        # @param VideoSeek: 视频拖拽配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoSeek: :class:`Tencentcloud::Cdn.v20180606.models.VideoSeek`
        # @param Cache: 节点缓存过期规则配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Cdn.v20180606.models.Cache`
        # @param OriginPullOptimization: 跨国链路优化配置（功能灰度中，敬请期待）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullOptimization: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullOptimization`
        # @param Https: Https 加速相关配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Cdn.v20180606.models.Https`
        # @param Authentication: 时间戳防盗链配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Authentication: :class:`Tencentcloud::Cdn.v20180606.models.Authentication`
        # @param Seo: SEO 优化配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seo: :class:`Tencentcloud::Cdn.v20180606.models.Seo`
        # @param Disable: 域名封禁状态
        # normal：正常状态
        # overdue：账号欠费导致域名关闭，充值完成后可自行启动加速服务
        # malicious：域名出现恶意行为，强制关闭加速服务
        # ddos：域名被大规模 DDoS 攻击，关闭加速服务
        # idle：域名超过 90 天内无任何操作、数据产生，判定为不活跃域名自动关闭加速服务，可自行启动加速服务
        # unlicensed：域名未备案/备案注销，自动关闭加速服务，备案完成后可自行启动加速服务
        # capping：触发配置的带宽阈值上限
        # readonly：域名存在特殊配置，被锁定
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disable: String
        # @param ForceRedirect: 访问协议强制跳转配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Cdn.v20180606.models.ForceRedirect`
        # @param Referer: Referer 防盗链配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Referer: :class:`Tencentcloud::Cdn.v20180606.models.Referer`
        # @param MaxAge: 浏览器缓存过期规则配置（功能灰度中，敬请期待）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Cdn.v20180606.models.MaxAge`
        # @param Ipv6: Ipv6 回源配置（功能灰度中，敬请期待）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: :class:`Tencentcloud::Cdn.v20180606.models.Ipv6`
        # @param Compatibility: 是否兼容旧版本配置（内部兼容性字段）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compatibility: :class:`Tencentcloud::Cdn.v20180606.models.Compatibility`
        # @param SpecificConfig: 区域特殊配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecificConfig: :class:`Tencentcloud::Cdn.v20180606.models.SpecificConfig`
        # @param Area: 加速区域
        # mainland：中国境内加速
        # overseas：中国境外加速
        # global：全球加速
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param Readonly: 域名锁定状态
        # normal：未锁定
        # mainland：中国境内锁定
        # overseas：中国境外锁定
        # global：全球锁定
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Readonly: String
        # @param OriginPullTimeout: 回源超时配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullTimeout: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullTimeout`
        # @param AwsPrivateAccess: 回源S3鉴权配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AwsPrivateAccess: :class:`Tencentcloud::Cdn.v20180606.models.AwsPrivateAccess`
        # @param SecurityConfig: Scdn配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityConfig: :class:`Tencentcloud::Cdn.v20180606.models.SecurityConfig`
        # @param ImageOptimization: ImageOptimization配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageOptimization: :class:`Tencentcloud::Cdn.v20180606.models.ImageOptimization`
        # @param UserAgentFilter: UA黑白名单配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAgentFilter: :class:`Tencentcloud::Cdn.v20180606.models.UserAgentFilter`
        # @param AccessControl: 访问控制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessControl: :class:`Tencentcloud::Cdn.v20180606.models.AccessControl`
        # @param Advance: 是否支持高级配置项
        # on：支持
        # off：不支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Advance: String
        # @param UrlRedirect: URL重定向配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlRedirect: :class:`Tencentcloud::Cdn.v20180606.models.UrlRedirect`
        # @param AccessPort: 访问端口配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessPort: Array
        # @param Tag: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param AdvancedAuthentication: 时间戳防盗链高级配置，白名单功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedAuthentication: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthentication`
        # @param OriginAuthentication: 回源鉴权高级配置，白名单功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginAuthentication: :class:`Tencentcloud::Cdn.v20180606.models.OriginAuthentication`
        # @param Ipv6Access: Ipv6访问配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6Access: :class:`Tencentcloud::Cdn.v20180606.models.Ipv6Access`
        # @param AdvanceSet: 高级配置集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceSet: Array
        # @param OfflineCache: 离线缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCache: :class:`Tencentcloud::Cdn.v20180606.models.OfflineCache`
        # @param OriginCombine: 合并回源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginCombine: :class:`Tencentcloud::Cdn.v20180606.models.OriginCombine`
        # @param PostMaxSize: POST上传配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSize: :class:`Tencentcloud::Cdn.v20180606.models.PostSize`
        # @param Quic: Quic配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quic: :class:`Tencentcloud::Cdn.v20180606.models.Quic`
        # @param OssPrivateAccess: 回源OSS私有鉴权
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OssPrivateAccess: :class:`Tencentcloud::Cdn.v20180606.models.OssPrivateAccess`
        # @param WebSocket: WebSocket配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Cdn.v20180606.models.WebSocket`

        attr_accessor :ResourceId, :AppId, :Domain, :Cname, :Status, :ProjectId, :ServiceType, :CreateTime, :UpdateTime, :Origin, :IpFilter, :IpFreqLimit, :StatusCodeCache, :Compression, :BandwidthAlert, :RangeOriginPull, :FollowRedirect, :ErrorPage, :RequestHeader, :ResponseHeader, :DownstreamCapping, :CacheKey, :ResponseHeaderCache, :VideoSeek, :Cache, :OriginPullOptimization, :Https, :Authentication, :Seo, :Disable, :ForceRedirect, :Referer, :MaxAge, :Ipv6, :Compatibility, :SpecificConfig, :Area, :Readonly, :OriginPullTimeout, :AwsPrivateAccess, :SecurityConfig, :ImageOptimization, :UserAgentFilter, :AccessControl, :Advance, :UrlRedirect, :AccessPort, :Tag, :AdvancedAuthentication, :OriginAuthentication, :Ipv6Access, :AdvanceSet, :OfflineCache, :OriginCombine, :PostMaxSize, :Quic, :OssPrivateAccess, :WebSocket
        
        def initialize(resourceid=nil, appid=nil, domain=nil, cname=nil, status=nil, projectid=nil, servicetype=nil, createtime=nil, updatetime=nil, origin=nil, ipfilter=nil, ipfreqlimit=nil, statuscodecache=nil, compression=nil, bandwidthalert=nil, rangeoriginpull=nil, followredirect=nil, errorpage=nil, requestheader=nil, responseheader=nil, downstreamcapping=nil, cachekey=nil, responseheadercache=nil, videoseek=nil, cache=nil, originpulloptimization=nil, https=nil, authentication=nil, seo=nil, disable=nil, forceredirect=nil, referer=nil, maxage=nil, ipv6=nil, compatibility=nil, specificconfig=nil, area=nil, readonly=nil, originpulltimeout=nil, awsprivateaccess=nil, securityconfig=nil, imageoptimization=nil, useragentfilter=nil, accesscontrol=nil, advance=nil, urlredirect=nil, accessport=nil, tag=nil, advancedauthentication=nil, originauthentication=nil, ipv6access=nil, advanceset=nil, offlinecache=nil, origincombine=nil, postmaxsize=nil, quic=nil, ossprivateaccess=nil, websocket=nil)
          @ResourceId = resourceid
          @AppId = appid
          @Domain = domain
          @Cname = cname
          @Status = status
          @ProjectId = projectid
          @ServiceType = servicetype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Origin = origin
          @IpFilter = ipfilter
          @IpFreqLimit = ipfreqlimit
          @StatusCodeCache = statuscodecache
          @Compression = compression
          @BandwidthAlert = bandwidthalert
          @RangeOriginPull = rangeoriginpull
          @FollowRedirect = followredirect
          @ErrorPage = errorpage
          @RequestHeader = requestheader
          @ResponseHeader = responseheader
          @DownstreamCapping = downstreamcapping
          @CacheKey = cachekey
          @ResponseHeaderCache = responseheadercache
          @VideoSeek = videoseek
          @Cache = cache
          @OriginPullOptimization = originpulloptimization
          @Https = https
          @Authentication = authentication
          @Seo = seo
          @Disable = disable
          @ForceRedirect = forceredirect
          @Referer = referer
          @MaxAge = maxage
          @Ipv6 = ipv6
          @Compatibility = compatibility
          @SpecificConfig = specificconfig
          @Area = area
          @Readonly = readonly
          @OriginPullTimeout = originpulltimeout
          @AwsPrivateAccess = awsprivateaccess
          @SecurityConfig = securityconfig
          @ImageOptimization = imageoptimization
          @UserAgentFilter = useragentfilter
          @AccessControl = accesscontrol
          @Advance = advance
          @UrlRedirect = urlredirect
          @AccessPort = accessport
          @Tag = tag
          @AdvancedAuthentication = advancedauthentication
          @OriginAuthentication = originauthentication
          @Ipv6Access = ipv6access
          @AdvanceSet = advanceset
          @OfflineCache = offlinecache
          @OriginCombine = origincombine
          @PostMaxSize = postmaxsize
          @Quic = quic
          @OssPrivateAccess = ossprivateaccess
          @WebSocket = websocket
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppId = params['AppId']
          @Domain = params['Domain']
          @Cname = params['Cname']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @ServiceType = params['ServiceType']
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
          unless params['StatusCodeCache'].nil?
            @StatusCodeCache = StatusCodeCache.new
            @StatusCodeCache.deserialize(params['StatusCodeCache'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['BandwidthAlert'].nil?
            @BandwidthAlert = BandwidthAlert.new
            @BandwidthAlert.deserialize(params['BandwidthAlert'])
          end
          unless params['RangeOriginPull'].nil?
            @RangeOriginPull = RangeOriginPull.new
            @RangeOriginPull.deserialize(params['RangeOriginPull'])
          end
          unless params['FollowRedirect'].nil?
            @FollowRedirect = FollowRedirect.new
            @FollowRedirect.deserialize(params['FollowRedirect'])
          end
          unless params['ErrorPage'].nil?
            @ErrorPage = ErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
          unless params['RequestHeader'].nil?
            @RequestHeader = RequestHeader.new
            @RequestHeader.deserialize(params['RequestHeader'])
          end
          unless params['ResponseHeader'].nil?
            @ResponseHeader = ResponseHeader.new
            @ResponseHeader.deserialize(params['ResponseHeader'])
          end
          unless params['DownstreamCapping'].nil?
            @DownstreamCapping = DownstreamCapping.new
            @DownstreamCapping.deserialize(params['DownstreamCapping'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['ResponseHeaderCache'].nil?
            @ResponseHeaderCache = ResponseHeaderCache.new
            @ResponseHeaderCache.deserialize(params['ResponseHeaderCache'])
          end
          unless params['VideoSeek'].nil?
            @VideoSeek = VideoSeek.new
            @VideoSeek.deserialize(params['VideoSeek'])
          end
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['OriginPullOptimization'].nil?
            @OriginPullOptimization = OriginPullOptimization.new
            @OriginPullOptimization.deserialize(params['OriginPullOptimization'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['Authentication'].nil?
            @Authentication = Authentication.new
            @Authentication.deserialize(params['Authentication'])
          end
          unless params['Seo'].nil?
            @Seo = Seo.new
            @Seo.deserialize(params['Seo'])
          end
          @Disable = params['Disable']
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Referer'].nil?
            @Referer = Referer.new
            @Referer.deserialize(params['Referer'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['Compatibility'].nil?
            @Compatibility = Compatibility.new
            @Compatibility.deserialize(params['Compatibility'])
          end
          unless params['SpecificConfig'].nil?
            @SpecificConfig = SpecificConfig.new
            @SpecificConfig.deserialize(params['SpecificConfig'])
          end
          @Area = params['Area']
          @Readonly = params['Readonly']
          unless params['OriginPullTimeout'].nil?
            @OriginPullTimeout = OriginPullTimeout.new
            @OriginPullTimeout.deserialize(params['OriginPullTimeout'])
          end
          unless params['AwsPrivateAccess'].nil?
            @AwsPrivateAccess = AwsPrivateAccess.new
            @AwsPrivateAccess.deserialize(params['AwsPrivateAccess'])
          end
          unless params['SecurityConfig'].nil?
            @SecurityConfig = SecurityConfig.new
            @SecurityConfig.deserialize(params['SecurityConfig'])
          end
          unless params['ImageOptimization'].nil?
            @ImageOptimization = ImageOptimization.new
            @ImageOptimization.deserialize(params['ImageOptimization'])
          end
          unless params['UserAgentFilter'].nil?
            @UserAgentFilter = UserAgentFilter.new
            @UserAgentFilter.deserialize(params['UserAgentFilter'])
          end
          unless params['AccessControl'].nil?
            @AccessControl = AccessControl.new
            @AccessControl.deserialize(params['AccessControl'])
          end
          @Advance = params['Advance']
          unless params['UrlRedirect'].nil?
            @UrlRedirect = UrlRedirect.new
            @UrlRedirect.deserialize(params['UrlRedirect'])
          end
          @AccessPort = params['AccessPort']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          unless params['AdvancedAuthentication'].nil?
            @AdvancedAuthentication = AdvancedAuthentication.new
            @AdvancedAuthentication.deserialize(params['AdvancedAuthentication'])
          end
          unless params['OriginAuthentication'].nil?
            @OriginAuthentication = OriginAuthentication.new
            @OriginAuthentication.deserialize(params['OriginAuthentication'])
          end
          unless params['Ipv6Access'].nil?
            @Ipv6Access = Ipv6Access.new
            @Ipv6Access.deserialize(params['Ipv6Access'])
          end
          unless params['AdvanceSet'].nil?
            @AdvanceSet = []
            params['AdvanceSet'].each do |i|
              advanceconfig_tmp = AdvanceConfig.new
              advanceconfig_tmp.deserialize(i)
              @AdvanceSet << advanceconfig_tmp
            end
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['OriginCombine'].nil?
            @OriginCombine = OriginCombine.new
            @OriginCombine.deserialize(params['OriginCombine'])
          end
          unless params['PostMaxSize'].nil?
            @PostMaxSize = PostSize.new
            @PostMaxSize.deserialize(params['PostMaxSize'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['OssPrivateAccess'].nil?
            @OssPrivateAccess = OssPrivateAccess.new
            @OssPrivateAccess.deserialize(params['OssPrivateAccess'])
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
        end
      end

      # 诊断报告内容数据
      class DiagnoseData < TencentCloud::Common::AbstractModel
        # @param Data: 诊断报告内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 当前诊断项是否正常。
        # "ok"：正常
        # "error"：异常
        # "warning"："警告"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Data, :Status
        
        def initialize(data=nil, status=nil)
          @Data = data
          @Status = status
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              diagnoseunit_tmp = DiagnoseUnit.new
              diagnoseunit_tmp.deserialize(i)
              @Data << diagnoseunit_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # 诊断信息
      class DiagnoseInfo < TencentCloud::Common::AbstractModel
        # @param DiagnoseUrl: 待诊断的URL。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnoseUrl: String
        # @param DiagnoseLink: 由系统生成的诊断链接。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnoseLink: String
        # @param CreateTime: 诊断创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireDate: 诊断链接过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireDate: String
        # @param VisitCount: 诊断链接当前访问次数，一个诊断链接最多可访问10次。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VisitCount: Integer
        # @param ClientList: 访问诊断链接的客户端简易信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientList: Array
        # @param Area: 域名加速区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String

        attr_accessor :DiagnoseUrl, :DiagnoseLink, :CreateTime, :ExpireDate, :VisitCount, :ClientList, :Area
        
        def initialize(diagnoseurl=nil, diagnoselink=nil, createtime=nil, expiredate=nil, visitcount=nil, clientlist=nil, area=nil)
          @DiagnoseUrl = diagnoseurl
          @DiagnoseLink = diagnoselink
          @CreateTime = createtime
          @ExpireDate = expiredate
          @VisitCount = visitcount
          @ClientList = clientlist
          @Area = area
        end

        def deserialize(params)
          @DiagnoseUrl = params['DiagnoseUrl']
          @DiagnoseLink = params['DiagnoseLink']
          @CreateTime = params['CreateTime']
          @ExpireDate = params['ExpireDate']
          @VisitCount = params['VisitCount']
          unless params['ClientList'].nil?
            @ClientList = []
            params['ClientList'].each do |i|
              diagnoselist_tmp = DiagnoseList.new
              diagnoselist_tmp.deserialize(i)
              @ClientList << diagnoselist_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # 客户端访问诊断URL信息列表
      class DiagnoseList < TencentCloud::Common::AbstractModel
        # @param DiagnoseTag: 诊断任务标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnoseTag: String
        # @param ReportId: 报告ID，用于获取详细诊断报告。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param ClientInfo: 客户端信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientInfo: Array
        # @param FinalDiagnose: 最终诊断结果。
        # -1：已提交
        # 0  ：检测中
        # 1  ：检测正常
        # 2  ： 检测异常
        # 3  ： 诊断页面异常关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalDiagnose: Integer
        # @param CreateTime: 诊断任务创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :DiagnoseTag, :ReportId, :ClientInfo, :FinalDiagnose, :CreateTime
        
        def initialize(diagnosetag=nil, reportid=nil, clientinfo=nil, finaldiagnose=nil, createtime=nil)
          @DiagnoseTag = diagnosetag
          @ReportId = reportid
          @ClientInfo = clientinfo
          @FinalDiagnose = finaldiagnose
          @CreateTime = createtime
        end

        def deserialize(params)
          @DiagnoseTag = params['DiagnoseTag']
          @ReportId = params['ReportId']
          unless params['ClientInfo'].nil?
            @ClientInfo = []
            params['ClientInfo'].each do |i|
              clientinfo_tmp = ClientInfo.new
              clientinfo_tmp.deserialize(i)
              @ClientInfo << clientinfo_tmp
            end
          end
          @FinalDiagnose = params['FinalDiagnose']
          @CreateTime = params['CreateTime']
        end
      end

      # 诊断报告单元信息
      class DiagnoseUnit < TencentCloud::Common::AbstractModel
        # @param Key: 内容单元英文名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param KeyText: 内容单元中文名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyText: String
        # @param Value: 报告内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param ValueText: 报告内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueText: String

        attr_accessor :Key, :KeyText, :Value, :ValueText
        
        def initialize(key=nil, keytext=nil, value=nil, valuetext=nil)
          @Key = key
          @KeyText = keytext
          @Value = value
          @ValueText = valuetext
        end

        def deserialize(params)
          @Key = params['Key']
          @KeyText = params['KeyText']
          @Value = params['Value']
          @ValueText = params['ValueText']
        end
      end

      # DisableCaches请求参数结构体
      class DisableCachesRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 禁用的 URL 列表（分协议生效，必须包含http://或https://）
        # 每次最多可提交 100 条，每日最多可提交 3000 条
        # @type Urls: Array

        attr_accessor :Urls
        
        def initialize(urls=nil)
          @Urls = urls
        end

        def deserialize(params)
          @Urls = params['Urls']
        end
      end

      # DisableCaches返回参数结构体
      class DisableCachesResponse < TencentCloud::Common::AbstractModel
        # @param CacheOptResult: 提交结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheOptResult: :class:`Tencentcloud::Cdn.v20180606.models.CacheOptResult`
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CacheOptResult, :TaskId, :RequestId
        
        def initialize(cacheoptresult=nil, taskid=nil, requestid=nil)
          @CacheOptResult = cacheoptresult
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CacheOptResult'].nil?
            @CacheOptResult = CacheOptResult.new
            @CacheOptResult.deserialize(params['CacheOptResult'])
          end
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DisableClsLogTopic请求参数结构体
      class DisableClsLogTopicRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String

        attr_accessor :LogsetId, :TopicId, :Channel
        
        def initialize(logsetid=nil, topicid=nil, channel=nil)
          @LogsetId = logsetid
          @TopicId = topicid
          @Channel = channel
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @Channel = params['Channel']
        end
      end

      # DisableClsLogTopic返回参数结构体
      class DisableClsLogTopicResponse < TencentCloud::Common::AbstractModel
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

      # 地区运营商明细数据
      class DistrictIspInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议类型
        # @type Protocol: String
        # @param IpProtocol: IP协议类型
        # @type IpProtocol: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Interval: 时间间隔，单位为分钟
        # @type Interval: Integer
        # @param Metric: 指标名称
        # @type Metric: String
        # @param District: 地区ID
        # @type District: Integer
        # @param Isp: 运营商ID
        # @type Isp: Integer
        # @param DataPoints: 指标数据点
        # @type DataPoints: Array
        # @param DistrictName: 地区名称
        # @type DistrictName: String
        # @param IspName: 运营商名称
        # @type IspName: String

        attr_accessor :Domain, :Protocol, :IpProtocol, :StartTime, :EndTime, :Interval, :Metric, :District, :Isp, :DataPoints, :DistrictName, :IspName
        
        def initialize(domain=nil, protocol=nil, ipprotocol=nil, starttime=nil, endtime=nil, interval=nil, metric=nil, district=nil, isp=nil, datapoints=nil, districtname=nil, ispname=nil)
          @Domain = domain
          @Protocol = protocol
          @IpProtocol = ipprotocol
          @StartTime = starttime
          @EndTime = endtime
          @Interval = interval
          @Metric = metric
          @District = district
          @Isp = isp
          @DataPoints = datapoints
          @DistrictName = districtname
          @IspName = ispname
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @IpProtocol = params['IpProtocol']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Interval = params['Interval']
          @Metric = params['Metric']
          @District = params['District']
          @Isp = params['Isp']
          @DataPoints = params['DataPoints']
          @DistrictName = params['DistrictName']
          @IspName = params['IspName']
        end
      end

      # 域名地区配置
      class DomainAreaConfig < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Area: 地区列表，其中元素可为mainland/overseas
        # @type Area: Array

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

      # 域名查询时过滤条件。
      class DomainFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # - origin：主源站。
        # - domain：域名。
        # - resourceId：域名id。
        # - status：域名状态，online，offline或processing。
        # - serviceType：业务类型，web，download或media。
        # - projectId：项目ID。
        # - domainType：主源站类型，cname表示自有源，cos表示cos接入，third_party表示第三方对象存储。
        # - fullUrlCache：全路径缓存，on或off。
        # - https：是否配置https，on，off或processing。
        # - originPullProtocol：回源协议类型，支持http，follow或https。
        # - tagKey：标签键。
        # @type Name: String
        # @param Value: 过滤字段值。
        # @type Value: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为origin，domain。
        # 模糊查询时，Value长度最大为1，否则Value长度最大为5。
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

      # 日志包下载链接详情
      class DomainLog < TencentCloud::Common::AbstractModel
        # @param StartTime: 日志包起始时间
        # @type StartTime: String
        # @param EndTime: 日志包结束时间
        # @type EndTime: String
        # @param LogPath: 日志包下载链接
        # @type LogPath: String
        # @param Area: 日志包对应加速区域
        # mainland：境内
        # overseas：境外
        # @type Area: String
        # @param LogName: 日志包文件名
        # @type LogName: String

        attr_accessor :StartTime, :EndTime, :LogPath, :Area, :LogName
        
        def initialize(starttime=nil, endtime=nil, logpath=nil, area=nil, logname=nil)
          @StartTime = starttime
          @EndTime = endtime
          @LogPath = logpath
          @Area = area
          @LogName = logname
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @LogPath = params['LogPath']
          @Area = params['Area']
          @LogName = params['LogName']
        end
      end

      # 单链接下行限速配置，默认为关闭状态
      class DownstreamCapping < TencentCloud::Common::AbstractModel
        # @param Switch: 下行速度配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param CappingRules: 下行限速规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CappingRules: Array

        attr_accessor :Switch, :CappingRules
        
        def initialize(switch=nil, cappingrules=nil)
          @Switch = switch
          @CappingRules = cappingrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['CappingRules'].nil?
            @CappingRules = []
            params['CappingRules'].each do |i|
              cappingrule_tmp = CappingRule.new
              cappingrule_tmp.deserialize(i)
              @CappingRules << cappingrule_tmp
            end
          end
        end
      end

      # DuplicateDomainConfig请求参数结构体
      class DuplicateDomainConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 新增域名
        # @type Domain: String
        # @param ReferenceDomain: 被拷贝配置的域名
        # @type ReferenceDomain: String

        attr_accessor :Domain, :ReferenceDomain
        
        def initialize(domain=nil, referencedomain=nil)
          @Domain = domain
          @ReferenceDomain = referencedomain
        end

        def deserialize(params)
          @Domain = params['Domain']
          @ReferenceDomain = params['ReferenceDomain']
        end
      end

      # DuplicateDomainConfig返回参数结构体
      class DuplicateDomainConfigResponse < TencentCloud::Common::AbstractModel
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

      # EnableCaches请求参数结构体
      class EnableCachesRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 解封 URL 列表
        # @type Urls: Array
        # @param Date: URL封禁日期
        # @type Date: String

        attr_accessor :Urls, :Date
        
        def initialize(urls=nil, date=nil)
          @Urls = urls
          @Date = date
        end

        def deserialize(params)
          @Urls = params['Urls']
          @Date = params['Date']
        end
      end

      # EnableCaches返回参数结构体
      class EnableCachesResponse < TencentCloud::Common::AbstractModel
        # @param CacheOptResult: 结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheOptResult: :class:`Tencentcloud::Cdn.v20180606.models.CacheOptResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CacheOptResult, :RequestId
        
        def initialize(cacheoptresult=nil, requestid=nil)
          @CacheOptResult = cacheoptresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CacheOptResult'].nil?
            @CacheOptResult = CacheOptResult.new
            @CacheOptResult.deserialize(params['CacheOptResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # EnableClsLogTopic请求参数结构体
      class EnableClsLogTopicRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String

        attr_accessor :LogsetId, :TopicId, :Channel
        
        def initialize(logsetid=nil, topicid=nil, channel=nil)
          @LogsetId = logsetid
          @TopicId = topicid
          @Channel = channel
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @Channel = params['Channel']
        end
      end

      # EnableClsLogTopic返回参数结构体
      class EnableClsLogTopicResponse < TencentCloud::Common::AbstractModel
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

      # 状态码重定向配置，默认为关闭状态（功能灰度中，尚未全量）
      class ErrorPage < TencentCloud::Common::AbstractModel
        # @param Switch: 状态码重定向配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param PageRules: 状态码重定向规则配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageRules: Array

        attr_accessor :Switch, :PageRules
        
        def initialize(switch=nil, pagerules=nil)
          @Switch = switch
          @PageRules = pagerules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['PageRules'].nil?
            @PageRules = []
            params['PageRules'].each do |i|
              errorpagerule_tmp = ErrorPageRule.new
              errorpagerule_tmp.deserialize(i)
              @PageRules << errorpagerule_tmp
            end
          end
        end
      end

      # 状态码重定向规则配置
      class ErrorPageRule < TencentCloud::Common::AbstractModel
        # @param StatusCode: 状态码
        # 支持 400、403、404、500
        # @type StatusCode: Integer
        # @param RedirectCode: 重定向状态码设置
        # 支持 301 或 302
        # @type RedirectCode: Integer
        # @param RedirectUrl: 重定向 URL
        # 需要为完整跳转路径，如 https://www.test.com/error.html
        # @type RedirectUrl: String

        attr_accessor :StatusCode, :RedirectCode, :RedirectUrl
        
        def initialize(statuscode=nil, redirectcode=nil, redirecturl=nil)
          @StatusCode = statuscode
          @RedirectCode = redirectcode
          @RedirectUrl = redirecturl
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @RedirectCode = params['RedirectCode']
          @RedirectUrl = params['RedirectUrl']
        end
      end

      # 回源 301/302 状态码自动跟随配置，默认为关闭状态
      class FollowRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: 回源跟随开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 访问协议强制跳转配置，默认为关闭状态
      class ForceRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: 访问强制跳转配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param RedirectType: 访问强制跳转类型
        # http：强制 http 跳转
        # https：强制 https 跳转
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectType: String
        # @param RedirectStatusCode: 强制跳转时返回状态码
        # 支持 301、302
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectStatusCode: Integer
        # @param CarryHeaders: 强制跳转时是否返回增加的头部。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CarryHeaders: String

        attr_accessor :Switch, :RedirectType, :RedirectStatusCode, :CarryHeaders
        
        def initialize(switch=nil, redirecttype=nil, redirectstatuscode=nil, carryheaders=nil)
          @Switch = switch
          @RedirectType = redirecttype
          @RedirectStatusCode = redirectstatuscode
          @CarryHeaders = carryheaders
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RedirectType = params['RedirectType']
          @RedirectStatusCode = params['RedirectStatusCode']
          @CarryHeaders = params['CarryHeaders']
        end
      end

      # GetDisableRecords请求参数结构体
      class GetDisableRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Url: 指定 URL 查询
        # @type Url: String
        # @param StartTime: 开始时间，如：2018-12-12 10:24:00。
        # @type StartTime: String
        # @param EndTime: 结束时间，如：2018-12-14 10:24:00。
        # @type EndTime: String
        # @param Status: URL 当前状态
        # disable：当前仍为禁用状态，访问返回 403
        # enable：当前为可用状态，已解禁，可正常访问
        # @type Status: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为20。
        # @type Limit: Integer
        # @param TaskId: 任务ID，任务ID和起始时间需要至少填写一项。
        # @type TaskId: String

        attr_accessor :Url, :StartTime, :EndTime, :Status, :Offset, :Limit, :TaskId
        
        def initialize(url=nil, starttime=nil, endtime=nil, status=nil, offset=nil, limit=nil, taskid=nil)
          @Url = url
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Offset = offset
          @Limit = limit
          @TaskId = taskid
        end

        def deserialize(params)
          @Url = params['Url']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TaskId = params['TaskId']
        end
      end

      # GetDisableRecords返回参数结构体
      class GetDisableRecordsResponse < TencentCloud::Common::AbstractModel
        # @param UrlRecordList: 封禁历史记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlRecordList: Array
        # @param TotalCount: 任务总数，用于分页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UrlRecordList, :TotalCount, :RequestId
        
        def initialize(urlrecordlist=nil, totalcount=nil, requestid=nil)
          @UrlRecordList = urlrecordlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UrlRecordList'].nil?
            @UrlRecordList = []
            params['UrlRecordList'].each do |i|
              urlrecord_tmp = UrlRecord.new
              urlrecord_tmp.deserialize(i)
              @UrlRecordList << urlrecord_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 图片优化-GuetzliAdapter配置
      class GuetzliAdapter < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，"on/off"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 组成CacheKey
      class HeaderKey < TencentCloud::Common::AbstractModel
        # @param Switch: 是否组成Cachekey
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Value: 组成CacheKey的header数组，';' 分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Switch, :Value
        
        def initialize(switch=nil, value=nil)
          @Switch = switch
          @Value = value
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Value = params['Value']
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

      # Http 头部设置规则，最多可设置 100 条
      class HttpHeaderPathRule < TencentCloud::Common::AbstractModel
        # @param HeaderMode: http 头部设置方式
        # set：设置。变更指定头部参数的取值为设置后的值；若设置的头部不存在，则会增加该头部；若存在多个重复的头部参数，则会全部变更，同时合并为一个头部。
        # del：删除。删除指定的头部参数
        # add：增加。增加指定的头部参数，默认允许重复添加，即重复添加相同的头部（注：重复添加可能会影响浏览器响应，请优先使用set操作）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderMode: String
        # @param HeaderName: http 头部名称，最多可设置 100 个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderName: String
        # @param HeaderValue: http 头部值，最多可设置 1000 个字符
        # Mode 为 del 时非必填
        # Mode 为 add/set 时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderValue: String
        # @param RuleType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param RulePaths: RuleType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
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

      # http头部设置规则。
      class HttpHeaderRule < TencentCloud::Common::AbstractModel
        # @param HeaderMode: http头部设置方式，支持add，set或del，分别表示新增，设置或删除头部。
        # @type HeaderMode: String
        # @param HeaderName: http头部名称。
        # @type HeaderName: String
        # @param HeaderValue: http头部值。
        # @type HeaderValue: String

        attr_accessor :HeaderMode, :HeaderName, :HeaderValue
        
        def initialize(headermode=nil, headername=nil, headervalue=nil)
          @HeaderMode = headermode
          @HeaderName = headername
          @HeaderValue = headervalue
        end

        def deserialize(params)
          @HeaderMode = params['HeaderMode']
          @HeaderName = params['HeaderName']
          @HeaderValue = params['HeaderValue']
        end
      end

      # 域名 https 加速配置，默认为关闭状态
      class Https < TencentCloud::Common::AbstractModel
        # @param Switch: https 配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Http2: http2 配置开关
        # on：开启
        # off：关闭
        # 初次启用 https 加速会默认开启 http2 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Http2: String
        # @param OcspStapling: OCSP 配置开关
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcspStapling: String
        # @param VerifyClient: 客户端证书校验功能
        # on：开启
        # off：关闭
        # 默认为关闭状态，开启时需要上传客户端证书信息，该配置项目前在灰度中，尚未全量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyClient: String
        # @param CertInfo: 服务端证书配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: :class:`Tencentcloud::Cdn.v20180606.models.ServerCert`
        # @param ClientCertInfo: 客户端证书配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertInfo: :class:`Tencentcloud::Cdn.v20180606.models.ClientCert`
        # @param Spdy: Spdy 配置开关
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spdy: String
        # @param SslStatus: https 证书部署状态
        # closed：已关闭
        # deploying：部署中
        # deployed：部署成功
        # failed：部署失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SslStatus: String
        # @param Hsts: Hsts配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hsts: :class:`Tencentcloud::Cdn.v20180606.models.Hsts`
        # @param TlsVersion: Tls版本设置，仅支持部分Advance域名，支持设置 TLSv1, TLSV1.1, TLSV1.2, TLSv1.3，修改时必须开启连续的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TlsVersion: Array

        attr_accessor :Switch, :Http2, :OcspStapling, :VerifyClient, :CertInfo, :ClientCertInfo, :Spdy, :SslStatus, :Hsts, :TlsVersion
        
        def initialize(switch=nil, http2=nil, ocspstapling=nil, verifyclient=nil, certinfo=nil, clientcertinfo=nil, spdy=nil, sslstatus=nil, hsts=nil, tlsversion=nil)
          @Switch = switch
          @Http2 = http2
          @OcspStapling = ocspstapling
          @VerifyClient = verifyclient
          @CertInfo = certinfo
          @ClientCertInfo = clientcertinfo
          @Spdy = spdy
          @SslStatus = sslstatus
          @Hsts = hsts
          @TlsVersion = tlsversion
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
          @TlsVersion = params['TlsVersion']
        end
      end

      # ImageOptimization配置
      class ImageOptimization < TencentCloud::Common::AbstractModel
        # @param WebpAdapter: WebpAdapter配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebpAdapter: :class:`Tencentcloud::Cdn.v20180606.models.WebpAdapter`
        # @param TpgAdapter: TpgAdapter配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TpgAdapter: :class:`Tencentcloud::Cdn.v20180606.models.TpgAdapter`
        # @param GuetzliAdapter: GuetzliAdapter配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GuetzliAdapter: :class:`Tencentcloud::Cdn.v20180606.models.GuetzliAdapter`

        attr_accessor :WebpAdapter, :TpgAdapter, :GuetzliAdapter
        
        def initialize(webpadapter=nil, tpgadapter=nil, guetzliadapter=nil)
          @WebpAdapter = webpadapter
          @TpgAdapter = tpgadapter
          @GuetzliAdapter = guetzliadapter
        end

        def deserialize(params)
          unless params['WebpAdapter'].nil?
            @WebpAdapter = WebpAdapter.new
            @WebpAdapter.deserialize(params['WebpAdapter'])
          end
          unless params['TpgAdapter'].nil?
            @TpgAdapter = TpgAdapter.new
            @TpgAdapter.deserialize(params['TpgAdapter'])
          end
          unless params['GuetzliAdapter'].nil?
            @GuetzliAdapter = GuetzliAdapter.new
            @GuetzliAdapter.deserialize(params['GuetzliAdapter'])
          end
        end
      end

      # IP 黑白名单配置，默认为关闭状态
      class IpFilter < TencentCloud::Common::AbstractModel
        # @param Switch: IP 黑白名单配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param FilterType: IP 黑白名单类型
        # whitelist：白名单
        # blacklist：黑名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterType: String
        # @param Filters: IP 黑白名单列表
        # 支持 X.X.X.X 形式 IP，或 /8、 /16、/24 形式网段
        # 最多可填充 50 个白名单或 50 个黑名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filters: Array
        # @param FilterRules: IP 黑白名单分路径配置，白名单功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterRules: Array

        attr_accessor :Switch, :FilterType, :Filters, :FilterRules
        
        def initialize(switch=nil, filtertype=nil, filters=nil, filterrules=nil)
          @Switch = switch
          @FilterType = filtertype
          @Filters = filters
          @FilterRules = filterrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          @FilterType = params['FilterType']
          @Filters = params['Filters']
          unless params['FilterRules'].nil?
            @FilterRules = []
            params['FilterRules'].each do |i|
              ipfilterpathrule_tmp = IpFilterPathRule.new
              ipfilterpathrule_tmp.deserialize(i)
              @FilterRules << ipfilterpathrule_tmp
            end
          end
        end
      end

      # IP黑白名单分路径配置
      class IpFilterPathRule < TencentCloud::Common::AbstractModel
        # @param FilterType: IP 黑白名单类型
        # whitelist：白名单
        # blacklist：黑名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterType: String
        # @param Filters: IP 黑白名单列表
        # 支持 X.X.X.X 形式 IP，或 /8、 /16、/24 形式网段
        # 最多可填充 50 个白名单或 50 个黑名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filters: Array
        # @param RuleType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param RulePaths: RuleType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulePaths: Array

        attr_accessor :FilterType, :Filters, :RuleType, :RulePaths
        
        def initialize(filtertype=nil, filters=nil, ruletype=nil, rulepaths=nil)
          @FilterType = filtertype
          @Filters = filters
          @RuleType = ruletype
          @RulePaths = rulepaths
        end

        def deserialize(params)
          @FilterType = params['FilterType']
          @Filters = params['Filters']
          @RuleType = params['RuleType']
          @RulePaths = params['RulePaths']
        end
      end

      # 单节点单 IP 访问限频配置，默认为关闭状态
      class IpFreqLimit < TencentCloud::Common::AbstractModel
        # @param Switch: IP 限频配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param Qps: 设置每秒请求数限制
        # 超出限制的请求会直接返回 514
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

        attr_accessor :Ip, :District, :Isp, :City, :Status
        
        def initialize(ip=nil, district=nil, isp=nil, city=nil, status=nil)
          @Ip = ip
          @District = district
          @Isp = isp
          @City = city
          @Status = status
        end

        def deserialize(params)
          @Ip = params['Ip']
          @District = params['District']
          @Isp = params['Isp']
          @City = params['City']
          @Status = params['Status']
        end
      end

      # Ipv6启用配置，不可更改
      class Ipv6 < TencentCloud::Common::AbstractModel
        # @param Switch: 域名是否开启ipv6功能，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # Ipv6访问配置
      class Ipv6Access < TencentCloud::Common::AbstractModel
        # @param Switch: 域名是否开启ipv6访问功能，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 缓存键分路径配置
      class KeyRule < TencentCloud::Common::AbstractModel
        # @param RulePaths: CacheType 对应类型下的匹配内容：
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test
        # path 时填充绝对路径，如 /xxx/test.html
        # index 时填充 /
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulePaths: Array
        # @param RuleType: 规则类型：
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # index：首页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param FullUrlCache: 是否开启全路径缓存
        # on：开启全路径缓存（即关闭参数过滤）
        # off：关闭全路径缓存（即开启参数过滤）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullUrlCache: String
        # @param IgnoreCase: 是否忽略大小写缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCase: String
        # @param QueryString: CacheKey中包含请求参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Cdn.v20180606.models.RuleQueryString`
        # @param RuleTag: 路径缓存键标签，传 user
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTag: String

        attr_accessor :RulePaths, :RuleType, :FullUrlCache, :IgnoreCase, :QueryString, :RuleTag
        
        def initialize(rulepaths=nil, ruletype=nil, fullurlcache=nil, ignorecase=nil, querystring=nil, ruletag=nil)
          @RulePaths = rulepaths
          @RuleType = ruletype
          @FullUrlCache = fullurlcache
          @IgnoreCase = ignorecase
          @QueryString = querystring
          @RuleTag = ruletag
        end

        def deserialize(params)
          @RulePaths = params['RulePaths']
          @RuleType = params['RuleType']
          @FullUrlCache = params['FullUrlCache']
          @IgnoreCase = params['IgnoreCase']
          unless params['QueryString'].nil?
            @QueryString = RuleQueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
          @RuleTag = params['RuleTag']
        end
      end

      # ListClsLogTopics请求参数结构体
      class ListClsLogTopicsRequest < TencentCloud::Common::AbstractModel
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String

        attr_accessor :Channel
        
        def initialize(channel=nil)
          @Channel = channel
        end

        def deserialize(params)
          @Channel = params['Channel']
        end
      end

      # ListClsLogTopics返回参数结构体
      class ListClsLogTopicsResponse < TencentCloud::Common::AbstractModel
        # @param Logset: 日志集信息
        # @type Logset: :class:`Tencentcloud::Cdn.v20180606.models.LogSetInfo`
        # @param Topics: 日志主题信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Logset, :Topics, :RequestId
        
        def initialize(logset=nil, topics=nil, requestid=nil)
          @Logset = logset
          @Topics = topics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Logset'].nil?
            @Logset = LogSetInfo.new
            @Logset.deserialize(params['Logset'])
          end
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              topicinfo_tmp = TopicInfo.new
              topicinfo_tmp.deserialize(i)
              @Topics << topicinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListClsTopicDomains请求参数结构体
      class ListClsTopicDomainsRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String

        attr_accessor :LogsetId, :TopicId, :Channel
        
        def initialize(logsetid=nil, topicid=nil, channel=nil)
          @LogsetId = logsetid
          @TopicId = topicid
          @Channel = channel
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @Channel = params['Channel']
        end
      end

      # ListClsTopicDomains返回参数结构体
      class ListClsTopicDomainsResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 开发者ID
        # @type AppId: Integer
        # @param Channel: 渠道
        # @type Channel: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param DomainAreaConfigs: 域名区域配置，其中可能含有已删除的域名，如果要再传回ManageClsTopicDomains接口，需要结合ListCdnDomains接口排除掉已删除的域名
        # @type DomainAreaConfigs: Array
        # @param TopicName: 日志主题名称
        # @type TopicName: String
        # @param UpdateTime: 日志主题最近更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :Channel, :LogsetId, :TopicId, :DomainAreaConfigs, :TopicName, :UpdateTime, :RequestId
        
        def initialize(appid=nil, channel=nil, logsetid=nil, topicid=nil, domainareaconfigs=nil, topicname=nil, updatetime=nil, requestid=nil)
          @AppId = appid
          @Channel = channel
          @LogsetId = logsetid
          @TopicId = topicid
          @DomainAreaConfigs = domainareaconfigs
          @TopicName = topicname
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Channel = params['Channel']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          unless params['DomainAreaConfigs'].nil?
            @DomainAreaConfigs = []
            params['DomainAreaConfigs'].each do |i|
              domainareaconfig_tmp = DomainAreaConfig.new
              domainareaconfig_tmp.deserialize(i)
              @DomainAreaConfigs << domainareaconfig_tmp
            end
          end
          @TopicName = params['TopicName']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # ListDiagnoseReport请求参数结构体
      class ListDiagnoseReportRequest < TencentCloud::Common::AbstractModel
        # @param KeyWords: 用于搜索诊断URL的关键字，不填时返回用户所有的诊断任务。
        # @type KeyWords: String
        # @param DiagnoseLink: 用于搜索诊断系统返回的诊断链接，形如：http://cdn.cloud.tencent.com/self_diagnose/xxxxx
        # @type DiagnoseLink: String

        attr_accessor :KeyWords, :DiagnoseLink
        
        def initialize(keywords=nil, diagnoselink=nil)
          @KeyWords = keywords
          @DiagnoseLink = diagnoselink
        end

        def deserialize(params)
          @KeyWords = params['KeyWords']
          @DiagnoseLink = params['DiagnoseLink']
        end
      end

      # ListDiagnoseReport返回参数结构体
      class ListDiagnoseReportResponse < TencentCloud::Common::AbstractModel
        # @param Data: 诊断信息。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              diagnoseinfo_tmp = DiagnoseInfo.new
              diagnoseinfo_tmp.deserialize(i)
              @Data << diagnoseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListScdnDomains请求参数结构体
      class ListScdnDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页起始地址
        # @type Offset: Integer
        # @param Limit: 列表分页记录条数，最大1000
        # @type Limit: Integer
        # @param Domain: 域名信息
        # @type Domain: String

        attr_accessor :Offset, :Limit, :Domain
        
        def initialize(offset=nil, limit=nil, domain=nil)
          @Offset = offset
          @Limit = limit
          @Domain = domain
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Domain = params['Domain']
        end
      end

      # ListScdnDomains返回参数结构体
      class ListScdnDomainsResponse < TencentCloud::Common::AbstractModel
        # @param DomainList: 域名列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainList: Array
        # @param TotalCount: 域名的总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainList, :TotalCount, :RequestId
        
        def initialize(domainlist=nil, totalcount=nil, requestid=nil)
          @DomainList = domainlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainList'].nil?
            @DomainList = []
            params['DomainList'].each do |i|
              scdndomain_tmp = ScdnDomain.new
              scdndomain_tmp.deserialize(i)
              @DomainList << scdndomain_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListScdnLogTasks请求参数结构体
      class ListScdnLogTasksRequest < TencentCloud::Common::AbstractModel
        # @param Source: 产品来源 cdn/ecdn
        # @type Source: String
        # @param Area: 地域：mainland 或 overseas 为空表示查询所有地域
        # @type Area: String

        attr_accessor :Source, :Area
        
        def initialize(source=nil, area=nil)
          @Source = source
          @Area = area
        end

        def deserialize(params)
          @Source = params['Source']
          @Area = params['Area']
        end
      end

      # ListScdnLogTasks返回参数结构体
      class ListScdnLogTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskList: 日志下载任务详情
        # @type TaskList: Array
        # @param TotalCount: 查询到的下载任务的总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskList, :TotalCount, :RequestId
        
        def initialize(tasklist=nil, totalcount=nil, requestid=nil)
          @TaskList = tasklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              scdnlogtaskdetail_tmp = ScdnLogTaskDetail.new
              scdnlogtaskdetail_tmp.deserialize(i)
              @TaskList << scdnlogtaskdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListTopData请求参数结构体
      class ListTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始日期：yyyy-MM-dd HH:mm:ss
        # 仅支持按天粒度的数据查询，取入参中的天信息作为起始日期
        # 返回大于等于起始日期当天 00:00:00 点产生的数据
        # 仅支持 90 天内数据查询
        # @type StartTime: String
        # @param EndTime: 查询结束日期：yyyy-MM-dd HH:mm:ss
        # 仅支持按天粒度的数据查询，取入参中的天信息作为结束日期
        # 返回小于等于结束日期当天 23:59:59 产生的数据
        # EndTime 需要大于等于 StartTime
        # @type EndTime: String
        # @param Metric: 排序对象，支持以下几种形式：
        # url：访问 URL 排序（无参数的URL），支持的 Filter 为 flux、request
        # district：省份、国家/地区排序，支持的 Filter 为 flux、request
        # isp：运营商排序，支持的 Filter 为 flux、request
        # host：域名访问数据排序，支持的 Filter 为：flux、request、bandwidth、fluxHitRate、2XX、3XX、4XX、5XX、statusCode
        # originHost：域名回源数据排序，支持的 Filter 为 flux、request、bandwidth、origin_2XX、origin_3XX、origin_4XX、origin_5XX、OriginStatusCode
        # @type Metric: String
        # @param Filter: 排序使用的指标名称：
        # flux：Metric 为 host 时指代访问流量，originHost 时指代回源流量
        # bandwidth：Metric 为 host 时指代访问带宽，originHost 时指代回源带宽
        # request：Metric 为 host 时指代访问请求数，originHost 时指代回源请求数
        # fluxHitRate：平均流量命中率
        # 2XX：访问 2XX 状态码
        # 3XX：访问 3XX 状态码
        # 4XX：访问 4XX 状态码
        # 5XX：访问 5XX 状态码
        # origin_2XX：回源 2XX 状态码
        # origin_3XX：回源 3XX 状态码
        # origin_4XX：回源 4XX 状态码
        # origin_5XX：回源 5XX 状态码
        # statusCode：指定访问状态码统计，在 Code 参数中填充指定状态码
        # OriginStatusCode：指定回源状态码统计，在 Code 参数中填充指定状态码
        # @type Filter: String
        # @param Domains: 指定查询域名列表，最多可一次性查询 30 个加速域名明细
        # @type Domains: Array
        # @param Project: 指定要查询的项目 ID，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        # 未填充域名情况下，指定项目查询，若填充了具体域名信息，以域名为主
        # @type Project: Integer
        # @param Detail: 多域名查询时，默认（false)返回所有域名汇总排序结果
        # Metric 为 url、path、district、isp，Filter 为 flux、request 时，可设置为 true，返回每一个 Domain 的排序数据
        # @type Detail: Boolean
        # @param Code: Filter 为 statusCode、OriginStatusCode 时，填充指定状态码查询排序结果
        # @type Code: String
        # @param Area: 指定服务地域查询，不填充表示查询中国境内 CDN 数据
        # mainland：指定查询中国境内 CDN 数据
        # overseas：指定查询中国境外 CDN 数据，支持的 Metric 为 url、district、host、originHost，当 Metric 为 originHost 时仅支持 flux、request、bandwidth Filter
        # @type Area: String
        # @param AreaType: 查询中国境外CDN数据，且仅当 Metric 为 district 或 host 时，可指定地区类型查询，不填充表示查询服务地区数据（仅在 Area 为 overseas，且 Metric 是 district 或 host 时可用）
        # server：指定查询服务地区（腾讯云 CDN 节点服务器所在地区）数据
        # client：指定查询客户端地区（用户请求终端所在地区）数据，当 Metric 为 host 时仅支持 flux、request、bandwidth Filter
        # @type AreaType: String
        # @param Product: 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        # @type Product: String

        attr_accessor :StartTime, :EndTime, :Metric, :Filter, :Domains, :Project, :Detail, :Code, :Area, :AreaType, :Product
        
        def initialize(starttime=nil, endtime=nil, metric=nil, filter=nil, domains=nil, project=nil, detail=nil, code=nil, area=nil, areatype=nil, product=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Filter = filter
          @Domains = domains
          @Project = project
          @Detail = detail
          @Code = code
          @Area = area
          @AreaType = areatype
          @Product = product
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Filter = params['Filter']
          @Domains = params['Domains']
          @Project = params['Project']
          @Detail = params['Detail']
          @Code = params['Code']
          @Area = params['Area']
          @AreaType = params['AreaType']
          @Product = params['Product']
        end
      end

      # ListTopData返回参数结构体
      class ListTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 各个资源的Top 访问数据详情。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              topdata_tmp = TopData.new
              topdata_tmp.deserialize(i)
              @Data << topdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 日志集信息
      class LogSetInfo < TencentCloud::Common::AbstractModel
        # @param AppId: 开发者ID
        # @type AppId: Integer
        # @param Channel: 渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: String
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param LogsetName: 日志集名字
        # @type LogsetName: String
        # @param IsDefault: 是否默认日志集
        # @type IsDefault: Integer
        # @param LogsetSavePeriod: 日志保存时间，单位为天
        # @type LogsetSavePeriod: Integer
        # @param CreateTime: 创建日期
        # @type CreateTime: String
        # @param Region: 区域
        # @type Region: String

        attr_accessor :AppId, :Channel, :LogsetId, :LogsetName, :IsDefault, :LogsetSavePeriod, :CreateTime, :Region
        
        def initialize(appid=nil, channel=nil, logsetid=nil, logsetname=nil, isdefault=nil, logsetsaveperiod=nil, createtime=nil, region=nil)
          @AppId = appid
          @Channel = channel
          @LogsetId = logsetid
          @LogsetName = logsetname
          @IsDefault = isdefault
          @LogsetSavePeriod = logsetsaveperiod
          @CreateTime = createtime
          @Region = region
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Channel = params['Channel']
          @LogsetId = params['LogsetId']
          @LogsetName = params['LogsetName']
          @IsDefault = params['IsDefault']
          @LogsetSavePeriod = params['LogsetSavePeriod']
          @CreateTime = params['CreateTime']
          @Region = params['Region']
        end
      end

      # 域名国内地区特殊配置。分地区特殊配置。UpdateDomainConfig接口只支持修改部分分地区配置，为了兼容旧版本配置，本类型会列出旧版本所有可能存在差异的配置列表，支持修改的配置列表如下：
      # + Authentication
      # + BandwidthAlert
      # + ErrorPage
      # + IpFilter
      # + Origin
      # + Referer
      class MainlandConfig < TencentCloud::Common::AbstractModel
        # @param Authentication: 时间戳防盗链配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Authentication: :class:`Tencentcloud::Cdn.v20180606.models.Authentication`
        # @param BandwidthAlert: 带宽封顶配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthAlert: :class:`Tencentcloud::Cdn.v20180606.models.BandwidthAlert`
        # @param Cache: 缓存规则配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Cdn.v20180606.models.Cache`
        # @param CacheKey: 缓存相关配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Cdn.v20180606.models.CacheKey`
        # @param Compression: 智能压缩配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Cdn.v20180606.models.Compression`
        # @param DownstreamCapping: 下载限速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownstreamCapping: :class:`Tencentcloud::Cdn.v20180606.models.DownstreamCapping`
        # @param ErrorPage: 错误码重定向配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ErrorPage`
        # @param FollowRedirect: 301和302自动回源跟随配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowRedirect: :class:`Tencentcloud::Cdn.v20180606.models.FollowRedirect`
        # @param ForceRedirect: 访问协议强制跳转配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Cdn.v20180606.models.ForceRedirect`
        # @param Https: Https配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Cdn.v20180606.models.Https`
        # @param IpFilter: IP黑白名单配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFilter: :class:`Tencentcloud::Cdn.v20180606.models.IpFilter`
        # @param IpFreqLimit: IP限频配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFreqLimit: :class:`Tencentcloud::Cdn.v20180606.models.IpFreqLimit`
        # @param MaxAge: 浏览器缓存规则配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Cdn.v20180606.models.MaxAge`
        # @param Origin: 源站配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Cdn.v20180606.models.Origin`
        # @param OriginPullOptimization: 跨国优化配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullOptimization: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullOptimization`
        # @param RangeOriginPull: Range回源配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangeOriginPull: :class:`Tencentcloud::Cdn.v20180606.models.RangeOriginPull`
        # @param Referer: 防盗链配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Referer: :class:`Tencentcloud::Cdn.v20180606.models.Referer`
        # @param RequestHeader: 回源请求头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeader: :class:`Tencentcloud::Cdn.v20180606.models.RequestHeader`
        # @param ResponseHeader: 源站响应头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeader: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeader`
        # @param ResponseHeaderCache: 遵循源站缓存头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeaderCache: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeaderCache`
        # @param Seo: seo优化配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seo: :class:`Tencentcloud::Cdn.v20180606.models.Seo`
        # @param ServiceType: 域名业务类型，web，download，media分别表示静态加速，下载加速和流媒体加速。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param StatusCodeCache: 状态码缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCodeCache: :class:`Tencentcloud::Cdn.v20180606.models.StatusCodeCache`
        # @param VideoSeek: 视频拖拽配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoSeek: :class:`Tencentcloud::Cdn.v20180606.models.VideoSeek`

        attr_accessor :Authentication, :BandwidthAlert, :Cache, :CacheKey, :Compression, :DownstreamCapping, :ErrorPage, :FollowRedirect, :ForceRedirect, :Https, :IpFilter, :IpFreqLimit, :MaxAge, :Origin, :OriginPullOptimization, :RangeOriginPull, :Referer, :RequestHeader, :ResponseHeader, :ResponseHeaderCache, :Seo, :ServiceType, :StatusCodeCache, :VideoSeek
        
        def initialize(authentication=nil, bandwidthalert=nil, cache=nil, cachekey=nil, compression=nil, downstreamcapping=nil, errorpage=nil, followredirect=nil, forceredirect=nil, https=nil, ipfilter=nil, ipfreqlimit=nil, maxage=nil, origin=nil, originpulloptimization=nil, rangeoriginpull=nil, referer=nil, requestheader=nil, responseheader=nil, responseheadercache=nil, seo=nil, servicetype=nil, statuscodecache=nil, videoseek=nil)
          @Authentication = authentication
          @BandwidthAlert = bandwidthalert
          @Cache = cache
          @CacheKey = cachekey
          @Compression = compression
          @DownstreamCapping = downstreamcapping
          @ErrorPage = errorpage
          @FollowRedirect = followredirect
          @ForceRedirect = forceredirect
          @Https = https
          @IpFilter = ipfilter
          @IpFreqLimit = ipfreqlimit
          @MaxAge = maxage
          @Origin = origin
          @OriginPullOptimization = originpulloptimization
          @RangeOriginPull = rangeoriginpull
          @Referer = referer
          @RequestHeader = requestheader
          @ResponseHeader = responseheader
          @ResponseHeaderCache = responseheadercache
          @Seo = seo
          @ServiceType = servicetype
          @StatusCodeCache = statuscodecache
          @VideoSeek = videoseek
        end

        def deserialize(params)
          unless params['Authentication'].nil?
            @Authentication = Authentication.new
            @Authentication.deserialize(params['Authentication'])
          end
          unless params['BandwidthAlert'].nil?
            @BandwidthAlert = BandwidthAlert.new
            @BandwidthAlert.deserialize(params['BandwidthAlert'])
          end
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['DownstreamCapping'].nil?
            @DownstreamCapping = DownstreamCapping.new
            @DownstreamCapping.deserialize(params['DownstreamCapping'])
          end
          unless params['ErrorPage'].nil?
            @ErrorPage = ErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
          unless params['FollowRedirect'].nil?
            @FollowRedirect = FollowRedirect.new
            @FollowRedirect.deserialize(params['FollowRedirect'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['IpFilter'].nil?
            @IpFilter = IpFilter.new
            @IpFilter.deserialize(params['IpFilter'])
          end
          unless params['IpFreqLimit'].nil?
            @IpFreqLimit = IpFreqLimit.new
            @IpFreqLimit.deserialize(params['IpFreqLimit'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['OriginPullOptimization'].nil?
            @OriginPullOptimization = OriginPullOptimization.new
            @OriginPullOptimization.deserialize(params['OriginPullOptimization'])
          end
          unless params['RangeOriginPull'].nil?
            @RangeOriginPull = RangeOriginPull.new
            @RangeOriginPull.deserialize(params['RangeOriginPull'])
          end
          unless params['Referer'].nil?
            @Referer = Referer.new
            @Referer.deserialize(params['Referer'])
          end
          unless params['RequestHeader'].nil?
            @RequestHeader = RequestHeader.new
            @RequestHeader.deserialize(params['RequestHeader'])
          end
          unless params['ResponseHeader'].nil?
            @ResponseHeader = ResponseHeader.new
            @ResponseHeader.deserialize(params['ResponseHeader'])
          end
          unless params['ResponseHeaderCache'].nil?
            @ResponseHeaderCache = ResponseHeaderCache.new
            @ResponseHeaderCache.deserialize(params['ResponseHeaderCache'])
          end
          unless params['Seo'].nil?
            @Seo = Seo.new
            @Seo.deserialize(params['Seo'])
          end
          @ServiceType = params['ServiceType']
          unless params['StatusCodeCache'].nil?
            @StatusCodeCache = StatusCodeCache.new
            @StatusCodeCache.deserialize(params['StatusCodeCache'])
          end
          unless params['VideoSeek'].nil?
            @VideoSeek = VideoSeek.new
            @VideoSeek.deserialize(params['VideoSeek'])
          end
        end
      end

      # ManageClsTopicDomains请求参数结构体
      class ManageClsTopicDomainsRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集ID
        # @type LogsetId: String
        # @param TopicId: 日志主题ID
        # @type TopicId: String
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String
        # @param DomainAreaConfigs: 域名区域配置，注意：如果此字段为空，则表示解绑对应主题下的所有域名
        # @type DomainAreaConfigs: Array

        attr_accessor :LogsetId, :TopicId, :Channel, :DomainAreaConfigs
        
        def initialize(logsetid=nil, topicid=nil, channel=nil, domainareaconfigs=nil)
          @LogsetId = logsetid
          @TopicId = topicid
          @Channel = channel
          @DomainAreaConfigs = domainareaconfigs
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @Channel = params['Channel']
          unless params['DomainAreaConfigs'].nil?
            @DomainAreaConfigs = []
            params['DomainAreaConfigs'].each do |i|
              domainareaconfig_tmp = DomainAreaConfig.new
              domainareaconfig_tmp.deserialize(i)
              @DomainAreaConfigs << domainareaconfig_tmp
            end
          end
        end
      end

      # ManageClsTopicDomains返回参数结构体
      class ManageClsTopicDomainsResponse < TencentCloud::Common::AbstractModel
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

      # 名称与ID映射关系
      class MapInfo < TencentCloud::Common::AbstractModel
        # @param Id: 对象 Id
        # @type Id: Integer
        # @param Name: 对象名称
        # @type Name: String

        attr_accessor :Id, :Name
        
        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 浏览器缓存规则配置，用于设置 MaxAge 默认值，默认为关闭状态（功能灰度中，尚未全量）
      class MaxAge < TencentCloud::Common::AbstractModel
        # @param Switch: 浏览器缓存配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param MaxAgeRules: MaxAge 规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAgeRules: Array

        attr_accessor :Switch, :MaxAgeRules
        
        def initialize(switch=nil, maxagerules=nil)
          @Switch = switch
          @MaxAgeRules = maxagerules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['MaxAgeRules'].nil?
            @MaxAgeRules = []
            params['MaxAgeRules'].each do |i|
              maxagerule_tmp = MaxAgeRule.new
              maxagerule_tmp.deserialize(i)
              @MaxAgeRules << maxagerule_tmp
            end
          end
        end
      end

      # MagAge 规则配置
      class MaxAgeRule < TencentCloud::Common::AbstractModel
        # @param MaxAgeType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # index: 指定主页生效
        # @type MaxAgeType: String
        # @param MaxAgeContents: MaxAgeType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
        # index 时填充 /
        # 注意：all规则不可删除，默认遵循源站，可修改。
        # @type MaxAgeContents: Array
        # @param MaxAgeTime: MaxAge 时间设置，单位秒
        # 注意：时间为0，即不缓存。
        # @type MaxAgeTime: Integer
        # @param FollowOrigin: 是否遵循源站，on或off，开启时忽略时间设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: String

        attr_accessor :MaxAgeType, :MaxAgeContents, :MaxAgeTime, :FollowOrigin
        
        def initialize(maxagetype=nil, maxagecontents=nil, maxagetime=nil, followorigin=nil)
          @MaxAgeType = maxagetype
          @MaxAgeContents = maxagecontents
          @MaxAgeTime = maxagetime
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          @MaxAgeType = params['MaxAgeType']
          @MaxAgeContents = params['MaxAgeContents']
          @MaxAgeTime = params['MaxAgeTime']
          @FollowOrigin = params['FollowOrigin']
        end
      end

      # ModifyPurgeFetchTaskStatus请求参数结构体
      class ModifyPurgeFetchTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param ExecutionTime: 执行时间
        # @type ExecutionTime: String
        # @param ExecutionStatus: 执行状态
        # success: 成功
        # failed: 失败
        # @type ExecutionStatus: String
        # @param Id: 任务 ID
        # @type Id: String
        # @param ExecutionStatusDesc: 执行状态详情
        # @type ExecutionStatusDesc: String

        attr_accessor :ExecutionTime, :ExecutionStatus, :Id, :ExecutionStatusDesc
        
        def initialize(executiontime=nil, executionstatus=nil, id=nil, executionstatusdesc=nil)
          @ExecutionTime = executiontime
          @ExecutionStatus = executionstatus
          @Id = id
          @ExecutionStatusDesc = executionstatusdesc
        end

        def deserialize(params)
          @ExecutionTime = params['ExecutionTime']
          @ExecutionStatus = params['ExecutionStatus']
          @Id = params['Id']
          @ExecutionStatusDesc = params['ExecutionStatusDesc']
        end
      end

      # ModifyPurgeFetchTaskStatus返回参数结构体
      class ModifyPurgeFetchTaskStatusResponse < TencentCloud::Common::AbstractModel
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

      # 离线缓存是否开启
      class OfflineCache < TencentCloud::Common::AbstractModel
        # @param Switch: on | off, 离线缓存是否开启
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 源站配置复杂类型，支持以下配置：
      # + 源站指定为单个域名
      # + 源站指定为多个 IP，可配置端口（1~65535），可配置权重（1~100），格式为 IP:端口:权重
      # + 回源域名配置
      # + 对象存储（COS）作为源站
      # + 热备源站指定为单个域名
      # + 热备源站指定为多个 IP，可配置端口（1~65535），暂不支持权重配置
      # + 热备源站回源域名配置
      class Origin < TencentCloud::Common::AbstractModel
        # @param Origins: 主源站列表
        # 修改源站时，需要同时填充对应的 OriginType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origins: Array
        # @param OriginType: 主源站类型
        # 入参支持以下几种类型：
        # domain：域名类型
        # cos：对象存储源站
        # ip：IP 列表作为源站
        # ipv6：源站列表为一个单独的 IPv6 地址
        # ip_ipv6：源站列表为多个 IPv4 地址和一个 IPv6 地址
        # 出参增加以下几种类型：
        # image：数据万象源站
        # ftp：历史 FTP 托管源源站，现已不维护
        # 修改 Origins 时需要同时填充对应的 OriginType
        # IPv6 功能目前尚未全量，需要先申请试用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginType: String
        # @param ServerName: 回主源站时 Host 头部，不填充则默认为加速域名
        # 若接入的是泛域名，则回源 Host 默认为访问时的子域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerName: String
        # @param CosPrivateAccess: OriginType 为对象存储（COS）时，可以指定是否允许访问私有 bucket
        # 注意：需要先授权 CDN 访问该私有 Bucket 的权限后，才可开启此配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPrivateAccess: String
        # @param OriginPullProtocol: 回源协议配置
        # http：强制 http 回源
        # follow：协议跟随回源
        # https：强制 https 回源，https 回源时仅支持源站 443 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullProtocol: String
        # @param BackupOrigins: 备源站列表
        # 修改备源站时，需要同时填充对应的 BackupOriginType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOrigins: Array
        # @param BackupOriginType: 备源站类型，支持以下类型：
        # domain：域名类型
        # ip：IP 列表作为源站
        # 修改 BackupOrigins 时需要同时填充对应的 BackupOriginType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOriginType: String
        # @param BackupServerName: 回备源站时 Host 头部，不填充则默认为主源站的 ServerName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupServerName: String
        # @param BasePath: 回源路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasePath: String
        # @param PathRules: 回源路径重写规则配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathRules: Array
        # @param PathBasedOrigin: 分路径回源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathBasedOrigin: Array

        attr_accessor :Origins, :OriginType, :ServerName, :CosPrivateAccess, :OriginPullProtocol, :BackupOrigins, :BackupOriginType, :BackupServerName, :BasePath, :PathRules, :PathBasedOrigin
        
        def initialize(origins=nil, origintype=nil, servername=nil, cosprivateaccess=nil, originpullprotocol=nil, backuporigins=nil, backuporigintype=nil, backupservername=nil, basepath=nil, pathrules=nil, pathbasedorigin=nil)
          @Origins = origins
          @OriginType = origintype
          @ServerName = servername
          @CosPrivateAccess = cosprivateaccess
          @OriginPullProtocol = originpullprotocol
          @BackupOrigins = backuporigins
          @BackupOriginType = backuporigintype
          @BackupServerName = backupservername
          @BasePath = basepath
          @PathRules = pathrules
          @PathBasedOrigin = pathbasedorigin
        end

        def deserialize(params)
          @Origins = params['Origins']
          @OriginType = params['OriginType']
          @ServerName = params['ServerName']
          @CosPrivateAccess = params['CosPrivateAccess']
          @OriginPullProtocol = params['OriginPullProtocol']
          @BackupOrigins = params['BackupOrigins']
          @BackupOriginType = params['BackupOriginType']
          @BackupServerName = params['BackupServerName']
          @BasePath = params['BasePath']
          unless params['PathRules'].nil?
            @PathRules = []
            params['PathRules'].each do |i|
              pathrule_tmp = PathRule.new
              pathrule_tmp.deserialize(i)
              @PathRules << pathrule_tmp
            end
          end
          unless params['PathBasedOrigin'].nil?
            @PathBasedOrigin = []
            params['PathBasedOrigin'].each do |i|
              pathbasedoriginrule_tmp = PathBasedOriginRule.new
              pathbasedoriginrule_tmp.deserialize(i)
              @PathBasedOrigin << pathbasedoriginrule_tmp
            end
          end
        end
      end

      # 回源鉴权高级配置
      class OriginAuthentication < TencentCloud::Common::AbstractModel
        # @param Switch: 鉴权开关，on或off
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param TypeA: 鉴权类型A配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeA: :class:`Tencentcloud::Cdn.v20180606.models.OriginAuthenticationTypeA`

        attr_accessor :Switch, :TypeA
        
        def initialize(switch=nil, typea=nil)
          @Switch = switch
          @TypeA = typea
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['TypeA'].nil?
            @TypeA = OriginAuthenticationTypeA.new
            @TypeA.deserialize(params['TypeA'])
          end
        end
      end

      # 回源鉴权高级配置TypeA
      class OriginAuthenticationTypeA < TencentCloud::Common::AbstractModel
        # @param SecretKey: 用于计算签名的密钥，只允许字母和数字，长度6-32字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String

        attr_accessor :SecretKey
        
        def initialize(secretkey=nil)
          @SecretKey = secretkey
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
        end
      end

      # 合并回源配置项
      class OriginCombine < TencentCloud::Common::AbstractModel
        # @param Switch: on|off 是否开启合并回源
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # CDN回源节点IP信息
      class OriginIp < TencentCloud::Common::AbstractModel
        # @param Ip: 回源IP段/回源IP，默认返回IP段信息。
        # @type Ip: String

        attr_accessor :Ip
        
        def initialize(ip=nil)
          @Ip = ip
        end

        def deserialize(params)
          @Ip = params['Ip']
        end
      end

      # 跨国回源优化配置，默认为关闭状态（功能灰度中，尚未全量）
      class OriginPullOptimization < TencentCloud::Common::AbstractModel
        # @param Switch: 跨国回源优化配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param OptimizationType: 跨国类型
        # OVToCN：境外回源境内
        # CNToOV：境内回源境外
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptimizationType: String

        attr_accessor :Switch, :OptimizationType
        
        def initialize(switch=nil, optimizationtype=nil)
          @Switch = switch
          @OptimizationType = optimizationtype
        end

        def deserialize(params)
          @Switch = params['Switch']
          @OptimizationType = params['OptimizationType']
        end
      end

      # 回源超时配置
      class OriginPullTimeout < TencentCloud::Common::AbstractModel
        # @param ConnectTimeout: 回源建连超时时间，单位为秒，要求5~60之间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectTimeout: Integer
        # @param ReceiveTimeout: 回源接收超时时间，单位为秒，要求10 ~ 60之间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveTimeout: Integer

        attr_accessor :ConnectTimeout, :ReceiveTimeout
        
        def initialize(connecttimeout=nil, receivetimeout=nil)
          @ConnectTimeout = connecttimeout
          @ReceiveTimeout = receivetimeout
        end

        def deserialize(params)
          @ConnectTimeout = params['ConnectTimeout']
          @ReceiveTimeout = params['ReceiveTimeout']
        end
      end

      # oss回源鉴权
      class OssPrivateAccess < TencentCloud::Common::AbstractModel
        # @param Switch: 开关， on/off。
        # @type Switch: String
        # @param AccessKey: 访问ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKey: String
        # @param SecretKey: 密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String

        attr_accessor :Switch, :AccessKey, :SecretKey
        
        def initialize(switch=nil, accesskey=nil, secretkey=nil)
          @Switch = switch
          @AccessKey = accesskey
          @SecretKey = secretkey
        end

        def deserialize(params)
          @Switch = params['Switch']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
        end
      end

      # 域名海外地区特殊配置。UpdateDomainConfig接口只支持修改部分分地区配置，为了兼容旧版本配置，本类型会列出旧版本所有可能存在差异的配置列表，支持修改的配置列表如下：
      # + Authentication
      # + BandwidthAlert
      # + ErrorPage
      # + IpFilter
      # + Origin
      # + Referer
      class OverseaConfig < TencentCloud::Common::AbstractModel
        # @param Authentication: 时间戳防盗链配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Authentication: :class:`Tencentcloud::Cdn.v20180606.models.Authentication`
        # @param BandwidthAlert: 带宽封顶配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthAlert: :class:`Tencentcloud::Cdn.v20180606.models.BandwidthAlert`
        # @param Cache: 缓存规则配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Cdn.v20180606.models.Cache`
        # @param CacheKey: 缓存相关配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Cdn.v20180606.models.CacheKey`
        # @param Compression: 智能压缩配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Cdn.v20180606.models.Compression`
        # @param DownstreamCapping: 下载限速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownstreamCapping: :class:`Tencentcloud::Cdn.v20180606.models.DownstreamCapping`
        # @param ErrorPage: 错误码重定向配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ErrorPage`
        # @param FollowRedirect: 301和302自动回源跟随配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowRedirect: :class:`Tencentcloud::Cdn.v20180606.models.FollowRedirect`
        # @param ForceRedirect: 访问协议强制跳转配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Cdn.v20180606.models.ForceRedirect`
        # @param Https: Https配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Cdn.v20180606.models.Https`
        # @param IpFilter: IP黑白名单配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFilter: :class:`Tencentcloud::Cdn.v20180606.models.IpFilter`
        # @param IpFreqLimit: IP限频配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpFreqLimit: :class:`Tencentcloud::Cdn.v20180606.models.IpFreqLimit`
        # @param MaxAge: 浏览器缓存规则配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Cdn.v20180606.models.MaxAge`
        # @param Origin: 源站配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Cdn.v20180606.models.Origin`
        # @param OriginPullOptimization: 跨国优化配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullOptimization: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullOptimization`
        # @param RangeOriginPull: Range回源配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangeOriginPull: :class:`Tencentcloud::Cdn.v20180606.models.RangeOriginPull`
        # @param Referer: 防盗链配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Referer: :class:`Tencentcloud::Cdn.v20180606.models.Referer`
        # @param RequestHeader: 回源请求头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeader: :class:`Tencentcloud::Cdn.v20180606.models.RequestHeader`
        # @param ResponseHeader: 源站响应头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeader: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeader`
        # @param ResponseHeaderCache: 遵循源站缓存头部配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeaderCache: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeaderCache`
        # @param Seo: seo优化配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seo: :class:`Tencentcloud::Cdn.v20180606.models.Seo`
        # @param ServiceType: 域名业务类型，web，download，media分别表示静态加速，下载加速和流媒体加速。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param StatusCodeCache: 状态码缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCodeCache: :class:`Tencentcloud::Cdn.v20180606.models.StatusCodeCache`
        # @param VideoSeek: 视频拖拽配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoSeek: :class:`Tencentcloud::Cdn.v20180606.models.VideoSeek`

        attr_accessor :Authentication, :BandwidthAlert, :Cache, :CacheKey, :Compression, :DownstreamCapping, :ErrorPage, :FollowRedirect, :ForceRedirect, :Https, :IpFilter, :IpFreqLimit, :MaxAge, :Origin, :OriginPullOptimization, :RangeOriginPull, :Referer, :RequestHeader, :ResponseHeader, :ResponseHeaderCache, :Seo, :ServiceType, :StatusCodeCache, :VideoSeek
        
        def initialize(authentication=nil, bandwidthalert=nil, cache=nil, cachekey=nil, compression=nil, downstreamcapping=nil, errorpage=nil, followredirect=nil, forceredirect=nil, https=nil, ipfilter=nil, ipfreqlimit=nil, maxage=nil, origin=nil, originpulloptimization=nil, rangeoriginpull=nil, referer=nil, requestheader=nil, responseheader=nil, responseheadercache=nil, seo=nil, servicetype=nil, statuscodecache=nil, videoseek=nil)
          @Authentication = authentication
          @BandwidthAlert = bandwidthalert
          @Cache = cache
          @CacheKey = cachekey
          @Compression = compression
          @DownstreamCapping = downstreamcapping
          @ErrorPage = errorpage
          @FollowRedirect = followredirect
          @ForceRedirect = forceredirect
          @Https = https
          @IpFilter = ipfilter
          @IpFreqLimit = ipfreqlimit
          @MaxAge = maxage
          @Origin = origin
          @OriginPullOptimization = originpulloptimization
          @RangeOriginPull = rangeoriginpull
          @Referer = referer
          @RequestHeader = requestheader
          @ResponseHeader = responseheader
          @ResponseHeaderCache = responseheadercache
          @Seo = seo
          @ServiceType = servicetype
          @StatusCodeCache = statuscodecache
          @VideoSeek = videoseek
        end

        def deserialize(params)
          unless params['Authentication'].nil?
            @Authentication = Authentication.new
            @Authentication.deserialize(params['Authentication'])
          end
          unless params['BandwidthAlert'].nil?
            @BandwidthAlert = BandwidthAlert.new
            @BandwidthAlert.deserialize(params['BandwidthAlert'])
          end
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['DownstreamCapping'].nil?
            @DownstreamCapping = DownstreamCapping.new
            @DownstreamCapping.deserialize(params['DownstreamCapping'])
          end
          unless params['ErrorPage'].nil?
            @ErrorPage = ErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
          unless params['FollowRedirect'].nil?
            @FollowRedirect = FollowRedirect.new
            @FollowRedirect.deserialize(params['FollowRedirect'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['IpFilter'].nil?
            @IpFilter = IpFilter.new
            @IpFilter.deserialize(params['IpFilter'])
          end
          unless params['IpFreqLimit'].nil?
            @IpFreqLimit = IpFreqLimit.new
            @IpFreqLimit.deserialize(params['IpFreqLimit'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['OriginPullOptimization'].nil?
            @OriginPullOptimization = OriginPullOptimization.new
            @OriginPullOptimization.deserialize(params['OriginPullOptimization'])
          end
          unless params['RangeOriginPull'].nil?
            @RangeOriginPull = RangeOriginPull.new
            @RangeOriginPull.deserialize(params['RangeOriginPull'])
          end
          unless params['Referer'].nil?
            @Referer = Referer.new
            @Referer.deserialize(params['Referer'])
          end
          unless params['RequestHeader'].nil?
            @RequestHeader = RequestHeader.new
            @RequestHeader.deserialize(params['RequestHeader'])
          end
          unless params['ResponseHeader'].nil?
            @ResponseHeader = ResponseHeader.new
            @ResponseHeader.deserialize(params['ResponseHeader'])
          end
          unless params['ResponseHeaderCache'].nil?
            @ResponseHeaderCache = ResponseHeaderCache.new
            @ResponseHeaderCache.deserialize(params['ResponseHeaderCache'])
          end
          unless params['Seo'].nil?
            @Seo = Seo.new
            @Seo.deserialize(params['Seo'])
          end
          @ServiceType = params['ServiceType']
          unless params['StatusCodeCache'].nil?
            @StatusCodeCache = StatusCodeCache.new
            @StatusCodeCache.deserialize(params['StatusCodeCache'])
          end
          unless params['VideoSeek'].nil?
            @VideoSeek = VideoSeek.new
            @VideoSeek.deserialize(params['VideoSeek'])
          end
        end
      end

      # 分路径回源规则
      class PathBasedOriginRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型：
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # index: 指定主页生效
        # @type RuleType: String
        # @param RulePaths: RuleType 对应类型下的匹配内容：
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
        # index 时填充 /
        # @type RulePaths: Array
        # @param Origin: 源站列表，支持域名或ipv4地址
        # @type Origin: Array

        attr_accessor :RuleType, :RulePaths, :Origin
        
        def initialize(ruletype=nil, rulepaths=nil, origin=nil)
          @RuleType = ruletype
          @RulePaths = rulepaths
          @Origin = origin
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RulePaths = params['RulePaths']
          @Origin = params['Origin']
        end
      end

      # 分路径回源配置规则。
      class PathRule < TencentCloud::Common::AbstractModel
        # @param Regex: 是否开启通配符“*”匹配：
        # false：关闭
        # true：开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regex: Boolean
        # @param Path: 匹配的URL路径，仅支持Url路径，不支持参数。默认完全匹配，开启通配符“*”匹配后，最多支持5个通配符，最大长度为1024个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Origin: 路径匹配时的回源源站。暂不支持开了私有读写的COS源。不填写时沿用默认源站。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: String
        # @param ServerName: 路径匹配时回源的Host头部。不填写时沿用默认ServerName。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerName: String
        # @param OriginArea: 源站所属区域，支持CN，OV：
        # CN：中国境内
        # OV：中国境外
        # 默认为CN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginArea: String
        # @param ForwardUri: 路径匹配时回源的URI路径，必须以“/”开头，不包含参数部分。最大长度为1024个字符。可使用$1, $2, $3, $4, $5分别捕获匹配路径中的通配符号“*”，最多支持10个捕获值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardUri: String
        # @param RequestHeaders: 路径匹配时回源的头部设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeaders: Array

        attr_accessor :Regex, :Path, :Origin, :ServerName, :OriginArea, :ForwardUri, :RequestHeaders
        
        def initialize(regex=nil, path=nil, origin=nil, servername=nil, originarea=nil, forwarduri=nil, requestheaders=nil)
          @Regex = regex
          @Path = path
          @Origin = origin
          @ServerName = servername
          @OriginArea = originarea
          @ForwardUri = forwarduri
          @RequestHeaders = requestheaders
        end

        def deserialize(params)
          @Regex = params['Regex']
          @Path = params['Path']
          @Origin = params['Origin']
          @ServerName = params['ServerName']
          @OriginArea = params['OriginArea']
          @ForwardUri = params['ForwardUri']
          unless params['RequestHeaders'].nil?
            @RequestHeaders = []
            params['RequestHeaders'].each do |i|
              httpheaderrule_tmp = HttpHeaderRule.new
              httpheaderrule_tmp.deserialize(i)
              @RequestHeaders << httpheaderrule_tmp
            end
          end
        end
      end

      # POST请求上传文件流式传输最大限制
      class PostSize < TencentCloud::Common::AbstractModel
        # @param Switch: 是调整POST请求限制，平台默认为32MB。
        # 关闭：off，
        # 开启：on。
        # @type Switch: String
        # @param MaxSize: 最大限制，取值在1MB和200MB之间。
        # @type MaxSize: Integer

        attr_accessor :Switch, :MaxSize
        
        def initialize(switch=nil, maxsize=nil)
          @Switch = switch
          @MaxSize = maxsize
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxSize = params['MaxSize']
        end
      end

      # PurgePathCache请求参数结构体
      class PurgePathCacheRequest < TencentCloud::Common::AbstractModel
        # @param Paths: 目录列表，需要包含协议头部 http:// 或 https://
        # @type Paths: Array
        # @param FlushType: 刷新类型
        # flush：刷新产生更新的资源
        # delete：刷新全部资源
        # @type FlushType: String
        # @param UrlEncode: 是否对中文字符进行编码后刷新
        # @type UrlEncode: Boolean

        attr_accessor :Paths, :FlushType, :UrlEncode
        
        def initialize(paths=nil, flushtype=nil, urlencode=nil)
          @Paths = paths
          @FlushType = flushtype
          @UrlEncode = urlencode
        end

        def deserialize(params)
          @Paths = params['Paths']
          @FlushType = params['FlushType']
          @UrlEncode = params['UrlEncode']
        end
      end

      # PurgePathCache返回参数结构体
      class PurgePathCacheResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 刷新任务 ID，同一批次提交的目录共用一个任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 刷新任务详情
      class PurgeTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 刷新任务 ID
        # @type TaskId: String
        # @param Url: 刷新 URL
        # @type Url: String
        # @param Status: 刷新任务状态
        # fail：刷新失败
        # done：刷新成功
        # process：刷新中
        # @type Status: String
        # @param PurgeType: 刷新类型
        # url：URL 刷新
        # path：目录刷新
        # @type PurgeType: String
        # @param FlushType: 刷新方式
        # flush：刷新更新资源（仅目录刷新时有此类型）
        # delete：刷新全部资源
        # @type FlushType: String
        # @param CreateTime: 刷新任务提交时间
        # @type CreateTime: String

        attr_accessor :TaskId, :Url, :Status, :PurgeType, :FlushType, :CreateTime
        
        def initialize(taskid=nil, url=nil, status=nil, purgetype=nil, flushtype=nil, createtime=nil)
          @TaskId = taskid
          @Url = url
          @Status = status
          @PurgeType = purgetype
          @FlushType = flushtype
          @CreateTime = createtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Url = params['Url']
          @Status = params['Status']
          @PurgeType = params['PurgeType']
          @FlushType = params['FlushType']
          @CreateTime = params['CreateTime']
        end
      end

      # PurgeUrlsCache请求参数结构体
      class PurgeUrlsCacheRequest < TencentCloud::Common::AbstractModel
        # @param Urls: URL 列表，需要包含协议头部 http:// 或 https://
        # @type Urls: Array
        # @param Area: 刷新区域
        # 无此参数时，默认刷新加速域名所在加速区域
        # 填充 mainland 时，仅刷新中国境内加速节点上缓存内容
        # 填充 overseas 时，仅刷新中国境外加速节点上缓存内容
        # 指定刷新区域时，需要与域名加速区域匹配
        # @type Area: String
        # @param UrlEncode: 是否对中文字符进行编码后刷新
        # @type UrlEncode: Boolean

        attr_accessor :Urls, :Area, :UrlEncode
        
        def initialize(urls=nil, area=nil, urlencode=nil)
          @Urls = urls
          @Area = area
          @UrlEncode = urlencode
        end

        def deserialize(params)
          @Urls = params['Urls']
          @Area = params['Area']
          @UrlEncode = params['UrlEncode']
        end
      end

      # PurgeUrlsCache返回参数结构体
      class PurgeUrlsCacheResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 刷新任务 ID，同一批次提交的 URL 共用一个任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 预热任务详情
      class PushTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 预热任务 ID
        # @type TaskId: String
        # @param Url: 预热 URL
        # @type Url: String
        # @param Status: 预热任务状态
        # fail：预热失败
        # done：预热成功
        # process：预热中
        # @type Status: String
        # @param Percent: 预热进度百分比
        # @type Percent: Integer
        # @param CreateTime: 预热任务提交时间
        # @type CreateTime: String
        # @param Area: 预热区域
        # mainland：境内
        # overseas：境外
        # global：全球
        # @type Area: String
        # @param UpdateTime: 预热任务更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :TaskId, :Url, :Status, :Percent, :CreateTime, :Area, :UpdateTime
        
        def initialize(taskid=nil, url=nil, status=nil, percent=nil, createtime=nil, area=nil, updatetime=nil)
          @TaskId = taskid
          @Url = url
          @Status = status
          @Percent = percent
          @CreateTime = createtime
          @Area = area
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Url = params['Url']
          @Status = params['Status']
          @Percent = params['Percent']
          @CreateTime = params['CreateTime']
          @Area = params['Area']
          @UpdateTime = params['UpdateTime']
        end
      end

      # PushUrlsCache请求参数结构体
      class PushUrlsCacheRequest < TencentCloud::Common::AbstractModel
        # @param Urls: URL 列表，需要包含协议头部 http:// 或 https://
        # @type Urls: Array
        # @param UserAgent: 指定预热请求回源时 HTTP 请求的 User-Agent 头部
        # 默认为 TencentCdn
        # @type UserAgent: String
        # @param Area: 预热生效区域
        # mainland：预热至境内节点
        # overseas：预热至境外节点
        # global：预热全球节点
        # 不填充情况下，默认为 mainland， URL 中域名必须在对应区域启用了加速服务才能提交对应区域的预热任务
        # @type Area: String
        # @param Layer: 填写"middle"或不填充时预热至中间层节点
        # @type Layer: String
        # @param ParseM3U8: 是否递归解析m3u8文件中的ts分片预热
        # 注意事项：
        # 1. 该功能要求m3u8索引文件能直接请求获取
        # 2. 当前只支持递归解析一级索引和子索引中的ts分片，递归深度不超过3层
        # 3. 解析获取的ts分片会正常累加每日预热用量，当用量超出配额时，会静默处理，不再执行预热
        # @type ParseM3U8: Boolean

        attr_accessor :Urls, :UserAgent, :Area, :Layer, :ParseM3U8
        
        def initialize(urls=nil, useragent=nil, area=nil, layer=nil, parsem3u8=nil)
          @Urls = urls
          @UserAgent = useragent
          @Area = area
          @Layer = layer
          @ParseM3U8 = parsem3u8
        end

        def deserialize(params)
          @Urls = params['Urls']
          @UserAgent = params['UserAgent']
          @Area = params['Area']
          @Layer = params['Layer']
          @ParseM3U8 = params['ParseM3U8']
        end
      end

      # PushUrlsCache返回参数结构体
      class PushUrlsCacheResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 此批提交的任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 组成CacheKey的一部分
      class QueryStringKey < TencentCloud::Common::AbstractModel
        # @param Switch: on | off CacheKey是否由QueryString组成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Reorder: 是否重新排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reorder: String
        # @param Action: includeAll | excludeAll | includeCustom | excludeAll 使用/排除部分url参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Value: 使用/排除的url参数数组，';' 分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Switch, :Reorder, :Action, :Value
        
        def initialize(switch=nil, reorder=nil, action=nil, value=nil)
          @Switch = switch
          @Reorder = reorder
          @Action = action
          @Value = value
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Reorder = params['Reorder']
          @Action = params['Action']
          @Value = params['Value']
        end
      end

      # Quic配置项
      class Quic < TencentCloud::Common::AbstractModel
        # @param Switch: 是否启动Quic配置
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 刷新/预热 可用量及配额
      class Quota < TencentCloud::Common::AbstractModel
        # @param Batch: 单次批量提交配额上限。
        # @type Batch: Integer
        # @param Total: 每日提交配额上限。
        # @type Total: Integer
        # @param Available: 每日剩余的可提交配额。
        # @type Available: Integer
        # @param Area: 配额的区域。
        # @type Area: String

        attr_accessor :Batch, :Total, :Available, :Area
        
        def initialize(batch=nil, total=nil, available=nil, area=nil)
          @Batch = batch
          @Total = total
          @Available = available
          @Area = area
        end

        def deserialize(params)
          @Batch = params['Batch']
          @Total = params['Total']
          @Available = params['Available']
          @Area = params['Area']
        end
      end

      # 分片回源配置，默认为开启状态
      class RangeOriginPull < TencentCloud::Common::AbstractModel
        # @param Switch: 分片回源配置开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # Referer 黑白名单配置，默认为关闭状态
      class Referer < TencentCloud::Common::AbstractModel
        # @param Switch: referer 黑白名单配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param RefererRules: referer 黑白名单配置规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefererRules: Array

        attr_accessor :Switch, :RefererRules
        
        def initialize(switch=nil, refererrules=nil)
          @Switch = switch
          @RefererRules = refererrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['RefererRules'].nil?
            @RefererRules = []
            params['RefererRules'].each do |i|
              refererrule_tmp = RefererRule.new
              refererrule_tmp.deserialize(i)
              @RefererRules << refererrule_tmp
            end
          end
        end
      end

      # Referer 黑白名单配置规则，针对特定资源生效
      class RefererRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # @type RuleType: String
        # @param RulePaths: RuleType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test/
        # path 时填充绝对路径，如 /xxx/test.html
        # @type RulePaths: Array
        # @param RefererType: referer 配置类型
        # whitelist：白名单
        # blacklist：黑名单
        # @type RefererType: String
        # @param Referers: referer 内容列表列表
        # @type Referers: Array
        # @param AllowEmpty: 是否允许空 referer
        # true：允许空 referer
        # false：不允许空 referer
        # @type AllowEmpty: Boolean

        attr_accessor :RuleType, :RulePaths, :RefererType, :Referers, :AllowEmpty
        
        def initialize(ruletype=nil, rulepaths=nil, referertype=nil, referers=nil, allowempty=nil)
          @RuleType = ruletype
          @RulePaths = rulepaths
          @RefererType = referertype
          @Referers = referers
          @AllowEmpty = allowempty
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RulePaths = params['RulePaths']
          @RefererType = params['RefererType']
          @Referers = params['Referers']
          @AllowEmpty = params['AllowEmpty']
        end
      end

      # 区域映射id和子区域id的关联信息。
      class RegionMapRelation < TencentCloud::Common::AbstractModel
        # @param RegionId: 区域ID。
        # @type RegionId: Integer
        # @param SubRegionIdList: 子区域ID列表
        # @type SubRegionIdList: Array

        attr_accessor :RegionId, :SubRegionIdList
        
        def initialize(regionid=nil, subregionidlist=nil)
          @RegionId = regionid
          @SubRegionIdList = subregionidlist
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @SubRegionIdList = params['SubRegionIdList']
        end
      end

      # CDN报表数据
      class ReportData < TencentCloud::Common::AbstractModel
        # @param ResourceId: 项目ID/域名ID。
        # @type ResourceId: String
        # @param Resource: 项目名称/域名。
        # @type Resource: String
        # @param Value: 流量总和/带宽最大值，单位分别为bytes，bps。
        # @type Value: Integer
        # @param Percentage: 单个资源占总体百分比。
        # @type Percentage: Float
        # @param BillingValue: 计费流量总和/计费带宽最大值，单位分别为bytes，bps。
        # @type BillingValue: Integer
        # @param BillingPercentage: 计费数值占总体百分比。
        # @type BillingPercentage: Float

        attr_accessor :ResourceId, :Resource, :Value, :Percentage, :BillingValue, :BillingPercentage
        
        def initialize(resourceid=nil, resource=nil, value=nil, percentage=nil, billingvalue=nil, billingpercentage=nil)
          @ResourceId = resourceid
          @Resource = resource
          @Value = value
          @Percentage = percentage
          @BillingValue = billingvalue
          @BillingPercentage = billingpercentage
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Resource = params['Resource']
          @Value = params['Value']
          @Percentage = params['Percentage']
          @BillingValue = params['BillingValue']
          @BillingPercentage = params['BillingPercentage']
        end
      end

      # 自定义请求头配置，默认为关闭状态
      class RequestHeader < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义请求头配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param HeaderRules: 自定义请求头配置规则
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

      # 计费数据明细
      class ResourceBillingData < TencentCloud::Common::AbstractModel
        # @param Resource: 资源名称，根据查询条件不同分为以下几类：
        # 某一个具体域名：表示该域名明细数据
        # multiDomains：表示多域名汇总明细数据
        # 某一个项目 ID：指定项目查询时，显示为项目 ID
        # all：账号维度数据明细
        # @type Resource: String
        # @param BillingData: 计费数据详情
        # @type BillingData: Array

        attr_accessor :Resource, :BillingData
        
        def initialize(resource=nil, billingdata=nil)
          @Resource = resource
          @BillingData = billingdata
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['BillingData'].nil?
            @BillingData = []
            params['BillingData'].each do |i|
              cdndata_tmp = CdnData.new
              cdndata_tmp.deserialize(i)
              @BillingData << cdndata_tmp
            end
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
        # @param CdnData: 资源对应的数据明细
        # @type CdnData: Array

        attr_accessor :Resource, :CdnData
        
        def initialize(resource=nil, cdndata=nil)
          @Resource = resource
          @CdnData = cdndata
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['CdnData'].nil?
            @CdnData = []
            params['CdnData'].each do |i|
              cdndata_tmp = CdnData.new
              cdndata_tmp.deserialize(i)
              @CdnData << cdndata_tmp
            end
          end
        end
      end

      # 查询对象及其对应的回源明细数据
      class ResourceOriginData < TencentCloud::Common::AbstractModel
        # @param Resource: 资源名称，根据查询条件不同分为以下几类：
        # 具体域名：表示该域名明细数据
        # multiDomains：表示多域名汇总明细数据
        # 项目 ID：指定项目查询时，显示为项目 ID
        # all：账号维度明细数据
        # @type Resource: String
        # @param OriginData: 回源数据详情
        # @type OriginData: Array

        attr_accessor :Resource, :OriginData
        
        def initialize(resource=nil, origindata=nil)
          @Resource = resource
          @OriginData = origindata
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['OriginData'].nil?
            @OriginData = []
            params['OriginData'].each do |i|
              cdndata_tmp = CdnData.new
              cdndata_tmp.deserialize(i)
              @OriginData << cdndata_tmp
            end
          end
        end
      end

      # 自定义响应头配置，默认为关闭状态
      class ResponseHeader < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义响应头开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param HeaderRules: 自定义响应头规则
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

      # 源站头部缓存配置，默认为开启状态，缓存所有头部信息
      class ResponseHeaderCache < TencentCloud::Common::AbstractModel
        # @param Switch: 源站头部缓存开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 是否回源站校验
      class Revalidate < TencentCloud::Common::AbstractModel
        # @param Switch: on | off 是否总是回源校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Path: 只在特定请求路径回源站校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String

        attr_accessor :Switch, :Path
        
        def initialize(switch=nil, path=nil)
          @Switch = switch
          @Path = path
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Path = params['Path']
        end
      end

      # 缓存配置分路径版本。
      # 默认情况下所有文件缓存过期时间为 30 天
      # 默认情况下静态加速类型的域名 .php;.jsp;.asp;.aspx 不缓存
      class RuleCache < TencentCloud::Common::AbstractModel
        # @param RulePaths: CacheType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test
        # path 时填充绝对路径，如 /xxx/test.html
        # index 时填充 /
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulePaths: Array
        # @param RuleType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # index：首页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param CacheConfig: 缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheConfig: :class:`Tencentcloud::Cdn.v20180606.models.RuleCacheConfig`

        attr_accessor :RulePaths, :RuleType, :CacheConfig
        
        def initialize(rulepaths=nil, ruletype=nil, cacheconfig=nil)
          @RulePaths = rulepaths
          @RuleType = ruletype
          @CacheConfig = cacheconfig
        end

        def deserialize(params)
          @RulePaths = params['RulePaths']
          @RuleType = params['RuleType']
          unless params['CacheConfig'].nil?
            @CacheConfig = RuleCacheConfig.new
            @CacheConfig.deserialize(params['CacheConfig'])
          end
        end
      end

      # 路径缓存缓存配置（三种缓存模式中选取一种）
      class RuleCacheConfig < TencentCloud::Common::AbstractModel
        # @param Cache: 缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Cdn.v20180606.models.CacheConfigCache`
        # @param NoCache: 不缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Cdn.v20180606.models.CacheConfigNoCache`
        # @param FollowOrigin: 遵循源站配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: :class:`Tencentcloud::Cdn.v20180606.models.CacheConfigFollowOrigin`

        attr_accessor :Cache, :NoCache, :FollowOrigin
        
        def initialize(cache=nil, nocache=nil, followorigin=nil)
          @Cache = cache
          @NoCache = nocache
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          unless params['Cache'].nil?
            @Cache = CacheConfigCache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['NoCache'].nil?
            @NoCache = CacheConfigNoCache.new
            @NoCache.deserialize(params['NoCache'])
          end
          unless params['FollowOrigin'].nil?
            @FollowOrigin = CacheConfigFollowOrigin.new
            @FollowOrigin.deserialize(params['FollowOrigin'])
          end
        end
      end

      # 路径保留参数配置
      class RuleQueryString < TencentCloud::Common::AbstractModel
        # @param Switch: on | off CacheKey是否由QueryString组成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Action: includeCustom 包含部分url参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Value: 使用/排除的url参数数组，';' 分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Switch, :Action, :Value
        
        def initialize(switch=nil, action=nil, value=nil)
          @Switch = switch
          @Action = action
          @Value = value
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @Value = params['Value']
        end
      end

      # SCDN访问控制
      class ScdnAclConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启，on | off
        # @type Switch: String
        # @param ScriptData: Acl规则组，switch为on时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptData: Array
        # @param ErrorPage: 错误页面配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ScdnErrorPage`

        attr_accessor :Switch, :ScriptData, :ErrorPage
        
        def initialize(switch=nil, scriptdata=nil, errorpage=nil)
          @Switch = switch
          @ScriptData = scriptdata
          @ErrorPage = errorpage
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['ScriptData'].nil?
            @ScriptData = []
            params['ScriptData'].each do |i|
              scdnaclgroup_tmp = ScdnAclGroup.new
              scdnaclgroup_tmp.deserialize(i)
              @ScriptData << scdnaclgroup_tmp
            end
          end
          unless params['ErrorPage'].nil?
            @ErrorPage = ScdnErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
        end
      end

      # SCDN精准访问控制配置
      class ScdnAclGroup < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Configure: 具体配置
        # @type Configure: Array
        # @param Result: 规则行为，一般为refuse，重定向redirect
        # @type Result: String
        # @param Status: 规则是否生效中active|inactive
        # @type Status: String
        # @param ErrorPage: 错误页面配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ScdnErrorPage`

        attr_accessor :RuleName, :Configure, :Result, :Status, :ErrorPage
        
        def initialize(rulename=nil, configure=nil, result=nil, status=nil, errorpage=nil)
          @RuleName = rulename
          @Configure = configure
          @Result = result
          @Status = status
          @ErrorPage = errorpage
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['Configure'].nil?
            @Configure = []
            params['Configure'].each do |i|
              scdnaclrule_tmp = ScdnAclRule.new
              scdnaclrule_tmp.deserialize(i)
              @Configure << scdnaclrule_tmp
            end
          end
          @Result = params['Result']
          @Status = params['Status']
          unless params['ErrorPage'].nil?
            @ErrorPage = ScdnErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
        end
      end

      # 精准访问控制匹配规则
      class ScdnAclRule < TencentCloud::Common::AbstractModel
        # @param MatchKey: 匹配关键字, params | url | ip | referer | user-agent
        # @type MatchKey: String
        # @param LogiOperator: 逻辑操作符，取值 exclude, include, notequal, equal, len-less, len-equal, len-more
        # @type LogiOperator: String
        # @param MatchValue: 匹配值
        # @type MatchValue: String

        attr_accessor :MatchKey, :LogiOperator, :MatchValue
        
        def initialize(matchkey=nil, logioperator=nil, matchvalue=nil)
          @MatchKey = matchkey
          @LogiOperator = logioperator
          @MatchValue = matchvalue
        end

        def deserialize(params)
          @MatchKey = params['MatchKey']
          @LogiOperator = params['LogiOperator']
          @MatchValue = params['MatchValue']
        end
      end

      # bot配置类型
      class ScdnBotConfig < TencentCloud::Common::AbstractModel
        # @param Switch: on|off
        # @type Switch: String
        # @param BotCookie: Bot cookie策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotCookie: Array
        # @param BotJavaScript: Bot Js策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotJavaScript: Array

        attr_accessor :Switch, :BotCookie, :BotJavaScript
        
        def initialize(switch=nil, botcookie=nil, botjavascript=nil)
          @Switch = switch
          @BotCookie = botcookie
          @BotJavaScript = botjavascript
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['BotCookie'].nil?
            @BotCookie = []
            params['BotCookie'].each do |i|
              botcookie_tmp = BotCookie.new
              botcookie_tmp.deserialize(i)
              @BotCookie << botcookie_tmp
            end
          end
          unless params['BotJavaScript'].nil?
            @BotJavaScript = []
            params['BotJavaScript'].each do |i|
              botjavascript_tmp = BotJavaScript.new
              botjavascript_tmp.deserialize(i)
              @BotJavaScript << botjavascript_tmp
            end
          end
        end
      end

      # scdn 的自定义 cc 规则
      class ScdnCCRules < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # index：首页
        # @type RuleType: String
        # @param RuleValue: 规则值
        # @type RuleValue: Array
        # @param Qps: 规则限频
        # @type Qps: Integer
        # @param DetectionTime: 探测时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionTime: Integer
        # @param FrequencyLimit: 限频阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrequencyLimit: Integer
        # @param PunishmentSwitch: IP 惩罚开关，可选on|off
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishmentSwitch: String
        # @param PunishmentTime: IP 惩罚时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishmentTime: Integer
        # @param Action: 执行动作，intercept|redirect
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param RedirectUrl: 动作为 redirect 时，重定向的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectUrl: String

        attr_accessor :RuleType, :RuleValue, :Qps, :DetectionTime, :FrequencyLimit, :PunishmentSwitch, :PunishmentTime, :Action, :RedirectUrl
        
        def initialize(ruletype=nil, rulevalue=nil, qps=nil, detectiontime=nil, frequencylimit=nil, punishmentswitch=nil, punishmenttime=nil, action=nil, redirecturl=nil)
          @RuleType = ruletype
          @RuleValue = rulevalue
          @Qps = qps
          @DetectionTime = detectiontime
          @FrequencyLimit = frequencylimit
          @PunishmentSwitch = punishmentswitch
          @PunishmentTime = punishmenttime
          @Action = action
          @RedirectUrl = redirecturl
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RuleValue = params['RuleValue']
          @Qps = params['Qps']
          @DetectionTime = params['DetectionTime']
          @FrequencyLimit = params['FrequencyLimit']
          @PunishmentSwitch = params['PunishmentSwitch']
          @PunishmentTime = params['PunishmentTime']
          @Action = params['Action']
          @RedirectUrl = params['RedirectUrl']
        end
      end

      # cc的配置类型
      class ScdnConfig < TencentCloud::Common::AbstractModel
        # @param Switch: on | off
        # @type Switch: String
        # @param Rules: 自定义 cc 防护规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :Switch, :Rules
        
        def initialize(switch=nil, rules=nil)
          @Switch = switch
          @Rules = rules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              scdnccrules_tmp = ScdnCCRules.new
              scdnccrules_tmp.deserialize(i)
              @Rules << scdnccrules_tmp
            end
          end
        end
      end

      # ddos配置类型
      class ScdnDdosConfig < TencentCloud::Common::AbstractModel
        # @param Switch: on|off
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 聚合了SCDN域名的基本信息
      class ScdnDomain < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Status: 当前状态，取值online | offline | process
        # @type Status: String
        # @param Waf: Waf 状态默认为‘/’，取值 close | intercept | observe
        # @type Waf: String
        # @param Acl: Acl 状态默认为‘/’，取值 close | open
        # @type Acl: String
        # @param CC: CC 状态默认为‘/’，取值 close | open
        # @type CC: String
        # @param Ddos: Ddos 状态默认为‘/’，取值 close | open
        # @type Ddos: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param AclRuleNumbers: Acl 规则数
        # @type AclRuleNumbers: Integer
        # @param Bot: Bot 状态默认为‘/’，取值 close | open
        # @type Bot: String
        # @param Area: 域名加速区域，取值global | mainland |  overseas
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String

        attr_accessor :Domain, :Status, :Waf, :Acl, :CC, :Ddos, :ProjectId, :AclRuleNumbers, :Bot, :Area
        
        def initialize(domain=nil, status=nil, waf=nil, acl=nil, cc=nil, ddos=nil, projectid=nil, aclrulenumbers=nil, bot=nil, area=nil)
          @Domain = domain
          @Status = status
          @Waf = waf
          @Acl = acl
          @CC = cc
          @Ddos = ddos
          @ProjectId = projectid
          @AclRuleNumbers = aclrulenumbers
          @Bot = bot
          @Area = area
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @Waf = params['Waf']
          @Acl = params['Acl']
          @CC = params['CC']
          @Ddos = params['Ddos']
          @ProjectId = params['ProjectId']
          @AclRuleNumbers = params['AclRuleNumbers']
          @Bot = params['Bot']
          @Area = params['Area']
        end
      end

      # acl的错误页面
      class ScdnErrorPage < TencentCloud::Common::AbstractModel
        # @param RedirectCode: 状态码
        # @type RedirectCode: Integer
        # @param RedirectUrl: 重定向url
        # @type RedirectUrl: String

        attr_accessor :RedirectCode, :RedirectUrl
        
        def initialize(redirectcode=nil, redirecturl=nil)
          @RedirectCode = redirectcode
          @RedirectUrl = redirecturl
        end

        def deserialize(params)
          @RedirectCode = params['RedirectCode']
          @RedirectUrl = params['RedirectUrl']
        end
      end

      # SCDN 事件日志查询条件
      class ScdnEventLogConditions < TencentCloud::Common::AbstractModel
        # @param Key: 匹配关键字，ip, attack_location
        # @type Key: String
        # @param Operator: 逻辑操作符，取值 exclude, include
        # @type Operator: String
        # @param Value: 匹配值，允许使用通配符(*)查询，匹配零个、单个、多个字符，例如 1.2.*
        # @type Value: String

        attr_accessor :Key, :Operator, :Value
        
        def initialize(key=nil, operator=nil, value=nil)
          @Key = key
          @Operator = operator
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Value = params['Value']
        end
      end

      # SCDN日志事件详细信息
      class ScdnLogTaskDetail < TencentCloud::Common::AbstractModel
        # @param Domain: scdn域名
        # @type Domain: String
        # @param Mode: 防护类型
        # @type Mode: String
        # @param StartTime: 查询任务开始时间
        # @type StartTime: String
        # @param EndTime: 查询任务结束时间
        # @type EndTime: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param DownloadUrl: 日志包下载链接
        # 成功返回下载链接，其他情况返回'-'
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param Status: 任务状态
        # created->任务已经创建
        # processing->任务正在执行
        # done->任务执行成功
        # failed->任务执行失败
        # no-log->没有日志产生
        # @type Status: String
        # @param TaskID: 日志任务唯一id
        # @type TaskID: String
        # @param AttackType: 攻击类型, 可以为"all"
        # AttackType映射如下:
        #   other = '未知类型'
        #   malicious_scan = "恶意扫描"
        #   sql_inject = "SQL注入攻击"
        #   xss = "XSS攻击"
        #   cmd_inject = "命令注入攻击"
        #   ldap_inject = "LDAP注入攻击"
        #   ssi_inject = "SSI注入攻击"
        #   xml_inject = "XML注入攻击"
        #   web_service = "WEB服务漏洞攻击"
        #   web_app = "WEB应用漏洞攻击"
        #   path_traversal = "路径跨越攻击"
        #   illegal_access_core_file = "核心文件非法访问"
        #   file_upload = "文件上传攻击"
        #   trojan_horse = "木马后门攻击"
        #   csrf = "CSRF攻击"
        #   custom_policy = "自定义策略"
        #   ai_engine= 'AI引擎检出'
        #   malicious_file_upload= '恶意文件上传'
        # @type AttackType: String
        # @param DefenceMode: 防御模式,可以为"all"
        # DefenceMode映射如下：
        #   observe = '观察模式'
        #   intercept = '防御模式'
        # @type DefenceMode: String
        # @param Conditions: 查询条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array
        # @param Area: mainland或overseas
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String

        attr_accessor :Domain, :Mode, :StartTime, :EndTime, :CreateTime, :DownloadUrl, :Status, :TaskID, :AttackType, :DefenceMode, :Conditions, :Area
        
        def initialize(domain=nil, mode=nil, starttime=nil, endtime=nil, createtime=nil, downloadurl=nil, status=nil, taskid=nil, attacktype=nil, defencemode=nil, conditions=nil, area=nil)
          @Domain = domain
          @Mode = mode
          @StartTime = starttime
          @EndTime = endtime
          @CreateTime = createtime
          @DownloadUrl = downloadurl
          @Status = status
          @TaskID = taskid
          @AttackType = attacktype
          @DefenceMode = defencemode
          @Conditions = conditions
          @Area = area
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Mode = params['Mode']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreateTime = params['CreateTime']
          @DownloadUrl = params['DownloadUrl']
          @Status = params['Status']
          @TaskID = params['TaskID']
          @AttackType = params['AttackType']
          @DefenceMode = params['DefenceMode']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              scdneventlogconditions_tmp = ScdnEventLogConditions.new
              scdneventlogconditions_tmp.deserialize(i)
              @Conditions << scdneventlogconditions_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # SCDN攻击数据Top展示
      class ScdnTopData < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Value: 数值
        # @type Value: Integer
        # @param Isp: 运营商
        # @type Isp: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param District: 区域
        # @type District: String

        attr_accessor :Time, :Value, :Isp, :Ip, :District
        
        def initialize(time=nil, value=nil, isp=nil, ip=nil, district=nil)
          @Time = time
          @Value = value
          @Isp = isp
          @Ip = ip
          @District = district
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
          @Isp = params['Isp']
          @Ip = params['Ip']
          @District = params['District']
        end
      end

      # SCDN攻击数据Top URL展示
      class ScdnTopUrlData < TencentCloud::Common::AbstractModel
        # @param Url: Top数据的URL
        # @type Url: String
        # @param Value: 数值
        # @type Value: Integer
        # @param Time: 时间
        # @type Time: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String

        attr_accessor :Url, :Value, :Time, :Domain
        
        def initialize(url=nil, value=nil, time=nil, domain=nil)
          @Url = url
          @Value = value
          @Time = time
          @Domain = domain
        end

        def deserialize(params)
          @Url = params['Url']
          @Value = params['Value']
          @Time = params['Time']
          @Domain = params['Domain']
        end
      end

      # Scdn饼图数据，waf仅有
      class ScdnTypeData < TencentCloud::Common::AbstractModel
        # @param AttackType: 攻击类型
        # @type AttackType: String
        # @param Value: 攻击值
        # @type Value: Integer

        attr_accessor :AttackType, :Value
        
        def initialize(attacktype=nil, value=nil)
          @AttackType = attacktype
          @Value = value
        end

        def deserialize(params)
          @AttackType = params['AttackType']
          @Value = params['Value']
        end
      end

      # waf配置类型
      class ScdnWafConfig < TencentCloud::Common::AbstractModel
        # @param Switch: on|off
        # @type Switch: String
        # @param Mode: intercept|observe，默认intercept
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param ErrorPage: 重定向的错误页面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ScdnErrorPage`
        # @param WebShellSwitch: webshell拦截开关，on|off，默认off
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebShellSwitch: String
        # @param Rules: 类型拦截规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param Level: waf规则等级，可取100|200|300
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param SubRuleSwitch: waf子规则开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubRuleSwitch: Array

        attr_accessor :Switch, :Mode, :ErrorPage, :WebShellSwitch, :Rules, :Level, :SubRuleSwitch
        
        def initialize(switch=nil, mode=nil, errorpage=nil, webshellswitch=nil, rules=nil, level=nil, subruleswitch=nil)
          @Switch = switch
          @Mode = mode
          @ErrorPage = errorpage
          @WebShellSwitch = webshellswitch
          @Rules = rules
          @Level = level
          @SubRuleSwitch = subruleswitch
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Mode = params['Mode']
          unless params['ErrorPage'].nil?
            @ErrorPage = ScdnErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
          @WebShellSwitch = params['WebShellSwitch']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              scdnwafrule_tmp = ScdnWafRule.new
              scdnwafrule_tmp.deserialize(i)
              @Rules << scdnwafrule_tmp
            end
          end
          @Level = params['Level']
          unless params['SubRuleSwitch'].nil?
            @SubRuleSwitch = []
            params['SubRuleSwitch'].each do |i|
              wafsubrulestatus_tmp = WafSubRuleStatus.new
              wafsubrulestatus_tmp.deserialize(i)
              @SubRuleSwitch << wafsubrulestatus_tmp
            end
          end
        end
      end

      # Waf 规则信息
      class ScdnWafRule < TencentCloud::Common::AbstractModel
        # @param AttackType: 攻击类型
        # @type AttackType: String
        # @param Operate: 防护措施，observe
        # @type Operate: String

        attr_accessor :AttackType, :Operate
        
        def initialize(attacktype=nil, operate=nil)
          @AttackType = attacktype
          @Operate = operate
        end

        def deserialize(params)
          @AttackType = params['AttackType']
          @Operate = params['Operate']
        end
      end

      # 作为CacheKey的一部分
      class SchemeKey < TencentCloud::Common::AbstractModel
        # @param Switch: on | off 是否使用scheme作为cache key的一部分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # SearchClsLog请求参数结构体
      class SearchClsLogRequest < TencentCloud::Common::AbstractModel
        # @param LogsetId: 需要查询的日志集ID
        # @type LogsetId: String
        # @param TopicIds: 需要查询的日志主题ID组合，以逗号分隔
        # @type TopicIds: String
        # @param StartTime: 需要查询的日志的起始时间，格式 YYYY-mm-dd HH:MM:SS
        # @type StartTime: String
        # @param EndTime: 需要查询的日志的结束时间，格式 YYYY-mm-dd HH:MM:SS
        # @type EndTime: String
        # @param Limit: 单次要返回的日志条数，单次返回的最大条数为100
        # @type Limit: Integer
        # @param Channel: 接入渠道，默认值为cdn
        # @type Channel: String
        # @param Query: 需要查询的内容，详情请参考https://cloud.tencent.com/document/product/614/16982
        # @type Query: String
        # @param Context: 加载更多使用，透传上次返回的 context 值，获取后续的日志内容，通过游标最多可获取10000条，请尽可能缩小时间范围
        # @type Context: String
        # @param Sort: 按日志时间排序， asc（升序）或者 desc（降序），默认为 desc
        # @type Sort: String

        attr_accessor :LogsetId, :TopicIds, :StartTime, :EndTime, :Limit, :Channel, :Query, :Context, :Sort
        
        def initialize(logsetid=nil, topicids=nil, starttime=nil, endtime=nil, limit=nil, channel=nil, query=nil, context=nil, sort=nil)
          @LogsetId = logsetid
          @TopicIds = topicids
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Channel = channel
          @Query = query
          @Context = context
          @Sort = sort
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicIds = params['TopicIds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Channel = params['Channel']
          @Query = params['Query']
          @Context = params['Context']
          @Sort = params['Sort']
        end
      end

      # SearchClsLog返回参数结构体
      class SearchClsLogResponse < TencentCloud::Common::AbstractModel
        # @param Logs: 查询结果
        # @type Logs: :class:`Tencentcloud::Cdn.v20180606.models.ClsSearchLogs`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Logs, :RequestId
        
        def initialize(logs=nil, requestid=nil)
          @Logs = logs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Logs'].nil?
            @Logs = ClsSearchLogs.new
            @Logs.deserialize(params['Logs'])
          end
          @RequestId = params['RequestId']
        end
      end

      # scdn相关的配置
      class SecurityConfig < TencentCloud::Common::AbstractModel
        # @param Switch: on|off
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # SEO 搜索引擎优化配置，默认为关闭状态
      class Seo < TencentCloud::Common::AbstractModel
        # @param Switch: SEO 配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # https 加速服务端证书配置：
      # + 支持使用托管至 SSL 证书管理的证书进行部署
      # + 支持上传 PEM 格式的证书进行部署
      # 注意：上传 PEM 证书时，需要进行 Base 64 编码
      class ServerCert < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID
        # 在 SSL 证书管理进行证书托管时自动生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param CertName: 服务器证书名称
        # 在 SSL 证书管理进行证书托管时自动生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertName: String
        # @param Certificate: 服务器证书信息
        # 上传自有证书时必填，需要包含完整的证书链
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: String
        # @param PrivateKey: 服务器密钥信息
        # 上传自有证书时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateKey: String
        # @param ExpireTime: 证书过期时间
        # 作为入参配置时无需填充
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书颁发时间
        # 作为入参配置时无需填充
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployTime: String
        # @param Message: 证书备注信息
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

      # 缓存配置基础版本
      # 默认情况下所有文件缓存过期时间为 30 天
      # 默认情况下静态加速类型的域名 .php;.jsp;.asp;.aspx 不缓存
      # 注意：该版本不支持设置源站未返回 max-age 情况下的缓存过期规则设置
      class SimpleCache < TencentCloud::Common::AbstractModel
        # @param CacheRules: 缓存过期时间规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheRules: Array
        # @param FollowOrigin: 遵循源站 Cache-Control: max-age 配置
        # on：开启
        # off：关闭
        # 开启后，未能匹配 CacheRules 规则的资源将根据源站返回的 max-age 值进行节点缓存；匹配了 CacheRules 规则的资源将按照 CacheRules 中设置的缓存过期时间在节点进行缓存
        # 与 CompareMaxAge 冲突，不能同时开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: String
        # @param IgnoreCacheControl: 强制缓存
        # on：开启
        # off：关闭
        # 默认为关闭状态，开启后，源站返回的 no-store、no-cache 资源，也将按照 CacheRules 规则进行缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCacheControl: String
        # @param IgnoreSetCookie: 忽略源站的Set-Cookie头部
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreSetCookie: String
        # @param CompareMaxAge: 高级缓存过期配置，开启时会对比源站返回的 max-age 值与 CacheRules 中设置的缓存过期时间，取最小值在节点进行缓存
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareMaxAge: String
        # @param Revalidate: 总是回源站校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Revalidate: :class:`Tencentcloud::Cdn.v20180606.models.Revalidate`

        attr_accessor :CacheRules, :FollowOrigin, :IgnoreCacheControl, :IgnoreSetCookie, :CompareMaxAge, :Revalidate
        
        def initialize(cacherules=nil, followorigin=nil, ignorecachecontrol=nil, ignoresetcookie=nil, comparemaxage=nil, revalidate=nil)
          @CacheRules = cacherules
          @FollowOrigin = followorigin
          @IgnoreCacheControl = ignorecachecontrol
          @IgnoreSetCookie = ignoresetcookie
          @CompareMaxAge = comparemaxage
          @Revalidate = revalidate
        end

        def deserialize(params)
          unless params['CacheRules'].nil?
            @CacheRules = []
            params['CacheRules'].each do |i|
              simplecacherule_tmp = SimpleCacheRule.new
              simplecacherule_tmp.deserialize(i)
              @CacheRules << simplecacherule_tmp
            end
          end
          @FollowOrigin = params['FollowOrigin']
          @IgnoreCacheControl = params['IgnoreCacheControl']
          @IgnoreSetCookie = params['IgnoreSetCookie']
          @CompareMaxAge = params['CompareMaxAge']
          unless params['Revalidate'].nil?
            @Revalidate = Revalidate.new
            @Revalidate.deserialize(params['Revalidate'])
          end
        end
      end

      # 缓存过期规则配置
      class SimpleCacheRule < TencentCloud::Common::AbstractModel
        # @param CacheType: 规则类型：
        # all：所有文件生效
        # file：指定文件后缀生效
        # directory：指定路径生效
        # path：指定绝对路径生效
        # index：首页
        # @type CacheType: String
        # @param CacheContents: CacheType 对应类型下的匹配内容：
        # all 时填充 *
        # file 时填充后缀名，如 jpg、txt
        # directory 时填充路径，如 /xxx/test
        # path 时填充绝对路径，如 /xxx/test.html
        # index 时填充 /
        # @type CacheContents: Array
        # @param CacheTime: 缓存过期时间设置
        # 单位为秒，最大可设置为 365 天
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

      # 查询结果排序条件
      class Sort < TencentCloud::Common::AbstractModel
        # @param Key: 排序字段，当前支持：
        # createTime，域名创建时间
        # certExpireTime，证书过期时间
        # 默认createTime。
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

      # 域名国内海外分地区特殊配置。
      class SpecificConfig < TencentCloud::Common::AbstractModel
        # @param Mainland: 国内特殊配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mainland: :class:`Tencentcloud::Cdn.v20180606.models.MainlandConfig`
        # @param Overseas: 海外特殊配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Overseas: :class:`Tencentcloud::Cdn.v20180606.models.OverseaConfig`

        attr_accessor :Mainland, :Overseas
        
        def initialize(mainland=nil, overseas=nil)
          @Mainland = mainland
          @Overseas = overseas
        end

        def deserialize(params)
          unless params['Mainland'].nil?
            @Mainland = MainlandConfig.new
            @Mainland.deserialize(params['Mainland'])
          end
          unless params['Overseas'].nil?
            @Overseas = OverseaConfig.new
            @Overseas.deserialize(params['Overseas'])
          end
        end
      end

      # StartCdnDomain请求参数结构体
      class StartCdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # 域名状态需要为【已停用】
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # StartCdnDomain返回参数结构体
      class StartCdnDomainResponse < TencentCloud::Common::AbstractModel
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

      # StartScdnDomain请求参数结构体
      class StartScdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # StartScdnDomain返回参数结构体
      class StartScdnDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 开启结果，Success表示成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 状态码缓存过期配置，默认情况下会对 404 状态码缓存 10 秒
      class StatusCodeCache < TencentCloud::Common::AbstractModel
        # @param Switch: 状态码缓存过期配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param CacheRules: 状态码缓存过期规则明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheRules: Array

        attr_accessor :Switch, :CacheRules
        
        def initialize(switch=nil, cacherules=nil)
          @Switch = switch
          @CacheRules = cacherules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['CacheRules'].nil?
            @CacheRules = []
            params['CacheRules'].each do |i|
              statuscodecacherule_tmp = StatusCodeCacheRule.new
              statuscodecacherule_tmp.deserialize(i)
              @CacheRules << statuscodecacherule_tmp
            end
          end
        end
      end

      # 状态码缓存过期时间规则配置
      class StatusCodeCacheRule < TencentCloud::Common::AbstractModel
        # @param StatusCode: http 状态码
        # 支持 403、404 状态码
        # @type StatusCode: String
        # @param CacheTime: 状态码缓存过期时间，单位秒
        # @type CacheTime: Integer

        attr_accessor :StatusCode, :CacheTime
        
        def initialize(statuscode=nil, cachetime=nil)
          @StatusCode = statuscode
          @CacheTime = cachetime
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @CacheTime = params['CacheTime']
        end
      end

      # StopCdnDomain请求参数结构体
      class StopCdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # 域名需要为【已启动】状态
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # StopCdnDomain返回参数结构体
      class StopCdnDomainResponse < TencentCloud::Common::AbstractModel
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

      # StopScdnDomain请求参数结构体
      class StopScdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # StopScdnDomain返回参数结构体
      class StopScdnDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 关闭结果，Success表示成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 明细数据的汇总值，各指标根据其特性不同拥有不同汇总方式
      class SummarizedData < TencentCloud::Common::AbstractModel
        # @param Name: 汇总方式，存在以下几种：
        # sum：累加求和
        # max：最大值，带宽模式下，采用 5 分钟粒度汇总数据，计算峰值带宽
        # avg：平均值
        # @type Name: String
        # @param Value: 汇总后的数据值
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

      # 域名标签配置
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
        # @type Value: Float

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

      # 排序类型数据结构
      class TopData < TencentCloud::Common::AbstractModel
        # @param Resource: 资源名称，根据查询条件不同分为以下几类：
        # 具体域名：表示该域名明细数据
        # multiDomains：表示多域名汇总明细数据
        # 项目 ID：指定项目查询时，显示为项目 ID
        # all：账号维度明细数据
        # @type Resource: String
        # @param DetailData: 排序结果详情
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
              topdetaildata_tmp = TopDetailData.new
              topdetaildata_tmp.deserialize(i)
              @DetailData << topdetaildata_tmp
            end
          end
        end
      end

      # 排序类型的数据结构
      class TopDetailData < TencentCloud::Common::AbstractModel
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

      # CLS主题信息
      class TopicInfo < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param TopicName: 主题名字
        # @type TopicName: String
        # @param Enabled: 是否启用投递
        # @type Enabled: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Channel: 归属于cdn或ecdn
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: String

        attr_accessor :TopicId, :TopicName, :Enabled, :CreateTime, :Channel
        
        def initialize(topicid=nil, topicname=nil, enabled=nil, createtime=nil, channel=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Enabled = enabled
          @CreateTime = createtime
          @Channel = channel
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Enabled = params['Enabled']
          @CreateTime = params['CreateTime']
          @Channel = params['Channel']
        end
      end

      # 图片优化-TpgAdapter配置
      class TpgAdapter < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，"on/off"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # CDN加速流量包。
      class TrafficPackage < TencentCloud::Common::AbstractModel
        # @param Id: 流量包 Id
        # @type Id: Integer
        # @param Type: 流量包类型
        # @type Type: String
        # @param Bytes: 流量包大小（单位为 Byte）
        # @type Bytes: Integer
        # @param BytesUsed: 已消耗流量（单位为 Byte）
        # @type BytesUsed: Integer
        # @param Status: 流量包状态
        # enabled：已启用
        # expired：已过期
        # disabled：未启用
        # @type Status: String
        # @param CreateTime: 流量包发放时间
        # @type CreateTime: String
        # @param EnableTime: 流量包生效时间
        # @type EnableTime: String
        # @param ExpireTime: 流量包过期时间
        # @type ExpireTime: String
        # @param ContractExtension: 流量包是否续订
        # @type ContractExtension: Boolean
        # @param AutoExtension: 流量包是否自动续订
        # @type AutoExtension: Boolean
        # @param Channel: 流量包来源
        # @type Channel: String
        # @param Area: 流量包生效区域，目前仅支持mainland
        # @type Area: String
        # @param LifeTimeMonth: 流量包生命周期月数
        # @type LifeTimeMonth: Integer
        # @param ExtensionAvailable: 流量包是否支持续订
        # @type ExtensionAvailable: Boolean
        # @param RefundAvailable: 流量包是否支持退费
        # @type RefundAvailable: Boolean

        attr_accessor :Id, :Type, :Bytes, :BytesUsed, :Status, :CreateTime, :EnableTime, :ExpireTime, :ContractExtension, :AutoExtension, :Channel, :Area, :LifeTimeMonth, :ExtensionAvailable, :RefundAvailable
        
        def initialize(id=nil, type=nil, bytes=nil, bytesused=nil, status=nil, createtime=nil, enabletime=nil, expiretime=nil, contractextension=nil, autoextension=nil, channel=nil, area=nil, lifetimemonth=nil, extensionavailable=nil, refundavailable=nil)
          @Id = id
          @Type = type
          @Bytes = bytes
          @BytesUsed = bytesused
          @Status = status
          @CreateTime = createtime
          @EnableTime = enabletime
          @ExpireTime = expiretime
          @ContractExtension = contractextension
          @AutoExtension = autoextension
          @Channel = channel
          @Area = area
          @LifeTimeMonth = lifetimemonth
          @ExtensionAvailable = extensionavailable
          @RefundAvailable = refundavailable
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Bytes = params['Bytes']
          @BytesUsed = params['BytesUsed']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @EnableTime = params['EnableTime']
          @ExpireTime = params['ExpireTime']
          @ContractExtension = params['ContractExtension']
          @AutoExtension = params['AutoExtension']
          @Channel = params['Channel']
          @Area = params['Area']
          @LifeTimeMonth = params['LifeTimeMonth']
          @ExtensionAvailable = params['ExtensionAvailable']
          @RefundAvailable = params['RefundAvailable']
        end
      end

      # UpdateDomainConfig请求参数结构体
      class UpdateDomainConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param ProjectId: 项目 ID
        # @type ProjectId: Integer
        # @param Origin: 源站配置
        # @type Origin: :class:`Tencentcloud::Cdn.v20180606.models.Origin`
        # @param IpFilter: IP 黑白名单配置
        # @type IpFilter: :class:`Tencentcloud::Cdn.v20180606.models.IpFilter`
        # @param IpFreqLimit: IP 限频配置
        # @type IpFreqLimit: :class:`Tencentcloud::Cdn.v20180606.models.IpFreqLimit`
        # @param StatusCodeCache: 状态码缓存配置
        # @type StatusCodeCache: :class:`Tencentcloud::Cdn.v20180606.models.StatusCodeCache`
        # @param Compression: 智能压缩配置
        # @type Compression: :class:`Tencentcloud::Cdn.v20180606.models.Compression`
        # @param BandwidthAlert: 带宽封顶配置
        # @type BandwidthAlert: :class:`Tencentcloud::Cdn.v20180606.models.BandwidthAlert`
        # @param RangeOriginPull: Range 回源配置
        # @type RangeOriginPull: :class:`Tencentcloud::Cdn.v20180606.models.RangeOriginPull`
        # @param FollowRedirect: 301/302 回源跟随配置
        # @type FollowRedirect: :class:`Tencentcloud::Cdn.v20180606.models.FollowRedirect`
        # @param ErrorPage: 错误码重定向配置（功能灰度中，尚未全量）
        # @type ErrorPage: :class:`Tencentcloud::Cdn.v20180606.models.ErrorPage`
        # @param RequestHeader: 请求头部配置
        # @type RequestHeader: :class:`Tencentcloud::Cdn.v20180606.models.RequestHeader`
        # @param ResponseHeader: 响应头部配置
        # @type ResponseHeader: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeader`
        # @param DownstreamCapping: 下载速度配置
        # @type DownstreamCapping: :class:`Tencentcloud::Cdn.v20180606.models.DownstreamCapping`
        # @param CacheKey: 节点缓存键配置
        # @type CacheKey: :class:`Tencentcloud::Cdn.v20180606.models.CacheKey`
        # @param ResponseHeaderCache: 头部缓存配置
        # @type ResponseHeaderCache: :class:`Tencentcloud::Cdn.v20180606.models.ResponseHeaderCache`
        # @param VideoSeek: 视频拖拽配置
        # @type VideoSeek: :class:`Tencentcloud::Cdn.v20180606.models.VideoSeek`
        # @param Cache: 缓存过期时间配置
        # @type Cache: :class:`Tencentcloud::Cdn.v20180606.models.Cache`
        # @param OriginPullOptimization: 跨国链路优化配置
        # @type OriginPullOptimization: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullOptimization`
        # @param Https: Https 加速配置
        # @type Https: :class:`Tencentcloud::Cdn.v20180606.models.Https`
        # @param Authentication: 时间戳防盗链配置
        # @type Authentication: :class:`Tencentcloud::Cdn.v20180606.models.Authentication`
        # @param Seo: SEO 优化配置
        # @type Seo: :class:`Tencentcloud::Cdn.v20180606.models.Seo`
        # @param ForceRedirect: 访问协议强制跳转配置
        # @type ForceRedirect: :class:`Tencentcloud::Cdn.v20180606.models.ForceRedirect`
        # @param Referer: Referer 防盗链配置
        # @type Referer: :class:`Tencentcloud::Cdn.v20180606.models.Referer`
        # @param MaxAge: 浏览器缓存配置（功能灰度中，尚未全量）
        # @type MaxAge: :class:`Tencentcloud::Cdn.v20180606.models.MaxAge`
        # @param ServiceType: 域名业务类型
        # web：静态加速
        # download：下载加速
        # media：流媒体点播加速
        # @type ServiceType: String
        # @param SpecificConfig: 地域属性特殊配置
        # 适用于域名境内加速、境外加速配置不一致场景
        # @type SpecificConfig: :class:`Tencentcloud::Cdn.v20180606.models.SpecificConfig`
        # @param Area: 域名加速区域
        # mainland：中国境内加速
        # overseas：中国境外加速
        # global：全球加速
        # @type Area: String
        # @param OriginPullTimeout: 回源超时配置
        # @type OriginPullTimeout: :class:`Tencentcloud::Cdn.v20180606.models.OriginPullTimeout`
        # @param AwsPrivateAccess: 回源S3私有鉴权
        # @type AwsPrivateAccess: :class:`Tencentcloud::Cdn.v20180606.models.AwsPrivateAccess`
        # @param UserAgentFilter: UA黑白名单配置
        # @type UserAgentFilter: :class:`Tencentcloud::Cdn.v20180606.models.UserAgentFilter`
        # @param AccessControl: 访问控制
        # @type AccessControl: :class:`Tencentcloud::Cdn.v20180606.models.AccessControl`
        # @param UrlRedirect: URL重定向配置
        # @type UrlRedirect: :class:`Tencentcloud::Cdn.v20180606.models.UrlRedirect`
        # @param AccessPort: 访问端口配置
        # @type AccessPort: Array
        # @param AdvancedAuthentication: 时间戳防盗链高级版配置，白名单功能
        # @type AdvancedAuthentication: :class:`Tencentcloud::Cdn.v20180606.models.AdvancedAuthentication`
        # @param OriginAuthentication: 回源鉴权高级版配置，白名单功能
        # @type OriginAuthentication: :class:`Tencentcloud::Cdn.v20180606.models.OriginAuthentication`
        # @param Ipv6Access: Ipv6 访问配置
        # @type Ipv6Access: :class:`Tencentcloud::Cdn.v20180606.models.Ipv6Access`
        # @param OfflineCache: 离线缓存
        # @type OfflineCache: :class:`Tencentcloud::Cdn.v20180606.models.OfflineCache`
        # @param OriginCombine: 合并回源
        # @type OriginCombine: :class:`Tencentcloud::Cdn.v20180606.models.OriginCombine`
        # @param Quic: QUIC正在内测中，请先提交内测申请，详情请前往QUIC产品文档。
        # @type Quic: :class:`Tencentcloud::Cdn.v20180606.models.Quic`
        # @param OssPrivateAccess: 回源OSS私有鉴权
        # @type OssPrivateAccess: :class:`Tencentcloud::Cdn.v20180606.models.OssPrivateAccess`
        # @param WebSocket: WebSocket配置
        # @type WebSocket: :class:`Tencentcloud::Cdn.v20180606.models.WebSocket`

        attr_accessor :Domain, :ProjectId, :Origin, :IpFilter, :IpFreqLimit, :StatusCodeCache, :Compression, :BandwidthAlert, :RangeOriginPull, :FollowRedirect, :ErrorPage, :RequestHeader, :ResponseHeader, :DownstreamCapping, :CacheKey, :ResponseHeaderCache, :VideoSeek, :Cache, :OriginPullOptimization, :Https, :Authentication, :Seo, :ForceRedirect, :Referer, :MaxAge, :ServiceType, :SpecificConfig, :Area, :OriginPullTimeout, :AwsPrivateAccess, :UserAgentFilter, :AccessControl, :UrlRedirect, :AccessPort, :AdvancedAuthentication, :OriginAuthentication, :Ipv6Access, :OfflineCache, :OriginCombine, :Quic, :OssPrivateAccess, :WebSocket
        
        def initialize(domain=nil, projectid=nil, origin=nil, ipfilter=nil, ipfreqlimit=nil, statuscodecache=nil, compression=nil, bandwidthalert=nil, rangeoriginpull=nil, followredirect=nil, errorpage=nil, requestheader=nil, responseheader=nil, downstreamcapping=nil, cachekey=nil, responseheadercache=nil, videoseek=nil, cache=nil, originpulloptimization=nil, https=nil, authentication=nil, seo=nil, forceredirect=nil, referer=nil, maxage=nil, servicetype=nil, specificconfig=nil, area=nil, originpulltimeout=nil, awsprivateaccess=nil, useragentfilter=nil, accesscontrol=nil, urlredirect=nil, accessport=nil, advancedauthentication=nil, originauthentication=nil, ipv6access=nil, offlinecache=nil, origincombine=nil, quic=nil, ossprivateaccess=nil, websocket=nil)
          @Domain = domain
          @ProjectId = projectid
          @Origin = origin
          @IpFilter = ipfilter
          @IpFreqLimit = ipfreqlimit
          @StatusCodeCache = statuscodecache
          @Compression = compression
          @BandwidthAlert = bandwidthalert
          @RangeOriginPull = rangeoriginpull
          @FollowRedirect = followredirect
          @ErrorPage = errorpage
          @RequestHeader = requestheader
          @ResponseHeader = responseheader
          @DownstreamCapping = downstreamcapping
          @CacheKey = cachekey
          @ResponseHeaderCache = responseheadercache
          @VideoSeek = videoseek
          @Cache = cache
          @OriginPullOptimization = originpulloptimization
          @Https = https
          @Authentication = authentication
          @Seo = seo
          @ForceRedirect = forceredirect
          @Referer = referer
          @MaxAge = maxage
          @ServiceType = servicetype
          @SpecificConfig = specificconfig
          @Area = area
          @OriginPullTimeout = originpulltimeout
          @AwsPrivateAccess = awsprivateaccess
          @UserAgentFilter = useragentfilter
          @AccessControl = accesscontrol
          @UrlRedirect = urlredirect
          @AccessPort = accessport
          @AdvancedAuthentication = advancedauthentication
          @OriginAuthentication = originauthentication
          @Ipv6Access = ipv6access
          @OfflineCache = offlinecache
          @OriginCombine = origincombine
          @Quic = quic
          @OssPrivateAccess = ossprivateaccess
          @WebSocket = websocket
        end

        def deserialize(params)
          @Domain = params['Domain']
          @ProjectId = params['ProjectId']
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
          unless params['StatusCodeCache'].nil?
            @StatusCodeCache = StatusCodeCache.new
            @StatusCodeCache.deserialize(params['StatusCodeCache'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['BandwidthAlert'].nil?
            @BandwidthAlert = BandwidthAlert.new
            @BandwidthAlert.deserialize(params['BandwidthAlert'])
          end
          unless params['RangeOriginPull'].nil?
            @RangeOriginPull = RangeOriginPull.new
            @RangeOriginPull.deserialize(params['RangeOriginPull'])
          end
          unless params['FollowRedirect'].nil?
            @FollowRedirect = FollowRedirect.new
            @FollowRedirect.deserialize(params['FollowRedirect'])
          end
          unless params['ErrorPage'].nil?
            @ErrorPage = ErrorPage.new
            @ErrorPage.deserialize(params['ErrorPage'])
          end
          unless params['RequestHeader'].nil?
            @RequestHeader = RequestHeader.new
            @RequestHeader.deserialize(params['RequestHeader'])
          end
          unless params['ResponseHeader'].nil?
            @ResponseHeader = ResponseHeader.new
            @ResponseHeader.deserialize(params['ResponseHeader'])
          end
          unless params['DownstreamCapping'].nil?
            @DownstreamCapping = DownstreamCapping.new
            @DownstreamCapping.deserialize(params['DownstreamCapping'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['ResponseHeaderCache'].nil?
            @ResponseHeaderCache = ResponseHeaderCache.new
            @ResponseHeaderCache.deserialize(params['ResponseHeaderCache'])
          end
          unless params['VideoSeek'].nil?
            @VideoSeek = VideoSeek.new
            @VideoSeek.deserialize(params['VideoSeek'])
          end
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['OriginPullOptimization'].nil?
            @OriginPullOptimization = OriginPullOptimization.new
            @OriginPullOptimization.deserialize(params['OriginPullOptimization'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['Authentication'].nil?
            @Authentication = Authentication.new
            @Authentication.deserialize(params['Authentication'])
          end
          unless params['Seo'].nil?
            @Seo = Seo.new
            @Seo.deserialize(params['Seo'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Referer'].nil?
            @Referer = Referer.new
            @Referer.deserialize(params['Referer'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          @ServiceType = params['ServiceType']
          unless params['SpecificConfig'].nil?
            @SpecificConfig = SpecificConfig.new
            @SpecificConfig.deserialize(params['SpecificConfig'])
          end
          @Area = params['Area']
          unless params['OriginPullTimeout'].nil?
            @OriginPullTimeout = OriginPullTimeout.new
            @OriginPullTimeout.deserialize(params['OriginPullTimeout'])
          end
          unless params['AwsPrivateAccess'].nil?
            @AwsPrivateAccess = AwsPrivateAccess.new
            @AwsPrivateAccess.deserialize(params['AwsPrivateAccess'])
          end
          unless params['UserAgentFilter'].nil?
            @UserAgentFilter = UserAgentFilter.new
            @UserAgentFilter.deserialize(params['UserAgentFilter'])
          end
          unless params['AccessControl'].nil?
            @AccessControl = AccessControl.new
            @AccessControl.deserialize(params['AccessControl'])
          end
          unless params['UrlRedirect'].nil?
            @UrlRedirect = UrlRedirect.new
            @UrlRedirect.deserialize(params['UrlRedirect'])
          end
          @AccessPort = params['AccessPort']
          unless params['AdvancedAuthentication'].nil?
            @AdvancedAuthentication = AdvancedAuthentication.new
            @AdvancedAuthentication.deserialize(params['AdvancedAuthentication'])
          end
          unless params['OriginAuthentication'].nil?
            @OriginAuthentication = OriginAuthentication.new
            @OriginAuthentication.deserialize(params['OriginAuthentication'])
          end
          unless params['Ipv6Access'].nil?
            @Ipv6Access = Ipv6Access.new
            @Ipv6Access.deserialize(params['Ipv6Access'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['OriginCombine'].nil?
            @OriginCombine = OriginCombine.new
            @OriginCombine.deserialize(params['OriginCombine'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['OssPrivateAccess'].nil?
            @OssPrivateAccess = OssPrivateAccess.new
            @OssPrivateAccess.deserialize(params['OssPrivateAccess'])
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
        end
      end

      # UpdateDomainConfig返回参数结构体
      class UpdateDomainConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateImageConfig请求参数结构体
      class UpdateImageConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param WebpAdapter: WebpAdapter配置项
        # @type WebpAdapter: :class:`Tencentcloud::Cdn.v20180606.models.WebpAdapter`
        # @param TpgAdapter: TpgAdapter配置项
        # @type TpgAdapter: :class:`Tencentcloud::Cdn.v20180606.models.TpgAdapter`
        # @param GuetzliAdapter: GuetzliAdapter配置项
        # @type GuetzliAdapter: :class:`Tencentcloud::Cdn.v20180606.models.GuetzliAdapter`

        attr_accessor :Domain, :WebpAdapter, :TpgAdapter, :GuetzliAdapter
        
        def initialize(domain=nil, webpadapter=nil, tpgadapter=nil, guetzliadapter=nil)
          @Domain = domain
          @WebpAdapter = webpadapter
          @TpgAdapter = tpgadapter
          @GuetzliAdapter = guetzliadapter
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['WebpAdapter'].nil?
            @WebpAdapter = WebpAdapter.new
            @WebpAdapter.deserialize(params['WebpAdapter'])
          end
          unless params['TpgAdapter'].nil?
            @TpgAdapter = TpgAdapter.new
            @TpgAdapter.deserialize(params['TpgAdapter'])
          end
          unless params['GuetzliAdapter'].nil?
            @GuetzliAdapter = GuetzliAdapter.new
            @GuetzliAdapter.deserialize(params['GuetzliAdapter'])
          end
        end
      end

      # UpdateImageConfig返回参数结构体
      class UpdateImageConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePayType请求参数结构体
      class UpdatePayTypeRequest < TencentCloud::Common::AbstractModel
        # @param Area: 计费区域，mainland或overseas。
        # @type Area: String
        # @param PayType: 计费类型，flux或bandwidth。
        # @type PayType: String

        attr_accessor :Area, :PayType
        
        def initialize(area=nil, paytype=nil)
          @Area = area
          @PayType = paytype
        end

        def deserialize(params)
          @Area = params['Area']
          @PayType = params['PayType']
        end
      end

      # UpdatePayType返回参数结构体
      class UpdatePayTypeResponse < TencentCloud::Common::AbstractModel
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

      # UpdateScdnDomain请求参数结构体
      class UpdateScdnDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Waf: Web 攻击防护（WAF）配置
        # @type Waf: :class:`Tencentcloud::Cdn.v20180606.models.ScdnWafConfig`
        # @param Acl: 自定义防护策略配置
        # @type Acl: :class:`Tencentcloud::Cdn.v20180606.models.ScdnAclConfig`
        # @param CC: CC 防护配置，目前 CC 防护默认开启
        # @type CC: :class:`Tencentcloud::Cdn.v20180606.models.ScdnConfig`
        # @param Ddos: DDOS 防护配置，目前 DDoS 防护默认开启
        # @type Ddos: :class:`Tencentcloud::Cdn.v20180606.models.ScdnDdosConfig`
        # @param Bot: BOT 防护配置
        # @type Bot: :class:`Tencentcloud::Cdn.v20180606.models.ScdnBotConfig`

        attr_accessor :Domain, :Waf, :Acl, :CC, :Ddos, :Bot
        
        def initialize(domain=nil, waf=nil, acl=nil, cc=nil, ddos=nil, bot=nil)
          @Domain = domain
          @Waf = waf
          @Acl = acl
          @CC = cc
          @Ddos = ddos
          @Bot = bot
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['Waf'].nil?
            @Waf = ScdnWafConfig.new
            @Waf.deserialize(params['Waf'])
          end
          unless params['Acl'].nil?
            @Acl = ScdnAclConfig.new
            @Acl.deserialize(params['Acl'])
          end
          unless params['CC'].nil?
            @CC = ScdnConfig.new
            @CC.deserialize(params['CC'])
          end
          unless params['Ddos'].nil?
            @Ddos = ScdnDdosConfig.new
            @Ddos.deserialize(params['Ddos'])
          end
          unless params['Bot'].nil?
            @Bot = ScdnBotConfig.new
            @Bot.deserialize(params['Bot'])
          end
        end
      end

      # UpdateScdnDomain返回参数结构体
      class UpdateScdnDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 提交结果，Success表示成功
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 封禁url的详细信息
      class UrlRecord < TencentCloud::Common::AbstractModel
        # @param Status: 状态(disable表示封禁，enable表示解封)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RealUrl: 对应的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealUrl: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Status, :RealUrl, :CreateTime, :UpdateTime
        
        def initialize(status=nil, realurl=nil, createtime=nil, updatetime=nil)
          @Status = status
          @RealUrl = realurl
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Status = params['Status']
          @RealUrl = params['RealUrl']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # URL重定向配置
      class UrlRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: URL重定向配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param PathRules: URL重定向规则，当Switch为on时必填，规则数量最大为10个。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathRules: Array

        attr_accessor :Switch, :PathRules
        
        def initialize(switch=nil, pathrules=nil)
          @Switch = switch
          @PathRules = pathrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['PathRules'].nil?
            @PathRules = []
            params['PathRules'].each do |i|
              urlredirectrule_tmp = UrlRedirectRule.new
              urlredirectrule_tmp.deserialize(i)
              @PathRules << urlredirectrule_tmp
            end
          end
        end
      end

      # Url重定向规则配置
      class UrlRedirectRule < TencentCloud::Common::AbstractModel
        # @param RedirectStatusCode: 重定向状态码，301 | 302
        # @type RedirectStatusCode: Integer
        # @param Pattern: 待匹配的Url，仅支持Url路径，不支持参数。默认完全匹配，支持通配符 *，最多支持5个通配符，最大长度1024字符。
        # @type Pattern: String
        # @param RedirectUrl: 目标URL，必须以“/”开头，不包含参数部分。最大长度1024字符。可使用$1, $2, $3, $4, $5分别捕获匹配路径中的通配符号，最多支持10个捕获值。
        # @type RedirectUrl: String
        # @param RedirectHost: 目标host，必须以http://或https://开头，并填写标准格式域名，如果不填写，默认为http:// + 当前域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectHost: String

        attr_accessor :RedirectStatusCode, :Pattern, :RedirectUrl, :RedirectHost
        
        def initialize(redirectstatuscode=nil, pattern=nil, redirecturl=nil, redirecthost=nil)
          @RedirectStatusCode = redirectstatuscode
          @Pattern = pattern
          @RedirectUrl = redirecturl
          @RedirectHost = redirecthost
        end

        def deserialize(params)
          @RedirectStatusCode = params['RedirectStatusCode']
          @Pattern = params['Pattern']
          @RedirectUrl = params['RedirectUrl']
          @RedirectHost = params['RedirectHost']
        end
      end

      # UserAgent黑白名单配置
      class UserAgentFilter < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，on或off
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param FilterRules: UA黑白名单生效规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterRules: Array

        attr_accessor :Switch, :FilterRules
        
        def initialize(switch=nil, filterrules=nil)
          @Switch = switch
          @FilterRules = filterrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['FilterRules'].nil?
            @FilterRules = []
            params['FilterRules'].each do |i|
              useragentfilterrule_tmp = UserAgentFilterRule.new
              useragentfilterrule_tmp.deserialize(i)
              @FilterRules << useragentfilterrule_tmp
            end
          end
        end
      end

      # UserAgent黑白名单规则配置
      class UserAgentFilterRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 访问路径生效类型
        # all: 所有访问路径生效
        # file: 根据文件后缀类型生效
        # directory: 根据目录生效
        # path: 根据完整访问路径生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param RulePaths: 访问路径生效内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulePaths: Array
        # @param UserAgents: UserAgent列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAgents: Array
        # @param FilterType: 黑名单或白名单，blacklist或whitelist
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterType: String

        attr_accessor :RuleType, :RulePaths, :UserAgents, :FilterType
        
        def initialize(ruletype=nil, rulepaths=nil, useragents=nil, filtertype=nil)
          @RuleType = ruletype
          @RulePaths = rulepaths
          @UserAgents = useragents
          @FilterType = filtertype
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RulePaths = params['RulePaths']
          @UserAgents = params['UserAgents']
          @FilterType = params['FilterType']
        end
      end

      # VerifyDomainRecord请求参数结构体
      class VerifyDomainRecordRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain
        
        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # VerifyDomainRecord返回参数结构体
      class VerifyDomainRecordResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否验证成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 视频拖拽配置，默认为关闭状态
      class VideoSeek < TencentCloud::Common::AbstractModel
        # @param Switch: 视频拖拽开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 违规 URL 详情
      class ViolationUrl < TencentCloud::Common::AbstractModel
        # @param Id: ID
        # @type Id: Integer
        # @param RealUrl: 违规资源原始访问 URL
        # @type RealUrl: String
        # @param DownloadUrl: 快照路径，用于控制台展示违规内容快照
        # @type DownloadUrl: String
        # @param UrlStatus: 违规资源当前状态
        # forbid：已封禁
        # release：已解封
        # delay ： 延迟处理
        # reject ：申诉驳回，状态仍为封禁态
        # complain：申诉进行中
        # @type UrlStatus: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :RealUrl, :DownloadUrl, :UrlStatus, :CreateTime, :UpdateTime
        
        def initialize(id=nil, realurl=nil, downloadurl=nil, urlstatus=nil, createtime=nil, updatetime=nil)
          @Id = id
          @RealUrl = realurl
          @DownloadUrl = downloadurl
          @UrlStatus = urlstatus
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @RealUrl = params['RealUrl']
          @DownloadUrl = params['DownloadUrl']
          @UrlStatus = params['UrlStatus']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Waf子规则开关状态
      class WafSubRuleStatus < TencentCloud::Common::AbstractModel
        # @param Switch: 子规则状态，on|off
        # @type Switch: String
        # @param SubIds: 规则id列表
        # @type SubIds: Array

        attr_accessor :Switch, :SubIds
        
        def initialize(switch=nil, subids=nil)
          @Switch = switch
          @SubIds = subids
        end

        def deserialize(params)
          @Switch = params['Switch']
          @SubIds = params['SubIds']
        end
      end

      # WebSocket配置
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

      # 图片优化-WebpAdapter配置
      class WebpAdapter < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，"on/off"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

    end
  end
end

