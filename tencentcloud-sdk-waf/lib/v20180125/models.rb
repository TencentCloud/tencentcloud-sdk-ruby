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

      # 用于接口DescribeAccessHistogram 的出参
      class AccessHistogramItem < TencentCloud::Common::AbstractModel
        # @param BTime: 时间，单位ms
        # @type BTime: Integer
        # @param Count: 日志条数
        # @type Count: Integer
        # @param BeginTime: 时间，单位ms
        # @type BeginTime: Integer

        attr_accessor :BTime, :Count, :BeginTime
        extend Gem::Deprecate
        deprecate :BTime, :none, 2023, 12
        deprecate :BTime=, :none, 2023, 12

        def initialize(btime=nil, count=nil, begintime=nil)
          @BTime = btime
          @Count = count
          @BeginTime = begintime
        end

        def deserialize(params)
          @BTime = params['BTime']
          @Count = params['Count']
          @BeginTime = params['BeginTime']
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

      # AddAntiFakeUrl请求参数结构体
      class AddAntiFakeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Name: 名称
        # @type Name: String
        # @param Uri: uri
        # @type Uri: String

        attr_accessor :Domain, :Name, :Uri

        def initialize(domain=nil, name=nil, uri=nil)
          @Domain = domain
          @Name = name
          @Uri = uri
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Name = params['Name']
          @Uri = params['Uri']
        end
      end

      # AddAntiFakeUrl返回参数结构体
      class AddAntiFakeUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果
        # @type Result: String
        # @param Id: 规则ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Id, :RequestId

        def initialize(result=nil, id=nil, requestid=nil)
          @Result = result
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # AddAntiInfoLeakRules请求参数结构体
      class AddAntiInfoLeakRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Name: 规则名称
        # @type Name: String
        # @param ActionType: 动作，0（告警）、1（替换）、2（仅显示前四位）、3（仅显示后四位）、4（阻断）
        # @type ActionType: Integer
        # @param Strategies: 策略详情
        # @type Strategies: Array
        # @param Uri: 网址
        # @type Uri: String

        attr_accessor :Domain, :Name, :ActionType, :Strategies, :Uri

        def initialize(domain=nil, name=nil, actiontype=nil, strategies=nil, uri=nil)
          @Domain = domain
          @Name = name
          @ActionType = actiontype
          @Strategies = strategies
          @Uri = uri
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Name = params['Name']
          @ActionType = params['ActionType']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategyforantiinfoleak_tmp = StrategyForAntiInfoLeak.new
              strategyforantiinfoleak_tmp.deserialize(i)
              @Strategies << strategyforantiinfoleak_tmp
            end
          end
          @Uri = params['Uri']
        end
      end

      # AddAntiInfoLeakRules返回参数结构体
      class AddAntiInfoLeakRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: Integer
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

      # AddAttackWhiteRule请求参数结构体
      class AddAttackWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param SignatureId: 规则Id
        # @type SignatureId: String
        # @param Status: 规则状态
        # @type Status: Integer
        # @param Rules: 匹配规则项列表
        # @type Rules: Array
        # @param RuleId: 规则序号
        # @type RuleId: Integer

        attr_accessor :Domain, :SignatureId, :Status, :Rules, :RuleId

        def initialize(domain=nil, signatureid=nil, status=nil, rules=nil, ruleid=nil)
          @Domain = domain
          @SignatureId = signatureid
          @Status = status
          @Rules = rules
          @RuleId = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @SignatureId = params['SignatureId']
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              userwhiteruleitem_tmp = UserWhiteRuleItem.new
              userwhiteruleitem_tmp.deserialize(i)
              @Rules << userwhiteruleitem_tmp
            end
          end
          @RuleId = params['RuleId']
        end
      end

      # AddAttackWhiteRule返回参数结构体
      class AddAttackWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则总数
        # @type RuleId: Integer
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

      # AddCustomRule请求参数结构体
      class AddCustomRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param SortId: 优先级
        # @type SortId: String
        # @param ExpireTime: 过期时间，单位为秒级时间戳，例如1677254399表示过期时间为2023-02-24 23:59:59. 0表示永不过期
        # @type ExpireTime: String
        # @param Strategies: 策略详情
        # @type Strategies: Array
        # @param Domain: 需要添加策略的域名
        # @type Domain: String
        # @param ActionType: 动作类型，1代表阻断，2代表人机识别，3代表观察，4代表重定向
        # @type ActionType: String
        # @param Redirect: 如果动作是重定向，则表示重定向的地址；其他情况可以为空
        # @type Redirect: String
        # @param Edition: WAF实例类型，sparta-waf表示SAAS型WAF，clb-waf表示负载均衡型WAF
        # @type Edition: String
        # @param Bypass: 放行的详情
        # @type Bypass: String
        # @param EventId: 添加规则的来源，默认为空
        # @type EventId: String

        attr_accessor :Name, :SortId, :ExpireTime, :Strategies, :Domain, :ActionType, :Redirect, :Edition, :Bypass, :EventId

        def initialize(name=nil, sortid=nil, expiretime=nil, strategies=nil, domain=nil, actiontype=nil, redirect=nil, edition=nil, bypass=nil, eventid=nil)
          @Name = name
          @SortId = sortid
          @ExpireTime = expiretime
          @Strategies = strategies
          @Domain = domain
          @ActionType = actiontype
          @Redirect = redirect
          @Edition = edition
          @Bypass = bypass
          @EventId = eventid
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
          @EventId = params['EventId']
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

      # AddCustomWhiteRule请求参数结构体
      class AddCustomWhiteRuleRequest < TencentCloud::Common::AbstractModel
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
        # @param Bypass: 放行的详情
        # @type Bypass: String

        attr_accessor :Name, :SortId, :ExpireTime, :Strategies, :Domain, :Bypass

        def initialize(name=nil, sortid=nil, expiretime=nil, strategies=nil, domain=nil, bypass=nil)
          @Name = name
          @SortId = sortid
          @ExpireTime = expiretime
          @Strategies = strategies
          @Domain = domain
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
          @Bypass = params['Bypass']
        end
      end

      # AddCustomWhiteRule返回参数结构体
      class AddCustomWhiteRuleResponse < TencentCloud::Common::AbstractModel
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
        # @param Status: 规则的开关，0表示规则关闭，1表示规则打开
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
        # @param Domain: 需要防护的域名
        # @type Domain: String
        # @param CertType: 证书类型。
        # 0：仅配置HTTP监听端口，没有证书
        # 1：证书来源为自有证书
        # 2：证书来源为托管证书
        # @type CertType: Integer
        # @param IsCdn: waf前是否部署有七层代理服务。
        # 0：没有部署代理服务
        # 1：有部署代理服务，waf将使用XFF获取客户端IP
        # 2：有部署代理服务，waf将使用remote_addr获取客户端IP
        # 3：有部署代理服务，waf将使用ip_headers中的自定义header获取客户端IP
        # @type IsCdn: Integer
        # @param UpstreamType: 回源类型。
        # 0：通过IP回源
        # 1：通过域名回源
        # @type UpstreamType: Integer
        # @param IsWebsocket: 是否开启WebSocket支持。
        # 0：关闭
        # 1：开启
        # @type IsWebsocket: Integer
        # @param LoadBalance: 回源负载均衡策略。
        # 0：轮询
        # 1：IP hash
        # 2：加权轮询
        # @type LoadBalance: String
        # @param Cert: CertType为1时，需要填充此参数，表示自有证书的证书链
        # @type Cert: String
        # @param PrivateKey: CertType为1时，需要填充此参数，表示自有证书的私钥
        # @type PrivateKey: String
        # @param SSLId: CertType为2时，需要填充此参数，表示腾讯云SSL平台托管的证书id
        # @type SSLId: String
        # @param ResourceId: 待废弃，可不填。Waf的资源ID。
        # @type ResourceId: String
        # @param IpHeaders: IsCdn为3时，需要填此参数，表示自定义header
        # @type IpHeaders: Array
        # @param UpstreamScheme: 服务配置有HTTPS端口时，HTTPS的回源协议。
        # http：使用http协议回源，和HttpsUpstreamPort配合使用
        # https：使用https协议回源
        # @type UpstreamScheme: String
        # @param HttpsUpstreamPort: HTTPS回源端口,仅UpstreamScheme为http时需要填当前字段
        # @type HttpsUpstreamPort: String
        # @param IsGray: 待废弃，可不填。是否开启灰度，0表示不开启灰度。
        # @type IsGray: Integer
        # @param GrayAreas: 待废弃，可不填。灰度的地区
        # @type GrayAreas: Array
        # @param HttpsRewrite: 是否开启HTTP强制跳转到HTTPS。
        # 0：不强制跳转
        # 1：开启强制跳转
        # @type HttpsRewrite: Integer
        # @param UpstreamDomain: 域名回源时的回源域名。UpstreamType为1时，需要填充此字段
        # @type UpstreamDomain: String
        # @param SrcList: IP回源时的回源IP列表。UpstreamType为0时，需要填充此字段
        # @type SrcList: Array
        # @param IsHttp2: 是否开启HTTP2，需要开启HTTPS协议支持。
        # 0：关闭
        # 1：开启
        # @type IsHttp2: Integer
        # @param Ports: 服务端口列表配置。
        # NginxServerId：新增域名时填'0'
        # Port：监听端口号
        # Protocol：端口协议
        # UpstreamPort：与Port相同
        # UpstreamProtocol：与Protocol相同
        # @type Ports: Array
        # @param Edition: 待废弃，可不填。WAF实例类型。
        # sparta-waf：SAAS型WAF
        # clb-waf：负载均衡型WAF
        # cdn-waf：CDN上的Web防护能力
        # @type Edition: String
        # @param IsKeepAlive: 是否开启长连接。
        # 0： 短连接
        # 1： 长连接
        # @type IsKeepAlive: String
        # @param InstanceID: 域名所属实例id
        # @type InstanceID: String
        # @param Anycast: 待废弃，目前填0即可。anycast IP类型开关： 0 普通IP 1 Anycast IP
        # @type Anycast: Integer
        # @param Weights: 回源IP列表各IP的权重，和SrcList一一对应。当且仅当UpstreamType为0，并且SrcList有多个IP，并且LoadBalance为2时需要填写，否则填 []
        # @type Weights: Array
        # @param ActiveCheck: 是否开启主动健康检测。
        # 0：不开启
        # 1：开启
        # @type ActiveCheck: Integer
        # @param TLSVersion: TLS版本信息
        # @type TLSVersion: Integer
        # @param CipherTemplate: 加密套件模板。
        # 0：不支持选择，使用默认模板
        # 1：通用型模板
        # 2：安全型模板
        # 3：自定义模板
        # @type CipherTemplate: Integer
        # @param Ciphers: 自定义的加密套件列表。CipherTemplate为3时需要填此字段，表示自定义的加密套件，值通过DescribeCiphersDetail接口获取。
        # @type Ciphers: Array
        # @param ProxyReadTimeout: WAF与源站的读超时时间，默认300s。
        # @type ProxyReadTimeout: Integer
        # @param ProxySendTimeout: WAF与源站的写超时时间，默认300s。
        # @type ProxySendTimeout: Integer
        # @param SniType: WAF回源时的SNI类型。
        # 0：关闭SNI，不配置client_hello中的server_name
        # 1：开启SNI，client_hello中的server_name为防护域名
        # 2：开启SNI，SNI为域名回源时的源站域名
        # 3：开启SNI，SNI为自定义域名
        # @type SniType: Integer
        # @param SniHost: SniType为3时，需要填此参数，表示自定义的SNI；
        # @type SniHost: String
        # @param XFFReset: 是否开启XFF重置。
        # 0：关闭
        # 1：开启
        # @type XFFReset: Integer

        attr_accessor :Domain, :CertType, :IsCdn, :UpstreamType, :IsWebsocket, :LoadBalance, :Cert, :PrivateKey, :SSLId, :ResourceId, :IpHeaders, :UpstreamScheme, :HttpsUpstreamPort, :IsGray, :GrayAreas, :HttpsRewrite, :UpstreamDomain, :SrcList, :IsHttp2, :Ports, :Edition, :IsKeepAlive, :InstanceID, :Anycast, :Weights, :ActiveCheck, :TLSVersion, :CipherTemplate, :Ciphers, :ProxyReadTimeout, :ProxySendTimeout, :SniType, :SniHost, :XFFReset

        def initialize(domain=nil, certtype=nil, iscdn=nil, upstreamtype=nil, iswebsocket=nil, loadbalance=nil, cert=nil, privatekey=nil, sslid=nil, resourceid=nil, ipheaders=nil, upstreamscheme=nil, httpsupstreamport=nil, isgray=nil, grayareas=nil, httpsrewrite=nil, upstreamdomain=nil, srclist=nil, ishttp2=nil, ports=nil, edition=nil, iskeepalive=nil, instanceid=nil, anycast=nil, weights=nil, activecheck=nil, tlsversion=nil, ciphertemplate=nil, ciphers=nil, proxyreadtimeout=nil, proxysendtimeout=nil, snitype=nil, snihost=nil, xffreset=nil)
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
          @IpHeaders = ipheaders
          @UpstreamScheme = upstreamscheme
          @HttpsUpstreamPort = httpsupstreamport
          @IsGray = isgray
          @GrayAreas = grayareas
          @HttpsRewrite = httpsrewrite
          @UpstreamDomain = upstreamdomain
          @SrcList = srclist
          @IsHttp2 = ishttp2
          @Ports = ports
          @Edition = edition
          @IsKeepAlive = iskeepalive
          @InstanceID = instanceid
          @Anycast = anycast
          @Weights = weights
          @ActiveCheck = activecheck
          @TLSVersion = tlsversion
          @CipherTemplate = ciphertemplate
          @Ciphers = ciphers
          @ProxyReadTimeout = proxyreadtimeout
          @ProxySendTimeout = proxysendtimeout
          @SniType = snitype
          @SniHost = snihost
          @XFFReset = xffreset
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
          @IpHeaders = params['IpHeaders']
          @UpstreamScheme = params['UpstreamScheme']
          @HttpsUpstreamPort = params['HttpsUpstreamPort']
          @IsGray = params['IsGray']
          @GrayAreas = params['GrayAreas']
          @HttpsRewrite = params['HttpsRewrite']
          @UpstreamDomain = params['UpstreamDomain']
          @SrcList = params['SrcList']
          @IsHttp2 = params['IsHttp2']
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
          @CipherTemplate = params['CipherTemplate']
          @Ciphers = params['Ciphers']
          @ProxyReadTimeout = params['ProxyReadTimeout']
          @ProxySendTimeout = params['ProxySendTimeout']
          @SniType = params['SniType']
          @SniHost = params['SniHost']
          @XFFReset = params['XFFReset']
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

      # API安全资源信息
      class ApiPkg < TencentCloud::Common::AbstractModel
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
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param BillingItem: 计费项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingItem: String
        # @param IsAPISecurityTrial: api安全7天试用标识。1试用。0没试用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAPISecurityTrial: Integer

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum, :RenewFlag, :BillingItem, :IsAPISecurityTrial

        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil, renewflag=nil, billingitem=nil, isapisecuritytrial=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
          @RenewFlag = renewflag
          @BillingItem = billingitem
          @IsAPISecurityTrial = isapisecuritytrial
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @InquireNum = params['InquireNum']
          @UsedNum = params['UsedNum']
          @RenewFlag = params['RenewFlag']
          @BillingItem = params['BillingItem']
          @IsAPISecurityTrial = params['IsAPISecurityTrial']
        end
      end

      # 攻击日志详情
      class AttackLogInfo < TencentCloud::Common::AbstractModel
        # @param Content: 攻击日志的详情内容
        # @type Content: String
        # @param FileName: CLS返回内容
        # @type FileName: String
        # @param Source: CLS返回内容
        # @type Source: String
        # @param TimeStamp: CLS返回内容
        # @type TimeStamp: String

        attr_accessor :Content, :FileName, :Source, :TimeStamp

        def initialize(content=nil, filename=nil, source=nil, timestamp=nil)
          @Content = content
          @FileName = filename
          @Source = source
          @TimeStamp = timestamp
        end

        def deserialize(params)
          @Content = params['Content']
          @FileName = params['FileName']
          @Source = params['Source']
          @TimeStamp = params['TimeStamp']
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

      # 多域名黑白名单describe返回
      class BatchIpAccessControlData < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Res: 黑白名单条目
        # @type Res: Array

        attr_accessor :TotalCount, :Res

        def initialize(totalcount=nil, res=nil)
          @TotalCount = totalcount
          @Res = res
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Res'].nil?
            @Res = []
            params['Res'].each do |i|
              batchipaccesscontrolitem_tmp = BatchIpAccessControlItem.new
              batchipaccesscontrolitem_tmp.deserialize(i)
              @Res << batchipaccesscontrolitem_tmp
            end
          end
        end
      end

      # 多域名黑白名单列表Ip
      class BatchIpAccessControlItem < TencentCloud::Common::AbstractModel
        # @param Id: mongo表自增Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param ActionType: 黑名单42或白名单40
        # @type ActionType: Integer
        # @param Ip: 黑白名单的IP
        # @type Ip: String
        # @param Note: 备注
        # @type Note: String
        # @param Source: 添加路径
        # @type Source: String
        # @param TsVersion: 修改时间
        # @type TsVersion: Integer
        # @param ValidTs: 超时时间
        # @type ValidTs: Integer
        # @param Hosts: 域名列表
        # @type Hosts: Array

        attr_accessor :Id, :ActionType, :Ip, :Note, :Source, :TsVersion, :ValidTs, :Hosts

        def initialize(id=nil, actiontype=nil, ip=nil, note=nil, source=nil, tsversion=nil, validts=nil, hosts=nil)
          @Id = id
          @ActionType = actiontype
          @Ip = ip
          @Note = note
          @Source = source
          @TsVersion = tsversion
          @ValidTs = validts
          @Hosts = hosts
        end

        def deserialize(params)
          @Id = params['Id']
          @ActionType = params['ActionType']
          @Ip = params['Ip']
          @Note = params['Note']
          @Source = params['Source']
          @TsVersion = params['TsVersion']
          @ValidTs = params['ValidTs']
          @Hosts = params['Hosts']
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
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param BotCPWaf: 购买页bot6折
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotCPWaf: Integer
        # @param BotNPWaf: 控制台买bot5折
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotNPWaf: Integer
        # @param IsBotTrial: 7天bot试用标识 1 试用 0 没有试用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBotTrial: Integer

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum, :Type, :RenewFlag, :BotCPWaf, :BotNPWaf, :IsBotTrial

        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil, type=nil, renewflag=nil, botcpwaf=nil, botnpwaf=nil, isbottrial=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
          @Type = type
          @RenewFlag = renewflag
          @BotCPWaf = botcpwaf
          @BotNPWaf = botnpwaf
          @IsBotTrial = isbottrial
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
          @RenewFlag = params['RenewFlag']
          @BotCPWaf = params['BotCPWaf']
          @BotNPWaf = params['BotNPWaf']
          @IsBotTrial = params['IsBotTrial']
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
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer

        attr_accessor :ResourceIds, :ValidTime, :Count, :Region, :MaxBotQPS, :RenewFlag

        def initialize(resourceids=nil, validtime=nil, count=nil, region=nil, maxbotqps=nil, renewflag=nil)
          @ResourceIds = resourceids
          @ValidTime = validtime
          @Count = count
          @Region = region
          @MaxBotQPS = maxbotqps
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @ValidTime = params['ValidTime']
          @Count = params['Count']
          @Region = params['Region']
          @MaxBotQPS = params['MaxBotQPS']
          @RenewFlag = params['RenewFlag']
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

      # 数据封装
      class CCRuleData < TencentCloud::Common::AbstractModel
        # @param Res: cc规则
        # @type Res: Array
        # @param TotalCount: 规则数目
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
              ccruleitem_tmp = CCRuleItem.new
              ccruleitem_tmp.deserialize(i)
              @Res << ccruleitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # cc规则
      class CCRuleItem < TencentCloud::Common::AbstractModel
        # @param ActionType: 动作
        # @type ActionType: Integer
        # @param Advance: 高级模式
        # @type Advance: Integer
        # @param Interval: 时间周期
        # @type Interval: Integer
        # @param Limit: 限制次数
        # @type Limit: Integer
        # @param MatchFunc: 匹配方法
        # @type MatchFunc: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Status: 状态
        # @type Status: Integer
        # @param TsVersion: 更新时间戳
        # @type TsVersion: Integer
        # @param Url: 匹配url
        # @type Url: String
        # @param ValidTime: 策略动作有效时间
        # @type ValidTime: Integer
        # @param OptionsArr: 高级参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptionsArr: String

        attr_accessor :ActionType, :Advance, :Interval, :Limit, :MatchFunc, :Name, :Priority, :Status, :TsVersion, :Url, :ValidTime, :OptionsArr

        def initialize(actiontype=nil, advance=nil, interval=nil, limit=nil, matchfunc=nil, name=nil, priority=nil, status=nil, tsversion=nil, url=nil, validtime=nil, optionsarr=nil)
          @ActionType = actiontype
          @Advance = advance
          @Interval = interval
          @Limit = limit
          @MatchFunc = matchfunc
          @Name = name
          @Priority = priority
          @Status = status
          @TsVersion = tsversion
          @Url = url
          @ValidTime = validtime
          @OptionsArr = optionsarr
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @Advance = params['Advance']
          @Interval = params['Interval']
          @Limit = params['Limit']
          @MatchFunc = params['MatchFunc']
          @Name = params['Name']
          @Priority = params['Priority']
          @Status = params['Status']
          @TsVersion = params['TsVersion']
          @Url = params['Url']
          @ValidTime = params['ValidTime']
          @OptionsArr = params['OptionsArr']
        end
      end

      # CC规则详情
      class CCRuleItems < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # @type Name: String
        # @param Status: 状态
        # @type Status: Integer
        # @param Advance: 模式
        # @type Advance: Integer
        # @param Limit: 限制
        # @type Limit: Integer
        # @param Interval: 范围
        # @type Interval: Integer
        # @param Url: 网址
        # @type Url: String
        # @param MatchFunc: 匹配类型
        # @type MatchFunc: Integer
        # @param ActionType: 动作
        # @type ActionType: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param ValidTime: 有效时间
        # @type ValidTime: Integer
        # @param TsVersion: 版本
        # @type TsVersion: Integer
        # @param Options: 规则详情
        # @type Options: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param SessionApplied: 关联的Session规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionApplied: Array

        attr_accessor :Name, :Status, :Advance, :Limit, :Interval, :Url, :MatchFunc, :ActionType, :Priority, :ValidTime, :TsVersion, :Options, :RuleId, :EventId, :SessionApplied

        def initialize(name=nil, status=nil, advance=nil, limit=nil, interval=nil, url=nil, matchfunc=nil, actiontype=nil, priority=nil, validtime=nil, tsversion=nil, options=nil, ruleid=nil, eventid=nil, sessionapplied=nil)
          @Name = name
          @Status = status
          @Advance = advance
          @Limit = limit
          @Interval = interval
          @Url = url
          @MatchFunc = matchfunc
          @ActionType = actiontype
          @Priority = priority
          @ValidTime = validtime
          @TsVersion = tsversion
          @Options = options
          @RuleId = ruleid
          @EventId = eventid
          @SessionApplied = sessionapplied
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @Advance = params['Advance']
          @Limit = params['Limit']
          @Interval = params['Interval']
          @Url = params['Url']
          @MatchFunc = params['MatchFunc']
          @ActionType = params['ActionType']
          @Priority = params['Priority']
          @ValidTime = params['ValidTime']
          @TsVersion = params['TsVersion']
          @Options = params['Options']
          @RuleId = params['RuleId']
          @EventId = params['EventId']
          @SessionApplied = params['SessionApplied']
        end
      end

      # CC规则总览
      class CCRuleLists < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Res: 规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Res: Array

        attr_accessor :TotalCount, :Res

        def initialize(totalcount=nil, res=nil)
          @TotalCount = totalcount
          @Res = res
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Res'].nil?
            @Res = []
            params['Res'].each do |i|
              ccruleitems_tmp = CCRuleItems.new
              ccruleitems_tmp.deserialize(i)
              @Res << ccruleitems_tmp
            end
          end
        end
      end

      # 防篡改url元素
      class CacheUrlItem < TencentCloud::Common::AbstractModel
        # @param Id: Id
        # @type Id: String
        # @param Name: 名称
        # @type Name: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Uri: uri
        # @type Uri: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Status: 状态
        # @type Status: String

        attr_accessor :Id, :Name, :Domain, :Uri, :Protocol, :Status

        def initialize(id=nil, name=nil, domain=nil, uri=nil, protocol=nil, status=nil)
          @Id = id
          @Name = name
          @Domain = domain
          @Uri = uri
          @Protocol = protocol
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Domain = params['Domain']
          @Uri = params['Uri']
          @Protocol = params['Protocol']
          @Status = params['Status']
        end
      end

      # 防篡改url元素
      class CacheUrlItems < TencentCloud::Common::AbstractModel
        # @param Id: 标识
        # @type Id: Integer
        # @param Name: 名字
        # @type Name: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Uri: 网址
        # @type Uri: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Status: 状态
        # @type Status: Integer

        attr_accessor :Id, :Name, :Domain, :Uri, :Protocol, :Status

        def initialize(id=nil, name=nil, domain=nil, uri=nil, protocol=nil, status=nil)
          @Id = id
          @Name = name
          @Domain = domain
          @Uri = uri
          @Protocol = protocol
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Domain = params['Domain']
          @Uri = params['Uri']
          @Protocol = params['Protocol']
          @Status = params['Status']
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

      # clb域名详情
      class ClbDomainsInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名id
        # @type DomainId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param Edition: waf类型
        # @type Edition: String
        # @param IsCdn: 是否是cdn
        # @type IsCdn: Integer
        # @param LoadBalancerSet: 负载均衡算法
        # @type LoadBalancerSet: Array
        # @param FlowMode: 镜像模式
        # @type FlowMode: Integer
        # @param State: 绑定clb状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param AlbType: 负载均衡类型，clb或者apisix
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbType: String
        # @param IpHeaders: IsCdn=3时，表示自定义header
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpHeaders: Array
        # @param CdcClusters: cdc类型会增加集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcClusters: String
        # @param CloudType: 云类型:public:公有云；private:私有云;hybrid:混合云
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: String

        attr_accessor :Domain, :DomainId, :InstanceId, :InstanceName, :Edition, :IsCdn, :LoadBalancerSet, :FlowMode, :State, :AlbType, :IpHeaders, :CdcClusters, :CloudType

        def initialize(domain=nil, domainid=nil, instanceid=nil, instancename=nil, edition=nil, iscdn=nil, loadbalancerset=nil, flowmode=nil, state=nil, albtype=nil, ipheaders=nil, cdcclusters=nil, cloudtype=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceId = instanceid
          @InstanceName = instancename
          @Edition = edition
          @IsCdn = iscdn
          @LoadBalancerSet = loadbalancerset
          @FlowMode = flowmode
          @State = state
          @AlbType = albtype
          @IpHeaders = ipheaders
          @CdcClusters = cdcclusters
          @CloudType = cloudtype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Edition = params['Edition']
          @IsCdn = params['IsCdn']
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancerpackagenew_tmp = LoadBalancerPackageNew.new
              loadbalancerpackagenew_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancerpackagenew_tmp
            end
          end
          @FlowMode = params['FlowMode']
          @State = params['State']
          @AlbType = params['AlbType']
          @IpHeaders = params['IpHeaders']
          @CdcClusters = params['CdcClusters']
          @CloudType = params['CloudType']
        end
      end

      # CLB查询对应绑定的WAF状态的结果参数
      class ClbHostResult < TencentCloud::Common::AbstractModel
        # @param LoadBalancer: WAF绑定的监听器实例
        # @type LoadBalancer: :class:`Tencentcloud::Waf.v20180125.models.LoadBalancer`
        # @param Domain: WAF绑定的域名
        # @type Domain: String
        # @param DomainId: WAF绑定的实例ID
        # @type DomainId: String
        # @param Status: 是否有绑定WAF，1：绑定了WAF，0：没有绑定WAF
        # @type Status: Integer
        # @param FlowMode: 绑定了WAF的情况下，WAF流量模式，1：清洗模式，0：镜像模式（默认）
        # @type FlowMode: Integer

        attr_accessor :LoadBalancer, :Domain, :DomainId, :Status, :FlowMode

        def initialize(loadbalancer=nil, domain=nil, domainid=nil, status=nil, flowmode=nil)
          @LoadBalancer = loadbalancer
          @Domain = domain
          @DomainId = domainid
          @Status = status
          @FlowMode = flowmode
        end

        def deserialize(params)
          unless params['LoadBalancer'].nil?
            @LoadBalancer = LoadBalancer.new
            @LoadBalancer.deserialize(params['LoadBalancer'])
          end
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Status = params['Status']
          @FlowMode = params['FlowMode']
        end
      end

      # CLB回调WAF接口（获取、删除）的参数
      class ClbHostsParams < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，如果不传次参数则默认认为操作的是整个AppId的监听器，如果此参数不为空则认为操作的是对应负载均衡实例。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID，，如果不传次参数则默认认为操作的是整个负载均衡实例，如果此参数不为空则认为操作的是对应负载均衡监听器。
        # @type ListenerId: String
        # @param DomainId: WAF实例ID，，如果不传次参数则默认认为操作的是整个负载均衡监听器实例，如果此参数不为空则认为操作的是对应负载均衡监听器的某一个具体的域名。
        # @type DomainId: String

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
        end
      end

      # Clb类型防护对象
      class ClbObject < TencentCloud::Common::AbstractModel
        # @param ObjectId: 对象ID
        # @type ObjectId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param PreciseDomains: 精准域名列表
        # @type PreciseDomains: Array
        # @param Status: WAF功能开关状态，0关闭1开启
        # @type Status: Integer
        # @param ClsStatus: WAF日志开关状态，0关闭1开启
        # @type ClsStatus: Integer
        # @param VirtualDomain: CLB对象对应的虚拟域名
        # @type VirtualDomain: String
        # @param ObjectName: 对象名称
        # @type ObjectName: String
        # @param PublicIp: 公网地址
        # @type PublicIp: Array
        # @param PrivateIp: 内网地址
        # @type PrivateIp: Array
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param Vpc: VPC ID
        # @type Vpc: String
        # @param InstanceLevel: waf实例等级，如果未绑定实例为0
        # @type InstanceLevel: Integer
        # @param PostCLSStatus: clb投递开关
        # @type PostCLSStatus: Integer
        # @param PostCKafkaStatus: kafka投递开关
        # @type PostCKafkaStatus: Integer
        # @param Type: 对象类型：CLB:负载均衡器，TSE:云原生网关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Region: 对象地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :ObjectId, :InstanceId, :InstanceName, :PreciseDomains, :Status, :ClsStatus, :VirtualDomain, :ObjectName, :PublicIp, :PrivateIp, :VpcName, :Vpc, :InstanceLevel, :PostCLSStatus, :PostCKafkaStatus, :Type, :Region

        def initialize(objectid=nil, instanceid=nil, instancename=nil, precisedomains=nil, status=nil, clsstatus=nil, virtualdomain=nil, objectname=nil, publicip=nil, privateip=nil, vpcname=nil, vpc=nil, instancelevel=nil, postclsstatus=nil, postckafkastatus=nil, type=nil, region=nil)
          @ObjectId = objectid
          @InstanceId = instanceid
          @InstanceName = instancename
          @PreciseDomains = precisedomains
          @Status = status
          @ClsStatus = clsstatus
          @VirtualDomain = virtualdomain
          @ObjectName = objectname
          @PublicIp = publicip
          @PrivateIp = privateip
          @VpcName = vpcname
          @Vpc = vpc
          @InstanceLevel = instancelevel
          @PostCLSStatus = postclsstatus
          @PostCKafkaStatus = postckafkastatus
          @Type = type
          @Region = region
        end

        def deserialize(params)
          @ObjectId = params['ObjectId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @PreciseDomains = params['PreciseDomains']
          @Status = params['Status']
          @ClsStatus = params['ClsStatus']
          @VirtualDomain = params['VirtualDomain']
          @ObjectName = params['ObjectName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @VpcName = params['VpcName']
          @Vpc = params['Vpc']
          @InstanceLevel = params['InstanceLevel']
          @PostCLSStatus = params['PostCLSStatus']
          @PostCKafkaStatus = params['PostCKafkaStatus']
          @Type = params['Type']
          @Region = params['Region']
        end
      end

      # Clb-waf地域信息
      class ClbWafRegionItem < TencentCloud::Common::AbstractModel
        # @param Id: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Text: 地域中文说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 地域英文全拼
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Code: 地域编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String

        attr_accessor :Id, :Text, :Value, :Code

        def initialize(id=nil, text=nil, value=nil, code=nil)
          @Id = id
          @Text = text
          @Value = value
          @Code = code
        end

        def deserialize(params)
          @Id = params['Id']
          @Text = params['Text']
          @Value = params['Value']
          @Code = params['Code']
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

      # CreateHost请求参数结构体
      class CreateHostRequest < TencentCloud::Common::AbstractModel
        # @param Host: 防护域名配置信息
        # @type Host: :class:`Tencentcloud::Waf.v20180125.models.HostRecord`
        # @param InstanceID: 实例id
        # @type InstanceID: String

        attr_accessor :Host, :InstanceID

        def initialize(host=nil, instanceid=nil)
          @Host = host
          @InstanceID = instanceid
        end

        def deserialize(params)
          unless params['Host'].nil?
            @Host = HostRecord.new
            @Host.deserialize(params['Host'])
          end
          @InstanceID = params['InstanceID']
        end
      end

      # CreateHost返回参数结构体
      class CreateHostResponse < TencentCloud::Common::AbstractModel
        # @param DomainId: 新增防护域名ID
        # @type DomainId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainId, :RequestId

        def initialize(domainid=nil, requestid=nil)
          @DomainId = domainid
          @RequestId = requestid
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @RequestId = params['RequestId']
        end
      end

      # 计费下单响应实体
      class DealData < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表，元素个数与请求包的goods数组的元素个数一致，商品详情与订单按顺序对应
        # @type DealNames: Array
        # @param BigDealId: 大订单号，一个大订单号下可以有多个子订单，说明是同一次下单[{},{}]
        # @type BigDealId: String

        attr_accessor :DealNames, :BigDealId

        def initialize(dealnames=nil, bigdealid=nil)
          @DealNames = dealnames
          @BigDealId = bigdealid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @BigDealId = params['BigDealId']
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

      # DeleteAntiFakeUrl请求参数结构体
      class DeleteAntiFakeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Id: Id
        # @type Id: Integer

        attr_accessor :Domain, :Id

        def initialize(domain=nil, id=nil)
          @Domain = domain
          @Id = id
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Id = params['Id']
        end
      end

      # DeleteAntiFakeUrl返回参数结构体
      class DeleteAntiFakeUrlResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAntiInfoLeakRule请求参数结构体
      class DeleteAntiInfoLeakRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RuleId: 规则id
        # @type RuleId: Integer

        attr_accessor :Domain, :RuleId

        def initialize(domain=nil, ruleid=nil)
          @Domain = domain
          @RuleId = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
        end
      end

      # DeleteAntiInfoLeakRule返回参数结构体
      class DeleteAntiInfoLeakRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAttackWhiteRule请求参数结构体
      class DeleteAttackWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 规则序号组
        # @type Ids: Array
        # @param Domain: 用户域名
        # @type Domain: String

        attr_accessor :Ids, :Domain

        def initialize(ids=nil, domain=nil)
          @Ids = ids
          @Domain = domain
        end

        def deserialize(params)
          @Ids = params['Ids']
          @Domain = params['Domain']
        end
      end

      # DeleteAttackWhiteRule返回参数结构体
      class DeleteAttackWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param FailIds: 删除失败的规则序号组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailIds, :RequestId

        def initialize(failids=nil, requestid=nil)
          @FailIds = failids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailIds = params['FailIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCCRule请求参数结构体
      class DeleteCCRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Edition: clb-waf或者sparta-waf
        # @type Edition: String
        # @param RuleId: 规则Id
        # @type RuleId: Integer

        attr_accessor :Domain, :Name, :Edition, :RuleId

        def initialize(domain=nil, name=nil, edition=nil, ruleid=nil)
          @Domain = domain
          @Name = name
          @Edition = edition
          @RuleId = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Name = params['Name']
          @Edition = params['Edition']
          @RuleId = params['RuleId']
        end
      end

      # DeleteCCRule返回参数结构体
      class DeleteCCRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 一般为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RuleId: 操作的规则Id
        # @type RuleId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RuleId, :RequestId

        def initialize(data=nil, ruleid=nil, requestid=nil)
          @Data = data
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCustomRule请求参数结构体
      class DeleteCustomRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 删除的域名
        # @type Domain: String
        # @param RuleId: 删除的规则ID
        # @type RuleId: String
        # @param Edition: WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        # @type Edition: String

        attr_accessor :Domain, :RuleId, :Edition

        def initialize(domain=nil, ruleid=nil, edition=nil)
          @Domain = domain
          @RuleId = ruleid
          @Edition = edition
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
          @Edition = params['Edition']
        end
      end

      # DeleteCustomRule返回参数结构体
      class DeleteCustomRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCustomWhiteRule请求参数结构体
      class DeleteCustomWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 删除的域名
        # @type Domain: String
        # @param RuleId: 删除的规则ID
        # @type RuleId: Integer

        attr_accessor :Domain, :RuleId

        def initialize(domain=nil, ruleid=nil)
          @Domain = domain
          @RuleId = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
        end
      end

      # DeleteCustomWhiteRule返回参数结构体
      class DeleteCustomWhiteRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteHost请求参数结构体
      class DeleteHostRequest < TencentCloud::Common::AbstractModel
        # @param HostsDel: 删除的域名列表
        # @type HostsDel: Array

        attr_accessor :HostsDel

        def initialize(hostsdel=nil)
          @HostsDel = hostsdel
        end

        def deserialize(params)
          unless params['HostsDel'].nil?
            @HostsDel = []
            params['HostsDel'].each do |i|
              hostdel_tmp = HostDel.new
              hostdel_tmp.deserialize(i)
              @HostsDel << hostdel_tmp
            end
          end
        end
      end

      # DeleteHost返回参数结构体
      class DeleteHostResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIpAccessControl请求参数结构体
      class DeleteIpAccessControlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Items: 删除的ip数组
        # @type Items: Array
        # @param IsId: 若IsId字段为True，则Items列表元素需为Id，否则为IP
        # @type IsId: Boolean
        # @param DeleteAll: 是否删除对应的域名下的所有黑/白IP名单，true表示全部删除，false表示只删除指定ip名单
        # @type DeleteAll: Boolean
        # @param SourceType: 是否为多域名黑白名单
        # @type SourceType: String

        attr_accessor :Domain, :Items, :IsId, :DeleteAll, :SourceType

        def initialize(domain=nil, items=nil, isid=nil, deleteall=nil, sourcetype=nil)
          @Domain = domain
          @Items = items
          @IsId = isid
          @DeleteAll = deleteall
          @SourceType = sourcetype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Items = params['Items']
          @IsId = params['IsId']
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
        # @param SessionID: 要删除的SessionID
        # @type SessionID: Integer

        attr_accessor :Domain, :Edition, :SessionID

        def initialize(domain=nil, edition=nil, sessionid=nil)
          @Domain = domain
          @Edition = edition
          @SessionID = sessionid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Edition = params['Edition']
          @SessionID = params['SessionID']
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

      # DeleteSpartaProtection请求参数结构体
      class DeleteSpartaProtectionRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 域名列表
        # @type Domains: Array
        # @param Edition: 实例类型
        # @type Edition: String
        # @param InstanceID: 实例id
        # @type InstanceID: String

        attr_accessor :Domains, :Edition, :InstanceID

        def initialize(domains=nil, edition=nil, instanceid=nil)
          @Domains = domains
          @Edition = edition
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domains = params['Domains']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
        end
      end

      # DeleteSpartaProtection返回参数结构体
      class DeleteSpartaProtectionResponse < TencentCloud::Common::AbstractModel
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
        # @param Sort: 排序字段,升序asc,降序desc，默认降序desc
        # @type Sort: String
        # @param Count: 返回的top数，默认返回top5
        # @type Count: Integer

        attr_accessor :TopicId, :From, :To, :Query, :FieldName, :Sort, :Count

        def initialize(topicid=nil, from=nil, to=nil, query=nil, fieldname=nil, sort=nil, count=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @FieldName = fieldname
          @Sort = sort
          @Count = count
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @FieldName = params['FieldName']
          @Sort = params['Sort']
          @Count = params['Count']
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

      # DescribeAccessHistogram请求参数结构体
      class DescribeAccessHistogramRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: 老版本查询的日志主题ID，新版本传空字符串即可
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句，语句长度最大为4096
        # @type Query: String
        # @param Interval: 柱状图间隔时间差，单位ms
        # @type Interval: Integer

        attr_accessor :TopicId, :From, :To, :Query, :Interval

        def initialize(topicid=nil, from=nil, to=nil, query=nil, interval=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Interval = interval
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Interval = params['Interval']
        end
      end

      # DescribeAccessHistogram返回参数结构体
      class DescribeAccessHistogramResponse < TencentCloud::Common::AbstractModel
        # @param Interval: 柱状图间隔时间差，单位ms
        # @type Interval: Integer
        # @param TotalCount: 满足条件的日志条数
        # @type TotalCount: Integer
        # @param HistogramInfos: 注意：此字段可能返回 null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistogramInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Interval, :TotalCount, :HistogramInfos, :RequestId

        def initialize(interval=nil, totalcount=nil, histograminfos=nil, requestid=nil)
          @Interval = interval
          @TotalCount = totalcount
          @HistogramInfos = histograminfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Interval = params['Interval']
          @TotalCount = params['TotalCount']
          unless params['HistogramInfos'].nil?
            @HistogramInfos = []
            params['HistogramInfos'].each do |i|
              accesshistogramitem_tmp = AccessHistogramItem.new
              accesshistogramitem_tmp.deserialize(i)
              @HistogramInfos << accesshistogramitem_tmp
            end
          end
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
        # @param Status: 是否生效，true表示生效，false表示未生效
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

      # DescribeAntiFakeRules请求参数结构体
      class DescribeAntiFakeRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 容量
        # @type Limit: Integer
        # @param Filters: 过滤数组,name可以是如下的值： RuleID,ParamName,Url,Action,Method,Source,Status
        # @type Filters: Array
        # @param Order: asc或者desc
        # @type Order: String
        # @param By: 目前支持根据ts排序
        # @type By: String

        attr_accessor :Domain, :Offset, :Limit, :Filters, :Order, :By

        def initialize(domain=nil, offset=nil, limit=nil, filters=nil, order=nil, by=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Domain = params['Domain']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAntiFakeRules返回参数结构体
      class DescribeAntiFakeRulesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回值
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
              cacheurlitems_tmp = CacheUrlItems.new
              cacheurlitems_tmp.deserialize(i)
              @Data << cacheurlitems_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAntiFakeUrl请求参数结构体
      class DescribeAntiFakeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param PageInfo: 翻页参数
        # @type PageInfo: :class:`Tencentcloud::Waf.v20180125.models.PageInfo`

        attr_accessor :Domain, :PageInfo

        def initialize(domain=nil, pageinfo=nil)
          @Domain = domain
          @PageInfo = pageinfo
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['PageInfo'].nil?
            @PageInfo = PageInfo.new
            @PageInfo.deserialize(params['PageInfo'])
          end
        end
      end

      # DescribeAntiFakeUrl返回参数结构体
      class DescribeAntiFakeUrlResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cacheurlitem_tmp = CacheUrlItem.new
              cacheurlitem_tmp.deserialize(i)
              @List << cacheurlitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAntiInfoLeakRules请求参数结构体
      class DescribeAntiInfoLeakRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param ActionType: 动作类型
        # @type ActionType: Integer
        # @param PageInfo: 翻页
        # @type PageInfo: :class:`Tencentcloud::Waf.v20180125.models.PageInfo`

        attr_accessor :Domain, :ActionType, :PageInfo

        def initialize(domain=nil, actiontype=nil, pageinfo=nil)
          @Domain = domain
          @ActionType = actiontype
          @PageInfo = pageinfo
        end

        def deserialize(params)
          @Domain = params['Domain']
          @ActionType = params['ActionType']
          unless params['PageInfo'].nil?
            @PageInfo = PageInfo.new
            @PageInfo.deserialize(params['PageInfo'])
          end
        end
      end

      # DescribeAntiInfoLeakRules返回参数结构体
      class DescribeAntiInfoLeakRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录条数
        # @type TotalCount: String
        # @param RuleList: 规则列表
        # @type RuleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RuleList, :RequestId

        def initialize(totalcount=nil, rulelist=nil, requestid=nil)
          @TotalCount = totalcount
          @RuleList = rulelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              describeantiinfoleakrulesruleitem_tmp = DescribeAntiInfoLeakRulesRuleItem.new
              describeantiinfoleakrulesruleitem_tmp.deserialize(i)
              @RuleList << describeantiinfoleakrulesruleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAntiInfoLeakRules返回的规则列表元素
      class DescribeAntiInfoLeakRulesRuleItem < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Status: 规则状态
        # @type Status: String
        # @param ActionType: 规则动作类型
        # @type ActionType: String
        # @param CreateTime: 规则创建时间
        # @type CreateTime: String
        # @param Strategies: 详细的规则
        # @type Strategies: Array

        attr_accessor :RuleId, :Name, :Status, :ActionType, :CreateTime, :Strategies

        def initialize(ruleid=nil, name=nil, status=nil, actiontype=nil, createtime=nil, strategies=nil)
          @RuleId = ruleid
          @Name = name
          @Status = status
          @ActionType = actiontype
          @CreateTime = createtime
          @Strategies = strategies
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Status = params['Status']
          @ActionType = params['ActionType']
          @CreateTime = params['CreateTime']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              describeantiinfoleakrulesstrategyitem_tmp = DescribeAntiInfoLeakRulesStrategyItem.new
              describeantiinfoleakrulesstrategyitem_tmp.deserialize(i)
              @Strategies << describeantiinfoleakrulesstrategyitem_tmp
            end
          end
        end
      end

      # DescribeAntiInfoLeakRules返回的规则元素中的具体的规则元素
      class DescribeAntiInfoLeakRulesStrategyItem < TencentCloud::Common::AbstractModel
        # @param Field: 字段
        # @type Field: String
        # @param CompareFunc: 条件
        # @type CompareFunc: String
        # @param Content: 内容
        # @type Content: String

        attr_accessor :Field, :CompareFunc, :Content

        def initialize(field=nil, comparefunc=nil, content=nil)
          @Field = field
          @CompareFunc = comparefunc
          @Content = content
        end

        def deserialize(params)
          @Field = params['Field']
          @CompareFunc = params['CompareFunc']
          @Content = params['Content']
        end
      end

      # DescribeAntiInfoLeakageRules请求参数结构体
      class DescribeAntiInfoLeakageRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Offset: 翻页支持，读取偏移
        # @type Offset: Integer
        # @param Limit: 翻页支持，读取长度限制
        # @type Limit: Integer
        # @param Order: 排序方式，asc或者desc
        # @type Order: String
        # @param Filters: 过滤器,可以允许如下的值：
        # RuleId,Match_field,Name,Action,Status
        # @type Filters: Array

        attr_accessor :Domain, :Offset, :Limit, :Order, :Filters

        def initialize(domain=nil, offset=nil, limit=nil, order=nil, filters=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
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

      # DescribeAntiInfoLeakageRules返回参数结构体
      class DescribeAntiInfoLeakageRulesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录条数
        # @type Total: Integer
        # @param RuleList: 规则列表
        # @type RuleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RuleList, :RequestId

        def initialize(total=nil, rulelist=nil, requestid=nil)
          @Total = total
          @RuleList = rulelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              describeantileakageitem_tmp = DescribeAntiLeakageItem.new
              describeantileakageitem_tmp.deserialize(i)
              @RuleList << describeantileakageitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 出参
      class DescribeAntiLeakageItem < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Status: 状态值
        # @type Status: Integer
        # @param Action: 动作
        # @type Action: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Strategies: 匹配条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Strategies: Array
        # @param Uri: 匹配的URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uri: String

        attr_accessor :RuleId, :Name, :Status, :Action, :CreateTime, :Strategies, :Uri

        def initialize(ruleid=nil, name=nil, status=nil, action=nil, createtime=nil, strategies=nil, uri=nil)
          @RuleId = ruleid
          @Name = name
          @Status = status
          @Action = action
          @CreateTime = createtime
          @Strategies = strategies
          @Uri = uri
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Status = params['Status']
          @Action = params['Action']
          @CreateTime = params['CreateTime']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              describeantiinfoleakrulesstrategyitem_tmp = DescribeAntiInfoLeakRulesStrategyItem.new
              describeantiinfoleakrulesstrategyitem_tmp.deserialize(i)
              @Strategies << describeantiinfoleakrulesstrategyitem_tmp
            end
          end
          @Uri = params['Uri']
        end
      end

      # DescribeAttackOverview请求参数结构体
      class DescribeAttackOverviewRequest < TencentCloud::Common::AbstractModel
        # @param FromTime: 查询开始时间
        # @type FromTime: String
        # @param ToTime: 查询结束时间
        # @type ToTime: String
        # @param Appid: 客户的Appid
        # @type Appid: Integer
        # @param Domain: 被查询的域名
        # @type Domain: String
        # @param Edition: 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        # @type Edition: String
        # @param InstanceID: WAF实例ID，不传则不过滤
        # @type InstanceID: String

        attr_accessor :FromTime, :ToTime, :Appid, :Domain, :Edition, :InstanceID

        def initialize(fromtime=nil, totime=nil, appid=nil, domain=nil, edition=nil, instanceid=nil)
          @FromTime = fromtime
          @ToTime = totime
          @Appid = appid
          @Domain = domain
          @Edition = edition
          @InstanceID = instanceid
        end

        def deserialize(params)
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Appid = params['Appid']
          @Domain = params['Domain']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeAttackOverview返回参数结构体
      class DescribeAttackOverviewResponse < TencentCloud::Common::AbstractModel
        # @param AccessCount: 访问请求总数
        # @type AccessCount: Integer
        # @param AttackCount: Web攻击总数
        # @type AttackCount: Integer
        # @param ACLCount: 访问控制总数
        # @type ACLCount: Integer
        # @param CCCount: CC攻击总数
        # @type CCCount: Integer
        # @param BotCount: Bot攻击总数
        # @type BotCount: Integer
        # @param ApiAssetsCount: api资产总数
        # @type ApiAssetsCount: Integer
        # @param ApiRiskEventCount: api风险事件数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiRiskEventCount: Integer
        # @param IPBlackCount: 黑名单总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPBlackCount: Integer
        # @param TamperCount: 防篡改总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TamperCount: Integer
        # @param LeakCount: 信息泄露总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeakCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessCount, :AttackCount, :ACLCount, :CCCount, :BotCount, :ApiAssetsCount, :ApiRiskEventCount, :IPBlackCount, :TamperCount, :LeakCount, :RequestId

        def initialize(accesscount=nil, attackcount=nil, aclcount=nil, cccount=nil, botcount=nil, apiassetscount=nil, apiriskeventcount=nil, ipblackcount=nil, tampercount=nil, leakcount=nil, requestid=nil)
          @AccessCount = accesscount
          @AttackCount = attackcount
          @ACLCount = aclcount
          @CCCount = cccount
          @BotCount = botcount
          @ApiAssetsCount = apiassetscount
          @ApiRiskEventCount = apiriskeventcount
          @IPBlackCount = ipblackcount
          @TamperCount = tampercount
          @LeakCount = leakcount
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessCount = params['AccessCount']
          @AttackCount = params['AttackCount']
          @ACLCount = params['ACLCount']
          @CCCount = params['CCCount']
          @BotCount = params['BotCount']
          @ApiAssetsCount = params['ApiAssetsCount']
          @ApiRiskEventCount = params['ApiRiskEventCount']
          @IPBlackCount = params['IPBlackCount']
          @TamperCount = params['TamperCount']
          @LeakCount = params['LeakCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackType请求参数结构体
      class DescribeAttackTypeRequest < TencentCloud::Common::AbstractModel
        # @param FromTime: 起始时间
        # @type FromTime: String
        # @param ToTime: 结束时间
        # @type ToTime: String
        # @param Host: 兼容Host，逐步淘汰Host字段
        # @type Host: String
        # @param Edition: 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        # @type Edition: String
        # @param InstanceID: WAF实例ID，不传则不过滤
        # @type InstanceID: String
        # @param Domain: 域名过滤，不传则不过滤，用于替代Host字段，逐步淘汰Host
        # @type Domain: String

        attr_accessor :FromTime, :ToTime, :Host, :Edition, :InstanceID, :Domain

        def initialize(fromtime=nil, totime=nil, host=nil, edition=nil, instanceid=nil, domain=nil)
          @FromTime = fromtime
          @ToTime = totime
          @Host = host
          @Edition = edition
          @InstanceID = instanceid
          @Domain = domain
        end

        def deserialize(params)
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Host = params['Host']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
          @Domain = params['Domain']
        end
      end

      # DescribeAttackType返回参数结构体
      class DescribeAttackTypeResponse < TencentCloud::Common::AbstractModel
        # @param Piechart: 数量
        # @type Piechart: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Piechart, :RequestId

        def initialize(piechart=nil, requestid=nil)
          @Piechart = piechart
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Piechart'].nil?
            @Piechart = []
            params['Piechart'].each do |i|
              piechartitem_tmp = PiechartItem.new
              piechartitem_tmp.deserialize(i)
              @Piechart << piechartitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackWhiteRule请求参数结构体
      class DescribeAttackWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要查询的域名
        # @type Domain: String
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 每页容量
        # @type Limit: Integer
        # @param By: 排序字段，支持user_id, signature_id, modify_time
        # @type By: String
        # @param Order: 排序方式
        # @type Order: String
        # @param Filters: 筛选条件，支持SignatureId, MatchContent
        # @type Filters: Array

        attr_accessor :Domain, :Offset, :Limit, :By, :Order, :Filters

        def initialize(domain=nil, offset=nil, limit=nil, by=nil, order=nil, filters=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @By = by
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @By = params['By']
          @Order = params['Order']
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

      # DescribeAttackWhiteRule返回参数结构体
      class DescribeAttackWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 规则总数
        # @type Total: Integer
        # @param List: 规则白名单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              userwhiterule_tmp = UserWhiteRule.new
              userwhiterule_tmp.deserialize(i)
              @List << userwhiterule_tmp
            end
          end
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

      # DescribeBatchIpAccessControl请求参数结构体
      class DescribeBatchIpAccessControlRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选条件，支持 ActionType 40/42，Ip：ip地址，Domain：域名三类
        # @type Filters: Array
        # @param OffSet: 偏移
        # @type OffSet: Integer
        # @param Limit: 限制
        # @type Limit: Integer
        # @param Sort: 排序参数
        # @type Sort: String

        attr_accessor :Filters, :OffSet, :Limit, :Sort

        def initialize(filters=nil, offset=nil, limit=nil, sort=nil)
          @Filters = filters
          @OffSet = offset
          @Limit = limit
          @Sort = sort
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtersitemnew_tmp = FiltersItemNew.new
              filtersitemnew_tmp.deserialize(i)
              @Filters << filtersitemnew_tmp
            end
          end
          @OffSet = params['OffSet']
          @Limit = params['Limit']
          @Sort = params['Sort']
        end
      end

      # DescribeBatchIpAccessControl返回参数结构体
      class DescribeBatchIpAccessControlResponse < TencentCloud::Common::AbstractModel
        # @param Data: 输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.BatchIpAccessControlData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchIpAccessControlData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCAutoStatus请求参数结构体
      class DescribeCCAutoStatusRequest < TencentCloud::Common::AbstractModel
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

      # DescribeCCAutoStatus返回参数结构体
      class DescribeCCAutoStatusResponse < TencentCloud::Common::AbstractModel
        # @param AutoCCSwitch: 配置状态
        # @type AutoCCSwitch: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoCCSwitch, :RequestId

        def initialize(autoccswitch=nil, requestid=nil)
          @AutoCCSwitch = autoccswitch
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoCCSwitch = params['AutoCCSwitch']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCRuleList请求参数结构体
      class DescribeCCRuleListRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要查询的API所属的域名
        # @type Domain: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 容量
        # @type Limit: Integer
        # @param By: 目前支持根据ts_version排序
        # @type By: String
        # @param Filters: 过滤数组,name可以是如下的值： RuleID,ParamName,Url,Action,Method,Source,Status
        # @type Filters: Array
        # @param Order: asc或者desc
        # @type Order: String

        attr_accessor :Domain, :Offset, :Limit, :By, :Filters, :Order

        def initialize(domain=nil, offset=nil, limit=nil, by=nil, filters=nil, order=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @By = by
          @Filters = filters
          @Order = order
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @By = params['By']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtersitemnew_tmp = FiltersItemNew.new
              filtersitemnew_tmp.deserialize(i)
              @Filters << filtersitemnew_tmp
            end
          end
          @Order = params['Order']
        end
      end

      # DescribeCCRuleList返回参数结构体
      class DescribeCCRuleListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询到的CC规则的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.CCRuleLists`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CCRuleLists.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCRule请求参数结构体
      class DescribeCCRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 页的数目
        # @type Limit: Integer
        # @param Sort: 排序参数
        # @type Sort: String
        # @param Edition: clb-waf 或者 sparta-waf
        # @type Edition: String
        # @param Name: 过滤条件
        # @type Name: String

        attr_accessor :Domain, :Offset, :Limit, :Sort, :Edition, :Name

        def initialize(domain=nil, offset=nil, limit=nil, sort=nil, edition=nil, name=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @Sort = sort
          @Edition = edition
          @Name = name
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Sort = params['Sort']
          @Edition = params['Edition']
          @Name = params['Name']
        end
      end

      # DescribeCCRule返回参数结构体
      class DescribeCCRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.CCRuleData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CCRuleData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateVerifyResult请求参数结构体
      class DescribeCertificateVerifyResultRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param CertType: 证书类型
        # @type CertType: Integer
        # @param Certificate: 证书公钥
        # @type Certificate: String
        # @param CertID: 证书ID
        # @type CertID: String
        # @param PrivateKey: 私钥信息
        # @type PrivateKey: String

        attr_accessor :Domain, :CertType, :Certificate, :CertID, :PrivateKey

        def initialize(domain=nil, certtype=nil, certificate=nil, certid=nil, privatekey=nil)
          @Domain = domain
          @CertType = certtype
          @Certificate = certificate
          @CertID = certid
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertType = params['CertType']
          @Certificate = params['Certificate']
          @CertID = params['CertID']
          @PrivateKey = params['PrivateKey']
        end
      end

      # DescribeCertificateVerifyResult返回参数结构体
      class DescribeCertificateVerifyResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态码
        # @type Status: Integer
        # @param Detail: 错误详情
        # @type Detail: Array
        # @param NotAfter: 过期时间
        # @type NotAfter: String
        # @param Changed: 证书是否改变:1有改变，0没有改变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Changed: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Detail, :NotAfter, :Changed, :RequestId

        def initialize(status=nil, detail=nil, notafter=nil, changed=nil, requestid=nil)
          @Status = status
          @Detail = detail
          @NotAfter = notafter
          @Changed = changed
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Detail = params['Detail']
          @NotAfter = params['NotAfter']
          @Changed = params['Changed']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCiphersDetail请求参数结构体
      class DescribeCiphersDetailRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCiphersDetail返回参数结构体
      class DescribeCiphersDetailResponse < TencentCloud::Common::AbstractModel
        # @param Ciphers: 加密套件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ciphers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ciphers, :RequestId

        def initialize(ciphers=nil, requestid=nil)
          @Ciphers = ciphers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ciphers'].nil?
            @Ciphers = []
            params['Ciphers'].each do |i|
              tlsciphers_tmp = TLSCiphers.new
              tlsciphers_tmp.deserialize(i)
              @Ciphers << tlsciphers_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomRuleList请求参数结构体
      class DescribeCustomRuleListRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 容量
        # @type Limit: Integer
        # @param Filters: 过滤数组,name可以是如下的值： RuleID,RuleName,Match
        # @type Filters: Array
        # @param Order: asc或者desc
        # @type Order: String
        # @param By: exp_ts或者mod_ts
        # @type By: String

        attr_accessor :Domain, :Offset, :Limit, :Filters, :Order, :By

        def initialize(domain=nil, offset=nil, limit=nil, filters=nil, order=nil, by=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Domain = params['Domain']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeCustomRuleList返回参数结构体
      class DescribeCustomRuleListResponse < TencentCloud::Common::AbstractModel
        # @param RuleList: 规则详情
        # @type RuleList: Array
        # @param TotalCount: 规则条数
        # @type TotalCount: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleList, :TotalCount, :RequestId

        def initialize(rulelist=nil, totalcount=nil, requestid=nil)
          @RuleList = rulelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              describecustomrulesrsprulelistitem_tmp = DescribeCustomRulesRspRuleListItem.new
              describecustomrulesrsprulelistitem_tmp.deserialize(i)
              @RuleList << describecustomrulesrsprulelistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomRules接口回包中的复杂类型
      class DescribeCustomRulesRspRuleListItem < TencentCloud::Common::AbstractModel
        # @param ActionType: 动作类型
        # @type ActionType: String
        # @param Bypass: 跳过的策略
        # @type Bypass: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param Name: 策略名称
        # @type Name: String
        # @param Redirect: 重定向地址
        # @type Redirect: String
        # @param RuleId: 策略ID
        # @type RuleId: String
        # @param SortId: 优先级
        # @type SortId: String
        # @param Status: 状态
        # @type Status: String
        # @param Strategies: 策略详情
        # @type Strategies: Array
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param ValidStatus: 生效状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidStatus: Integer
        # @param Source: 来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String

        attr_accessor :ActionType, :Bypass, :CreateTime, :ExpireTime, :Name, :Redirect, :RuleId, :SortId, :Status, :Strategies, :EventId, :ModifyTime, :ValidStatus, :Source

        def initialize(actiontype=nil, bypass=nil, createtime=nil, expiretime=nil, name=nil, redirect=nil, ruleid=nil, sortid=nil, status=nil, strategies=nil, eventid=nil, modifytime=nil, validstatus=nil, source=nil)
          @ActionType = actiontype
          @Bypass = bypass
          @CreateTime = createtime
          @ExpireTime = expiretime
          @Name = name
          @Redirect = redirect
          @RuleId = ruleid
          @SortId = sortid
          @Status = status
          @Strategies = strategies
          @EventId = eventid
          @ModifyTime = modifytime
          @ValidStatus = validstatus
          @Source = source
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @Bypass = params['Bypass']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @Name = params['Name']
          @Redirect = params['Redirect']
          @RuleId = params['RuleId']
          @SortId = params['SortId']
          @Status = params['Status']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategy_tmp = Strategy.new
              strategy_tmp.deserialize(i)
              @Strategies << strategy_tmp
            end
          end
          @EventId = params['EventId']
          @ModifyTime = params['ModifyTime']
          @ValidStatus = params['ValidStatus']
          @Source = params['Source']
        end
      end

      # DescribeCustomWhiteRule请求参数结构体
      class DescribeCustomWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 容量
        # @type Limit: Integer
        # @param Filters: 过滤数组,name可以是如下的值： RuleID,RuleName,Match
        # @type Filters: Array
        # @param Order: asc或者desc
        # @type Order: String
        # @param By: exp_ts或者mod_ts
        # @type By: String

        attr_accessor :Domain, :Offset, :Limit, :Filters, :Order, :By

        def initialize(domain=nil, offset=nil, limit=nil, filters=nil, order=nil, by=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Domain = params['Domain']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeCustomWhiteRule返回参数结构体
      class DescribeCustomWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleList: 规则详情
        # @type RuleList: Array
        # @param TotalCount: 规则条数
        # @type TotalCount: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleList, :TotalCount, :RequestId

        def initialize(rulelist=nil, totalcount=nil, requestid=nil)
          @RuleList = rulelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              describecustomrulesrsprulelistitem_tmp = DescribeCustomRulesRspRuleListItem.new
              describecustomrulesrsprulelistitem_tmp.deserialize(i)
              @RuleList << describecustomrulesrsprulelistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainCountInfo请求参数结构体
      class DescribeDomainCountInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDomainCountInfo返回参数结构体
      class DescribeDomainCountInfoResponse < TencentCloud::Common::AbstractModel
        # @param AllDomain: 域名总数
        # @type AllDomain: Integer
        # @param UpdateTime: 最近发现时间
        # @type UpdateTime: String
        # @param WafDomainCount: 接入域名总数
        # @type WafDomainCount: Integer
        # @param LeftDomainCount: 剩下配额
        # @type LeftDomainCount: Integer
        # @param OpenWafDomain: 开启防护域名数
        # @type OpenWafDomain: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllDomain, :UpdateTime, :WafDomainCount, :LeftDomainCount, :OpenWafDomain, :RequestId

        def initialize(alldomain=nil, updatetime=nil, wafdomaincount=nil, leftdomaincount=nil, openwafdomain=nil, requestid=nil)
          @AllDomain = alldomain
          @UpdateTime = updatetime
          @WafDomainCount = wafdomaincount
          @LeftDomainCount = leftdomaincount
          @OpenWafDomain = openwafdomain
          @RequestId = requestid
        end

        def deserialize(params)
          @AllDomain = params['AllDomain']
          @UpdateTime = params['UpdateTime']
          @WafDomainCount = params['WafDomainCount']
          @LeftDomainCount = params['LeftDomainCount']
          @OpenWafDomain = params['OpenWafDomain']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainDetailsClb请求参数结构体
      class DescribeDomainDetailsClbRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名id
        # @type DomainId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :Domain, :DomainId, :InstanceId

        def initialize(domain=nil, domainid=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDomainDetailsClb返回参数结构体
      class DescribeDomainDetailsClbResponse < TencentCloud::Common::AbstractModel
        # @param DomainsClbPartInfo: clb域名详情
        # @type DomainsClbPartInfo: :class:`Tencentcloud::Waf.v20180125.models.ClbDomainsInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainsClbPartInfo, :RequestId

        def initialize(domainsclbpartinfo=nil, requestid=nil)
          @DomainsClbPartInfo = domainsclbpartinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainsClbPartInfo'].nil?
            @DomainsClbPartInfo = ClbDomainsInfo.new
            @DomainsClbPartInfo.deserialize(params['DomainsClbPartInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainDetailsSaas请求参数结构体
      class DescribeDomainDetailsSaasRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名id
        # @type DomainId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :Domain, :DomainId, :InstanceId

        def initialize(domain=nil, domainid=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDomainDetailsSaas返回参数结构体
      class DescribeDomainDetailsSaasResponse < TencentCloud::Common::AbstractModel
        # @param DomainsPartInfo: 域名详情
        # @type DomainsPartInfo: :class:`Tencentcloud::Waf.v20180125.models.DomainsPartInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainsPartInfo, :RequestId

        def initialize(domainspartinfo=nil, requestid=nil)
          @DomainsPartInfo = domainspartinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainsPartInfo'].nil?
            @DomainsPartInfo = DomainsPartInfo.new
            @DomainsPartInfo.deserialize(params['DomainsPartInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainRules请求参数结构体
      class DescribeDomainRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要查询的域名
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DescribeDomainRules返回参数结构体
      class DescribeDomainRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表详情
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId

        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Rules << rule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainVerifyResult请求参数结构体
      class DescribeDomainVerifyResultRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param InstanceID: 实例id
        # @type InstanceID: String

        attr_accessor :Domain, :InstanceID

        def initialize(domain=nil, instanceid=nil)
          @Domain = domain
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeDomainVerifyResult返回参数结构体
      class DescribeDomainVerifyResultResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 结果描述；如果可以添加返回空字符串
        # @type Msg: String
        # @param VerifyCode: 检验状态：0表示可以添加，大于0为不能添加
        # @type VerifyCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :VerifyCode, :RequestId

        def initialize(msg=nil, verifycode=nil, requestid=nil)
          @Msg = msg
          @VerifyCode = verifycode
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @VerifyCode = params['VerifyCode']
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
        # @param Sort: 排序方式,desc表示降序，asc表示升序
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
        # @param Offset: 分页偏移量，取Limit整数倍。最小值为0，最大值= Total/Limit向上取整
        # @type Offset: Integer
        # @param Limit: 返回域名的数量
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

      # DescribeFindDomainList请求参数结构体
      class DescribeFindDomainListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 每页容量
        # @type Limit: Integer
        # @param Key: 过滤条件
        # @type Key: String
        # @param IsWafDomain: 是否接入waf
        # @type IsWafDomain: String
        # @param By: 排序参数
        # @type By: String
        # @param Order: 排序方式
        # @type Order: String

        attr_accessor :Offset, :Limit, :Key, :IsWafDomain, :By, :Order

        def initialize(offset=nil, limit=nil, key=nil, iswafdomain=nil, by=nil, order=nil)
          @Offset = offset
          @Limit = limit
          @Key = key
          @IsWafDomain = iswafdomain
          @By = by
          @Order = order
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Key = params['Key']
          @IsWafDomain = params['IsWafDomain']
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeFindDomainList返回参数结构体
      class DescribeFindDomainListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 域名总数
        # @type Total: Integer
        # @param List: 域名信息列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              findalldomaindetail_tmp = FindAllDomainDetail.new
              findalldomaindetail_tmp.deserialize(i)
              @List << findalldomaindetail_tmp
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

      # DescribeHistogram请求参数结构体
      class DescribeHistogramRequest < TencentCloud::Common::AbstractModel
        # @param FromTime: 起始时间
        # @type FromTime: String
        # @param ToTime: 结束时间
        # @type ToTime: String
        # @param QueryField: 聚类字段，ip为ip聚合，art为响应耗时聚合，url为url聚合，local为ip转化的城市聚合
        # @type QueryField: String
        # @param Source: 条件，access为访问日志，attack为攻击日志
        # @type Source: String
        # @param Host: 兼容Host，逐步淘汰Host字段
        # @type Host: String
        # @param Edition: 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        # @type Edition: String
        # @param InstanceID: WAF实例ID，不传则不过滤
        # @type InstanceID: String
        # @param Domain: 域名过滤，不传则不过滤，用于替代Host字段，逐步淘汰Host
        # @type Domain: String

        attr_accessor :FromTime, :ToTime, :QueryField, :Source, :Host, :Edition, :InstanceID, :Domain

        def initialize(fromtime=nil, totime=nil, queryfield=nil, source=nil, host=nil, edition=nil, instanceid=nil, domain=nil)
          @FromTime = fromtime
          @ToTime = totime
          @QueryField = queryfield
          @Source = source
          @Host = host
          @Edition = edition
          @InstanceID = instanceid
          @Domain = domain
        end

        def deserialize(params)
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @QueryField = params['QueryField']
          @Source = params['Source']
          @Host = params['Host']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
          @Domain = params['Domain']
        end
      end

      # DescribeHistogram返回参数结构体
      class DescribeHistogramResponse < TencentCloud::Common::AbstractModel
        # @param Histogram: 统计数据
        # @type Histogram: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Histogram, :RequestId

        def initialize(histogram=nil, requestid=nil)
          @Histogram = histogram
          @RequestId = requestid
        end

        def deserialize(params)
          @Histogram = params['Histogram']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostLimit请求参数结构体
      class DescribeHostLimitRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 添加的域名
        # @type Domain: String
        # @param InstanceID: 实例id
        # @type InstanceID: String
        # @param AlbType: 流量来源
        # @type AlbType: String

        attr_accessor :Domain, :InstanceID, :AlbType

        def initialize(domain=nil, instanceid=nil, albtype=nil)
          @Domain = domain
          @InstanceID = instanceid
          @AlbType = albtype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @InstanceID = params['InstanceID']
          @AlbType = params['AlbType']
        end
      end

      # DescribeHostLimit返回参数结构体
      class DescribeHostLimitResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功返回的状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeHost请求参数结构体
      class DescribeHostRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String

        attr_accessor :Domain, :DomainId, :InstanceID

        def initialize(domain=nil, domainid=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeHost返回参数结构体
      class DescribeHostResponse < TencentCloud::Common::AbstractModel
        # @param Host: 域名详情
        # @type Host: :class:`Tencentcloud::Waf.v20180125.models.HostRecord`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Host, :RequestId

        def initialize(host=nil, requestid=nil)
          @Host = host
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Host'].nil?
            @Host = HostRecord.new
            @Host.deserialize(params['Host'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHosts请求参数结构体
      class DescribeHostsRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 防护域名，如果是要查询某一具体的防护域名则传入此参数，要求是准确的域名，此参数不支持模糊搜索
        # @type Domain: String
        # @param DomainId: 防护域名ID，如果是要查询某一具体的防护域名则传入此参数，要求是准确的域名ID，此参数不支持模糊搜索
        # @type DomainId: String
        # @param Search: 搜索条件，根据此参数对域名做模糊搜索
        # @type Search: String
        # @param Item: 复杂的搜索条件
        # @type Item: :class:`Tencentcloud::Waf.v20180125.models.SearchItem`
        # @param InstanceID: 实例id
        # @type InstanceID: String

        attr_accessor :Domain, :DomainId, :Search, :Item, :InstanceID

        def initialize(domain=nil, domainid=nil, search=nil, item=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @Search = search
          @Item = item
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Search = params['Search']
          unless params['Item'].nil?
            @Item = SearchItem.new
            @Item.deserialize(params['Item'])
          end
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeHosts返回参数结构体
      class DescribeHostsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 防护域名列表的长度
        # @type TotalCount: Integer
        # @param HostList: 防护域名的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HostList, :RequestId

        def initialize(totalcount=nil, hostlist=nil, requestid=nil)
          @TotalCount = totalcount
          @HostList = hostlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HostList'].nil?
            @HostList = []
            params['HostList'].each do |i|
              hostrecord_tmp = HostRecord.new
              hostrecord_tmp.deserialize(i)
              @HostList << hostrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
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
        # @param ActionType: 动作，40表示查询白名单，42表示查询黑名单
        # @type ActionType: Integer
        # @param VtsMin: 最小有效时间的时间戳
        # @type VtsMin: Integer
        # @param VtsMax: 最大有效时间的时间戳
        # @type VtsMax: Integer
        # @param CtsMin: 最小创建时间的时间戳
        # @type CtsMin: Integer
        # @param CtsMax: 最大创建时间的时间戳
        # @type CtsMax: Integer
        # @param OffSet: 分页偏移量，取Limit整数倍。最小值为0，最大值= Total/Limit向上取整
        # @type OffSet: Integer
        # @param Limit: 每页返回的数量
        # @type Limit: Integer
        # @param Source: 来源
        # @type Source: String
        # @param Sort: 排序参数
        # @type Sort: String
        # @param Ip: ip
        # @type Ip: String
        # @param ValidStatus: 生效状态
        # @type ValidStatus: Integer
        # @param ValidTimeStampMin: 最小有效时间的时间戳
        # @type ValidTimeStampMin: String
        # @param ValidTimeStampMax: 最大有效时间的时间戳
        # @type ValidTimeStampMax: String

        attr_accessor :Domain, :Count, :ActionType, :VtsMin, :VtsMax, :CtsMin, :CtsMax, :OffSet, :Limit, :Source, :Sort, :Ip, :ValidStatus, :ValidTimeStampMin, :ValidTimeStampMax
        extend Gem::Deprecate
        deprecate :VtsMin, :none, 2023, 12
        deprecate :VtsMin=, :none, 2023, 12
        deprecate :VtsMax, :none, 2023, 12
        deprecate :VtsMax=, :none, 2023, 12

        def initialize(domain=nil, count=nil, actiontype=nil, vtsmin=nil, vtsmax=nil, ctsmin=nil, ctsmax=nil, offset=nil, limit=nil, source=nil, sort=nil, ip=nil, validstatus=nil, validtimestampmin=nil, validtimestampmax=nil)
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
          @ValidStatus = validstatus
          @ValidTimeStampMin = validtimestampmin
          @ValidTimeStampMax = validtimestampmax
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
          @ValidStatus = params['ValidStatus']
          @ValidTimeStampMin = params['ValidTimeStampMin']
          @ValidTimeStampMax = params['ValidTimeStampMax']
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
        # @param ValidTimeStampMin: 有效时间最小时间戳
        # @type ValidTimeStampMin: Integer
        # @param ValidTimeStampMax: 有效时间最大时间戳
        # @type ValidTimeStampMax: Integer

        attr_accessor :Domain, :Count, :Category, :VtsMin, :VtsMax, :CtsMin, :CtsMax, :Skip, :Limit, :Name, :Sort, :Ip, :ValidTimeStampMin, :ValidTimeStampMax
        extend Gem::Deprecate
        deprecate :VtsMin, :none, 2023, 12
        deprecate :VtsMin=, :none, 2023, 12
        deprecate :VtsMax, :none, 2023, 12
        deprecate :VtsMax=, :none, 2023, 12

        def initialize(domain=nil, count=nil, category=nil, vtsmin=nil, vtsmax=nil, ctsmin=nil, ctsmax=nil, skip=nil, limit=nil, name=nil, sort=nil, ip=nil, validtimestampmin=nil, validtimestampmax=nil)
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
          @ValidTimeStampMin = validtimestampmin
          @ValidTimeStampMax = validtimestampmax
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
          @ValidTimeStampMin = params['ValidTimeStampMin']
          @ValidTimeStampMax = params['ValidTimeStampMax']
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

      # DescribeModuleStatus请求参数结构体
      class DescribeModuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 要查询状态的域名
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DescribeModuleStatus返回参数结构体
      class DescribeModuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param WebSecurity: WEB安全规则是否开启
        # @type WebSecurity: Integer
        # @param AccessControl: 访问控制规则是否开启
        # @type AccessControl: Integer
        # @param CcProtection: CC防护是否开启
        # @type CcProtection: Integer
        # @param AntiTamper: 网页防篡改是否开启
        # @type AntiTamper: Integer
        # @param AntiLeakage: 信息防泄漏是否开启
        # @type AntiLeakage: Integer
        # @param ApiProtection: API安全是否开启
        # @type ApiProtection: Integer
        # @param RateLimit: 限流模块开关
        # @type RateLimit: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebSecurity, :AccessControl, :CcProtection, :AntiTamper, :AntiLeakage, :ApiProtection, :RateLimit, :RequestId

        def initialize(websecurity=nil, accesscontrol=nil, ccprotection=nil, antitamper=nil, antileakage=nil, apiprotection=nil, ratelimit=nil, requestid=nil)
          @WebSecurity = websecurity
          @AccessControl = accesscontrol
          @CcProtection = ccprotection
          @AntiTamper = antitamper
          @AntiLeakage = antileakage
          @ApiProtection = apiprotection
          @RateLimit = ratelimit
          @RequestId = requestid
        end

        def deserialize(params)
          @WebSecurity = params['WebSecurity']
          @AccessControl = params['AccessControl']
          @CcProtection = params['CcProtection']
          @AntiTamper = params['AntiTamper']
          @AntiLeakage = params['AntiLeakage']
          @ApiProtection = params['ApiProtection']
          @RateLimit = params['RateLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeObjects请求参数结构体
      class DescribeObjectsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持的过滤器:
        # 	ObjectId: clb实例ID
        # 	VIP: clb实例的公网IP
        # 	InstanceId: waf实例ID
        # 	Domain: 精准域名
        # 	Status: waf防护开关状态: 0关闭，1开启
        # 	ClsStatus: waf日志开关: 0关闭，1开启
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
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

      # DescribeObjects返回参数结构体
      class DescribeObjectsResponse < TencentCloud::Common::AbstractModel
        # @param ClbObjects: 对象列表
        # @type ClbObjects: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClbObjects, :RequestId

        def initialize(clbobjects=nil, requestid=nil)
          @ClbObjects = clbobjects
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClbObjects'].nil?
            @ClbObjects = []
            params['ClbObjects'].each do |i|
              clbobject_tmp = ClbObject.new
              clbobject_tmp.deserialize(i)
              @ClbObjects << clbobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePeakPoints请求参数结构体
      class DescribePeakPointsRequest < TencentCloud::Common::AbstractModel
        # @param FromTime: 查询起始时间
        # @type FromTime: String
        # @param ToTime: 查询终止时间
        # @type ToTime: String
        # @param Domain: 查询的域名，如果查询所有域名数据，该参数不填写
        # @type Domain: String
        # @param Edition: 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        # @type Edition: String
        # @param InstanceID: WAF实例ID，不传则不过滤
        # @type InstanceID: String
        # @param MetricName: 十二个值可选：
        # access-峰值qps趋势图
        # botAccess- bot峰值qps趋势图
        # down-下行峰值带宽趋势图
        # up-上行峰值带宽趋势图
        # attack-Web攻击总数趋势图
        # cc-CC攻击总数趋势图
        # bw-黑IP攻击总数趋势图
        # tamper-防篡改攻击总数趋势图
        # leak-防泄露攻击总数趋势图
        # acl-访问控制攻击总数趋势图
        # http_status-状态码各次数趋势图
        # wx_access-微信小程序峰值qps趋势图
        # @type MetricName: String

        attr_accessor :FromTime, :ToTime, :Domain, :Edition, :InstanceID, :MetricName

        def initialize(fromtime=nil, totime=nil, domain=nil, edition=nil, instanceid=nil, metricname=nil)
          @FromTime = fromtime
          @ToTime = totime
          @Domain = domain
          @Edition = edition
          @InstanceID = instanceid
          @MetricName = metricname
        end

        def deserialize(params)
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Domain = params['Domain']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
          @MetricName = params['MetricName']
        end
      end

      # DescribePeakPoints返回参数结构体
      class DescribePeakPointsResponse < TencentCloud::Common::AbstractModel
        # @param Points: 数据点
        # @type Points: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Points, :RequestId

        def initialize(points=nil, requestid=nil)
          @Points = points
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              peakpointsitem_tmp = PeakPointsItem.new
              peakpointsitem_tmp.deserialize(i)
              @Points << peakpointsitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePeakValue请求参数结构体
      class DescribePeakValueRequest < TencentCloud::Common::AbstractModel
        # @param FromTime: 查询起始时间
        # @type FromTime: String
        # @param ToTime: 查询结束时间
        # @type ToTime: String
        # @param Domain: 需要查询的域名，当前用户所有域名可以不传
        # @type Domain: String
        # @param Edition: 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        # @type Edition: String
        # @param InstanceID: WAF实例ID，不传则不过滤
        # @type InstanceID: String
        # @param MetricName: 五个值可选：
        # access-峰值qps
        # down-下行峰值带宽
        # up-上行峰值带宽
        # attack-Web攻击总数
        # cc-CC攻击总数趋势图
        # @type MetricName: String

        attr_accessor :FromTime, :ToTime, :Domain, :Edition, :InstanceID, :MetricName

        def initialize(fromtime=nil, totime=nil, domain=nil, edition=nil, instanceid=nil, metricname=nil)
          @FromTime = fromtime
          @ToTime = totime
          @Domain = domain
          @Edition = edition
          @InstanceID = instanceid
          @MetricName = metricname
        end

        def deserialize(params)
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Domain = params['Domain']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
          @MetricName = params['MetricName']
        end
      end

      # DescribePeakValue返回参数结构体
      class DescribePeakValueResponse < TencentCloud::Common::AbstractModel
        # @param Access: QPS峰值
        # @type Access: Integer
        # @param Up: 上行带宽峰值，单位B
        # @type Up: Integer
        # @param Down: 下行带宽峰值，单位B
        # @type Down: Integer
        # @param Attack: Web攻击总数
        # @type Attack: Integer
        # @param Cc: CC攻击总数
        # @type Cc: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Access, :Up, :Down, :Attack, :Cc, :RequestId

        def initialize(access=nil, up=nil, down=nil, attack=nil, cc=nil, requestid=nil)
          @Access = access
          @Up = up
          @Down = down
          @Attack = attack
          @Cc = cc
          @RequestId = requestid
        end

        def deserialize(params)
          @Access = params['Access']
          @Up = params['Up']
          @Down = params['Down']
          @Attack = params['Attack']
          @Cc = params['Cc']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyStatus请求参数结构体
      class DescribePolicyStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Edition: clb-waf或者saas-waf
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

      # DescribePolicyStatus返回参数结构体
      class DescribePolicyStatusResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Status: 防护状态
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Status, :RequestId

        def initialize(instanceid=nil, status=nil, requestid=nil)
          @InstanceId = instanceid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribePorts请求参数结构体
      class DescribePortsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Edition: 实例类型
        # @type Edition: String

        attr_accessor :InstanceID, :Edition

        def initialize(instanceid=nil, edition=nil)
          @InstanceID = instanceid
          @Edition = edition
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Edition = params['Edition']
        end
      end

      # DescribePorts返回参数结构体
      class DescribePortsResponse < TencentCloud::Common::AbstractModel
        # @param HttpPorts: http端口列表
        # @type HttpPorts: Array
        # @param HttpsPorts: https端口列表
        # @type HttpsPorts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HttpPorts, :HttpsPorts, :RequestId

        def initialize(httpports=nil, httpsports=nil, requestid=nil)
          @HttpPorts = httpports
          @HttpsPorts = httpsports
          @RequestId = requestid
        end

        def deserialize(params)
          @HttpPorts = params['HttpPorts']
          @HttpsPorts = params['HttpsPorts']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleLimit请求参数结构体
      class DescribeRuleLimitRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String

        attr_accessor :Domain, :InstanceId

        def initialize(domain=nil, instanceid=nil)
          @Domain = domain
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRuleLimit返回参数结构体
      class DescribeRuleLimitResponse < TencentCloud::Common::AbstractModel
        # @param Res: waf模块的规格
        # @type Res: :class:`Tencentcloud::Waf.v20180125.models.WafRuleLimit`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Res, :RequestId

        def initialize(res=nil, requestid=nil)
          @Res = res
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Res'].nil?
            @Res = WafRuleLimit.new
            @Res.deserialize(params['Res'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSession请求参数结构体
      class DescribeSessionRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Edition: clb-waf或者sparta-waf
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

      # DescribeSession返回参数结构体
      class DescribeSessionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.SessionData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SessionData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpartaProtectionInfo请求参数结构体
      class DescribeSpartaProtectionInfoRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Edition: 版本
        # @type Edition: String
        # @param InstanceID: 实例
        # @type InstanceID: String

        attr_accessor :Domain, :Edition, :InstanceID

        def initialize(domain=nil, edition=nil, instanceid=nil)
          @Domain = domain
          @Edition = edition
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeSpartaProtectionInfo返回参数结构体
      class DescribeSpartaProtectionInfoResponse < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param Cname: cname取值
        # @type Cname: String
        # @param Status: 状态
        # @type Status: String
        # @param SrcList: 源IP地址列表
        # @type SrcList: Array
        # @param CertType: 证书类型
        # @type CertType: String
        # @param Cert: 证书
        # @type Cert: String
        # @param PrivateKey: 私有密钥
        # @type PrivateKey: String
        # @param Sslid: ssl的id
        # @type Sslid: String
        # @param IsCdn: 是否是cdn
        # @type IsCdn: String
        # @param GrayAreas: 灰度区域列表
        # @type GrayAreas: Array
        # @param Engine: 引擎
        # @type Engine: String
        # @param HttpsRewrite: HTTPS重写
        # @type HttpsRewrite: String
        # @param UpstreamType: upstreamType取值
        # @type UpstreamType: String
        # @param UpstreamDomain: upstreamDomain取值
        # @type UpstreamDomain: String
        # @param UpstreamScheme: upstreamScheme取值
        # @type UpstreamScheme: String
        # @param IsHttp2: 是否是HTTP2
        # @type IsHttp2: String
        # @param IsWebsocket: 是否含有websocket
        # @type IsWebsocket: String
        # @param LoadBalance: loadBalance信息
        # @type LoadBalance: String
        # @param HttpsUpstreamPort: httpsUpstreamPort取值
        # @type HttpsUpstreamPort: String
        # @param Ports: port信息
        # @type Ports: Array
        # @param IsGray: 是否灰度
        # @type IsGray: String
        # @param Mode: 模式
        # @type Mode: String
        # @param Level: 防御等级,100,200,300
        # @type Level: String
        # @param IsKeepAlive: 与源站是否保持长连接
        # @type IsKeepAlive: String
        # @param Anycast: 0：BGP 1：Anycast
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Anycast: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domain, :DomainId, :Cname, :Status, :SrcList, :CertType, :Cert, :PrivateKey, :Sslid, :IsCdn, :GrayAreas, :Engine, :HttpsRewrite, :UpstreamType, :UpstreamDomain, :UpstreamScheme, :IsHttp2, :IsWebsocket, :LoadBalance, :HttpsUpstreamPort, :Ports, :IsGray, :Mode, :Level, :IsKeepAlive, :Anycast, :RequestId

        def initialize(domain=nil, domainid=nil, cname=nil, status=nil, srclist=nil, certtype=nil, cert=nil, privatekey=nil, sslid=nil, iscdn=nil, grayareas=nil, engine=nil, httpsrewrite=nil, upstreamtype=nil, upstreamdomain=nil, upstreamscheme=nil, ishttp2=nil, iswebsocket=nil, loadbalance=nil, httpsupstreamport=nil, ports=nil, isgray=nil, mode=nil, level=nil, iskeepalive=nil, anycast=nil, requestid=nil)
          @Domain = domain
          @DomainId = domainid
          @Cname = cname
          @Status = status
          @SrcList = srclist
          @CertType = certtype
          @Cert = cert
          @PrivateKey = privatekey
          @Sslid = sslid
          @IsCdn = iscdn
          @GrayAreas = grayareas
          @Engine = engine
          @HttpsRewrite = httpsrewrite
          @UpstreamType = upstreamtype
          @UpstreamDomain = upstreamdomain
          @UpstreamScheme = upstreamscheme
          @IsHttp2 = ishttp2
          @IsWebsocket = iswebsocket
          @LoadBalance = loadbalance
          @HttpsUpstreamPort = httpsupstreamport
          @Ports = ports
          @IsGray = isgray
          @Mode = mode
          @Level = level
          @IsKeepAlive = iskeepalive
          @Anycast = anycast
          @RequestId = requestid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Cname = params['Cname']
          @Status = params['Status']
          @SrcList = params['SrcList']
          @CertType = params['CertType']
          @Cert = params['Cert']
          @PrivateKey = params['PrivateKey']
          @Sslid = params['Sslid']
          @IsCdn = params['IsCdn']
          @GrayAreas = params['GrayAreas']
          @Engine = params['Engine']
          @HttpsRewrite = params['HttpsRewrite']
          @UpstreamType = params['UpstreamType']
          @UpstreamDomain = params['UpstreamDomain']
          @UpstreamScheme = params['UpstreamScheme']
          @IsHttp2 = params['IsHttp2']
          @IsWebsocket = params['IsWebsocket']
          @LoadBalance = params['LoadBalance']
          @HttpsUpstreamPort = params['HttpsUpstreamPort']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portitem_tmp = PortItem.new
              portitem_tmp.deserialize(i)
              @Ports << portitem_tmp
            end
          end
          @IsGray = params['IsGray']
          @Mode = params['Mode']
          @Level = params['Level']
          @IsKeepAlive = params['IsKeepAlive']
          @Anycast = params['Anycast']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTlsVersion请求参数结构体
      class DescribeTlsVersionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTlsVersion返回参数结构体
      class DescribeTlsVersionResponse < TencentCloud::Common::AbstractModel
        # @param TLS: TLS key value
        # @type TLS: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TLS, :RequestId

        def initialize(tls=nil, requestid=nil)
          @TLS = tls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TLS'].nil?
            @TLS = []
            params['TLS'].each do |i|
              tlsversion_tmp = TLSVersion.new
              tlsversion_tmp.deserialize(i)
              @TLS << tlsversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopAttackDomain请求参数结构体
      class DescribeTopAttackDomainRequest < TencentCloud::Common::AbstractModel
        # @param FromTime: 查询起始时间
        # @type FromTime: String
        # @param ToTime: 查询结束时间
        # @type ToTime: String
        # @param Count: TOP N,可从0-10选择，默认是10
        # @type Count: Integer
        # @param Edition: 只有两个值有效，sparta-waf，clb-waf，不传则不过滤
        # @type Edition: String
        # @param InstanceID: WAF实例ID，不传则不过滤
        # @type InstanceID: String

        attr_accessor :FromTime, :ToTime, :Count, :Edition, :InstanceID

        def initialize(fromtime=nil, totime=nil, count=nil, edition=nil, instanceid=nil)
          @FromTime = fromtime
          @ToTime = totime
          @Count = count
          @Edition = edition
          @InstanceID = instanceid
        end

        def deserialize(params)
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Count = params['Count']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeTopAttackDomain返回参数结构体
      class DescribeTopAttackDomainResponse < TencentCloud::Common::AbstractModel
        # @param CC: CC攻击域名列表
        # @type CC: Array
        # @param Web: Web攻击域名列表
        # @type Web: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CC, :Web, :RequestId

        def initialize(cc=nil, web=nil, requestid=nil)
          @CC = cc
          @Web = web
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CC'].nil?
            @CC = []
            params['CC'].each do |i|
              kvint_tmp = KVInt.new
              kvint_tmp.deserialize(i)
              @CC << kvint_tmp
            end
          end
          unless params['Web'].nil?
            @Web = []
            params['Web'].each do |i|
              kvint_tmp = KVInt.new
              kvint_tmp.deserialize(i)
              @Web << kvint_tmp
            end
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
        # @param RichDatas: 包含详细属性的地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RichDatas: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RichDatas, :RequestId

        def initialize(data=nil, richdatas=nil, requestid=nil)
          @Data = data
          @RichDatas = richdatas
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          unless params['RichDatas'].nil?
            @RichDatas = []
            params['RichDatas'].each do |i|
              clbwafregionitem_tmp = ClbWafRegionItem.new
              clbwafregionitem_tmp.deserialize(i)
              @RichDatas << clbwafregionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserDomainInfo请求参数结构体
      class DescribeUserDomainInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserDomainInfo返回参数结构体
      class DescribeUserDomainInfoResponse < TencentCloud::Common::AbstractModel
        # @param UsersInfo: saas和clb域名信息
        # @type UsersInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsersInfo, :RequestId

        def initialize(usersinfo=nil, requestid=nil)
          @UsersInfo = usersinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UsersInfo'].nil?
            @UsersInfo = []
            params['UsersInfo'].each do |i|
              userdomaininfo_tmp = UserDomainInfo.new
              userdomaininfo_tmp.deserialize(i)
              @UsersInfo << userdomaininfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserLevel请求参数结构体
      class DescribeUserLevelRequest < TencentCloud::Common::AbstractModel
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

      # DescribeUserLevel返回参数结构体
      class DescribeUserLevelResponse < TencentCloud::Common::AbstractModel
        # @param Level: 300:正常 400:严格
        # @type Level: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Level, :RequestId

        def initialize(level=nil, requestid=nil)
          @Level = level
          @RequestId = requestid
        end

        def deserialize(params)
          @Level = params['Level']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserSignatureRule请求参数结构体
      class DescribeUserSignatureRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要查询的域名
        # @type Domain: String
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 每页容量
        # @type Limit: Integer
        # @param By: 排序字段，支持 signature_id, modify_time
        # @type By: String
        # @param Order: 排序方式
        # @type Order: String
        # @param Filters: 筛选条件，支持 MainClassName，SubClassID ,CveID, Status, ID;  ID为规则id
        # @type Filters: Array

        attr_accessor :Domain, :Offset, :Limit, :By, :Order, :Filters

        def initialize(domain=nil, offset=nil, limit=nil, by=nil, order=nil, filters=nil)
          @Domain = domain
          @Offset = offset
          @Limit = limit
          @By = by
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @By = params['By']
          @Order = params['Order']
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

      # DescribeUserSignatureRule返回参数结构体
      class DescribeUserSignatureRuleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 规则总数
        # @type Total: Integer
        # @param Rules: 规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Rules, :RequestId

        def initialize(total=nil, rules=nil, requestid=nil)
          @Total = total
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              usersignaturerule_tmp = UserSignatureRule.new
              usersignaturerule_tmp.deserialize(i)
              @Rules << usersignaturerule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVipInfo请求参数结构体
      class DescribeVipInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: waf实例id列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeVipInfo返回参数结构体
      class DescribeVipInfoResponse < TencentCloud::Common::AbstractModel
        # @param VipInfo: VIP信息
        # @type VipInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VipInfo, :RequestId

        def initialize(vipinfo=nil, requestid=nil)
          @VipInfo = vipinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VipInfo'].nil?
            @VipInfo = []
            params['VipInfo'].each do |i|
              vipinfo_tmp = VipInfo.new
              vipinfo_tmp.deserialize(i)
              @VipInfo << vipinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWafAutoDenyRules请求参数结构体
      class DescribeWafAutoDenyRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String

        attr_accessor :Domain, :InstanceId

        def initialize(domain=nil, instanceid=nil)
          @Domain = domain
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @InstanceId = params['InstanceId']
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
        # @param HWState: 重保护网域名状态
        # @type HWState: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttackThreshold, :TimeThreshold, :DenyTimeThreshold, :DefenseStatus, :HWState, :RequestId

        def initialize(attackthreshold=nil, timethreshold=nil, denytimethreshold=nil, defensestatus=nil, hwstate=nil, requestid=nil)
          @AttackThreshold = attackthreshold
          @TimeThreshold = timethreshold
          @DenyTimeThreshold = denytimethreshold
          @DefenseStatus = defensestatus
          @HWState = hwstate
          @RequestId = requestid
        end

        def deserialize(params)
          @AttackThreshold = params['AttackThreshold']
          @TimeThreshold = params['TimeThreshold']
          @DenyTimeThreshold = params['DenyTimeThreshold']
          @DefenseStatus = params['DefenseStatus']
          @HWState = params['HWState']
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

      # DescribeWafInfo请求参数结构体
      class DescribeWafInfoRequest < TencentCloud::Common::AbstractModel
        # @param Params: CLB回调WAF接口（获取、删除）的参数
        # @type Params: Array

        attr_accessor :Params

        def initialize(params=nil)
          @Params = params
        end

        def deserialize(params)
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              clbhostsparams_tmp = ClbHostsParams.new
              clbhostsparams_tmp.deserialize(i)
              @Params << clbhostsparams_tmp
            end
          end
        end
      end

      # DescribeWafInfo返回参数结构体
      class DescribeWafInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的WAF信息数组的长度，为0则表示没有查询到对应的信息
        # @type Total: Integer
        # @param HostList: 对应的WAF信息的数组。
        # @type HostList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :HostList, :RequestId

        def initialize(total=nil, hostlist=nil, requestid=nil)
          @Total = total
          @HostList = hostlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['HostList'].nil?
            @HostList = []
            params['HostList'].each do |i|
              clbhostresult_tmp = ClbHostResult.new
              clbhostresult_tmp.deserialize(i)
              @HostList << clbhostresult_tmp
            end
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

      # DescribeWebshellStatus请求参数结构体
      class DescribeWebshellStatusRequest < TencentCloud::Common::AbstractModel
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

      # DescribeWebshellStatus返回参数结构体
      class DescribeWebshellStatusResponse < TencentCloud::Common::AbstractModel
        # @param Domain: webshell域名
        # @type Domain: String
        # @param Status: 开关状态
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domain, :Status, :RequestId

        def initialize(domain=nil, status=nil, requestid=nil)
          @Domain = domain
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # domain列表
      class DomainInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Cname: cname地址
        # @type Cname: String
        # @param Edition: 实例类型,sparta-waf表示saaswaf实例域名,clb-waf表示clbwaf实例域名,cdc-clb-waf表示CDC环境下clbwaf实例域名,cdn-waf表示cdnwaf实例域名
        # @type Edition: String
        # @param Region: 地域
        # @type Region: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param ClsStatus: 日志包
        # @type ClsStatus: Integer
        # @param FlowMode: clbwaf使用模式,0镜像模式 1清洗模式
        # @type FlowMode: Integer
        # @param Status: waf开关,0关闭 1开启
        # @type Status: Integer
        # @param Mode: 规则引擎防护模式,0观察模式 1拦截模式
        # @type Mode: Integer
        # @param Engine: 规则引擎和AI引擎防护模式联合状态,10规则引擎观察&&AI引擎关闭模式 11规则引擎观察&&AI引擎观察模式 12规则引擎观察&&AI引擎拦截模式 20规则引擎拦截&&AI引擎关闭模式 21规则引擎拦截&&AI引擎观察模式 22规则引擎拦截&&AI引擎拦截模式
        # @type Engine: Integer
        # @param CCList: CC列表
        # @type CCList: Array
        # @param RsList: 回源ip
        # @type RsList: Array
        # @param Ports: 服务端口配置
        # @type Ports: Array
        # @param LoadBalancerSet: 负载均衡器
        # @type LoadBalancerSet: Array
        # @param AppId: 用户id
        # @type AppId: Integer
        # @param State: clbwaf域名监听器状态,0操作成功 4正在绑定LB 6正在解绑LB 7解绑LB失败 8绑定LB失败 10内部错误
        # @type State: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Ipv6Status: Ipv6开关状态,0关闭 1开启
        # @type Ipv6Status: Integer
        # @param BotStatus: BOT开关状态,0关闭 1开启
        # @type BotStatus: Integer
        # @param Level: 版本信息
        # @type Level: Integer
        # @param PostCLSStatus: 是否开启投递CLS功能,0关闭 1开启
        # @type PostCLSStatus: Integer
        # @param PostCKafkaStatus: 是否开启投递CKafka功能,0关闭 1开启
        # @type PostCKafkaStatus: Integer
        # @param CdcClusters: cdc实例域名接入的集群信息,非cdc实例忽略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcClusters: String
        # @param ApiStatus: api安全开关状态,0关闭 1开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiStatus: Integer
        # @param AlbType: 应用型负载均衡类型,clb或者apisix，默认clb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbType: String
        # @param SgState: 安全组状态,0不展示 1非腾讯云源站 2安全组绑定失败 3安全组发生变更
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SgState: Integer
        # @param SgDetail: 安全组状态的详细解释
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SgDetail: String
        # @param CloudType: 域名类型:hybrid表示混合云域名，public表示公有云域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: String

        attr_accessor :Domain, :DomainId, :InstanceId, :Cname, :Edition, :Region, :InstanceName, :ClsStatus, :FlowMode, :Status, :Mode, :Engine, :CCList, :RsList, :Ports, :LoadBalancerSet, :AppId, :State, :CreateTime, :Ipv6Status, :BotStatus, :Level, :PostCLSStatus, :PostCKafkaStatus, :CdcClusters, :ApiStatus, :AlbType, :SgState, :SgDetail, :CloudType

        def initialize(domain=nil, domainid=nil, instanceid=nil, cname=nil, edition=nil, region=nil, instancename=nil, clsstatus=nil, flowmode=nil, status=nil, mode=nil, engine=nil, cclist=nil, rslist=nil, ports=nil, loadbalancerset=nil, appid=nil, state=nil, createtime=nil, ipv6status=nil, botstatus=nil, level=nil, postclsstatus=nil, postckafkastatus=nil, cdcclusters=nil, apistatus=nil, albtype=nil, sgstate=nil, sgdetail=nil, cloudtype=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceId = instanceid
          @Cname = cname
          @Edition = edition
          @Region = region
          @InstanceName = instancename
          @ClsStatus = clsstatus
          @FlowMode = flowmode
          @Status = status
          @Mode = mode
          @Engine = engine
          @CCList = cclist
          @RsList = rslist
          @Ports = ports
          @LoadBalancerSet = loadbalancerset
          @AppId = appid
          @State = state
          @CreateTime = createtime
          @Ipv6Status = ipv6status
          @BotStatus = botstatus
          @Level = level
          @PostCLSStatus = postclsstatus
          @PostCKafkaStatus = postckafkastatus
          @CdcClusters = cdcclusters
          @ApiStatus = apistatus
          @AlbType = albtype
          @SgState = sgstate
          @SgDetail = sgdetail
          @CloudType = cloudtype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceId = params['InstanceId']
          @Cname = params['Cname']
          @Edition = params['Edition']
          @Region = params['Region']
          @InstanceName = params['InstanceName']
          @ClsStatus = params['ClsStatus']
          @FlowMode = params['FlowMode']
          @Status = params['Status']
          @Mode = params['Mode']
          @Engine = params['Engine']
          @CCList = params['CCList']
          @RsList = params['RsList']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portinfo_tmp = PortInfo.new
              portinfo_tmp.deserialize(i)
              @Ports << portinfo_tmp
            end
          end
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancerpackagenew_tmp = LoadBalancerPackageNew.new
              loadbalancerpackagenew_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancerpackagenew_tmp
            end
          end
          @AppId = params['AppId']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @Ipv6Status = params['Ipv6Status']
          @BotStatus = params['BotStatus']
          @Level = params['Level']
          @PostCLSStatus = params['PostCLSStatus']
          @PostCKafkaStatus = params['PostCKafkaStatus']
          @CdcClusters = params['CdcClusters']
          @ApiStatus = params['ApiStatus']
          @AlbType = params['AlbType']
          @SgState = params['SgState']
          @SgDetail = params['SgDetail']
          @CloudType = params['CloudType']
        end
      end

      # clb-waf 域名扩展套餐
      class DomainPackageNew < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: String
        # @param ValidTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidTime: String
        # @param RenewFlag: 是否自动续费，1：自动续费，0：不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param Count: 套餐购买个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Region: 套餐购买地域，clb-waf暂时没有用到
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 唯一定位Domain
      class DomainURI < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Edition: 版本
        # @type Edition: String
        # @param InstanceID: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String

        attr_accessor :Domain, :Edition, :InstanceID

        def initialize(domain=nil, edition=nil, instanceid=nil)
          @Domain = domain
          @Edition = edition
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Edition = params['Edition']
          @InstanceID = params['InstanceID']
        end
      end

      # saas域名详情
      class DomainsPartInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名id
        # @type DomainId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Edition: 类型
        # @type Edition: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param Cert: 证书
        # @type Cert: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Engine: AI防御模式
        # @type Engine: Integer
        # @param HttpsRewrite: 是否开启httpRewrite
        # @type HttpsRewrite: Integer
        # @param HttpsUpstreamPort: https回源端口
        # @type HttpsUpstreamPort: String
        # @param IsCdn: 是否是cdn
        # @type IsCdn: Integer
        # @param IsGray: 是否开启gray
        # @type IsGray: Integer
        # @param IsHttp2: 是否是http2
        # @type IsHttp2: Integer
        # @param IsWebsocket: 是否开启websocket
        # @type IsWebsocket: Integer
        # @param LoadBalance: 负载均衡
        # @type LoadBalance: Integer
        # @param Mode: 防御模式
        # @type Mode: Integer
        # @param PrivateKey: 私钥
        # @type PrivateKey: String
        # @param SSLId: ssl id
        # @type SSLId: String
        # @param UpstreamDomain: 回源域名
        # @type UpstreamDomain: String
        # @param UpstreamType: 回源类型
        # @type UpstreamType: Integer
        # @param SrcList: 回源ip
        # @type SrcList: Array
        # @param Ports: 服务端口配置
        # @type Ports: Array
        # @param CertType: 证书类型
        # @type CertType: Integer
        # @param UpstreamScheme: 回源方式
        # @type UpstreamScheme: String
        # @param Cls: 日志包
        # @type Cls: Integer
        # @param Cname: 一级cname
        # @type Cname: String
        # @param IsKeepAlive: 是否长连接
        # @type IsKeepAlive: Integer
        # @param ActiveCheck: 是否开启主动健康检测，1表示开启，0表示不开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveCheck: Integer
        # @param TLSVersion: TLS版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TLSVersion: Integer
        # @param Ciphers: 加密套件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ciphers: Array
        # @param CipherTemplate: 模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CipherTemplate: Integer
        # @param ProxyReadTimeout: 300s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyReadTimeout: Integer
        # @param ProxySendTimeout: 300s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxySendTimeout: Integer
        # @param SniType: 0:关闭SNI；1:开启SNI，SNI=源请求host；2:开启SNI，SNI=修改为源站host；3：开启SNI，自定义host，SNI=SniHost；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SniType: Integer
        # @param SniHost: SniType=3时，需要填此参数，表示自定义的host；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SniHost: String
        # @param Weights: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weights: Array
        # @param IpHeaders: IsCdn=3时，表示自定义header
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpHeaders: Array
        # @param XFFReset: 0:关闭xff重置；1:开启xff重置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type XFFReset: Integer

        attr_accessor :Domain, :DomainId, :InstanceId, :Edition, :InstanceName, :Cert, :CreateTime, :Engine, :HttpsRewrite, :HttpsUpstreamPort, :IsCdn, :IsGray, :IsHttp2, :IsWebsocket, :LoadBalance, :Mode, :PrivateKey, :SSLId, :UpstreamDomain, :UpstreamType, :SrcList, :Ports, :CertType, :UpstreamScheme, :Cls, :Cname, :IsKeepAlive, :ActiveCheck, :TLSVersion, :Ciphers, :CipherTemplate, :ProxyReadTimeout, :ProxySendTimeout, :SniType, :SniHost, :Weights, :IpHeaders, :XFFReset

        def initialize(domain=nil, domainid=nil, instanceid=nil, edition=nil, instancename=nil, cert=nil, createtime=nil, engine=nil, httpsrewrite=nil, httpsupstreamport=nil, iscdn=nil, isgray=nil, ishttp2=nil, iswebsocket=nil, loadbalance=nil, mode=nil, privatekey=nil, sslid=nil, upstreamdomain=nil, upstreamtype=nil, srclist=nil, ports=nil, certtype=nil, upstreamscheme=nil, cls=nil, cname=nil, iskeepalive=nil, activecheck=nil, tlsversion=nil, ciphers=nil, ciphertemplate=nil, proxyreadtimeout=nil, proxysendtimeout=nil, snitype=nil, snihost=nil, weights=nil, ipheaders=nil, xffreset=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceId = instanceid
          @Edition = edition
          @InstanceName = instancename
          @Cert = cert
          @CreateTime = createtime
          @Engine = engine
          @HttpsRewrite = httpsrewrite
          @HttpsUpstreamPort = httpsupstreamport
          @IsCdn = iscdn
          @IsGray = isgray
          @IsHttp2 = ishttp2
          @IsWebsocket = iswebsocket
          @LoadBalance = loadbalance
          @Mode = mode
          @PrivateKey = privatekey
          @SSLId = sslid
          @UpstreamDomain = upstreamdomain
          @UpstreamType = upstreamtype
          @SrcList = srclist
          @Ports = ports
          @CertType = certtype
          @UpstreamScheme = upstreamscheme
          @Cls = cls
          @Cname = cname
          @IsKeepAlive = iskeepalive
          @ActiveCheck = activecheck
          @TLSVersion = tlsversion
          @Ciphers = ciphers
          @CipherTemplate = ciphertemplate
          @ProxyReadTimeout = proxyreadtimeout
          @ProxySendTimeout = proxysendtimeout
          @SniType = snitype
          @SniHost = snihost
          @Weights = weights
          @IpHeaders = ipheaders
          @XFFReset = xffreset
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceId = params['InstanceId']
          @Edition = params['Edition']
          @InstanceName = params['InstanceName']
          @Cert = params['Cert']
          @CreateTime = params['CreateTime']
          @Engine = params['Engine']
          @HttpsRewrite = params['HttpsRewrite']
          @HttpsUpstreamPort = params['HttpsUpstreamPort']
          @IsCdn = params['IsCdn']
          @IsGray = params['IsGray']
          @IsHttp2 = params['IsHttp2']
          @IsWebsocket = params['IsWebsocket']
          @LoadBalance = params['LoadBalance']
          @Mode = params['Mode']
          @PrivateKey = params['PrivateKey']
          @SSLId = params['SSLId']
          @UpstreamDomain = params['UpstreamDomain']
          @UpstreamType = params['UpstreamType']
          @SrcList = params['SrcList']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portinfo_tmp = PortInfo.new
              portinfo_tmp.deserialize(i)
              @Ports << portinfo_tmp
            end
          end
          @CertType = params['CertType']
          @UpstreamScheme = params['UpstreamScheme']
          @Cls = params['Cls']
          @Cname = params['Cname']
          @IsKeepAlive = params['IsKeepAlive']
          @ActiveCheck = params['ActiveCheck']
          @TLSVersion = params['TLSVersion']
          @Ciphers = params['Ciphers']
          @CipherTemplate = params['CipherTemplate']
          @ProxyReadTimeout = params['ProxyReadTimeout']
          @ProxySendTimeout = params['ProxySendTimeout']
          @SniType = params['SniType']
          @SniHost = params['SniHost']
          @Weights = params['Weights']
          @IpHeaders = params['IpHeaders']
          @XFFReset = params['XFFReset']
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

      # 过滤数组
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

      # 域名列表
      class FindAllDomainDetail < TencentCloud::Common::AbstractModel
        # @param Appid: 用户id
        # @type Appid: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param Ips: 域名ip
        # @type Ips: Array
        # @param FindTime: 发现时间
        # @type FindTime: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DomainId: 域名id
        # @type DomainId: String
        # @param Edition: waf类型
        # @type Edition: String
        # @param IsWafDomain: 是否接入waf
        # @type IsWafDomain: Integer

        attr_accessor :Appid, :Domain, :Ips, :FindTime, :InstanceId, :DomainId, :Edition, :IsWafDomain

        def initialize(appid=nil, domain=nil, ips=nil, findtime=nil, instanceid=nil, domainid=nil, edition=nil, iswafdomain=nil)
          @Appid = appid
          @Domain = domain
          @Ips = ips
          @FindTime = findtime
          @InstanceId = instanceid
          @DomainId = domainid
          @Edition = edition
          @IsWafDomain = iswafdomain
        end

        def deserialize(params)
          @Appid = params['Appid']
          @Domain = params['Domain']
          @Ips = params['Ips']
          @FindTime = params['FindTime']
          @InstanceId = params['InstanceId']
          @DomainId = params['DomainId']
          @Edition = params['Edition']
          @IsWafDomain = params['IsWafDomain']
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
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum, :RenewFlag

        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil, renewflag=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @InquireNum = params['InquireNum']
          @UsedNum = params['UsedNum']
          @RenewFlag = params['RenewFlag']
        end
      end

      # FreshAntiFakeUrl请求参数结构体
      class FreshAntiFakeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Id: Id
        # @type Id: Integer

        attr_accessor :Domain, :Id

        def initialize(domain=nil, id=nil)
          @Domain = domain
          @Id = id
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Id = params['Id']
        end
      end

      # FreshAntiFakeUrl返回参数结构体
      class FreshAntiFakeUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果成功与否
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

      # GenerateDealsAndPayNew请求参数结构体
      class GenerateDealsAndPayNewRequest < TencentCloud::Common::AbstractModel
        # @param Goods: 计费下单入参
        # @type Goods: Array

        attr_accessor :Goods

        def initialize(goods=nil)
          @Goods = goods
        end

        def deserialize(params)
          unless params['Goods'].nil?
            @Goods = []
            params['Goods'].each do |i|
              goodnews_tmp = GoodNews.new
              goodnews_tmp.deserialize(i)
              @Goods << goodnews_tmp
            end
          end
        end
      end

      # GenerateDealsAndPayNew返回参数结构体
      class GenerateDealsAndPayNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 计费下单响应结构体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.DealData`
        # @param Status: 1:成功，0:失败
        # @type Status: Integer
        # @param ReturnMessage: 返回message
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMessage: String
        # @param InstanceId: 购买的实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :ReturnMessage, :InstanceId, :RequestId

        def initialize(data=nil, status=nil, returnmessage=nil, instanceid=nil, requestid=nil)
          @Data = data
          @Status = status
          @ReturnMessage = returnmessage
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DealData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @ReturnMessage = params['ReturnMessage']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
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

      # GetAttackHistogram请求参数结构体
      class GetAttackHistogramRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 查询的域名，所有域名使用all
        # @type Domain: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param QueryString: Lucene语法
        # @type QueryString: String

        attr_accessor :Domain, :StartTime, :EndTime, :QueryString

        def initialize(domain=nil, starttime=nil, endtime=nil, querystring=nil)
          @Domain = domain
          @StartTime = starttime
          @EndTime = endtime
          @QueryString = querystring
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryString = params['QueryString']
        end
      end

      # GetAttackHistogram返回参数结构体
      class GetAttackHistogramResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计详情
        # @type Data: Array
        # @param Period: 时间段大小
        # @type Period: Integer
        # @param TotalCount: 统计的条目数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Period, :TotalCount, :RequestId

        def initialize(data=nil, period=nil, totalcount=nil, requestid=nil)
          @Data = data
          @Period = period
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              loghistograminfo_tmp = LogHistogramInfo.new
              loghistograminfo_tmp.deserialize(i)
              @Data << loghistograminfo_tmp
            end
          end
          @Period = params['Period']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetAttackTotalCount请求参数结构体
      class GetAttackTotalCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Domain: 查询的域名，全部域名不指定
        # @type Domain: String
        # @param QueryString: 查询条件，默认为""
        # @type QueryString: String

        attr_accessor :StartTime, :EndTime, :Domain, :QueryString

        def initialize(starttime=nil, endtime=nil, domain=nil, querystring=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Domain = domain
          @QueryString = querystring
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Domain = params['Domain']
          @QueryString = params['QueryString']
        end
      end

      # GetAttackTotalCount返回参数结构体
      class GetAttackTotalCountResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 攻击总次数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetInstanceQpsLimit请求参数结构体
      class GetInstanceQpsLimitRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 套餐实例id
        # @type InstanceId: String
        # @param Type: 套餐类型
        # @type Type: String

        attr_accessor :InstanceId, :Type

        def initialize(instanceid=nil, type=nil)
          @InstanceId = instanceid
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
        end
      end

      # GetInstanceQpsLimit返回参数结构体
      class GetInstanceQpsLimitResponse < TencentCloud::Common::AbstractModel
        # @param QpsData: 弹性qps相关值集合
        # @type QpsData: :class:`Tencentcloud::Waf.v20180125.models.QpsData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QpsData, :RequestId

        def initialize(qpsdata=nil, requestid=nil)
          @QpsData = qpsdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QpsData'].nil?
            @QpsData = QpsData.new
            @QpsData.deserialize(params['QpsData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 计费下单接口出入参Goods
      class GoodNews < TencentCloud::Common::AbstractModel
        # @param GoodsNum: 商品数量
        # @type GoodsNum: Integer
        # @param GoodsDetail: 商品明细
        # @type GoodsDetail: :class:`Tencentcloud::Waf.v20180125.models.GoodsDetailNew`
        # @param GoodsCategoryId: 订单类型ID，用来唯一标识一个业务的一种场景（总共三种场景：新购、配置变更、续费）
        # 高级版: 102375(新购),102376(续费),102377(变配)
        # 企业版 : 102378(新购),102379(续费),102380(变配)
        # 旗舰版 : 102369(新购),102370(续费),102371(变配)
        # 域名包 : 102372(新购),102373(续费),102374(变配)
        # 业务扩展包 : 101040(新购),101041(续费),101042(变配)

        # 高级版-CLB: 新购 101198  续费 101199 变配 101200
        # 企业版-CLB 101204(新购),101205(续费),101206(变配)
        # 旗舰版-CLB : 101201(新购),101202(续费),101203(变配)
        # 域名包-CLB: 101207(新购),101208(续费),101209(变配)
        # 业务扩展包-CLB: 101210(新购),101211(续费),101212(变配)

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsCategoryId: Integer
        # @param RegionId: 购买waf实例区域ID
        # 1 表示购买大陆资源;
        # 9表示购买非中国大陆资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer

        attr_accessor :GoodsNum, :GoodsDetail, :GoodsCategoryId, :RegionId

        def initialize(goodsnum=nil, goodsdetail=nil, goodscategoryid=nil, regionid=nil)
          @GoodsNum = goodsnum
          @GoodsDetail = goodsdetail
          @GoodsCategoryId = goodscategoryid
          @RegionId = regionid
        end

        def deserialize(params)
          @GoodsNum = params['GoodsNum']
          unless params['GoodsDetail'].nil?
            @GoodsDetail = GoodsDetailNew.new
            @GoodsDetail.deserialize(params['GoodsDetail'])
          end
          @GoodsCategoryId = params['GoodsCategoryId']
          @RegionId = params['RegionId']
        end
      end

      # 计费下单接口出入参Goods
      class Goods < TencentCloud::Common::AbstractModel
        # @param PayMode: 付费类型，1:预付费，0:后付费
        # @type PayMode: Integer
        # @param GoodsNum: 商品数量
        # @type GoodsNum: Integer
        # @param GoodsDetail: 商品明细
        # @type GoodsDetail: :class:`Tencentcloud::Waf.v20180125.models.GoodsDetail`
        # @param ProjectId: 默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param GoodsCategoryId: 计费类目ID，对应cid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsCategoryId: Integer
        # @param Platform: 平台类型，默认1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: Integer
        # @param RegionId: 购买waf实例区域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer

        attr_accessor :PayMode, :GoodsNum, :GoodsDetail, :ProjectId, :GoodsCategoryId, :Platform, :RegionId

        def initialize(paymode=nil, goodsnum=nil, goodsdetail=nil, projectid=nil, goodscategoryid=nil, platform=nil, regionid=nil)
          @PayMode = paymode
          @GoodsNum = goodsnum
          @GoodsDetail = goodsdetail
          @ProjectId = projectid
          @GoodsCategoryId = goodscategoryid
          @Platform = platform
          @RegionId = regionid
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @GoodsNum = params['GoodsNum']
          unless params['GoodsDetail'].nil?
            @GoodsDetail = GoodsDetail.new
            @GoodsDetail.deserialize(params['GoodsDetail'])
          end
          @ProjectId = params['ProjectId']
          @GoodsCategoryId = params['GoodsCategoryId']
          @Platform = params['Platform']
          @RegionId = params['RegionId']
        end
      end

      # 产品明细
      class GoodsDetail < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 时间间隔
        # @type TimeSpan: Integer
        # @param TimeUnit: 单位，支持m、y、d
        # @type TimeUnit: String
        # @param ProductCode: 产品码
        # @type ProductCode: String
        # @param SubProductCode: 二级产品码
        # @type SubProductCode: String
        # @param Pid: 计费策略id
        # @type Pid: Integer
        # @param ProductInfo: waf产品码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductInfo: Array
        # @param InstanceName: waf实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param ElasticQps: QPS数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticQps: Integer
        # @param FlexBill: 弹性账单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlexBill: Integer
        # @param AutoRenewFlag: 1:自动续费，0:不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param RealRegion: waf购买的实际地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealRegion: Integer
        # @param Type: Waf实例对应的二级产品码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param LabelTypes: 计费细项标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelTypes: Array
        # @param LabelCounts: 计费细项标签数量，一般和SvLabelType一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCounts: Array
        # @param CurDeadline: 变配使用，实例到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurDeadline: String
        # @param InstanceId: 对存在的实例购买bot 或api 安全
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :TimeSpan, :TimeUnit, :ProductCode, :SubProductCode, :Pid, :ProductInfo, :InstanceName, :ElasticQps, :FlexBill, :AutoRenewFlag, :RealRegion, :Type, :LabelTypes, :LabelCounts, :CurDeadline, :InstanceId

        def initialize(timespan=nil, timeunit=nil, productcode=nil, subproductcode=nil, pid=nil, productinfo=nil, instancename=nil, elasticqps=nil, flexbill=nil, autorenewflag=nil, realregion=nil, type=nil, labeltypes=nil, labelcounts=nil, curdeadline=nil, instanceid=nil)
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @Pid = pid
          @ProductInfo = productinfo
          @InstanceName = instancename
          @ElasticQps = elasticqps
          @FlexBill = flexbill
          @AutoRenewFlag = autorenewflag
          @RealRegion = realregion
          @Type = type
          @LabelTypes = labeltypes
          @LabelCounts = labelcounts
          @CurDeadline = curdeadline
          @InstanceId = instanceid
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @Pid = params['Pid']
          unless params['ProductInfo'].nil?
            @ProductInfo = []
            params['ProductInfo'].each do |i|
              productinfo_tmp = ProductInfo.new
              productinfo_tmp.deserialize(i)
              @ProductInfo << productinfo_tmp
            end
          end
          @InstanceName = params['InstanceName']
          @ElasticQps = params['ElasticQps']
          @FlexBill = params['FlexBill']
          @AutoRenewFlag = params['AutoRenewFlag']
          @RealRegion = params['RealRegion']
          @Type = params['Type']
          @LabelTypes = params['LabelTypes']
          @LabelCounts = params['LabelCounts']
          @CurDeadline = params['CurDeadline']
          @InstanceId = params['InstanceId']
        end
      end

      # 产品明细
      class GoodsDetailNew < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 时间间隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param TimeUnit: 单位，支持购买d、m、y 即（日、月、年）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param SubProductCode: 子产品标签,。新购，续费必传，变配时放在oldConfig newConfig里面

        # Saas 高级版 ：sp_wsm_waf_premium
        # Saas企业版 ：sp_wsm_waf_enterprise
        # Saas旗舰版 ：sp_wsm_waf_ultimate
        # Saas 业务扩展包：sp_wsm_waf_qpsep
        # Saas 域名扩展包：sp_wsm_waf_domain

        # 高级版-CLB:sp_wsm_waf_premium_clb
        # 企业版-CLB : sp_wsm_waf_enterprise_clb
        # 旗舰版-CLB:sp_wsm_waf_ultimate_clb
        #  业务扩展包-CLB：sp_wsm_waf_qpsep_clb
        # 域名扩展包-CLB：sp_wsm_waf_domain_clb

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductCode: String
        # @param Pid: 业务产品申请的pid（对应一个定价公式），通过pid计费查询到定价模型
        # 高级版 ：1000827
        # 企业版 ：1000830
        # 旗舰版 ：1000832
        # 域名包 : 1000834
        # 业务扩展包 : 1000481
        # 高级版-CLB:1001150
        # 企业版-CLB : 1001152
        # 旗舰版-CLB:1001154
        # 域名包-CLB: 1001156
        # 业务扩展包-CLB : 1001160

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pid: Integer
        # @param InstanceName: waf实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param AutoRenewFlag: 1:自动续费，0:不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param RealRegion: waf购买的实际地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealRegion: Integer
        # @param LabelTypes: 计费细项标签数组
        # Saas 高级版  sv_wsm_waf_package_premium
        # Saas 企业版  sv_wsm_waf_package_enterprise
        # Saas 旗舰版  sv_wsm_waf_package_ultimate
        # Saas 非中国大陆高级版  sv_wsm_waf_package_premium_intl
        # Saas 非中国大陆企业版   sv_wsm_waf_package_enterprise_intl
        # Saas 非中国大陆旗舰版  sv_wsm_waf_package_ultimate _intl
        # Saas 业务扩展包  sv_wsm_waf_qps_ep
        # Saas 域名扩展包  sv_wsm_waf_domain

        # 高级版CLB   sv_wsm_waf_package_premium_clb
        # 企业版CLB  sv_wsm_waf_package_enterprise_clb
        # 旗舰版CLB   sv_wsm_waf_package_ultimate_clb
        # 非中国大陆高级版 CLB sv_wsm_waf_package_premium_clb_intl
        # 非中国大陆企业版CLB   sv_wsm_waf_package_premium_clb_intl
        # 非中国大陆旗舰版CLB  sv_wsm_waf_package_ultimate_clb _intl
        # 业务扩展包CLB sv_wsm_waf_qps_ep_clb
        # 域名扩展包CLB  sv_wsm_waf_domain_clb

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelTypes: Array
        # @param LabelCounts: 计费细项标签数量，一般和SvLabelType一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCounts: Array
        # @param CurDeadline: 变配使用，实例到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurDeadline: String
        # @param InstanceId: 对存在的实例购买bot 或api 安全
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ResourceId: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String

        attr_accessor :TimeSpan, :TimeUnit, :SubProductCode, :Pid, :InstanceName, :AutoRenewFlag, :RealRegion, :LabelTypes, :LabelCounts, :CurDeadline, :InstanceId, :ResourceId

        def initialize(timespan=nil, timeunit=nil, subproductcode=nil, pid=nil, instancename=nil, autorenewflag=nil, realregion=nil, labeltypes=nil, labelcounts=nil, curdeadline=nil, instanceid=nil, resourceid=nil)
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @SubProductCode = subproductcode
          @Pid = pid
          @InstanceName = instancename
          @AutoRenewFlag = autorenewflag
          @RealRegion = realregion
          @LabelTypes = labeltypes
          @LabelCounts = labelcounts
          @CurDeadline = curdeadline
          @InstanceId = instanceid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @SubProductCode = params['SubProductCode']
          @Pid = params['Pid']
          @InstanceName = params['InstanceName']
          @AutoRenewFlag = params['AutoRenewFlag']
          @RealRegion = params['RealRegion']
          @LabelTypes = params['LabelTypes']
          @LabelCounts = params['LabelCounts']
          @CurDeadline = params['CurDeadline']
          @InstanceId = params['InstanceId']
          @ResourceId = params['ResourceId']
        end
      end

      # CLB-WAF删除域名参数
      class HostDel < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param InstanceID: 实例类型
        # @type InstanceID: String

        attr_accessor :Domain, :DomainId, :InstanceID

        def initialize(domain=nil, domainid=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceID = params['InstanceID']
        end
      end

      # clb-waf防护域名
      class HostRecord < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param MainDomain: 主域名，入参时为空
        # @type MainDomain: String
        # @param Mode: 规则引擎防护模式，0 观察模式，1拦截模式
        # @type Mode: Integer
        # @param Status: waf和LD的绑定，0：没有绑定，1：绑定
        # @type Status: Integer
        # @param State: 域名状态，0：正常，1：未检测到流量，2：即将过期，3：过期
        # @type State: Integer
        # @param Engine: 规则引擎和AI引擎防护模式联合状态,10规则引擎观察&&AI引擎关闭模式 11规则引擎观察&&AI引擎观察模式 12规则引擎观察&&AI引擎拦截模式 20规则引擎拦截&&AI引擎关闭模式 21规则引擎拦截&&AI引擎观察模式 22规则引擎拦截&&AI引擎拦截模式
        # @type Engine: Integer
        # @param IsCdn: 是否开启代理，0：不开启，1：开启
        # @type IsCdn: Integer
        # @param LoadBalancerSet: 绑定的LB列表
        # @type LoadBalancerSet: Array
        # @param Region: 域名绑定的LB的地域，以,分割多个地域
        # @type Region: String
        # @param Edition: 产品分类，取值为：sparta-waf、clb-waf、cdn-waf
        # @type Edition: String
        # @param FlowMode: WAF的流量模式，1：清洗模式，0：镜像模式
        # @type FlowMode: Integer
        # @param ClsStatus: 是否开启访问日志，1：开启，0：关闭
        # @type ClsStatus: Integer
        # @param Level: 防护等级，可选值100,200,300
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param CdcClusters: 域名需要下发到的cdc集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcClusters: Array
        # @param AlbType: 应用型负载均衡类型: clb或者apisix，默认clb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbType: String
        # @param IpHeaders: IsCdn=3时，需要填此参数，表示自定义header
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpHeaders: Array
        # @param EngineType: 规则引擎类型， 1: menshen,   2:tiga
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: Integer
        # @param CloudType: 云类型:public:公有云；private:私有云;hybrid:混合云
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: String

        attr_accessor :Domain, :DomainId, :MainDomain, :Mode, :Status, :State, :Engine, :IsCdn, :LoadBalancerSet, :Region, :Edition, :FlowMode, :ClsStatus, :Level, :CdcClusters, :AlbType, :IpHeaders, :EngineType, :CloudType

        def initialize(domain=nil, domainid=nil, maindomain=nil, mode=nil, status=nil, state=nil, engine=nil, iscdn=nil, loadbalancerset=nil, region=nil, edition=nil, flowmode=nil, clsstatus=nil, level=nil, cdcclusters=nil, albtype=nil, ipheaders=nil, enginetype=nil, cloudtype=nil)
          @Domain = domain
          @DomainId = domainid
          @MainDomain = maindomain
          @Mode = mode
          @Status = status
          @State = state
          @Engine = engine
          @IsCdn = iscdn
          @LoadBalancerSet = loadbalancerset
          @Region = region
          @Edition = edition
          @FlowMode = flowmode
          @ClsStatus = clsstatus
          @Level = level
          @CdcClusters = cdcclusters
          @AlbType = albtype
          @IpHeaders = ipheaders
          @EngineType = enginetype
          @CloudType = cloudtype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @MainDomain = params['MainDomain']
          @Mode = params['Mode']
          @Status = params['Status']
          @State = params['State']
          @Engine = params['Engine']
          @IsCdn = params['IsCdn']
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancer_tmp
            end
          end
          @Region = params['Region']
          @Edition = params['Edition']
          @FlowMode = params['FlowMode']
          @ClsStatus = params['ClsStatus']
          @Level = params['Level']
          @CdcClusters = params['CdcClusters']
          @AlbType = params['AlbType']
          @IpHeaders = params['IpHeaders']
          @EngineType = params['EngineType']
          @CloudType = params['CloudType']
        end
      end

      # 设置WAF状态的结构体
      class HostStatus < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param Status: WAF的开关，1：开，0：关
        # @type Status: Integer
        # @param InstanceID: 实例ID
        # @type InstanceID: String

        attr_accessor :Domain, :DomainId, :Status, :InstanceID

        def initialize(domain=nil, domainid=nil, status=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @Status = status
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Status = params['Status']
          @InstanceID = params['InstanceID']
        end
      end

      # 混合云节点资源信息
      class HybridPkg < TencentCloud::Common::AbstractModel
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
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum, :RenewFlag

        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil, renewflag=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @InquireNum = params['InquireNum']
          @UsedNum = params['UsedNum']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 一个实例的详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ResourceIds: 实例对应资源ID，计费使用
        # @type ResourceIds: String
        # @param Region: 实例所属地域
        # @type Region: String
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param RenewFlag: 自动续费标识。
        # 0：关闭
        # 1：开启
        # @type RenewFlag: Integer
        # @param Mode: 弹性计费开关。
        # 0：关闭
        # 1：开启
        # @type Mode: Integer
        # @param Level: 实例套餐版本。
        # 101：小微版
        # 102：超轻版
        # 2：高级版
        # 3：企业版
        # 4：旗舰版
        # 6：独享版
        # @type Level: Integer
        # @param ValidTime: 实例过期时间
        # @type ValidTime: String
        # @param BeginTime: 实例开始时间
        # @type BeginTime: String
        # @param DomainCount: 已配置域名个数
        # @type DomainCount: Integer
        # @param SubDomainLimit: 域名数量上限
        # @type SubDomainLimit: Integer
        # @param MainDomainCount: 已配置主域名个数
        # @type MainDomainCount: Integer
        # @param MainDomainLimit: 主域名数量上限
        # @type MainDomainLimit: Integer
        # @param MaxQPS: 实例30天内QPS峰值
        # @type MaxQPS: Integer
        # @param QPS: qps扩展包信息
        # @type QPS: :class:`Tencentcloud::Waf.v20180125.models.QPSPackageNew`
        # @param DomainPkg: 域名扩展包信息
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
        # @param AttackLogPost: 攻击日志投递开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackLogPost: Integer
        # @param MaxBandwidth: 带宽峰值，单位为B/s(字节每秒)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxBandwidth: Integer
        # @param APISecurity: api安全是否购买
        # @type APISecurity: Integer
        # @param QpsStandard: 购买的qps规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QpsStandard: Integer
        # @param BandwidthStandard: 购买的带宽规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthStandard: Integer
        # @param Status: 实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param SandboxQps: 实例沙箱qps值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SandboxQps: Integer
        # @param IsAPISecurityTrial: 是否api 安全试用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAPISecurityTrial: Integer
        # @param MajorEventsPkg: 重保包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MajorEventsPkg: :class:`Tencentcloud::Waf.v20180125.models.MajorEventsPkg`
        # @param HybridPkg: 混合云子节点包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HybridPkg: :class:`Tencentcloud::Waf.v20180125.models.HybridPkg`
        # @param ApiPkg: API安全资源包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiPkg: :class:`Tencentcloud::Waf.v20180125.models.ApiPkg`
        # @param MiniPkg: 小程序安全加速包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniPkg: :class:`Tencentcloud::Waf.v20180125.models.MiniPkg`
        # @param MiniQpsStandard: 小程序qps规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniQpsStandard: Integer
        # @param MiniMaxQPS: 小程序qps峰值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniMaxQPS: Integer
        # @param LastQpsExceedTime: 最近一次超量时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastQpsExceedTime: String

        attr_accessor :InstanceId, :InstanceName, :ResourceIds, :Region, :PayMode, :RenewFlag, :Mode, :Level, :ValidTime, :BeginTime, :DomainCount, :SubDomainLimit, :MainDomainCount, :MainDomainLimit, :MaxQPS, :QPS, :DomainPkg, :AppId, :Edition, :FraudPkg, :BotPkg, :BotQPS, :ElasticBilling, :AttackLogPost, :MaxBandwidth, :APISecurity, :QpsStandard, :BandwidthStandard, :Status, :SandboxQps, :IsAPISecurityTrial, :MajorEventsPkg, :HybridPkg, :ApiPkg, :MiniPkg, :MiniQpsStandard, :MiniMaxQPS, :LastQpsExceedTime

        def initialize(instanceid=nil, instancename=nil, resourceids=nil, region=nil, paymode=nil, renewflag=nil, mode=nil, level=nil, validtime=nil, begintime=nil, domaincount=nil, subdomainlimit=nil, maindomaincount=nil, maindomainlimit=nil, maxqps=nil, qps=nil, domainpkg=nil, appid=nil, edition=nil, fraudpkg=nil, botpkg=nil, botqps=nil, elasticbilling=nil, attacklogpost=nil, maxbandwidth=nil, apisecurity=nil, qpsstandard=nil, bandwidthstandard=nil, status=nil, sandboxqps=nil, isapisecuritytrial=nil, majoreventspkg=nil, hybridpkg=nil, apipkg=nil, minipkg=nil, miniqpsstandard=nil, minimaxqps=nil, lastqpsexceedtime=nil)
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
          @AttackLogPost = attacklogpost
          @MaxBandwidth = maxbandwidth
          @APISecurity = apisecurity
          @QpsStandard = qpsstandard
          @BandwidthStandard = bandwidthstandard
          @Status = status
          @SandboxQps = sandboxqps
          @IsAPISecurityTrial = isapisecuritytrial
          @MajorEventsPkg = majoreventspkg
          @HybridPkg = hybridpkg
          @ApiPkg = apipkg
          @MiniPkg = minipkg
          @MiniQpsStandard = miniqpsstandard
          @MiniMaxQPS = minimaxqps
          @LastQpsExceedTime = lastqpsexceedtime
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
          @AttackLogPost = params['AttackLogPost']
          @MaxBandwidth = params['MaxBandwidth']
          @APISecurity = params['APISecurity']
          @QpsStandard = params['QpsStandard']
          @BandwidthStandard = params['BandwidthStandard']
          @Status = params['Status']
          @SandboxQps = params['SandboxQps']
          @IsAPISecurityTrial = params['IsAPISecurityTrial']
          unless params['MajorEventsPkg'].nil?
            @MajorEventsPkg = MajorEventsPkg.new
            @MajorEventsPkg.deserialize(params['MajorEventsPkg'])
          end
          unless params['HybridPkg'].nil?
            @HybridPkg = HybridPkg.new
            @HybridPkg.deserialize(params['HybridPkg'])
          end
          unless params['ApiPkg'].nil?
            @ApiPkg = ApiPkg.new
            @ApiPkg.deserialize(params['ApiPkg'])
          end
          unless params['MiniPkg'].nil?
            @MiniPkg = MiniPkg.new
            @MiniPkg.deserialize(params['MiniPkg'])
          end
          @MiniQpsStandard = params['MiniQpsStandard']
          @MiniMaxQPS = params['MiniMaxQPS']
          @LastQpsExceedTime = params['LastQpsExceedTime']
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
        # @param Id: mongo表自增Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
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
        # @param ValidStatus: 生效状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidStatus: Integer

        attr_accessor :Id, :ActionType, :Ip, :Note, :Source, :TsVersion, :ValidTs, :ValidStatus

        def initialize(id=nil, actiontype=nil, ip=nil, note=nil, source=nil, tsversion=nil, validts=nil, validstatus=nil)
          @Id = id
          @ActionType = actiontype
          @Ip = ip
          @Note = note
          @Source = source
          @TsVersion = tsversion
          @ValidTs = validts
          @ValidStatus = validstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @ActionType = params['ActionType']
          @Ip = params['Ip']
          @Note = params['Note']
          @Source = params['Source']
          @TsVersion = params['TsVersion']
          @ValidTs = params['ValidTs']
          @ValidStatus = params['ValidStatus']
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

      # Key-Value的形式，Value为Int
      class KVInt < TencentCloud::Common::AbstractModel
        # @param Key: Key
        # @type Key: String
        # @param Value: Value
        # @type Value: Integer

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

      # 负载均衡的监听器
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡LD的ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡LD的名称
        # @type LoadBalancerName: String
        # @param ListenerId: 负载均衡监听器的ID
        # @type ListenerId: String
        # @param ListenerName: 负载均衡监听器的名称
        # @type ListenerName: String
        # @param Vip: 负载均衡实例的IP
        # @type Vip: String
        # @param Vport: 负载均衡实例的端口
        # @type Vport: Integer
        # @param Region: 负载均衡LD的地域
        # @type Region: String
        # @param Protocol: 监听器协议，http、https
        # @type Protocol: String
        # @param Zone: 负载均衡监听器所在的zone
        # @type Zone: String
        # @param NumericalVpcId: 负载均衡的VPCID，公网为-1，内网按实际填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumericalVpcId: Integer
        # @param LoadBalancerType: 负载均衡的网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param LoadBalancerDomain: 负载均衡的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDomain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :ListenerId, :ListenerName, :Vip, :Vport, :Region, :Protocol, :Zone, :NumericalVpcId, :LoadBalancerType, :LoadBalancerDomain

        def initialize(loadbalancerid=nil, loadbalancername=nil, listenerid=nil, listenername=nil, vip=nil, vport=nil, region=nil, protocol=nil, zone=nil, numericalvpcid=nil, loadbalancertype=nil, loadbalancerdomain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @ListenerId = listenerid
          @ListenerName = listenername
          @Vip = vip
          @Vport = vport
          @Region = region
          @Protocol = protocol
          @Zone = zone
          @NumericalVpcId = numericalvpcid
          @LoadBalancerType = loadbalancertype
          @LoadBalancerDomain = loadbalancerdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Region = params['Region']
          @Protocol = params['Protocol']
          @Zone = params['Zone']
          @NumericalVpcId = params['NumericalVpcId']
          @LoadBalancerType = params['LoadBalancerType']
          @LoadBalancerDomain = params['LoadBalancerDomain']
        end
      end

      # 负载均衡器
      class LoadBalancerPackageNew < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param ListenerName: 监听名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param LoadBalancerId: 负载均衡id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Region: 地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Vip: 接入IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 接入端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param Zone: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param NumericalVpcId: VPCID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumericalVpcId: Integer
        # @param LoadBalancerType: CLB类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param LoadBalancerDomain: 负载均衡器的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDomain: String

        attr_accessor :ListenerId, :ListenerName, :LoadBalancerId, :LoadBalancerName, :Protocol, :Region, :Vip, :Vport, :Zone, :NumericalVpcId, :LoadBalancerType, :LoadBalancerDomain

        def initialize(listenerid=nil, listenername=nil, loadbalancerid=nil, loadbalancername=nil, protocol=nil, region=nil, vip=nil, vport=nil, zone=nil, numericalvpcid=nil, loadbalancertype=nil, loadbalancerdomain=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Protocol = protocol
          @Region = region
          @Vip = vip
          @Vport = vport
          @Zone = zone
          @NumericalVpcId = numericalvpcid
          @LoadBalancerType = loadbalancertype
          @LoadBalancerDomain = loadbalancerdomain
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Protocol = params['Protocol']
          @Region = params['Region']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Zone = params['Zone']
          @NumericalVpcId = params['NumericalVpcId']
          @LoadBalancerType = params['LoadBalancerType']
          @LoadBalancerDomain = params['LoadBalancerDomain']
        end
      end

      # 攻击日志统计详情
      class LogHistogramInfo < TencentCloud::Common::AbstractModel
        # @param Count: 日志条数
        # @type Count: Integer
        # @param TimeStamp: 时间戳
        # @type TimeStamp: Integer

        attr_accessor :Count, :TimeStamp

        def initialize(count=nil, timestamp=nil)
          @Count = count
          @TimeStamp = timestamp
        end

        def deserialize(params)
          @Count = params['Count']
          @TimeStamp = params['TimeStamp']
        end
      end

      # 重保防护资源信息
      class MajorEventsPkg < TencentCloud::Common::AbstractModel
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
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param BillingItem: 计费项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingItem: String
        # @param HWState: 护网包状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HWState: Integer

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :InquireNum, :UsedNum, :RenewFlag, :BillingItem, :HWState

        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, inquirenum=nil, usednum=nil, renewflag=nil, billingitem=nil, hwstate=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @InquireNum = inquirenum
          @UsedNum = usednum
          @RenewFlag = renewflag
          @BillingItem = billingitem
          @HWState = hwstate
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @InquireNum = params['InquireNum']
          @UsedNum = params['UsedNum']
          @RenewFlag = params['RenewFlag']
          @BillingItem = params['BillingItem']
          @HWState = params['HWState']
        end
      end

      # API安全资源信息
      class MiniPkg < TencentCloud::Common::AbstractModel
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
        # @param Count: 购买数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param BillingItem: 计费项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingItem: String

        attr_accessor :ResourceIds, :Status, :Region, :BeginTime, :EndTime, :Count, :RenewFlag, :BillingItem

        def initialize(resourceids=nil, status=nil, region=nil, begintime=nil, endtime=nil, count=nil, renewflag=nil, billingitem=nil)
          @ResourceIds = resourceids
          @Status = status
          @Region = region
          @BeginTime = begintime
          @EndTime = endtime
          @Count = count
          @RenewFlag = renewflag
          @BillingItem = billingitem
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
          @Region = params['Region']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Count = params['Count']
          @RenewFlag = params['RenewFlag']
          @BillingItem = params['BillingItem']
        end
      end

      # ModifyAccessPeriod请求参数结构体
      class ModifyAccessPeriodRequest < TencentCloud::Common::AbstractModel
        # @param Period: 访问日志保存期限，范围为[1, 180]
        # @type Period: Integer
        # @param TopicId: 日志主题，新版本不需要再传
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

      # ModifyAntiFakeUrl请求参数结构体
      class ModifyAntiFakeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Name: 名称
        # @type Name: String
        # @param Uri: uri
        # @type Uri: String
        # @param Id: ID
        # @type Id: Integer

        attr_accessor :Domain, :Name, :Uri, :Id

        def initialize(domain=nil, name=nil, uri=nil, id=nil)
          @Domain = domain
          @Name = name
          @Uri = uri
          @Id = id
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Name = params['Name']
          @Uri = params['Uri']
          @Id = params['Id']
        end
      end

      # ModifyAntiFakeUrl返回参数结构体
      class ModifyAntiFakeUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果
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

      # ModifyAntiFakeUrlStatus请求参数结构体
      class ModifyAntiFakeUrlStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Status: 状态
        # @type Status: Integer
        # @param Ids: Id列表
        # @type Ids: Array

        attr_accessor :Domain, :Status, :Ids

        def initialize(domain=nil, status=nil, ids=nil)
          @Domain = domain
          @Status = status
          @Ids = ids
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @Ids = params['Ids']
        end
      end

      # ModifyAntiFakeUrlStatus返回参数结构体
      class ModifyAntiFakeUrlStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAntiInfoLeakRuleStatus请求参数结构体
      class ModifyAntiInfoLeakRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RuleId: 规则
        # @type RuleId: Integer
        # @param Status: 状态
        # @type Status: Integer

        attr_accessor :Domain, :RuleId, :Status

        def initialize(domain=nil, ruleid=nil, status=nil)
          @Domain = domain
          @RuleId = ruleid
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
          @Status = params['Status']
        end
      end

      # ModifyAntiInfoLeakRuleStatus返回参数结构体
      class ModifyAntiInfoLeakRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAntiInfoLeakRules请求参数结构体
      class ModifyAntiInfoLeakRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param Domain: 域名
        # @type Domain: String
        # @param ActionType: Action 值
        # @type ActionType: Integer
        # @param Strategies: 策略数组
        # @type Strategies: Array

        attr_accessor :RuleId, :Name, :Domain, :ActionType, :Strategies

        def initialize(ruleid=nil, name=nil, domain=nil, actiontype=nil, strategies=nil)
          @RuleId = ruleid
          @Name = name
          @Domain = domain
          @ActionType = actiontype
          @Strategies = strategies
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Domain = params['Domain']
          @ActionType = params['ActionType']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategyforantiinfoleak_tmp = StrategyForAntiInfoLeak.new
              strategyforantiinfoleak_tmp.deserialize(i)
              @Strategies << strategyforantiinfoleak_tmp
            end
          end
        end
      end

      # ModifyAntiInfoLeakRules返回参数结构体
      class ModifyAntiInfoLeakRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApiAnalyzeStatus请求参数结构体
      class ModifyApiAnalyzeStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 开关状态
        # @type Status: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param TargetList: 需要批量开启的实体列表
        # @type TargetList: Array

        attr_accessor :Status, :Domain, :InstanceId, :TargetList

        def initialize(status=nil, domain=nil, instanceid=nil, targetlist=nil)
          @Status = status
          @Domain = domain
          @InstanceId = instanceid
          @TargetList = targetlist
        end

        def deserialize(params)
          @Status = params['Status']
          @Domain = params['Domain']
          @InstanceId = params['InstanceId']
          unless params['TargetList'].nil?
            @TargetList = []
            params['TargetList'].each do |i|
              targetentity_tmp = TargetEntity.new
              targetentity_tmp.deserialize(i)
              @TargetList << targetentity_tmp
            end
          end
        end
      end

      # ModifyApiAnalyzeStatus返回参数结构体
      class ModifyApiAnalyzeStatusResponse < TencentCloud::Common::AbstractModel
        # @param Count: 已经开启的数量,如果返回值为3（大于支持的域名开启数量），则表示开启失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param UnSupportedList: 不支持开启的域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnSupportedList: Array
        # @param FailDomainList: 开启/关闭失败的域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailDomainList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :UnSupportedList, :FailDomainList, :RequestId

        def initialize(count=nil, unsupportedlist=nil, faildomainlist=nil, requestid=nil)
          @Count = count
          @UnSupportedList = unsupportedlist
          @FailDomainList = faildomainlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @UnSupportedList = params['UnSupportedList']
          @FailDomainList = params['FailDomainList']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAreaBanStatus请求参数结构体
      class ModifyAreaBanStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要修改的域名
        # @type Domain: String
        # @param Status: 状态值，0表示关闭，1表示开启
        # @type Status: Integer

        attr_accessor :Domain, :Status

        def initialize(domain=nil, status=nil)
          @Domain = domain
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
        end
      end

      # ModifyAreaBanStatus返回参数结构体
      class ModifyAreaBanStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAttackWhiteRule请求参数结构体
      class ModifyAttackWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则序号
        # @type RuleId: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param SignatureId: 规则Id
        # @type SignatureId: String
        # @param Status: 规则状态
        # @type Status: Integer
        # @param Rules: 匹配规则项列表
        # @type Rules: Array

        attr_accessor :RuleId, :Domain, :SignatureId, :Status, :Rules

        def initialize(ruleid=nil, domain=nil, signatureid=nil, status=nil, rules=nil)
          @RuleId = ruleid
          @Domain = domain
          @SignatureId = signatureid
          @Status = status
          @Rules = rules
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Domain = params['Domain']
          @SignatureId = params['SignatureId']
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              userwhiteruleitem_tmp = UserWhiteRuleItem.new
              userwhiteruleitem_tmp.deserialize(i)
              @Rules << userwhiteruleitem_tmp
            end
          end
        end
      end

      # ModifyAttackWhiteRule返回参数结构体
      class ModifyAttackWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则总数
        # @type RuleId: Integer
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

      # ModifyBotStatus请求参数结构体
      class ModifyBotStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Category: 类别
        # @type Category: String
        # @param Status: 状态
        # @type Status: String
        # @param InstanceID: 实例id
        # @type InstanceID: String
        # @param IsVersionFour: 是否是bot4.0版本
        # @type IsVersionFour: Boolean
        # @param BotVersion: 传入Bot版本号，场景化版本为"4.1.0"
        # @type BotVersion: String

        attr_accessor :Domain, :Category, :Status, :InstanceID, :IsVersionFour, :BotVersion

        def initialize(domain=nil, category=nil, status=nil, instanceid=nil, isversionfour=nil, botversion=nil)
          @Domain = domain
          @Category = category
          @Status = status
          @InstanceID = instanceid
          @IsVersionFour = isversionfour
          @BotVersion = botversion
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Category = params['Category']
          @Status = params['Status']
          @InstanceID = params['InstanceID']
          @IsVersionFour = params['IsVersionFour']
          @BotVersion = params['BotVersion']
        end
      end

      # ModifyBotStatus返回参数结构体
      class ModifyBotStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 正常情况为null
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

      # ModifyCustomRule请求参数结构体
      class ModifyCustomRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 编辑的域名
        # @type Domain: String
        # @param RuleId: 编辑的规则ID
        # @type RuleId: Integer
        # @param RuleName: 编辑的规则名称
        # @type RuleName: String
        # @param RuleAction: 执行动作，0：放行、1：阻断、2：人机识别、3：观察、4：重定向
        # @type RuleAction: String
        # @param Strategies: 匹配条件数组
        # @type Strategies: Array
        # @param Edition: WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        # @type Edition: String
        # @param Redirect: 动作为重定向的时候重定向URL，默认为"/"
        # @type Redirect: String
        # @param Bypass: 放行时是否继续执行其它检查逻辑，继续执行地域封禁防护：geoip、继续执行CC策略防护：cc、继续执行WEB应用防护：owasp、继续执行AI引擎防护：ai、继续执行信息防泄漏防护：antileakage。如果多个勾选那么以,串接。
        # 默认是"geoip,cc,owasp,ai,antileakage"
        # @type Bypass: String
        # @param SortId: 优先级，1~100的整数，数字越小，代表这条规则的执行优先级越高。
        # 默认是100
        # @type SortId: Integer
        # @param ExpireTime: 规则生效截止时间，0：永久生效，其它值为对应时间的时间戳。
        # 默认是0
        # @type ExpireTime: Integer

        attr_accessor :Domain, :RuleId, :RuleName, :RuleAction, :Strategies, :Edition, :Redirect, :Bypass, :SortId, :ExpireTime

        def initialize(domain=nil, ruleid=nil, rulename=nil, ruleaction=nil, strategies=nil, edition=nil, redirect=nil, bypass=nil, sortid=nil, expiretime=nil)
          @Domain = domain
          @RuleId = ruleid
          @RuleName = rulename
          @RuleAction = ruleaction
          @Strategies = strategies
          @Edition = edition
          @Redirect = redirect
          @Bypass = bypass
          @SortId = sortid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleAction = params['RuleAction']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategy_tmp = Strategy.new
              strategy_tmp.deserialize(i)
              @Strategies << strategy_tmp
            end
          end
          @Edition = params['Edition']
          @Redirect = params['Redirect']
          @Bypass = params['Bypass']
          @SortId = params['SortId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # ModifyCustomRule返回参数结构体
      class ModifyCustomRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCustomWhiteRule请求参数结构体
      class ModifyCustomWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 编辑的域名
        # @type Domain: String
        # @param RuleId: 编辑的规则ID
        # @type RuleId: Integer
        # @param RuleName: 编辑的规则名称
        # @type RuleName: String
        # @param Bypass: 放行时是否继续执行其它检查逻辑，继续执行地域封禁防护：geoip、继续执行CC策略防护：cc、继续执行WEB应用防护：owasp、继续执行AI引擎防护：ai、继续执行信息防泄漏防护：antileakage。如果勾选多个，则以“，”串接。
        # @type Bypass: String
        # @param SortId: 优先级，1~100的整数，数字越小，代表这条规则的执行优先级越高。
        # @type SortId: Integer
        # @param ExpireTime: 规则生效截止时间，0：永久生效，其它值为对应时间的时间戳。
        # @type ExpireTime: Integer
        # @param Strategies: 匹配条件数组
        # @type Strategies: Array

        attr_accessor :Domain, :RuleId, :RuleName, :Bypass, :SortId, :ExpireTime, :Strategies

        def initialize(domain=nil, ruleid=nil, rulename=nil, bypass=nil, sortid=nil, expiretime=nil, strategies=nil)
          @Domain = domain
          @RuleId = ruleid
          @RuleName = rulename
          @Bypass = bypass
          @SortId = sortid
          @ExpireTime = expiretime
          @Strategies = strategies
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Bypass = params['Bypass']
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
        end
      end

      # ModifyCustomWhiteRule返回参数结构体
      class ModifyCustomWhiteRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCustomWhiteRuleStatus请求参数结构体
      class ModifyCustomWhiteRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Status: 开关的状态，1是开启、0是关闭
        # @type Status: Integer

        attr_accessor :Domain, :RuleId, :Status

        def initialize(domain=nil, ruleid=nil, status=nil)
          @Domain = domain
          @RuleId = ruleid
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleId = params['RuleId']
          @Status = params['Status']
        end
      end

      # ModifyCustomWhiteRuleStatus返回参数结构体
      class ModifyCustomWhiteRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomainIpv6Status请求参数结构体
      class ModifyDomainIpv6StatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要修改的域名所属的实例ID
        # @type InstanceId: String
        # @param Domain: 需要修改的域名
        # @type Domain: String
        # @param DomainId: 需要修改的域名ID
        # @type DomainId: String
        # @param Status: 修改域名的Ipv6开关为Status （1:开启 2:关闭）
        # @type Status: Integer

        attr_accessor :InstanceId, :Domain, :DomainId, :Status

        def initialize(instanceid=nil, domain=nil, domainid=nil, status=nil)
          @InstanceId = instanceid
          @Domain = domain
          @DomainId = domainid
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Status = params['Status']
        end
      end

      # ModifyDomainIpv6Status返回参数结构体
      class ModifyDomainIpv6StatusResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6Status: 返回的状态 （0: 操作失败 1:操作成功 2:企业版以上不支持 3:企业版以下不支持 ）
        # @type Ipv6Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6Status, :RequestId

        def initialize(ipv6status=nil, requestid=nil)
          @Ipv6Status = ipv6status
          @RequestId = requestid
        end

        def deserialize(params)
          @Ipv6Status = params['Ipv6Status']
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
        # @param Status: 规则的开关状态，0表示关闭开关，1表示打开开关
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

      # ModifyDomainsCLSStatus请求参数结构体
      class ModifyDomainsCLSStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 需要修改的域名列表
        # @type Domains: Array
        # @param Status: 修改域名的访问日志开关为Status
        # @type Status: Integer

        attr_accessor :Domains, :Status

        def initialize(domains=nil, status=nil)
          @Domains = domains
          @Status = status
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              domainuri_tmp = DomainURI.new
              domainuri_tmp.deserialize(i)
              @Domains << domainuri_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # ModifyDomainsCLSStatus返回参数结构体
      class ModifyDomainsCLSStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGenerateDeals请求参数结构体
      class ModifyGenerateDealsRequest < TencentCloud::Common::AbstractModel
        # @param Goods: 计费下单入参
        # @type Goods: Array

        attr_accessor :Goods

        def initialize(goods=nil)
          @Goods = goods
        end

        def deserialize(params)
          unless params['Goods'].nil?
            @Goods = []
            params['Goods'].each do |i|
              goods_tmp = Goods.new
              goods_tmp.deserialize(i)
              @Goods << goods_tmp
            end
          end
        end
      end

      # ModifyGenerateDeals返回参数结构体
      class ModifyGenerateDealsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 计费下单响应结构体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Waf.v20180125.models.DealData`
        # @param Status: 1:成功，0:失败
        # @type Status: Integer
        # @param ReturnMessage: 返回message
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :ReturnMessage, :RequestId

        def initialize(data=nil, status=nil, returnmessage=nil, requestid=nil)
          @Data = data
          @Status = status
          @ReturnMessage = returnmessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DealData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @ReturnMessage = params['ReturnMessage']
          @RequestId = params['RequestId']
        end
      end

      # ModifyHostFlowMode请求参数结构体
      class ModifyHostFlowModeRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param FlowMode: WAF流量模式，1：清洗模式，0：镜像模式（默认）
        # @type FlowMode: Integer
        # @param InstanceID: 实例ID
        # @type InstanceID: String

        attr_accessor :Domain, :DomainId, :FlowMode, :InstanceID

        def initialize(domain=nil, domainid=nil, flowmode=nil, instanceid=nil)
          @Domain = domain
          @DomainId = domainid
          @FlowMode = flowmode
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @FlowMode = params['FlowMode']
          @InstanceID = params['InstanceID']
        end
      end

      # ModifyHostFlowMode返回参数结构体
      class ModifyHostFlowModeResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功的状态码
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

      # ModifyHostMode请求参数结构体
      class ModifyHostModeRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param Mode: 防护状态：
        # 10：规则观察&&AI关闭模式，11：规则观察&&AI观察模式，12：规则观察&&AI拦截模式
        # 20：规则拦截&&AI关闭模式，21：规则拦截&&AI观察模式，22：规则拦截&&AI拦截模式
        # @type Mode: Integer
        # @param Type: 0:修改防护模式，1:修改AI
        # @type Type: Integer
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Edition: 实例类型
        # @type Edition: String

        attr_accessor :Domain, :DomainId, :Mode, :Type, :InstanceID, :Edition

        def initialize(domain=nil, domainid=nil, mode=nil, type=nil, instanceid=nil, edition=nil)
          @Domain = domain
          @DomainId = domainid
          @Mode = mode
          @Type = type
          @InstanceID = instanceid
          @Edition = edition
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Mode = params['Mode']
          @Type = params['Type']
          @InstanceID = params['InstanceID']
          @Edition = params['Edition']
        end
      end

      # ModifyHostMode返回参数结构体
      class ModifyHostModeResponse < TencentCloud::Common::AbstractModel
        # @param Success: 操作的状态码，如果所有的资源操作成功则返回的是成功的状态码，如果有资源操作失败则需要解析Message的内容来查看哪个资源失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyHost请求参数结构体
      class ModifyHostRequest < TencentCloud::Common::AbstractModel
        # @param Host: 编辑的域名配置信息
        # @type Host: :class:`Tencentcloud::Waf.v20180125.models.HostRecord`
        # @param InstanceID: 实例id
        # @type InstanceID: String

        attr_accessor :Host, :InstanceID

        def initialize(host=nil, instanceid=nil)
          @Host = host
          @InstanceID = instanceid
        end

        def deserialize(params)
          unless params['Host'].nil?
            @Host = HostRecord.new
            @Host.deserialize(params['Host'])
          end
          @InstanceID = params['InstanceID']
        end
      end

      # ModifyHost返回参数结构体
      class ModifyHostResponse < TencentCloud::Common::AbstractModel
        # @param DomainId: 编辑的域名ID
        # @type DomainId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainId, :RequestId

        def initialize(domainid=nil, requestid=nil)
          @DomainId = domainid
          @RequestId = requestid
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyHostStatus请求参数结构体
      class ModifyHostStatusRequest < TencentCloud::Common::AbstractModel
        # @param HostsStatus: 域名状态列表
        # @type HostsStatus: Array

        attr_accessor :HostsStatus

        def initialize(hostsstatus=nil)
          @HostsStatus = hostsstatus
        end

        def deserialize(params)
          unless params['HostsStatus'].nil?
            @HostsStatus = []
            params['HostsStatus'].each do |i|
              hoststatus_tmp = HostStatus.new
              hoststatus_tmp.deserialize(i)
              @HostsStatus << hoststatus_tmp
            end
          end
        end
      end

      # ModifyHostStatus返回参数结构体
      class ModifyHostStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceElasticMode请求参数结构体
      class ModifyInstanceElasticModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Mode: 弹性计费开关
        # @type Mode: Integer

        attr_accessor :InstanceId, :Mode

        def initialize(instanceid=nil, mode=nil)
          @InstanceId = instanceid
          @Mode = mode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Mode = params['Mode']
        end
      end

      # ModifyInstanceElasticMode返回参数结构体
      class ModifyInstanceElasticModeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceName请求参数结构体
      class ModifyInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 新名称
        # @type InstanceName: String
        # @param InstanceID: 实例id
        # @type InstanceID: String
        # @param Edition: 版本
        # @type Edition: String

        attr_accessor :InstanceName, :InstanceID, :Edition

        def initialize(instancename=nil, instanceid=nil, edition=nil)
          @InstanceName = instancename
          @InstanceID = instanceid
          @Edition = edition
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceID = params['InstanceID']
          @Edition = params['Edition']
        end
      end

      # ModifyInstanceName返回参数结构体
      class ModifyInstanceNameResponse < TencentCloud::Common::AbstractModel
        # @param ModifyCode: 修改状态：0为成功
        # @type ModifyCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModifyCode, :RequestId

        def initialize(modifycode=nil, requestid=nil)
          @ModifyCode = modifycode
          @RequestId = requestid
        end

        def deserialize(params)
          @ModifyCode = params['ModifyCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceQpsLimit请求参数结构体
      class ModifyInstanceQpsLimitRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 套餐实例id
        # @type InstanceId: String
        # @param QpsLimit: qps上限
        # @type QpsLimit: Integer

        attr_accessor :InstanceId, :QpsLimit

        def initialize(instanceid=nil, qpslimit=nil)
          @InstanceId = instanceid
          @QpsLimit = qpslimit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @QpsLimit = params['QpsLimit']
        end
      end

      # ModifyInstanceQpsLimit返回参数结构体
      class ModifyInstanceQpsLimitResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceRenewFlag请求参数结构体
      class ModifyInstanceRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RenewFlag: 续费开关
        # @type RenewFlag: Integer

        attr_accessor :InstanceId, :RenewFlag

        def initialize(instanceid=nil, renewflag=nil)
          @InstanceId = instanceid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # ModifyInstanceRenewFlag返回参数结构体
      class ModifyInstanceRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleStatus请求参数结构体
      class ModifyModuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要设置的domain
        # @type Domain: String
        # @param WebSecurity: WEB 安全模块开关，0或1
        # @type WebSecurity: Integer
        # @param AccessControl: 访问控制模块开关，0或者1
        # @type AccessControl: Integer
        # @param CcProtection: CC模块开关，0或者1
        # @type CcProtection: Integer
        # @param ApiProtection: API安全模块开关，0或者1
        # @type ApiProtection: Integer
        # @param AntiTamper: 防篡改模块开关，0或者1
        # @type AntiTamper: Integer
        # @param AntiLeakage: 防泄漏模块开关，0或者1
        # @type AntiLeakage: Integer
        # @param RateLimit: 限流模块开关，0或1
        # @type RateLimit: Integer

        attr_accessor :Domain, :WebSecurity, :AccessControl, :CcProtection, :ApiProtection, :AntiTamper, :AntiLeakage, :RateLimit

        def initialize(domain=nil, websecurity=nil, accesscontrol=nil, ccprotection=nil, apiprotection=nil, antitamper=nil, antileakage=nil, ratelimit=nil)
          @Domain = domain
          @WebSecurity = websecurity
          @AccessControl = accesscontrol
          @CcProtection = ccprotection
          @ApiProtection = apiprotection
          @AntiTamper = antitamper
          @AntiLeakage = antileakage
          @RateLimit = ratelimit
        end

        def deserialize(params)
          @Domain = params['Domain']
          @WebSecurity = params['WebSecurity']
          @AccessControl = params['AccessControl']
          @CcProtection = params['CcProtection']
          @ApiProtection = params['ApiProtection']
          @AntiTamper = params['AntiTamper']
          @AntiLeakage = params['AntiLeakage']
          @RateLimit = params['RateLimit']
        end
      end

      # ModifyModuleStatus返回参数结构体
      class ModifyModuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyObject请求参数结构体
      class ModifyObjectRequest < TencentCloud::Common::AbstractModel
        # @param ObjectId: 修改对象标识
        # @type ObjectId: String
        # @param OpType: 改动作类型:Status修改开关，InstanceId绑定实例
        # @type OpType: String
        # @param Status: 新的Waf开关状态，如果和已有状态相同认为修改成功
        # @type Status: Integer
        # @param InstanceId: 新的实例ID，如果和已绑定的实例相同认为修改成功
        # @type InstanceId: String

        attr_accessor :ObjectId, :OpType, :Status, :InstanceId

        def initialize(objectid=nil, optype=nil, status=nil, instanceid=nil)
          @ObjectId = objectid
          @OpType = optype
          @Status = status
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ObjectId = params['ObjectId']
          @OpType = params['OpType']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
        end
      end

      # ModifyObject返回参数结构体
      class ModifyObjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProtectionStatus请求参数结构体
      class ModifyProtectionStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Status: 状态
        # @type Status: Integer
        # @param Edition: WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        # @type Edition: String

        attr_accessor :Domain, :Status, :Edition

        def initialize(domain=nil, status=nil, edition=nil)
          @Domain = domain
          @Status = status
          @Edition = edition
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @Edition = params['Edition']
        end
      end

      # ModifyProtectionStatus返回参数结构体
      class ModifyProtectionStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifySpartaProtectionMode请求参数结构体
      class ModifySpartaProtectionModeRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Mode: 防护状态：
        # 10：规则观察&&AI关闭模式，11：规则观察&&AI观察模式，12：规则观察&&AI拦截模式
        # 20：规则拦截&&AI关闭模式，21：规则拦截&&AI观察模式，22：规则拦截&&AI拦截模式
        # @type Mode: Integer
        # @param Edition: WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        # @type Edition: String
        # @param Type: 0是修改规则引擎状态，1是修改AI的状态
        # @type Type: Integer

        attr_accessor :Domain, :Mode, :Edition, :Type

        def initialize(domain=nil, mode=nil, edition=nil, type=nil)
          @Domain = domain
          @Mode = mode
          @Edition = edition
          @Type = type
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Mode = params['Mode']
          @Edition = params['Edition']
          @Type = params['Type']
        end
      end

      # ModifySpartaProtectionMode返回参数结构体
      class ModifySpartaProtectionModeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySpartaProtection请求参数结构体
      class ModifySpartaProtectionRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID
        # @type DomainId: String
        # @param CertType: 证书类型，0表示没有证书，CertType=1表示自有证书,2 为托管证书
        # @type CertType: Integer
        # @param Cert: CertType=1时，需要填次参数，表示证书内容
        # @type Cert: String
        # @param PrivateKey: CertType=1时，需要填次参数，表示证书的私钥
        # @type PrivateKey: String
        # @param SSLId: CertType=2时，需要填次参数，表示证书的ID
        # @type SSLId: String
        # @param IsCdn: 表示是否开启了CDN代理
        # @type IsCdn: Integer
        # @param UpstreamScheme: HTTPS回源协议
        # @type UpstreamScheme: String
        # @param HttpsUpstreamPort: HTTPS回源端口,仅UpstreamScheme为http时需要填当前字段
        # @type HttpsUpstreamPort: String
        # @param HttpsRewrite: 表示是否强制跳转到HTTPS，1表示开启，0表示不开启
        # @type HttpsRewrite: Integer
        # @param UpstreamType: 回源类型，0表示通过IP回源,1 表示通过域名回源
        # @type UpstreamType: Integer
        # @param UpstreamDomain: UpstreamType=1时，填次字段表示回源域名
        # @type UpstreamDomain: String
        # @param SrcList: UpstreamType=0时，填次字段表示回源ip
        # @type SrcList: Array
        # @param IsHttp2: 是否开启HTTP2，1表示开启，0表示不开启http2。开启HTTP2需要HTTPS支持
        # @type IsHttp2: Integer
        # @param IsWebsocket: 是否开启WebSocket， 1：开启WebSocket，0：不开启WebSocket
        # @type IsWebsocket: Integer
        # @param LoadBalance: 负载均衡策略，0表示轮徇，1表示IP hash
        # @type LoadBalance: Integer
        # @param IsGray: 是否灰度
        # @type IsGray: Integer
        # @param Edition: WAF版本
        # @type Edition: String
        # @param Ports: 端口信息
        # @type Ports: Array
        # @param IsKeepAlive: 长短连接标志，仅IP回源时有效
        # @type IsKeepAlive: String
        # @param InstanceID: 实例id
        # @type InstanceID: String
        # @param Anycast: 是否为Anycast ip类型：1 Anycast 0 普通ip
        # @type Anycast: Integer
        # @param Weights: src的权重
        # @type Weights: Array
        # @param ActiveCheck: 是否开启源站的主动健康检测，1表示开启，0表示不开启
        # @type ActiveCheck: Integer
        # @param TLSVersion: TLS版本信息
        # @type TLSVersion: Integer
        # @param Ciphers: 加密套件信息
        # @type Ciphers: Array
        # @param CipherTemplate: 0:不支持选择：默认模板  1:通用型模板 2:安全型模板 3:自定义模板
        # @type CipherTemplate: Integer
        # @param ProxyReadTimeout: 300s
        # @type ProxyReadTimeout: Integer
        # @param ProxySendTimeout: 300s
        # @type ProxySendTimeout: Integer
        # @param SniType: 0:关闭SNI；1:开启SNI，SNI=源请求host；2:开启SNI，SNI=修改为源站host；3：开启SNI，自定义host，SNI=SniHost；
        # @type SniType: Integer
        # @param SniHost: SniType=3时，需要填此参数，表示自定义的host；
        # @type SniHost: String
        # @param IpHeaders: IsCdn=3时，需要填此参数，表示自定义header
        # @type IpHeaders: Array
        # @param XFFReset: 0:关闭xff重置；1:开启xff重置，只有在IsCdn=0时可以开启
        # @type XFFReset: Integer

        attr_accessor :Domain, :DomainId, :CertType, :Cert, :PrivateKey, :SSLId, :IsCdn, :UpstreamScheme, :HttpsUpstreamPort, :HttpsRewrite, :UpstreamType, :UpstreamDomain, :SrcList, :IsHttp2, :IsWebsocket, :LoadBalance, :IsGray, :Edition, :Ports, :IsKeepAlive, :InstanceID, :Anycast, :Weights, :ActiveCheck, :TLSVersion, :Ciphers, :CipherTemplate, :ProxyReadTimeout, :ProxySendTimeout, :SniType, :SniHost, :IpHeaders, :XFFReset

        def initialize(domain=nil, domainid=nil, certtype=nil, cert=nil, privatekey=nil, sslid=nil, iscdn=nil, upstreamscheme=nil, httpsupstreamport=nil, httpsrewrite=nil, upstreamtype=nil, upstreamdomain=nil, srclist=nil, ishttp2=nil, iswebsocket=nil, loadbalance=nil, isgray=nil, edition=nil, ports=nil, iskeepalive=nil, instanceid=nil, anycast=nil, weights=nil, activecheck=nil, tlsversion=nil, ciphers=nil, ciphertemplate=nil, proxyreadtimeout=nil, proxysendtimeout=nil, snitype=nil, snihost=nil, ipheaders=nil, xffreset=nil)
          @Domain = domain
          @DomainId = domainid
          @CertType = certtype
          @Cert = cert
          @PrivateKey = privatekey
          @SSLId = sslid
          @IsCdn = iscdn
          @UpstreamScheme = upstreamscheme
          @HttpsUpstreamPort = httpsupstreamport
          @HttpsRewrite = httpsrewrite
          @UpstreamType = upstreamtype
          @UpstreamDomain = upstreamdomain
          @SrcList = srclist
          @IsHttp2 = ishttp2
          @IsWebsocket = iswebsocket
          @LoadBalance = loadbalance
          @IsGray = isgray
          @Edition = edition
          @Ports = ports
          @IsKeepAlive = iskeepalive
          @InstanceID = instanceid
          @Anycast = anycast
          @Weights = weights
          @ActiveCheck = activecheck
          @TLSVersion = tlsversion
          @Ciphers = ciphers
          @CipherTemplate = ciphertemplate
          @ProxyReadTimeout = proxyreadtimeout
          @ProxySendTimeout = proxysendtimeout
          @SniType = snitype
          @SniHost = snihost
          @IpHeaders = ipheaders
          @XFFReset = xffreset
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @CertType = params['CertType']
          @Cert = params['Cert']
          @PrivateKey = params['PrivateKey']
          @SSLId = params['SSLId']
          @IsCdn = params['IsCdn']
          @UpstreamScheme = params['UpstreamScheme']
          @HttpsUpstreamPort = params['HttpsUpstreamPort']
          @HttpsRewrite = params['HttpsRewrite']
          @UpstreamType = params['UpstreamType']
          @UpstreamDomain = params['UpstreamDomain']
          @SrcList = params['SrcList']
          @IsHttp2 = params['IsHttp2']
          @IsWebsocket = params['IsWebsocket']
          @LoadBalance = params['LoadBalance']
          @IsGray = params['IsGray']
          @Edition = params['Edition']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              spartaprotectionport_tmp = SpartaProtectionPort.new
              spartaprotectionport_tmp.deserialize(i)
              @Ports << spartaprotectionport_tmp
            end
          end
          @IsKeepAlive = params['IsKeepAlive']
          @InstanceID = params['InstanceID']
          @Anycast = params['Anycast']
          @Weights = params['Weights']
          @ActiveCheck = params['ActiveCheck']
          @TLSVersion = params['TLSVersion']
          @Ciphers = params['Ciphers']
          @CipherTemplate = params['CipherTemplate']
          @ProxyReadTimeout = params['ProxyReadTimeout']
          @ProxySendTimeout = params['ProxySendTimeout']
          @SniType = params['SniType']
          @SniHost = params['SniHost']
          @IpHeaders = params['IpHeaders']
          @XFFReset = params['XFFReset']
        end
      end

      # ModifySpartaProtection返回参数结构体
      class ModifySpartaProtectionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserLevel请求参数结构体
      class ModifyUserLevelRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Level: 防护规则等级 300=standard，400=extended
        # @type Level: Integer

        attr_accessor :Domain, :Level

        def initialize(domain=nil, level=nil)
          @Domain = domain
          @Level = level
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Level = params['Level']
        end
      end

      # ModifyUserLevel返回参数结构体
      class ModifyUserLevelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserSignatureRule请求参数结构体
      class ModifyUserSignatureRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param MainClassID: 主类id
        # @type MainClassID: String
        # @param Status: 主类开关0=关闭，1=开启，2=只告警
        # @type Status: Integer
        # @param RuleID: 下发修改的规则列表
        # @type RuleID: Array

        attr_accessor :Domain, :MainClassID, :Status, :RuleID

        def initialize(domain=nil, mainclassid=nil, status=nil, ruleid=nil)
          @Domain = domain
          @MainClassID = mainclassid
          @Status = status
          @RuleID = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @MainClassID = params['MainClassID']
          @Status = params['Status']
          unless params['RuleID'].nil?
            @RuleID = []
            params['RuleID'].each do |i|
              requserrule_tmp = ReqUserRule.new
              requserrule_tmp.deserialize(i)
              @RuleID << requserrule_tmp
            end
          end
        end
      end

      # ModifyUserSignatureRule返回参数结构体
      class ModifyUserSignatureRuleResponse < TencentCloud::Common::AbstractModel
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
        # @param AttackThreshold: 触发IP封禁的攻击次数阈值，范围为2~100次
        # @type AttackThreshold: Integer
        # @param TimeThreshold: IP封禁统计时间，范围为1-60分钟
        # @type TimeThreshold: Integer
        # @param DenyTimeThreshold: 触发IP封禁后的封禁时间，范围为5~360分钟
        # @type DenyTimeThreshold: Integer
        # @param DefenseStatus: 自动封禁状态，0表示关闭，1表示打开
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

      # ModifyWebshellStatus请求参数结构体
      class ModifyWebshellStatusRequest < TencentCloud::Common::AbstractModel
        # @param Webshell: 域名webshell状态
        # @type Webshell: :class:`Tencentcloud::Waf.v20180125.models.WebshellStatus`

        attr_accessor :Webshell

        def initialize(webshell=nil)
          @Webshell = webshell
        end

        def deserialize(params)
          unless params['Webshell'].nil?
            @Webshell = WebshellStatus.new
            @Webshell.deserialize(params['Webshell'])
          end
        end
      end

      # ModifyWebshellStatus返回参数结构体
      class ModifyWebshellStatusResponse < TencentCloud::Common::AbstractModel
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

      # 公共翻页参数
      class PageInfo < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: String
        # @param PageSize: 页条目数量
        # @type PageSize: String

        attr_accessor :PageNumber, :PageSize

        def initialize(pagenumber=nil, pagesize=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # PeakPoints数组项
      class PeakPointsItem < TencentCloud::Common::AbstractModel
        # @param Time: 秒级别时间戳
        # @type Time: Integer
        # @param Access: QPS
        # @type Access: Integer
        # @param Up: 上行带宽峰值，单位B
        # @type Up: Integer
        # @param Down: 下行带宽峰值，单位B
        # @type Down: Integer
        # @param Attack: Web攻击次数
        # @type Attack: Integer
        # @param Cc: CC攻击次数
        # @type Cc: Integer
        # @param BotAccess: Bot qps
        # @type BotAccess: Integer
        # @param StatusServerError: WAF返回给客户端状态码5xx次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusServerError: Integer
        # @param StatusClientError: WAF返回给客户端状态码4xx次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusClientError: Integer
        # @param StatusRedirect: WAF返回给客户端状态码302次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusRedirect: Integer
        # @param StatusOk: WAF返回给客户端状态码202次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusOk: Integer
        # @param UpstreamServerError: 源站返回给WAF状态码5xx次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamServerError: Integer
        # @param UpstreamClientError: 源站返回给WAF状态码4xx次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamClientError: Integer
        # @param UpstreamRedirect: 源站返回给WAF状态码302次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamRedirect: Integer
        # @param BlackIP: 黑名单次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlackIP: Integer
        # @param Tamper: 防篡改次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tamper: Integer
        # @param Leak: 信息防泄露次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Leak: Integer
        # @param ACL: 访问控制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ACL: Integer
        # @param WxAccess: 小程序 qps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxAccess: Integer

        attr_accessor :Time, :Access, :Up, :Down, :Attack, :Cc, :BotAccess, :StatusServerError, :StatusClientError, :StatusRedirect, :StatusOk, :UpstreamServerError, :UpstreamClientError, :UpstreamRedirect, :BlackIP, :Tamper, :Leak, :ACL, :WxAccess

        def initialize(time=nil, access=nil, up=nil, down=nil, attack=nil, cc=nil, botaccess=nil, statusservererror=nil, statusclienterror=nil, statusredirect=nil, statusok=nil, upstreamservererror=nil, upstreamclienterror=nil, upstreamredirect=nil, blackip=nil, tamper=nil, leak=nil, acl=nil, wxaccess=nil)
          @Time = time
          @Access = access
          @Up = up
          @Down = down
          @Attack = attack
          @Cc = cc
          @BotAccess = botaccess
          @StatusServerError = statusservererror
          @StatusClientError = statusclienterror
          @StatusRedirect = statusredirect
          @StatusOk = statusok
          @UpstreamServerError = upstreamservererror
          @UpstreamClientError = upstreamclienterror
          @UpstreamRedirect = upstreamredirect
          @BlackIP = blackip
          @Tamper = tamper
          @Leak = leak
          @ACL = acl
          @WxAccess = wxaccess
        end

        def deserialize(params)
          @Time = params['Time']
          @Access = params['Access']
          @Up = params['Up']
          @Down = params['Down']
          @Attack = params['Attack']
          @Cc = params['Cc']
          @BotAccess = params['BotAccess']
          @StatusServerError = params['StatusServerError']
          @StatusClientError = params['StatusClientError']
          @StatusRedirect = params['StatusRedirect']
          @StatusOk = params['StatusOk']
          @UpstreamServerError = params['UpstreamServerError']
          @UpstreamClientError = params['UpstreamClientError']
          @UpstreamRedirect = params['UpstreamRedirect']
          @BlackIP = params['BlackIP']
          @Tamper = params['Tamper']
          @Leak = params['Leak']
          @ACL = params['ACL']
          @WxAccess = params['WxAccess']
        end
      end

      # 饼图数据类型
      class PiechartItem < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Count: 数量
        # @type Count: Integer

        attr_accessor :Type, :Count

        def initialize(type=nil, count=nil)
          @Type = type
          @Count = count
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
        end
      end

      # 服务端口配置
      class PortInfo < TencentCloud::Common::AbstractModel
        # @param NginxServerId: Nginx的服务器id
        # @type NginxServerId: Integer
        # @param Port: 监听端口配置
        # @type Port: String
        # @param Protocol: 与端口对应的协议
        # @type Protocol: String
        # @param UpstreamPort: 回源端口
        # @type UpstreamPort: String
        # @param UpstreamProtocol: 回源协议
        # @type UpstreamProtocol: String

        attr_accessor :NginxServerId, :Port, :Protocol, :UpstreamPort, :UpstreamProtocol

        def initialize(nginxserverid=nil, port=nil, protocol=nil, upstreamport=nil, upstreamprotocol=nil)
          @NginxServerId = nginxserverid
          @Port = port
          @Protocol = protocol
          @UpstreamPort = upstreamport
          @UpstreamProtocol = upstreamprotocol
        end

        def deserialize(params)
          @NginxServerId = params['NginxServerId']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @UpstreamPort = params['UpstreamPort']
          @UpstreamProtocol = params['UpstreamProtocol']
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
        # @param Count: 下载的日志条数
        # @type Count: Integer

        attr_accessor :Domain, :StartTime, :EndTime, :QueryString, :TaskName, :Sort, :Count

        def initialize(domain=nil, starttime=nil, endtime=nil, querystring=nil, taskname=nil, sort=nil, count=nil)
          @Domain = domain
          @StartTime = starttime
          @EndTime = endtime
          @QueryString = querystring
          @TaskName = taskname
          @Sort = sort
          @Count = count
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryString = params['QueryString']
          @TaskName = params['TaskName']
          @Sort = params['Sort']
          @Count = params['Count']
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

      # waf产品
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param Name: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 版本
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

      # clb-waf QPS套餐 New
      class QPSPackageNew < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: String
        # @param ValidTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidTime: String
        # @param RenewFlag: 是否自动续费，1：自动续费，0：不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param Count: 套餐购买个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Region: 套餐购买地域，clb-waf暂时没有用到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param BillingItem: 计费项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingItem: String

        attr_accessor :ResourceIds, :ValidTime, :RenewFlag, :Count, :Region, :BillingItem

        def initialize(resourceids=nil, validtime=nil, renewflag=nil, count=nil, region=nil, billingitem=nil)
          @ResourceIds = resourceids
          @ValidTime = validtime
          @RenewFlag = renewflag
          @Count = count
          @Region = region
          @BillingItem = billingitem
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @ValidTime = params['ValidTime']
          @RenewFlag = params['RenewFlag']
          @Count = params['Count']
          @Region = params['Region']
          @BillingItem = params['BillingItem']
        end
      end

      # 获取弹性qps的默认相关值
      class QpsData < TencentCloud::Common::AbstractModel
        # @param ElasticBillingDefault: 弹性qps默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticBillingDefault: Integer
        # @param ElasticBillingMin: 弹性qps最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticBillingMin: Integer
        # @param ElasticBillingMax: 弹性qps最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticBillingMax: Integer
        # @param QPSExtendMax: 业务扩展包最大qps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QPSExtendMax: Integer
        # @param QPSExtendIntlMax: 海外业务扩展包最大qps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QPSExtendIntlMax: Integer

        attr_accessor :ElasticBillingDefault, :ElasticBillingMin, :ElasticBillingMax, :QPSExtendMax, :QPSExtendIntlMax

        def initialize(elasticbillingdefault=nil, elasticbillingmin=nil, elasticbillingmax=nil, qpsextendmax=nil, qpsextendintlmax=nil)
          @ElasticBillingDefault = elasticbillingdefault
          @ElasticBillingMin = elasticbillingmin
          @ElasticBillingMax = elasticbillingmax
          @QPSExtendMax = qpsextendmax
          @QPSExtendIntlMax = qpsextendintlmax
        end

        def deserialize(params)
          @ElasticBillingDefault = params['ElasticBillingDefault']
          @ElasticBillingMin = params['ElasticBillingMin']
          @ElasticBillingMax = params['ElasticBillingMax']
          @QPSExtendMax = params['QPSExtendMax']
          @QPSExtendIntlMax = params['QPSExtendIntlMax']
        end
      end

      # RefreshAccessCheckResult请求参数结构体
      class RefreshAccessCheckResultRequest < TencentCloud::Common::AbstractModel
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

      # RefreshAccessCheckResult返回参数结构体
      class RefreshAccessCheckResultResponse < TencentCloud::Common::AbstractModel
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

      # 用户规则更新输出规则子项
      class ReqUserRule < TencentCloud::Common::AbstractModel
        # @param Id: 特征序号
        # @type Id: String
        # @param Status: 规则开关
        # 0：关
        # 1：开
        # 2：只告警
        # @type Status: Integer
        # @param Reason: 修改原因
        # 0：无(兼容记录为空)
        # 1：业务自身特性误报避免
        # 2：规则误报上报
        # 3：核心业务规则灰度
        # 4：其它
        # @type Reason: Integer

        attr_accessor :Id, :Status, :Reason

        def initialize(id=nil, status=nil, reason=nil)
          @Id = id
          @Status = status
          @Reason = reason
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @Reason = params['Reason']
        end
      end

      # 响应体的返回码
      class ResponseCode < TencentCloud::Common::AbstractModel
        # @param Code: 如果成功则返回Success，失败则返回云api定义的错误码
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

      # 规则列表详情
      class Rule < TencentCloud::Common::AbstractModel
        # @param Id: 规则id
        # @type Id: Integer
        # @param Type: 规则类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Level: 规则等级
        # @type Level: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CVE: 规则防护的CVE编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVE: String
        # @param Status: 规则的状态
        # @type Status: Integer
        # @param ModifyTime: 规则修改的时间
        # @type ModifyTime: String
        # @param AddTime: 门神规则新增/更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String

        attr_accessor :Id, :Type, :Level, :Description, :CVE, :Status, :ModifyTime, :AddTime

        def initialize(id=nil, type=nil, level=nil, description=nil, cve=nil, status=nil, modifytime=nil, addtime=nil)
          @Id = id
          @Type = type
          @Level = level
          @Description = description
          @CVE = cve
          @Status = status
          @ModifyTime = modifytime
          @AddTime = addtime
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Level = params['Level']
          @Description = params['Description']
          @CVE = params['CVE']
          @Status = params['Status']
          @ModifyTime = params['ModifyTime']
          @AddTime = params['AddTime']
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
        # @param TopicId: 客户要查询的日志主题ID，每个客户都有对应的一个主题，新版本此字段填空字符串
        # @type TopicId: String
        # @param From: 要查询的日志的起始时间，Unix时间戳，单位ms
        # @type From: Integer
        # @param To: 要查询的日志的结束时间，Unix时间戳，单位ms
        # @type To: Integer
        # @param Query: 查询语句，语句长度最大为4096
        # @type Query: String
        # @param Limit: 单次查询返回的日志条数，最大值为100
        # @type Limit: Integer
        # @param Context: 新版本此字段失效，填空字符串，翻页使用Page
        # @type Context: String
        # @param Sort: 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        # @type Sort: String
        # @param Page: 第几页，从0开始。新版本接口字段
        # @type Page: Integer

        attr_accessor :TopicId, :From, :To, :Query, :Limit, :Context, :Sort, :Page

        def initialize(topicid=nil, from=nil, to=nil, query=nil, limit=nil, context=nil, sort=nil, page=nil)
          @TopicId = topicid
          @From = from
          @To = to
          @Query = query
          @Limit = limit
          @Context = context
          @Sort = sort
          @Page = page
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @From = params['From']
          @To = params['To']
          @Query = params['Query']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
          @Page = params['Page']
        end
      end

      # SearchAccessLog返回参数结构体
      class SearchAccessLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 新接口此字段失效，默认返回空字符串
        # @type Context: String
        # @param ListOver: 日志查询结果是否全部返回，其中，“true”表示结果返回，“false”表示结果为返回
        # @type ListOver: Boolean
        # @param Analysis: 返回的是否为分析结果，其中，“true”表示返回分析结果，“false”表示未返回分析结果
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

      # SearchAttackLog请求参数结构体
      class SearchAttackLogRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 查询的域名，所有域名使用all
        # @type Domain: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Context: 接口升级，这个字段传空字符串,翻页使用Page字段
        # @type Context: String
        # @param QueryString: Lucene语法
        # @type QueryString: String
        # @param Count: 查询的数量，默认10条，最多100条
        # @type Count: Integer
        # @param Sort: 默认为desc，可以取值desc和asc
        # @type Sort: String
        # @param Page: 第几页，从0开始
        # @type Page: Integer

        attr_accessor :Domain, :StartTime, :EndTime, :Context, :QueryString, :Count, :Sort, :Page

        def initialize(domain=nil, starttime=nil, endtime=nil, context=nil, querystring=nil, count=nil, sort=nil, page=nil)
          @Domain = domain
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @QueryString = querystring
          @Count = count
          @Sort = sort
          @Page = page
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @QueryString = params['QueryString']
          @Count = params['Count']
          @Sort = params['Sort']
          @Page = params['Page']
        end
      end

      # SearchAttackLog返回参数结构体
      class SearchAttackLogResponse < TencentCloud::Common::AbstractModel
        # @param Count: 当前返回的攻击日志条数
        # @type Count: Integer
        # @param Context: 接口升级，此字段无效，默认返回空字符串
        # @type Context: String
        # @param Data: 攻击日志数组条目内容
        # @type Data: Array
        # @param ListOver: CLS接口返回内容
        # @type ListOver: Boolean
        # @param SqlFlag: CLS接口返回内容，标志是否启动新版本索引
        # @type SqlFlag: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Context, :Data, :ListOver, :SqlFlag, :RequestId

        def initialize(count=nil, context=nil, data=nil, listover=nil, sqlflag=nil, requestid=nil)
          @Count = count
          @Context = context
          @Data = data
          @ListOver = listover
          @SqlFlag = sqlflag
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @Context = params['Context']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              attackloginfo_tmp = AttackLogInfo.new
              attackloginfo_tmp.deserialize(i)
              @Data << attackloginfo_tmp
            end
          end
          @ListOver = params['ListOver']
          @SqlFlag = params['SqlFlag']
          @RequestId = params['RequestId']
        end
      end

      # 接入列表查询复杂条件
      class SearchItem < TencentCloud::Common::AbstractModel
        # @param ClsStatus: 日志开关
        # @type ClsStatus: String
        # @param Status: waf开关
        # @type Status: String
        # @param FlowMode: 流量模式
        # @type FlowMode: String

        attr_accessor :ClsStatus, :Status, :FlowMode

        def initialize(clsstatus=nil, status=nil, flowmode=nil)
          @ClsStatus = clsstatus
          @Status = status
          @FlowMode = flowmode
        end

        def deserialize(params)
          @ClsStatus = params['ClsStatus']
          @Status = params['Status']
          @FlowMode = params['FlowMode']
        end
      end

      # 参数包装
      class SessionData < TencentCloud::Common::AbstractModel
        # @param Res: session定义
        # @type Res: Array

        attr_accessor :Res

        def initialize(res=nil)
          @Res = res
        end

        def deserialize(params)
          unless params['Res'].nil?
            @Res = []
            params['Res'].each do |i|
              sessionitem_tmp = SessionItem.new
              sessionitem_tmp.deserialize(i)
              @Res << sessionitem_tmp
            end
          end
        end
      end

      # session定义
      class SessionItem < TencentCloud::Common::AbstractModel
        # @param Category: 匹配类型
        # @type Category: String
        # @param KeyOrStartMat: 起始模式
        # @type KeyOrStartMat: String
        # @param EndMat: 结束模式
        # @type EndMat: String
        # @param StartOffset: 起始偏移
        # @type StartOffset: String
        # @param EndOffset: 结束偏移
        # @type EndOffset: String
        # @param Source: 数据源
        # @type Source: String
        # @param TsVersion: 更新时间戳
        # @type TsVersion: String
        # @param SessionId: SessionID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: Integer
        # @param SessionName: Session名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionName: String
        # @param SessionInUsed: Session是否正在被启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionInUsed: Boolean
        # @param RelatedRuleID: Session关联的CC规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedRuleID: Array

        attr_accessor :Category, :KeyOrStartMat, :EndMat, :StartOffset, :EndOffset, :Source, :TsVersion, :SessionId, :SessionName, :SessionInUsed, :RelatedRuleID

        def initialize(category=nil, keyorstartmat=nil, endmat=nil, startoffset=nil, endoffset=nil, source=nil, tsversion=nil, sessionid=nil, sessionname=nil, sessioninused=nil, relatedruleid=nil)
          @Category = category
          @KeyOrStartMat = keyorstartmat
          @EndMat = endmat
          @StartOffset = startoffset
          @EndOffset = endoffset
          @Source = source
          @TsVersion = tsversion
          @SessionId = sessionid
          @SessionName = sessionname
          @SessionInUsed = sessioninused
          @RelatedRuleID = relatedruleid
        end

        def deserialize(params)
          @Category = params['Category']
          @KeyOrStartMat = params['KeyOrStartMat']
          @EndMat = params['EndMat']
          @StartOffset = params['StartOffset']
          @EndOffset = params['EndOffset']
          @Source = params['Source']
          @TsVersion = params['TsVersion']
          @SessionId = params['SessionId']
          @SessionName = params['SessionName']
          @SessionInUsed = params['SessionInUsed']
          @RelatedRuleID = params['RelatedRuleID']
        end
      end

      # waf斯巴达-编辑防护域名中的端口结构
      class SpartaProtectionPort < TencentCloud::Common::AbstractModel
        # @param NginxServerId: nginx Id
        # @type NginxServerId: Integer
        # @param Port: 端口
        # @type Port: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param UpstreamPort: 后端端口
        # @type UpstreamPort: String
        # @param UpstreamProtocol: 后端协议
        # @type UpstreamProtocol: String

        attr_accessor :NginxServerId, :Port, :Protocol, :UpstreamPort, :UpstreamProtocol

        def initialize(nginxserverid=nil, port=nil, protocol=nil, upstreamport=nil, upstreamprotocol=nil)
          @NginxServerId = nginxserverid
          @Port = port
          @Protocol = protocol
          @UpstreamPort = upstreamport
          @UpstreamProtocol = upstreamprotocol
        end

        def deserialize(params)
          @NginxServerId = params['NginxServerId']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @UpstreamPort = params['UpstreamPort']
          @UpstreamProtocol = params['UpstreamProtocol']
        end
      end

      # 自定义规则的匹配条件结构体
      class Strategy < TencentCloud::Common::AbstractModel
        # @param Field: 匹配字段

        #     匹配字段不同，相应的匹配参数、逻辑符号、匹配内容有所不同
        # 具体如下所示：
        # <table><thead><tr><th>匹配字段</th><th>匹配参数</th><th>逻辑符号</th><th>匹配内容</th></tr></thead><tbody><tr><td>IP（来源IP）</td><td>不支持参数</td><td>ipmatch（匹配）<br/>ipnmatch（不匹配）</td><td>多个IP以英文逗号隔开,最多20个</td></tr><tr><td>IPV6（来源IPv6）</td><td>不支持参数</td><td>ipmatch（匹配）<br/>ipnmatch（不匹配）</td><td>支持单个IPV6地址</td></tr><tr><td>Referer（Referer）</td><td>不支持参数</td><td>empty（内容为空）<br/>null（不存在）<br/>eq（等于）<br/>neq（不等于）<br/>contains（包含）<br/>ncontains（不包含）<br/>len_eq（长度等于）<br/>len_gt（长度大于）<br/>len_lt（长度小于）<br/>strprefix（前缀匹配）<br/>strsuffix（后缀匹配）<br/>rematch（正则匹配）</td><td>请输入内容,512个字符以内</td></tr><tr><td>URL（请求路径）</td><td>不支持参数</td><td>eq（等于）<br/>neq（不等于）<br/>contains（包含）<br/>ncontains（不包含）<br/>len_eq（长度等于）<br/>len_gt（长度大于）<br/>len_lt（长度小于）<br/>strprefix（前缀匹配）<br/>strsuffix（后缀匹配）<br/>rematch（正则匹配）<br/></td><td>请以/开头,512个字符以内</td></tr><tr><td>UserAgent（UserAgent）</td><td>不支持参数</td><td>同匹配字段<font color="Red">Referer</font>逻辑符号</td><td>请输入内容,512个字符以内</td></tr><tr><td>HTTP_METHOD（HTTP请求方法）</td><td>不支持参数</td><td>eq（等于）<br/>neq（不等于）</td><td>请输入方法名称,建议大写</td></tr><tr><td>QUERY_STRING（请求字符串）</td><td>不支持参数</td><td>同匹配字段<font color="Red">请求路径</font>逻辑符号</td><td>请输入内容,512个字符以内</td></tr><tr><td>GET（GET参数值）</td><td>支持参数录入</td><td>contains（包含）<br/>ncontains（不包含）<br/>len_eq（长度等于）<br/>len_gt（长度大于）<br/>len_lt（长度小于）<br/>strprefix（前缀匹配）<br/>strsuffix（后缀匹配）</td><td>请输入内容,512个字符以内</td></tr><tr><td>GET_PARAMS_NAMES（GET参数名）</td><td>不支持参数</td><td>exsit（存在参数）<br/>nexsit（不存在参数）<br/>len_eq（长度等于）<br/>len_gt（长度大于）<br/>len_lt（长度小于）<br/>strprefix（前缀匹配）<br/>strsuffix（后缀匹配）</td><td>请输入内容,512个字符以内</td></tr><tr><td>POST（POST参数值）</td><td>支持参数录入</td><td>同匹配字段<font color="Red">GET参数值</font>逻辑符号</td><td>请输入内容,512个字符以内</td></tr><tr><td>GET_POST_NAMES（POST参数名）</td><td>不支持参数</td><td>同匹配字段<font color="Red">GET参数名</font>逻辑符号</td><td>请输入内容,512个字符以内</td></tr><tr><td>POST_BODY（完整BODY）</td><td>不支持参数</td><td>同匹配字段<font color="Red">请求路径</font>逻辑符号</td><td>请输入BODY内容,512个字符以内</td></tr><tr><td>COOKIE（Cookie）</td><td>不支持参数</td><td>empty（内容为空）<br/>null（不存在）<br/>rematch（正则匹配）</td><td><font color="Red">暂不支持</font></td></tr><tr><td>GET_COOKIES_NAMES（Cookie参数名）</td><td>不支持参数</td><td>同匹配字段<font color="Red">GET参数名</font>逻辑符号</td><td>请输入内容,512个字符以内</td></tr><tr><td>ARGS_COOKIE（Cookie参数值）</td><td>支持参数录入</td><td>同匹配字段<font color="Red">GET参数值</font>逻辑符号</td><td>请输入内容,512个字符以内</td></tr><tr><td>GET_HEADERS_NAMES（Header参数名）</td><td>不支持参数</td><td>exsit（存在参数）<br/>nexsit（不存在参数）<br/>len_eq（长度等于）<br/>len_gt（长度大于）<br/>len_lt（长度小于）<br/>strprefix（前缀匹配）<br/>strsuffix（后缀匹配）<br/>rematch（正则匹配）</td><td>请输入内容,建议小写,512个字符以内</td></tr><tr><td>ARGS_HEADER（Header参数值）</td><td>支持参数录入</td><td>contains（包含）<br/>ncontains（不包含）<br/>len_eq（长度等于）<br/>len_gt（长度大于）<br/>len_lt（长度小于）<br/>strprefix（前缀匹配）<br/>strsuffix（后缀匹配）<br/>rematch（正则匹配）</td><td>请输入内容,512个字符以内</td></tr></tbody></table>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Field: String
        # @param CompareFunc: 逻辑符号

        #     逻辑符号一共分为以下几种类型：
        #         empty （ 内容为空）
        #         null （不存在）
        #         eq （ 等于）
        #         neq （ 不等于）
        #         contains （ 包含）
        #         ncontains （ 不包含）
        #         strprefix （ 前缀匹配）
        #         strsuffix （ 后缀匹配）
        #         len_eq （ 长度等于）
        #         len_gt （ 长度大于）
        #         len_lt （ 长度小于）
        #         ipmatch （ 属于）
        #         ipnmatch （ 不属于）
        #     各匹配字段对应的逻辑符号不同，详见上述匹配字段表格

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareFunc: String
        # @param Content: 匹配内容

        #     目前 当匹配字段为COOKIE（Cookie）时，不需要输入 匹配内容
        # 其他都需要

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Arg: 匹配参数

        #     配置参数一共分2种类型 不支持参数与支持参数
        #     当匹配字段为以下4个时，匹配参数才能录入，否则不支持该参数
        #         GET（GET参数值）

        #         POST（POST参数值）

        #         ARGS_COOKIE（Cookie参数值）

        #         ARGS_HEADER（Header参数值）

        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 防信息泄露的匹配条件结构体
      class StrategyForAntiInfoLeak < TencentCloud::Common::AbstractModel
        # @param Field: 匹配条件，returncode（响应码）、keywords（关键字）、information（敏感信息）
        # @type Field: String
        # @param CompareFunc: 逻辑符号，固定取值为contains
        # @type CompareFunc: String
        # @param Content: 匹配内容。
        # 以下三个对应Field为information时可取的匹配内容：
        # idcard（身份证）、phone（手机号）、bankcard（银行卡）。
        # 以下为对应Field为returncode时可取的匹配内容：
        # 400（状态码400）、403（状态码403）、404（状态码404）、4xx（其它4xx状态码）、500（状态码500）、501（状态码501）、502（状态码502）、504（状态码504）、5xx（其它5xx状态码）。
        # 当对应Field为keywords时由用户自己输入匹配内容。
        # @type Content: String

        attr_accessor :Field, :CompareFunc, :Content

        def initialize(field=nil, comparefunc=nil, content=nil)
          @Field = field
          @CompareFunc = comparefunc
          @Content = content
        end

        def deserialize(params)
          @Field = params['Field']
          @CompareFunc = params['CompareFunc']
          @Content = params['Content']
        end
      end

      # SwitchDomainRules请求参数结构体
      class SwitchDomainRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Ids: 规则列表
        # @type Ids: Array
        # @param Status: 开关状态，0表示关闭，1表示开启，2表示只观察
        # @type Status: Integer
        # @param Reason: 设置为观察模式原因，
        # 1表示业务自身原因观察，2表示系统规则误报上报，3表示核心业务灰度观察，4表示其他
        # @type Reason: Integer

        attr_accessor :Domain, :Ids, :Status, :Reason

        def initialize(domain=nil, ids=nil, status=nil, reason=nil)
          @Domain = domain
          @Ids = ids
          @Status = status
          @Reason = reason
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Ids = params['Ids']
          @Status = params['Status']
          @Reason = params['Reason']
        end
      end

      # SwitchDomainRules返回参数结构体
      class SwitchDomainRulesResponse < TencentCloud::Common::AbstractModel
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

      # SwitchElasticMode请求参数结构体
      class SwitchElasticModeRequest < TencentCloud::Common::AbstractModel
        # @param Edition: 版本，只能是sparta-waf, clb-waf, cdn-waf
        # @type Edition: String
        # @param Mode: 0代表关闭，1代表打开
        # @type Mode: Integer
        # @param InstanceID: 实例id
        # @type InstanceID: String

        attr_accessor :Edition, :Mode, :InstanceID

        def initialize(edition=nil, mode=nil, instanceid=nil)
          @Edition = edition
          @Mode = mode
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Edition = params['Edition']
          @Mode = params['Mode']
          @InstanceID = params['InstanceID']
        end
      end

      # SwitchElasticMode返回参数结构体
      class SwitchElasticModeResponse < TencentCloud::Common::AbstractModel
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

      # TLS 加密套件
      class TLSCiphers < TencentCloud::Common::AbstractModel
        # @param VersionId: TLS版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param CipherId: 加密套件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CipherId: Integer
        # @param CipherName: 加密套件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CipherName: String

        attr_accessor :VersionId, :CipherId, :CipherName

        def initialize(versionid=nil, cipherid=nil, ciphername=nil)
          @VersionId = versionid
          @CipherId = cipherid
          @CipherName = ciphername
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @CipherId = params['CipherId']
          @CipherName = params['CipherName']
        end
      end

      # TLS信息
      class TLSVersion < TencentCloud::Common::AbstractModel
        # @param VersionId: TLSVERSION的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param VersionName: TLSVERSION的NAME
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String

        attr_accessor :VersionId, :VersionName

        def initialize(versionid=nil, versionname=nil)
          @VersionId = versionid
          @VersionName = versionname
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @VersionName = params['VersionName']
        end
      end

      # 需要开启/关闭API安全的 实例+域名 组合实体
      class TargetEntity < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :InstanceId, :Domain

        def initialize(instanceid=nil, domain=nil)
          @InstanceId = instanceid
          @Domain = domain
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Domain = params['Domain']
        end
      end

      # UpsertCCAutoStatus请求参数结构体
      class UpsertCCAutoStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Value: 状态值
        # @type Value: Integer
        # @param Edition: 版本：clb-waf, spart-waf
        # @type Edition: String

        attr_accessor :Domain, :Value, :Edition

        def initialize(domain=nil, value=nil, edition=nil)
          @Domain = domain
          @Value = value
          @Edition = edition
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Value = params['Value']
          @Edition = params['Edition']
        end
      end

      # UpsertCCAutoStatus返回参数结构体
      class UpsertCCAutoStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 正常情况为null
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

      # UpsertCCRule请求参数结构体
      class UpsertCCRuleRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Name: 名称
        # @type Name: String
        # @param Status: 状态
        # @type Status: Integer
        # @param Advance: 高级模式（是否使用Session检测），0表示不启用，1表示启用
        # @type Advance: String
        # @param Limit: CC检测阈值
        # @type Limit: String
        # @param Interval: CC检测周期
        # @type Interval: String
        # @param Url: 检测Url
        # @type Url: String
        # @param MatchFunc: 匹配方法，0表示等于，1表示前缀匹配，2表示包含
        # @type MatchFunc: Integer
        # @param ActionType: 动作，20表示观察，21表示人机识别，22表示拦截，23表示精准拦截
        # @type ActionType: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param ValidTime: 动作有效时间
        # @type ValidTime: Integer
        # @param OptionsArr: 附加参数
        # @type OptionsArr: String
        # @param Edition: waf版本，sparta-waf或者clb-waf
        # @type Edition: String
        # @param Type: 操作类型
        # @type Type: Integer
        # @param EventId: 添加规则的来源事件id
        # @type EventId: String
        # @param SessionApplied: 规则需要启用的SessionID
        # @type SessionApplied: Array
        # @param RuleId: 规则ID，新增时填0
        # @type RuleId: Integer

        attr_accessor :Domain, :Name, :Status, :Advance, :Limit, :Interval, :Url, :MatchFunc, :ActionType, :Priority, :ValidTime, :OptionsArr, :Edition, :Type, :EventId, :SessionApplied, :RuleId

        def initialize(domain=nil, name=nil, status=nil, advance=nil, limit=nil, interval=nil, url=nil, matchfunc=nil, actiontype=nil, priority=nil, validtime=nil, optionsarr=nil, edition=nil, type=nil, eventid=nil, sessionapplied=nil, ruleid=nil)
          @Domain = domain
          @Name = name
          @Status = status
          @Advance = advance
          @Limit = limit
          @Interval = interval
          @Url = url
          @MatchFunc = matchfunc
          @ActionType = actiontype
          @Priority = priority
          @ValidTime = validtime
          @OptionsArr = optionsarr
          @Edition = edition
          @Type = type
          @EventId = eventid
          @SessionApplied = sessionapplied
          @RuleId = ruleid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Name = params['Name']
          @Status = params['Status']
          @Advance = params['Advance']
          @Limit = params['Limit']
          @Interval = params['Interval']
          @Url = params['Url']
          @MatchFunc = params['MatchFunc']
          @ActionType = params['ActionType']
          @Priority = params['Priority']
          @ValidTime = params['ValidTime']
          @OptionsArr = params['OptionsArr']
          @Edition = params['Edition']
          @Type = params['Type']
          @EventId = params['EventId']
          @SessionApplied = params['SessionApplied']
          @RuleId = params['RuleId']
        end
      end

      # UpsertCCRule返回参数结构体
      class UpsertCCRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 一般为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RuleId: 操作的RuleId
        # @type RuleId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RuleId, :RequestId

        def initialize(data=nil, ruleid=nil, requestid=nil)
          @Data = data
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # UpsertIpAccessControl请求参数结构体
      class UpsertIpAccessControlRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 具体域名如：test.qcloudwaf.com
        # 全局域名为：global
        # @type Domain: String
        # @param Items: ip 参数列表，json数组由ip，source，note，action，valid_ts组成。ip对应配置的ip地址，source固定为custom值，note为注释，action值42为黑名单，40为白名单，valid_ts为有效日期，值为秒级时间戳（（如1680570420代表2023-04-04 09:07:00））
        # @type Items: Array
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Edition: WAF实例类型，sparta-waf表示SAAS型WAF，clb-waf表示负载均衡型WAF
        # @type Edition: String
        # @param SourceType: 是否为多域名黑白名单，当为多域名的黑白名单时，取值为batch，否则为空
        # @type SourceType: String

        attr_accessor :Domain, :Items, :InstanceId, :Edition, :SourceType

        def initialize(domain=nil, items=nil, instanceid=nil, edition=nil, sourcetype=nil)
          @Domain = domain
          @Items = items
          @InstanceId = instanceid
          @Edition = edition
          @SourceType = sourcetype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Items = params['Items']
          @InstanceId = params['InstanceId']
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
        # @param Ids: 添加或修改的IP数据Id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ids: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedItems, :FailedCount, :Ids, :RequestId

        def initialize(faileditems=nil, failedcount=nil, ids=nil, requestid=nil)
          @FailedItems = faileditems
          @FailedCount = failedcount
          @Ids = ids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedItems = params['FailedItems']
          @FailedCount = params['FailedCount']
          @Ids = params['Ids']
          @RequestId = params['RequestId']
        end
      end

      # UpsertSession请求参数结构体
      class UpsertSessionRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Source: session来源位置
        # @type Source: String
        # @param Category: 提取类别
        # @type Category: String
        # @param KeyOrStartMat: 提取key或者起始匹配模式
        # @type KeyOrStartMat: String
        # @param EndMat: 结束匹配模式
        # @type EndMat: String
        # @param StartOffset: 起始偏移位置
        # @type StartOffset: String
        # @param EndOffset: 结束偏移位置
        # @type EndOffset: String
        # @param Edition: 版本
        # @type Edition: String
        # @param SessionName: Session名
        # @type SessionName: String
        # @param SessionID: Session对应ID
        # @type SessionID: Integer

        attr_accessor :Domain, :Source, :Category, :KeyOrStartMat, :EndMat, :StartOffset, :EndOffset, :Edition, :SessionName, :SessionID

        def initialize(domain=nil, source=nil, category=nil, keyorstartmat=nil, endmat=nil, startoffset=nil, endoffset=nil, edition=nil, sessionname=nil, sessionid=nil)
          @Domain = domain
          @Source = source
          @Category = category
          @KeyOrStartMat = keyorstartmat
          @EndMat = endmat
          @StartOffset = startoffset
          @EndOffset = endoffset
          @Edition = edition
          @SessionName = sessionname
          @SessionID = sessionid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Source = params['Source']
          @Category = params['Category']
          @KeyOrStartMat = params['KeyOrStartMat']
          @EndMat = params['EndMat']
          @StartOffset = params['StartOffset']
          @EndOffset = params['EndOffset']
          @Edition = params['Edition']
          @SessionName = params['SessionName']
          @SessionID = params['SessionID']
        end
      end

      # UpsertSession返回参数结构体
      class UpsertSessionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param SessionID: SessionID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionID: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :SessionID, :RequestId

        def initialize(data=nil, sessionid=nil, requestid=nil)
          @Data = data
          @SessionID = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @SessionID = params['SessionID']
          @RequestId = params['RequestId']
        end
      end

      # saas和clb信息
      class UserDomainInfo < TencentCloud::Common::AbstractModel
        # @param Appid: 用户id
        # @type Appid: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名id
        # @type DomainId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param Edition: waf类型
        # @type Edition: String
        # @param Level: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param WriteConfig: 指定域名访问日志字段的开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WriteConfig: String
        # @param Cls: 指定域名是否写cls的开关 1:写 0:不写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cls: Integer
        # @param CloudType: 标记是否是混合云接入。hybrid表示混合云接入域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: String

        attr_accessor :Appid, :Domain, :DomainId, :InstanceId, :InstanceName, :Edition, :Level, :WriteConfig, :Cls, :CloudType

        def initialize(appid=nil, domain=nil, domainid=nil, instanceid=nil, instancename=nil, edition=nil, level=nil, writeconfig=nil, cls=nil, cloudtype=nil)
          @Appid = appid
          @Domain = domain
          @DomainId = domainid
          @InstanceId = instanceid
          @InstanceName = instancename
          @Edition = edition
          @Level = level
          @WriteConfig = writeconfig
          @Cls = cls
          @CloudType = cloudtype
        end

        def deserialize(params)
          @Appid = params['Appid']
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Edition = params['Edition']
          @Level = params['Level']
          @WriteConfig = params['WriteConfig']
          @Cls = params['Cls']
          @CloudType = params['CloudType']
        end
      end

      # 用户特征规则描述
      class UserSignatureRule < TencentCloud::Common::AbstractModel
        # @param ID: 特征ID
        # @type ID: String
        # @param Status: 规则开关
        # @type Status: Integer
        # @param MainClassID: 主类ID
        # @type MainClassID: String
        # @param SubClassID: 子类ID
        # @type SubClassID: String
        # @param CveID: CVE ID
        # @type CveID: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 更新时间
        # @type ModifyTime: String
        # @param MainClassName: 主类名字，根据Language字段输出中文/英文
        # @type MainClassName: String
        # @param SubClassName: 子类名字，根据Language字段输出中文/英文，若子类id为00000000，此字段为空
        # @type SubClassName: String
        # @param Description: 规则描述
        # @type Description: String
        # @param Reason: 0/1
        # @type Reason: Integer

        attr_accessor :ID, :Status, :MainClassID, :SubClassID, :CveID, :CreateTime, :ModifyTime, :MainClassName, :SubClassName, :Description, :Reason

        def initialize(id=nil, status=nil, mainclassid=nil, subclassid=nil, cveid=nil, createtime=nil, modifytime=nil, mainclassname=nil, subclassname=nil, description=nil, reason=nil)
          @ID = id
          @Status = status
          @MainClassID = mainclassid
          @SubClassID = subclassid
          @CveID = cveid
          @CreateTime = createtime
          @ModifyTime = modifytime
          @MainClassName = mainclassname
          @SubClassName = subclassname
          @Description = description
          @Reason = reason
        end

        def deserialize(params)
          @ID = params['ID']
          @Status = params['Status']
          @MainClassID = params['MainClassID']
          @SubClassID = params['SubClassID']
          @CveID = params['CveID']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @MainClassName = params['MainClassName']
          @SubClassName = params['SubClassName']
          @Description = params['Description']
          @Reason = params['Reason']
        end
      end

      # 用户规则白名单
      class UserWhiteRule < TencentCloud::Common::AbstractModel
        # @param WhiteRuleId: 白名单的id
        # @type WhiteRuleId: Integer
        # @param SignatureId: 规则id
        # @type SignatureId: String
        # @param Status: 状态
        # @type Status: Integer
        # @param MatchField: 匹配域
        # @type MatchField: String
        # @param MatchMethod: 匹配方法
        # @type MatchMethod: String
        # @param MatchContent: 匹配内容
        # @type MatchContent: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :WhiteRuleId, :SignatureId, :Status, :MatchField, :MatchMethod, :MatchContent, :CreateTime, :ModifyTime

        def initialize(whiteruleid=nil, signatureid=nil, status=nil, matchfield=nil, matchmethod=nil, matchcontent=nil, createtime=nil, modifytime=nil)
          @WhiteRuleId = whiteruleid
          @SignatureId = signatureid
          @Status = status
          @MatchField = matchfield
          @MatchMethod = matchmethod
          @MatchContent = matchcontent
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @WhiteRuleId = params['WhiteRuleId']
          @SignatureId = params['SignatureId']
          @Status = params['Status']
          @MatchField = params['MatchField']
          @MatchMethod = params['MatchMethod']
          @MatchContent = params['MatchContent']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 用户规则白名单规则子项
      class UserWhiteRuleItem < TencentCloud::Common::AbstractModel
        # @param MatchField: 匹配域
        # @type MatchField: String
        # @param MatchMethod: 匹配方法
        # @type MatchMethod: String
        # @param MatchContent: 匹配内容
        # @type MatchContent: String

        attr_accessor :MatchField, :MatchMethod, :MatchContent

        def initialize(matchfield=nil, matchmethod=nil, matchcontent=nil)
          @MatchField = matchfield
          @MatchMethod = matchmethod
          @MatchContent = matchcontent
        end

        def deserialize(params)
          @MatchField = params['MatchField']
          @MatchMethod = params['MatchMethod']
          @MatchContent = params['MatchContent']
        end
      end

      # Vip信息
      class VipInfo < TencentCloud::Common::AbstractModel
        # @param Vip: Virtual IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param InstanceId: waf实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :Vip, :InstanceId

        def initialize(vip=nil, instanceid=nil)
          @Vip = vip
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Vip = params['Vip']
          @InstanceId = params['InstanceId']
        end
      end

      # waf模块的规格
      class WafRuleLimit < TencentCloud::Common::AbstractModel
        # @param CC: 自定义CC的规格
        # @type CC: Integer
        # @param CustomRule: 自定义策略的规格
        # @type CustomRule: Integer
        # @param IPControl: 黑白名单的规格
        # @type IPControl: Integer
        # @param AntiLeak: 信息防泄漏的规格
        # @type AntiLeak: Integer
        # @param AntiTamper: 防篡改的规格
        # @type AntiTamper: Integer
        # @param AutoCC: 紧急CC的规格
        # @type AutoCC: Integer
        # @param AreaBan: 地域封禁的规格
        # @type AreaBan: Integer
        # @param CCSession: 自定义CC中配置session
        # @type CCSession: Integer
        # @param AI: AI的规格
        # @type AI: Integer
        # @param CustomWhite: 精准白名单的规格
        # @type CustomWhite: Integer
        # @param ApiSecurity: api安全的规格
        # @type ApiSecurity: Integer
        # @param ClientMsg: 客户端流量标记的规格
        # @type ClientMsg: Integer
        # @param TrafficMarking: 流量标记的规格
        # @type TrafficMarking: Integer

        attr_accessor :CC, :CustomRule, :IPControl, :AntiLeak, :AntiTamper, :AutoCC, :AreaBan, :CCSession, :AI, :CustomWhite, :ApiSecurity, :ClientMsg, :TrafficMarking

        def initialize(cc=nil, customrule=nil, ipcontrol=nil, antileak=nil, antitamper=nil, autocc=nil, areaban=nil, ccsession=nil, ai=nil, customwhite=nil, apisecurity=nil, clientmsg=nil, trafficmarking=nil)
          @CC = cc
          @CustomRule = customrule
          @IPControl = ipcontrol
          @AntiLeak = antileak
          @AntiTamper = antitamper
          @AutoCC = autocc
          @AreaBan = areaban
          @CCSession = ccsession
          @AI = ai
          @CustomWhite = customwhite
          @ApiSecurity = apisecurity
          @ClientMsg = clientmsg
          @TrafficMarking = trafficmarking
        end

        def deserialize(params)
          @CC = params['CC']
          @CustomRule = params['CustomRule']
          @IPControl = params['IPControl']
          @AntiLeak = params['AntiLeak']
          @AntiTamper = params['AntiTamper']
          @AutoCC = params['AutoCC']
          @AreaBan = params['AreaBan']
          @CCSession = params['CCSession']
          @AI = params['AI']
          @CustomWhite = params['CustomWhite']
          @ApiSecurity = params['ApiSecurity']
          @ClientMsg = params['ClientMsg']
          @TrafficMarking = params['TrafficMarking']
        end
      end

      # 当前WAF威胁情报封禁模块详情
      class WafThreatenIntelligenceDetails < TencentCloud::Common::AbstractModel
        # @param Tags: 封禁属性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DefenseStatus: 封禁模组启用状态
        # @type DefenseStatus: Integer
        # @param LastUpdateTime: 最后更新时间
        # @type LastUpdateTime: String

        attr_accessor :Tags, :DefenseStatus, :LastUpdateTime

        def initialize(tags=nil, defensestatus=nil, lastupdatetime=nil)
          @Tags = tags
          @DefenseStatus = defensestatus
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @Tags = params['Tags']
          @DefenseStatus = params['DefenseStatus']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

      # 域名的webshell开启状态
      class WebshellStatus < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Status: webshell开关，1：开。0：关。2：观察
        # @type Status: Integer

        attr_accessor :Domain, :Status

        def initialize(domain=nil, status=nil)
          @Domain = domain
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
        end
      end

    end
  end
end

