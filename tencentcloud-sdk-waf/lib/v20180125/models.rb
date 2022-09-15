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
  module Waf
    module V20180125
      # DescribeAccessIndex
      class AccessFullTextInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaseSensitive: Boolean
        # @param Tokenizer: 全文索引的分词符，字符串中每个字符代表一个分词符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tokenizer: String
        # @param ContainZH: 是否包含中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainZH: Boolean

        attr_accessor :CaseSensitive, :Tokenizer, :ContainZH
        
        def initialize(casesensitive=nil, tokenizer=nil, containzh=nil)
          @CaseSensitive = casesensitive
          @Tokenizer = tokenizer
          @ContainZH = containzh
        end

        def deserialize(params)
          @CaseSensitive = params['CaseSensitive']
          @Tokenizer = params['Tokenizer']
          @ContainZH = params['ContainZH']
        end
      end

      # 用于 DescribeAccessIndex 的出参
      class AccessKeyValueInfo < TencentCloud::Common::AbstractModel
        # @param Key: 需要配置键值或者元字段索引的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 字段的索引描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Waf.v20180125.models.AccessValueInfo`

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Value'].nil?
            @Value = AccessValueInfo.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 单条日志数据描述
      class AccessLogInfo < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间，单位ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param TopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 日志主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param Source: 日志来源IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param FileName: 日志文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param PkgId: 日志上报请求包的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param PkgLogId: 请求包内日志的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgLogId: String
        # @param LogJson: 日志内容的Json序列化字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogJson: String

        attr_accessor :Time, :TopicId, :TopicName, :Source, :FileName, :PkgId, :PkgLogId, :LogJson
        
        def initialize(time=nil, topicid=nil, topicname=nil, source=nil, filename=nil, pkgid=nil, pkglogid=nil, logjson=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @Source = source
          @FileName = filename
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @LogJson = logjson
        end

        def deserialize(params)
          @Time = params['Time']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Source = params['Source']
          @FileName = params['FileName']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @LogJson = params['LogJson']
        end
      end

      # 日志KeyValue对
      class AccessLogItem < TencentCloud::Common::AbstractModel
        # @param Key: 日记Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 日志Value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 日志KeyValue对数组，用于搜索访问日志
      class AccessLogItems < TencentCloud::Common::AbstractModel
        # @param Data: 分析结果返回的KV数据对
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :Data
        
        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              accesslogitem_tmp = AccessLogItem.new
              accesslogitem_tmp.deserialize(i)
              @Data << accesslogitem_tmp
            end
          end
        end
      end

      # DescribeAccessIndex接口的出参数
      class AccessRuleInfo < TencentCloud::Common::AbstractModel
        # @param FullText: 全文索引配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullText: :class:`Tencentcloud::Waf.v20180125.models.AccessFullTextInfo`
        # @param KeyValue: 键值索引配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValue: :class:`Tencentcloud::Waf.v20180125.models.AccessRuleKeyValueInfo`
        # @param Tag: 元字段索引配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: :class:`Tencentcloud::Waf.v20180125.models.AccessRuleTagInfo`

        attr_accessor :FullText, :KeyValue, :Tag
        
        def initialize(fulltext=nil, keyvalue=nil, tag=nil)
          @FullText = fulltext
          @KeyValue = keyvalue
          @Tag = tag
        end

        def deserialize(params)
          unless params['FullText'].nil?
            @FullText = AccessFullTextInfo.new
            @FullText.deserialize(params['FullText'])
          end
          unless params['KeyValue'].nil?
            @KeyValue = AccessRuleKeyValueInfo.new
            @KeyValue.deserialize(params['KeyValue'])
          end
          unless params['Tag'].nil?
            @Tag = AccessRuleTagInfo.new
            @Tag.deserialize(params['Tag'])
          end
        end
      end

      # DescribeAccessIndex接口的出参
      class AccessRuleKeyValueInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaseSensitive: Boolean
        # @param KeyValues: 需要建立索引的键值对信息；最大只能配置100个键值对
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValues: Array

        attr_accessor :CaseSensitive, :KeyValues
        
        def initialize(casesensitive=nil, keyvalues=nil)
          @CaseSensitive = casesensitive
          @KeyValues = keyvalues
        end

        def deserialize(params)
          @CaseSensitive = params['CaseSensitive']
          unless params['KeyValues'].nil?
            @KeyValues = []
            params['KeyValues'].each do |i|
              accesskeyvalueinfo_tmp = AccessKeyValueInfo.new
              accesskeyvalueinfo_tmp.deserialize(i)
              @KeyValues << accesskeyvalueinfo_tmp
            end
          end
        end
      end

      # DescribeAccessIndex接口的出参
      class AccessRuleTagInfo < TencentCloud::Common::AbstractModel
        # @param CaseSensitive: 是否大小写敏感
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaseSensitive: Boolean
        # @param KeyValues: 标签索引配置中的字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValues: Array

        attr_accessor :CaseSensitive, :KeyValues
        
        def initialize(casesensitive=nil, keyvalues=nil)
          @CaseSensitive = casesensitive
          @KeyValues = keyvalues
        end

        def deserialize(params)
          @CaseSensitive = params['CaseSensitive']
          unless params['KeyValues'].nil?
            @KeyValues = []
            params['KeyValues'].each do |i|
              accesskeyvalueinfo_tmp = AccessKeyValueInfo.new
              accesskeyvalueinfo_tmp.deserialize(i)
              @KeyValues << accesskeyvalueinfo_tmp
            end
          end
        end
      end

      # 用于DescribeAccessIndex接口的出参
      class AccessValueInfo < TencentCloud::Common::AbstractModel
        # @param Type: 字段类型，目前支持的类型有：long、text、double
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Tokenizer: 字段的分词符，只有当字段类型为text时才有意义；输入字符串中的每个字符代表一个分词符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tokenizer: String
        # @param SqlFlag: 字段是否开启分析功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlFlag: Boolean
        # @param ContainZH: 是否包含中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainZH: Boolean

        attr_accessor :Type, :Tokenizer, :SqlFlag, :ContainZH
        
        def initialize(type=nil, tokenizer=nil, sqlflag=nil, containzh=nil)
          @Type = type
          @Tokenizer = tokenizer
          @SqlFlag = sqlflag
          @ContainZH = containzh
        end

        def deserialize(params)
          @Type = params['Type']
          @Tokenizer = params['Tokenizer']
          @SqlFlag = params['SqlFlag']
          @ContainZH = params['ContainZH']
        end
      end

      # AddCustomRule请求参数结构体
      class AddCustomRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param SortId: 优先级
        # @type SortId: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param Strategies: 策略详情
        # @type Strategies: Array
        # @param Domain: 需要添加策略的域名
        # @type Domain: String
        # @param ActionType: 动作类型
        # @type ActionType: String
        # @param Redirect: 如果动作是重定向，则表示重定向的地址；其他情况可以为空
        # @type Redirect: String
        # @param Edition: "clb-waf"或者"sparta-waf"
        # @type Edition: String
        # @param Bypass: 放行的详情
        # @type Bypass: String

        attr_accessor :Name, :SortId, :ExpireTime, :Strategies, :Domain, :ActionType, :Redirect, :Edition, :Bypass
        
        def initialize(name=nil, sortid=nil, expiretime=nil, strategies=nil, domain=nil, actiontype=nil, redirect=nil, edition=nil, bypass=nil)
          @Name = name
          @SortId = sortid
          @ExpireTime = expiretime
          @Strategies = strategies
          @Domain = domain
          @ActionType = actiontype
          @Redirect = redirect
          @Edition = edition
          @Bypass = bypass
        end

        def deserialize(params)
          @Name = params['Name']
          @SortId = params['SortId']
          @ExpireTime = params['ExpireTime']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategy_tmp = Strategy.new
              strategy_tmp.deserialize(i)
              @Strategies << strategy_tmp
            end
          end
          @Domain = params['Domain']
          @ActionType = params['ActionType']
          @Redirect = params['Redirect']
          @Edition = params['Edition']
          @Bypass = params['Bypass']
        end
      end

      # AddCustomRule返回参数结构体
      class AddCustomRuleResponse < TencentCloud::Common::AbstractModel
        # @param Success: 操作的状态码，如果所有的资源操作成功则返回的是成功的状态码，如果有资源操作失败则需要解析Message的内容来查看哪个资源失败
        # @type Success: :class:`Tencentcloud::Waf.v20180125.models.ResponseCode`
        # @param RuleId: 添加成功的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RuleId, :RequestId
        
        def initialize(success=nil, ruleid=nil, requestid=nil)
          @Success = success
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = ResponseCode.new
            @Success.deserialize(params['Success'])
          end
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # AddDomainWhiteRule请求参数结构体
      class AddDomainWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要添加的域名
        # @type Domain: String
        # @param Rules: 需要添加的规则
        # @type Rules: Array
        # @param Url: 需要添加的规则url
        # @type Url: String
        # @param Function: 规则的方法
        # @type Function: String
        # @param Status: 规则的开关
        # @type Status: Integer

        attr_accessor :Domain, :Rules, :Url, :Function, :Status
        
        def initialize(domain=nil, rules=nil, url=nil, function=nil, status=nil)
          @Domain = domain
          @Rules = rules
          @Url = url
          @Function = function
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Rules = params['Rules']
          @Url = params['Url']
          @Function = params['Function']
          @Status = params['Status']
        end
      end

      # AddDomainWhiteRule返回参数结构体
      class AddDomainWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param Id: 规则id
        # @type Id: Integer
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

      # AddSpartaProtection请求参数结构体
      class AddSpartaProtectionRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要防御的域名
        # @type Domain: String
        # @param CertType: 证书类型，0表示没有证书，CertType=1表示自有证书,2 为托管证书
        # @type CertType: Integer
        # @param IsCdn: 表示是否开启了CDN代理，1：有部署CDN，0：未部署CDN
        # @type IsCdn: Integer
        # @param UpstreamType: 回源类型，0表示通过IP回源,1 表示通过域名回源
        # @type UpstreamType: Integer
        # @param IsWebsocket: 是否开启WebSocket支持，1表示开启，0不开启
        # @type IsWebsocket: Integer
        # @param LoadBalance: 负载均衡策略，0表示轮徇，1表示IP hash
        # @type LoadBalance: String
        # @param Cert: CertType=1时，需要填次参数，表示证书内容
        # @type Cert: String
        # @param PrivateKey: CertType=1时，需要填次参数，表示证书的私钥
        # @type PrivateKey: String
        # @param SSLId: CertType=2时，需要填次参数，表示证书的ID
        # @type SSLId: String
        # @param ResourceId: Waf的资源ID
        # @type ResourceId: String
        # @param UpstreamScheme: HTTPS回源协议，填http或者https
        # @type UpstreamScheme: String
        # @param HttpsUpstreamPort: HTTPS回源端口,仅UpstreamScheme为http时需要填当前字段
        # @type HttpsUpstreamPort: String
        # @param IsGray: 是否开启灰度，0表示不开启灰度
        # @type IsGray: Integer
        # @param GrayAreas: 灰度的地区
        # @type GrayAreas: Array
        # @param UpstreamDomain: UpstreamType=1时，填次字段表示回源域名
        # @type UpstreamDomain: String
        # @param SrcList: UpstreamType=0时，填次字段表示回源IP
        # @type SrcList: Array
        # @param IsHttp2: 是否开启HTTP2,开启HTTP2需要HTTPS支持
        # @type IsHttp2: Integer
        # @param HttpsRewrite: 表示是否强制跳转到HTTPS，1强制跳转Https，0不强制跳转
        # @type HttpsRewrite: Integer
        # @param Ports: 服务有多端口需要设置此字段
        # @type Ports: Array
        # @param Edition: 版本：sparta-waf、clb-waf、cdn-waf
        # @type Edition: String
        # @param IsKeepAlive: 是否开启长连接，仅IP回源时可以用填次参数，域名回源时这个参数无效
        # @type IsKeepAlive: String
        # @param InstanceID: 实例id，上线之后带上此字段
        # @type InstanceID: String
        # @param Anycast: anycast IP类型开关： 0 普通IP 1 Anycast IP
        # @type Anycast: Integer
        # @param Weights: src权重
        # @type Weights: Array
        # @param ActiveCheck: 是否开启主动健康检测，1表示开启，0表示不开启
        # @type ActiveCheck: Integer
        # @param TLSVersion: TLS版本信息
        # @type TLSVersion: Integer
        # @param Ciphers: 加密套件信息
        # @type Ciphers: Array
        # @param CipherTemplate: 0:不支持选择：默认模版  1:通用型模版 2:安全型模版 3:自定义模版
        # @type CipherTemplate: Integer

        attr_accessor :Domain, :CertType, :IsCdn, :UpstreamType, :IsWebsocket, :LoadBalance, :Cert, :PrivateKey, :SSLId, :ResourceId, :UpstreamScheme, :HttpsUpstreamPort, :IsGray, :GrayAreas, :UpstreamDomain, :SrcList, :IsHttp2, :HttpsRewrite, :Ports, :Edition, :IsKeepAlive, :InstanceID, :Anycast, :Weights, :ActiveCheck, :TLSVersion, :Ciphers, :CipherTemplate
        
        def initialize(domain=nil, certtype=nil, iscdn=nil, upstreamtype=nil, iswebsocket=nil, loadbalance=nil, cert=nil, privatekey=nil, sslid=nil, resourceid=nil, upstreamscheme=nil, httpsupstreamport=nil, isgray=nil, grayareas=nil, upstreamdomain=nil, srclist=nil, ishttp2=nil, httpsrewrite=nil, ports=nil, edition=nil, iskeepalive=nil, instanceid=nil, anycast=nil, weights=nil, activecheck=nil, tlsversion=nil, ciphers=nil, ciphertemplate=nil)
          @Domain = domain
          @CertType = certtype
          @IsCdn = iscdn
          @UpstreamType = upstreamtype
          @IsWebsocket = iswebsocket
          @LoadBalance = loadbalance
          @Cert = cert
          @PrivateKey = privatekey
          @SSLId = sslid
          @ResourceId = resourceid
          @UpstreamScheme = upstreamscheme
          @HttpsUpstreamPort = httpsupstreamport
          @IsGray = isgray
          @GrayAreas = grayareas
          @UpstreamDomain = upstreamdomain
          @SrcList = srclist
          @IsHttp2 = ishttp2
          @HttpsRewrite = httpsrewrite
          @Ports = ports
          @Edition = edition
          @IsKeepAlive = iskeepalive
          @InstanceID = instanceid
          @Anycast = anycast
          @Weights = weights
          @ActiveCheck = activecheck
          @TLSVersion = tlsversion
          @Ciphers = ciphers
          @CipherTemplate = ciphertemplate
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertType = params['CertType']
          @IsCdn = params['IsCdn']
          @UpstreamType = params['UpstreamType']
          @IsWebsocket = params['IsWebsocket']
          @LoadBalance = params['LoadBalance']
          @Cert = params['Cert']
          @PrivateKey = params['PrivateKey']
          @SSLId = params['SSLId']
          @ResourceId = params['ResourceId']
          @UpstreamScheme = params['UpstreamScheme']
          @HttpsUpstreamPort = params['HttpsUpstreamPort']
          @IsGray = params['IsGray']
          @GrayAreas = params['GrayAreas']
          @UpstreamDomain = params['UpstreamDomain']
          @SrcList = params['SrcList']
          @IsHttp2 = params['IsHttp2']
          @HttpsRewrite = params['HttpsRewrite']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portitem_tmp = PortItem.new
              portitem_tmp.deserialize(i)
              @Ports << portitem_tmp
            end
          end
          @Edition = params['Edition']
          @IsKeepAlive = params['IsKeepAlive']
          @InstanceID = params['InstanceID']
          @Anycast = params['Anycast']
          @Weights = params['Weights']
          @ActiveCheck = params['ActiveCheck']
          @TLSVersion = params['TLSVersion']
          @Ciphers = params['Ciphers']
          @CipherTemplate = params['CipherTemplate']
        end
      end

      # AddSpartaProtection返回参数结构体
      class AddSpartaProtectionResponse < TencentCloud::Common::AbstractModel
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

      # Waf 攻击自动封禁详情
      class AutoDenyDetail < TencentCloud::Common::AbstractModel
        # @param AttackTags: 攻击封禁类型标签
        # @type AttackTags: Array
        # @param AttackThreshold: 攻击次数阈值
        # @type AttackThreshold: Integer
        # @param DefenseStatus: 自动封禁状态
        # @type DefenseStatus: Integer
        # @param TimeThreshold: 攻击时间阈值
        # @type TimeThreshold: Integer
        # @param DenyTimeThreshold: 自动封禁时间
        # @type DenyTimeThreshold: Integer
        # @param LastUpdateTime: 最后更新时间
        # @type LastUpdateTime: String

        attr_accessor :AttackTags, :AttackThreshold, :DefenseStatus, :TimeThreshold, :DenyTimeThreshold, :LastUpdateTime
        
        def initialize(attacktags=nil, attackthreshold=nil, defensestatus=nil, timethreshold=nil, denytimethreshold=nil, lastupdatetime=nil)
          @AttackTags = attacktags
          @AttackThreshold = attackthreshold
          @DefenseStatus = defensestatus
          @TimeThreshold = timethreshold
          @DenyTimeThreshold = denytimethreshold
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @AttackTags = params['AttackTags']
          @AttackThreshold = params['AttackThreshold']
          @DefenseStatus = params['DefenseStatus']
          @TimeThreshold = params['TimeThreshold']
          @DenyTimeThreshold = params['DenyTimeThreshold']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

      # Bot资源信息
      class BotPkg < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Integer
        # @param BeginTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param InquireNum: 申请数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InquireNum: Integer
        # @param UsedNum: 使用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedNum: Integer
        # @param Type: 子产品code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum, :Type
        
        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil, type=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
          @Type = type
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @InquireNum = params['InquireNum']
          @UsedNum = params['UsedNum']
          @Type = params['Type']
        end
      end

      # bot的qps详情
      class BotQPS < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源id
        # @type ResourceIds: String
        # @param ValidTime: 有效时间
        # @type ValidTime: String
        # @param Count: 资源数量
        # @type Count: Integer
        # @param Region: 资源所在地区
        # @type Region: String
        # @param MaxBotQPS: 使用qps的最大值
        # @type MaxBotQPS: Integer

        attr_accessor :ResourceIds, :ValidTime, :Count, :Region, :MaxBotQPS
        
        def initialize(resourceids=nil, validtime=nil, count=nil, region=nil, maxbotqps=nil)
          @ResourceIds = resourceids
          @ValidTime = validtime
          @Count = count
          @Region = region
          @MaxBotQPS = maxbotqps
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @ValidTime = params['ValidTime']
          @Count = params['Count']
          @Region = params['Region']
          @MaxBotQPS = params['MaxBotQPS']
        end
      end

      # bot的趋势图对象
      class BotStatPointItem < TencentCloud::Common::AbstractModel
        # @param TimeStamp: 横坐标
        # @type TimeStamp: String
        # @param Key: value的所属对象
        # @type Key: String
        # @param Value: 纵列表
        # @type Value: Integer
        # @param Label: Key对应的页面展示内容
        # @type Label: String

        attr_accessor :TimeStamp, :Key, :Value, :Label
        
        def initialize(timestamp=nil, key=nil, value=nil, label=nil)
          @TimeStamp = timestamp
          @Key = key
          @Value = value
          @Label = label
        end

        def deserialize(params)
          @TimeStamp = params['TimeStamp']
          @Key = params['Key']
          @Value = params['Value']
          @Label = params['Label']
        end
      end

      # CDC场景下负载均衡WAF的集群信息
      class CdcCluster < TencentCloud::Common::AbstractModel
        # @param Id: cdc的集群id
        # @type Id: String
        # @param Name: cdc的集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CDC场景下负载均衡WAF的地域信息
      class CdcRegion < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param Clusters: 该地域对应的集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clusters: Array

        attr_accessor :Region, :Clusters
        
        def initialize(region=nil, clusters=nil)
          @Region = region
          @Clusters = clusters
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              cdccluster_tmp = CdcCluster.new
              cdccluster_tmp.deserialize(i)
              @Clusters << cdccluster_tmp
            end
          end
        end
      end

      # CreateAccessExport请求参数结构体
      class CreateAccessExportRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 客户要查询的日志主题ID，每个客户都有对应的一个主题
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 日志导出检索语句
        # @type Query: String
        # @param Count: 日志导出数量，最大值100w
        # @type Count: Integer
        # @param Format: 日志导出数据格式。json，csv，默认为json
        # @type Format: String
        # @param Order: 日志导出时间排序。desc，asc，默认为desc
        # @type Order: String

        attr_accessor :TopicId, :From, :To, :Query, :Count, :Format, :Order
        
        def initialize(topicid=nil, from=nil, to=nil, query=nil, count=nil, format=nil, order=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Count = count
          @Format = format
          @Order = order
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Count = params['Count']
          @Format = params['Format']
          @Order = params['Order']
        end
      end

      # CreateAccessExport返回参数结构体
      class CreateAccessExportResponse < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出ID。
        # @type ExportId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportId, :RequestId
        
        def initialize(exportid=nil, requestid=nil)
          @ExportId = exportid
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportId = params['ExportId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAccessExport请求参数结构体
      class DeleteAccessExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出ID
        # @type ExportId: String
        # @param TopicId: 日志主题
        # @type TopicId: String

        attr_accessor :ExportId, :TopicId
        
        def initialize(exportid=nil, topicid=nil)
          @ExportId = exportid
          @TopicId = topicid
        end

        def deserialize(params)
          @ExportId = params['ExportId']
          @TopicId = params['TopicId']
        end
      end

      # DeleteAccessExport返回参数结构体
      class DeleteAccessExportResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAttackDownloadRecord请求参数结构体
      class DeleteAttackDownloadRecordRequest < TencentCloud::Common::AbstractModel
        # @param Id: 下载任务记录唯一标记
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteAttackDownloadRecord返回参数结构体
      class DeleteAttackDownloadRecordResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDomainWhiteRules请求参数结构体
      class DeleteDomainWhiteRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要删除的规则域名
        # @type Domain: String
        # @param Ids: 需要删除的白名单规则
        # @type Ids: Array

        attr_accessor :Domain, :Ids
        
        def initialize(domain=nil, ids=nil)
          @Domain = domain
          @Ids = ids
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Ids = params['Ids']
        end
      end

      # DeleteDomainWhiteRules返回参数结构体
      class DeleteDomainWhiteRulesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDownloadRecord请求参数结构体
      class DeleteDownloadRecordRequest < TencentCloud::Common::AbstractModel
        # @param Flow: 记录id
        # @type Flow: String

        attr_accessor :Flow
        
        def initialize(flow=nil)
          @Flow = flow
        end

        def deserialize(params)
          @Flow = params['Flow']
        end
      end

      # DeleteDownloadRecord返回参数结构体
      class DeleteDownloadRecordResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIpAccessControl请求参数结构体
      class DeleteIpAccessControlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Items: 删除的ip数组
        # @type Items: Array
        # @param DeleteAll: 删除对应的域名下的所有黑/白IP名额单
        # @type DeleteAll: Boolean
        # @param SourceType: 是否为多域名黑白名单
        # @type SourceType: String

        attr_accessor :Domain, :Items, :DeleteAll, :SourceType
        
        def initialize(domain=nil, items=nil, deleteall=nil, sourcetype=nil)
          @Domain = domain
          @Items = items
          @DeleteAll = deleteall
          @SourceType = sourcetype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Items = params['Items']
          @DeleteAll = params['DeleteAll']
          @SourceType = params['SourceType']
        end
      end

      # DeleteIpAccessControl返回参数结构体
      class DeleteIpAccessControlResponse < TencentCloud::Common::AbstractModel
        # @param FailedItems: 删除失败的条目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedItems: String
        # @param FailedCount: 删除失败的条目数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedItems, :FailedCount, :RequestId
        
        def initialize(faileditems=nil, failedcount=nil, requestid=nil)
          @FailedItems = faileditems
          @FailedCount = failedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedItems = params['FailedItems']
          @FailedCount = params['FailedCount']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSession请求参数结构体
      class DeleteSessionRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Edition: clb-waf 或者 sprta-waf
        # @type Edition: String

        attr_accessor :Domain, :Edition
        
        def initialize(domain=nil, edition=nil)
          @Domain = domain
          @Edition = edition
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Edition = params['Edition']
        end
      end

      # DeleteSession返回参数结构体
      class DeleteSessionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessExports请求参数结构体
      class DescribeAccessExportsRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 客户要查询的日志主题ID，每个客户都有对应的一个主题
        # @type TopicId: String
        # @param Offset: 分页的偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100
        # @type Limit: Integer

        attr_accessor :TopicId, :Offset, :Limit
        
        def initialize(topicid=nil, offset=nil, limit=nil)
          @TopicId = topicid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccessExports返回参数结构体
      class DescribeAccessExportsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志导出ID。
        # @type TotalCount: Integer
        # @param Exports: 日志导出列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exports: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Exports, :RequestId
        
        def initialize(totalcount=nil, exports=nil, requestid=nil)
          @TotalCount = totalcount
          @Exports = exports
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Exports'].nil?
            @Exports = []
            params['Exports'].each do |i|
              exportaccessinfo_tmp = ExportAccessInfo.new
              exportaccessinfo_tmp.deserialize(i)
              @Exports << exportaccessinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessFastAnalysis请求参数结构体
      class DescribeAccessFastAnalysisRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 客户要查询的日志主题ID，每个客户都有对应的一个主题
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句，语句长度最大为4096，由于本接口是分析接口，如果无过滤条件，必须传 * 表示匹配所有，参考CLS的分析统计语句的文档
        # @type Query: String
        # @param FieldName: 需要分析统计的字段名
        # @type FieldName: String

        attr_accessor :TopicId, :From, :To, :Query, :FieldName
        
        def initialize(topicid=nil, from=nil, to=nil, query=nil, fieldname=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @FieldName = fieldname
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @FieldName = params['FieldName']
        end
      end

      # DescribeAccessFastAnalysis返回参数结构体
      class DescribeAccessFastAnalysisResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccessIndex请求参数结构体
      class DescribeAccessIndexRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccessIndex返回参数结构体
      class DescribeAccessIndexResponse < TencentCloud::Common::AbstractModel
        # @param Status: 是否生效
        # @type Status: Boolean
        # @param Rule: 索引配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: :class:`Tencentcloud::Waf.v20180125.models.AccessRuleInfo`
        # @param ModifyTime: 索引修改时间，初始值为索引创建时间。
        # @type ModifyTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Rule, :ModifyTime, :RequestId
        
        def initialize(status=nil, rule=nil, modifytime=nil, requestid=nil)
          @Status = status
          @Rule = rule
          @ModifyTime = modifytime
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['Rule'].nil?
            @Rule = AccessRuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
          @ModifyTime = params['ModifyTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoDenyIP请求参数结构体
      class DescribeAutoDenyIPRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Ip: 查询IP自动封禁状态
        # @type Ip: String
        # @param Count: 计数标识
        # @type Count: Integer
        # @param Category: 类别
        # @type Category: String
        # @param VtsMin: 有效时间最小时间戳
        # @type VtsMin: Integer
        # @param VtsMax: 有效时间最大时间戳
        # @type VtsMax: Integer
        # @param CtsMin: 创建时间最小时间戳
        # @type CtsMin: Integer
        # @param CtsMax: 创建时间最大时间戳
        # @type CtsMax: Integer
        # @param Skip: 偏移量
        # @type Skip: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Name: 策略名字
        # @type Name: String
        # @param Sort: 排序参数
        # @type Sort: String

        attr_accessor :Domain, :Ip, :Count, :Category, :VtsMin, :VtsMax, :CtsMin, :CtsMax, :Skip, :Limit, :Name, :Sort
        
        def initialize(domain=nil, ip=nil, count=nil, category=nil, vtsmin=nil, vtsmax=nil, ctsmin=nil, ctsmax=nil, skip=nil, limit=nil, name=nil, sort=nil)
          @Domain = domain
          @Ip = ip
          @Count = count
          @Category = category
          @VtsMin = vtsmin
          @VtsMax = vtsmax
          @CtsMin = ctsmin
          @CtsMax = ctsmax
          @Skip = skip
          @Limit = limit
          @Name = name
          @Sort = sort
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Ip = params['Ip']
          @Count = params['Count']
          @Category = params['Category']
          @VtsMin = params['VtsMin']
          @VtsMax = params['VtsMax']
          @CtsMin = params['CtsMin']
          @CtsMax = params['CtsMax']
          @Skip = params['Skip']
          @Limit = params['Limit']
          @Name = params['Name']
          @Sort = params['Sort']
        end
      end

      # DescribeAutoDenyIP返回参数结构体
      class DescribeAutoDenyIPResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询IP封禁状态返回结果
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.IpHitItemsData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = IpHitItemsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainWhiteRules请求参数结构体
      class DescribeDomainWhiteRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要查询的域名
        # @type Domain: String
        # @param Url: 请求的白名单匹配路径
        # @type Url: String
        # @param Page: 翻到多少页
        # @type Page: Integer
        # @param Count: 每页展示的条数
        # @type Count: Integer
        # @param Sort: 排序方式
        # @type Sort: String
        # @param RuleId: 规则ID
        # @type RuleId: String

        attr_accessor :Domain, :Url, :Page, :Count, :Sort, :RuleId
        
        def initialize(domain=nil, url=nil, page=nil, count=nil, sort=nil, ruleid=nil)
          @Domain = domain
          @Url = url
          @Page = page
          @Count = count
          @Sort = sort
          @RuleId = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Url = params['Url']
          @Page = params['Page']
          @Count = params['Count']
          @Sort = params['Sort']
          @RuleId = params['RuleId']
        end
      end

      # DescribeDomainWhiteRules返回参数结构体
      class DescribeDomainWhiteRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleList: 规则列表
        # @type RuleList: Array
        # @param Total: 规则的数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleList, :Total, :RequestId
        
        def initialize(rulelist=nil, total=nil, requestid=nil)
          @RuleList = rulelist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              rulelist_tmp = RuleList.new
              rulelist_tmp.deserialize(i)
              @RuleList << rulelist_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomains请求参数结构体
      class DescribeDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 容量
        # @type Limit: Integer
        # @param Filters: 过滤数组
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
              filtersitemnew_tmp = FiltersItemNew.new
              filtersitemnew_tmp.deserialize(i)
              @Filters << filtersitemnew_tmp
            end
          end
        end
      end

      # DescribeDomains返回参数结构体
      class DescribeDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Domains: domain列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Domains, :RequestId
        
        def initialize(total=nil, domains=nil, requestid=nil)
          @Total = total
          @Domains = domains
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              domaininfo_tmp = DomainInfo.new
              domaininfo_tmp.deserialize(i)
              @Domains << domaininfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowTrend请求参数结构体
      class DescribeFlowTrendRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要获取流量趋势的域名, all表示所有域名
        # @type Domain: String
        # @param StartTs: 起始时间戳，精度秒
        # @type StartTs: Integer
        # @param EndTs: 结束时间戳，精度秒
        # @type EndTs: Integer

        attr_accessor :Domain, :StartTs, :EndTs
        
        def initialize(domain=nil, startts=nil, endts=nil)
          @Domain = domain
          @StartTs = startts
          @EndTs = endts
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTs = params['StartTs']
          @EndTs = params['EndTs']
        end
      end

      # DescribeFlowTrend返回参数结构体
      class DescribeFlowTrendResponse < TencentCloud::Common::AbstractModel
        # @param Data: 流量趋势数据
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
              botstatpointitem_tmp = BotStatPointItem.new
              botstatpointitem_tmp.deserialize(i)
              @Data << botstatpointitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 容量
        # @type Limit: Integer
        # @param Filters: 过滤数组
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
              filtersitemnew_tmp = FiltersItemNew.new
              filtersitemnew_tmp.deserialize(i)
              @Filters << filtersitemnew_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Instances: instance列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Instances, :RequestId
        
        def initialize(total=nil, instances=nil, requestid=nil)
          @Total = total
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpAccessControl请求参数结构体
      class DescribeIpAccessControlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Count: 计数标识
        # @type Count: Integer
        # @param ActionType: 动作
        # @type ActionType: Integer
        # @param VtsMin: 有效时间最小时间戳
        # @type VtsMin: Integer
        # @param VtsMax: 有效时间最大时间戳
        # @type VtsMax: Integer
        # @param CtsMin: 创建时间最小时间戳
        # @type CtsMin: Integer
        # @param CtsMax: 创建时间最大时间戳
        # @type CtsMax: Integer
        # @param OffSet: 偏移
        # @type OffSet: Integer
        # @param Limit: 限制
        # @type Limit: Integer
        # @param Source: 来源
        # @type Source: String
        # @param Sort: 排序参数
        # @type Sort: String
        # @param Ip: ip
        # @type Ip: String

        attr_accessor :Domain, :Count, :ActionType, :VtsMin, :VtsMax, :CtsMin, :CtsMax, :OffSet, :Limit, :Source, :Sort, :Ip
        
        def initialize(domain=nil, count=nil, actiontype=nil, vtsmin=nil, vtsmax=nil, ctsmin=nil, ctsmax=nil, offset=nil, limit=nil, source=nil, sort=nil, ip=nil)
          @Domain = domain
          @Count = count
          @ActionType = actiontype
          @VtsMin = vtsmin
          @VtsMax = vtsmax
          @CtsMin = ctsmin
          @CtsMax = ctsmax
          @OffSet = offset
          @Limit = limit
          @Source = source
          @Sort = sort
          @Ip = ip
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Count = params['Count']
          @ActionType = params['ActionType']
          @VtsMin = params['VtsMin']
          @VtsMax = params['VtsMax']
          @CtsMin = params['CtsMin']
          @CtsMax = params['CtsMax']
          @OffSet = params['OffSet']
          @Limit = params['Limit']
          @Source = params['Source']
          @Sort = params['Sort']
          @Ip = params['Ip']
        end
      end

      # DescribeIpAccessControl返回参数结构体
      class DescribeIpAccessControlResponse < TencentCloud::Common::AbstractModel
        # @param Data: 输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.IpAccessControlData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = IpAccessControlData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpHitItems请求参数结构体
      class DescribeIpHitItemsRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Count: 计数标识
        # @type Count: Integer
        # @param Category: 类别
        # @type Category: String
        # @param VtsMin: 有效时间最小时间戳
        # @type VtsMin: Integer
        # @param VtsMax: 有效时间最大时间戳
        # @type VtsMax: Integer
        # @param CtsMin: 创建时间最小时间戳
        # @type CtsMin: Integer
        # @param CtsMax: 创建时间最大时间戳
        # @type CtsMax: Integer
        # @param Skip: 偏移参数
        # @type Skip: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Name: 策略名称
        # @type Name: String
        # @param Sort: 排序参数
        # @type Sort: String
        # @param Ip: IP
        # @type Ip: String

        attr_accessor :Domain, :Count, :Category, :VtsMin, :VtsMax, :CtsMin, :CtsMax, :Skip, :Limit, :Name, :Sort, :Ip
        
        def initialize(domain=nil, count=nil, category=nil, vtsmin=nil, vtsmax=nil, ctsmin=nil, ctsmax=nil, skip=nil, limit=nil, name=nil, sort=nil, ip=nil)
          @Domain = domain
          @Count = count
          @Category = category
          @VtsMin = vtsmin
          @VtsMax = vtsmax
          @CtsMin = ctsmin
          @CtsMax = ctsmax
          @Skip = skip
          @Limit = limit
          @Name = name
          @Sort = sort
          @Ip = ip
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Count = params['Count']
          @Category = params['Category']
          @VtsMin = params['VtsMin']
          @VtsMax = params['VtsMax']
          @CtsMin = params['CtsMin']
          @CtsMax = params['CtsMax']
          @Skip = params['Skip']
          @Limit = params['Limit']
          @Name = params['Name']
          @Sort = params['Sort']
          @Ip = params['Ip']
        end
      end

      # DescribeIpHitItems返回参数结构体
      class DescribeIpHitItemsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.IpHitItemsData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = IpHitItemsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserCdcClbWafRegions请求参数结构体
      class DescribeUserCdcClbWafRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserCdcClbWafRegions返回参数结构体
      class DescribeUserCdcClbWafRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: CdcRegion的类型描述
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
              cdcregion_tmp = CdcRegion.new
              cdcregion_tmp.deserialize(i)
              @Data << cdcregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserClbWafRegions请求参数结构体
      class DescribeUserClbWafRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserClbWafRegions返回参数结构体
      class DescribeUserClbWafRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 地域（标准的ap-格式）列表
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
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWafAutoDenyRules请求参数结构体
      class DescribeWafAutoDenyRulesRequest < TencentCloud::Common::AbstractModel
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

      # DescribeWafAutoDenyRules返回参数结构体
      class DescribeWafAutoDenyRulesResponse < TencentCloud::Common::AbstractModel
        # @param AttackThreshold: 攻击次数阈值
        # @type AttackThreshold: Integer
        # @param TimeThreshold: 攻击时间阈值
        # @type TimeThreshold: Integer
        # @param DenyTimeThreshold: 自动封禁时间
        # @type DenyTimeThreshold: Integer
        # @param DefenseStatus: 自动封禁状态
        # @type DefenseStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttackThreshold, :TimeThreshold, :DenyTimeThreshold, :DefenseStatus, :RequestId
        
        def initialize(attackthreshold=nil, timethreshold=nil, denytimethreshold=nil, defensestatus=nil, requestid=nil)
          @AttackThreshold = attackthreshold
          @TimeThreshold = timethreshold
          @DenyTimeThreshold = denytimethreshold
          @DefenseStatus = defensestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @AttackThreshold = params['AttackThreshold']
          @TimeThreshold = params['TimeThreshold']
          @DenyTimeThreshold = params['DenyTimeThreshold']
          @DefenseStatus = params['DefenseStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWafAutoDenyStatus请求参数结构体
      class DescribeWafAutoDenyStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWafAutoDenyStatus返回参数结构体
      class DescribeWafAutoDenyStatusResponse < TencentCloud::Common::AbstractModel
        # @param WafAutoDenyDetails: WAF 自动封禁详情
        # @type WafAutoDenyDetails: :class:`Tencentcloud::Waf.v20180125.models.AutoDenyDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WafAutoDenyDetails, :RequestId
        
        def initialize(wafautodenydetails=nil, requestid=nil)
          @WafAutoDenyDetails = wafautodenydetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WafAutoDenyDetails'].nil?
            @WafAutoDenyDetails = AutoDenyDetail.new
            @WafAutoDenyDetails.deserialize(params['WafAutoDenyDetails'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWafThreatenIntelligence请求参数结构体
      class DescribeWafThreatenIntelligenceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWafThreatenIntelligence返回参数结构体
      class DescribeWafThreatenIntelligenceResponse < TencentCloud::Common::AbstractModel
        # @param WafThreatenIntelligenceDetails: WAF 威胁情报封禁信息
        # @type WafThreatenIntelligenceDetails: :class:`Tencentcloud::Waf.v20180125.models.WafThreatenIntelligenceDetails`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WafThreatenIntelligenceDetails, :RequestId
        
        def initialize(wafthreatenintelligencedetails=nil, requestid=nil)
          @WafThreatenIntelligenceDetails = wafthreatenintelligencedetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WafThreatenIntelligenceDetails'].nil?
            @WafThreatenIntelligenceDetails = WafThreatenIntelligenceDetails.new
            @WafThreatenIntelligenceDetails.deserialize(params['WafThreatenIntelligenceDetails'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 域名的详细信息
      class DomainInfo < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # clb-waf 域名扩展套餐
      class DomainPackageNew < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源ID
        # @type ResourceIds: String
        # @param ValidTime: 过期时间
        # @type ValidTime: String
        # @param RenewFlag: 是否自动续费，1：自动续费，0：不自动续费
        # @type RenewFlag: Integer
        # @param Count: 套餐购买个数
        # @type Count: Integer
        # @param Region: 套餐购买地域，clb-waf暂时没有用到
        # @type Region: String

        attr_accessor :ResourceIds, :ValidTime, :RenewFlag, :Count, :Region
        
        def initialize(resourceids=nil, validtime=nil, renewflag=nil, count=nil, region=nil)
          @ResourceIds = resourceids
          @ValidTime = validtime
          @RenewFlag = renewflag
          @Count = count
          @Region = region
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @ValidTime = params['ValidTime']
          @RenewFlag = params['RenewFlag']
          @Count = params['Count']
          @Region = params['Region']
        end
      end

      # 下载攻击日志记录数据项
      class DownloadAttackRecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID
        # @type Id: Integer
        # @param TaskName: 下载任务名
        # @type TaskName: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Host: 域名
        # @type Host: String
        # @param Count: 当前下载任务的日志条数
        # @type Count: Integer
        # @param Status: 下载任务运行状态：-1-下载超时，0-下载等待，1-下载完成，2-下载失败，4-正在下载
        # @type Status: Integer
        # @param Url: 下载文件URL
        # @type Url: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 最后更新修改时间
        # @type ModifyTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param TotalCount: 下载任务需下载的日志总条数
        # @type TotalCount: Integer

        attr_accessor :Id, :TaskName, :TaskId, :Host, :Count, :Status, :Url, :CreateTime, :ModifyTime, :ExpireTime, :TotalCount
        
        def initialize(id=nil, taskname=nil, taskid=nil, host=nil, count=nil, status=nil, url=nil, createtime=nil, modifytime=nil, expiretime=nil, totalcount=nil)
          @Id = id
          @TaskName = taskname
          @TaskId = taskid
          @Host = host
          @Count = count
          @Status = status
          @Url = url
          @CreateTime = createtime
          @ModifyTime = modifytime
          @ExpireTime = expiretime
          @TotalCount = totalcount
        end

        def deserialize(params)
          @Id = params['Id']
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          @Host = params['Host']
          @Count = params['Count']
          @Status = params['Status']
          @Url = params['Url']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @ExpireTime = params['ExpireTime']
          @TotalCount = params['TotalCount']
        end
      end

      # DescribeAccessExports接口
      class ExportAccessInfo < TencentCloud::Common::AbstractModel
        # @param ExportId: 日志导出任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExportId: String
        # @param Query: 日志导出查询语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Query: String
        # @param FileName: 日志导出文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileSize: 日志文件大小
        # @type FileSize: Integer
        # @param Order: 日志导出时间排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: String
        # @param Format: 日志导出格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Format: String
        # @param Count: 日志导出数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Status: 日志下载状态。Processing:导出正在进行中，Complete:导出完成，Failed:导出失败，Expired:日志导出已过期（三天有效期）
        # @type Status: String
        # @param From: 日志导出起始时间
        # @type From: Integer
        # @param To: 日志导出结束时间
        # @type To: Integer
        # @param CosPath: 日志导出路径
        # @type CosPath: String
        # @param CreateTime: 日志导出创建时间
        # @type CreateTime: String

        attr_accessor :ExportId, :Query, :FileName, :FileSize, :Order, :Format, :Count, :Status, :From, :To, :CosPath, :CreateTime
        
        def initialize(exportid=nil, query=nil, filename=nil, filesize=nil, order=nil, format=nil, count=nil, status=nil, from=nil, to=nil, cospath=nil, createtime=nil)
          @ExportId = exportid
          @Query = query
          @FileName = filename
          @FileSize = filesize
          @Order = order
          @Format = format
          @Count = count
          @Status = status
          @From = from
          @To = to
          @CosPath = cospath
          @CreateTime = createtime
        end

        def deserialize(params)
          @ExportId = params['ExportId']
          @Query = params['Query']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @Order = params['Order']
          @Format = params['Format']
          @Count = params['Count']
          @Status = params['Status']
          @From = params['From']
          @To = params['To']
          @CosPath = params['CosPath']
          @CreateTime = params['CreateTime']
        end
      end

      # 实例入参过滤器
      class FiltersItemNew < TencentCloud::Common::AbstractModel
        # @param Name: 字段名
        # @type Name: String
        # @param Values: 过滤值
        # @type Values: Array
        # @param ExactMatch: 是否精确查找
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 业务安全资源信息
      class FraudPkg < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Integer
        # @param BeginTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param InquireNum: 申请数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InquireNum: Integer
        # @param UsedNum: 使用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedNum: Integer

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum
        
        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @InquireNum = params['InquireNum']
          @UsedNum = params['UsedNum']
        end
      end

      # GetAttackDownloadRecords请求参数结构体
      class GetAttackDownloadRecordsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetAttackDownloadRecords返回参数结构体
      class GetAttackDownloadRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Records: 下载攻击日志记录数组
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :RequestId
        
        def initialize(records=nil, requestid=nil)
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              downloadattackrecordinfo_tmp = DownloadAttackRecordInfo.new
              downloadattackrecordinfo_tmp.deserialize(i)
              @Records << downloadattackrecordinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 一个实例的详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: id
        # @type InstanceId: String
        # @param InstanceName: name
        # @type InstanceName: String
        # @param ResourceIds: 资源id
        # @type ResourceIds: String
        # @param Region: 地域
        # @type Region: String
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param RenewFlag: 自动续费
        # @type RenewFlag: Integer
        # @param Mode: 弹性计费
        # @type Mode: Integer
        # @param Level: 套餐版本
        # @type Level: Integer
        # @param ValidTime: 过期时间
        # @type ValidTime: String
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param DomainCount: 已用
        # @type DomainCount: Integer
        # @param SubDomainLimit: 上限
        # @type SubDomainLimit: Integer
        # @param MainDomainCount: 已用
        # @type MainDomainCount: Integer
        # @param MainDomainLimit: 上限
        # @type MainDomainLimit: Integer
        # @param MaxQPS: 峰值
        # @type MaxQPS: Integer
        # @param QPS: qps套餐
        # @type QPS: :class:`Tencentcloud::Waf.v20180125.models.QPSPackageNew`
        # @param DomainPkg: 域名套餐
        # @type DomainPkg: :class:`Tencentcloud::Waf.v20180125.models.DomainPackageNew`
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param Edition: clb或saas
        # @type Edition: String
        # @param FraudPkg: 业务安全包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FraudPkg: :class:`Tencentcloud::Waf.v20180125.models.FraudPkg`
        # @param BotPkg: Bot资源包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotPkg: :class:`Tencentcloud::Waf.v20180125.models.BotPkg`
        # @param BotQPS: bot的qps详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotQPS: :class:`Tencentcloud::Waf.v20180125.models.BotQPS`
        # @param ElasticBilling: qps弹性计费上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticBilling: Integer

        attr_accessor :InstanceId, :InstanceName, :ResourceIds, :Region, :PayMode, :RenewFlag, :Mode, :Level, :ValidTime, :BeginTime, :DomainCount, :SubDomainLimit, :MainDomainCount, :MainDomainLimit, :MaxQPS, :QPS, :DomainPkg, :AppId, :Edition, :FraudPkg, :BotPkg, :BotQPS, :ElasticBilling
        
        def initialize(instanceid=nil, instancename=nil, resourceids=nil, region=nil, paymode=nil, renewflag=nil, mode=nil, level=nil, validtime=nil, begintime=nil, domaincount=nil, subdomainlimit=nil, maindomaincount=nil, maindomainlimit=nil, maxqps=nil, qps=nil, domainpkg=nil, appid=nil, edition=nil, fraudpkg=nil, botpkg=nil, botqps=nil, elasticbilling=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @ResourceIds = resourceids
          @Region = region
          @PayMode = paymode
          @RenewFlag = renewflag
          @Mode = mode
          @Level = level
          @ValidTime = validtime
          @BeginTime = begintime
          @DomainCount = domaincount
          @SubDomainLimit = subdomainlimit
          @MainDomainCount = maindomaincount
          @MainDomainLimit = maindomainlimit
          @MaxQPS = maxqps
          @QPS = qps
          @DomainPkg = domainpkg
          @AppId = appid
          @Edition = edition
          @FraudPkg = fraudpkg
          @BotPkg = botpkg
          @BotQPS = botqps
          @ElasticBilling = elasticbilling
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ResourceIds = params['ResourceIds']
          @Region = params['Region']
          @PayMode = params['PayMode']
          @RenewFlag = params['RenewFlag']
          @Mode = params['Mode']
          @Level = params['Level']
          @ValidTime = params['ValidTime']
          @BeginTime = params['BeginTime']
          @DomainCount = params['DomainCount']
          @SubDomainLimit = params['SubDomainLimit']
          @MainDomainCount = params['MainDomainCount']
          @MainDomainLimit = params['MainDomainLimit']
          @MaxQPS = params['MaxQPS']
          unless params['QPS'].nil?
            @QPS = QPSPackageNew.new
            @QPS.deserialize(params['QPS'])
          end
          unless params['DomainPkg'].nil?
            @DomainPkg = DomainPackageNew.new
            @DomainPkg.deserialize(params['DomainPkg'])
          end
          @AppId = params['AppId']
          @Edition = params['Edition']
          unless params['FraudPkg'].nil?
            @FraudPkg = FraudPkg.new
            @FraudPkg.deserialize(params['FraudPkg'])
          end
          unless params['BotPkg'].nil?
            @BotPkg = BotPkg.new
            @BotPkg.deserialize(params['BotPkg'])
          end
          unless params['BotQPS'].nil?
            @BotQPS = BotQPS.new
            @BotQPS.deserialize(params['BotQPS'])
          end
          @ElasticBilling = params['ElasticBilling']
        end
      end

      # 数据封装
      class IpAccessControlData < TencentCloud::Common::AbstractModel
        # @param Res: ip黑白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Res: Array
        # @param TotalCount: 计数
        # @type TotalCount: Integer

        attr_accessor :Res, :TotalCount
        
        def initialize(res=nil, totalcount=nil)
          @Res = res
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Res'].nil?
            @Res = []
            params['Res'].each do |i|
              ipaccesscontrolitem_tmp = IpAccessControlItem.new
              ipaccesscontrolitem_tmp.deserialize(i)
              @Res << ipaccesscontrolitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # ip黑白名单
      class IpAccessControlItem < TencentCloud::Common::AbstractModel
        # @param ActionType: 动作
        # @type ActionType: Integer
        # @param Ip: ip
        # @type Ip: String
        # @param Note: 备注
        # @type Note: String
        # @param Source: 来源
        # @type Source: String
        # @param TsVersion: 更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsVersion: Integer
        # @param ValidTs: 有效截止时间戳
        # @type ValidTs: Integer

        attr_accessor :ActionType, :Ip, :Note, :Source, :TsVersion, :ValidTs
        
        def initialize(actiontype=nil, ip=nil, note=nil, source=nil, tsversion=nil, validts=nil)
          @ActionType = actiontype
          @Ip = ip
          @Note = note
          @Source = source
          @TsVersion = tsversion
          @ValidTs = validts
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @Ip = params['Ip']
          @Note = params['Note']
          @Source = params['Source']
          @TsVersion = params['TsVersion']
          @ValidTs = params['ValidTs']
        end
      end

      # ip封堵状态数据
      class IpHitItem < TencentCloud::Common::AbstractModel
        # @param Action: 动作
        # @type Action: Integer
        # @param Category: 类别
        # @type Category: String
        # @param Ip: ip
        # @type Ip: String
        # @param Name: 规则名称
        # @type Name: String
        # @param TsVersion: 时间戳
        # @type TsVersion: Integer
        # @param ValidTs: 有效截止时间戳
        # @type ValidTs: Integer

        attr_accessor :Action, :Category, :Ip, :Name, :TsVersion, :ValidTs
        
        def initialize(action=nil, category=nil, ip=nil, name=nil, tsversion=nil, validts=nil)
          @Action = action
          @Category = category
          @Ip = ip
          @Name = name
          @TsVersion = tsversion
          @ValidTs = validts
        end

        def deserialize(params)
          @Action = params['Action']
          @Category = params['Category']
          @Ip = params['Ip']
          @Name = params['Name']
          @TsVersion = params['TsVersion']
          @ValidTs = params['ValidTs']
        end
      end

      # 封装参数
      class IpHitItemsData < TencentCloud::Common::AbstractModel
        # @param Res: 数组封装
        # @type Res: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer

        attr_accessor :Res, :TotalCount
        
        def initialize(res=nil, totalcount=nil)
          @Res = res
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Res'].nil?
            @Res = []
            params['Res'].each do |i|
              iphititem_tmp = IpHitItem.new
              iphititem_tmp.deserialize(i)
              @Res << iphititem_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # ModifyAccessPeriod请求参数结构体
      class ModifyAccessPeriodRequest < TencentCloud::Common::AbstractModel
        # @param Period: 访问日志保存期限，范围为[1, 30]
        # @type Period: Integer
        # @param TopicId: 日志主题
        # @type TopicId: String

        attr_accessor :Period, :TopicId
        
        def initialize(period=nil, topicid=nil)
          @Period = period
          @TopicId = topicid
        end

        def deserialize(params)
          @Period = params['Period']
          @TopicId = params['TopicId']
        end
      end

      # ModifyAccessPeriod返回参数结构体
      class ModifyAccessPeriodResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCustomRuleStatus请求参数结构体
      class ModifyCustomRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Status: 开关的状态，1是开启、0是关闭
        # @type Status: Integer
        # @param Edition: WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        # @type Edition: String

        attr_accessor :Domain, :RuleId, :Status, :Edition
        
        def initialize(domain=nil, ruleid=nil, status=nil, edition=nil)
          @Domain = domain
          @RuleId = ruleid
          @Status = status
          @Edition = edition
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
          @Status = params['Status']
          @Edition = params['Edition']
        end
      end

      # ModifyCustomRuleStatus返回参数结构体
      class ModifyCustomRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param Success: 操作的状态码，如果所有的资源操作成功则返回的是成功的状态码，如果有资源操作失败则需要解析Message的内容来查看哪个资源失败
        # @type Success: :class:`Tencentcloud::Waf.v20180125.models.ResponseCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId
        
        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = ResponseCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDomainWhiteRule请求参数结构体
      class ModifyDomainWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要更改的规则的域名
        # @type Domain: String
        # @param Id: 白名单id
        # @type Id: Integer
        # @param Rules: 规则的id列表
        # @type Rules: Array
        # @param Url: 规则匹配路径
        # @type Url: String
        # @param Function: 规则匹配方法
        # @type Function: String
        # @param Status: 规则的开关状态
        # @type Status: Integer

        attr_accessor :Domain, :Id, :Rules, :Url, :Function, :Status
        
        def initialize(domain=nil, id=nil, rules=nil, url=nil, function=nil, status=nil)
          @Domain = domain
          @Id = id
          @Rules = rules
          @Url = url
          @Function = function
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Id = params['Id']
          @Rules = params['Rules']
          @Url = params['Url']
          @Function = params['Function']
          @Status = params['Status']
        end
      end

      # ModifyDomainWhiteRule返回参数结构体
      class ModifyDomainWhiteRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWafAutoDenyRules请求参数结构体
      class ModifyWafAutoDenyRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param AttackThreshold: 攻击次数阈值
        # @type AttackThreshold: Integer
        # @param TimeThreshold: 攻击时间阈值
        # @type TimeThreshold: Integer
        # @param DenyTimeThreshold: 自动封禁时间
        # @type DenyTimeThreshold: Integer
        # @param DefenseStatus: 自动封禁状态
        # @type DefenseStatus: Integer

        attr_accessor :Domain, :AttackThreshold, :TimeThreshold, :DenyTimeThreshold, :DefenseStatus
        
        def initialize(domain=nil, attackthreshold=nil, timethreshold=nil, denytimethreshold=nil, defensestatus=nil)
          @Domain = domain
          @AttackThreshold = attackthreshold
          @TimeThreshold = timethreshold
          @DenyTimeThreshold = denytimethreshold
          @DefenseStatus = defensestatus
        end

        def deserialize(params)
          @Domain = params['Domain']
          @AttackThreshold = params['AttackThreshold']
          @TimeThreshold = params['TimeThreshold']
          @DenyTimeThreshold = params['DenyTimeThreshold']
          @DefenseStatus = params['DefenseStatus']
        end
      end

      # ModifyWafAutoDenyRules返回参数结构体
      class ModifyWafAutoDenyRulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功的状态码，需要JSON解码后再使用，返回的格式是{"域名":"状态"}，成功的状态码为Success，其它的为失败的状态码（yunapi定义的错误码）
        # @type Success: :class:`Tencentcloud::Waf.v20180125.models.ResponseCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId
        
        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = ResponseCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyWafAutoDenyStatus请求参数结构体
      class ModifyWafAutoDenyStatusRequest < TencentCloud::Common::AbstractModel
        # @param WafAutoDenyDetails: WAF 自动封禁配置项
        # @type WafAutoDenyDetails: :class:`Tencentcloud::Waf.v20180125.models.AutoDenyDetail`

        attr_accessor :WafAutoDenyDetails
        
        def initialize(wafautodenydetails=nil)
          @WafAutoDenyDetails = wafautodenydetails
        end

        def deserialize(params)
          unless params['WafAutoDenyDetails'].nil?
            @WafAutoDenyDetails = AutoDenyDetail.new
            @WafAutoDenyDetails.deserialize(params['WafAutoDenyDetails'])
          end
        end
      end

      # ModifyWafAutoDenyStatus返回参数结构体
      class ModifyWafAutoDenyStatusResponse < TencentCloud::Common::AbstractModel
        # @param WafAutoDenyDetails: WAF 自动封禁配置项
        # @type WafAutoDenyDetails: :class:`Tencentcloud::Waf.v20180125.models.AutoDenyDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WafAutoDenyDetails, :RequestId
        
        def initialize(wafautodenydetails=nil, requestid=nil)
          @WafAutoDenyDetails = wafautodenydetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WafAutoDenyDetails'].nil?
            @WafAutoDenyDetails = AutoDenyDetail.new
            @WafAutoDenyDetails.deserialize(params['WafAutoDenyDetails'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyWafThreatenIntelligence请求参数结构体
      class ModifyWafThreatenIntelligenceRequest < TencentCloud::Common::AbstractModel
        # @param WafThreatenIntelligenceDetails: 配置WAF威胁情报封禁模块详情
        # @type WafThreatenIntelligenceDetails: :class:`Tencentcloud::Waf.v20180125.models.WafThreatenIntelligenceDetails`

        attr_accessor :WafThreatenIntelligenceDetails
        
        def initialize(wafthreatenintelligencedetails=nil)
          @WafThreatenIntelligenceDetails = wafthreatenintelligencedetails
        end

        def deserialize(params)
          unless params['WafThreatenIntelligenceDetails'].nil?
            @WafThreatenIntelligenceDetails = WafThreatenIntelligenceDetails.new
            @WafThreatenIntelligenceDetails.deserialize(params['WafThreatenIntelligenceDetails'])
          end
        end
      end

      # ModifyWafThreatenIntelligence返回参数结构体
      class ModifyWafThreatenIntelligenceResponse < TencentCloud::Common::AbstractModel
        # @param WafThreatenIntelligenceDetails: 当前WAF威胁情报封禁模块详情
        # @type WafThreatenIntelligenceDetails: :class:`Tencentcloud::Waf.v20180125.models.WafThreatenIntelligenceDetails`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WafThreatenIntelligenceDetails, :RequestId
        
        def initialize(wafthreatenintelligencedetails=nil, requestid=nil)
          @WafThreatenIntelligenceDetails = wafthreatenintelligencedetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WafThreatenIntelligenceDetails'].nil?
            @WafThreatenIntelligenceDetails = WafThreatenIntelligenceDetails.new
            @WafThreatenIntelligenceDetails.deserialize(params['WafThreatenIntelligenceDetails'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 防护域名端口配置信息
      class PortItem < TencentCloud::Common::AbstractModel
        # @param Port: 监听端口配置
        # @type Port: String
        # @param Protocol: 与Port一一对应，表示端口对应的协议
        # @type Protocol: String
        # @param UpstreamPort: 与Port一一对应,  表示回源端口
        # @type UpstreamPort: String
        # @param UpstreamProtocol: 与Port一一对应,  表示回源协议
        # @type UpstreamProtocol: String
        # @param NginxServerId: Nginx的服务器ID
        # @type NginxServerId: String

        attr_accessor :Port, :Protocol, :UpstreamPort, :UpstreamProtocol, :NginxServerId
        
        def initialize(port=nil, protocol=nil, upstreamport=nil, upstreamprotocol=nil, nginxserverid=nil)
          @Port = port
          @Protocol = protocol
          @UpstreamPort = upstreamport
          @UpstreamProtocol = upstreamprotocol
          @NginxServerId = nginxserverid
        end

        def deserialize(params)
          @Port = params['Port']
          @Protocol = params['Protocol']
          @UpstreamPort = params['UpstreamPort']
          @UpstreamProtocol = params['UpstreamProtocol']
          @NginxServerId = params['NginxServerId']
        end
      end

      # PostAttackDownloadTask请求参数结构体
      class PostAttackDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 查询的域名，所有域名使用all
        # @type Domain: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param QueryString: Lucene语法
        # @type QueryString: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param Sort: 默认为desc，可以取值desc和asc
        # @type Sort: String

        attr_accessor :Domain, :StartTime, :EndTime, :QueryString, :TaskName, :Sort
        
        def initialize(domain=nil, starttime=nil, endtime=nil, querystring=nil, taskname=nil, sort=nil)
          @Domain = domain
          @StartTime = starttime
          @EndTime = endtime
          @QueryString = querystring
          @TaskName = taskname
          @Sort = sort
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryString = params['QueryString']
          @TaskName = params['TaskName']
          @Sort = params['Sort']
        end
      end

      # PostAttackDownloadTask返回参数结构体
      class PostAttackDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Flow: 任务task id
        # @type Flow: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Flow, :RequestId
        
        def initialize(flow=nil, requestid=nil)
          @Flow = flow
          @RequestId = requestid
        end

        def deserialize(params)
          @Flow = params['Flow']
          @RequestId = params['RequestId']
        end
      end

      # clb-waf QPS套餐 New
      class QPSPackageNew < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源ID
        # @type ResourceIds: String
        # @param ValidTime: 过期时间
        # @type ValidTime: String
        # @param RenewFlag: 是否自动续费，1：自动续费，0：不自动续费
        # @type RenewFlag: Integer
        # @param Count: 套餐购买个数
        # @type Count: Integer
        # @param Region: 套餐购买地域，clb-waf暂时没有用到
        # @type Region: String

        attr_accessor :ResourceIds, :ValidTime, :RenewFlag, :Count, :Region
        
        def initialize(resourceids=nil, validtime=nil, renewflag=nil, count=nil, region=nil)
          @ResourceIds = resourceids
          @ValidTime = validtime
          @RenewFlag = renewflag
          @Count = count
          @Region = region
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @ValidTime = params['ValidTime']
          @RenewFlag = params['RenewFlag']
          @Count = params['Count']
          @Region = params['Region']
        end
      end

      # 响应体的返回码
      class ResponseCode < TencentCloud::Common::AbstractModel
        # @param Code: 如果成功则返回Success，失败则返回yunapi定义的错误码
        # @type Code: String
        # @param Message: 如果成功则返回Success，失败则返回WAF定义的二级错误码
        # @type Message: String

        attr_accessor :Code, :Message
        
        def initialize(code=nil, message=nil)
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 规则白名单
      class RuleList < TencentCloud::Common::AbstractModel
        # @param Id: 规则Id
        # @type Id: Integer
        # @param Rules: 规则列表的id
        # @type Rules: Array
        # @param Url: 请求url
        # @type Url: String
        # @param Function: 请求的方法
        # @type Function: String
        # @param Time: 时间戳
        # @type Time: String
        # @param Status: 开关状态
        # @type Status: Integer

        attr_accessor :Id, :Rules, :Url, :Function, :Time, :Status
        
        def initialize(id=nil, rules=nil, url=nil, function=nil, time=nil, status=nil)
          @Id = id
          @Rules = rules
          @Url = url
          @Function = function
          @Time = time
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Rules = params['Rules']
          @Url = params['Url']
          @Function = params['Function']
          @Time = params['Time']
          @Status = params['Status']
        end
      end

      # SearchAccessLog请求参数结构体
      class SearchAccessLogRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 客户要查询的日志主题ID，每个客户都有对应的一个主题
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句，语句长度最大为4096
        # @type Query: String
        # @param Limit: 单次查询返回的日志条数，最大值为100
        # @type Limit: Integer
        # @param Context: 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容
        # @type Context: String
        # @param Sort: 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # @type Sort: String

        attr_accessor :TopicId, :From, :To, :Query, :Limit, :Context, :Sort
        
        def initialize(topicid=nil, from=nil, to=nil, query=nil, limit=nil, context=nil, sort=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Limit = limit
          @Context = context
          @Sort = sort
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
        end
      end

      # SearchAccessLog返回参数结构体
      class SearchAccessLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 加载后续内容的Context
        # @type Context: String
        # @param ListOver: 日志查询结果是否全部返回
        # @type ListOver: Boolean
        # @param Analysis: 返回的是否为分析结果
        # @type Analysis: Boolean
        # @param ColNames: 如果Analysis为True，则返回分析结果的列名，否则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColNames: Array
        # @param Results: 日志查询结果；当Analysis为True时，可能返回为null
        # 注意：此字段可能返回 null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param AnalysisResults: 日志分析结果；当Analysis为False时，可能返回为null
        # 注意：此字段可能返回 null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Analysis, :ColNames, :Results, :AnalysisResults, :RequestId
        
        def initialize(context=nil, listover=nil, analysis=nil, colnames=nil, results=nil, analysisresults=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Analysis = analysis
          @ColNames = colnames
          @Results = results
          @AnalysisResults = analysisresults
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          @Analysis = params['Analysis']
          @ColNames = params['ColNames']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              accessloginfo_tmp = AccessLogInfo.new
              accessloginfo_tmp.deserialize(i)
              @Results << accessloginfo_tmp
            end
          end
          unless params['AnalysisResults'].nil?
            @AnalysisResults = []
            params['AnalysisResults'].each do |i|
              accesslogitems_tmp = AccessLogItems.new
              accesslogitems_tmp.deserialize(i)
              @AnalysisResults << accesslogitems_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 自定义规则的匹配条件结构体
      class Strategy < TencentCloud::Common::AbstractModel
        # @param Field: 匹配字段
        # @type Field: String
        # @param CompareFunc: 逻辑符号
        # @type CompareFunc: String
        # @param Content: 匹配内容
        # @type Content: String
        # @param Arg: 匹配参数
        # @type Arg: String

        attr_accessor :Field, :CompareFunc, :Content, :Arg
        
        def initialize(field=nil, comparefunc=nil, content=nil, arg=nil)
          @Field = field
          @CompareFunc = comparefunc
          @Content = content
          @Arg = arg
        end

        def deserialize(params)
          @Field = params['Field']
          @CompareFunc = params['CompareFunc']
          @Content = params['Content']
          @Arg = params['Arg']
        end
      end

      # UpsertIpAccessControl请求参数结构体
      class UpsertIpAccessControlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Items: ip 参数列表，json数组由ip，source，note，action，valid_ts组成。ip对应配置的ip地址，source固定为custom值，note为注释，action值42为黑名单，40为白名单，valid_ts为有效日期，值为秒级时间戳
        # @type Items: Array
        # @param Edition: clb-waf或者sparta-waf
        # @type Edition: String
        # @param SourceType: 是否为多域名黑白名单
        # @type SourceType: String

        attr_accessor :Domain, :Items, :Edition, :SourceType
        
        def initialize(domain=nil, items=nil, edition=nil, sourcetype=nil)
          @Domain = domain
          @Items = items
          @Edition = edition
          @SourceType = sourcetype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Items = params['Items']
          @Edition = params['Edition']
          @SourceType = params['SourceType']
        end
      end

      # UpsertIpAccessControl返回参数结构体
      class UpsertIpAccessControlResponse < TencentCloud::Common::AbstractModel
        # @param FailedItems: 添加或修改失败的条目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedItems: String
        # @param FailedCount: 添加或修改失败的数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedItems, :FailedCount, :RequestId
        
        def initialize(faileditems=nil, failedcount=nil, requestid=nil)
          @FailedItems = faileditems
          @FailedCount = failedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedItems = params['FailedItems']
          @FailedCount = params['FailedCount']
          @RequestId = params['RequestId']
        end
      end

      # Waf 威胁情报封禁模块配置详情
      class WafThreatenIntelligenceDetails < TencentCloud::Common::AbstractModel
        # @param DefenseStatus: 封禁模组启用状态
        # @type DefenseStatus: Integer
        # @param Tags: 封禁属性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param LastUpdateTime: 最后更新时间
        # @type LastUpdateTime: String

        attr_accessor :DefenseStatus, :Tags, :LastUpdateTime
        
        def initialize(defensestatus=nil, tags=nil, lastupdatetime=nil)
          @DefenseStatus = defensestatus
          @Tags = tags
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @DefenseStatus = params['DefenseStatus']
          @Tags = params['Tags']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

    end
  end
end

