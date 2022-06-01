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
  module Teo
    module V20220106
      # 应用代理实例
      class ApplicationProxy < TencentCloud::Common::AbstractModel
        # @param ProxyId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyId: String
        # @param ProxyName: 实例名称
        # @type ProxyName: String
        # @param PlatType: 调度模式：
        # ip表示Anycast IP
        # domain表示CNAME
        # @type PlatType: String
        # @param SecurityType: 0关闭安全，1开启安全
        # @type SecurityType: Integer
        # @param AccelerateType: 0关闭加速，1开启加速
        # @type AccelerateType: Integer
        # @param ForwardClientIp: 字段已经移至Rule.ForwardClientIp
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经移至Rule.SessionPersist
        # @type SessionPersist: Boolean
        # @param Rule: 规则列表
        # @type Rule: Array
        # @param Status: 状态：
        # online：启用
        # offline：停用
        # progress：部署中
        # stopping：停用中
        # fail：部署失败/停用失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ScheduleValue: 调度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleValue: Array
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param SessionPersistTime: 会话保持时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyType: String
        # @param HostId: 七层实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostId: String

        attr_accessor :ProxyId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :Status, :ScheduleValue, :UpdateTime, :ZoneId, :ZoneName, :SessionPersistTime, :ProxyType, :HostId
        
        def initialize(proxyid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, status=nil, schedulevalue=nil, updatetime=nil, zoneid=nil, zonename=nil, sessionpersisttime=nil, proxytype=nil, hostid=nil)
          @ProxyId = proxyid
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @Rule = rule
          @Status = status
          @ScheduleValue = schedulevalue
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @HostId = hostid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
          @Status = params['Status']
          @ScheduleValue = params['ScheduleValue']
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
          @HostId = params['HostId']
        end
      end

      # 应用代理规则
      class ApplicationProxyRule < TencentCloud::Common::AbstractModel
        # @param Proto: 协议，取值为TCP或者UDP
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 80：80端口
        # 81-90：81至90端口
        # @type Port: Array
        # @param OriginType: 源站类型，取值：
        # custom：手动添加
        # origins：源站组
        # load_balancing：负载均衡
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # 当OriginType=load_balancing时，包含一个元素，表示负载均衡ID
        # @type OriginValue: Array
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param Status: 状态：
        # online：启用
        # offline：停用
        # progress：部署中
        # stopping：停用中
        # fail：部署失败/停用失败
        # @type Status: String
        # @param ForwardClientIp: 传递客户端IP，当Proto=TCP时，取值：
        # TOA：TOA
        # PPV1: Proxy Protocol传递，协议版本V1
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # 当Proto=UDP时，取值：
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持
        # @type SessionPersist: Boolean

        attr_accessor :Proto, :Port, :OriginType, :OriginValue, :RuleId, :Status, :ForwardClientIp, :SessionPersist
        
        def initialize(proto=nil, port=nil, origintype=nil, originvalue=nil, ruleid=nil, status=nil, forwardclientip=nil, sessionpersist=nil)
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @RuleId = ruleid
          @Status = status
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
        end

        def deserialize(params)
          @Proto = params['Proto']
          @Port = params['Port']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @RuleId = params['RuleId']
          @Status = params['Status']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
        end
      end

      # 缓存规则配置。
      class CacheConfig < TencentCloud::Common::AbstractModel
        # @param Cache: 缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigCache`
        # @param NoCache: 不缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigNoCache`
        # @param FollowOrigin: 遵循源站配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigFollowOrigin`

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

      # 缓存时间设置
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
        # @param IgnoreCacheControl: 是否开启强制缓存
        # 开启：on
        # 关闭：off
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCacheControl: String

        attr_accessor :Switch, :CacheTime, :IgnoreCacheControl
        
        def initialize(switch=nil, cachetime=nil, ignorecachecontrol=nil)
          @Switch = switch
          @CacheTime = cachetime
          @IgnoreCacheControl = ignorecachecontrol
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CacheTime = params['CacheTime']
          @IgnoreCacheControl = params['IgnoreCacheControl']
        end
      end

      # 缓存遵循源站配置
      class CacheConfigFollowOrigin < TencentCloud::Common::AbstractModel
        # @param Switch: 遵循源站配置开关
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

      # 不缓存配置
      class CacheConfigNoCache < TencentCloud::Common::AbstractModel
        # @param Switch: 不缓存配置开关
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

      # 缓存键配置
      class CacheKey < TencentCloud::Common::AbstractModel
        # @param FullUrlCache: 是否开启全路径缓存
        # on：开启全路径缓存（即关闭参数忽略）
        # off：关闭全路径缓存（即开启参数忽略）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullUrlCache: String
        # @param IgnoreCase: 是否忽略大小写缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCase: String
        # @param QueryString: CacheKey中包含请求参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Teo.v20220106.models.QueryString`

        attr_accessor :FullUrlCache, :IgnoreCase, :QueryString
        
        def initialize(fullurlcache=nil, ignorecase=nil, querystring=nil)
          @FullUrlCache = fullurlcache
          @IgnoreCase = ignorecase
          @QueryString = querystring
        end

        def deserialize(params)
          @FullUrlCache = params['FullUrlCache']
          @IgnoreCase = params['IgnoreCase']
          unless params['QueryString'].nil?
            @QueryString = QueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
        end
      end

      # 证书查询过滤条件
      class CertFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下:
        #  - host：域名。
        #  - certId: 证书ID
        #  - certAlias: 证书备用名
        #  - certType: default: 默认证书, upload: 上传证书, managed:腾讯云证书
        # @type Name: String
        # @param Values: 过滤字段值
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名host。
        # 模糊查询时，Value长度最大为1。
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Fuzzy
        
        def initialize(name=nil, values=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Fuzzy = params['Fuzzy']
        end
      end

      # 查询结果排序条件。
      class CertSort < TencentCloud::Common::AbstractModel
        # @param Key: 排序字段，当前支持：
        # createTime，域名创建时间
        # certExpireTime，证书过期时间
        # certDeployTime,  证书部署时间
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

      # CheckCertificate请求参数结构体
      class CheckCertificateRequest < TencentCloud::Common::AbstractModel
        # @param Certificate: 证书
        # @type Certificate: String
        # @param PrivateKey: 私钥
        # @type PrivateKey: String

        attr_accessor :Certificate, :PrivateKey
        
        def initialize(certificate=nil, privatekey=nil)
          @Certificate = certificate
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @Certificate = params['Certificate']
          @PrivateKey = params['PrivateKey']
        end
      end

      # CheckCertificate返回参数结构体
      class CheckCertificateResponse < TencentCloud::Common::AbstractModel
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

      # 客户端IP头部
      class ClientIp < TencentCloud::Common::AbstractModel
        # @param Switch: 客户端IP头部配置开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param HeaderName: 回源客户端IP请求头名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderName: String

        attr_accessor :Switch, :HeaderName
        
        def initialize(switch=nil, headername=nil)
          @Switch = switch
          @HeaderName = headername
        end

        def deserialize(params)
          @Switch = params['Switch']
          @HeaderName = params['HeaderName']
        end
      end

      # CNAME 状态
      class CnameStatus < TencentCloud::Common::AbstractModel
        # @param Name: 记录名称
        # @type Name: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Status: 状态
        # 生效：active
        # 不生效：moved
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Name, :Cname, :Status
        
        def initialize(name=nil, cname=nil, status=nil)
          @Name = name
          @Cname = cname
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Cname = params['Cname']
          @Status = params['Status']
        end
      end

      # 智能压缩配置
      class Compression < TencentCloud::Common::AbstractModel
        # @param Switch: 智能压缩配置开关
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

      # CreateApplicationProxy请求参数结构体
      class CreateApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param ProxyName: 四层代理名称
        # @type ProxyName: String
        # @param PlatType: 调度模式：
        # ip表示Anycast IP
        # domain表示CNAME
        # @type PlatType: String
        # @param SecurityType: 0关闭安全，1开启安全
        # @type SecurityType: Integer
        # @param AccelerateType: 0关闭加速，1开启加速
        # @type AccelerateType: Integer
        # @param ForwardClientIp: 字段已经移至Rule.ForwardClientIp
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经移至Rule.SessionPersist
        # @type SessionPersist: Boolean
        # @param Rule: 规则详细信息
        # @type Rule: Array
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # @type ProxyType: String

        attr_accessor :ZoneId, :ZoneName, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :SessionPersistTime, :ProxyType
        
        def initialize(zoneid=nil, zonename=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, sessionpersisttime=nil, proxytype=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @Rule = rule
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
        end
      end

      # CreateApplicationProxy返回参数结构体
      class CreateApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 新增的四层代理应用ID
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :RequestId
        
        def initialize(proxyid=nil, requestid=nil)
          @ProxyId = proxyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateApplicationProxyRule请求参数结构体
      class CreateApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param Proto: 协议，取值为TCP或者UDP
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 80：80端口
        # 81-90：81至90端口
        # @type Port: Array
        # @param OriginType: 源站类型，取值：
        # custom：手动添加
        # origins：源站组
        # load_balancing：负载均衡
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # 当OriginType=load_balancing时，包含一个元素，表示负载均衡ID
        # @type OriginValue: Array
        # @param ForwardClientIp: 传递客户端IP，当Proto=TCP时，取值：
        # TOA：TOA
        # PPV1: Proxy Protocol传递，协议版本V1
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # 当Proto=UDP时，取值：
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持
        # @type SessionPersist: Boolean

        attr_accessor :ZoneId, :ProxyId, :Proto, :Port, :OriginType, :OriginValue, :ForwardClientIp, :SessionPersist
        
        def initialize(zoneid=nil, proxyid=nil, proto=nil, port=nil, origintype=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Proto = params['Proto']
          @Port = params['Port']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
        end
      end

      # CreateApplicationProxyRule返回参数结构体
      class CreateApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateApplicationProxyRules请求参数结构体
      class CreateApplicationProxyRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param Rule: 规则列表
        # @type Rule: Array

        attr_accessor :ZoneId, :ProxyId, :Rule
        
        def initialize(zoneid=nil, proxyid=nil, rule=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Rule = rule
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
        end
      end

      # CreateApplicationProxyRules返回参数结构体
      class CreateApplicationProxyRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 新增的规则ID数组
        # @type RuleId: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDnsRecord请求参数结构体
      class CreateDnsRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Mode: 代理模式，可选值：dns_only, cdn_only, secure_cdn
        # @type Mode: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer

        attr_accessor :ZoneId, :Type, :Name, :Content, :Mode, :Ttl, :Priority
        
        def initialize(zoneid=nil, type=nil, name=nil, content=nil, mode=nil, ttl=nil, priority=nil)
          @ZoneId = zoneid
          @Type = type
          @Name = name
          @Content = content
          @Mode = mode
          @Ttl = ttl
          @Priority = priority
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Mode = params['Mode']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
        end
      end

      # CreateDnsRecord返回参数结构体
      class CreateDnsRecordResponse < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名称
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Mode: 代理模式
        # @type Mode: String
        # @param Status: 解析状态
        # active: 生效
        # pending: 不生效
        # @type Status: String
        # @param Locked: 已锁定
        # @type Locked: Boolean
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Type, :Name, :Content, :Ttl, :Priority, :Mode, :Status, :Locked, :CreatedOn, :ModifiedOn, :ZoneId, :ZoneName, :Cname, :RequestId
        
        def initialize(id=nil, type=nil, name=nil, content=nil, ttl=nil, priority=nil, mode=nil, status=nil, locked=nil, createdon=nil, modifiedon=nil, zoneid=nil, zonename=nil, cname=nil, requestid=nil)
          @Id = id
          @Type = type
          @Name = name
          @Content = content
          @Ttl = ttl
          @Priority = priority
          @Mode = mode
          @Status = status
          @Locked = locked
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @ZoneId = zoneid
          @ZoneName = zonename
          @Cname = cname
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @Mode = params['Mode']
          @Status = params['Status']
          @Locked = params['Locked']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Cname = params['Cname']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancing请求参数结构体
      class CreateLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Host: 子域名，填写@表示根域
        # @type Host: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer

        attr_accessor :ZoneId, :Host, :Type, :OriginId, :TTL
        
        def initialize(zoneid=nil, host=nil, type=nil, originid=nil, ttl=nil)
          @ZoneId = zoneid
          @Host = host
          @Type = type
          @OriginId = originid
          @TTL = ttl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @Type = params['Type']
          @OriginId = params['OriginId']
          @TTL = params['TTL']
        end
      end

      # CreateLoadBalancing返回参数结构体
      class CreateLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrefetchTask请求参数结构体
      class CreatePrefetchTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Targets: 要预热的资源列表，每个元素格式类似如下:
        # http://www.example.com/example.txt
        # @type Targets: Array
        # @param EncodeUrl: 是否对url进行encode
        # 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        # @type EncodeUrl: Boolean
        # @param Headers: 附带的http头部信息
        # @type Headers: Array

        attr_accessor :ZoneId, :Targets, :EncodeUrl, :Headers
        
        def initialize(zoneid=nil, targets=nil, encodeurl=nil, headers=nil)
          @ZoneId = zoneid
          @Targets = targets
          @EncodeUrl = encodeurl
          @Headers = headers
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              header_tmp = Header.new
              header_tmp.deserialize(i)
              @Headers << header_tmp
            end
          end
        end
      end

      # CreatePrefetchTask返回参数结构体
      class CreatePrefetchTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param FailedList: 失败的任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :FailedList, :RequestId
        
        def initialize(jobid=nil, failedlist=nil, requestid=nil)
          @JobId = jobid
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              failreason_tmp = FailReason.new
              failreason_tmp.deserialize(i)
              @FailedList << failreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePurgeTask请求参数结构体
      class CreatePurgeTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Type: 类型，当前支持的类型：
        # - purge_url：URL
        # - purge_prefix：前缀
        # - purge_host：Hostname
        # - purge_all：全部缓存
        # @type Type: String
        # @param Targets: 要刷新的资源列表，每个元素格式依据Type而定
        # 1) Type = purge_host 时
        # 形如：www.example.com 或 foo.bar.example.com
        # 2) Type = purge_prefix 时
        # 形如：http://www.example.com/example
        # 3) Type = purge_url 时
        # 形如：https://www.example.com/example.jpg
        # 4）Type = purge_all 时
        # Targets可为空，不需要填写
        # @type Targets: Array
        # @param EncodeUrl: 若有编码转换，仅清除编码转换后匹配的资源
        # 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        # @type EncodeUrl: Boolean

        attr_accessor :ZoneId, :Type, :Targets, :EncodeUrl
        
        def initialize(zoneid=nil, type=nil, targets=nil, encodeurl=nil)
          @ZoneId = zoneid
          @Type = type
          @Targets = targets
          @EncodeUrl = encodeurl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
        end
      end

      # CreatePurgeTask返回参数结构体
      class CreatePurgeTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param FailedList: 失败的任务列表及原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :FailedList, :RequestId
        
        def initialize(jobid=nil, failedlist=nil, requestid=nil)
          @JobId = jobid
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              failreason_tmp = FailReason.new
              failreason_tmp.deserialize(i)
              @FailedList << failreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateZone请求参数结构体
      class CreateZoneRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名字
        # @type Name: String
        # @param Type: 接入方式，默认full
        # - full NS接入
        # - partial CNAME接入
        # @type Type: String
        # @param JumpStart: 是否跳过站点历史解析记录扫描
        # @type JumpStart: Boolean

        attr_accessor :Name, :Type, :JumpStart
        
        def initialize(name=nil, type=nil, jumpstart=nil)
          @Name = name
          @Type = type
          @JumpStart = jumpstart
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @JumpStart = params['JumpStart']
        end
      end

      # CreateZone返回参数结构体
      class CreateZoneResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Type: 站点接入方式
        # @type Type: String
        # @param Status: 站点状态
        # - pending 未切换NS
        # - active NS 已切换到分配的 NS
        # - moved NS 从腾讯云切走
        # @type Status: String
        # @param OriginalNameServers: 当前使用的 NS 列表
        # @type OriginalNameServers: Array
        # @param NameServers: 给用户分配的 NS 列表
        # @type NameServers: Array
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 站点更新时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Type, :Status, :OriginalNameServers, :NameServers, :CreatedOn, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, type=nil, status=nil, originalnameservers=nil, nameservers=nil, createdon=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Type = type
          @Status = status
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # 统计曲线数据项
      class DataItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Value: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Integer

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

      # https 服务端证书配置
      class DefaultServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID, 默认证书ID, 或在 SSL 证书管理进行证书托管时自动生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Alias: 证书备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Type: 证书类型:
        # default: 默认证书
        # upload:用户上传
        # managed:腾讯云托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpireTime: 证书过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param EffectiveTime: 证书生效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectiveTime: String
        # @param CommonName: 证书公用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonName: String
        # @param SubjectAltName: 证书SAN域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param Status: 证书状态:
        # applying: 证书申请中
        # failed: 证书(申请)失败
        # processing: 证书部署中
        # deployed: 证书已部署
        # disabled: 证书被禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Message: Status为失败时,此字段返回失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :EffectiveTime, :CommonName, :SubjectAltName, :Status, :Message
        
        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, effectivetime=nil, commonname=nil, subjectaltname=nil, status=nil, message=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @EffectiveTime = effectivetime
          @CommonName = commonname
          @SubjectAltName = subjectaltname
          @Status = status
          @Message = message
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Alias = params['Alias']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @EffectiveTime = params['EffectiveTime']
          @CommonName = params['CommonName']
          @SubjectAltName = params['SubjectAltName']
          @Status = params['Status']
          @Message = params['Message']
        end
      end

      # DeleteApplicationProxy请求参数结构体
      class DeleteApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String

        attr_accessor :ZoneId, :ProxyId
        
        def initialize(zoneid=nil, proxyid=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
        end
      end

      # DeleteApplicationProxy返回参数结构体
      class DeleteApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :RequestId
        
        def initialize(proxyid=nil, requestid=nil)
          @ProxyId = proxyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteApplicationProxyRule请求参数结构体
      class DeleteApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param RuleId: 规则ID
        # @type RuleId: String

        attr_accessor :ZoneId, :ProxyId, :RuleId
        
        def initialize(zoneid=nil, proxyid=nil, ruleid=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
        end
      end

      # DeleteApplicationProxyRule返回参数结构体
      class DeleteApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDnsRecords请求参数结构体
      class DeleteDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Ids: 记录 ID
        # @type Ids: Array

        attr_accessor :ZoneId, :Ids
        
        def initialize(zoneid=nil, ids=nil)
          @ZoneId = zoneid
          @Ids = ids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Ids = params['Ids']
        end
      end

      # DeleteDnsRecords返回参数结构体
      class DeleteDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Ids: 记录 ID
        # @type Ids: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ids, :RequestId
        
        def initialize(ids=nil, requestid=nil)
          @Ids = ids
          @RequestId = requestid
        end

        def deserialize(params)
          @Ids = params['Ids']
          @RequestId = params['RequestId']
        end
      end

      # DeleteLoadBalancing请求参数结构体
      class DeleteLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String

        attr_accessor :ZoneId, :LoadBalancingId
        
        def initialize(zoneid=nil, loadbalancingid=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
        end
      end

      # DeleteLoadBalancing返回参数结构体
      class DeleteLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteZone请求参数结构体
      class DeleteZoneRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteZone返回参数结构体
      class DeleteZoneResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId
        
        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationProxyDetail请求参数结构体
      class DescribeApplicationProxyDetailRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 实例ID
        # @type ProxyId: String

        attr_accessor :ZoneId, :ProxyId
        
        def initialize(zoneid=nil, proxyid=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
        end
      end

      # DescribeApplicationProxyDetail返回参数结构体
      class DescribeApplicationProxyDetailResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 实例ID
        # @type ProxyId: String
        # @param ProxyName: 实例名称
        # @type ProxyName: String
        # @param PlatType: 调度模式：
        # ip表示Anycast IP
        # domain表示CNAME
        # @type PlatType: String
        # @param SecurityType: 0关闭安全，1开启安全
        # @type SecurityType: Integer
        # @param AccelerateType: 0关闭加速，1开启加速
        # @type AccelerateType: Integer
        # @param ForwardClientIp: 字段已经移至Rule.ForwardClientIp
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经移至Rule.SessionPersist
        # @type SessionPersist: Boolean
        # @param Rule: 规则列表
        # @type Rule: Array
        # @param Status: 状态：
        # online：启用
        # offline：停用
        # progress：部署中
        # @type Status: String
        # @param ScheduleValue: 调度信息
        # @type ScheduleValue: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param SessionPersistTime: 会话保持时间
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # @type ProxyType: String
        # @param HostId: 七层实例ID
        # @type HostId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :Status, :ScheduleValue, :UpdateTime, :ZoneId, :ZoneName, :SessionPersistTime, :ProxyType, :HostId, :RequestId
        
        def initialize(proxyid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, status=nil, schedulevalue=nil, updatetime=nil, zoneid=nil, zonename=nil, sessionpersisttime=nil, proxytype=nil, hostid=nil, requestid=nil)
          @ProxyId = proxyid
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @Rule = rule
          @Status = status
          @ScheduleValue = schedulevalue
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @HostId = hostid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
          @Status = params['Status']
          @ScheduleValue = params['ScheduleValue']
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
          @HostId = params['HostId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationProxy请求参数结构体
      class DescribeApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Offset: 分页参数Offset
        # @type Offset: Integer
        # @param Limit: 分页参数Limit
        # @type Limit: Integer

        attr_accessor :ZoneId, :Offset, :Limit
        
        def initialize(zoneid=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeApplicationProxy返回参数结构体
      class DescribeApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Quota: 当ZoneId不为空时，表示当前站点允许创建的实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quota: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :Quota, :RequestId
        
        def initialize(data=nil, totalcount=nil, quota=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @Quota = quota
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              applicationproxy_tmp = ApplicationProxy.new
              applicationproxy_tmp.deserialize(i)
              @Data << applicationproxy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Quota = params['Quota']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCnameStatus请求参数结构体
      class DescribeCnameStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Names: 域名列表
        # @type Names: Array

        attr_accessor :ZoneId, :Names
        
        def initialize(zoneid=nil, names=nil)
          @ZoneId = zoneid
          @Names = names
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Names = params['Names']
        end
      end

      # DescribeCnameStatus返回参数结构体
      class DescribeCnameStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态列表
        # @type Status: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Status'].nil?
            @Status = []
            params['Status'].each do |i|
              cnamestatus_tmp = CnameStatus.new
              cnamestatus_tmp.deserialize(i)
              @Status << cnamestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultCertificates请求参数结构体
      class DescribeDefaultCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeDefaultCertificates返回参数结构体
      class DescribeDefaultCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 证书总数
        # @type TotalCount: Integer
        # @param CertInfo: 默认证书列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CertInfo, :RequestId
        
        def initialize(totalcount=nil, certinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @CertInfo = certinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              defaultservercertinfo_tmp = DefaultServerCertInfo.new
              defaultservercertinfo_tmp.deserialize(i)
              @CertInfo << defaultservercertinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnsData请求参数结构体
      class DescribeDnsDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param Interval: 时间粒度，默认为1分钟粒度，服务端根据时间范围自适应。
        # 支持指定以下几种粒度：
        # min：1分钟粒度
        # 5min：5分钟粒度
        # hour：1小时粒度
        # day：天粒度
        # @type Interval: String

        attr_accessor :StartTime, :EndTime, :Filters, :Interval
        
        def initialize(starttime=nil, endtime=nil, filters=nil, interval=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @Interval = interval
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dnsdatafilter_tmp = DnsDataFilter.new
              dnsdatafilter_tmp.deserialize(i)
              @Filters << dnsdatafilter_tmp
            end
          end
          @Interval = params['Interval']
        end
      end

      # DescribeDnsData返回参数结构体
      class DescribeDnsDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计曲线数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Interval: 时间粒度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Interval, :RequestId
        
        def initialize(data=nil, interval=nil, requestid=nil)
          @Data = data
          @Interval = interval
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              dataitem_tmp = DataItem.new
              dataitem_tmp.deserialize(i)
              @Data << dataitem_tmp
            end
          end
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnsRecords请求参数结构体
      class DescribeDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件过滤器
        # @type Filters: Array
        # @param Order: 排序
        # @type Order: String
        # @param Direction: 可选值 asc, desc
        # @type Direction: String
        # @param Match: 可选值 all, any
        # @type Match: String
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param ZoneId: 站点 ID
        # @type ZoneId: String

        attr_accessor :Filters, :Order, :Direction, :Match, :Limit, :Offset, :ZoneId
        
        def initialize(filters=nil, order=nil, direction=nil, match=nil, limit=nil, offset=nil, zoneid=nil)
          @Filters = filters
          @Order = order
          @Direction = direction
          @Match = match
          @Limit = limit
          @Offset = offset
          @ZoneId = zoneid
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dnsrecordfilter_tmp = DnsRecordFilter.new
              dnsrecordfilter_tmp.deserialize(i)
              @Filters << dnsrecordfilter_tmp
            end
          end
          @Order = params['Order']
          @Direction = params['Direction']
          @Match = params['Match']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeDnsRecords返回参数结构体
      class DescribeDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，用于分页查询
        # @type TotalCount: Integer
        # @param Records: DNS 记录列表
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Records, :RequestId
        
        def initialize(totalcount=nil, records=nil, requestid=nil)
          @TotalCount = totalcount
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              dnsrecord_tmp = DnsRecord.new
              dnsrecord_tmp.deserialize(i)
              @Records << dnsrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnssec请求参数结构体
      class DescribeDnssecRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeDnssec返回参数结构体
      class DescribeDnssecResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: DNSSEC 状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String
        # @param Dnssec: DNSSEC 相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dnssec: :class:`Tencentcloud::Teo.v20220106.models.DnssecInfo`
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Status, :Dnssec, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, status=nil, dnssec=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Status = status
          @Dnssec = dnssec
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          unless params['Dnssec'].nil?
            @Dnssec = DnssecInfo.new
            @Dnssec.deserialize(params['Dnssec'])
          end
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostsCertificate请求参数结构体
      class DescribeHostsCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器
        # @type Filters: Array
        # @param Sort: 排序方式
        # @type Sort: :class:`Tencentcloud::Teo.v20220106.models.CertSort`

        attr_accessor :ZoneId, :Offset, :Limit, :Filters, :Sort
        
        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil, sort=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Sort = sort
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              certfilter_tmp = CertFilter.new
              certfilter_tmp.deserialize(i)
              @Filters << certfilter_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = CertSort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribeHostsCertificate返回参数结构体
      class DescribeHostsCertificateResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，用于分页查询
        # @type TotalCount: Integer
        # @param Hosts: 域名证书配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hosts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Hosts, :RequestId
        
        def initialize(totalcount=nil, hosts=nil, requestid=nil)
          @TotalCount = totalcount
          @Hosts = hosts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Hosts'].nil?
            @Hosts = []
            params['Hosts'].each do |i|
              hostcertsetting_tmp = HostCertSetting.new
              hostcertsetting_tmp.deserialize(i)
              @Hosts << hostcertsetting_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostsSetting请求参数结构体
      class DescribeHostsSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Hosts: 指定域名查询
        # @type Hosts: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Hosts
        
        def initialize(zoneid=nil, offset=nil, limit=nil, hosts=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Hosts = hosts
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Hosts = params['Hosts']
        end
      end

      # DescribeHostsSetting返回参数结构体
      class DescribeHostsSettingResponse < TencentCloud::Common::AbstractModel
        # @param Hosts: 域名列表
        # @type Hosts: Array
        # @param TotalNumber: 域名数量
        # @type TotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hosts, :TotalNumber, :RequestId
        
        def initialize(hosts=nil, totalnumber=nil, requestid=nil)
          @Hosts = hosts
          @TotalNumber = totalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Hosts'].nil?
            @Hosts = []
            params['Hosts'].each do |i|
              detailhost_tmp = DetailHost.new
              detailhost_tmp.deserialize(i)
              @Hosts << detailhost_tmp
            end
          end
          @TotalNumber = params['TotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdentification请求参数结构体
      class DescribeIdentificationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeIdentification返回参数结构体
      class DescribeIdentificationResponse < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: 验证状态
        # - pending 验证中
        # - finished 验证完成
        # @type Status: String
        # @param Subdomain: 子域
        # @type Subdomain: String
        # @param RecordType: 记录类型
        # @type RecordType: String
        # @param RecordValue: 记录值
        # @type RecordValue: String
        # @param OriginalNameServers: 域名当前的 NS 记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalNameServers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Status, :Subdomain, :RecordType, :RecordValue, :OriginalNameServers, :RequestId
        
        def initialize(name=nil, status=nil, subdomain=nil, recordtype=nil, recordvalue=nil, originalnameservers=nil, requestid=nil)
          @Name = name
          @Status = status
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
          @OriginalNameServers = originalnameservers
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
          @OriginalNameServers = params['OriginalNameServers']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancingDetail请求参数结构体
      class DescribeLoadBalancingDetailRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String

        attr_accessor :ZoneId, :LoadBalancingId
        
        def initialize(zoneid=nil, loadbalancingid=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
        end
      end

      # DescribeLoadBalancingDetail返回参数结构体
      class DescribeLoadBalancingDetailResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Host: 子域名，填写@表示根域
        # @type Host: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param Origin: 使用的源站信息
        # @type Origin: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: String
        # @param Cname: 调度域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :ZoneId, :Host, :Type, :TTL, :OriginId, :Origin, :UpdateTime, :Status, :Cname, :RequestId
        
        def initialize(loadbalancingid=nil, zoneid=nil, host=nil, type=nil, ttl=nil, originid=nil, origin=nil, updatetime=nil, status=nil, cname=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @ZoneId = zoneid
          @Host = host
          @Type = type
          @TTL = ttl
          @OriginId = originid
          @Origin = origin
          @UpdateTime = updatetime
          @Status = status
          @Cname = cname
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @Type = params['Type']
          @TTL = params['TTL']
          @OriginId = params['OriginId']
          unless params['Origin'].nil?
            @Origin = []
            params['Origin'].each do |i|
              origingroup_tmp = OriginGroup.new
              origingroup_tmp.deserialize(i)
              @Origin << origingroup_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Cname = params['Cname']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancing请求参数结构体
      class DescribeLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Offset: 分页参数Offset
        # @type Offset: Integer
        # @param Limit: 分页参数Limit
        # @type Limit: Integer
        # @param Host: 过滤参数Host
        # @type Host: String
        # @param Fuzzy: 过滤参数Host是否支持模糊匹配
        # @type Fuzzy: Boolean

        attr_accessor :ZoneId, :Offset, :Limit, :Host, :Fuzzy
        
        def initialize(zoneid=nil, offset=nil, limit=nil, host=nil, fuzzy=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Host = host
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Host = params['Host']
          @Fuzzy = params['Fuzzy']
        end
      end

      # DescribeLoadBalancing返回参数结构体
      class DescribeLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param Data: 负载均衡信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              loadbalancing_tmp = LoadBalancing.new
              loadbalancing_tmp.deserialize(i)
              @Data << loadbalancing_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrefetchTasks请求参数结构体
      class DescribePrefetchTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大返回的结果条数
        # @type Limit: Integer
        # @param Statuses: 查询的状态
        # 允许的值为：processing、success、failed、timeout、invalid
        # @type Statuses: Array
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param Domains: 查询的域名列表
        # @type Domains: Array
        # @param Target: 查询的资源
        # @type Target: String

        attr_accessor :JobId, :StartTime, :EndTime, :Offset, :Limit, :Statuses, :ZoneId, :Domains, :Target
        
        def initialize(jobid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, statuses=nil, zoneid=nil, domains=nil, target=nil)
          @JobId = jobid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Statuses = statuses
          @ZoneId = zoneid
          @Domains = domains
          @Target = target
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Statuses = params['Statuses']
          @ZoneId = params['ZoneId']
          @Domains = params['Domains']
          @Target = params['Target']
        end
      end

      # DescribePrefetchTasks返回参数结构体
      class DescribePrefetchTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId
        
        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePurgeTasks请求参数结构体
      class DescribePurgeTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param Type: 类型
        # @type Type: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大返回的结果条数
        # @type Limit: Integer
        # @param Statuses: 查询的状态
        # 允许的值为：processing、success、failed、timeout、invalid
        # @type Statuses: Array
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param Domains: 查询的域名列表
        # @type Domains: Array
        # @param Target: 查询内容
        # @type Target: String

        attr_accessor :JobId, :Type, :StartTime, :EndTime, :Offset, :Limit, :Statuses, :ZoneId, :Domains, :Target
        
        def initialize(jobid=nil, type=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, statuses=nil, zoneid=nil, domains=nil, target=nil)
          @JobId = jobid
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Statuses = statuses
          @ZoneId = zoneid
          @Domains = domains
          @Target = target
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Statuses = params['Statuses']
          @ZoneId = params['ZoneId']
          @Domains = params['Domains']
          @Target = params['Target']
        end
      end

      # DescribePurgeTasks返回参数结构体
      class DescribePurgeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId
        
        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneDetails请求参数结构体
      class DescribeZoneDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeZoneDetails返回参数结构体
      class DescribeZoneDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param OriginalNameServers: 用户当前使用的 NS 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配给用户的 NS 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameServers: Array
        # @param Status: 站点状态
        # - active：NS 已切换
        # - pending：NS 未切换
        # - moved：NS 已切走
        # - deactivated：被封禁
        # @type Status: String
        # @param Type: 站点接入方式
        # - full：NS 接入
        # - partial：CNAME 接入
        # @type Type: String
        # @param Paused: 站点是否关闭
        # @type Paused: Boolean
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 站点修改时间
        # @type ModifiedOn: String
        # @param VanityNameServers: 用户自定义 NS 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220106.models.VanityNameServers`
        # @param VanityNameServersIps: 用户自定义 NS IP 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServersIps: Array
        # @param CnameSpeedUp: 是否开启 CNAME 加速
        # - enabled：开启
        # - disabled：关闭
        # @type CnameSpeedUp: String
        # @param CnameStatus: cname切换验证状态
        # - finished 切换完成
        # - pending 切换验证中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CreatedOn, :ModifiedOn, :VanityNameServers, :VanityNameServersIps, :CnameSpeedUp, :CnameStatus, :RequestId
        
        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, createdon=nil, modifiedon=nil, vanitynameservers=nil, vanitynameserversips=nil, cnamespeedup=nil, cnamestatus=nil, requestid=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @VanityNameServers = vanitynameservers
          @VanityNameServersIps = vanitynameserversips
          @CnameSpeedUp = cnamespeedup
          @CnameStatus = cnamestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @Status = params['Status']
          @Type = params['Type']
          @Paused = params['Paused']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          unless params['VanityNameServers'].nil?
            @VanityNameServers = VanityNameServers.new
            @VanityNameServers.deserialize(params['VanityNameServers'])
          end
          unless params['VanityNameServersIps'].nil?
            @VanityNameServersIps = []
            params['VanityNameServersIps'].each do |i|
              vanitynameserversips_tmp = VanityNameServersIps.new
              vanitynameserversips_tmp.deserialize(i)
              @VanityNameServersIps << vanitynameserversips_tmp
            end
          end
          @CnameSpeedUp = params['CnameSpeedUp']
          @CnameStatus = params['CnameStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneSetting请求参数结构体
      class DescribeZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeZoneSetting返回参数结构体
      class DescribeZoneSettingResponse < TencentCloud::Common::AbstractModel
        # @param Cache: 缓存过期时间配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220106.models.CacheKey`
        # @param MaxAge: 浏览器缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220106.models.MaxAge`
        # @param OfflineCache: 离线缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220106.models.OfflineCache`
        # @param Quic: Quic访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quic: :class:`Tencentcloud::Teo.v20220106.models.Quic`
        # @param PostMaxSize: POST请求传输配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220106.models.PostMaxSize`
        # @param Compression: 智能压缩配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Teo.v20220106.models.Compression`
        # @param UpstreamHttp2: http2回源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220106.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制https跳转配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220106.models.ForceRedirect`
        # @param Https: Https 加速配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Teo.v20220106.models.Https`
        # @param Origin: 源站配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Teo.v20220106.models.Origin`
        # @param SmartRouting: 动态加速配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220106.models.SmartRouting`
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Zone: 站点域名
        # @type Zone: String
        # @param WebSocket: WebSocket配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220106.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220106.models.ClientIp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cache, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :ZoneId, :Zone, :WebSocket, :ClientIpHeader, :RequestId
        
        def initialize(cache=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, zoneid=nil, zone=nil, websocket=nil, clientipheader=nil, requestid=nil)
          @Cache = cache
          @CacheKey = cachekey
          @MaxAge = maxage
          @OfflineCache = offlinecache
          @Quic = quic
          @PostMaxSize = postmaxsize
          @Compression = compression
          @UpstreamHttp2 = upstreamhttp2
          @ForceRedirect = forceredirect
          @Https = https
          @Origin = origin
          @SmartRouting = smartrouting
          @ZoneId = zoneid
          @Zone = zone
          @WebSocket = websocket
          @ClientIpHeader = clientipheader
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Cache'].nil?
            @Cache = CacheConfig.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['PostMaxSize'].nil?
            @PostMaxSize = PostMaxSize.new
            @PostMaxSize.deserialize(params['PostMaxSize'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['UpstreamHttp2'].nil?
            @UpstreamHttp2 = UpstreamHttp2.new
            @UpstreamHttp2.deserialize(params['UpstreamHttp2'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['SmartRouting'].nil?
            @SmartRouting = SmartRouting.new
            @SmartRouting.deserialize(params['SmartRouting'])
          end
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
          unless params['ClientIpHeader'].nil?
            @ClientIpHeader = ClientIp.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页参数，页偏移
        # @type Offset: Integer
        # @param Limit: 分页参数，每页返回的站点个数
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
              zonefilter_tmp = ZoneFilter.new
              zonefilter_tmp.deserialize(i)
              @Filters << zonefilter_tmp
            end
          end
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的站点数
        # @type TotalCount: Integer
        # @param Zones: 站点详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Zones, :RequestId
        
        def initialize(totalcount=nil, zones=nil, requestid=nil)
          @TotalCount = totalcount
          @Zones = zones
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              zone_tmp = Zone.new
              zone_tmp.deserialize(i)
              @Zones << zone_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 域名配置信息
      class DetailHost < TencentCloud::Common::AbstractModel
        # @param AppId: 腾讯云账号ID
        # @type AppId: Integer
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Status: 加速服务状态
        # process：部署中
        # online：已启动
        # offline：已关闭
        # @type Status: String
        # @param Host: 域名
        # @type Host: String

        attr_accessor :AppId, :ZoneId, :Status, :Host
        
        def initialize(appid=nil, zoneid=nil, status=nil, host=nil)
          @AppId = appid
          @ZoneId = zoneid
          @Status = status
          @Host = host
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ZoneId = params['ZoneId']
          @Status = params['Status']
          @Host = params['Host']
        end
      end

      # Dns数据曲线过滤参数
      class DnsDataFilter < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称，取值范围：
        # zone：站点名
        # host：域名
        # type：dns解析类型
        # code：dns返回状态码
        # area：解析服务器所在区域
        # @type Name: String
        # @param Value: 参数值
        # 当Name=area时，Value取值范围：
        # 亚洲：Asia
        # 欧洲：Europe
        # 非洲：Africa
        # 大洋洲：Oceania
        # 美洲：Americas

        # 当Name=code时，Value取值范围：
        # NoError：成功的响应
        # NXDomain：只在权威域名服务器的响应消息中有效，标示请求中请求的域不存在
        # NotImp：域名服务器不支持请求的类型
        # Refused：域名服务器因为策略的原因拒绝执行请求的操作
        # @type Value: String
        # @param Values: 参数值
        # 当Name=area时，Value取值范围：
        # 亚洲：Asia
        # 欧洲：Europe
        # 非洲：Africa
        # 大洋洲：Oceania
        # 美洲：Americas

        # 当Name=code时，Value取值范围：
        # NoError：成功的响应
        # NXDomain：只在权威域名服务器的响应消息中有效，标示请求中请求的域不存在
        # NotImp：域名服务器不支持请求的类型
        # Refused：域名服务器因为策略的原因拒绝执行请求的操作
        # @type Values: Array

        attr_accessor :Name, :Value, :Values
        
        def initialize(name=nil, value=nil, values=nil)
          @Name = name
          @Value = value
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Values = params['Values']
        end
      end

      # DNS 记录
      class DnsRecord < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 主机记录
        # @type Name: String
        # @param Content: 记录值
        # @type Content: String
        # @param Mode: 代理模式
        # @type Mode: String
        # @param Ttl: TTL 值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param Locked: 域名锁
        # @type Locked: Boolean
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param Status: 解析状态
        # active: 生效
        # pending: 不生效
        # @type Status: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param DomainStatus: 域名是否开启了lb，四层，安全
        # - lb 负载均衡
        # - security 安全
        # - l4 四层
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainStatus: Array

        attr_accessor :Id, :Type, :Name, :Content, :Mode, :Ttl, :Priority, :CreatedOn, :ModifiedOn, :Locked, :ZoneId, :ZoneName, :Status, :Cname, :DomainStatus
        
        def initialize(id=nil, type=nil, name=nil, content=nil, mode=nil, ttl=nil, priority=nil, createdon=nil, modifiedon=nil, locked=nil, zoneid=nil, zonename=nil, status=nil, cname=nil, domainstatus=nil)
          @Id = id
          @Type = type
          @Name = name
          @Content = content
          @Mode = mode
          @Ttl = ttl
          @Priority = priority
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @Locked = locked
          @ZoneId = zoneid
          @ZoneName = zonename
          @Status = status
          @Cname = cname
          @DomainStatus = domainstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Mode = params['Mode']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @Locked = params['Locked']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Status = params['Status']
          @Cname = params['Cname']
          @DomainStatus = params['DomainStatus']
        end
      end

      # DNS 记录查询过滤条件
      class DnsRecordFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # - name: 站点名。
        # - status: 站点状态
        # @type Name: String
        # @param Values: 过滤字段值
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为name。模糊查询时，Values长度最大为1
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Fuzzy
        
        def initialize(name=nil, values=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Fuzzy = params['Fuzzy']
        end
      end

      # DNSSEC 相关信息
      class DnssecInfo < TencentCloud::Common::AbstractModel
        # @param Flags: 标志
        # @type Flags: Integer
        # @param Algorithm: 加密算法
        # @type Algorithm: String
        # @param KeyType: 加密类型
        # @type KeyType: String
        # @param DigestType: 摘要类型
        # @type DigestType: String
        # @param DigestAlgorithm: 摘要算法
        # @type DigestAlgorithm: String
        # @param Digest: 摘要信息
        # @type Digest: String
        # @param DS: DS 记录值
        # @type DS: String
        # @param KeyTag: 密钥标签
        # @type KeyTag: Integer
        # @param PublicKey: 公钥
        # @type PublicKey: String

        attr_accessor :Flags, :Algorithm, :KeyType, :DigestType, :DigestAlgorithm, :Digest, :DS, :KeyTag, :PublicKey
        
        def initialize(flags=nil, algorithm=nil, keytype=nil, digesttype=nil, digestalgorithm=nil, digest=nil, ds=nil, keytag=nil, publickey=nil)
          @Flags = flags
          @Algorithm = algorithm
          @KeyType = keytype
          @DigestType = digesttype
          @DigestAlgorithm = digestalgorithm
          @Digest = digest
          @DS = ds
          @KeyTag = keytag
          @PublicKey = publickey
        end

        def deserialize(params)
          @Flags = params['Flags']
          @Algorithm = params['Algorithm']
          @KeyType = params['KeyType']
          @DigestType = params['DigestType']
          @DigestAlgorithm = params['DigestAlgorithm']
          @Digest = params['Digest']
          @DS = params['DS']
          @KeyTag = params['KeyTag']
          @PublicKey = params['PublicKey']
        end
      end

      # DownloadL7Logs请求参数结构体
      class DownloadL7LogsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间(需严格按照RFC3339标准传参)
        # @type StartTime: String
        # @param EndTime: 结束时间(需严格按照RFC3339标准传参)
        # @type EndTime: String
        # @param PageSize: 每页展示条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param Zones: 站点集合
        # @type Zones: Array
        # @param Domains: 域名集合
        # @type Domains: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :Zones, :Domains
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zones=nil, domains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @Zones = zones
          @Domains = domains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Zones = params['Zones']
          @Domains = params['Domains']
        end
      end

      # DownloadL7Logs返回参数结构体
      class DownloadL7LogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 七层离线日志data
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param PageSize: 页面大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNo: 页号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param Pages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :PageSize, :PageNo, :Pages, :TotalSize, :RequestId
        
        def initialize(data=nil, pagesize=nil, pageno=nil, pages=nil, totalsize=nil, requestid=nil)
          @Data = data
          @PageSize = pagesize
          @PageNo = pageno
          @Pages = pages
          @TotalSize = totalsize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              l7offlinelog_tmp = L7OfflineLog.new
              l7offlinelog_tmp.deserialize(i)
              @Data << l7offlinelog_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
          @RequestId = params['RequestId']
        end
      end

      # 失败原因
      class FailReason < TencentCloud::Common::AbstractModel
        # @param Reason: 失败原因
        # @type Reason: String
        # @param Targets: 处理失败的资源列表。
        # 该列表元素来源于输入参数中的Targets，因此格式和入参中的Targets保持一致
        # @type Targets: Array

        attr_accessor :Reason, :Targets
        
        def initialize(reason=nil, targets=nil)
          @Reason = reason
          @Targets = targets
        end

        def deserialize(params)
          @Reason = params['Reason']
          @Targets = params['Targets']
        end
      end

      # 访问协议强制https跳转配置
      class ForceRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: 访问强制跳转配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param RedirectStatusCode: 重定向状态码
        # 301
        # 302
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectStatusCode: Integer

        attr_accessor :Switch, :RedirectStatusCode
        
        def initialize(switch=nil, redirectstatuscode=nil)
          @Switch = switch
          @RedirectStatusCode = redirectstatuscode
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RedirectStatusCode = params['RedirectStatusCode']
        end
      end

      # 刷新预热附带的头部信息
      class Header < TencentCloud::Common::AbstractModel
        # @param Name: HTTP头部
        # @type Name: String
        # @param Value: HTTP头部值
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

      # 域名证书配置
      class HostCertSetting < TencentCloud::Common::AbstractModel
        # @param Host: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param CertInfo: 服务端证书配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: Array

        attr_accessor :Host, :CertInfo
        
        def initialize(host=nil, certinfo=nil)
          @Host = host
          @CertInfo = certinfo
        end

        def deserialize(params)
          @Host = params['Host']
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @CertInfo << servercertinfo_tmp
            end
          end
        end
      end

      # Hsts配置
      class Hsts < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启，on或off。
        # @type Switch: String
        # @param MaxAge: MaxAge数值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: Integer
        # @param IncludeSubDomains: 是否包含子域名，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeSubDomains: String
        # @param Preload: 是否预加载，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Preload: String

        attr_accessor :Switch, :MaxAge, :IncludeSubDomains, :Preload
        
        def initialize(switch=nil, maxage=nil, includesubdomains=nil, preload=nil)
          @Switch = switch
          @MaxAge = maxage
          @IncludeSubDomains = includesubdomains
          @Preload = preload
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxAge = params['MaxAge']
          @IncludeSubDomains = params['IncludeSubDomains']
          @Preload = params['Preload']
        end
      end

      # 域名 https 加速配置，默认为关闭状态
      class Https < TencentCloud::Common::AbstractModel
        # @param Http2: http2 配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Http2: String
        # @param OcspStapling: OCSP 配置开关
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcspStapling: String
        # @param TlsVersion: Tls版本设置，支持设置 TLSv1, TLSV1.1, TLSV1.2, TLSv1.3，修改时必须开启连续的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TlsVersion: Array
        # @param Hsts: HSTS 配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hsts: :class:`Tencentcloud::Teo.v20220106.models.Hsts`

        attr_accessor :Http2, :OcspStapling, :TlsVersion, :Hsts
        
        def initialize(http2=nil, ocspstapling=nil, tlsversion=nil, hsts=nil)
          @Http2 = http2
          @OcspStapling = ocspstapling
          @TlsVersion = tlsversion
          @Hsts = hsts
        end

        def deserialize(params)
          @Http2 = params['Http2']
          @OcspStapling = params['OcspStapling']
          @TlsVersion = params['TlsVersion']
          unless params['Hsts'].nil?
            @Hsts = Hsts.new
            @Hsts.deserialize(params['Hsts'])
          end
        end
      end

      # IdentifyZone请求参数结构体
      class IdentifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # IdentifyZone返回参数结构体
      class IdentifyZoneResponse < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param Subdomain: 子域
        # @type Subdomain: String
        # @param RecordType: 记录类型
        # @type RecordType: String
        # @param RecordValue: 记录值
        # @type RecordValue: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Subdomain, :RecordType, :RecordValue, :RequestId
        
        def initialize(name=nil, subdomain=nil, recordtype=nil, recordvalue=nil, requestid=nil)
          @Name = name
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
          @RequestId = params['RequestId']
        end
      end

      # ImportDnsRecords请求参数结构体
      class ImportDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param File: 文件内容
        # @type File: String

        attr_accessor :ZoneId, :File
        
        def initialize(zoneid=nil, file=nil)
          @ZoneId = zoneid
          @File = file
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @File = params['File']
        end
      end

      # ImportDnsRecords返回参数结构体
      class ImportDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Ids: 记录 ID
        # @type Ids: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ids, :RequestId
        
        def initialize(ids=nil, requestid=nil)
          @Ids = ids
          @RequestId = requestid
        end

        def deserialize(params)
          @Ids = params['Ids']
          @RequestId = params['RequestId']
        end
      end

      # 离线日志详细信息
      class L7OfflineLog < TencentCloud::Common::AbstractModel
        # @param LogTime: 日志打包开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTime: Integer
        # @param Domain: 站点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Size: 原始大小 单位byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Url: 下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param LogPacketName: 日志数据包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogPacketName: String

        attr_accessor :LogTime, :Domain, :Size, :Url, :LogPacketName
        
        def initialize(logtime=nil, domain=nil, size=nil, url=nil, logpacketname=nil)
          @LogTime = logtime
          @Domain = domain
          @Size = size
          @Url = url
          @LogPacketName = logpacketname
        end

        def deserialize(params)
          @LogTime = params['LogTime']
          @Domain = params['Domain']
          @Size = params['Size']
          @Url = params['Url']
          @LogPacketName = params['LogPacketName']
        end
      end

      # 负载均衡信息
      class LoadBalancing < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Host: 子域名，填写@表示根域
        # @type Host: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param Origin: 使用的源站信息
        # @type Origin: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: String
        # @param Cname: 调度域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String

        attr_accessor :LoadBalancingId, :ZoneId, :Host, :Type, :TTL, :OriginId, :Origin, :UpdateTime, :Status, :Cname
        
        def initialize(loadbalancingid=nil, zoneid=nil, host=nil, type=nil, ttl=nil, originid=nil, origin=nil, updatetime=nil, status=nil, cname=nil)
          @LoadBalancingId = loadbalancingid
          @ZoneId = zoneid
          @Host = host
          @Type = type
          @TTL = ttl
          @OriginId = originid
          @Origin = origin
          @UpdateTime = updatetime
          @Status = status
          @Cname = cname
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @Type = params['Type']
          @TTL = params['TTL']
          @OriginId = params['OriginId']
          unless params['Origin'].nil?
            @Origin = []
            params['Origin'].each do |i|
              origingroup_tmp = OriginGroup.new
              origingroup_tmp.deserialize(i)
              @Origin << origingroup_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Cname = params['Cname']
        end
      end

      # 浏览器缓存规则配置，用于设置 MaxAge 默认值，默认为关闭状态
      class MaxAge < TencentCloud::Common::AbstractModel
        # @param MaxAgeTime: MaxAge 时间设置，单位秒，最大365天
        # 注意：时间为0，即不缓存。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAgeTime: Integer
        # @param FollowOrigin: 是否遵循源站，on或off，开启时忽略时间设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: String

        attr_accessor :MaxAgeTime, :FollowOrigin
        
        def initialize(maxagetime=nil, followorigin=nil)
          @MaxAgeTime = maxagetime
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          @MaxAgeTime = params['MaxAgeTime']
          @FollowOrigin = params['FollowOrigin']
        end
      end

      # ModifyApplicationProxy请求参数结构体
      class ModifyApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 四层代理ID
        # @type ProxyId: String
        # @param ProxyName: 四层代理名称
        # @type ProxyName: String
        # @param ForwardClientIp: 参数已经废弃
        # @type ForwardClientIp: String
        # @param SessionPersist: 参数已经废弃
        # @type SessionPersist: Boolean
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # @type ProxyType: String

        attr_accessor :ZoneId, :ProxyId, :ProxyName, :ForwardClientIp, :SessionPersist, :SessionPersistTime, :ProxyType
        
        def initialize(zoneid=nil, proxyid=nil, proxyname=nil, forwardclientip=nil, sessionpersist=nil, sessionpersisttime=nil, proxytype=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @ProxyName = proxyname
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
        end
      end

      # ModifyApplicationProxy返回参数结构体
      class ModifyApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 四层代理ID
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :RequestId
        
        def initialize(proxyid=nil, requestid=nil)
          @ProxyId = proxyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyApplicationProxyRule请求参数结构体
      class ModifyApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Proto: 协议，取值为TCP或者UDP
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 80：80端口
        # 81-90：81至90端口
        # @type Port: Array
        # @param OriginType: 源站类型，取值：
        # custom：手动添加
        # origins：源站组
        # load_balancing：负载均衡
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # 当OriginType=load_balancing时，包含一个元素，表示负载均衡ID
        # @type OriginValue: Array
        # @param ForwardClientIp: 传递客户端IP，当Proto=TCP时，取值：
        # TOA：TOA
        # PPV1: Proxy Protocol传递，协议版本V1
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # 当Proto=UDP时，取值：
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持
        # @type SessionPersist: Boolean

        attr_accessor :ZoneId, :ProxyId, :RuleId, :Proto, :Port, :OriginType, :OriginValue, :ForwardClientIp, :SessionPersist
        
        def initialize(zoneid=nil, proxyid=nil, ruleid=nil, proto=nil, port=nil, origintype=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
          @Proto = params['Proto']
          @Port = params['Port']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
        end
      end

      # ModifyApplicationProxyRule返回参数结构体
      class ModifyApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyApplicationProxyRuleStatus请求参数结构体
      class ModifyApplicationProxyRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 四层代理ID
        # @type ProxyId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Status: 状态
        # offline: 停用
        # online: 启用
        # @type Status: String

        attr_accessor :ZoneId, :ProxyId, :RuleId, :Status
        
        def initialize(zoneid=nil, proxyid=nil, ruleid=nil, status=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
          @Status = params['Status']
        end
      end

      # ModifyApplicationProxyRuleStatus返回参数结构体
      class ModifyApplicationProxyRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyApplicationProxyStatus请求参数结构体
      class ModifyApplicationProxyStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 四层代理ID
        # @type ProxyId: String
        # @param Status: 状态
        # offline: 停用
        # online: 启用
        # @type Status: String

        attr_accessor :ZoneId, :ProxyId, :Status
        
        def initialize(zoneid=nil, proxyid=nil, status=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Status = params['Status']
        end
      end

      # ModifyApplicationProxyStatus返回参数结构体
      class ModifyApplicationProxyStatusResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 四层代理ID
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :RequestId
        
        def initialize(proxyid=nil, requestid=nil)
          @ProxyId = proxyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDefaultCertificate请求参数结构体
      class ModifyDefaultCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param CertId: 默认证书ID
        # @type CertId: String
        # @param Status: 证书状态
        # deployed: 部署证书
        # disabled:禁用证书
        # 失败状态下重新deployed即可重试失败
        # @type Status: String

        attr_accessor :ZoneId, :CertId, :Status
        
        def initialize(zoneid=nil, certid=nil, status=nil)
          @ZoneId = zoneid
          @CertId = certid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CertId = params['CertId']
          @Status = params['Status']
        end
      end

      # ModifyDefaultCertificate返回参数结构体
      class ModifyDefaultCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDnsRecord请求参数结构体
      class ModifyDnsRecordRequest < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名称
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Mode: 代理模式
        # @type Mode: String

        attr_accessor :Id, :ZoneId, :Type, :Name, :Content, :Ttl, :Priority, :Mode
        
        def initialize(id=nil, zoneid=nil, type=nil, name=nil, content=nil, ttl=nil, priority=nil, mode=nil)
          @Id = id
          @ZoneId = zoneid
          @Type = type
          @Name = name
          @Content = content
          @Ttl = ttl
          @Priority = priority
          @Mode = mode
        end

        def deserialize(params)
          @Id = params['Id']
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @Mode = params['Mode']
        end
      end

      # ModifyDnsRecord返回参数结构体
      class ModifyDnsRecordResponse < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名称
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Mode: 代理模式
        # @type Mode: String
        # @param Status: 解析状态
        # @type Status: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Locked: 锁定状态
        # @type Locked: Boolean
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Type, :Name, :Content, :Ttl, :Priority, :Mode, :Status, :Cname, :Locked, :CreatedOn, :ModifiedOn, :ZoneId, :ZoneName, :RequestId
        
        def initialize(id=nil, type=nil, name=nil, content=nil, ttl=nil, priority=nil, mode=nil, status=nil, cname=nil, locked=nil, createdon=nil, modifiedon=nil, zoneid=nil, zonename=nil, requestid=nil)
          @Id = id
          @Type = type
          @Name = name
          @Content = content
          @Ttl = ttl
          @Priority = priority
          @Mode = mode
          @Status = status
          @Cname = cname
          @Locked = locked
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @ZoneId = zoneid
          @ZoneName = zonename
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @Mode = params['Mode']
          @Status = params['Status']
          @Cname = params['Cname']
          @Locked = params['Locked']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDnssec请求参数结构体
      class ModifyDnssecRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Status: DNSSEC 状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String

        attr_accessor :Id, :Status
        
        def initialize(id=nil, status=nil)
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # ModifyDnssec返回参数结构体
      class ModifyDnssecResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: DNSSEC 状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String
        # @param Dnssec: DNSSEC 相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dnssec: :class:`Tencentcloud::Teo.v20220106.models.DnssecInfo`
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Status, :Dnssec, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, status=nil, dnssec=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Status = status
          @Dnssec = dnssec
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          unless params['Dnssec'].nil?
            @Dnssec = DnssecInfo.new
            @Dnssec.deserialize(params['Dnssec'])
          end
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # ModifyHostsCertificate请求参数结构体
      class ModifyHostsCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Hosts: 本次变更的域名
        # @type Hosts: Array
        # @param CertInfo: 证书信息, 只需要传入 CertId 即可, 如果为空, 则使用默认证书
        # @type CertInfo: Array

        attr_accessor :ZoneId, :Hosts, :CertInfo
        
        def initialize(zoneid=nil, hosts=nil, certinfo=nil)
          @ZoneId = zoneid
          @Hosts = hosts
          @CertInfo = certinfo
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Hosts = params['Hosts']
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @CertInfo << servercertinfo_tmp
            end
          end
        end
      end

      # ModifyHostsCertificate返回参数结构体
      class ModifyHostsCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancing请求参数结构体
      class ModifyLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer

        attr_accessor :ZoneId, :LoadBalancingId, :Type, :OriginId, :TTL
        
        def initialize(zoneid=nil, loadbalancingid=nil, type=nil, originid=nil, ttl=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
          @Type = type
          @OriginId = originid
          @TTL = ttl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
          @Type = params['Type']
          @OriginId = params['OriginId']
          @TTL = params['TTL']
        end
      end

      # ModifyLoadBalancing返回参数结构体
      class ModifyLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoadBalancingStatus请求参数结构体
      class ModifyLoadBalancingStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param Status: 状态
        # online: 启用
        # offline: 停用
        # @type Status: String

        attr_accessor :ZoneId, :LoadBalancingId, :Status
        
        def initialize(zoneid=nil, loadbalancingid=nil, status=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
          @Status = params['Status']
        end
      end

      # ModifyLoadBalancingStatus返回参数结构体
      class ModifyLoadBalancingStatusResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyZoneCnameSpeedUp请求参数结构体
      class ModifyZoneCnameSpeedUpRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Status: CNAME 加速状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String

        attr_accessor :Id, :Status
        
        def initialize(id=nil, status=nil)
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # ModifyZoneCnameSpeedUp返回参数结构体
      class ModifyZoneCnameSpeedUpResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: CNAME 加速状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String
        # @param ModifiedOn: 更新时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Status, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, status=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Status = status
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # ModifyZone请求参数结构体
      class ModifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID，用于唯一标识站点信息
        # @type Id: String
        # @param Type: 站点接入方式
        # - full NS 接入
        # - partial CNAME 接入
        # @type Type: String
        # @param VanityNameServers: 自定义站点信息
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220106.models.VanityNameServers`

        attr_accessor :Id, :Type, :VanityNameServers
        
        def initialize(id=nil, type=nil, vanitynameservers=nil)
          @Id = id
          @Type = type
          @VanityNameServers = vanitynameservers
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          unless params['VanityNameServers'].nil?
            @VanityNameServers = VanityNameServers.new
            @VanityNameServers.deserialize(params['VanityNameServers'])
          end
        end
      end

      # ModifyZone返回参数结构体
      class ModifyZoneResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param OriginalNameServers: 站点当前使用的 NS
        # @type OriginalNameServers: Array
        # @param Status: 站点状态
        # - pending 未接入 NS
        # - active 已接入 NS
        # - moved NS 已切走
        # @type Status: String
        # @param Type: 站点接入方式
        # - full NS 接入
        # - partial CNAME 接入
        # @type Type: String
        # @param NameServers: 腾讯云分配的 NS 列表
        # @type NameServers: Array
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param CnameStatus: cname 接入状态
        # - finished 站点验证完成
        # - pending 站点验证中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :OriginalNameServers, :Status, :Type, :NameServers, :CreatedOn, :ModifiedOn, :CnameStatus, :RequestId
        
        def initialize(id=nil, name=nil, originalnameservers=nil, status=nil, type=nil, nameservers=nil, createdon=nil, modifiedon=nil, cnamestatus=nil, requestid=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @Status = status
          @Type = type
          @NameServers = nameservers
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @CnameStatus = cnamestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @OriginalNameServers = params['OriginalNameServers']
          @Status = params['Status']
          @Type = params['Type']
          @NameServers = params['NameServers']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @CnameStatus = params['CnameStatus']
          @RequestId = params['RequestId']
        end
      end

      # ModifyZoneSetting请求参数结构体
      class ModifyZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 待变更的站点ID
        # @type ZoneId: String
        # @param Cache: 缓存过期时间配置
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220106.models.CacheKey`
        # @param MaxAge: 浏览器缓存配置
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220106.models.MaxAge`
        # @param OfflineCache: 离线缓存
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220106.models.OfflineCache`
        # @param Quic: Quic访问
        # @type Quic: :class:`Tencentcloud::Teo.v20220106.models.Quic`
        # @param PostMaxSize: POST请求传输配置
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220106.models.PostMaxSize`
        # @param Compression: 智能压缩配置
        # @type Compression: :class:`Tencentcloud::Teo.v20220106.models.Compression`
        # @param UpstreamHttp2: http2回源配置
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220106.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制https跳转配置
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220106.models.ForceRedirect`
        # @param Https: Https 加速配置
        # @type Https: :class:`Tencentcloud::Teo.v20220106.models.Https`
        # @param Origin: 源站配置
        # @type Origin: :class:`Tencentcloud::Teo.v20220106.models.Origin`
        # @param SmartRouting: 智能加速配置
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220106.models.SmartRouting`
        # @param WebSocket: WebSocket配置
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220106.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220106.models.ClientIp`

        attr_accessor :ZoneId, :Cache, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :WebSocket, :ClientIpHeader
        
        def initialize(zoneid=nil, cache=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, websocket=nil, clientipheader=nil)
          @ZoneId = zoneid
          @Cache = cache
          @CacheKey = cachekey
          @MaxAge = maxage
          @OfflineCache = offlinecache
          @Quic = quic
          @PostMaxSize = postmaxsize
          @Compression = compression
          @UpstreamHttp2 = upstreamhttp2
          @ForceRedirect = forceredirect
          @Https = https
          @Origin = origin
          @SmartRouting = smartrouting
          @WebSocket = websocket
          @ClientIpHeader = clientipheader
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Cache'].nil?
            @Cache = CacheConfig.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['PostMaxSize'].nil?
            @PostMaxSize = PostMaxSize.new
            @PostMaxSize.deserialize(params['PostMaxSize'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['UpstreamHttp2'].nil?
            @UpstreamHttp2 = UpstreamHttp2.new
            @UpstreamHttp2.deserialize(params['UpstreamHttp2'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['SmartRouting'].nil?
            @SmartRouting = SmartRouting.new
            @SmartRouting.deserialize(params['SmartRouting'])
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
          unless params['ClientIpHeader'].nil?
            @ClientIpHeader = ClientIp.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
        end
      end

      # ModifyZoneSetting返回参数结构体
      class ModifyZoneSettingResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :RequestId
        
        def initialize(zoneid=nil, requestid=nil)
          @ZoneId = zoneid
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyZoneStatus请求参数结构体
      class ModifyZoneStatusRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Paused: 站点状态
        # - false 开启站点
        # - true 关闭站点
        # @type Paused: Boolean

        attr_accessor :Id, :Paused
        
        def initialize(id=nil, paused=nil)
          @Id = id
          @Paused = paused
        end

        def deserialize(params)
          @Id = params['Id']
          @Paused = params['Paused']
        end
      end

      # ModifyZoneStatus返回参数结构体
      class ModifyZoneStatusResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Paused: 站点状态
        # - false 开启站点
        # - true 关闭站点
        # @type Paused: Boolean
        # @param ModifiedOn: 更新时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Paused, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, paused=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Paused = paused
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Paused = params['Paused']
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # 离线缓存是否开启
      class OfflineCache < TencentCloud::Common::AbstractModel
        # @param Switch: on | off, 离线缓存是否开启
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

      # 源站配置。
      class Origin < TencentCloud::Common::AbstractModel
        # @param OriginPullProtocol: 回源协议配置
        # http：强制 http 回源
        # follow：协议跟随回源
        # https：强制 https 回源，https 回源时仅支持源站 443 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullProtocol: String

        attr_accessor :OriginPullProtocol
        
        def initialize(originpullprotocol=nil)
          @OriginPullProtocol = originpullprotocol
        end

        def deserialize(params)
          @OriginPullProtocol = params['OriginPullProtocol']
        end
      end

      # 源站组信息
      class OriginGroup < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param OriginName: 源站组名称
        # @type OriginName: String
        # @param Type: 配置类型
        # @type Type: String
        # @param Record: 记录
        # @type Record: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param OriginType: 源站类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginType: String
        # @param ApplicationProxyUsed: 是否为四层代理使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationProxyUsed: Boolean
        # @param LoadBalancingUsed: 是否为负载均衡使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsed: Boolean

        attr_accessor :OriginId, :OriginName, :Type, :Record, :UpdateTime, :ZoneId, :ZoneName, :OriginType, :ApplicationProxyUsed, :LoadBalancingUsed
        
        def initialize(originid=nil, originname=nil, type=nil, record=nil, updatetime=nil, zoneid=nil, zonename=nil, origintype=nil, applicationproxyused=nil, loadbalancingused=nil)
          @OriginId = originid
          @OriginName = originname
          @Type = type
          @Record = record
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @OriginType = origintype
          @ApplicationProxyUsed = applicationproxyused
          @LoadBalancingUsed = loadbalancingused
        end

        def deserialize(params)
          @OriginId = params['OriginId']
          @OriginName = params['OriginName']
          @Type = params['Type']
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Record << originrecord_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @OriginType = params['OriginType']
          @ApplicationProxyUsed = params['ApplicationProxyUsed']
          @LoadBalancingUsed = params['LoadBalancingUsed']
        end
      end

      # 源站组记录
      class OriginRecord < TencentCloud::Common::AbstractModel
        # @param Record: 记录值
        # @type Record: String
        # @param Area: 当源站配置类型Type=area时，表示区域
        # 当源站类型Type=area时，为空表示默认区域
        # @type Area: Array
        # @param Weight: 当源站配置类型Type=weight时，表示权重
        # @type Weight: Integer
        # @param Port: 端口
        # @type Port: Integer
        # @param RecordId: 记录ID
        # @type RecordId: String
        # @param Private: 是否私有鉴权
        # 当源站类型OriginType=third_part时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Private: Boolean
        # @param PrivateParameter: 私有鉴权参数
        # 当源站类型Private=true时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateParameter: Array

        attr_accessor :Record, :Area, :Weight, :Port, :RecordId, :Private, :PrivateParameter
        
        def initialize(record=nil, area=nil, weight=nil, port=nil, recordid=nil, private=nil, privateparameter=nil)
          @Record = record
          @Area = area
          @Weight = weight
          @Port = port
          @RecordId = recordid
          @Private = private
          @PrivateParameter = privateparameter
        end

        def deserialize(params)
          @Record = params['Record']
          @Area = params['Area']
          @Weight = params['Weight']
          @Port = params['Port']
          @RecordId = params['RecordId']
          @Private = params['Private']
          unless params['PrivateParameter'].nil?
            @PrivateParameter = []
            params['PrivateParameter'].each do |i|
              originrecordprivateparameter_tmp = OriginRecordPrivateParameter.new
              originrecordprivateparameter_tmp.deserialize(i)
              @PrivateParameter << originrecordprivateparameter_tmp
            end
          end
        end
      end

      # 源站记录私有鉴权参数
      class OriginRecordPrivateParameter < TencentCloud::Common::AbstractModel
        # @param Name: 私有鉴权参数名称：
        # "AccessKeyId"：Access Key ID
        # "SecretAccessKey"：Secret Access Key
        # @type Name: String
        # @param Value: 私有鉴权参数数值
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

      # POST请求上传文件流式传输最大限制
      class PostMaxSize < TencentCloud::Common::AbstractModel
        # @param Switch: 是调整POST请求限制，平台默认为32MB。
        # 关闭：off，
        # 开启：on。
        # @type Switch: String
        # @param MaxSize: 最大限制，取值在1MB和500MB之间。单位字节
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CacheKey中包含请求参数
      class QueryString < TencentCloud::Common::AbstractModel
        # @param Switch: on | off CacheKey是否由QueryString组成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Action: includeCustom:使用部分url参数
        # excludeCustom:排除部分url参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Value: 使用/排除的url参数数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

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

      # ReclaimZone请求参数结构体
      class ReclaimZoneRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # ReclaimZone返回参数结构体
      class ReclaimZoneResponse < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :RequestId
        
        def initialize(name=nil, requestid=nil)
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # ScanDnsRecords请求参数结构体
      class ScanDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # ScanDnsRecords返回参数结构体
      class ScanDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Status: 扫描状态
        # - doing 扫描中
        # - done 扫描完成
        # @type Status: String
        # @param RecordsAdded: 扫描后添加的记录数
        # @type RecordsAdded: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RecordsAdded, :RequestId
        
        def initialize(status=nil, recordsadded=nil, requestid=nil)
          @Status = status
          @RecordsAdded = recordsadded
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RecordsAdded = params['RecordsAdded']
          @RequestId = params['RequestId']
        end
      end

      # https 服务端证书配置
      class ServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID, 默认证书ID, 或在 SSL 证书管理进行证书托管时自动生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Alias: 证书备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Type: 证书类型:
        # default: 默认证书
        # upload:用户上传
        # managed:腾讯云托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpireTime: 证书过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书部署时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployTime: String
        # @param Status: 部署状态:
        # processing: 部署中
        # deployed: 已部署
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :DeployTime, :Status
        
        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, deploytime=nil, status=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @DeployTime = deploytime
          @Status = status
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Alias = params['Alias']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @DeployTime = params['DeployTime']
          @Status = params['Status']
        end
      end

      # 智能加速配置
      class SmartRouting < TencentCloud::Common::AbstractModel
        # @param Switch: 智能加速配置开关
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

      # 内容管理任务结果
      class Task < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param Status: 状态
        # @type Status: String
        # @param Target: 资源
        # @type Target: String
        # @param Type: 任务类型
        # @type Type: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 任务完成时间
        # @type UpdateTime: String

        attr_accessor :JobId, :Status, :Target, :Type, :CreateTime, :UpdateTime
        
        def initialize(jobid=nil, status=nil, target=nil, type=nil, createtime=nil, updatetime=nil)
          @JobId = jobid
          @Status = status
          @Target = target
          @Type = type
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Status = params['Status']
          @Target = params['Target']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Http2回源配置
      class UpstreamHttp2 < TencentCloud::Common::AbstractModel
        # @param Switch: http2回源配置开关
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

      # 自定义 nameservers
      class VanityNameServers < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义 ns 开关
        # - on 开启
        # - off 关闭
        # @type Switch: String
        # @param Servers: 自定义 ns 列表
        # @type Servers: Array

        attr_accessor :Switch, :Servers
        
        def initialize(switch=nil, servers=nil)
          @Switch = switch
          @Servers = servers
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Servers = params['Servers']
        end
      end

      # 自定义名字服务器 IP 信息
      class VanityNameServersIps < TencentCloud::Common::AbstractModel
        # @param Name: 自定义名字服务器名称
        # @type Name: String
        # @param IPv4: 自定义名字服务器 IPv4 地址
        # @type IPv4: String

        attr_accessor :Name, :IPv4
        
        def initialize(name=nil, ipv4=nil)
          @Name = name
          @IPv4 = ipv4
        end

        def deserialize(params)
          @Name = params['Name']
          @IPv4 = params['IPv4']
        end
      end

      # WebSocket配置
      class WebSocket < TencentCloud::Common::AbstractModel
        # @param Switch: WebSocket 超时配置开关, 开关为off时，平台仍支持WebSocket连接，此时超时时间默认为15秒，若需要调整超时时间，将开关置为on.
        # @type Switch: String
        # @param Timeout: 设置超时时间，单位为秒，最大超时时间120秒。
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

      # 站点信息
      class Zone < TencentCloud::Common::AbstractModel
        # @param Id: 站点ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param OriginalNameServers: 站点当前使用的 NS 列表
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配的 NS 列表
        # @type NameServers: Array
        # @param Status: 站点状态
        # - active：NS 已切换
        # - pending：NS 未切换
        # - moved：NS 已切走
        # - deactivated：被封禁
        # @type Status: String
        # @param Type: 站点接入方式
        # - full：NS 接入
        # - partial：CNAME 接入
        # @type Type: String
        # @param Paused: 站点是否关闭
        # @type Paused: Boolean
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 站点修改时间
        # @type ModifiedOn: String
        # @param CnameStatus: cname 接入状态
        # - finished 站点已验证
        # - pending 站点验证中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CreatedOn, :ModifiedOn, :CnameStatus
        
        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, createdon=nil, modifiedon=nil, cnamestatus=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @CnameStatus = cnamestatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @Status = params['Status']
          @Type = params['Type']
          @Paused = params['Paused']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @CnameStatus = params['CnameStatus']
        end
      end

      # 站点查询过滤条件
      class ZoneFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # - name: 站点名。
        # - status: 站点状态
        # @type Name: String
        # @param Values: 过滤字段值
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为name。模糊查询时，Values长度最大为1
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Fuzzy
        
        def initialize(name=nil, values=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Fuzzy = params['Fuzzy']
        end
      end

    end
  end
end

