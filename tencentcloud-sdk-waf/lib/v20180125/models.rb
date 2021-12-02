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

      # CreateAttackDownloadTask请求参数结构体
      class CreateAttackDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名，所有域名填写all
        # @type Domain: String
        # @param FromTime: 查询起始时间
        # @type FromTime: String
        # @param ToTime: 查询结束时间
        # @type ToTime: String
        # @param Name: 下载任务名字
        # @type Name: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param Status: 拦截状态
        # @type Status: Integer
        # @param RuleId: 自定义策略ID
        # @type RuleId: Integer
        # @param AttackIp: 攻击者IP
        # @type AttackIp: String
        # @param AttackType: 攻击类型
        # @type AttackType: String

        attr_accessor :Domain, :FromTime, :ToTime, :Name, :RiskLevel, :Status, :RuleId, :AttackIp, :AttackType
        
        def initialize(domain=nil, fromtime=nil, totime=nil, name=nil, risklevel=nil, status=nil, ruleid=nil, attackip=nil, attacktype=nil)
          @Domain = domain
          @FromTime = fromtime
          @ToTime = totime
          @Name = name
          @RiskLevel = risklevel
          @Status = status
          @RuleId = ruleid
          @AttackIp = attackip
          @AttackType = attacktype
        end

        def deserialize(params)
          @Domain = params['Domain']
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Name = params['Name']
          @RiskLevel = params['RiskLevel']
          @Status = params['Status']
          @RuleId = params['RuleId']
          @AttackIp = params['AttackIp']
          @AttackType = params['AttackType']
        end
      end

      # CreateAttackDownloadTask返回参数结构体
      class CreateAttackDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Flow: 任务ID
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

      # DescribeCustomRules接口的翻页参数
      class DescribeCustomRulesPagingInfo < TencentCloud::Common::AbstractModel
        # @param Offset: 当前页码
        # @type Offset: Integer
        # @param Limit: 当前页的最大数据条数
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

      # DescribeCustomRules请求参数结构体
      class DescribeCustomRulesRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Paging: 分页参数
        # @type Paging: :class:`Tencentcloud::Waf.v20180125.models.DescribeCustomRulesPagingInfo`
        # @param Edition: clb-waf或者sparta-waf
        # @type Edition: String
        # @param ActionType: 过滤参数：动作类型：0放行，1阻断，2人机识别，3观察，4重定向
        # @type ActionType: String
        # @param Search: 过滤参数：规则名称过滤条件
        # @type Search: String

        attr_accessor :Domain, :Paging, :Edition, :ActionType, :Search
        
        def initialize(domain=nil, paging=nil, edition=nil, actiontype=nil, search=nil)
          @Domain = domain
          @Paging = paging
          @Edition = edition
          @ActionType = actiontype
          @Search = search
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['Paging'].nil?
            @Paging = DescribeCustomRulesPagingInfo.new
            @Paging.deserialize(params['Paging'])
          end
          @Edition = params['Edition']
          @ActionType = params['ActionType']
          @Search = params['Search']
        end
      end

      # DescribeCustomRules返回参数结构体
      class DescribeCustomRulesResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :ActionType, :Bypass, :CreateTime, :ExpireTime, :Name, :Redirect, :RuleId, :SortId, :Status, :Strategies
        
        def initialize(actiontype=nil, bypass=nil, createtime=nil, expiretime=nil, name=nil, redirect=nil, ruleid=nil, sortid=nil, status=nil, strategies=nil)
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

    end
  end
end

