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
  module Securitylake
    module V20240117
      # DescribeSecurityAlarmTableList请求参数结构体
      class DescribeSecurityAlarmTableListRequest < TencentCloud::Common::AbstractModel
        # @param SdlId: 实例ID
        # @type SdlId: String
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Limit: 长度
        # @type Limit: Integer
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Order: 排序
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param StartTime: 开始时间,毫秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :SdlId, :Filters, :Limit, :Offset, :Order, :By, :StartTime, :EndTime

        def initialize(sdlid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil, starttime=nil, endtime=nil)
          @SdlId = sdlid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdlId = params['SdlId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              websearchfilter_tmp = WebSearchFilter.new
              websearchfilter_tmp.deserialize(i)
              @Filters << websearchfilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeSecurityAlarmTableList返回参数结构体
      class DescribeSecurityAlarmTableListResponse < TencentCloud::Common::AbstractModel
        # @param AlarmList: 字段列表
        # @type AlarmList: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param Limit: 限制
        # @type Limit: Integer
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmList, :TotalCount, :Limit, :Offset, :RequestId

        def initialize(alarmlist=nil, totalcount=nil, limit=nil, offset=nil, requestid=nil)
          @AlarmList = alarmlist
          @TotalCount = totalcount
          @Limit = limit
          @Offset = offset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmList'].nil?
            @AlarmList = []
            params['AlarmList'].each do |i|
              securityalarmtable_tmp = SecurityAlarmTable.new
              securityalarmtable_tmp.deserialize(i)
              @AlarmList << securityalarmtable_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RequestId = params['RequestId']
        end
      end

      # 告警列表
      class SecurityAlarmTable < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间
        # @type Timestamp: String
        # @param AlarmName: 告警名称
        # @type AlarmName: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param AlarmId: 告警id
        # @type AlarmId: Integer
        # @param Severity: 安全性
        # @type Severity: Integer
        # @param Score: 评分
        # @type Score: Integer
        # @param Category: 分类
        # @type Category: String
        # @param SubCategory: 子分类
        # @type SubCategory: String
        # @param Tags: 标签
        # @type Tags: String
        # @param Payload: 有效载荷
        # @type Payload: String
        # @param Result: 结果
        # @type Result: String
        # @param Confidence: 可信度
        # @type Confidence: Integer
        # @param Status: 状态
        # @type Status: String
        # @param RuleTopic: 规则主题
        # @type RuleTopic: String
        # @param HandleTime: 处理时间
        # @type HandleTime: String
        # @param Suggestion: 建议
        # @type Suggestion: String
        # @param Description: 描述
        # @type Description: String
        # @param SourceName: 来源名称
        # @type SourceName: String
        # @param AppId: APPID
        # @type AppId: Integer
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param EventTime: 事件时间
        # @type EventTime: String
        # @param RuleType: 规则类型
        # @type RuleType: String
        # @param AttackNum: 攻击次数
        # @type AttackNum: Integer
        # @param AlarmCount: 告警数量
        # @type AlarmCount: Integer
        # @param AttackSubTechnique: ATT&CK子技术
        # @type AttackSubTechnique: String
        # @param AttackTechnique: ATT&CK技术
        # @type AttackTechnique: String
        # @param AttackTactic: ATT&CK战术
        # @type AttackTactic: String
        # @param AttackSubTechniqueName: ATT&CK子技术名称
        # @type AttackSubTechniqueName: String
        # @param AttackTechniqueName: ATT&CK技术名称
        # @type AttackTechniqueName: String
        # @param AttackTacticName: 凭证访问
        # @type AttackTacticName: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param RuleExpression: 规则表达式
        # @type RuleExpression: String
        # @param ExpressionType: 表达式类型
        # @type ExpressionType: String
        # @param DrillDownExpression: 下钻表达式
        # @type DrillDownExpression: String
        # @param SrcIp: 源IP
        # @type SrcIp: String
        # @param SrcPort: 源端口
        # @type SrcPort: Integer
        # @param DstIp: 目的IP
        # @type DstIp: String
        # @param DstPort: 目的端口
        # @type DstPort: Integer
        # @param HostIp: 主机IP
        # @type HostIp: String
        # @param HostAsset: 主机资产
        # @type HostAsset: String
        # @param SdlId: 实例id
        # @type SdlId: String
        # @param RichCustomInfos: 自定义富化字段信息
        # @type RichCustomInfos: Array
        # @param AttackerIp: 攻击者ip
        # @type AttackerIp: String
        # @param AttackerAsset: 攻击者资产ID
        # @type AttackerAsset: String
        # @param VictimIp: 受害者ip
        # @type VictimIp: String
        # @param VictimAsset: 受害者资产ID
        # @type VictimAsset: String
        # @param AttackDirection: 攻击方向
        # @type AttackDirection: String
        # @param TrafficDirection: 流量方向
        # @type TrafficDirection: String
        # @param SecurityGroupAlertInfos: 测试
        # @type SecurityGroupAlertInfos: Array

        attr_accessor :Timestamp, :AlarmName, :RuleName, :AlarmId, :Severity, :Score, :Category, :SubCategory, :Tags, :Payload, :Result, :Confidence, :Status, :RuleTopic, :HandleTime, :Suggestion, :Description, :SourceName, :AppId, :RuleId, :EventTime, :RuleType, :AttackNum, :AlarmCount, :AttackSubTechnique, :AttackTechnique, :AttackTactic, :AttackSubTechniqueName, :AttackTechniqueName, :AttackTacticName, :StartTime, :EndTime, :RuleExpression, :ExpressionType, :DrillDownExpression, :SrcIp, :SrcPort, :DstIp, :DstPort, :HostIp, :HostAsset, :SdlId, :RichCustomInfos, :AttackerIp, :AttackerAsset, :VictimIp, :VictimAsset, :AttackDirection, :TrafficDirection, :SecurityGroupAlertInfos

        def initialize(timestamp=nil, alarmname=nil, rulename=nil, alarmid=nil, severity=nil, score=nil, category=nil, subcategory=nil, tags=nil, payload=nil, result=nil, confidence=nil, status=nil, ruletopic=nil, handletime=nil, suggestion=nil, description=nil, sourcename=nil, appid=nil, ruleid=nil, eventtime=nil, ruletype=nil, attacknum=nil, alarmcount=nil, attacksubtechnique=nil, attacktechnique=nil, attacktactic=nil, attacksubtechniquename=nil, attacktechniquename=nil, attacktacticname=nil, starttime=nil, endtime=nil, ruleexpression=nil, expressiontype=nil, drilldownexpression=nil, srcip=nil, srcport=nil, dstip=nil, dstport=nil, hostip=nil, hostasset=nil, sdlid=nil, richcustominfos=nil, attackerip=nil, attackerasset=nil, victimip=nil, victimasset=nil, attackdirection=nil, trafficdirection=nil, securitygroupalertinfos=nil)
          @Timestamp = timestamp
          @AlarmName = alarmname
          @RuleName = rulename
          @AlarmId = alarmid
          @Severity = severity
          @Score = score
          @Category = category
          @SubCategory = subcategory
          @Tags = tags
          @Payload = payload
          @Result = result
          @Confidence = confidence
          @Status = status
          @RuleTopic = ruletopic
          @HandleTime = handletime
          @Suggestion = suggestion
          @Description = description
          @SourceName = sourcename
          @AppId = appid
          @RuleId = ruleid
          @EventTime = eventtime
          @RuleType = ruletype
          @AttackNum = attacknum
          @AlarmCount = alarmcount
          @AttackSubTechnique = attacksubtechnique
          @AttackTechnique = attacktechnique
          @AttackTactic = attacktactic
          @AttackSubTechniqueName = attacksubtechniquename
          @AttackTechniqueName = attacktechniquename
          @AttackTacticName = attacktacticname
          @StartTime = starttime
          @EndTime = endtime
          @RuleExpression = ruleexpression
          @ExpressionType = expressiontype
          @DrillDownExpression = drilldownexpression
          @SrcIp = srcip
          @SrcPort = srcport
          @DstIp = dstip
          @DstPort = dstport
          @HostIp = hostip
          @HostAsset = hostasset
          @SdlId = sdlid
          @RichCustomInfos = richcustominfos
          @AttackerIp = attackerip
          @AttackerAsset = attackerasset
          @VictimIp = victimip
          @VictimAsset = victimasset
          @AttackDirection = attackdirection
          @TrafficDirection = trafficdirection
          @SecurityGroupAlertInfos = securitygroupalertinfos
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @AlarmName = params['AlarmName']
          @RuleName = params['RuleName']
          @AlarmId = params['AlarmId']
          @Severity = params['Severity']
          @Score = params['Score']
          @Category = params['Category']
          @SubCategory = params['SubCategory']
          @Tags = params['Tags']
          @Payload = params['Payload']
          @Result = params['Result']
          @Confidence = params['Confidence']
          @Status = params['Status']
          @RuleTopic = params['RuleTopic']
          @HandleTime = params['HandleTime']
          @Suggestion = params['Suggestion']
          @Description = params['Description']
          @SourceName = params['SourceName']
          @AppId = params['AppId']
          @RuleId = params['RuleId']
          @EventTime = params['EventTime']
          @RuleType = params['RuleType']
          @AttackNum = params['AttackNum']
          @AlarmCount = params['AlarmCount']
          @AttackSubTechnique = params['AttackSubTechnique']
          @AttackTechnique = params['AttackTechnique']
          @AttackTactic = params['AttackTactic']
          @AttackSubTechniqueName = params['AttackSubTechniqueName']
          @AttackTechniqueName = params['AttackTechniqueName']
          @AttackTacticName = params['AttackTacticName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RuleExpression = params['RuleExpression']
          @ExpressionType = params['ExpressionType']
          @DrillDownExpression = params['DrillDownExpression']
          @SrcIp = params['SrcIp']
          @SrcPort = params['SrcPort']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @HostIp = params['HostIp']
          @HostAsset = params['HostAsset']
          @SdlId = params['SdlId']
          @RichCustomInfos = params['RichCustomInfos']
          @AttackerIp = params['AttackerIp']
          @AttackerAsset = params['AttackerAsset']
          @VictimIp = params['VictimIp']
          @VictimAsset = params['VictimAsset']
          @AttackDirection = params['AttackDirection']
          @TrafficDirection = params['TrafficDirection']
          unless params['SecurityGroupAlertInfos'].nil?
            @SecurityGroupAlertInfos = []
            params['SecurityGroupAlertInfos'].each do |i|
              securitygroupalertinfo_tmp = SecurityGroupAlertInfo.new
              securitygroupalertinfo_tmp.deserialize(i)
              @SecurityGroupAlertInfos << securitygroupalertinfo_tmp
            end
          end
        end
      end

      # 被归并的原始告警信息
      class SecurityGroupAlertInfo < TencentCloud::Common::AbstractModel
        # @param AlarmUuid: 告警Uuid
        # @type AlarmUuid: String
        # @param Timestamp: 告警生成时间
        # @type Timestamp: String

        attr_accessor :AlarmUuid, :Timestamp

        def initialize(alarmuuid=nil, timestamp=nil)
          @AlarmUuid = alarmuuid
          @Timestamp = timestamp
        end

        def deserialize(params)
          @AlarmUuid = params['AlarmUuid']
          @Timestamp = params['Timestamp']
        end
      end

      # web搜索过滤
      class WebSearchFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段
        # @type Name: String
        # @param Values: 值
        # @type Values: Array
        # @param ExactMatch: 是否全匹配
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

    end
  end
end

