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

