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
  module Monitor
    module V20180724
      # 告警事件
      class AlarmEvent < TencentCloud::Common::AbstractModel
        # @param EventName: 事件名
        # @type EventName: String
        # @param Description: 展示的事件名
        # @type Description: String
        # @param Namespace: 告警策略类型
        # @type Namespace: String

        attr_accessor :EventName, :Description, :Namespace
        
        def initialize(eventname=nil, description=nil, namespace=nil)
          @EventName = eventname
          @Description = description
          @Namespace = namespace
        end

        def deserialize(params)
          @EventName = params['EventName']
          @Description = params['Description']
          @Namespace = params['Namespace']
        end
      end

      # 告警历史数据
      class AlarmHistory < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警历史Id
        # @type AlarmId: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param Namespace: 策略类型
        # @type Namespace: String
        # @param AlarmObject: 告警对象
        # @type AlarmObject: String
        # @param Content: 告警内容
        # @type Content: String
        # @param FirstOccurTime: 时间戳，首次出现时间
        # @type FirstOccurTime: Integer
        # @param LastOccurTime: 时间戳，最后出现时间
        # @type LastOccurTime: Integer
        # @param AlarmStatus: 告警状态，ALARM=未恢复 OK=已恢复 NO_CONF=已失效 NO_DATA=数据不足
        # @type AlarmStatus: String
        # @param PolicyId: 告警策略 Id
        # @type PolicyId: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param VPC: 基础产品告警的告警对象所属网络
        # @type VPC: String
        # @param ProjectId: 项目 Id
        # @type ProjectId: Integer
        # @param ProjectName: 项目名字
        # @type ProjectName: String
        # @param InstanceGroup: 告警对象所属实例组
        # @type InstanceGroup: Array
        # @param ReceiverUids: 接收人列表
        # @type ReceiverUids: Array
        # @param ReceiverGroups: 接收组列表
        # @type ReceiverGroups: Array
        # @param NoticeWays: 告警渠道列表 SMS=短信 EMAIL=邮件 CALL=电话 WECHAT=微信
        # @type NoticeWays: Array
        # @param OriginId: 可用于实例、实例组的绑定和解绑接口（[BindingPolicyObject](https://cloud.tencent.com/document/product/248/40421)、[UnBindingAllPolicyObject](https://cloud.tencent.com/document/product/248/40568)、[UnBindingPolicyObject](https://cloud.tencent.com/document/product/248/40567)）的策略 ID
        # @type OriginId: String
        # @param AlarmType: 告警类型
        # @type AlarmType: String
        # @param EventId: 事件Id
        # @type EventId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param PolicyExists: 策略是否存在 0=不存在 1=存在
        # @type PolicyExists: Integer
        # @param MetricsInfo: 指标信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricsInfo: Array

        attr_accessor :AlarmId, :MonitorType, :Namespace, :AlarmObject, :Content, :FirstOccurTime, :LastOccurTime, :AlarmStatus, :PolicyId, :PolicyName, :VPC, :ProjectId, :ProjectName, :InstanceGroup, :ReceiverUids, :ReceiverGroups, :NoticeWays, :OriginId, :AlarmType, :EventId, :Region, :PolicyExists, :MetricsInfo
        
        def initialize(alarmid=nil, monitortype=nil, namespace=nil, alarmobject=nil, content=nil, firstoccurtime=nil, lastoccurtime=nil, alarmstatus=nil, policyid=nil, policyname=nil, vpc=nil, projectid=nil, projectname=nil, instancegroup=nil, receiveruids=nil, receivergroups=nil, noticeways=nil, originid=nil, alarmtype=nil, eventid=nil, region=nil, policyexists=nil, metricsinfo=nil)
          @AlarmId = alarmid
          @MonitorType = monitortype
          @Namespace = namespace
          @AlarmObject = alarmobject
          @Content = content
          @FirstOccurTime = firstoccurtime
          @LastOccurTime = lastoccurtime
          @AlarmStatus = alarmstatus
          @PolicyId = policyid
          @PolicyName = policyname
          @VPC = vpc
          @ProjectId = projectid
          @ProjectName = projectname
          @InstanceGroup = instancegroup
          @ReceiverUids = receiveruids
          @ReceiverGroups = receivergroups
          @NoticeWays = noticeways
          @OriginId = originid
          @AlarmType = alarmtype
          @EventId = eventid
          @Region = region
          @PolicyExists = policyexists
          @MetricsInfo = metricsinfo
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @MonitorType = params['MonitorType']
          @Namespace = params['Namespace']
          @AlarmObject = params['AlarmObject']
          @Content = params['Content']
          @FirstOccurTime = params['FirstOccurTime']
          @LastOccurTime = params['LastOccurTime']
          @AlarmStatus = params['AlarmStatus']
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @VPC = params['VPC']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          unless params['InstanceGroup'].nil?
            @InstanceGroup = []
            params['InstanceGroup'].each do |i|
              instancegroups_tmp = InstanceGroups.new
              instancegroups_tmp.deserialize(i)
              @InstanceGroup << instancegroups_tmp
            end
          end
          @ReceiverUids = params['ReceiverUids']
          @ReceiverGroups = params['ReceiverGroups']
          @NoticeWays = params['NoticeWays']
          @OriginId = params['OriginId']
          @AlarmType = params['AlarmType']
          @EventId = params['EventId']
          @Region = params['Region']
          @PolicyExists = params['PolicyExists']
          unless params['MetricsInfo'].nil?
            @MetricsInfo = []
            params['MetricsInfo'].each do |i|
              alarmhistorymetric_tmp = AlarmHistoryMetric.new
              alarmhistorymetric_tmp.deserialize(i)
              @MetricsInfo << alarmhistorymetric_tmp
            end
          end
        end
      end

      # 告警历史的指标信息
      class AlarmHistoryMetric < TencentCloud::Common::AbstractModel
        # @param QceNamespace: 云产品监控类型查询数据使用的命名空间
        # @type QceNamespace: String
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Period: 统计周期
        # @type Period: Integer
        # @param Value: 触发告警的数值
        # @type Value: String
        # @param Description: 指标的展示名
        # @type Description: String

        attr_accessor :QceNamespace, :MetricName, :Period, :Value, :Description
        
        def initialize(qcenamespace=nil, metricname=nil, period=nil, value=nil, description=nil)
          @QceNamespace = qcenamespace
          @MetricName = metricname
          @Period = period
          @Value = value
          @Description = description
        end

        def deserialize(params)
          @QceNamespace = params['QceNamespace']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @Value = params['Value']
          @Description = params['Description']
        end
      end

      # 告警通知模板详情
      class AlarmNotice < TencentCloud::Common::AbstractModel
        # @param Id: 告警通知模板 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 告警通知模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param UpdatedAt: 上次修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param UpdatedBy: 上次修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedBy: String
        # @param NoticeType: 告警通知类型 ALARM=未恢复通知 OK=已恢复通知 ALL=全部通知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeType: String
        # @param UserNotices: 用户通知列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNotices: Array
        # @param URLNotices: 回调通知列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URLNotices: Array
        # @param IsPreset: 是否是系统预设通知模板 0=否 1=是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPreset: Integer
        # @param NoticeLanguage: 通知语言 zh-CN=中文 en-US=英文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeLanguage: String
        # @param PolicyIds: 告警通知模板绑定的告警策略ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyIds: Array

        attr_accessor :Id, :Name, :UpdatedAt, :UpdatedBy, :NoticeType, :UserNotices, :URLNotices, :IsPreset, :NoticeLanguage, :PolicyIds
        
        def initialize(id=nil, name=nil, updatedat=nil, updatedby=nil, noticetype=nil, usernotices=nil, urlnotices=nil, ispreset=nil, noticelanguage=nil, policyids=nil)
          @Id = id
          @Name = name
          @UpdatedAt = updatedat
          @UpdatedBy = updatedby
          @NoticeType = noticetype
          @UserNotices = usernotices
          @URLNotices = urlnotices
          @IsPreset = ispreset
          @NoticeLanguage = noticelanguage
          @PolicyIds = policyids
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @UpdatedAt = params['UpdatedAt']
          @UpdatedBy = params['UpdatedBy']
          @NoticeType = params['NoticeType']
          unless params['UserNotices'].nil?
            @UserNotices = []
            params['UserNotices'].each do |i|
              usernotice_tmp = UserNotice.new
              usernotice_tmp.deserialize(i)
              @UserNotices << usernotice_tmp
            end
          end
          unless params['URLNotices'].nil?
            @URLNotices = []
            params['URLNotices'].each do |i|
              urlnotice_tmp = URLNotice.new
              urlnotice_tmp.deserialize(i)
              @URLNotices << urlnotice_tmp
            end
          end
          @IsPreset = params['IsPreset']
          @NoticeLanguage = params['NoticeLanguage']
          @PolicyIds = params['PolicyIds']
        end
      end

      # 告警策略详情
      class AlarmPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 告警策略 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: String
        # @param PolicyName: 告警策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param MonitorType: 监控类型 MT_QCE=云产品监控
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorType: String
        # @param Enable: 启停状态 0=停用 1=启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param UseSum: 策略组绑定的实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseSum: Integer
        # @param ProjectId: 项目 Id -1=无项目 0=默认项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param Namespace: 告警策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param ConditionTemplateId: 触发条件模板 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionTemplateId: String
        # @param Condition: 指标触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyCondition`
        # @param EventCondition: 事件触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCondition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyEventCondition`
        # @param NoticeIds: 通知规则 id 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeIds: Array
        # @param Notices: 通知规则 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notices: Array
        # @param TriggerTasks: 触发任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerTasks: Array
        # @param ConditionsTemp: 模板策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionsTemp: :class:`Tencentcloud::Monitor.v20180724.models.ConditionsTemp`
        # @param LastEditUin: 最后编辑的用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastEditUin: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param InsertTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: Integer
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array
        # @param NamespaceShowName: namespace显示名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceShowName: String
        # @param IsDefault: 是否默认策略，1是，0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Integer
        # @param CanSetDefault: 能否设置默认策略，1是，0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanSetDefault: Integer
        # @param InstanceGroupId: 实例分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupId: Integer
        # @param InstanceSum: 实例分组总实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSum: Integer
        # @param InstanceGroupName: 实例分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupName: String
        # @param RuleType: 触发条件类型 STATIC=静态阈值 DYNAMIC=动态类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param OriginId: 用于实例、实例组绑定和解绑接口（BindingPolicyObject、UnBindingAllPolicyObject、UnBindingPolicyObject）的策略 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginId: String
        # @param TagInstances: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInstances: Array

        attr_accessor :PolicyId, :PolicyName, :Remark, :MonitorType, :Enable, :UseSum, :ProjectId, :ProjectName, :Namespace, :ConditionTemplateId, :Condition, :EventCondition, :NoticeIds, :Notices, :TriggerTasks, :ConditionsTemp, :LastEditUin, :UpdateTime, :InsertTime, :Region, :NamespaceShowName, :IsDefault, :CanSetDefault, :InstanceGroupId, :InstanceSum, :InstanceGroupName, :RuleType, :OriginId, :TagInstances
        
        def initialize(policyid=nil, policyname=nil, remark=nil, monitortype=nil, enable=nil, usesum=nil, projectid=nil, projectname=nil, namespace=nil, conditiontemplateid=nil, condition=nil, eventcondition=nil, noticeids=nil, notices=nil, triggertasks=nil, conditionstemp=nil, lastedituin=nil, updatetime=nil, inserttime=nil, region=nil, namespaceshowname=nil, isdefault=nil, cansetdefault=nil, instancegroupid=nil, instancesum=nil, instancegroupname=nil, ruletype=nil, originid=nil, taginstances=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @Remark = remark
          @MonitorType = monitortype
          @Enable = enable
          @UseSum = usesum
          @ProjectId = projectid
          @ProjectName = projectname
          @Namespace = namespace
          @ConditionTemplateId = conditiontemplateid
          @Condition = condition
          @EventCondition = eventcondition
          @NoticeIds = noticeids
          @Notices = notices
          @TriggerTasks = triggertasks
          @ConditionsTemp = conditionstemp
          @LastEditUin = lastedituin
          @UpdateTime = updatetime
          @InsertTime = inserttime
          @Region = region
          @NamespaceShowName = namespaceshowname
          @IsDefault = isdefault
          @CanSetDefault = cansetdefault
          @InstanceGroupId = instancegroupid
          @InstanceSum = instancesum
          @InstanceGroupName = instancegroupname
          @RuleType = ruletype
          @OriginId = originid
          @TagInstances = taginstances
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Remark = params['Remark']
          @MonitorType = params['MonitorType']
          @Enable = params['Enable']
          @UseSum = params['UseSum']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @Namespace = params['Namespace']
          @ConditionTemplateId = params['ConditionTemplateId']
          unless params['Condition'].nil?
            @Condition = AlarmPolicyCondition.new
            @Condition.deserialize(params['Condition'])
          end
          unless params['EventCondition'].nil?
            @EventCondition = AlarmPolicyEventCondition.new
            @EventCondition.deserialize(params['EventCondition'])
          end
          @NoticeIds = params['NoticeIds']
          unless params['Notices'].nil?
            @Notices = []
            params['Notices'].each do |i|
              alarmnotice_tmp = AlarmNotice.new
              alarmnotice_tmp.deserialize(i)
              @Notices << alarmnotice_tmp
            end
          end
          unless params['TriggerTasks'].nil?
            @TriggerTasks = []
            params['TriggerTasks'].each do |i|
              alarmpolicytriggertask_tmp = AlarmPolicyTriggerTask.new
              alarmpolicytriggertask_tmp.deserialize(i)
              @TriggerTasks << alarmpolicytriggertask_tmp
            end
          end
          unless params['ConditionsTemp'].nil?
            @ConditionsTemp = ConditionsTemp.new
            @ConditionsTemp.deserialize(params['ConditionsTemp'])
          end
          @LastEditUin = params['LastEditUin']
          @UpdateTime = params['UpdateTime']
          @InsertTime = params['InsertTime']
          @Region = params['Region']
          @NamespaceShowName = params['NamespaceShowName']
          @IsDefault = params['IsDefault']
          @CanSetDefault = params['CanSetDefault']
          @InstanceGroupId = params['InstanceGroupId']
          @InstanceSum = params['InstanceSum']
          @InstanceGroupName = params['InstanceGroupName']
          @RuleType = params['RuleType']
          @OriginId = params['OriginId']
          unless params['TagInstances'].nil?
            @TagInstances = []
            params['TagInstances'].each do |i|
              taginstance_tmp = TagInstance.new
              taginstance_tmp.deserialize(i)
              @TagInstances << taginstance_tmp
            end
          end
        end
      end

      # 告警策略指标触发条件
      class AlarmPolicyCondition < TencentCloud::Common::AbstractModel
        # @param IsUnionRule: 指标触发与或条件，0=或，1=与
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnionRule: Integer
        # @param Rules: 告警触发条件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :IsUnionRule, :Rules
        
        def initialize(isunionrule=nil, rules=nil)
          @IsUnionRule = isunionrule
          @Rules = rules
        end

        def deserialize(params)
          @IsUnionRule = params['IsUnionRule']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              alarmpolicyrule_tmp = AlarmPolicyRule.new
              alarmpolicyrule_tmp.deserialize(i)
              @Rules << alarmpolicyrule_tmp
            end
          end
        end
      end

      # 告警策略事件触发条件
      class AlarmPolicyEventCondition < TencentCloud::Common::AbstractModel
        # @param Rules: 告警触发条件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :Rules
        
        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              alarmpolicyrule_tmp = AlarmPolicyRule.new
              alarmpolicyrule_tmp.deserialize(i)
              @Rules << alarmpolicyrule_tmp
            end
          end
        end
      end

      # 告警策略过滤条件
      class AlarmPolicyFilter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤条件类型 DIMENSION=使用 Dimensions 做过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Dimensions: AlarmPolicyDimension 二维数组序列化后的json字符串，一维数组之间互为或关系，一维数组内的元素互为与关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimensions: String

        attr_accessor :Type, :Dimensions
        
        def initialize(type=nil, dimensions=nil)
          @Type = type
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Type = params['Type']
          @Dimensions = params['Dimensions']
        end
      end

      # 告警策略触发条件
      class AlarmPolicyRule < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名或事件名，支持的指标可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询，支持的事件可以从 [DescribeAlarmEvents](https://cloud.tencent.com/document/product/248/51284) 查询 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param Period: 秒数 统计周期，支持的值可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: Integer
        # @param Operator: 英文运算符
        # intelligent=无阈值智能检测
        # eq=等于
        # ge=大于等于
        # gt=大于
        # le=小于等于
        # lt=小于
        # ne=不等于
        # day_increase=天同比增长
        # day_decrease=天同比下降
        # day_wave=天同比波动
        # week_increase=周同比增长
        # week_decrease=周同比下降
        # week_wave=周同比波动
        # cycle_increase=环比增长
        # cycle_decrease=环比下降
        # cycle_wave=环比波动
        # re=正则匹配
        # 支持的值可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Value: 阈值，支持的范围可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param ContinuePeriod: 周期数 持续通知周期 1=持续1个周期 2=持续2个周期...，支持的值可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContinuePeriod: Integer
        # @param NoticeFrequency: 秒数 告警间隔  0=不重复 300=每5分钟告警一次 600=每10分钟告警一次 900=每15分钟告警一次 1800=每30分钟告警一次 3600=每1小时告警一次 7200=每2小时告警一次 10800=每3小时告警一次 21600=每6小时告警一次 43200=每12小时告警一次 86400=每1天告警一次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeFrequency: Integer
        # @param IsPowerNotice: 告警频率是否指数增长 0=否 1=是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPowerNotice: Integer
        # @param Filter: 对于单个触发规则的过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filter: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyFilter`
        # @param Description: 指标展示名，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Unit: 单位，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param RuleType: 触发条件类型 STATIC=静态阈值 DYNAMIC=动态阈值。创建或编辑策略时，如不填则默认为 STATIC。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String

        attr_accessor :MetricName, :Period, :Operator, :Value, :ContinuePeriod, :NoticeFrequency, :IsPowerNotice, :Filter, :Description, :Unit, :RuleType
        
        def initialize(metricname=nil, period=nil, operator=nil, value=nil, continueperiod=nil, noticefrequency=nil, ispowernotice=nil, filter=nil, description=nil, unit=nil, ruletype=nil)
          @MetricName = metricname
          @Period = period
          @Operator = operator
          @Value = value
          @ContinuePeriod = continueperiod
          @NoticeFrequency = noticefrequency
          @IsPowerNotice = ispowernotice
          @Filter = filter
          @Description = description
          @Unit = unit
          @RuleType = ruletype
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Period = params['Period']
          @Operator = params['Operator']
          @Value = params['Value']
          @ContinuePeriod = params['ContinuePeriod']
          @NoticeFrequency = params['NoticeFrequency']
          @IsPowerNotice = params['IsPowerNotice']
          unless params['Filter'].nil?
            @Filter = AlarmPolicyFilter.new
            @Filter.deserialize(params['Filter'])
          end
          @Description = params['Description']
          @Unit = params['Unit']
          @RuleType = params['RuleType']
        end
      end

      # 告警策略触发任务
      class AlarmPolicyTriggerTask < TencentCloud::Common::AbstractModel
        # @param Type: 触发任务类型 AS=弹性伸缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TaskConfig: 用 json 表示配置信息 {"Key1":"Value1","Key2":"Value2"}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskConfig: String

        attr_accessor :Type, :TaskConfig
        
        def initialize(type=nil, taskconfig=nil)
          @Type = type
          @TaskConfig = taskconfig
        end

        def deserialize(params)
          @Type = params['Type']
          @TaskConfig = params['TaskConfig']
        end
      end

      # 策略绑定实例维度信息
      class BindingPolicyObjectDimension < TencentCloud::Common::AbstractModel
        # @param Region: 地域名
        # @type Region: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Dimensions: 实例的维度信息，格式为
        # {"unInstanceId":"ins-00jvv9mo"}。不同云产品的维度信息不同，详见
        # [指标维度信息Dimensions列表](https://cloud.tencent.com/document/product/248/50397)
        # @type Dimensions: String
        # @param EventDimensions: 事件维度信息
        # @type EventDimensions: String

        attr_accessor :Region, :RegionId, :Dimensions, :EventDimensions
        
        def initialize(region=nil, regionid=nil, dimensions=nil, eventdimensions=nil)
          @Region = region
          @RegionId = regionid
          @Dimensions = dimensions
          @EventDimensions = eventdimensions
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionId = params['RegionId']
          @Dimensions = params['Dimensions']
          @EventDimensions = params['EventDimensions']
        end
      end

      # BindingPolicyObject请求参数结构体
      class BindingPolicyObjectRequest < TencentCloud::Common::AbstractModel
        # @param Module: 必填。固定值"monitor"
        # @type Module: String
        # @param GroupId: 策略组id，如传入 PolicyId 则该字段会被忽略可传入任意值如 0
        # @type GroupId: Integer
        # @param PolicyId: 告警策略ID，使用此字段时 GroupId 会被忽略
        # @type PolicyId: String
        # @param InstanceGroupId: 实例分组ID
        # @type InstanceGroupId: Integer
        # @param Dimensions: 需要绑定的对象维度信息
        # @type Dimensions: Array

        attr_accessor :Module, :GroupId, :PolicyId, :InstanceGroupId, :Dimensions
        
        def initialize(_module=nil, groupid=nil, policyid=nil, instancegroupid=nil, dimensions=nil)
          @Module = _module
          @GroupId = groupid
          @PolicyId = policyid
          @InstanceGroupId = instancegroupid
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @PolicyId = params['PolicyId']
          @InstanceGroupId = params['InstanceGroupId']
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              bindingpolicyobjectdimension_tmp = BindingPolicyObjectDimension.new
              bindingpolicyobjectdimension_tmp.deserialize(i)
              @Dimensions << bindingpolicyobjectdimension_tmp
            end
          end
        end
      end

      # BindingPolicyObject返回参数结构体
      class BindingPolicyObjectResponse < TencentCloud::Common::AbstractModel
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

      # 统一的命名空间信息
      class CommonNamespace < TencentCloud::Common::AbstractModel
        # @param Id: 命名空间标示
        # @type Id: String
        # @param Name: 命名空间名称
        # @type Name: String
        # @param Value: 命名空间值
        # @type Value: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Config: 配置信息
        # @type Config: String
        # @param AvailableRegions: 支持地域列表
        # @type AvailableRegions: Array
        # @param SortId: 排序Id
        # @type SortId: Integer
        # @param DashboardId: Dashboard中的唯一表示
        # @type DashboardId: String

        attr_accessor :Id, :Name, :Value, :ProductName, :Config, :AvailableRegions, :SortId, :DashboardId
        
        def initialize(id=nil, name=nil, value=nil, productname=nil, config=nil, availableregions=nil, sortid=nil, dashboardid=nil)
          @Id = id
          @Name = name
          @Value = value
          @ProductName = productname
          @Config = config
          @AvailableRegions = availableregions
          @SortId = sortid
          @DashboardId = dashboardid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Value = params['Value']
          @ProductName = params['ProductName']
          @Config = params['Config']
          @AvailableRegions = params['AvailableRegions']
          @SortId = params['SortId']
          @DashboardId = params['DashboardId']
        end
      end

      # 告警条件模版
      class ConditionsTemp < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模版名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateName: String
        # @param Condition: 指标触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyCondition`
        # @param EventCondition: 事件触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCondition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyEventCondition`

        attr_accessor :TemplateName, :Condition, :EventCondition
        
        def initialize(templatename=nil, condition=nil, eventcondition=nil)
          @TemplateName = templatename
          @Condition = condition
          @EventCondition = eventcondition
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['Condition'].nil?
            @Condition = AlarmPolicyCondition.new
            @Condition.deserialize(params['Condition'])
          end
          unless params['EventCondition'].nil?
            @EventCondition = AlarmPolicyEventCondition.new
            @EventCondition.deserialize(params['EventCondition'])
          end
        end
      end

      # CreateAlarmNotice请求参数结构体
      class CreateAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param Name: 通知模板名称 60字符以内
        # @type Name: String
        # @param NoticeType: 通知类型 ALARM=未恢复通知 OK=已恢复通知 ALL=都通知
        # @type NoticeType: String
        # @param NoticeLanguage: 通知语言 zh-CN=中文 en-US=英文
        # @type NoticeLanguage: String
        # @param UserNotices: 用户通知 最多5个
        # @type UserNotices: Array
        # @param URLNotices: 回调通知 最多3个
        # @type URLNotices: Array

        attr_accessor :Module, :Name, :NoticeType, :NoticeLanguage, :UserNotices, :URLNotices
        
        def initialize(_module=nil, name=nil, noticetype=nil, noticelanguage=nil, usernotices=nil, urlnotices=nil)
          @Module = _module
          @Name = name
          @NoticeType = noticetype
          @NoticeLanguage = noticelanguage
          @UserNotices = usernotices
          @URLNotices = urlnotices
        end

        def deserialize(params)
          @Module = params['Module']
          @Name = params['Name']
          @NoticeType = params['NoticeType']
          @NoticeLanguage = params['NoticeLanguage']
          unless params['UserNotices'].nil?
            @UserNotices = []
            params['UserNotices'].each do |i|
              usernotice_tmp = UserNotice.new
              usernotice_tmp.deserialize(i)
              @UserNotices << usernotice_tmp
            end
          end
          unless params['URLNotices'].nil?
            @URLNotices = []
            params['URLNotices'].each do |i|
              urlnotice_tmp = URLNotice.new
              urlnotice_tmp.deserialize(i)
              @URLNotices << urlnotice_tmp
            end
          end
        end
      end

      # CreateAlarmNotice返回参数结构体
      class CreateAlarmNoticeResponse < TencentCloud::Common::AbstractModel
        # @param NoticeId: 告警通知模板ID
        # @type NoticeId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoticeId, :RequestId
        
        def initialize(noticeid=nil, requestid=nil)
          @NoticeId = noticeid
          @RequestId = requestid
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlarmPolicy请求参数结构体
      class CreateAlarmPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param PolicyName: 策略名称，不超过20字符
        # @type PolicyName: String
        # @param MonitorType: 监控类型 MT_QCE=云产品监控
        # @type MonitorType: String
        # @param Namespace: 告警策略类型，由 [DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 获得，例如 cvm_device
        # @type Namespace: String
        # @param Remark: 备注，不超过100字符，仅支持中英文、数字、下划线、-
        # @type Remark: String
        # @param Enable: 是否启用 0=停用 1=启用，可不传 默认为1
        # @type Enable: Integer
        # @param ProjectId: 项目 Id，对于区分项目的产品必须传入非 -1 的值。 -1=无项目 0=默认项目，如不传 默认为 -1。支持的项目 Id 可以在控制台 [账号中心-项目管理](https://console.cloud.tencent.com/project) 中查看。
        # @type ProjectId: Integer
        # @param ConditionTemplateId: 触发条件模板 Id ，可不传
        # @type ConditionTemplateId: Integer
        # @param Condition: 指标触发条件，支持的指标可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询。
        # @type Condition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyCondition`
        # @param EventCondition: 事件触发条件，支持的事件可以从 [DescribeAlarmEvents](https://cloud.tencent.com/document/product/248/51284) 查询。
        # @type EventCondition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyEventCondition`
        # @param NoticeIds: 通知规则 Id 列表，由 [DescribeAlarmNotices](https://cloud.tencent.com/document/product/248/51280) 获得
        # @type NoticeIds: Array
        # @param TriggerTasks: 触发任务列表
        # @type TriggerTasks: Array

        attr_accessor :Module, :PolicyName, :MonitorType, :Namespace, :Remark, :Enable, :ProjectId, :ConditionTemplateId, :Condition, :EventCondition, :NoticeIds, :TriggerTasks
        
        def initialize(_module=nil, policyname=nil, monitortype=nil, namespace=nil, remark=nil, enable=nil, projectid=nil, conditiontemplateid=nil, condition=nil, eventcondition=nil, noticeids=nil, triggertasks=nil)
          @Module = _module
          @PolicyName = policyname
          @MonitorType = monitortype
          @Namespace = namespace
          @Remark = remark
          @Enable = enable
          @ProjectId = projectid
          @ConditionTemplateId = conditiontemplateid
          @Condition = condition
          @EventCondition = eventcondition
          @NoticeIds = noticeids
          @TriggerTasks = triggertasks
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyName = params['PolicyName']
          @MonitorType = params['MonitorType']
          @Namespace = params['Namespace']
          @Remark = params['Remark']
          @Enable = params['Enable']
          @ProjectId = params['ProjectId']
          @ConditionTemplateId = params['ConditionTemplateId']
          unless params['Condition'].nil?
            @Condition = AlarmPolicyCondition.new
            @Condition.deserialize(params['Condition'])
          end
          unless params['EventCondition'].nil?
            @EventCondition = AlarmPolicyEventCondition.new
            @EventCondition.deserialize(params['EventCondition'])
          end
          @NoticeIds = params['NoticeIds']
          unless params['TriggerTasks'].nil?
            @TriggerTasks = []
            params['TriggerTasks'].each do |i|
              alarmpolicytriggertask_tmp = AlarmPolicyTriggerTask.new
              alarmpolicytriggertask_tmp.deserialize(i)
              @TriggerTasks << alarmpolicytriggertask_tmp
            end
          end
        end
      end

      # CreateAlarmPolicy返回参数结构体
      class CreateAlarmPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String
        # @param OriginId: 可用于实例、实例组的绑定和解绑接口（[BindingPolicyObject](https://cloud.tencent.com/document/product/248/40421)、[UnBindingAllPolicyObject](https://cloud.tencent.com/document/product/248/40568)、[UnBindingPolicyObject](https://cloud.tencent.com/document/product/248/40567)）的策略 ID
        # @type OriginId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :OriginId, :RequestId
        
        def initialize(policyid=nil, originid=nil, requestid=nil)
          @PolicyId = policyid
          @OriginId = originid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @OriginId = params['OriginId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlertRule请求参数结构体
      class CreateAlertRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Expr: 规则表达式
        # @type Expr: String
        # @param Receivers: 告警通知模板 ID 列表
        # @type Receivers: Array
        # @param RuleState: 规则状态码，取值如下：
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # @type RuleState: Integer
        # @param Duration: 规则报警持续时间
        # @type Duration: String
        # @param Labels: 标签列表
        # @type Labels: Array
        # @param Annotations: 注释列表。

        # 告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description。
        # @type Annotations: Array
        # @param Type: 报警策略模板分类
        # @type Type: String

        attr_accessor :InstanceId, :RuleName, :Expr, :Receivers, :RuleState, :Duration, :Labels, :Annotations, :Type
        
        def initialize(instanceid=nil, rulename=nil, expr=nil, receivers=nil, rulestate=nil, duration=nil, labels=nil, annotations=nil, type=nil)
          @InstanceId = instanceid
          @RuleName = rulename
          @Expr = expr
          @Receivers = receivers
          @RuleState = rulestate
          @Duration = duration
          @Labels = labels
          @Annotations = annotations
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RuleName = params['RuleName']
          @Expr = params['Expr']
          @Receivers = params['Receivers']
          @RuleState = params['RuleState']
          @Duration = params['Duration']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              prometheusrulekv_tmp = PrometheusRuleKV.new
              prometheusrulekv_tmp.deserialize(i)
              @Labels << prometheusrulekv_tmp
            end
          end
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              prometheusrulekv_tmp = PrometheusRuleKV.new
              prometheusrulekv_tmp.deserialize(i)
              @Annotations << prometheusrulekv_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # CreateAlertRule返回参数结构体
      class CreateAlertRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 创建策略传入的阈值告警条件
      class CreatePolicyGroupCondition < TencentCloud::Common::AbstractModel
        # @param MetricId: 指标Id
        # @type MetricId: Integer
        # @param AlarmNotifyType: 告警发送收敛类型。0连续告警，1指数告警
        # @type AlarmNotifyType: Integer
        # @param AlarmNotifyPeriod: 告警发送周期单位秒。<0 不触发, 0 只触发一次, >0 每隔triggerTime秒触发一次
        # @type AlarmNotifyPeriod: Integer
        # @param CalcType: 比较类型，1表示大于，2表示大于等于，3表示小于，4表示小于等于，5表示相等，6表示不相等。如果指标有配置默认比较类型值可以不填。
        # @type CalcType: Integer
        # @param CalcValue: 比较的值，如果指标不必须CalcValue可不填
        # @type CalcValue: Float
        # @param CalcPeriod: 数据聚合周期(单位秒)，若指标有默认值可不填
        # @type CalcPeriod: Integer
        # @param ContinuePeriod: 持续几个检测周期触发规则会告警
        # @type ContinuePeriod: Integer
        # @param RuleId: 如果通过模版创建，需要传入模版中该指标的对应RuleId
        # @type RuleId: Integer

        attr_accessor :MetricId, :AlarmNotifyType, :AlarmNotifyPeriod, :CalcType, :CalcValue, :CalcPeriod, :ContinuePeriod, :RuleId
        
        def initialize(metricid=nil, alarmnotifytype=nil, alarmnotifyperiod=nil, calctype=nil, calcvalue=nil, calcperiod=nil, continueperiod=nil, ruleid=nil)
          @MetricId = metricid
          @AlarmNotifyType = alarmnotifytype
          @AlarmNotifyPeriod = alarmnotifyperiod
          @CalcType = calctype
          @CalcValue = calcvalue
          @CalcPeriod = calcperiod
          @ContinuePeriod = continueperiod
          @RuleId = ruleid
        end

        def deserialize(params)
          @MetricId = params['MetricId']
          @AlarmNotifyType = params['AlarmNotifyType']
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @CalcType = params['CalcType']
          @CalcValue = params['CalcValue']
          @CalcPeriod = params['CalcPeriod']
          @ContinuePeriod = params['ContinuePeriod']
          @RuleId = params['RuleId']
        end
      end

      # 创建策略传入的事件告警条件
      class CreatePolicyGroupEventCondition < TencentCloud::Common::AbstractModel
        # @param EventId: 告警事件的Id
        # @type EventId: Integer
        # @param AlarmNotifyType: 告警发送收敛类型。0连续告警，1指数告警
        # @type AlarmNotifyType: Integer
        # @param AlarmNotifyPeriod: 告警发送周期单位秒。<0 不触发, 0 只触发一次, >0 每隔triggerTime秒触发一次
        # @type AlarmNotifyPeriod: Integer
        # @param RuleId: 如果通过模版创建，需要传入模版中该指标的对应RuleId
        # @type RuleId: Integer

        attr_accessor :EventId, :AlarmNotifyType, :AlarmNotifyPeriod, :RuleId
        
        def initialize(eventid=nil, alarmnotifytype=nil, alarmnotifyperiod=nil, ruleid=nil)
          @EventId = eventid
          @AlarmNotifyType = alarmnotifytype
          @AlarmNotifyPeriod = alarmnotifyperiod
          @RuleId = ruleid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @AlarmNotifyType = params['AlarmNotifyType']
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @RuleId = params['RuleId']
        end
      end

      # CreatePolicyGroup请求参数结构体
      class CreatePolicyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 组策略名称
        # @type GroupName: String
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param ViewName: 策略组所属视图的名称，若通过模版创建，可不传入
        # @type ViewName: String
        # @param ProjectId: 策略组所属项目Id，会进行鉴权操作
        # @type ProjectId: Integer
        # @param ConditionTempGroupId: 模版策略组Id, 通过模版创建时才需要传
        # @type ConditionTempGroupId: Integer
        # @param IsShielded: 是否屏蔽策略组，0表示不屏蔽，1表示屏蔽。不填默认为0
        # @type IsShielded: Integer
        # @param Remark: 策略组的备注信息
        # @type Remark: String
        # @param InsertTime: 插入时间，戳格式为Unix时间戳，不填则按后台处理时间填充
        # @type InsertTime: Integer
        # @param Conditions: 策略组中的阈值告警规则
        # @type Conditions: Array
        # @param EventConditions: 策略组中的事件告警规则
        # @type EventConditions: Array
        # @param BackEndCall: 是否为后端调用。当且仅当值为1时，后台拉取策略模版中的规则填充入Conditions以及EventConditions字段
        # @type BackEndCall: Integer
        # @param IsUnionRule: 指标告警规则的且或关系，0表示或规则(满足任意规则就告警)，1表示且规则(满足所有规则才告警)
        # @type IsUnionRule: Integer

        attr_accessor :GroupName, :Module, :ViewName, :ProjectId, :ConditionTempGroupId, :IsShielded, :Remark, :InsertTime, :Conditions, :EventConditions, :BackEndCall, :IsUnionRule
        
        def initialize(groupname=nil, _module=nil, viewname=nil, projectid=nil, conditiontempgroupid=nil, isshielded=nil, remark=nil, inserttime=nil, conditions=nil, eventconditions=nil, backendcall=nil, isunionrule=nil)
          @GroupName = groupname
          @Module = _module
          @ViewName = viewname
          @ProjectId = projectid
          @ConditionTempGroupId = conditiontempgroupid
          @IsShielded = isshielded
          @Remark = remark
          @InsertTime = inserttime
          @Conditions = conditions
          @EventConditions = eventconditions
          @BackEndCall = backendcall
          @IsUnionRule = isunionrule
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Module = params['Module']
          @ViewName = params['ViewName']
          @ProjectId = params['ProjectId']
          @ConditionTempGroupId = params['ConditionTempGroupId']
          @IsShielded = params['IsShielded']
          @Remark = params['Remark']
          @InsertTime = params['InsertTime']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              createpolicygroupcondition_tmp = CreatePolicyGroupCondition.new
              createpolicygroupcondition_tmp.deserialize(i)
              @Conditions << createpolicygroupcondition_tmp
            end
          end
          unless params['EventConditions'].nil?
            @EventConditions = []
            params['EventConditions'].each do |i|
              createpolicygroupeventcondition_tmp = CreatePolicyGroupEventCondition.new
              createpolicygroupeventcondition_tmp.deserialize(i)
              @EventConditions << createpolicygroupeventcondition_tmp
            end
          end
          @BackEndCall = params['BackEndCall']
          @IsUnionRule = params['IsUnionRule']
        end
      end

      # CreatePolicyGroup返回参数结构体
      class CreatePolicyGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建成功的策略组Id
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceDiscovery请求参数结构体
      class CreateServiceDiscoveryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param KubeClusterId: <li>类型为TKE：对应集成的腾讯云容器服务集群 ID</li>
        # @type KubeClusterId: String
        # @param KubeType: 用户 Kubernetes 集群类型：
        # <li> 1 = 容器服务集群(TKE) </li>
        # @type KubeType: Integer
        # @param Type: 服务发现类型，取值如下：
        # <li> 1 = ServiceMonitor</li>
        # <li> 2 = PodMonitor</li>
        # <li> 3 = JobMonitor</li>
        # @type Type: Integer
        # @param Yaml: 服务发现配置信息
        # @type Yaml: String

        attr_accessor :InstanceId, :KubeClusterId, :KubeType, :Type, :Yaml
        
        def initialize(instanceid=nil, kubeclusterid=nil, kubetype=nil, type=nil, yaml=nil)
          @InstanceId = instanceid
          @KubeClusterId = kubeclusterid
          @KubeType = kubetype
          @Type = type
          @Yaml = yaml
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KubeClusterId = params['KubeClusterId']
          @KubeType = params['KubeType']
          @Type = params['Type']
          @Yaml = params['Yaml']
        end
      end

      # CreateServiceDiscovery返回参数结构体
      class CreateServiceDiscoveryResponse < TencentCloud::Common::AbstractModel
        # @param ServiceDiscovery: 创建成功之后，返回对应服务发现信息
        # @type ServiceDiscovery: :class:`Tencentcloud::Monitor.v20180724.models.ServiceDiscoveryItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceDiscovery, :RequestId
        
        def initialize(servicediscovery=nil, requestid=nil)
          @ServiceDiscovery = servicediscovery
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceDiscovery'].nil?
            @ServiceDiscovery = ServiceDiscoveryItem.new
            @ServiceDiscovery.deserialize(params['ServiceDiscovery'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 监控数据点
      class DataPoint < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例对象维度组合
        # @type Dimensions: Array
        # @param Timestamps: 时间戳数组，表示那些时间点有数据，缺失的时间戳，没有数据点，可以理解为掉点了
        # @type Timestamps: Array
        # @param Values: 监控值数组，该数组和Timestamps一一对应
        # @type Values: Array

        attr_accessor :Dimensions, :Timestamps, :Values
        
        def initialize(dimensions=nil, timestamps=nil, values=nil)
          @Dimensions = dimensions
          @Timestamps = timestamps
          @Values = values
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # DeleteAlarmNotices请求参数结构体
      class DeleteAlarmNoticesRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param NoticeIds: 告警通知模板id列表
        # @type NoticeIds: Array

        attr_accessor :Module, :NoticeIds
        
        def initialize(_module=nil, noticeids=nil)
          @Module = _module
          @NoticeIds = noticeids
        end

        def deserialize(params)
          @Module = params['Module']
          @NoticeIds = params['NoticeIds']
        end
      end

      # DeleteAlarmNotices返回参数结构体
      class DeleteAlarmNoticesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAlarmPolicy请求参数结构体
      class DeleteAlarmPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定值 monitor
        # @type Module: String
        # @param PolicyIds: 告警策略 ID 列表
        # @type PolicyIds: Array

        attr_accessor :Module, :PolicyIds
        
        def initialize(_module=nil, policyids=nil)
          @Module = _module
          @PolicyIds = policyids
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyIds = params['PolicyIds']
        end
      end

      # DeleteAlarmPolicy返回参数结构体
      class DeleteAlarmPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAlertRules请求参数结构体
      class DeleteAlertRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleIds: 规则 ID 列表
        # @type RuleIds: Array
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String

        attr_accessor :RuleIds, :InstanceId
        
        def initialize(ruleids=nil, instanceid=nil)
          @RuleIds = ruleids
          @InstanceId = instanceid
        end

        def deserialize(params)
          @RuleIds = params['RuleIds']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteAlertRules返回参数结构体
      class DeleteAlertRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeletePolicyGroup请求参数结构体
      class DeletePolicyGroupRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id
        # @type GroupId: Array

        attr_accessor :Module, :GroupId
        
        def initialize(_module=nil, groupid=nil)
          @Module = _module
          @GroupId = groupid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
        end
      end

      # DeletePolicyGroup返回参数结构体
      class DeletePolicyGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteServiceDiscovery请求参数结构体
      class DeleteServiceDiscoveryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param KubeClusterId: <li>类型是 TKE，为对应的腾讯云容器服务集群 ID</li>
        # @type KubeClusterId: String
        # @param KubeType: 用户 Kubernetes 集群类型：
        # <li> 1 = 容器服务集群(TKE) </li>
        # @type KubeType: Integer
        # @param Type: 服务发现类型，取值如下：
        # <li> 1 = ServiceMonitor</li>
        # <li> 2 = PodMonitor</li>
        # <li> 3 = PodMonitor</li>
        # @type Type: Integer
        # @param Yaml: 服务发现配置信息
        # @type Yaml: String

        attr_accessor :InstanceId, :KubeClusterId, :KubeType, :Type, :Yaml
        
        def initialize(instanceid=nil, kubeclusterid=nil, kubetype=nil, type=nil, yaml=nil)
          @InstanceId = instanceid
          @KubeClusterId = kubeclusterid
          @KubeType = kubetype
          @Type = type
          @Yaml = yaml
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KubeClusterId = params['KubeClusterId']
          @KubeType = params['KubeType']
          @Type = params['Type']
          @Yaml = params['Yaml']
        end
      end

      # DeleteServiceDiscovery返回参数结构体
      class DeleteServiceDiscoveryResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccidentEventList接口的出参类型
      class DescribeAccidentEventListAlarms < TencentCloud::Common::AbstractModel
        # @param BusinessTypeDesc: 事件分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessTypeDesc: String
        # @param AccidentTypeDesc: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccidentTypeDesc: String
        # @param BusinessID: 事件分类的ID，1表示服务问题，2表示其他订阅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessID: Integer
        # @param EventStatus: 事件状态的ID，0表示已恢复，1表示未恢复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventStatus: Integer
        # @param AffectResource: 影响的对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectResource: String
        # @param Region: 事件的地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param OccurTime: 事件发生的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OccurTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :BusinessTypeDesc, :AccidentTypeDesc, :BusinessID, :EventStatus, :AffectResource, :Region, :OccurTime, :UpdateTime
        
        def initialize(businesstypedesc=nil, accidenttypedesc=nil, businessid=nil, eventstatus=nil, affectresource=nil, region=nil, occurtime=nil, updatetime=nil)
          @BusinessTypeDesc = businesstypedesc
          @AccidentTypeDesc = accidenttypedesc
          @BusinessID = businessid
          @EventStatus = eventstatus
          @AffectResource = affectresource
          @Region = region
          @OccurTime = occurtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @BusinessTypeDesc = params['BusinessTypeDesc']
          @AccidentTypeDesc = params['AccidentTypeDesc']
          @BusinessID = params['BusinessID']
          @EventStatus = params['EventStatus']
          @AffectResource = params['AffectResource']
          @Region = params['Region']
          @OccurTime = params['OccurTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # DescribeAccidentEventList请求参数结构体
      class DescribeAccidentEventListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 接口模块名，当前接口取值monitor
        # @type Module: String
        # @param StartTime: 起始时间，默认一天前的时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间，默认当前时间戳
        # @type EndTime: Integer
        # @param Limit: 分页参数，每页返回的数量，取值1~100，默认20
        # @type Limit: Integer
        # @param Offset: 分页参数，页偏移量，从0开始计数，默认0
        # @type Offset: Integer
        # @param UpdateTimeOrder: 根据UpdateTime排序的规则，取值asc或desc
        # @type UpdateTimeOrder: String
        # @param OccurTimeOrder: 根据OccurTime排序的规则，取值asc或desc（优先根据UpdateTimeOrder排序）
        # @type OccurTimeOrder: String
        # @param AccidentType: 根据事件类型过滤，1表示服务问题，2表示其他订阅
        # @type AccidentType: Array
        # @param AccidentEvent: 根据事件过滤，1表示云服务器存储问题，2表示云服务器网络连接问题，3表示云服务器运行异常，202表示运营商网络抖动
        # @type AccidentEvent: Array
        # @param AccidentStatus: 根据事件状态过滤，0表示已恢复，1表示未恢复
        # @type AccidentStatus: Array
        # @param AccidentRegion: 根据事件地域过滤，gz表示广州，sh表示上海等
        # @type AccidentRegion: Array
        # @param AffectResource: 根据影响资源过滤，比如ins-19a06bka
        # @type AffectResource: String

        attr_accessor :Module, :StartTime, :EndTime, :Limit, :Offset, :UpdateTimeOrder, :OccurTimeOrder, :AccidentType, :AccidentEvent, :AccidentStatus, :AccidentRegion, :AffectResource
        
        def initialize(_module=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, updatetimeorder=nil, occurtimeorder=nil, accidenttype=nil, accidentevent=nil, accidentstatus=nil, accidentregion=nil, affectresource=nil)
          @Module = _module
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @UpdateTimeOrder = updatetimeorder
          @OccurTimeOrder = occurtimeorder
          @AccidentType = accidenttype
          @AccidentEvent = accidentevent
          @AccidentStatus = accidentstatus
          @AccidentRegion = accidentregion
          @AffectResource = affectresource
        end

        def deserialize(params)
          @Module = params['Module']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @UpdateTimeOrder = params['UpdateTimeOrder']
          @OccurTimeOrder = params['OccurTimeOrder']
          @AccidentType = params['AccidentType']
          @AccidentEvent = params['AccidentEvent']
          @AccidentStatus = params['AccidentStatus']
          @AccidentRegion = params['AccidentRegion']
          @AffectResource = params['AffectResource']
        end
      end

      # DescribeAccidentEventList返回参数结构体
      class DescribeAccidentEventListResponse < TencentCloud::Common::AbstractModel
        # @param Alarms: 平台事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarms: Array
        # @param Total: 平台事件的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alarms, :Total, :RequestId
        
        def initialize(alarms=nil, total=nil, requestid=nil)
          @Alarms = alarms
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Alarms'].nil?
            @Alarms = []
            params['Alarms'].each do |i|
              describeaccidenteventlistalarms_tmp = DescribeAccidentEventListAlarms.new
              describeaccidenteventlistalarms_tmp.deserialize(i)
              @Alarms << describeaccidenteventlistalarms_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmEvents请求参数结构体
      class DescribeAlarmEventsRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定值 monitor
        # @type Module: String
        # @param Namespace: 告警策略类型，由 DescribeAllNamespaces 获得，例如 cvm_device
        # @type Namespace: String

        attr_accessor :Module, :Namespace
        
        def initialize(_module=nil, namespace=nil)
          @Module = _module
          @Namespace = namespace
        end

        def deserialize(params)
          @Module = params['Module']
          @Namespace = params['Namespace']
        end
      end

      # DescribeAlarmEvents返回参数结构体
      class DescribeAlarmEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 告警事件列表
        # @type Events: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :RequestId
        
        def initialize(events=nil, requestid=nil)
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              alarmevent_tmp = AlarmEvent.new
              alarmevent_tmp.deserialize(i)
              @Events << alarmevent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmHistories请求参数结构体
      class DescribeAlarmHistoriesRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param PageNumber: 页数，从 1 开始计数，默认 1
        # @type PageNumber: Integer
        # @param PageSize: 每页的数量，取值1~100，默认20
        # @type PageSize: Integer
        # @param Order: 默认按首次出现时间倒序排列 "ASC"=正序 "DESC"=逆序
        # @type Order: String
        # @param StartTime: 起始时间，默认一天前的时间戳。对应 `FirstOccurTime` 告警首次出现时间，告警历史的 `FirstOccurTime` 晚于 `StartTime` 才可能被搜索到。
        # @type StartTime: Integer
        # @param EndTime: 结束时间，默认当前时间戳。对应 `FirstOccurTime` 告警首次出现时间，告警历史的 `FirstOccurTime` 早于 `EndTime` 才可能被搜索到。
        # @type EndTime: Integer
        # @param MonitorTypes: 根据监控类型过滤 不选默认查所有类型 "MT_QCE"=云产品监控
        # @type MonitorTypes: Array
        # @param AlarmObject: 根据告警对象过滤 字符串模糊搜索
        # @type AlarmObject: String
        # @param AlarmStatus: 根据告警状态过滤 ALARM=未恢复 OK=已恢复 NO_CONF=已失效 NO_DATA=数据不足，不选默认查所有
        # @type AlarmStatus: Array
        # @param ProjectIds: 根据项目ID过滤，-1=无项目 0=默认项目
        # 可在此页面查询 [项目管理](https://console.cloud.tencent.com/project)
        # @type ProjectIds: Array
        # @param InstanceGroupIds: 根据实例组ID过滤
        # @type InstanceGroupIds: Array
        # @param Namespaces: 根据策略类型过滤，策略类型是监控类型之下的概念，在这里两者都需要传入，例如 `[{"MonitorType": "MT_QCE", "Namespace": "cvm_device"}]`
        # 可使用 [查询所有名字空间 DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 接口查询
        # @type Namespaces: Array
        # @param MetricNames: 根据指标名过滤
        # @type MetricNames: Array
        # @param PolicyName: 根据策略名称模糊搜索
        # @type PolicyName: String
        # @param Content: 根据告警内容模糊搜索
        # @type Content: String
        # @param ReceiverUids: 根据接收人搜索，可以使用“访问管理”的 [拉取子用户 ListUsers](https://cloud.tencent.com/document/product/598/34587) 接口获取用户列表 或 [查询子用户 GetUser](https://cloud.tencent.com/document/product/598/34590) 接口查询子用户详情，此处填入返回结果中的 `Uid` 字段
        # @type ReceiverUids: Array
        # @param ReceiverGroups: 根据接收组搜索，可以使用“访问管理”的 [查询用户组列表 ListGroups](https://cloud.tencent.com/document/product/598/34589) 接口获取用户组列表 或 [列出用户关联的用户组 ListGroupsForUser](https://cloud.tencent.com/document/product/598/34588) 查询某个子用户所在的用户组列表 ，此处填入返回结果中的 `GroupId ` 字段
        # @type ReceiverGroups: Array
        # @param PolicyIds: 根据告警策略 Id 列表搜索
        # @type PolicyIds: Array

        attr_accessor :Module, :PageNumber, :PageSize, :Order, :StartTime, :EndTime, :MonitorTypes, :AlarmObject, :AlarmStatus, :ProjectIds, :InstanceGroupIds, :Namespaces, :MetricNames, :PolicyName, :Content, :ReceiverUids, :ReceiverGroups, :PolicyIds
        
        def initialize(_module=nil, pagenumber=nil, pagesize=nil, order=nil, starttime=nil, endtime=nil, monitortypes=nil, alarmobject=nil, alarmstatus=nil, projectids=nil, instancegroupids=nil, namespaces=nil, metricnames=nil, policyname=nil, content=nil, receiveruids=nil, receivergroups=nil, policyids=nil)
          @Module = _module
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Order = order
          @StartTime = starttime
          @EndTime = endtime
          @MonitorTypes = monitortypes
          @AlarmObject = alarmobject
          @AlarmStatus = alarmstatus
          @ProjectIds = projectids
          @InstanceGroupIds = instancegroupids
          @Namespaces = namespaces
          @MetricNames = metricnames
          @PolicyName = policyname
          @Content = content
          @ReceiverUids = receiveruids
          @ReceiverGroups = receivergroups
          @PolicyIds = policyids
        end

        def deserialize(params)
          @Module = params['Module']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Order = params['Order']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MonitorTypes = params['MonitorTypes']
          @AlarmObject = params['AlarmObject']
          @AlarmStatus = params['AlarmStatus']
          @ProjectIds = params['ProjectIds']
          @InstanceGroupIds = params['InstanceGroupIds']
          unless params['Namespaces'].nil?
            @Namespaces = []
            params['Namespaces'].each do |i|
              monitortypenamespace_tmp = MonitorTypeNamespace.new
              monitortypenamespace_tmp.deserialize(i)
              @Namespaces << monitortypenamespace_tmp
            end
          end
          @MetricNames = params['MetricNames']
          @PolicyName = params['PolicyName']
          @Content = params['Content']
          @ReceiverUids = params['ReceiverUids']
          @ReceiverGroups = params['ReceiverGroups']
          @PolicyIds = params['PolicyIds']
        end
      end

      # DescribeAlarmHistories返回参数结构体
      class DescribeAlarmHistoriesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Histories: 告警历史列表
        # @type Histories: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Histories, :RequestId
        
        def initialize(totalcount=nil, histories=nil, requestid=nil)
          @TotalCount = totalcount
          @Histories = histories
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Histories'].nil?
            @Histories = []
            params['Histories'].each do |i|
              alarmhistory_tmp = AlarmHistory.new
              alarmhistory_tmp.deserialize(i)
              @Histories << alarmhistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmMetrics请求参数结构体
      class DescribeAlarmMetricsRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param MonitorType: 监控类型过滤 "MT_QCE"=云产品监控
        # @type MonitorType: String
        # @param Namespace: 告警策略类型，由 DescribeAllNamespaces 获得，例如 cvm_device
        # @type Namespace: String

        attr_accessor :Module, :MonitorType, :Namespace
        
        def initialize(_module=nil, monitortype=nil, namespace=nil)
          @Module = _module
          @MonitorType = monitortype
          @Namespace = namespace
        end

        def deserialize(params)
          @Module = params['Module']
          @MonitorType = params['MonitorType']
          @Namespace = params['Namespace']
        end
      end

      # DescribeAlarmMetrics返回参数结构体
      class DescribeAlarmMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Metrics: 告警指标列表
        # @type Metrics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metrics, :RequestId
        
        def initialize(metrics=nil, requestid=nil)
          @Metrics = metrics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              metric_tmp = Metric.new
              metric_tmp.deserialize(i)
              @Metrics << metric_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmNoticeCallbacks请求参数结构体
      class DescribeAlarmNoticeCallbacksRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String

        attr_accessor :Module
        
        def initialize(_module=nil)
          @Module = _module
        end

        def deserialize(params)
          @Module = params['Module']
        end
      end

      # DescribeAlarmNoticeCallbacks返回参数结构体
      class DescribeAlarmNoticeCallbacksResponse < TencentCloud::Common::AbstractModel
        # @param URLNotices: 告警回调通知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URLNotices: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :URLNotices, :RequestId
        
        def initialize(urlnotices=nil, requestid=nil)
          @URLNotices = urlnotices
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['URLNotices'].nil?
            @URLNotices = []
            params['URLNotices'].each do |i|
              urlnotice_tmp = URLNotice.new
              urlnotice_tmp.deserialize(i)
              @URLNotices << urlnotice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmNotice请求参数结构体
      class DescribeAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param NoticeId: 告警通知模板 id
        # @type NoticeId: String

        attr_accessor :Module, :NoticeId
        
        def initialize(_module=nil, noticeid=nil)
          @Module = _module
          @NoticeId = noticeid
        end

        def deserialize(params)
          @Module = params['Module']
          @NoticeId = params['NoticeId']
        end
      end

      # DescribeAlarmNotice返回参数结构体
      class DescribeAlarmNoticeResponse < TencentCloud::Common::AbstractModel
        # @param Notice: 告警通知模板详细信息
        # @type Notice: :class:`Tencentcloud::Monitor.v20180724.models.AlarmNotice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Notice, :RequestId
        
        def initialize(notice=nil, requestid=nil)
          @Notice = notice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Notice'].nil?
            @Notice = AlarmNotice.new
            @Notice.deserialize(params['Notice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmNotices请求参数结构体
      class DescribeAlarmNoticesRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param PageNumber: 页码 最小为1
        # @type PageNumber: Integer
        # @param PageSize: 分页大小 1～200
        # @type PageSize: Integer
        # @param Order: 按更新时间排序方式 ASC=正序 DESC=倒序
        # @type Order: String
        # @param OwnerUid: 主账号 uid 用于创建预设通知
        # @type OwnerUid: Integer
        # @param Name: 告警通知模板名称 用来模糊搜索
        # @type Name: String
        # @param ReceiverType: 根据接收人过滤告警通知模板需要选定通知用户类型 USER=用户 GROUP=用户组 传空=不按接收人过滤
        # @type ReceiverType: String
        # @param UserIds: 接收对象列表
        # @type UserIds: Array
        # @param GroupIds: 接收组列表
        # @type GroupIds: Array

        attr_accessor :Module, :PageNumber, :PageSize, :Order, :OwnerUid, :Name, :ReceiverType, :UserIds, :GroupIds
        
        def initialize(_module=nil, pagenumber=nil, pagesize=nil, order=nil, owneruid=nil, name=nil, receivertype=nil, userids=nil, groupids=nil)
          @Module = _module
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Order = order
          @OwnerUid = owneruid
          @Name = name
          @ReceiverType = receivertype
          @UserIds = userids
          @GroupIds = groupids
        end

        def deserialize(params)
          @Module = params['Module']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Order = params['Order']
          @OwnerUid = params['OwnerUid']
          @Name = params['Name']
          @ReceiverType = params['ReceiverType']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
        end
      end

      # DescribeAlarmNotices返回参数结构体
      class DescribeAlarmNoticesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 告警通知模板总数
        # @type TotalCount: Integer
        # @param Notices: 告警通知模板列表
        # @type Notices: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Notices, :RequestId
        
        def initialize(totalcount=nil, notices=nil, requestid=nil)
          @TotalCount = totalcount
          @Notices = notices
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Notices'].nil?
            @Notices = []
            params['Notices'].each do |i|
              alarmnotice_tmp = AlarmNotice.new
              alarmnotice_tmp.deserialize(i)
              @Notices << alarmnotice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmPolicies请求参数结构体
      class DescribeAlarmPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param PageNumber: 页数，从 1 开始计数，默认 1
        # @type PageNumber: Integer
        # @param PageSize: 每页的数量，取值1~100，默认20
        # @type PageSize: Integer
        # @param PolicyName: 按策略名称模糊搜索
        # @type PolicyName: String
        # @param MonitorTypes: 根据监控类型过滤 不选默认查所有类型 "MT_QCE"=云产品监控
        # @type MonitorTypes: Array
        # @param Namespaces: 根据命名空间过滤，不同策略类型的值详见
        # [策略类型列表](https://cloud.tencent.com/document/product/248/50397)
        # @type Namespaces: Array
        # @param Dimensions: 告警对象列表，JSON 字符串。外层数组，对应多个实例，内层为对象的维度。例如“云服务器-基础监控”可写为：
        # `[ {"Dimensions": {"unInstanceId": "ins-qr8d555g"}}, {"Dimensions": {"unInstanceId": "ins-qr8d555h"}} ]`
        # 具体也可以参考下方的示例 2。

        # 不同云产品参数示例详见 [维度信息Dimensions列表](https://cloud.tencent.com/document/product/248/50397)
        # @type Dimensions: String
        # @param ReceiverUids: 根据接收人搜索，可以使用“访问管理”的 [拉取子用户 ListUsers](https://cloud.tencent.com/document/product/598/34587) 接口获取用户列表 或 [查询子用户 GetUser](https://cloud.tencent.com/document/product/598/34590) 接口查询子用户详情，此处填入返回结果中的 `Uid` 字段
        # @type ReceiverUids: Array
        # @param ReceiverGroups: 根据接收组搜索，可以使用“访问管理”的 [查询用户组列表 ListGroups](https://cloud.tencent.com/document/product/598/34589) 接口获取用户组列表 或 [列出用户关联的用户组 ListGroupsForUser](https://cloud.tencent.com/document/product/598/34588) 查询某个子用户所在的用户组列表 ，此处填入返回结果中的 `GroupId ` 字段
        # @type ReceiverGroups: Array
        # @param PolicyType: 根据默认策略筛选 不传展示全部策略 DEFAULT=展示默认策略 NOT_DEFAULT=展示非默认策略
        # @type PolicyType: Array
        # @param Field: 排序字段，例如按照最后修改时间排序，Field: "UpdateTime"
        # @type Field: String
        # @param Order: 排序顺序：升序：ASC  降序：DESC
        # @type Order: String
        # @param ProjectIds: 策略所属项目的id数组，可在此页面查看
        # [项目管理](https://console.cloud.tencent.com/project)
        # @type ProjectIds: Array
        # @param NoticeIds: 通知模版的id列表，可查询通知模版列表获取。
        # 可使用 [查询通知模板列表](https://cloud.tencent.com/document/product/248/51280) 接口查询。
        # @type NoticeIds: Array
        # @param RuleTypes: 根据触发条件筛选 不传展示全部策略 STATIC=展示静态阈值策略 DYNAMIC=展示动态阈值策略
        # @type RuleTypes: Array
        # @param Enable: 告警启停筛选，[1]：启用   [0]：停止，全部[0, 1]
        # @type Enable: Array
        # @param NotBindingNoticeRule: 传 1 查询未配置通知规则的告警策略；不传或传其他数值，查询所有策略。
        # @type NotBindingNoticeRule: Integer

        attr_accessor :Module, :PageNumber, :PageSize, :PolicyName, :MonitorTypes, :Namespaces, :Dimensions, :ReceiverUids, :ReceiverGroups, :PolicyType, :Field, :Order, :ProjectIds, :NoticeIds, :RuleTypes, :Enable, :NotBindingNoticeRule
        
        def initialize(_module=nil, pagenumber=nil, pagesize=nil, policyname=nil, monitortypes=nil, namespaces=nil, dimensions=nil, receiveruids=nil, receivergroups=nil, policytype=nil, field=nil, order=nil, projectids=nil, noticeids=nil, ruletypes=nil, enable=nil, notbindingnoticerule=nil)
          @Module = _module
          @PageNumber = pagenumber
          @PageSize = pagesize
          @PolicyName = policyname
          @MonitorTypes = monitortypes
          @Namespaces = namespaces
          @Dimensions = dimensions
          @ReceiverUids = receiveruids
          @ReceiverGroups = receivergroups
          @PolicyType = policytype
          @Field = field
          @Order = order
          @ProjectIds = projectids
          @NoticeIds = noticeids
          @RuleTypes = ruletypes
          @Enable = enable
          @NotBindingNoticeRule = notbindingnoticerule
        end

        def deserialize(params)
          @Module = params['Module']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @PolicyName = params['PolicyName']
          @MonitorTypes = params['MonitorTypes']
          @Namespaces = params['Namespaces']
          @Dimensions = params['Dimensions']
          @ReceiverUids = params['ReceiverUids']
          @ReceiverGroups = params['ReceiverGroups']
          @PolicyType = params['PolicyType']
          @Field = params['Field']
          @Order = params['Order']
          @ProjectIds = params['ProjectIds']
          @NoticeIds = params['NoticeIds']
          @RuleTypes = params['RuleTypes']
          @Enable = params['Enable']
          @NotBindingNoticeRule = params['NotBindingNoticeRule']
        end
      end

      # DescribeAlarmPolicies返回参数结构体
      class DescribeAlarmPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 策略总数
        # @type TotalCount: Integer
        # @param Policies: 策略数组
        # @type Policies: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Policies, :RequestId
        
        def initialize(totalcount=nil, policies=nil, requestid=nil)
          @TotalCount = totalcount
          @Policies = policies
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Policies'].nil?
            @Policies = []
            params['Policies'].each do |i|
              alarmpolicy_tmp = AlarmPolicy.new
              alarmpolicy_tmp.deserialize(i)
              @Policies << alarmpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmPolicy请求参数结构体
      class DescribeAlarmPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param PolicyId: 告警策略ID
        # @type PolicyId: String

        attr_accessor :Module, :PolicyId
        
        def initialize(_module=nil, policyid=nil)
          @Module = _module
          @PolicyId = policyid
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeAlarmPolicy返回参数结构体
      class DescribeAlarmPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Policy: 策略详情
        # @type Policy: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicy`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Policy, :RequestId
        
        def initialize(policy=nil, requestid=nil)
          @Policy = policy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Policy'].nil?
            @Policy = AlarmPolicy.new
            @Policy.deserialize(params['Policy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlertRules请求参数结构体
      class DescribeAlertRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param RuleState: 规则状态码，取值如下：
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # @type RuleState: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Type: 报警策略模板分类
        # @type Type: String

        attr_accessor :InstanceId, :Limit, :Offset, :RuleId, :RuleState, :RuleName, :Type
        
        def initialize(instanceid=nil, limit=nil, offset=nil, ruleid=nil, rulestate=nil, rulename=nil, type=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @RuleId = ruleid
          @RuleState = rulestate
          @RuleName = rulename
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RuleId = params['RuleId']
          @RuleState = params['RuleState']
          @RuleName = params['RuleName']
          @Type = params['Type']
        end
      end

      # DescribeAlertRules返回参数结构体
      class DescribeAlertRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 报警规则数量
        # @type TotalCount: Integer
        # @param AlertRuleSet: 报警规则详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AlertRuleSet, :RequestId
        
        def initialize(totalcount=nil, alertruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @AlertRuleSet = alertruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AlertRuleSet'].nil?
            @AlertRuleSet = []
            params['AlertRuleSet'].each do |i|
              prometheusruleset_tmp = PrometheusRuleSet.new
              prometheusruleset_tmp.deserialize(i)
              @AlertRuleSet << prometheusruleset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllNamespaces请求参数结构体
      class DescribeAllNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param SceneType: 根据使用场景过滤 "ST_DASHBOARD"=Dashboard类型 或 "ST_ALARM"=告警类型
        # @type SceneType: String
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param MonitorTypes: 根据监控类型过滤 不填默认查所有类型 "MT_QCE"=云产品监控
        # @type MonitorTypes: Array
        # @param Ids: 根据namespace的Id过滤 不填默认查询所有
        # @type Ids: Array

        attr_accessor :SceneType, :Module, :MonitorTypes, :Ids
        
        def initialize(scenetype=nil, _module=nil, monitortypes=nil, ids=nil)
          @SceneType = scenetype
          @Module = _module
          @MonitorTypes = monitortypes
          @Ids = ids
        end

        def deserialize(params)
          @SceneType = params['SceneType']
          @Module = params['Module']
          @MonitorTypes = params['MonitorTypes']
          @Ids = params['Ids']
        end
      end

      # DescribeAllNamespaces返回参数结构体
      class DescribeAllNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param QceNamespaces: 云产品的告警策略类型，已废弃
        # @type QceNamespaces: :class:`Tencentcloud::Monitor.v20180724.models.CommonNamespace`
        # @param CustomNamespaces: 其他告警策略类型，已废弃
        # @type CustomNamespaces: :class:`Tencentcloud::Monitor.v20180724.models.CommonNamespace`
        # @param QceNamespacesNew: 云产品的告警策略类型
        # @type QceNamespacesNew: Array
        # @param CustomNamespacesNew: 其他告警策略类型，暂不支持
        # @type CustomNamespacesNew: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QceNamespaces, :CustomNamespaces, :QceNamespacesNew, :CustomNamespacesNew, :RequestId
        
        def initialize(qcenamespaces=nil, customnamespaces=nil, qcenamespacesnew=nil, customnamespacesnew=nil, requestid=nil)
          @QceNamespaces = qcenamespaces
          @CustomNamespaces = customnamespaces
          @QceNamespacesNew = qcenamespacesnew
          @CustomNamespacesNew = customnamespacesnew
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QceNamespaces'].nil?
            @QceNamespaces = CommonNamespace.new
            @QceNamespaces.deserialize(params['QceNamespaces'])
          end
          unless params['CustomNamespaces'].nil?
            @CustomNamespaces = CommonNamespace.new
            @CustomNamespaces.deserialize(params['CustomNamespaces'])
          end
          unless params['QceNamespacesNew'].nil?
            @QceNamespacesNew = []
            params['QceNamespacesNew'].each do |i|
              commonnamespace_tmp = CommonNamespace.new
              commonnamespace_tmp.deserialize(i)
              @QceNamespacesNew << commonnamespace_tmp
            end
          end
          unless params['CustomNamespacesNew'].nil?
            @CustomNamespacesNew = []
            params['CustomNamespacesNew'].each do |i|
              commonnamespace_tmp = CommonNamespace.new
              commonnamespace_tmp.deserialize(i)
              @CustomNamespacesNew << commonnamespace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaseMetrics请求参数结构体
      class DescribeBaseMetricsRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 业务命名空间，各个云产品的业务命名空间不同。如需获取业务命名空间，请前往各产品监控指标文档，例如云服务器的命名空间，可参见 [云服务器监控指标](https://cloud.tencent.com/document/product/248/6843)
        # @type Namespace: String
        # @param MetricName: 指标名，各个云产品的指标名不同。如需获取指标名，请前往各产品监控指标文档，例如云服务器的指标名，可参见 [云服务器监控指标](https://cloud.tencent.com/document/product/248/6843)
        # @type MetricName: String

        attr_accessor :Namespace, :MetricName
        
        def initialize(namespace=nil, metricname=nil)
          @Namespace = namespace
          @MetricName = metricname
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @MetricName = params['MetricName']
        end
      end

      # DescribeBaseMetrics返回参数结构体
      class DescribeBaseMetricsResponse < TencentCloud::Common::AbstractModel
        # @param MetricSet: 查询得到的指标描述列表
        # @type MetricSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSet, :RequestId
        
        def initialize(metricset=nil, requestid=nil)
          @MetricSet = metricset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricSet'].nil?
            @MetricSet = []
            params['MetricSet'].each do |i|
              metricset_tmp = MetricSet.new
              metricset_tmp.deserialize(i)
              @MetricSet << metricset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBasicAlarmList返回的Alarms
      class DescribeBasicAlarmListAlarms < TencentCloud::Common::AbstractModel
        # @param Id: 该条告警的ID
        # @type Id: Integer
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param Status: 告警状态ID，0表示未恢复；1表示已恢复；2,3,5表示数据不足；4表示已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param AlarmStatus: 告警状态，ALARM表示未恢复；OK表示已恢复；NO_DATA表示数据不足；NO_CONF表示已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmStatus: String
        # @param GroupId: 策略组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param GroupName: 策略组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param FirstOccurTime: 发生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOccurTime: String
        # @param Duration: 持续时间，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param LastOccurTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOccurTime: String
        # @param Content: 告警内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param ObjName: 告警对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjName: String
        # @param ObjId: 告警对象ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjId: String
        # @param ViewName: 策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewName: String
        # @param Vpc: VPC，只有CVM有
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vpc: String
        # @param MetricId: 指标ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricId: Integer
        # @param MetricName: 指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param AlarmType: 告警类型，0表示指标告警，2表示产品事件告警，3表示平台事件告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmType: Integer
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Dimensions: 告警对象维度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimensions: String
        # @param NotifyWay: 通知方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyWay: Array
        # @param InstanceGroup: 所属实例组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroup: Array

        attr_accessor :Id, :ProjectId, :ProjectName, :Status, :AlarmStatus, :GroupId, :GroupName, :FirstOccurTime, :Duration, :LastOccurTime, :Content, :ObjName, :ObjId, :ViewName, :Vpc, :MetricId, :MetricName, :AlarmType, :Region, :Dimensions, :NotifyWay, :InstanceGroup
        
        def initialize(id=nil, projectid=nil, projectname=nil, status=nil, alarmstatus=nil, groupid=nil, groupname=nil, firstoccurtime=nil, duration=nil, lastoccurtime=nil, content=nil, objname=nil, objid=nil, viewname=nil, vpc=nil, metricid=nil, metricname=nil, alarmtype=nil, region=nil, dimensions=nil, notifyway=nil, instancegroup=nil)
          @Id = id
          @ProjectId = projectid
          @ProjectName = projectname
          @Status = status
          @AlarmStatus = alarmstatus
          @GroupId = groupid
          @GroupName = groupname
          @FirstOccurTime = firstoccurtime
          @Duration = duration
          @LastOccurTime = lastoccurtime
          @Content = content
          @ObjName = objname
          @ObjId = objid
          @ViewName = viewname
          @Vpc = vpc
          @MetricId = metricid
          @MetricName = metricname
          @AlarmType = alarmtype
          @Region = region
          @Dimensions = dimensions
          @NotifyWay = notifyway
          @InstanceGroup = instancegroup
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @Status = params['Status']
          @AlarmStatus = params['AlarmStatus']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @FirstOccurTime = params['FirstOccurTime']
          @Duration = params['Duration']
          @LastOccurTime = params['LastOccurTime']
          @Content = params['Content']
          @ObjName = params['ObjName']
          @ObjId = params['ObjId']
          @ViewName = params['ViewName']
          @Vpc = params['Vpc']
          @MetricId = params['MetricId']
          @MetricName = params['MetricName']
          @AlarmType = params['AlarmType']
          @Region = params['Region']
          @Dimensions = params['Dimensions']
          @NotifyWay = params['NotifyWay']
          unless params['InstanceGroup'].nil?
            @InstanceGroup = []
            params['InstanceGroup'].each do |i|
              instancegroup_tmp = InstanceGroup.new
              instancegroup_tmp.deserialize(i)
              @InstanceGroup << instancegroup_tmp
            end
          end
        end
      end

      # DescribeBasicAlarmList请求参数结构体
      class DescribeBasicAlarmListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 接口模块名，当前取值monitor
        # @type Module: String
        # @param StartTime: 起始时间，默认一天前的时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间，默认当前时间戳
        # @type EndTime: Integer
        # @param Limit: 分页参数，每页返回的数量，取值1~100，默认20
        # @type Limit: Integer
        # @param Offset: 分页参数，页偏移量，从0开始计数，默认0
        # @type Offset: Integer
        # @param OccurTimeOrder: 根据发生时间排序，取值ASC或DESC
        # @type OccurTimeOrder: String
        # @param ProjectIds: 根据项目ID过滤
        # @type ProjectIds: Array
        # @param ViewNames: 根据策略类型过滤
        # @type ViewNames: Array
        # @param AlarmStatus: 根据告警状态过滤
        # @type AlarmStatus: Array
        # @param ObjLike: 根据告警对象过滤
        # @type ObjLike: String
        # @param InstanceGroupIds: 根据实例组ID过滤
        # @type InstanceGroupIds: Array
        # @param MetricNames: 根据指标名过滤
        # @type MetricNames: Array

        attr_accessor :Module, :StartTime, :EndTime, :Limit, :Offset, :OccurTimeOrder, :ProjectIds, :ViewNames, :AlarmStatus, :ObjLike, :InstanceGroupIds, :MetricNames
        
        def initialize(_module=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, occurtimeorder=nil, projectids=nil, viewnames=nil, alarmstatus=nil, objlike=nil, instancegroupids=nil, metricnames=nil)
          @Module = _module
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @OccurTimeOrder = occurtimeorder
          @ProjectIds = projectids
          @ViewNames = viewnames
          @AlarmStatus = alarmstatus
          @ObjLike = objlike
          @InstanceGroupIds = instancegroupids
          @MetricNames = metricnames
        end

        def deserialize(params)
          @Module = params['Module']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OccurTimeOrder = params['OccurTimeOrder']
          @ProjectIds = params['ProjectIds']
          @ViewNames = params['ViewNames']
          @AlarmStatus = params['AlarmStatus']
          @ObjLike = params['ObjLike']
          @InstanceGroupIds = params['InstanceGroupIds']
          @MetricNames = params['MetricNames']
        end
      end

      # DescribeBasicAlarmList返回参数结构体
      class DescribeBasicAlarmListResponse < TencentCloud::Common::AbstractModel
        # @param Alarms: 告警列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarms: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alarms, :Total, :RequestId
        
        def initialize(alarms=nil, total=nil, requestid=nil)
          @Alarms = alarms
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Alarms'].nil?
            @Alarms = []
            params['Alarms'].each do |i|
              describebasicalarmlistalarms_tmp = DescribeBasicAlarmListAlarms.new
              describebasicalarmlistalarms_tmp.deserialize(i)
              @Alarms << describebasicalarmlistalarms_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindingPolicyObjectList接口的Dimension
      class DescribeBindingPolicyObjectListDimension < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域id
        # @type RegionId: Integer
        # @param Region: 地域简称
        # @type Region: String
        # @param Dimensions: 维度组合json字符串
        # @type Dimensions: String
        # @param EventDimensions: 事件维度组合json字符串
        # @type EventDimensions: String

        attr_accessor :RegionId, :Region, :Dimensions, :EventDimensions
        
        def initialize(regionid=nil, region=nil, dimensions=nil, eventdimensions=nil)
          @RegionId = regionid
          @Region = region
          @Dimensions = dimensions
          @EventDimensions = eventdimensions
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Region = params['Region']
          @Dimensions = params['Dimensions']
          @EventDimensions = params['EventDimensions']
        end
      end

      # 查询策略绑定对象列表接口返回的对象实例信息
      class DescribeBindingPolicyObjectListInstance < TencentCloud::Common::AbstractModel
        # @param UniqueId: 对象唯一id
        # @type UniqueId: String
        # @param Dimensions: 表示对象实例的维度集合，jsonObj字符串
        # @type Dimensions: String
        # @param IsShielded: 对象是否被屏蔽，0表示未屏蔽，1表示被屏蔽
        # @type IsShielded: Integer
        # @param Region: 对象所在的地域
        # @type Region: String

        attr_accessor :UniqueId, :Dimensions, :IsShielded, :Region
        
        def initialize(uniqueid=nil, dimensions=nil, isshielded=nil, region=nil)
          @UniqueId = uniqueid
          @Dimensions = dimensions
          @IsShielded = isshielded
          @Region = region
        end

        def deserialize(params)
          @UniqueId = params['UniqueId']
          @Dimensions = params['Dimensions']
          @IsShielded = params['IsShielded']
          @Region = params['Region']
        end
      end

      # DescribeBindingPolicyObjectList返回的是实例分组信息
      class DescribeBindingPolicyObjectListInstanceGroup < TencentCloud::Common::AbstractModel
        # @param InstanceGroupId: 实例分组id
        # @type InstanceGroupId: Integer
        # @param ViewName: 告警策略类型名称
        # @type ViewName: String
        # @param LastEditUin: 最后编辑uin
        # @type LastEditUin: String
        # @param GroupName: 实例分组名称
        # @type GroupName: String
        # @param InstanceSum: 实例数量
        # @type InstanceSum: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param InsertTime: 创建时间
        # @type InsertTime: Integer
        # @param Regions: 实例所在的地域集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regions: Array

        attr_accessor :InstanceGroupId, :ViewName, :LastEditUin, :GroupName, :InstanceSum, :UpdateTime, :InsertTime, :Regions
        
        def initialize(instancegroupid=nil, viewname=nil, lastedituin=nil, groupname=nil, instancesum=nil, updatetime=nil, inserttime=nil, regions=nil)
          @InstanceGroupId = instancegroupid
          @ViewName = viewname
          @LastEditUin = lastedituin
          @GroupName = groupname
          @InstanceSum = instancesum
          @UpdateTime = updatetime
          @InsertTime = inserttime
          @Regions = regions
        end

        def deserialize(params)
          @InstanceGroupId = params['InstanceGroupId']
          @ViewName = params['ViewName']
          @LastEditUin = params['LastEditUin']
          @GroupName = params['GroupName']
          @InstanceSum = params['InstanceSum']
          @UpdateTime = params['UpdateTime']
          @InsertTime = params['InsertTime']
          @Regions = params['Regions']
        end
      end

      # DescribeBindingPolicyObjectList请求参数结构体
      class DescribeBindingPolicyObjectListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id
        # @type GroupId: Integer
        # @param Limit: 分页参数，每页返回的数量，取值1~100，默认20
        # @type Limit: Integer
        # @param Offset: 分页参数，页偏移量，从0开始计数，默认0
        # @type Offset: Integer
        # @param Dimensions: 筛选对象的维度信息
        # @type Dimensions: Array

        attr_accessor :Module, :GroupId, :Limit, :Offset, :Dimensions
        
        def initialize(_module=nil, groupid=nil, limit=nil, offset=nil, dimensions=nil)
          @Module = _module
          @GroupId = groupid
          @Limit = limit
          @Offset = offset
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              describebindingpolicyobjectlistdimension_tmp = DescribeBindingPolicyObjectListDimension.new
              describebindingpolicyobjectlistdimension_tmp.deserialize(i)
              @Dimensions << describebindingpolicyobjectlistdimension_tmp
            end
          end
        end
      end

      # DescribeBindingPolicyObjectList返回参数结构体
      class DescribeBindingPolicyObjectListResponse < TencentCloud::Common::AbstractModel
        # @param List: 绑定的对象实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 绑定的对象实例总数
        # @type Total: Integer
        # @param NoShieldedSum: 未屏蔽的对象实例数
        # @type NoShieldedSum: Integer
        # @param InstanceGroup: 绑定的实例分组信息，没有绑定实例分组则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroup: :class:`Tencentcloud::Monitor.v20180724.models.DescribeBindingPolicyObjectListInstanceGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :NoShieldedSum, :InstanceGroup, :RequestId
        
        def initialize(list=nil, total=nil, noshieldedsum=nil, instancegroup=nil, requestid=nil)
          @List = list
          @Total = total
          @NoShieldedSum = noshieldedsum
          @InstanceGroup = instancegroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              describebindingpolicyobjectlistinstance_tmp = DescribeBindingPolicyObjectListInstance.new
              describebindingpolicyobjectlistinstance_tmp.deserialize(i)
              @List << describebindingpolicyobjectlistinstance_tmp
            end
          end
          @Total = params['Total']
          @NoShieldedSum = params['NoShieldedSum']
          unless params['InstanceGroup'].nil?
            @InstanceGroup = DescribeBindingPolicyObjectListInstanceGroup.new
            @InstanceGroup.deserialize(params['InstanceGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonitorTypes请求参数结构体
      class DescribeMonitorTypesRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定值 monitor
        # @type Module: String

        attr_accessor :Module
        
        def initialize(_module=nil)
          @Module = _module
        end

        def deserialize(params)
          @Module = params['Module']
        end
      end

      # DescribeMonitorTypes返回参数结构体
      class DescribeMonitorTypesResponse < TencentCloud::Common::AbstractModel
        # @param MonitorTypes: 监控类型，云产品监控为 MT_QCE
        # @type MonitorTypes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorTypes, :RequestId
        
        def initialize(monitortypes=nil, requestid=nil)
          @MonitorTypes = monitortypes
          @RequestId = requestid
        end

        def deserialize(params)
          @MonitorTypes = params['MonitorTypes']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyConditionList策略条件
      class DescribePolicyConditionListCondition < TencentCloud::Common::AbstractModel
        # @param PolicyViewName: 策略视图名称
        # @type PolicyViewName: String
        # @param EventMetrics: 事件告警条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventMetrics: Array
        # @param IsSupportMultiRegion: 是否支持多地域
        # @type IsSupportMultiRegion: Boolean
        # @param Metrics: 指标告警条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param Name: 策略类型名称
        # @type Name: String
        # @param SortId: 排序id
        # @type SortId: Integer
        # @param SupportDefault: 是否支持默认策略
        # @type SupportDefault: Boolean
        # @param SupportRegions: 支持该策略类型的地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportRegions: Array

        attr_accessor :PolicyViewName, :EventMetrics, :IsSupportMultiRegion, :Metrics, :Name, :SortId, :SupportDefault, :SupportRegions
        
        def initialize(policyviewname=nil, eventmetrics=nil, issupportmultiregion=nil, metrics=nil, name=nil, sortid=nil, supportdefault=nil, supportregions=nil)
          @PolicyViewName = policyviewname
          @EventMetrics = eventmetrics
          @IsSupportMultiRegion = issupportmultiregion
          @Metrics = metrics
          @Name = name
          @SortId = sortid
          @SupportDefault = supportdefault
          @SupportRegions = supportregions
        end

        def deserialize(params)
          @PolicyViewName = params['PolicyViewName']
          unless params['EventMetrics'].nil?
            @EventMetrics = []
            params['EventMetrics'].each do |i|
              describepolicyconditionlisteventmetric_tmp = DescribePolicyConditionListEventMetric.new
              describepolicyconditionlisteventmetric_tmp.deserialize(i)
              @EventMetrics << describepolicyconditionlisteventmetric_tmp
            end
          end
          @IsSupportMultiRegion = params['IsSupportMultiRegion']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              describepolicyconditionlistmetric_tmp = DescribePolicyConditionListMetric.new
              describepolicyconditionlistmetric_tmp.deserialize(i)
              @Metrics << describepolicyconditionlistmetric_tmp
            end
          end
          @Name = params['Name']
          @SortId = params['SortId']
          @SupportDefault = params['SupportDefault']
          @SupportRegions = params['SupportRegions']
        end
      end

      # DescribePolicyConditionList.ConfigManual
      class DescribePolicyConditionListConfigManual < TencentCloud::Common::AbstractModel
        # @param CalcType: 检测方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcType: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManualCalcType`
        # @param CalcValue: 检测阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcValue: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManualCalcValue`
        # @param ContinueTime: 持续时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContinueTime: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManualContinueTime`
        # @param Period: 数据周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManualPeriod`
        # @param PeriodNum: 持续周期个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodNum: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManualPeriodNum`
        # @param StatType: 聚合方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatType: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManualStatType`

        attr_accessor :CalcType, :CalcValue, :ContinueTime, :Period, :PeriodNum, :StatType
        
        def initialize(calctype=nil, calcvalue=nil, continuetime=nil, period=nil, periodnum=nil, stattype=nil)
          @CalcType = calctype
          @CalcValue = calcvalue
          @ContinueTime = continuetime
          @Period = period
          @PeriodNum = periodnum
          @StatType = stattype
        end

        def deserialize(params)
          unless params['CalcType'].nil?
            @CalcType = DescribePolicyConditionListConfigManualCalcType.new
            @CalcType.deserialize(params['CalcType'])
          end
          unless params['CalcValue'].nil?
            @CalcValue = DescribePolicyConditionListConfigManualCalcValue.new
            @CalcValue.deserialize(params['CalcValue'])
          end
          unless params['ContinueTime'].nil?
            @ContinueTime = DescribePolicyConditionListConfigManualContinueTime.new
            @ContinueTime.deserialize(params['ContinueTime'])
          end
          unless params['Period'].nil?
            @Period = DescribePolicyConditionListConfigManualPeriod.new
            @Period.deserialize(params['Period'])
          end
          unless params['PeriodNum'].nil?
            @PeriodNum = DescribePolicyConditionListConfigManualPeriodNum.new
            @PeriodNum.deserialize(params['PeriodNum'])
          end
          unless params['StatType'].nil?
            @StatType = DescribePolicyConditionListConfigManualStatType.new
            @StatType.deserialize(params['StatType'])
          end
        end
      end

      # DescribePolicyConditionList.ConfigManual.CalcType
      class DescribePolicyConditionListConfigManualCalcType < TencentCloud::Common::AbstractModel
        # @param Keys: CalcType 取值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param Need: 是否必须
        # @type Need: Boolean

        attr_accessor :Keys, :Need
        
        def initialize(keys=nil, need=nil)
          @Keys = keys
          @Need = need
        end

        def deserialize(params)
          @Keys = params['Keys']
          @Need = params['Need']
        end
      end

      # DescribePolicyConditionList.ConfigManual.CalcValue
      class DescribePolicyConditionListConfigManualCalcValue < TencentCloud::Common::AbstractModel
        # @param Default: 默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: String
        # @param Fixed: 固定值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fixed: String
        # @param Max: 最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: String
        # @param Min: 最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: String
        # @param Need: 是否必须
        # @type Need: Boolean

        attr_accessor :Default, :Fixed, :Max, :Min, :Need
        
        def initialize(default=nil, fixed=nil, max=nil, min=nil, need=nil)
          @Default = default
          @Fixed = fixed
          @Max = max
          @Min = min
          @Need = need
        end

        def deserialize(params)
          @Default = params['Default']
          @Fixed = params['Fixed']
          @Max = params['Max']
          @Min = params['Min']
          @Need = params['Need']
        end
      end

      # DescribePolicyConditionList.ConfigManual.ContinueTime
      class DescribePolicyConditionListConfigManualContinueTime < TencentCloud::Common::AbstractModel
        # @param Default: 默认持续时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: Integer
        # @param Keys: 可选持续时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param Need: 是否必须
        # @type Need: Boolean

        attr_accessor :Default, :Keys, :Need
        
        def initialize(default=nil, keys=nil, need=nil)
          @Default = default
          @Keys = keys
          @Need = need
        end

        def deserialize(params)
          @Default = params['Default']
          @Keys = params['Keys']
          @Need = params['Need']
        end
      end

      # DescribePolicyConditionList.ConfigManual.Period
      class DescribePolicyConditionListConfigManualPeriod < TencentCloud::Common::AbstractModel
        # @param Default: 默认周期，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: Integer
        # @param Keys: 可选周期，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param Need: 是否必须
        # @type Need: Boolean

        attr_accessor :Default, :Keys, :Need
        
        def initialize(default=nil, keys=nil, need=nil)
          @Default = default
          @Keys = keys
          @Need = need
        end

        def deserialize(params)
          @Default = params['Default']
          @Keys = params['Keys']
          @Need = params['Need']
        end
      end

      # DescribePolicyConditionList.ConfigManual.PeriodNum
      class DescribePolicyConditionListConfigManualPeriodNum < TencentCloud::Common::AbstractModel
        # @param Default: 默认周期数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: Integer
        # @param Keys: 可选周期数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param Need: 是否必须
        # @type Need: Boolean

        attr_accessor :Default, :Keys, :Need
        
        def initialize(default=nil, keys=nil, need=nil)
          @Default = default
          @Keys = keys
          @Need = need
        end

        def deserialize(params)
          @Default = params['Default']
          @Keys = params['Keys']
          @Need = params['Need']
        end
      end

      # DescribePolicyConditionList.ConfigManual.StatType
      class DescribePolicyConditionListConfigManualStatType < TencentCloud::Common::AbstractModel
        # @param P5: 数据聚合方式，周期5秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P5: String
        # @param P10: 数据聚合方式，周期10秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P10: String
        # @param P60: 数据聚合方式，周期1分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P60: String
        # @param P300: 数据聚合方式，周期5分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P300: String
        # @param P600: 数据聚合方式，周期10分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P600: String
        # @param P1800: 数据聚合方式，周期30分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P1800: String
        # @param P3600: 数据聚合方式，周期1小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P3600: String
        # @param P86400: 数据聚合方式，周期1天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P86400: String

        attr_accessor :P5, :P10, :P60, :P300, :P600, :P1800, :P3600, :P86400
        
        def initialize(p5=nil, p10=nil, p60=nil, p300=nil, p600=nil, p1800=nil, p3600=nil, p86400=nil)
          @P5 = p5
          @P10 = p10
          @P60 = p60
          @P300 = p300
          @P600 = p600
          @P1800 = p1800
          @P3600 = p3600
          @P86400 = p86400
        end

        def deserialize(params)
          @P5 = params['P5']
          @P10 = params['P10']
          @P60 = params['P60']
          @P300 = params['P300']
          @P600 = params['P600']
          @P1800 = params['P1800']
          @P3600 = params['P3600']
          @P86400 = params['P86400']
        end
      end

      # DescribePolicyConditionList.EventMetric
      class DescribePolicyConditionListEventMetric < TencentCloud::Common::AbstractModel
        # @param EventId: 事件id
        # @type EventId: Integer
        # @param EventShowName: 事件名称
        # @type EventShowName: String
        # @param NeedRecovered: 是否需要恢复
        # @type NeedRecovered: Boolean
        # @param Type: 事件类型，预留字段，当前固定取值为2
        # @type Type: Integer

        attr_accessor :EventId, :EventShowName, :NeedRecovered, :Type
        
        def initialize(eventid=nil, eventshowname=nil, needrecovered=nil, type=nil)
          @EventId = eventid
          @EventShowName = eventshowname
          @NeedRecovered = needrecovered
          @Type = type
        end

        def deserialize(params)
          @EventId = params['EventId']
          @EventShowName = params['EventShowName']
          @NeedRecovered = params['NeedRecovered']
          @Type = params['Type']
        end
      end

      # 指标告警配置
      class DescribePolicyConditionListMetric < TencentCloud::Common::AbstractModel
        # @param ConfigManual: 指标配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigManual: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyConditionListConfigManual`
        # @param MetricId: 指标id
        # @type MetricId: Integer
        # @param MetricShowName: 指标名称
        # @type MetricShowName: String
        # @param MetricUnit: 指标单位
        # @type MetricUnit: String

        attr_accessor :ConfigManual, :MetricId, :MetricShowName, :MetricUnit
        
        def initialize(configmanual=nil, metricid=nil, metricshowname=nil, metricunit=nil)
          @ConfigManual = configmanual
          @MetricId = metricid
          @MetricShowName = metricshowname
          @MetricUnit = metricunit
        end

        def deserialize(params)
          unless params['ConfigManual'].nil?
            @ConfigManual = DescribePolicyConditionListConfigManual.new
            @ConfigManual.deserialize(params['ConfigManual'])
          end
          @MetricId = params['MetricId']
          @MetricShowName = params['MetricShowName']
          @MetricUnit = params['MetricUnit']
        end
      end

      # DescribePolicyConditionList请求参数结构体
      class DescribePolicyConditionListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String

        attr_accessor :Module
        
        def initialize(_module=nil)
          @Module = _module
        end

        def deserialize(params)
          @Module = params['Module']
        end
      end

      # DescribePolicyConditionList返回参数结构体
      class DescribePolicyConditionListResponse < TencentCloud::Common::AbstractModel
        # @param Conditions: 告警策略条件列表
        # @type Conditions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Conditions, :RequestId
        
        def initialize(conditions=nil, requestid=nil)
          @Conditions = conditions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              describepolicyconditionlistcondition_tmp = DescribePolicyConditionListCondition.new
              describepolicyconditionlistcondition_tmp.deserialize(i)
              @Conditions << describepolicyconditionlistcondition_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询策略输出的用户回调信息
      class DescribePolicyGroupInfoCallback < TencentCloud::Common::AbstractModel
        # @param CallbackUrl: 用户回调接口地址
        # @type CallbackUrl: String
        # @param ValidFlag: 用户回调接口状态，0表示未验证，1表示已验证，2表示存在url但没有通过验证
        # @type ValidFlag: Integer
        # @param VerifyCode: 用户回调接口验证码
        # @type VerifyCode: String

        attr_accessor :CallbackUrl, :ValidFlag, :VerifyCode
        
        def initialize(callbackurl=nil, validflag=nil, verifycode=nil)
          @CallbackUrl = callbackurl
          @ValidFlag = validflag
          @VerifyCode = verifycode
        end

        def deserialize(params)
          @CallbackUrl = params['CallbackUrl']
          @ValidFlag = params['ValidFlag']
          @VerifyCode = params['VerifyCode']
        end
      end

      # 查询策略输出的阈值告警条件
      class DescribePolicyGroupInfoCondition < TencentCloud::Common::AbstractModel
        # @param MetricShowName: 指标名称
        # @type MetricShowName: String
        # @param Period: 数据聚合周期(单位秒)
        # @type Period: Integer
        # @param MetricId: 指标id
        # @type MetricId: Integer
        # @param RuleId: 阈值规则id
        # @type RuleId: Integer
        # @param Unit: 指标单位
        # @type Unit: String
        # @param AlarmNotifyType: 告警发送收敛类型。0连续告警，1指数告警
        # @type AlarmNotifyType: Integer
        # @param AlarmNotifyPeriod: 告警发送周期单位秒。<0 不触发, 0 只触发一次, >0 每隔triggerTime秒触发一次
        # @type AlarmNotifyPeriod: Integer
        # @param CalcType: 比较类型，1表示大于，2表示大于等于，3表示小于，4表示小于等于，5表示相等，6表示不相等，7表示日同比上涨，8表示日同比下降，9表示周同比上涨，10表示周同比下降，11表示周期环比上涨，12表示周期环比下降
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcType: Integer
        # @param CalcValue: 检测阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcValue: String
        # @param ContinueTime: 持续多长时间触发规则会告警(单位秒)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContinueTime: Integer
        # @param MetricName: 告警指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String

        attr_accessor :MetricShowName, :Period, :MetricId, :RuleId, :Unit, :AlarmNotifyType, :AlarmNotifyPeriod, :CalcType, :CalcValue, :ContinueTime, :MetricName
        
        def initialize(metricshowname=nil, period=nil, metricid=nil, ruleid=nil, unit=nil, alarmnotifytype=nil, alarmnotifyperiod=nil, calctype=nil, calcvalue=nil, continuetime=nil, metricname=nil)
          @MetricShowName = metricshowname
          @Period = period
          @MetricId = metricid
          @RuleId = ruleid
          @Unit = unit
          @AlarmNotifyType = alarmnotifytype
          @AlarmNotifyPeriod = alarmnotifyperiod
          @CalcType = calctype
          @CalcValue = calcvalue
          @ContinueTime = continuetime
          @MetricName = metricname
        end

        def deserialize(params)
          @MetricShowName = params['MetricShowName']
          @Period = params['Period']
          @MetricId = params['MetricId']
          @RuleId = params['RuleId']
          @Unit = params['Unit']
          @AlarmNotifyType = params['AlarmNotifyType']
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @CalcType = params['CalcType']
          @CalcValue = params['CalcValue']
          @ContinueTime = params['ContinueTime']
          @MetricName = params['MetricName']
        end
      end

      # 查询策略输出的模板策略组信息
      class DescribePolicyGroupInfoConditionTpl < TencentCloud::Common::AbstractModel
        # @param GroupId: 策略组id
        # @type GroupId: Integer
        # @param GroupName: 策略组名称
        # @type GroupName: String
        # @param ViewName: 策略类型
        # @type ViewName: String
        # @param Remark: 策略组说明
        # @type Remark: String
        # @param LastEditUin: 最后编辑的用户uin
        # @type LastEditUin: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param InsertTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: Integer
        # @param IsUnionRule: 是否且规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnionRule: Integer

        attr_accessor :GroupId, :GroupName, :ViewName, :Remark, :LastEditUin, :UpdateTime, :InsertTime, :IsUnionRule
        
        def initialize(groupid=nil, groupname=nil, viewname=nil, remark=nil, lastedituin=nil, updatetime=nil, inserttime=nil, isunionrule=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ViewName = viewname
          @Remark = remark
          @LastEditUin = lastedituin
          @UpdateTime = updatetime
          @InsertTime = inserttime
          @IsUnionRule = isunionrule
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ViewName = params['ViewName']
          @Remark = params['Remark']
          @LastEditUin = params['LastEditUin']
          @UpdateTime = params['UpdateTime']
          @InsertTime = params['InsertTime']
          @IsUnionRule = params['IsUnionRule']
        end
      end

      # 查询策略输出的事件告警条件
      class DescribePolicyGroupInfoEventCondition < TencentCloud::Common::AbstractModel
        # @param EventId: 事件id
        # @type EventId: Integer
        # @param RuleId: 事件告警规则id
        # @type RuleId: Integer
        # @param EventShowName: 事件名称
        # @type EventShowName: String
        # @param AlarmNotifyPeriod: 告警发送周期单位秒。<0 不触发, 0 只触发一次, >0 每隔triggerTime秒触发一次
        # @type AlarmNotifyPeriod: Integer
        # @param AlarmNotifyType: 告警发送收敛类型。0连续告警，1指数告警
        # @type AlarmNotifyType: Integer

        attr_accessor :EventId, :RuleId, :EventShowName, :AlarmNotifyPeriod, :AlarmNotifyType
        
        def initialize(eventid=nil, ruleid=nil, eventshowname=nil, alarmnotifyperiod=nil, alarmnotifytype=nil)
          @EventId = eventid
          @RuleId = ruleid
          @EventShowName = eventshowname
          @AlarmNotifyPeriod = alarmnotifyperiod
          @AlarmNotifyType = alarmnotifytype
        end

        def deserialize(params)
          @EventId = params['EventId']
          @RuleId = params['RuleId']
          @EventShowName = params['EventShowName']
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @AlarmNotifyType = params['AlarmNotifyType']
        end
      end

      # 查询策略输出的告警接收人信息
      class DescribePolicyGroupInfoReceiverInfo < TencentCloud::Common::AbstractModel
        # @param ReceiverGroupList: 告警接收组id列表
        # @type ReceiverGroupList: Array
        # @param ReceiverUserList: 告警接收人id列表
        # @type ReceiverUserList: Array
        # @param StartTime: 告警时间段开始时间。范围[0,86400)，作为unix时间戳转成北京时间后去掉日期，例如7200表示"10:0:0"
        # @type StartTime: Integer
        # @param EndTime: 告警时间段结束时间。含义同StartTime
        # @type EndTime: Integer
        # @param ReceiverType: 接收类型。“group”(接收组)或“user”(接收人)
        # @type ReceiverType: String
        # @param NotifyWay: 告警通知方式。可选 "SMS","SITE","EMAIL","CALL","WECHAT"
        # @type NotifyWay: Array
        # @param UidList: 电话告警接收者uid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UidList: Array
        # @param RoundNumber: 电话告警轮数
        # @type RoundNumber: Integer
        # @param RoundInterval: 电话告警每轮间隔（秒）
        # @type RoundInterval: Integer
        # @param PersonInterval: 电话告警对个人间隔（秒）
        # @type PersonInterval: Integer
        # @param NeedSendNotice: 是否需要电话告警触达提示。0不需要，1需要
        # @type NeedSendNotice: Integer
        # @param SendFor: 电话告警通知时机。可选"OCCUR"(告警时通知),"RECOVER"(恢复时通知)
        # @type SendFor: Array
        # @param RecoverNotify: 恢复通知方式。可选"SMS"
        # @type RecoverNotify: Array
        # @param ReceiveLanguage: 告警发送语言
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveLanguage: String

        attr_accessor :ReceiverGroupList, :ReceiverUserList, :StartTime, :EndTime, :ReceiverType, :NotifyWay, :UidList, :RoundNumber, :RoundInterval, :PersonInterval, :NeedSendNotice, :SendFor, :RecoverNotify, :ReceiveLanguage
        
        def initialize(receivergrouplist=nil, receiveruserlist=nil, starttime=nil, endtime=nil, receivertype=nil, notifyway=nil, uidlist=nil, roundnumber=nil, roundinterval=nil, personinterval=nil, needsendnotice=nil, sendfor=nil, recovernotify=nil, receivelanguage=nil)
          @ReceiverGroupList = receivergrouplist
          @ReceiverUserList = receiveruserlist
          @StartTime = starttime
          @EndTime = endtime
          @ReceiverType = receivertype
          @NotifyWay = notifyway
          @UidList = uidlist
          @RoundNumber = roundnumber
          @RoundInterval = roundinterval
          @PersonInterval = personinterval
          @NeedSendNotice = needsendnotice
          @SendFor = sendfor
          @RecoverNotify = recovernotify
          @ReceiveLanguage = receivelanguage
        end

        def deserialize(params)
          @ReceiverGroupList = params['ReceiverGroupList']
          @ReceiverUserList = params['ReceiverUserList']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReceiverType = params['ReceiverType']
          @NotifyWay = params['NotifyWay']
          @UidList = params['UidList']
          @RoundNumber = params['RoundNumber']
          @RoundInterval = params['RoundInterval']
          @PersonInterval = params['PersonInterval']
          @NeedSendNotice = params['NeedSendNotice']
          @SendFor = params['SendFor']
          @RecoverNotify = params['RecoverNotify']
          @ReceiveLanguage = params['ReceiveLanguage']
        end
      end

      # DescribePolicyGroupInfo请求参数结构体
      class DescribePolicyGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id
        # @type GroupId: Integer

        attr_accessor :Module, :GroupId
        
        def initialize(_module=nil, groupid=nil)
          @Module = _module
          @GroupId = groupid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
        end
      end

      # DescribePolicyGroupInfo返回参数结构体
      class DescribePolicyGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param GroupName: 策略组名称
        # @type GroupName: String
        # @param ProjectId: 策略组所属的项目id
        # @type ProjectId: Integer
        # @param IsDefault: 是否为默认策略，0表示非默认策略，1表示默认策略
        # @type IsDefault: Integer
        # @param ViewName: 策略类型
        # @type ViewName: String
        # @param Remark: 策略说明
        # @type Remark: String
        # @param ShowName: 策略类型名称
        # @type ShowName: String
        # @param LastEditUin: 最近编辑的用户uin
        # @type LastEditUin: String
        # @param UpdateTime: 最近编辑时间
        # @type UpdateTime: String
        # @param Region: 该策略支持的地域
        # @type Region: Array
        # @param DimensionGroup: 策略类型的维度列表
        # @type DimensionGroup: Array
        # @param ConditionsConfig: 阈值规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionsConfig: Array
        # @param EventConfig: 产品事件规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventConfig: Array
        # @param ReceiverInfos: 用户接收人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverInfos: Array
        # @param Callback: 用户回调信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Callback: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyGroupInfoCallback`
        # @param ConditionsTemp: 模板策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionsTemp: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyGroupInfoConditionTpl`
        # @param CanSetDefault: 是否可以设置成默认策略
        # @type CanSetDefault: Boolean
        # @param IsUnionRule: 是否且规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnionRule: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupName, :ProjectId, :IsDefault, :ViewName, :Remark, :ShowName, :LastEditUin, :UpdateTime, :Region, :DimensionGroup, :ConditionsConfig, :EventConfig, :ReceiverInfos, :Callback, :ConditionsTemp, :CanSetDefault, :IsUnionRule, :RequestId
        
        def initialize(groupname=nil, projectid=nil, isdefault=nil, viewname=nil, remark=nil, showname=nil, lastedituin=nil, updatetime=nil, region=nil, dimensiongroup=nil, conditionsconfig=nil, eventconfig=nil, receiverinfos=nil, callback=nil, conditionstemp=nil, cansetdefault=nil, isunionrule=nil, requestid=nil)
          @GroupName = groupname
          @ProjectId = projectid
          @IsDefault = isdefault
          @ViewName = viewname
          @Remark = remark
          @ShowName = showname
          @LastEditUin = lastedituin
          @UpdateTime = updatetime
          @Region = region
          @DimensionGroup = dimensiongroup
          @ConditionsConfig = conditionsconfig
          @EventConfig = eventconfig
          @ReceiverInfos = receiverinfos
          @Callback = callback
          @ConditionsTemp = conditionstemp
          @CanSetDefault = cansetdefault
          @IsUnionRule = isunionrule
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @ProjectId = params['ProjectId']
          @IsDefault = params['IsDefault']
          @ViewName = params['ViewName']
          @Remark = params['Remark']
          @ShowName = params['ShowName']
          @LastEditUin = params['LastEditUin']
          @UpdateTime = params['UpdateTime']
          @Region = params['Region']
          @DimensionGroup = params['DimensionGroup']
          unless params['ConditionsConfig'].nil?
            @ConditionsConfig = []
            params['ConditionsConfig'].each do |i|
              describepolicygroupinfocondition_tmp = DescribePolicyGroupInfoCondition.new
              describepolicygroupinfocondition_tmp.deserialize(i)
              @ConditionsConfig << describepolicygroupinfocondition_tmp
            end
          end
          unless params['EventConfig'].nil?
            @EventConfig = []
            params['EventConfig'].each do |i|
              describepolicygroupinfoeventcondition_tmp = DescribePolicyGroupInfoEventCondition.new
              describepolicygroupinfoeventcondition_tmp.deserialize(i)
              @EventConfig << describepolicygroupinfoeventcondition_tmp
            end
          end
          unless params['ReceiverInfos'].nil?
            @ReceiverInfos = []
            params['ReceiverInfos'].each do |i|
              describepolicygroupinforeceiverinfo_tmp = DescribePolicyGroupInfoReceiverInfo.new
              describepolicygroupinforeceiverinfo_tmp.deserialize(i)
              @ReceiverInfos << describepolicygroupinforeceiverinfo_tmp
            end
          end
          unless params['Callback'].nil?
            @Callback = DescribePolicyGroupInfoCallback.new
            @Callback.deserialize(params['Callback'])
          end
          unless params['ConditionsTemp'].nil?
            @ConditionsTemp = DescribePolicyGroupInfoConditionTpl.new
            @ConditionsTemp.deserialize(params['ConditionsTemp'])
          end
          @CanSetDefault = params['CanSetDefault']
          @IsUnionRule = params['IsUnionRule']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyGroupList.Group
      class DescribePolicyGroupListGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 策略组id
        # @type GroupId: Integer
        # @param GroupName: 策略组名称
        # @type GroupName: String
        # @param IsOpen: 是否开启
        # @type IsOpen: Boolean
        # @param ViewName: 策略视图名称
        # @type ViewName: String
        # @param LastEditUin: 最近编辑的用户uin
        # @type LastEditUin: String
        # @param UpdateTime: 最后修改时间
        # @type UpdateTime: Integer
        # @param InsertTime: 创建时间
        # @type InsertTime: Integer
        # @param UseSum: 策略组绑定的实例数
        # @type UseSum: Integer
        # @param NoShieldedSum: 策略组绑定的未屏蔽实例数
        # @type NoShieldedSum: Integer
        # @param IsDefault: 是否为默认策略，0表示非默认策略，1表示默认策略
        # @type IsDefault: Integer
        # @param CanSetDefault: 是否可以设置成默认策略
        # @type CanSetDefault: Boolean
        # @param ParentGroupId: 父策略组id
        # @type ParentGroupId: Integer
        # @param Remark: 策略组备注
        # @type Remark: String
        # @param ProjectId: 策略组所属项目id
        # @type ProjectId: Integer
        # @param Conditions: 阈值规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array
        # @param EventConditions: 产品事件规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventConditions: Array
        # @param ReceiverInfos: 用户接收人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverInfos: Array
        # @param ConditionsTemp: 模板策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionsTemp: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyGroupInfoConditionTpl`
        # @param InstanceGroup: 策略组绑定的实例组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroup: :class:`Tencentcloud::Monitor.v20180724.models.DescribePolicyGroupListGroupInstanceGroup`
        # @param IsUnionRule: 且或规则标识, 0表示或规则(任意一条规则满足阈值条件就告警), 1表示且规则(所有规则都满足阈值条件才告警)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnionRule: Integer

        attr_accessor :GroupId, :GroupName, :IsOpen, :ViewName, :LastEditUin, :UpdateTime, :InsertTime, :UseSum, :NoShieldedSum, :IsDefault, :CanSetDefault, :ParentGroupId, :Remark, :ProjectId, :Conditions, :EventConditions, :ReceiverInfos, :ConditionsTemp, :InstanceGroup, :IsUnionRule
        
        def initialize(groupid=nil, groupname=nil, isopen=nil, viewname=nil, lastedituin=nil, updatetime=nil, inserttime=nil, usesum=nil, noshieldedsum=nil, isdefault=nil, cansetdefault=nil, parentgroupid=nil, remark=nil, projectid=nil, conditions=nil, eventconditions=nil, receiverinfos=nil, conditionstemp=nil, instancegroup=nil, isunionrule=nil)
          @GroupId = groupid
          @GroupName = groupname
          @IsOpen = isopen
          @ViewName = viewname
          @LastEditUin = lastedituin
          @UpdateTime = updatetime
          @InsertTime = inserttime
          @UseSum = usesum
          @NoShieldedSum = noshieldedsum
          @IsDefault = isdefault
          @CanSetDefault = cansetdefault
          @ParentGroupId = parentgroupid
          @Remark = remark
          @ProjectId = projectid
          @Conditions = conditions
          @EventConditions = eventconditions
          @ReceiverInfos = receiverinfos
          @ConditionsTemp = conditionstemp
          @InstanceGroup = instancegroup
          @IsUnionRule = isunionrule
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @IsOpen = params['IsOpen']
          @ViewName = params['ViewName']
          @LastEditUin = params['LastEditUin']
          @UpdateTime = params['UpdateTime']
          @InsertTime = params['InsertTime']
          @UseSum = params['UseSum']
          @NoShieldedSum = params['NoShieldedSum']
          @IsDefault = params['IsDefault']
          @CanSetDefault = params['CanSetDefault']
          @ParentGroupId = params['ParentGroupId']
          @Remark = params['Remark']
          @ProjectId = params['ProjectId']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              describepolicygroupinfocondition_tmp = DescribePolicyGroupInfoCondition.new
              describepolicygroupinfocondition_tmp.deserialize(i)
              @Conditions << describepolicygroupinfocondition_tmp
            end
          end
          unless params['EventConditions'].nil?
            @EventConditions = []
            params['EventConditions'].each do |i|
              describepolicygroupinfoeventcondition_tmp = DescribePolicyGroupInfoEventCondition.new
              describepolicygroupinfoeventcondition_tmp.deserialize(i)
              @EventConditions << describepolicygroupinfoeventcondition_tmp
            end
          end
          unless params['ReceiverInfos'].nil?
            @ReceiverInfos = []
            params['ReceiverInfos'].each do |i|
              describepolicygroupinforeceiverinfo_tmp = DescribePolicyGroupInfoReceiverInfo.new
              describepolicygroupinforeceiverinfo_tmp.deserialize(i)
              @ReceiverInfos << describepolicygroupinforeceiverinfo_tmp
            end
          end
          unless params['ConditionsTemp'].nil?
            @ConditionsTemp = DescribePolicyGroupInfoConditionTpl.new
            @ConditionsTemp.deserialize(params['ConditionsTemp'])
          end
          unless params['InstanceGroup'].nil?
            @InstanceGroup = DescribePolicyGroupListGroupInstanceGroup.new
            @InstanceGroup.deserialize(params['InstanceGroup'])
          end
          @IsUnionRule = params['IsUnionRule']
        end
      end

      # DescribePolicyGroupList接口策略组绑定的实例分组信息
      class DescribePolicyGroupListGroupInstanceGroup < TencentCloud::Common::AbstractModel
        # @param InstanceGroupId: 实例分组名称id
        # @type InstanceGroupId: Integer
        # @param ViewName: 策略类型视图名称
        # @type ViewName: String
        # @param LastEditUin: 最近编辑的用户uin
        # @type LastEditUin: String
        # @param GroupName: 实例分组名称
        # @type GroupName: String
        # @param InstanceSum: 实例数量
        # @type InstanceSum: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param InsertTime: 创建时间
        # @type InsertTime: Integer

        attr_accessor :InstanceGroupId, :ViewName, :LastEditUin, :GroupName, :InstanceSum, :UpdateTime, :InsertTime
        
        def initialize(instancegroupid=nil, viewname=nil, lastedituin=nil, groupname=nil, instancesum=nil, updatetime=nil, inserttime=nil)
          @InstanceGroupId = instancegroupid
          @ViewName = viewname
          @LastEditUin = lastedituin
          @GroupName = groupname
          @InstanceSum = instancesum
          @UpdateTime = updatetime
          @InsertTime = inserttime
        end

        def deserialize(params)
          @InstanceGroupId = params['InstanceGroupId']
          @ViewName = params['ViewName']
          @LastEditUin = params['LastEditUin']
          @GroupName = params['GroupName']
          @InstanceSum = params['InstanceSum']
          @UpdateTime = params['UpdateTime']
          @InsertTime = params['InsertTime']
        end
      end

      # DescribePolicyGroupList请求参数结构体
      class DescribePolicyGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param Limit: 分页参数，每页返回的数量，取值1~100
        # @type Limit: Integer
        # @param Offset: 分页参数，页偏移量，从0开始计数
        # @type Offset: Integer
        # @param Like: 按策略名搜索
        # @type Like: String
        # @param InstanceGroupId: 实例分组id
        # @type InstanceGroupId: Integer
        # @param UpdateTimeOrder: 按更新时间排序, asc 或者 desc
        # @type UpdateTimeOrder: String
        # @param ProjectIds: 项目id列表
        # @type ProjectIds: Array
        # @param ViewNames: 告警策略类型列表
        # @type ViewNames: Array
        # @param FilterUnuseReceiver: 是否过滤无接收人策略组, 1表示过滤, 0表示不过滤
        # @type FilterUnuseReceiver: Integer
        # @param Receivers: 过滤条件, 接收组列表
        # @type Receivers: Array
        # @param ReceiverUserList: 过滤条件, 接收人列表
        # @type ReceiverUserList: Array
        # @param Dimensions: 维度组合字段(json字符串), 例如[[{"name":"unInstanceId","value":"ins-6e4b2aaa"}]]
        # @type Dimensions: String
        # @param ConditionTempGroupId: 模板策略组id, 多个id用逗号分隔
        # @type ConditionTempGroupId: String
        # @param ReceiverType: 过滤条件, 接收人或者接收组, user表示接收人, group表示接收组
        # @type ReceiverType: String
        # @param IsOpen: 过滤条件，告警策略是否已启动或停止
        # @type IsOpen: Boolean

        attr_accessor :Module, :Limit, :Offset, :Like, :InstanceGroupId, :UpdateTimeOrder, :ProjectIds, :ViewNames, :FilterUnuseReceiver, :Receivers, :ReceiverUserList, :Dimensions, :ConditionTempGroupId, :ReceiverType, :IsOpen
        
        def initialize(_module=nil, limit=nil, offset=nil, like=nil, instancegroupid=nil, updatetimeorder=nil, projectids=nil, viewnames=nil, filterunusereceiver=nil, receivers=nil, receiveruserlist=nil, dimensions=nil, conditiontempgroupid=nil, receivertype=nil, isopen=nil)
          @Module = _module
          @Limit = limit
          @Offset = offset
          @Like = like
          @InstanceGroupId = instancegroupid
          @UpdateTimeOrder = updatetimeorder
          @ProjectIds = projectids
          @ViewNames = viewnames
          @FilterUnuseReceiver = filterunusereceiver
          @Receivers = receivers
          @ReceiverUserList = receiveruserlist
          @Dimensions = dimensions
          @ConditionTempGroupId = conditiontempgroupid
          @ReceiverType = receivertype
          @IsOpen = isopen
        end

        def deserialize(params)
          @Module = params['Module']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Like = params['Like']
          @InstanceGroupId = params['InstanceGroupId']
          @UpdateTimeOrder = params['UpdateTimeOrder']
          @ProjectIds = params['ProjectIds']
          @ViewNames = params['ViewNames']
          @FilterUnuseReceiver = params['FilterUnuseReceiver']
          @Receivers = params['Receivers']
          @ReceiverUserList = params['ReceiverUserList']
          @Dimensions = params['Dimensions']
          @ConditionTempGroupId = params['ConditionTempGroupId']
          @ReceiverType = params['ReceiverType']
          @IsOpen = params['IsOpen']
        end
      end

      # DescribePolicyGroupList返回参数结构体
      class DescribePolicyGroupListResponse < TencentCloud::Common::AbstractModel
        # @param GroupList: 策略组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array
        # @param Total: 策略组总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupList, :Total, :RequestId
        
        def initialize(grouplist=nil, total=nil, requestid=nil)
          @GroupList = grouplist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              describepolicygrouplistgroup_tmp = DescribePolicyGroupListGroup.new
              describepolicygrouplistgroup_tmp.deserialize(i)
              @GroupList << describepolicygrouplistgroup_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductEventList的入参Dimensions
      class DescribeProductEventListDimensions < TencentCloud::Common::AbstractModel
        # @param Name: 维度名
        # @type Name: String
        # @param Value: 维度值
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

      # DescribeProductEventList返回的Events
      class DescribeProductEventListEvents < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: Integer
        # @param EventCName: 事件中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCName: String
        # @param EventEName: 事件英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventEName: String
        # @param EventName: 事件简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventName: String
        # @param ProductCName: 产品中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCName: String
        # @param ProductEName: 产品英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductEName: String
        # @param ProductName: 产品简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SupportAlarm: 是否支持告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportAlarm: Integer
        # @param Type: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Dimensions: 实例对象信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimensions: Array
        # @param AdditionMsg: 实例对象附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdditionMsg: Array
        # @param IsAlarmConfig: 是否配置告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAlarmConfig: Integer
        # @param GroupInfo: 策略信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupInfo: Array
        # @param ViewName: 显示名称ViewName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewName: String

        attr_accessor :EventId, :EventCName, :EventEName, :EventName, :ProductCName, :ProductEName, :ProductName, :InstanceId, :InstanceName, :ProjectId, :Region, :Status, :SupportAlarm, :Type, :StartTime, :UpdateTime, :Dimensions, :AdditionMsg, :IsAlarmConfig, :GroupInfo, :ViewName
        
        def initialize(eventid=nil, eventcname=nil, eventename=nil, eventname=nil, productcname=nil, productename=nil, productname=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, status=nil, supportalarm=nil, type=nil, starttime=nil, updatetime=nil, dimensions=nil, additionmsg=nil, isalarmconfig=nil, groupinfo=nil, viewname=nil)
          @EventId = eventid
          @EventCName = eventcname
          @EventEName = eventename
          @EventName = eventname
          @ProductCName = productcname
          @ProductEName = productename
          @ProductName = productname
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Status = status
          @SupportAlarm = supportalarm
          @Type = type
          @StartTime = starttime
          @UpdateTime = updatetime
          @Dimensions = dimensions
          @AdditionMsg = additionmsg
          @IsAlarmConfig = isalarmconfig
          @GroupInfo = groupinfo
          @ViewName = viewname
        end

        def deserialize(params)
          @EventId = params['EventId']
          @EventCName = params['EventCName']
          @EventEName = params['EventEName']
          @EventName = params['EventName']
          @ProductCName = params['ProductCName']
          @ProductEName = params['ProductEName']
          @ProductName = params['ProductName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Status = params['Status']
          @SupportAlarm = params['SupportAlarm']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @UpdateTime = params['UpdateTime']
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              describeproducteventlisteventsdimensions_tmp = DescribeProductEventListEventsDimensions.new
              describeproducteventlisteventsdimensions_tmp.deserialize(i)
              @Dimensions << describeproducteventlisteventsdimensions_tmp
            end
          end
          unless params['AdditionMsg'].nil?
            @AdditionMsg = []
            params['AdditionMsg'].each do |i|
              describeproducteventlisteventsdimensions_tmp = DescribeProductEventListEventsDimensions.new
              describeproducteventlisteventsdimensions_tmp.deserialize(i)
              @AdditionMsg << describeproducteventlisteventsdimensions_tmp
            end
          end
          @IsAlarmConfig = params['IsAlarmConfig']
          unless params['GroupInfo'].nil?
            @GroupInfo = []
            params['GroupInfo'].each do |i|
              describeproducteventlisteventsgroupinfo_tmp = DescribeProductEventListEventsGroupInfo.new
              describeproducteventlisteventsgroupinfo_tmp.deserialize(i)
              @GroupInfo << describeproducteventlisteventsgroupinfo_tmp
            end
          end
          @ViewName = params['ViewName']
        end
      end

      # DescribeProductEventList返回的Events的Dimensions
      class DescribeProductEventListEventsDimensions < TencentCloud::Common::AbstractModel
        # @param Key: 维度名（英文）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Name: 维度名（中文）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 维度值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Name, :Value
        
        def initialize(key=nil, name=nil, value=nil)
          @Key = key
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # DescribeProductEventList返回的Events里的GroupInfo
      class DescribeProductEventListEventsGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param GroupName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String

        attr_accessor :GroupId, :GroupName
        
        def initialize(groupid=nil, groupname=nil)
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # DescribeProductEventList返回的OverView对象
      class DescribeProductEventListOverView < TencentCloud::Common::AbstractModel
        # @param StatusChangeAmount: 状态变更的事件数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusChangeAmount: Integer
        # @param UnConfigAlarmAmount: 告警状态未配置的事件数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnConfigAlarmAmount: Integer
        # @param UnNormalEventAmount: 异常事件数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnNormalEventAmount: Integer
        # @param UnRecoverAmount: 未恢复的事件数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnRecoverAmount: Integer

        attr_accessor :StatusChangeAmount, :UnConfigAlarmAmount, :UnNormalEventAmount, :UnRecoverAmount
        
        def initialize(statuschangeamount=nil, unconfigalarmamount=nil, unnormaleventamount=nil, unrecoveramount=nil)
          @StatusChangeAmount = statuschangeamount
          @UnConfigAlarmAmount = unconfigalarmamount
          @UnNormalEventAmount = unnormaleventamount
          @UnRecoverAmount = unrecoveramount
        end

        def deserialize(params)
          @StatusChangeAmount = params['StatusChangeAmount']
          @UnConfigAlarmAmount = params['UnConfigAlarmAmount']
          @UnNormalEventAmount = params['UnNormalEventAmount']
          @UnRecoverAmount = params['UnRecoverAmount']
        end
      end

      # DescribeProductEventList请求参数结构体
      class DescribeProductEventListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 接口模块名，固定值"monitor"
        # @type Module: String
        # @param ProductName: 产品类型过滤，比如"cvm"表示云服务器
        # @type ProductName: Array
        # @param EventName: 事件名称过滤，比如"guest_reboot"表示机器重启
        # @type EventName: Array
        # @param InstanceId: 影响对象，比如"ins-19708ino"
        # @type InstanceId: Array
        # @param Dimensions: 维度过滤，比如外网IP:10.0.0.1
        # @type Dimensions: Array
        # @param RegionList: 产品事件地域过滤参数，比如gz，各地域缩写可参见[地域列表](https://cloud.tencent.com/document/product/248/50863)
        # @type RegionList: Array
        # @param Type: 事件类型过滤，取值范围["status_change","abnormal"]，分别表示状态变更、异常事件
        # @type Type: Array
        # @param Status: 事件状态过滤，取值范围["recover","alarm","-"]，分别表示已恢复、未恢复、无状态
        # @type Status: Array
        # @param Project: 项目ID过滤
        # @type Project: Array
        # @param IsAlarmConfig: 告警状态配置过滤，1表示已配置，0表示未配置
        # @type IsAlarmConfig: Integer
        # @param TimeOrder: 按更新时间排序，ASC表示升序，DESC表示降序，默认DESC
        # @type TimeOrder: String
        # @param StartTime: 起始时间，默认一天前的时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间，默认当前时间戳
        # @type EndTime: Integer
        # @param Offset: 页偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 每页返回的数量，默认20
        # @type Limit: Integer

        attr_accessor :Module, :ProductName, :EventName, :InstanceId, :Dimensions, :RegionList, :Type, :Status, :Project, :IsAlarmConfig, :TimeOrder, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(_module=nil, productname=nil, eventname=nil, instanceid=nil, dimensions=nil, regionlist=nil, type=nil, status=nil, project=nil, isalarmconfig=nil, timeorder=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @Module = _module
          @ProductName = productname
          @EventName = eventname
          @InstanceId = instanceid
          @Dimensions = dimensions
          @RegionList = regionlist
          @Type = type
          @Status = status
          @Project = project
          @IsAlarmConfig = isalarmconfig
          @TimeOrder = timeorder
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Module = params['Module']
          @ProductName = params['ProductName']
          @EventName = params['EventName']
          @InstanceId = params['InstanceId']
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              describeproducteventlistdimensions_tmp = DescribeProductEventListDimensions.new
              describeproducteventlistdimensions_tmp.deserialize(i)
              @Dimensions << describeproducteventlistdimensions_tmp
            end
          end
          @RegionList = params['RegionList']
          @Type = params['Type']
          @Status = params['Status']
          @Project = params['Project']
          @IsAlarmConfig = params['IsAlarmConfig']
          @TimeOrder = params['TimeOrder']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeProductEventList返回参数结构体
      class DescribeProductEventListResponse < TencentCloud::Common::AbstractModel
        # @param Events: 事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param OverView: 事件统计
        # @type OverView: :class:`Tencentcloud::Monitor.v20180724.models.DescribeProductEventListOverView`
        # @param Total: 事件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :OverView, :Total, :RequestId
        
        def initialize(events=nil, overview=nil, total=nil, requestid=nil)
          @Events = events
          @OverView = overview
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              describeproducteventlistevents_tmp = DescribeProductEventListEvents.new
              describeproducteventlistevents_tmp.deserialize(i)
              @Events << describeproducteventlistevents_tmp
            end
          end
          unless params['OverView'].nil?
            @OverView = DescribeProductEventListOverView.new
            @OverView.deserialize(params['OverView'])
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductList请求参数结构体
      class DescribeProductListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定传值monitor
        # @type Module: String
        # @param Order: 排序方式：DESC/ASC（区分大小写），默认值DESC
        # @type Order: String
        # @param Offset: 分页查询的偏移量，默认值0
        # @type Offset: Integer
        # @param Limit: 分页查询的每页数据量，默认值20
        # @type Limit: Integer

        attr_accessor :Module, :Order, :Offset, :Limit
        
        def initialize(_module=nil, order=nil, offset=nil, limit=nil)
          @Module = _module
          @Order = order
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Module = params['Module']
          @Order = params['Order']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeProductList返回参数结构体
      class DescribeProductListResponse < TencentCloud::Common::AbstractModel
        # @param ProductList: 产品信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductList: Array
        # @param TotalCount: 产品总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductList, :TotalCount, :RequestId
        
        def initialize(productlist=nil, totalcount=nil, requestid=nil)
          @ProductList = productlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProductList'].nil?
            @ProductList = []
            params['ProductList'].each do |i|
              productsimple_tmp = ProductSimple.new
              productsimple_tmp.deserialize(i)
              @ProductList << productsimple_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceDiscovery请求参数结构体
      class DescribeServiceDiscoveryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param KubeClusterId: <li>类型是 TKE，为对应的腾讯云容器服务集群 ID</li>
        # @type KubeClusterId: String
        # @param KubeType: 用户 Kubernetes 集群类型：
        # <li> 1 = 容器服务集群(TKE) </li>
        # @type KubeType: Integer

        attr_accessor :InstanceId, :KubeClusterId, :KubeType
        
        def initialize(instanceid=nil, kubeclusterid=nil, kubetype=nil)
          @InstanceId = instanceid
          @KubeClusterId = kubeclusterid
          @KubeType = kubetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KubeClusterId = params['KubeClusterId']
          @KubeType = params['KubeType']
        end
      end

      # DescribeServiceDiscovery返回参数结构体
      class DescribeServiceDiscoveryResponse < TencentCloud::Common::AbstractModel
        # @param ServiceDiscoverySet: 返回服务发现列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDiscoverySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceDiscoverySet, :RequestId
        
        def initialize(servicediscoveryset=nil, requestid=nil)
          @ServiceDiscoverySet = servicediscoveryset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceDiscoverySet'].nil?
            @ServiceDiscoverySet = []
            params['ServiceDiscoverySet'].each do |i|
              servicediscoveryitem_tmp = ServiceDiscoveryItem.new
              servicediscoveryitem_tmp.deserialize(i)
              @ServiceDiscoverySet << servicediscoveryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStatisticData请求参数结构体
      class DescribeStatisticDataRequest < TencentCloud::Common::AbstractModel
        # @param Module: 所属模块，固定值，为monitor
        # @type Module: String
        # @param Namespace: 命名空间，目前只支持QCE/TKE
        # @type Namespace: String
        # @param MetricNames: 指标名列表
        # @type MetricNames: Array
        # @param Conditions: 维度条件，操作符支持=、in
        # @type Conditions: Array
        # @param Period: 统计粒度。默认取值为300，单位为s
        # @type Period: Integer
        # @param StartTime: 起始时间，默认为当前时间，如2020-12-08T19:51:23+08:00
        # @type StartTime: String
        # @param EndTime: 结束时间，默认为当前时间，如2020-12-08T19:51:23+08:00
        # @type EndTime: String
        # @param GroupBys: 按指定维度groupBy
        # @type GroupBys: Array

        attr_accessor :Module, :Namespace, :MetricNames, :Conditions, :Period, :StartTime, :EndTime, :GroupBys
        
        def initialize(_module=nil, namespace=nil, metricnames=nil, conditions=nil, period=nil, starttime=nil, endtime=nil, groupbys=nil)
          @Module = _module
          @Namespace = namespace
          @MetricNames = metricnames
          @Conditions = conditions
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @GroupBys = groupbys
        end

        def deserialize(params)
          @Module = params['Module']
          @Namespace = params['Namespace']
          @MetricNames = params['MetricNames']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              midquerycondition_tmp = MidQueryCondition.new
              midquerycondition_tmp.deserialize(i)
              @Conditions << midquerycondition_tmp
            end
          end
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @GroupBys = params['GroupBys']
        end
      end

      # DescribeStatisticData返回参数结构体
      class DescribeStatisticDataResponse < TencentCloud::Common::AbstractModel
        # @param Period: 统计周期
        # @type Period: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Data: 监控数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Period, :StartTime, :EndTime, :Data, :RequestId
        
        def initialize(period=nil, starttime=nil, endtime=nil, data=nil, requestid=nil)
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              metricdata_tmp = MetricData.new
              metricdata_tmp.deserialize(i)
              @Data << metricdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例对象的维度组合
      class Dimension < TencentCloud::Common::AbstractModel
        # @param Name: 实例维度名称
        # @type Name: String
        # @param Value: 实例维度值
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

      # 维度信息
      class DimensionsDesc < TencentCloud::Common::AbstractModel
        # @param Dimensions: 维度名数组
        # @type Dimensions: Array

        attr_accessor :Dimensions
        
        def initialize(dimensions=nil)
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Dimensions = params['Dimensions']
        end
      end

      # GetMonitorData请求参数结构体
      class GetMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间，如QCE/CVM。各个云产品的详细命名空间说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档
        # @type Namespace: String
        # @param MetricName: 指标名称，如CPUUsage，仅支持单指标拉取。各个云产品的详细指标说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的指标英文名即为MetricName
        # @type MetricName: String
        # @param Instances: 实例对象的维度组合，格式为key-value键值对形式的集合。如[{"Name":"InstanceId","Value":"ins-j0hk02zo"}]。单请求最多支持批量拉取10个实例的监控数据。各个云产品的维度请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的维度列即为维度组合的key,value为key对应的值
        # @type Instances: Array
        # @param Period: 监控统计周期，如60。默认为取值为300，单位为s。每个指标支持的统计周期不一定相同，各个云产品支持的统计周期请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的统计周期列即为支持的统计周期。单请求的数据点数限制为1440个。
        # @type Period: Integer
        # @param StartTime: 起始时间，如2018-09-22T19:51:23+08:00
        # @type StartTime: String
        # @param EndTime: 结束时间，如2018-09-22T20:51:23+08:00，默认为当前时间。 EndTime不能小于StartTime
        # @type EndTime: String

        attr_accessor :Namespace, :MetricName, :Instances, :Period, :StartTime, :EndTime
        
        def initialize(namespace=nil, metricname=nil, instances=nil, period=nil, starttime=nil, endtime=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Instances = instances
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @MetricName = params['MetricName']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @Instances << instance_tmp
            end
          end
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # GetMonitorData返回参数结构体
      class GetMonitorDataResponse < TencentCloud::Common::AbstractModel
        # @param Period: 统计周期
        # @type Period: Integer
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param DataPoints: 数据点数组
        # @type DataPoints: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Period, :MetricName, :DataPoints, :StartTime, :EndTime, :RequestId
        
        def initialize(period=nil, metricname=nil, datapoints=nil, starttime=nil, endtime=nil, requestid=nil)
          @Period = period
          @MetricName = metricname
          @DataPoints = datapoints
          @StartTime = starttime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Period = params['Period']
          @MetricName = params['MetricName']
          unless params['DataPoints'].nil?
            @DataPoints = []
            params['DataPoints'].each do |i|
              datapoint_tmp = DataPoint.new
              datapoint_tmp.deserialize(i)
              @DataPoints << datapoint_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # 实例维度组合数组
      class Instance < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例的维度组合
        # @type Dimensions: Array

        attr_accessor :Dimensions
        
        def initialize(dimensions=nil)
          @Dimensions = dimensions
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
        end
      end

      # DescribeBasicAlarmList返回的Alarms里的InstanceGroup
      class InstanceGroup < TencentCloud::Common::AbstractModel
        # @param InstanceGroupId: 实例组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupId: Integer
        # @param InstanceGroupName: 实例组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupName: String

        attr_accessor :InstanceGroupId, :InstanceGroupName
        
        def initialize(instancegroupid=nil, instancegroupname=nil)
          @InstanceGroupId = instancegroupid
          @InstanceGroupName = instancegroupname
        end

        def deserialize(params)
          @InstanceGroupId = params['InstanceGroupId']
          @InstanceGroupName = params['InstanceGroupName']
        end
      end

      # 告警对象所属实例组
      class InstanceGroups < TencentCloud::Common::AbstractModel
        # @param Id: 实例组 Id
        # @type Id: Integer
        # @param Name: 实例组名称
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

      # 指标，可用于设置告警、查询数据
      class Metric < TencentCloud::Common::AbstractModel
        # @param Namespace: 告警策略类型
        # @type Namespace: String
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Description: 指标展示名
        # @type Description: String
        # @param Min: 最小值
        # @type Min: Float
        # @param Max: 最大值
        # @type Max: Float
        # @param Dimensions: 维度列表
        # @type Dimensions: Array
        # @param Unit: 单位
        # @type Unit: String
        # @param MetricConfig: 指标配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricConfig: :class:`Tencentcloud::Monitor.v20180724.models.MetricConfig`

        attr_accessor :Namespace, :MetricName, :Description, :Min, :Max, :Dimensions, :Unit, :MetricConfig
        
        def initialize(namespace=nil, metricname=nil, description=nil, min=nil, max=nil, dimensions=nil, unit=nil, metricconfig=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Description = description
          @Min = min
          @Max = max
          @Dimensions = dimensions
          @Unit = unit
          @MetricConfig = metricconfig
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @MetricName = params['MetricName']
          @Description = params['Description']
          @Min = params['Min']
          @Max = params['Max']
          @Dimensions = params['Dimensions']
          @Unit = params['Unit']
          unless params['MetricConfig'].nil?
            @MetricConfig = MetricConfig.new
            @MetricConfig.deserialize(params['MetricConfig'])
          end
        end
      end

      # 指标配置
      class MetricConfig < TencentCloud::Common::AbstractModel
        # @param Operator: 允许使用的运算符
        # @type Operator: Array
        # @param Period: 允许配置的数据周期，以秒为单位
        # @type Period: Array
        # @param ContinuePeriod: 允许配置的持续周期个数
        # @type ContinuePeriod: Array

        attr_accessor :Operator, :Period, :ContinuePeriod
        
        def initialize(operator=nil, period=nil, continueperiod=nil)
          @Operator = operator
          @Period = period
          @ContinuePeriod = continueperiod
        end

        def deserialize(params)
          @Operator = params['Operator']
          @Period = params['Period']
          @ContinuePeriod = params['ContinuePeriod']
        end
      end

      # DescribeMetricData接口出参
      class MetricData < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Points: 监控数据点
        # @type Points: Array

        attr_accessor :MetricName, :Points
        
        def initialize(metricname=nil, points=nil)
          @MetricName = metricname
          @Points = points
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              metricdatapoint_tmp = MetricDataPoint.new
              metricdatapoint_tmp.deserialize(i)
              @Points << metricdatapoint_tmp
            end
          end
        end
      end

      # DescribeMetricData出参
      class MetricDataPoint < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例对象维度组合
        # @type Dimensions: Array
        # @param Values: 数据点列表
        # @type Values: Array

        attr_accessor :Dimensions, :Values
        
        def initialize(dimensions=nil, values=nil)
          @Dimensions = dimensions
          @Values = values
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Values << point_tmp
            end
          end
        end
      end

      # 指标名称和值的封装
      class MetricDatum < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param Value: 指标的值
        # @type Value: Integer

        attr_accessor :MetricName, :Value
        
        def initialize(metricname=nil, value=nil)
          @MetricName = metricname
          @Value = value
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Value = params['Value']
        end
      end

      # 指标数据的解释
      class MetricObjectMeaning < TencentCloud::Common::AbstractModel
        # @param En: 指标英文解释
        # @type En: String
        # @param Zh: 指标中文解释
        # @type Zh: String

        attr_accessor :En, :Zh
        
        def initialize(en=nil, zh=nil)
          @En = en
          @Zh = zh
        end

        def deserialize(params)
          @En = params['En']
          @Zh = params['Zh']
        end
      end

      # 对业务指标的单位及支持统计周期的描述
      class MetricSet < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间，每个云产品会有一个命名空间
        # @type Namespace: String
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param Unit: 指标使用的单位
        # @type Unit: String
        # @param UnitCname: 指标使用的单位
        # @type UnitCname: String
        # @param Period: 指标支持的统计周期，单位是秒，如60、300
        # @type Period: Array
        # @param Periods: 统计周期内指标方式
        # @type Periods: Array
        # @param Meaning: 统计指标含义解释
        # @type Meaning: :class:`Tencentcloud::Monitor.v20180724.models.MetricObjectMeaning`
        # @param Dimensions: 维度描述信息
        # @type Dimensions: Array

        attr_accessor :Namespace, :MetricName, :Unit, :UnitCname, :Period, :Periods, :Meaning, :Dimensions
        
        def initialize(namespace=nil, metricname=nil, unit=nil, unitcname=nil, period=nil, periods=nil, meaning=nil, dimensions=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Unit = unit
          @UnitCname = unitcname
          @Period = period
          @Periods = periods
          @Meaning = meaning
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @MetricName = params['MetricName']
          @Unit = params['Unit']
          @UnitCname = params['UnitCname']
          @Period = params['Period']
          unless params['Periods'].nil?
            @Periods = []
            params['Periods'].each do |i|
              periodsst_tmp = PeriodsSt.new
              periodsst_tmp.deserialize(i)
              @Periods << periodsst_tmp
            end
          end
          unless params['Meaning'].nil?
            @Meaning = MetricObjectMeaning.new
            @Meaning.deserialize(params['Meaning'])
          end
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimensionsdesc_tmp = DimensionsDesc.new
              dimensionsdesc_tmp.deserialize(i)
              @Dimensions << dimensionsdesc_tmp
            end
          end
        end
      end

      # DescribeMidDimensionValueList的查询条件
      class MidQueryCondition < TencentCloud::Common::AbstractModel
        # @param Key: 维度
        # @type Key: String
        # @param Operator: 操作符，支持等于(eq)、不等于(ne)，以及in
        # @type Operator: String
        # @param Value: 维度值，当Op是eq、ne时，只使用第一个元素
        # @type Value: Array

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

      # ModifyAlarmNotice请求参数结构体
      class ModifyAlarmNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param Name: 告警通知规则名称 60字符以内
        # @type Name: String
        # @param NoticeType: 通知类型 ALARM=未恢复通知 OK=已恢复通知 ALL=都通知
        # @type NoticeType: String
        # @param NoticeLanguage: 通知语言 zh-CN=中文 en-US=英文
        # @type NoticeLanguage: String
        # @param NoticeId: 告警通知模板 ID
        # @type NoticeId: String
        # @param UserNotices: 用户通知 最多5个
        # @type UserNotices: Array
        # @param URLNotices: 回调通知 最多3个
        # @type URLNotices: Array

        attr_accessor :Module, :Name, :NoticeType, :NoticeLanguage, :NoticeId, :UserNotices, :URLNotices
        
        def initialize(_module=nil, name=nil, noticetype=nil, noticelanguage=nil, noticeid=nil, usernotices=nil, urlnotices=nil)
          @Module = _module
          @Name = name
          @NoticeType = noticetype
          @NoticeLanguage = noticelanguage
          @NoticeId = noticeid
          @UserNotices = usernotices
          @URLNotices = urlnotices
        end

        def deserialize(params)
          @Module = params['Module']
          @Name = params['Name']
          @NoticeType = params['NoticeType']
          @NoticeLanguage = params['NoticeLanguage']
          @NoticeId = params['NoticeId']
          unless params['UserNotices'].nil?
            @UserNotices = []
            params['UserNotices'].each do |i|
              usernotice_tmp = UserNotice.new
              usernotice_tmp.deserialize(i)
              @UserNotices << usernotice_tmp
            end
          end
          unless params['URLNotices'].nil?
            @URLNotices = []
            params['URLNotices'].each do |i|
              urlnotice_tmp = URLNotice.new
              urlnotice_tmp.deserialize(i)
              @URLNotices << urlnotice_tmp
            end
          end
        end
      end

      # ModifyAlarmNotice返回参数结构体
      class ModifyAlarmNoticeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmPolicyCondition请求参数结构体
      class ModifyAlarmPolicyConditionRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定值 monitor
        # @type Module: String
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String
        # @param ConditionTemplateId: 触发条件模板 Id，可不传
        # @type ConditionTemplateId: Integer
        # @param Condition: 指标触发条件
        # @type Condition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyCondition`
        # @param EventCondition: 事件触发条件
        # @type EventCondition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyEventCondition`

        attr_accessor :Module, :PolicyId, :ConditionTemplateId, :Condition, :EventCondition
        
        def initialize(_module=nil, policyid=nil, conditiontemplateid=nil, condition=nil, eventcondition=nil)
          @Module = _module
          @PolicyId = policyid
          @ConditionTemplateId = conditiontemplateid
          @Condition = condition
          @EventCondition = eventcondition
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @ConditionTemplateId = params['ConditionTemplateId']
          unless params['Condition'].nil?
            @Condition = AlarmPolicyCondition.new
            @Condition.deserialize(params['Condition'])
          end
          unless params['EventCondition'].nil?
            @EventCondition = AlarmPolicyEventCondition.new
            @EventCondition.deserialize(params['EventCondition'])
          end
        end
      end

      # ModifyAlarmPolicyCondition返回参数结构体
      class ModifyAlarmPolicyConditionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmPolicyInfo请求参数结构体
      class ModifyAlarmPolicyInfoRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String
        # @param Key: 要修改的字段 NAME=策略名称 REMARK=策略备注
        # @type Key: String
        # @param Value: 修改后的值
        # @type Value: String

        attr_accessor :Module, :PolicyId, :Key, :Value
        
        def initialize(_module=nil, policyid=nil, key=nil, value=nil)
          @Module = _module
          @PolicyId = policyid
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ModifyAlarmPolicyInfo返回参数结构体
      class ModifyAlarmPolicyInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmPolicyNotice请求参数结构体
      class ModifyAlarmPolicyNoticeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String
        # @param NoticeIds: 告警通知模板 ID 列表
        # @type NoticeIds: Array

        attr_accessor :Module, :PolicyId, :NoticeIds
        
        def initialize(_module=nil, policyid=nil, noticeids=nil)
          @Module = _module
          @PolicyId = policyid
          @NoticeIds = noticeids
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @NoticeIds = params['NoticeIds']
        end
      end

      # ModifyAlarmPolicyNotice返回参数结构体
      class ModifyAlarmPolicyNoticeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmPolicyStatus请求参数结构体
      class ModifyAlarmPolicyStatusRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定值 monitor
        # @type Module: String
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String
        # @param Enable: 启停状态 0=停用 1=启用
        # @type Enable: Integer

        attr_accessor :Module, :PolicyId, :Enable
        
        def initialize(_module=nil, policyid=nil, enable=nil)
          @Module = _module
          @PolicyId = policyid
          @Enable = enable
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @Enable = params['Enable']
        end
      end

      # ModifyAlarmPolicyStatus返回参数结构体
      class ModifyAlarmPolicyStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmPolicyTasks请求参数结构体
      class ModifyAlarmPolicyTasksRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，这里填“monitor”
        # @type Module: String
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String
        # @param TriggerTasks: 告警策略触发任务列表，空数据代表解绑
        # @type TriggerTasks: Array

        attr_accessor :Module, :PolicyId, :TriggerTasks
        
        def initialize(_module=nil, policyid=nil, triggertasks=nil)
          @Module = _module
          @PolicyId = policyid
          @TriggerTasks = triggertasks
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          unless params['TriggerTasks'].nil?
            @TriggerTasks = []
            params['TriggerTasks'].each do |i|
              alarmpolicytriggertask_tmp = AlarmPolicyTriggerTask.new
              alarmpolicytriggertask_tmp.deserialize(i)
              @TriggerTasks << alarmpolicytriggertask_tmp
            end
          end
        end
      end

      # ModifyAlarmPolicyTasks返回参数结构体
      class ModifyAlarmPolicyTasksResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmReceivers请求参数结构体
      class ModifyAlarmReceiversRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 需要修改接收人的策略组Id
        # @type GroupId: Integer
        # @param Module: 必填。固定为“monitor”
        # @type Module: String
        # @param ReceiverInfos: 新接收人信息, 没有填写则删除所有接收人
        # @type ReceiverInfos: Array

        attr_accessor :GroupId, :Module, :ReceiverInfos
        
        def initialize(groupid=nil, _module=nil, receiverinfos=nil)
          @GroupId = groupid
          @Module = _module
          @ReceiverInfos = receiverinfos
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Module = params['Module']
          unless params['ReceiverInfos'].nil?
            @ReceiverInfos = []
            params['ReceiverInfos'].each do |i|
              receiverinfo_tmp = ReceiverInfo.new
              receiverinfo_tmp.deserialize(i)
              @ReceiverInfos << receiverinfo_tmp
            end
          end
        end
      end

      # ModifyAlarmReceivers返回参数结构体
      class ModifyAlarmReceiversResponse < TencentCloud::Common::AbstractModel
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

      # 修改告警策略组传入的指标阈值条件
      class ModifyPolicyGroupCondition < TencentCloud::Common::AbstractModel
        # @param MetricId: 指标id
        # @type MetricId: Integer
        # @param CalcType: 比较类型，1表示大于，2表示大于等于，3表示小于，4表示小于等于，5表示相等，6表示不相等
        # @type CalcType: Integer
        # @param CalcValue: 检测阈值
        # @type CalcValue: String
        # @param CalcPeriod: 检测指标的数据周期
        # @type CalcPeriod: Integer
        # @param ContinuePeriod: 持续周期个数
        # @type ContinuePeriod: Integer
        # @param AlarmNotifyType: 告警发送收敛类型。0连续告警，1指数告警
        # @type AlarmNotifyType: Integer
        # @param AlarmNotifyPeriod: 告警发送周期单位秒。<0 不触发, 0 只触发一次, >0 每隔triggerTime秒触发一次
        # @type AlarmNotifyPeriod: Integer
        # @param RuleId: 规则id，不填表示新增，填写了ruleId表示在已存在的规则基础上进行修改
        # @type RuleId: Integer

        attr_accessor :MetricId, :CalcType, :CalcValue, :CalcPeriod, :ContinuePeriod, :AlarmNotifyType, :AlarmNotifyPeriod, :RuleId
        
        def initialize(metricid=nil, calctype=nil, calcvalue=nil, calcperiod=nil, continueperiod=nil, alarmnotifytype=nil, alarmnotifyperiod=nil, ruleid=nil)
          @MetricId = metricid
          @CalcType = calctype
          @CalcValue = calcvalue
          @CalcPeriod = calcperiod
          @ContinuePeriod = continueperiod
          @AlarmNotifyType = alarmnotifytype
          @AlarmNotifyPeriod = alarmnotifyperiod
          @RuleId = ruleid
        end

        def deserialize(params)
          @MetricId = params['MetricId']
          @CalcType = params['CalcType']
          @CalcValue = params['CalcValue']
          @CalcPeriod = params['CalcPeriod']
          @ContinuePeriod = params['ContinuePeriod']
          @AlarmNotifyType = params['AlarmNotifyType']
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @RuleId = params['RuleId']
        end
      end

      # 修改告警策略组传入的事件告警条件
      class ModifyPolicyGroupEventCondition < TencentCloud::Common::AbstractModel
        # @param EventId: 事件id
        # @type EventId: Integer
        # @param AlarmNotifyType: 告警发送收敛类型。0连续告警，1指数告警
        # @type AlarmNotifyType: Integer
        # @param AlarmNotifyPeriod: 告警发送周期单位秒。<0 不触发, 0 只触发一次, >0 每隔triggerTime秒触发一次
        # @type AlarmNotifyPeriod: Integer
        # @param RuleId: 规则id，不填表示新增，填写了ruleId表示在已存在的规则基础上进行修改
        # @type RuleId: Integer

        attr_accessor :EventId, :AlarmNotifyType, :AlarmNotifyPeriod, :RuleId
        
        def initialize(eventid=nil, alarmnotifytype=nil, alarmnotifyperiod=nil, ruleid=nil)
          @EventId = eventid
          @AlarmNotifyType = alarmnotifytype
          @AlarmNotifyPeriod = alarmnotifyperiod
          @RuleId = ruleid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @AlarmNotifyType = params['AlarmNotifyType']
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @RuleId = params['RuleId']
        end
      end

      # ModifyPolicyGroup请求参数结构体
      class ModifyPolicyGroupRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id
        # @type GroupId: Integer
        # @param ViewName: 告警类型
        # @type ViewName: String
        # @param GroupName: 策略组名称
        # @type GroupName: String
        # @param IsUnionRule: 指标告警条件的且或关系，1表示且告警，所有指标告警条件都达到才告警，0表示或告警，任意指标告警条件达到都告警
        # @type IsUnionRule: Integer
        # @param Conditions: 指标告警条件规则，不填表示删除已有的所有指标告警条件规则
        # @type Conditions: Array
        # @param EventConditions: 事件告警条件，不填表示删除已有的事件告警条件
        # @type EventConditions: Array
        # @param ConditionTempGroupId: 模板策略组id
        # @type ConditionTempGroupId: Integer

        attr_accessor :Module, :GroupId, :ViewName, :GroupName, :IsUnionRule, :Conditions, :EventConditions, :ConditionTempGroupId
        
        def initialize(_module=nil, groupid=nil, viewname=nil, groupname=nil, isunionrule=nil, conditions=nil, eventconditions=nil, conditiontempgroupid=nil)
          @Module = _module
          @GroupId = groupid
          @ViewName = viewname
          @GroupName = groupname
          @IsUnionRule = isunionrule
          @Conditions = conditions
          @EventConditions = eventconditions
          @ConditionTempGroupId = conditiontempgroupid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @ViewName = params['ViewName']
          @GroupName = params['GroupName']
          @IsUnionRule = params['IsUnionRule']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              modifypolicygroupcondition_tmp = ModifyPolicyGroupCondition.new
              modifypolicygroupcondition_tmp.deserialize(i)
              @Conditions << modifypolicygroupcondition_tmp
            end
          end
          unless params['EventConditions'].nil?
            @EventConditions = []
            params['EventConditions'].each do |i|
              modifypolicygroupeventcondition_tmp = ModifyPolicyGroupEventCondition.new
              modifypolicygroupeventcondition_tmp.deserialize(i)
              @EventConditions << modifypolicygroupeventcondition_tmp
            end
          end
          @ConditionTempGroupId = params['ConditionTempGroupId']
        end
      end

      # ModifyPolicyGroup返回参数结构体
      class ModifyPolicyGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 策略组id
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # 策略类型
      class MonitorTypeNamespace < TencentCloud::Common::AbstractModel
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param Namespace: 策略类型值
        # @type Namespace: String

        attr_accessor :MonitorType, :Namespace
        
        def initialize(monitortype=nil, namespace=nil)
          @MonitorType = monitortype
          @Namespace = namespace
        end

        def deserialize(params)
          @MonitorType = params['MonitorType']
          @Namespace = params['Namespace']
        end
      end

      # 周期内的统计方式
      class PeriodsSt < TencentCloud::Common::AbstractModel
        # @param Period: 周期
        # @type Period: String
        # @param StatType: 统计方式
        # @type StatType: Array

        attr_accessor :Period, :StatType
        
        def initialize(period=nil, stattype=nil)
          @Period = period
          @StatType = stattype
        end

        def deserialize(params)
          @Period = params['Period']
          @StatType = params['StatType']
        end
      end

      # 监控数据点
      class Point < TencentCloud::Common::AbstractModel
        # @param Timestamp: 该监控数据点生成的时间点
        # @type Timestamp: Integer
        # @param Value: 监控数据点的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float

        attr_accessor :Timestamp, :Value
        
        def initialize(timestamp=nil, value=nil)
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 云监控支持的产品简要信息
      class ProductSimple < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param ProductName: 产品中文名称
        # @type ProductName: String
        # @param ProductEnName: 产品英文名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductEnName: String

        attr_accessor :Namespace, :ProductName, :ProductEnName
        
        def initialize(namespace=nil, productname=nil, productenname=nil)
          @Namespace = namespace
          @ProductName = productname
          @ProductEnName = productenname
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @ProductName = params['ProductName']
          @ProductEnName = params['ProductEnName']
        end
      end

      # prometheus 报警规则 KV 参数
      class PrometheusRuleKV < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
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

      # prometheus 报警规则集
      class PrometheusRuleSet < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleState: 规则状态码
        # @type RuleState: Integer
        # @param Type: 规则类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Labels: 规则标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Annotations: 规则注释列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotations: Array
        # @param Expr: 规则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expr: String
        # @param Duration: 规则报警持续时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param Receivers: 报警接收组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Receivers: Array
        # @param Health: 规则运行健康状态，取值如下：
        # <li>unknown 未知状态</li>
        # <li>pending 加载中</li>
        # <li>ok 运行正常</li>
        # <li>err 运行错误</li>
        # @type Health: String
        # @param CreatedAt: 规则创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 规则更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :RuleId, :RuleName, :RuleState, :Type, :Labels, :Annotations, :Expr, :Duration, :Receivers, :Health, :CreatedAt, :UpdatedAt
        
        def initialize(ruleid=nil, rulename=nil, rulestate=nil, type=nil, labels=nil, annotations=nil, expr=nil, duration=nil, receivers=nil, health=nil, createdat=nil, updatedat=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @RuleState = rulestate
          @Type = type
          @Labels = labels
          @Annotations = annotations
          @Expr = expr
          @Duration = duration
          @Receivers = receivers
          @Health = health
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleState = params['RuleState']
          @Type = params['Type']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              prometheusrulekv_tmp = PrometheusRuleKV.new
              prometheusrulekv_tmp.deserialize(i)
              @Labels << prometheusrulekv_tmp
            end
          end
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              prometheusrulekv_tmp = PrometheusRuleKV.new
              prometheusrulekv_tmp.deserialize(i)
              @Annotations << prometheusrulekv_tmp
            end
          end
          @Expr = params['Expr']
          @Duration = params['Duration']
          @Receivers = params['Receivers']
          @Health = params['Health']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # PutMonitorData请求参数结构体
      class PutMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param Metrics: 一组指标和数据
        # @type Metrics: Array
        # @param AnnounceIp: 上报时自行指定的 IP
        # @type AnnounceIp: String
        # @param AnnounceTimestamp: 上报时自行指定的时间戳
        # @type AnnounceTimestamp: Integer
        # @param AnnounceInstance: 上报时自行指定的 IP 或 产品实例ID
        # @type AnnounceInstance: String

        attr_accessor :Metrics, :AnnounceIp, :AnnounceTimestamp, :AnnounceInstance
        
        def initialize(metrics=nil, announceip=nil, announcetimestamp=nil, announceinstance=nil)
          @Metrics = metrics
          @AnnounceIp = announceip
          @AnnounceTimestamp = announcetimestamp
          @AnnounceInstance = announceinstance
        end

        def deserialize(params)
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              metricdatum_tmp = MetricDatum.new
              metricdatum_tmp.deserialize(i)
              @Metrics << metricdatum_tmp
            end
          end
          @AnnounceIp = params['AnnounceIp']
          @AnnounceTimestamp = params['AnnounceTimestamp']
          @AnnounceInstance = params['AnnounceInstance']
        end
      end

      # PutMonitorData返回参数结构体
      class PutMonitorDataResponse < TencentCloud::Common::AbstractModel
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

      # 接收人信息
      class ReceiverInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 告警时间段开始时间。范围[0,86400)，作为unix时间戳转成北京时间后去掉日期，例如7200表示"10:0:0"
        # @type StartTime: Integer
        # @param EndTime: 告警时间段结束时间。含义同StartTime
        # @type EndTime: Integer
        # @param NotifyWay: 告警通知方式。可选 "SMS","SITE","EMAIL","CALL","WECHAT"
        # @type NotifyWay: Array
        # @param ReceiverType: 接收人类型。“group” 或 “user”
        # @type ReceiverType: String
        # @param Id: ReceiverId
        # @type Id: Integer
        # @param SendFor: 电话告警通知时机。可选"OCCUR"(告警时通知),"RECOVER"(恢复时通知)
        # @type SendFor: Array
        # @param UidList: 电话告警接收者uid
        # @type UidList: Array
        # @param RoundNumber: 电话告警轮数
        # @type RoundNumber: Integer
        # @param PersonInterval: 电话告警对个人间隔（秒）
        # @type PersonInterval: Integer
        # @param RoundInterval: 电话告警每轮间隔（秒）
        # @type RoundInterval: Integer
        # @param RecoverNotify: 恢复通知方式。可选"SMS"
        # @type RecoverNotify: Array
        # @param NeedSendNotice: 是否需要电话告警触达提示。0不需要，1需要
        # @type NeedSendNotice: Integer
        # @param ReceiverGroupList: 接收组列表。通过平台接口查询到的接收组id列表
        # @type ReceiverGroupList: Array
        # @param ReceiverUserList: 接收人列表。通过平台接口查询到的接收人id列表
        # @type ReceiverUserList: Array
        # @param ReceiveLanguage: 告警接收语言，枚举值（zh-CN，en-US）
        # @type ReceiveLanguage: String

        attr_accessor :StartTime, :EndTime, :NotifyWay, :ReceiverType, :Id, :SendFor, :UidList, :RoundNumber, :PersonInterval, :RoundInterval, :RecoverNotify, :NeedSendNotice, :ReceiverGroupList, :ReceiverUserList, :ReceiveLanguage
        
        def initialize(starttime=nil, endtime=nil, notifyway=nil, receivertype=nil, id=nil, sendfor=nil, uidlist=nil, roundnumber=nil, personinterval=nil, roundinterval=nil, recovernotify=nil, needsendnotice=nil, receivergrouplist=nil, receiveruserlist=nil, receivelanguage=nil)
          @StartTime = starttime
          @EndTime = endtime
          @NotifyWay = notifyway
          @ReceiverType = receivertype
          @Id = id
          @SendFor = sendfor
          @UidList = uidlist
          @RoundNumber = roundnumber
          @PersonInterval = personinterval
          @RoundInterval = roundinterval
          @RecoverNotify = recovernotify
          @NeedSendNotice = needsendnotice
          @ReceiverGroupList = receivergrouplist
          @ReceiverUserList = receiveruserlist
          @ReceiveLanguage = receivelanguage
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NotifyWay = params['NotifyWay']
          @ReceiverType = params['ReceiverType']
          @Id = params['Id']
          @SendFor = params['SendFor']
          @UidList = params['UidList']
          @RoundNumber = params['RoundNumber']
          @PersonInterval = params['PersonInterval']
          @RoundInterval = params['RoundInterval']
          @RecoverNotify = params['RecoverNotify']
          @NeedSendNotice = params['NeedSendNotice']
          @ReceiverGroupList = params['ReceiverGroupList']
          @ReceiverUserList = params['ReceiverUserList']
          @ReceiveLanguage = params['ReceiveLanguage']
        end
      end

      # SendCustomAlarmMsg请求参数结构体
      class SendCustomAlarmMsgRequest < TencentCloud::Common::AbstractModel
        # @param Module: 接口模块名，当前取值monitor
        # @type Module: String
        # @param PolicyId: 消息策略ID，在云监控自定义消息页面配置
        # @type PolicyId: String
        # @param Msg: 用户想要发送的自定义消息内容
        # @type Msg: String

        attr_accessor :Module, :PolicyId, :Msg
        
        def initialize(_module=nil, policyid=nil, msg=nil)
          @Module = _module
          @PolicyId = policyid
          @Msg = msg
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @Msg = params['Msg']
        end
      end

      # SendCustomAlarmMsg返回参数结构体
      class SendCustomAlarmMsgResponse < TencentCloud::Common::AbstractModel
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

      # Prometheus 服务发现信息
      class ServiceDiscoveryItem < TencentCloud::Common::AbstractModel
        # @param Name: 服务发现名称
        # @type Name: String
        # @param Namespace: 服务发现属于的 Namespace
        # @type Namespace: String
        # @param Kind: 服务发现类型: ServiceMonitor/PodMonitor
        # @type Kind: String
        # @param NamespaceSelector: Namespace 选取方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceSelector: String
        # @param Selector: Label 选取方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Selector: String
        # @param Endpoints: Endpoints 信息（PodMonitor 不含该参数）
        # @type Endpoints: String
        # @param Yaml: 服务发现对应的配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String

        attr_accessor :Name, :Namespace, :Kind, :NamespaceSelector, :Selector, :Endpoints, :Yaml
        
        def initialize(name=nil, namespace=nil, kind=nil, namespaceselector=nil, selector=nil, endpoints=nil, yaml=nil)
          @Name = name
          @Namespace = namespace
          @Kind = kind
          @NamespaceSelector = namespaceselector
          @Selector = selector
          @Endpoints = endpoints
          @Yaml = yaml
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Kind = params['Kind']
          @NamespaceSelector = params['NamespaceSelector']
          @Selector = params['Selector']
          @Endpoints = params['Endpoints']
          @Yaml = params['Yaml']
        end
      end

      # SetDefaultAlarmPolicy请求参数结构体
      class SetDefaultAlarmPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定值 monitor
        # @type Module: String
        # @param PolicyId: 告警策略 ID
        # @type PolicyId: String

        attr_accessor :Module, :PolicyId
        
        def initialize(_module=nil, policyid=nil)
          @Module = _module
          @PolicyId = policyid
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
        end
      end

      # SetDefaultAlarmPolicy返回参数结构体
      class SetDefaultAlarmPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 策略列表详情标签返回体
      class TagInstance < TencentCloud::Common::AbstractModel
        # @param Key: 标签Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签Value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param InstanceSum: 实例个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSum: Integer
        # @param ServiceType: 产品类型，如：cvm
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param BindingStatus: 绑定状态，2：绑定成功，1：绑定中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindingStatus: Integer
        # @param TagStatus: 标签状态，2：标签存在，1：标签不存在
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagStatus: Integer

        attr_accessor :Key, :Value, :InstanceSum, :ServiceType, :RegionId, :BindingStatus, :TagStatus
        
        def initialize(key=nil, value=nil, instancesum=nil, servicetype=nil, regionid=nil, bindingstatus=nil, tagstatus=nil)
          @Key = key
          @Value = value
          @InstanceSum = instancesum
          @ServiceType = servicetype
          @RegionId = regionid
          @BindingStatus = bindingstatus
          @TagStatus = tagstatus
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @InstanceSum = params['InstanceSum']
          @ServiceType = params['ServiceType']
          @RegionId = params['RegionId']
          @BindingStatus = params['BindingStatus']
          @TagStatus = params['TagStatus']
        end
      end

      # 云监控告警通知模板 - 回调通知详情
      class URLNotice < TencentCloud::Common::AbstractModel
        # @param URL: 回调 url（限长256字符）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URL: String
        # @param IsValid: 是否通过验证 0=否 1=是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsValid: Integer
        # @param ValidationCode: 验证码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidationCode: String

        attr_accessor :URL, :IsValid, :ValidationCode
        
        def initialize(url=nil, isvalid=nil, validationcode=nil)
          @URL = url
          @IsValid = isvalid
          @ValidationCode = validationcode
        end

        def deserialize(params)
          @URL = params['URL']
          @IsValid = params['IsValid']
          @ValidationCode = params['ValidationCode']
        end
      end

      # UnBindingAllPolicyObject请求参数结构体
      class UnBindingAllPolicyObjectRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id，如传入 PolicyId 则该字段被忽略可传入任意值如 0
        # @type GroupId: Integer
        # @param PolicyId: 告警策略ID，使用此字段时 GroupId 会被忽略
        # @type PolicyId: String

        attr_accessor :Module, :GroupId, :PolicyId
        
        def initialize(_module=nil, groupid=nil, policyid=nil)
          @Module = _module
          @GroupId = groupid
          @PolicyId = policyid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @PolicyId = params['PolicyId']
        end
      end

      # UnBindingAllPolicyObject返回参数结构体
      class UnBindingAllPolicyObjectResponse < TencentCloud::Common::AbstractModel
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

      # UnBindingPolicyObject请求参数结构体
      class UnBindingPolicyObjectRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id，如传入 PolicyId 则该字段被忽略可传入任意值如 0
        # @type GroupId: Integer
        # @param UniqueId: 待删除对象实例的唯一id列表，UniqueId从调用[获取已绑定对象列表接口](https://cloud.tencent.com/document/api/248/40570)的出参的List中得到
        # @type UniqueId: Array
        # @param InstanceGroupId: 实例分组id，如果按实例分组删除的话UniqueId参数是无效的
        # @type InstanceGroupId: Integer
        # @param PolicyId: 告警策略ID，使用此字段时 GroupId 会被忽略
        # @type PolicyId: String

        attr_accessor :Module, :GroupId, :UniqueId, :InstanceGroupId, :PolicyId
        
        def initialize(_module=nil, groupid=nil, uniqueid=nil, instancegroupid=nil, policyid=nil)
          @Module = _module
          @GroupId = groupid
          @UniqueId = uniqueid
          @InstanceGroupId = instancegroupid
          @PolicyId = policyid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @UniqueId = params['UniqueId']
          @InstanceGroupId = params['InstanceGroupId']
          @PolicyId = params['PolicyId']
        end
      end

      # UnBindingPolicyObject返回参数结构体
      class UnBindingPolicyObjectResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAlertRule请求参数结构体
      class UpdateAlertRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: Prometheus 报警规则 ID
        # @type RuleId: String
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param RuleState: 规则状态码，取值如下：
        # <li>1=RuleDeleted</li>
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # 默认状态码为 2 启用。
        # @type RuleState: Integer
        # @param RuleName: 报警规则名称
        # @type RuleName: String
        # @param Expr: 报警规则表达式
        # @type Expr: String
        # @param Duration: 报警规则持续时间
        # @type Duration: String
        # @param Receivers: 报警规则接收组列表
        # @type Receivers: Array
        # @param Labels: 报警规则标签列表
        # @type Labels: Array
        # @param Annotations: 报警规则注释列表。

        # 告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description。
        # @type Annotations: Array
        # @param Type: 报警策略模板分类
        # @type Type: String

        attr_accessor :RuleId, :InstanceId, :RuleState, :RuleName, :Expr, :Duration, :Receivers, :Labels, :Annotations, :Type
        
        def initialize(ruleid=nil, instanceid=nil, rulestate=nil, rulename=nil, expr=nil, duration=nil, receivers=nil, labels=nil, annotations=nil, type=nil)
          @RuleId = ruleid
          @InstanceId = instanceid
          @RuleState = rulestate
          @RuleName = rulename
          @Expr = expr
          @Duration = duration
          @Receivers = receivers
          @Labels = labels
          @Annotations = annotations
          @Type = type
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @InstanceId = params['InstanceId']
          @RuleState = params['RuleState']
          @RuleName = params['RuleName']
          @Expr = params['Expr']
          @Duration = params['Duration']
          @Receivers = params['Receivers']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              prometheusrulekv_tmp = PrometheusRuleKV.new
              prometheusrulekv_tmp.deserialize(i)
              @Labels << prometheusrulekv_tmp
            end
          end
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              prometheusrulekv_tmp = PrometheusRuleKV.new
              prometheusrulekv_tmp.deserialize(i)
              @Annotations << prometheusrulekv_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # UpdateAlertRule返回参数结构体
      class UpdateAlertRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
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

      # UpdateAlertRuleState请求参数结构体
      class UpdateAlertRuleStateRequest < TencentCloud::Common::AbstractModel
        # @param RuleIds: 规则 ID 列表
        # @type RuleIds: Array
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param RuleState: 规则状态码，取值如下：
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # 默认状态码为 2 启用。
        # @type RuleState: Integer

        attr_accessor :RuleIds, :InstanceId, :RuleState
        
        def initialize(ruleids=nil, instanceid=nil, rulestate=nil)
          @RuleIds = ruleids
          @InstanceId = instanceid
          @RuleState = rulestate
        end

        def deserialize(params)
          @RuleIds = params['RuleIds']
          @InstanceId = params['InstanceId']
          @RuleState = params['RuleState']
        end
      end

      # UpdateAlertRuleState返回参数结构体
      class UpdateAlertRuleStateResponse < TencentCloud::Common::AbstractModel
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

      # UpdateServiceDiscovery请求参数结构体
      class UpdateServiceDiscoveryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param KubeClusterId: <li>类型是 TKE，为对应的腾讯云容器服务集群 ID</li>
        # @type KubeClusterId: String
        # @param KubeType: 用户 Kubernetes 集群类型：
        # <li> 1 = 容器服务集群(TKE) </li>
        # @type KubeType: Integer
        # @param Type: 服务发现类型，取值如下：
        # <li> 1 = ServiceMonitor</li>
        # <li> 2 = PodMonitor</li>
        # <li> 3 = JobMonitor</li>
        # @type Type: Integer
        # @param Yaml: 服务发现配置信息
        # @type Yaml: String

        attr_accessor :InstanceId, :KubeClusterId, :KubeType, :Type, :Yaml
        
        def initialize(instanceid=nil, kubeclusterid=nil, kubetype=nil, type=nil, yaml=nil)
          @InstanceId = instanceid
          @KubeClusterId = kubeclusterid
          @KubeType = kubetype
          @Type = type
          @Yaml = yaml
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KubeClusterId = params['KubeClusterId']
          @KubeType = params['KubeType']
          @Type = params['Type']
          @Yaml = params['Yaml']
        end
      end

      # UpdateServiceDiscovery返回参数结构体
      class UpdateServiceDiscoveryResponse < TencentCloud::Common::AbstractModel
        # @param ServiceDiscovery: 更新成功之后，返回对应服务发现的信息
        # @type ServiceDiscovery: :class:`Tencentcloud::Monitor.v20180724.models.ServiceDiscoveryItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceDiscovery, :RequestId
        
        def initialize(servicediscovery=nil, requestid=nil)
          @ServiceDiscovery = servicediscovery
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceDiscovery'].nil?
            @ServiceDiscovery = ServiceDiscoveryItem.new
            @ServiceDiscovery.deserialize(params['ServiceDiscovery'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云监控告警通知模板 - 用户通知详情
      class UserNotice < TencentCloud::Common::AbstractModel
        # @param ReceiverType: 接收者类型 USER=用户 GROUP=用户组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverType: String
        # @param StartTime: 通知开始时间 00:00:00 开始的秒数（取值范围0-86399）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 通知结束时间 00:00:00 开始的秒数（取值范围0-86399）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param NoticeWay: 通知渠道列表 EMAIL=邮件 SMS=短信 CALL=电话 WECHAT=微信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeWay: Array
        # @param UserIds: 用户 uid 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIds: Array
        # @param GroupIds: 用户组 group id 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupIds: Array
        # @param PhoneOrder: 电话轮询列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneOrder: Array
        # @param PhoneCircleTimes: 电话轮询次数 （取值范围1-5）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCircleTimes: Integer
        # @param PhoneInnerInterval: 单次轮询内拨打间隔 秒数 （取值范围60-900）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneInnerInterval: Integer
        # @param PhoneCircleInterval: 两次轮询间隔 秒数（取值范围60-900）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCircleInterval: Integer
        # @param NeedPhoneArriveNotice: 是否需要触达通知 0=否 1=是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeedPhoneArriveNotice: Integer

        attr_accessor :ReceiverType, :StartTime, :EndTime, :NoticeWay, :UserIds, :GroupIds, :PhoneOrder, :PhoneCircleTimes, :PhoneInnerInterval, :PhoneCircleInterval, :NeedPhoneArriveNotice
        
        def initialize(receivertype=nil, starttime=nil, endtime=nil, noticeway=nil, userids=nil, groupids=nil, phoneorder=nil, phonecircletimes=nil, phoneinnerinterval=nil, phonecircleinterval=nil, needphonearrivenotice=nil)
          @ReceiverType = receivertype
          @StartTime = starttime
          @EndTime = endtime
          @NoticeWay = noticeway
          @UserIds = userids
          @GroupIds = groupids
          @PhoneOrder = phoneorder
          @PhoneCircleTimes = phonecircletimes
          @PhoneInnerInterval = phoneinnerinterval
          @PhoneCircleInterval = phonecircleinterval
          @NeedPhoneArriveNotice = needphonearrivenotice
        end

        def deserialize(params)
          @ReceiverType = params['ReceiverType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NoticeWay = params['NoticeWay']
          @UserIds = params['UserIds']
          @GroupIds = params['GroupIds']
          @PhoneOrder = params['PhoneOrder']
          @PhoneCircleTimes = params['PhoneCircleTimes']
          @PhoneInnerInterval = params['PhoneInnerInterval']
          @PhoneCircleInterval = params['PhoneCircleInterval']
          @NeedPhoneArriveNotice = params['NeedPhoneArriveNotice']
        end
      end

    end
  end
end

