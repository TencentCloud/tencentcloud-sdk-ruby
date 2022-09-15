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
        # @param Dimensions: 告警实例的维度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimensions: String

        attr_accessor :AlarmId, :MonitorType, :Namespace, :AlarmObject, :Content, :FirstOccurTime, :LastOccurTime, :AlarmStatus, :PolicyId, :PolicyName, :VPC, :ProjectId, :ProjectName, :InstanceGroup, :ReceiverUids, :ReceiverGroups, :NoticeWays, :OriginId, :AlarmType, :EventId, :Region, :PolicyExists, :MetricsInfo, :Dimensions
        
        def initialize(alarmid=nil, monitortype=nil, namespace=nil, alarmobject=nil, content=nil, firstoccurtime=nil, lastoccurtime=nil, alarmstatus=nil, policyid=nil, policyname=nil, vpc=nil, projectid=nil, projectname=nil, instancegroup=nil, receiveruids=nil, receivergroups=nil, noticeways=nil, originid=nil, alarmtype=nil, eventid=nil, region=nil, policyexists=nil, metricsinfo=nil, dimensions=nil)
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
          @Dimensions = dimensions
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
          @Dimensions = params['Dimensions']
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
        # @param AMPConsumerId: 后台 amp consumer id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AMPConsumerId: String
        # @param CLSNotices: 推送cls渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLSNotices: Array

        attr_accessor :Id, :Name, :UpdatedAt, :UpdatedBy, :NoticeType, :UserNotices, :URLNotices, :IsPreset, :NoticeLanguage, :PolicyIds, :AMPConsumerId, :CLSNotices
        
        def initialize(id=nil, name=nil, updatedat=nil, updatedby=nil, noticetype=nil, usernotices=nil, urlnotices=nil, ispreset=nil, noticelanguage=nil, policyids=nil, ampconsumerid=nil, clsnotices=nil)
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
          @AMPConsumerId = ampconsumerid
          @CLSNotices = clsnotices
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
          @AMPConsumerId = params['AMPConsumerId']
          unless params['CLSNotices'].nil?
            @CLSNotices = []
            params['CLSNotices'].each do |i|
              clsnotice_tmp = CLSNotice.new
              clsnotice_tmp.deserialize(i)
              @CLSNotices << clsnotice_tmp
            end
          end
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
        # @param FilterDimensionsParam: 策略关联的过滤维度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterDimensionsParam: String
        # @param IsOneClick: 是否为一键告警策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOneClick: Integer
        # @param OneClickStatus: 一键告警策略是否开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OneClickStatus: Integer
        # @param AdvancedMetricNumber: 高级指标数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedMetricNumber: Integer

        attr_accessor :PolicyId, :PolicyName, :Remark, :MonitorType, :Enable, :UseSum, :ProjectId, :ProjectName, :Namespace, :ConditionTemplateId, :Condition, :EventCondition, :NoticeIds, :Notices, :TriggerTasks, :ConditionsTemp, :LastEditUin, :UpdateTime, :InsertTime, :Region, :NamespaceShowName, :IsDefault, :CanSetDefault, :InstanceGroupId, :InstanceSum, :InstanceGroupName, :RuleType, :OriginId, :TagInstances, :FilterDimensionsParam, :IsOneClick, :OneClickStatus, :AdvancedMetricNumber
        
        def initialize(policyid=nil, policyname=nil, remark=nil, monitortype=nil, enable=nil, usesum=nil, projectid=nil, projectname=nil, namespace=nil, conditiontemplateid=nil, condition=nil, eventcondition=nil, noticeids=nil, notices=nil, triggertasks=nil, conditionstemp=nil, lastedituin=nil, updatetime=nil, inserttime=nil, region=nil, namespaceshowname=nil, isdefault=nil, cansetdefault=nil, instancegroupid=nil, instancesum=nil, instancegroupname=nil, ruletype=nil, originid=nil, taginstances=nil, filterdimensionsparam=nil, isoneclick=nil, oneclickstatus=nil, advancedmetricnumber=nil)
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
          @FilterDimensionsParam = filterdimensionsparam
          @IsOneClick = isoneclick
          @OneClickStatus = oneclickstatus
          @AdvancedMetricNumber = advancedmetricnumber
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
          @FilterDimensionsParam = params['FilterDimensionsParam']
          @IsOneClick = params['IsOneClick']
          @OneClickStatus = params['OneClickStatus']
          @AdvancedMetricNumber = params['AdvancedMetricNumber']
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
        # @param IsAdvanced: 是否为高级指标，0否，1是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAdvanced: Integer
        # @param IsOpen: 高级指标是否开通，0否，1是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOpen: Integer
        # @param ProductId: 集成中心产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String

        attr_accessor :MetricName, :Period, :Operator, :Value, :ContinuePeriod, :NoticeFrequency, :IsPowerNotice, :Filter, :Description, :Unit, :RuleType, :IsAdvanced, :IsOpen, :ProductId
        
        def initialize(metricname=nil, period=nil, operator=nil, value=nil, continueperiod=nil, noticefrequency=nil, ispowernotice=nil, filter=nil, description=nil, unit=nil, ruletype=nil, isadvanced=nil, isopen=nil, productid=nil)
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
          @IsAdvanced = isadvanced
          @IsOpen = isopen
          @ProductId = productid
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
          @IsAdvanced = params['IsAdvanced']
          @IsOpen = params['IsOpen']
          @ProductId = params['ProductId']
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

      # BindPrometheusManagedGrafana请求参数结构体
      class BindPrometheusManagedGrafanaRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param GrafanaId: Grafana 可视化服务实例 ID
        # @type GrafanaId: String

        attr_accessor :InstanceId, :GrafanaId
        
        def initialize(instanceid=nil, grafanaid=nil)
          @InstanceId = instanceid
          @GrafanaId = grafanaid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GrafanaId = params['GrafanaId']
        end
      end

      # BindPrometheusManagedGrafana返回参数结构体
      class BindPrometheusManagedGrafanaResponse < TencentCloud::Common::AbstractModel
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
        # @param GroupId: 策略组id，例如 4739573。逐渐弃用，建议使用 PolicyId 参数
        # @type GroupId: Integer
        # @param PolicyId: 告警策略ID，例如“policy-gh892hg0”。PolicyId 参数与 GroupId 参数至少要填一个，否则会报参数错误，建议使用该参数。若两者同时存在则以该参数为准
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

      # BindingPolicyTag请求参数结构体
      class BindingPolicyTagRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定取值 monitor
        # @type Module: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param GroupId: 用于实例、实例组绑定和解绑接口（BindingPolicyObject、UnBindingAllPolicyObject、UnBindingPolicyObject）的策略 ID
        # @type GroupId: String
        # @param ServiceType: 产品类型
        # @type ServiceType: String
        # @param Tag: 策略标签
        # @type Tag: :class:`Tencentcloud::Monitor.v20180724.models.PolicyTag`
        # @param InstanceGroupId: 实例分组ID
        # @type InstanceGroupId: Integer
        # @param BatchTag: 批量绑定标签
        # @type BatchTag: Array

        attr_accessor :Module, :PolicyId, :GroupId, :ServiceType, :Tag, :InstanceGroupId, :BatchTag
        
        def initialize(_module=nil, policyid=nil, groupid=nil, servicetype=nil, tag=nil, instancegroupid=nil, batchtag=nil)
          @Module = _module
          @PolicyId = policyid
          @GroupId = groupid
          @ServiceType = servicetype
          @Tag = tag
          @InstanceGroupId = instancegroupid
          @BatchTag = batchtag
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @GroupId = params['GroupId']
          @ServiceType = params['ServiceType']
          unless params['Tag'].nil?
            @Tag = PolicyTag.new
            @Tag.deserialize(params['Tag'])
          end
          @InstanceGroupId = params['InstanceGroupId']
          unless params['BatchTag'].nil?
            @BatchTag = []
            params['BatchTag'].each do |i|
              policytag_tmp = PolicyTag.new
              policytag_tmp.deserialize(i)
              @BatchTag << policytag_tmp
            end
          end
        end
      end

      # BindingPolicyTag返回参数结构体
      class BindingPolicyTagResponse < TencentCloud::Common::AbstractModel
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

      # 告警通知中的推送CLS操作
      class CLSNotice < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param LogSetId: 日志集Id
        # @type LogSetId: String
        # @param TopicId: 主题Id
        # @type TopicId: String
        # @param Enable: 启停状态，可不传，默认启用。0=停用，1=启用
        # @type Enable: Integer

        attr_accessor :Region, :LogSetId, :TopicId, :Enable
        
        def initialize(region=nil, logsetid=nil, topicid=nil, enable=nil)
          @Region = region
          @LogSetId = logsetid
          @TopicId = topicid
          @Enable = enable
        end

        def deserialize(params)
          @Region = params['Region']
          @LogSetId = params['LogSetId']
          @TopicId = params['TopicId']
          @Enable = params['Enable']
        end
      end

      # CleanGrafanaInstance请求参数结构体
      class CleanGrafanaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CleanGrafanaInstance返回参数结构体
      class CleanGrafanaInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 策略类型信息
      class CommonNamespaceNew < TencentCloud::Common::AbstractModel
        # @param Id: 命名空间标示
        # @type Id: String
        # @param Name: 命名空间名称
        # @type Name: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param Dimensions: 维度信息
        # @type Dimensions: Array

        attr_accessor :Id, :Name, :MonitorType, :Dimensions
        
        def initialize(id=nil, name=nil, monitortype=nil, dimensions=nil)
          @Id = id
          @Name = name
          @MonitorType = monitortype
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @MonitorType = params['MonitorType']
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimensionnew_tmp = DimensionNew.new
              dimensionnew_tmp.deserialize(i)
              @Dimensions << dimensionnew_tmp
            end
          end
        end
      end

      # 告警条件
      class Condition < TencentCloud::Common::AbstractModel
        # @param AlarmNotifyPeriod: 告警通知频率
        # @type AlarmNotifyPeriod: Integer
        # @param AlarmNotifyType: 重复通知策略预定义（0 - 只告警一次， 1 - 指数告警，2 - 连接告警）
        # @type AlarmNotifyType: Integer
        # @param CalcType: 检测方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcType: String
        # @param CalcValue: 检测值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcValue: String
        # @param ContinueTime: 持续时间，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContinueTime: String
        # @param MetricID: 指标ID
        # @type MetricID: Integer
        # @param MetricDisplayName: 指标展示名称（对外）
        # @type MetricDisplayName: String
        # @param Period: 周期
        # @type Period: Integer
        # @param RuleID: 规则ID
        # @type RuleID: Integer
        # @param Unit: 指标单位
        # @type Unit: String
        # @param IsAdvanced: 是否为高级指标，0：否；1：是
        # @type IsAdvanced: Integer
        # @param IsOpen: 是否开通高级指标，0：否；1：是
        # @type IsOpen: Integer
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String

        attr_accessor :AlarmNotifyPeriod, :AlarmNotifyType, :CalcType, :CalcValue, :ContinueTime, :MetricID, :MetricDisplayName, :Period, :RuleID, :Unit, :IsAdvanced, :IsOpen, :ProductId
        
        def initialize(alarmnotifyperiod=nil, alarmnotifytype=nil, calctype=nil, calcvalue=nil, continuetime=nil, metricid=nil, metricdisplayname=nil, period=nil, ruleid=nil, unit=nil, isadvanced=nil, isopen=nil, productid=nil)
          @AlarmNotifyPeriod = alarmnotifyperiod
          @AlarmNotifyType = alarmnotifytype
          @CalcType = calctype
          @CalcValue = calcvalue
          @ContinueTime = continuetime
          @MetricID = metricid
          @MetricDisplayName = metricdisplayname
          @Period = period
          @RuleID = ruleid
          @Unit = unit
          @IsAdvanced = isadvanced
          @IsOpen = isopen
          @ProductId = productid
        end

        def deserialize(params)
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @AlarmNotifyType = params['AlarmNotifyType']
          @CalcType = params['CalcType']
          @CalcValue = params['CalcValue']
          @ContinueTime = params['ContinueTime']
          @MetricID = params['MetricID']
          @MetricDisplayName = params['MetricDisplayName']
          @Period = params['Period']
          @RuleID = params['RuleID']
          @Unit = params['Unit']
          @IsAdvanced = params['IsAdvanced']
          @IsOpen = params['IsOpen']
          @ProductId = params['ProductId']
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
        # @param CLSNotices: 推送CLS日志服务的操作 最多1个
        # @type CLSNotices: Array

        attr_accessor :Module, :Name, :NoticeType, :NoticeLanguage, :UserNotices, :URLNotices, :CLSNotices
        
        def initialize(_module=nil, name=nil, noticetype=nil, noticelanguage=nil, usernotices=nil, urlnotices=nil, clsnotices=nil)
          @Module = _module
          @Name = name
          @NoticeType = noticetype
          @NoticeLanguage = noticelanguage
          @UserNotices = usernotices
          @URLNotices = urlnotices
          @CLSNotices = clsnotices
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
          unless params['CLSNotices'].nil?
            @CLSNotices = []
            params['CLSNotices'].each do |i|
              clsnotice_tmp = CLSNotice.new
              clsnotice_tmp.deserialize(i)
              @CLSNotices << clsnotice_tmp
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
        # @param Namespace: 告警策略类型，由 [DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 获得。对于云产品监控，取接口出参的 QceNamespacesNew.N.Id，例如 cvm_device
        # @type Namespace: String
        # @param Remark: 备注，不超过100字符，仅支持中英文、数字、下划线、-
        # @type Remark: String
        # @param Enable: 是否启用 0=停用 1=启用，可不传 默认为1
        # @type Enable: Integer
        # @param ProjectId: 项目 Id，对于区分项目的产品必须传入非 -1 的值。 -1=无项目 0=默认项目，如不传 默认为 -1。支持的项目 Id 可以在控制台 [账号中心-项目管理](https://console.cloud.tencent.com/project) 中查看。
        # @type ProjectId: Integer
        # @param ConditionTemplateId: 触发条件模板 Id，该参数与 Condition 参数二选一。如果策略绑定触发条件模板，则传该参数；否则不传该参数，而是传 Condition 参数。触发条件模板 Id 可以从 [DescribeConditionsTemplateList](https://cloud.tencent.com/document/api/248/70250) 接口获取。
        # @type ConditionTemplateId: Integer
        # @param Condition: 指标触发条件，支持的指标可以从 [DescribeAlarmMetrics](https://cloud.tencent.com/document/product/248/51283) 查询。
        # @type Condition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyCondition`
        # @param EventCondition: 事件触发条件，支持的事件可以从 [DescribeAlarmEvents](https://cloud.tencent.com/document/product/248/51284) 查询。
        # @type EventCondition: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyEventCondition`
        # @param NoticeIds: 通知规则 Id 列表，由 [DescribeAlarmNotices](https://cloud.tencent.com/document/product/248/51280) 获得
        # @type NoticeIds: Array
        # @param TriggerTasks: 触发任务列表
        # @type TriggerTasks: Array
        # @param Filter: 全局过滤条件
        # @type Filter: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyFilter`
        # @param GroupBy: 聚合维度列表，指定按哪些维度 key 来做 group by
        # @type GroupBy: Array

        attr_accessor :Module, :PolicyName, :MonitorType, :Namespace, :Remark, :Enable, :ProjectId, :ConditionTemplateId, :Condition, :EventCondition, :NoticeIds, :TriggerTasks, :Filter, :GroupBy
        
        def initialize(_module=nil, policyname=nil, monitortype=nil, namespace=nil, remark=nil, enable=nil, projectid=nil, conditiontemplateid=nil, condition=nil, eventcondition=nil, noticeids=nil, triggertasks=nil, filter=nil, groupby=nil)
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
          @Filter = filter
          @GroupBy = groupby
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
          unless params['Filter'].nil?
            @Filter = AlarmPolicyFilter.new
            @Filter.deserialize(params['Filter'])
          end
          @GroupBy = params['GroupBy']
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

      # CreateExporterIntegration请求参数结构体
      class CreateExporterIntegrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Kind: 类型
        # @type Kind: String
        # @param Content: 集成配置
        # @type Content: String
        # @param KubeType: Kubernetes 集群类型，取值如下：
        # <li> 1= 容器集群(TKE) </li>
        # <li> 2=弹性集群<EKS> </li>
        # <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        # @type KubeType: Integer
        # @param ClusterId: 集群 ID
        # @type ClusterId: String

        attr_accessor :InstanceId, :Kind, :Content, :KubeType, :ClusterId
        
        def initialize(instanceid=nil, kind=nil, content=nil, kubetype=nil, clusterid=nil)
          @InstanceId = instanceid
          @Kind = kind
          @Content = content
          @KubeType = kubetype
          @ClusterId = clusterid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Kind = params['Kind']
          @Content = params['Content']
          @KubeType = params['KubeType']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateExporterIntegration返回参数结构体
      class CreateExporterIntegrationResponse < TencentCloud::Common::AbstractModel
        # @param Names: 返回创建成功的集成名称列表
        # @type Names: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Names, :RequestId
        
        def initialize(names=nil, requestid=nil)
          @Names = names
          @RequestId = requestid
        end

        def deserialize(params)
          @Names = params['Names']
          @RequestId = params['RequestId']
        end
      end

      # CreateGrafanaInstance请求参数结构体
      class CreateGrafanaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetIds: 子网 ID 数组
        # @type SubnetIds: Array
        # @param GrafanaInitPassword: Grafana 初始密码
        # @type GrafanaInitPassword: String
        # @param EnableInternet: 是否启用外网
        # @type EnableInternet: Boolean
        # @param TagSpecification: 标签
        # @type TagSpecification: Array

        attr_accessor :InstanceName, :VpcId, :SubnetIds, :GrafanaInitPassword, :EnableInternet, :TagSpecification
        
        def initialize(instancename=nil, vpcid=nil, subnetids=nil, grafanainitpassword=nil, enableinternet=nil, tagspecification=nil)
          @InstanceName = instancename
          @VpcId = vpcid
          @SubnetIds = subnetids
          @GrafanaInitPassword = grafanainitpassword
          @EnableInternet = enableinternet
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @GrafanaInitPassword = params['GrafanaInitPassword']
          @EnableInternet = params['EnableInternet']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              prometheustag_tmp = PrometheusTag.new
              prometheustag_tmp.deserialize(i)
              @TagSpecification << prometheustag_tmp
            end
          end
        end
      end

      # CreateGrafanaInstance返回参数结构体
      class CreateGrafanaInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGrafanaIntegration请求参数结构体
      class CreateGrafanaIntegrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Kind: 类型
        # @type Kind: String
        # @param Content: 配置
        # @type Content: String

        attr_accessor :InstanceId, :Kind, :Content
        
        def initialize(instanceid=nil, kind=nil, content=nil)
          @InstanceId = instanceid
          @Kind = kind
          @Content = content
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Kind = params['Kind']
          @Content = params['Content']
        end
      end

      # CreateGrafanaIntegration返回参数结构体
      class CreateGrafanaIntegrationResponse < TencentCloud::Common::AbstractModel
        # @param IntegrationId: 集成 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntegrationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntegrationId, :RequestId
        
        def initialize(integrationid=nil, requestid=nil)
          @IntegrationId = integrationid
          @RequestId = requestid
        end

        def deserialize(params)
          @IntegrationId = params['IntegrationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGrafanaNotificationChannel请求参数结构体
      class CreateGrafanaNotificationChannelRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param OrgId: 默认为1，已废弃，请使用 OrganizationIds
        # @type OrgId: Integer
        # @param Receivers: 接受告警通道 ID 数组
        # @type Receivers: Array
        # @param ExtraOrgIds: 额外组织 ID 数组，已废弃，请使用 OrganizationIds
        # @type ExtraOrgIds: Array
        # @param OrganizationIds: 生效的所有组织 ID 数组，默认为 ["1"]
        # @type OrganizationIds: Array

        attr_accessor :InstanceId, :ChannelName, :OrgId, :Receivers, :ExtraOrgIds, :OrganizationIds
        
        def initialize(instanceid=nil, channelname=nil, orgid=nil, receivers=nil, extraorgids=nil, organizationids=nil)
          @InstanceId = instanceid
          @ChannelName = channelname
          @OrgId = orgid
          @Receivers = receivers
          @ExtraOrgIds = extraorgids
          @OrganizationIds = organizationids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ChannelName = params['ChannelName']
          @OrgId = params['OrgId']
          @Receivers = params['Receivers']
          @ExtraOrgIds = params['ExtraOrgIds']
          @OrganizationIds = params['OrganizationIds']
        end
      end

      # CreateGrafanaNotificationChannel返回参数结构体
      class CreateGrafanaNotificationChannelResponse < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChannelId, :RequestId
        
        def initialize(channelid=nil, requestid=nil)
          @ChannelId = channelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
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

      # CreatePrometheusAgent请求参数结构体
      class CreatePrometheusAgentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Name: Agent 名称
        # @type Name: String

        attr_accessor :InstanceId, :Name
        
        def initialize(instanceid=nil, name=nil)
          @InstanceId = instanceid
          @Name = name
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
        end
      end

      # CreatePrometheusAgent返回参数结构体
      class CreatePrometheusAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: 创建成功的 Agent Id
        # @type AgentId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :RequestId
        
        def initialize(agentid=nil, requestid=nil)
          @AgentId = agentid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheusMultiTenantInstancePostPayMode请求参数结构体
      class CreatePrometheusMultiTenantInstancePostPayModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网 ID
        # @type SubnetId: String
        # @param DataRetentionTime: 数据存储时间（单位天），限制值为15，30，45之一
        # @type DataRetentionTime: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param TagSpecification: 实例的标签
        # @type TagSpecification: Array
        # @param GrafanaInstanceId: 需要关联的 Grafana 实例
        # @type GrafanaInstanceId: String

        attr_accessor :InstanceName, :VpcId, :SubnetId, :DataRetentionTime, :Zone, :TagSpecification, :GrafanaInstanceId
        
        def initialize(instancename=nil, vpcid=nil, subnetid=nil, dataretentiontime=nil, zone=nil, tagspecification=nil, grafanainstanceid=nil)
          @InstanceName = instancename
          @VpcId = vpcid
          @SubnetId = subnetid
          @DataRetentionTime = dataretentiontime
          @Zone = zone
          @TagSpecification = tagspecification
          @GrafanaInstanceId = grafanainstanceid
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DataRetentionTime = params['DataRetentionTime']
          @Zone = params['Zone']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              prometheustag_tmp = PrometheusTag.new
              prometheustag_tmp.deserialize(i)
              @TagSpecification << prometheustag_tmp
            end
          end
          @GrafanaInstanceId = params['GrafanaInstanceId']
        end
      end

      # CreatePrometheusMultiTenantInstancePostPayMode返回参数结构体
      class CreatePrometheusMultiTenantInstancePostPayModeResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheusScrapeJob请求参数结构体
      class CreatePrometheusScrapeJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param Config: 任务内容
        # @type Config: String

        attr_accessor :InstanceId, :AgentId, :Config
        
        def initialize(instanceid=nil, agentid=nil, config=nil)
          @InstanceId = instanceid
          @AgentId = agentid
          @Config = config
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
          @Config = params['Config']
        end
      end

      # CreatePrometheusScrapeJob返回参数结构体
      class CreatePrometheusScrapeJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 成功创建抓取任务 Id
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRecordingRule请求参数结构体
      class CreateRecordingRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 聚合规则名称
        # @type Name: String
        # @param Group: 聚合规则组内容，格式为 yaml
        # @type Group: String
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param RuleState: 规则状态码，取值如下：
        # <li>1=RuleDeleted</li>
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # 默认状态码为 2 启用。
        # @type RuleState: Integer

        attr_accessor :Name, :Group, :InstanceId, :RuleState
        
        def initialize(name=nil, group=nil, instanceid=nil, rulestate=nil)
          @Name = name
          @Group = group
          @InstanceId = instanceid
          @RuleState = rulestate
        end

        def deserialize(params)
          @Name = params['Name']
          @Group = params['Group']
          @InstanceId = params['InstanceId']
          @RuleState = params['RuleState']
        end
      end

      # CreateRecordingRule返回参数结构体
      class CreateRecordingRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateSSOAccount请求参数结构体
      class CreateSSOAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param UserId: 用户账号ID
        # @type UserId: String
        # @param Role: 权限
        # @type Role: Array
        # @param Notes: 备注
        # @type Notes: String

        attr_accessor :InstanceId, :UserId, :Role, :Notes
        
        def initialize(instanceid=nil, userid=nil, role=nil, notes=nil)
          @InstanceId = instanceid
          @UserId = userid
          @Role = role
          @Notes = notes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserId = params['UserId']
          unless params['Role'].nil?
            @Role = []
            params['Role'].each do |i|
              grafanaaccountrole_tmp = GrafanaAccountRole.new
              grafanaaccountrole_tmp.deserialize(i)
              @Role << grafanaaccountrole_tmp
            end
          end
          @Notes = params['Notes']
        end
      end

      # CreateSSOAccount返回参数结构体
      class CreateSSOAccountResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 已添加的用户 UIN
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :RequestId
        
        def initialize(userid=nil, requestid=nil)
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
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

      # DeleteExporterIntegration请求参数结构体
      class DeleteExporterIntegrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Kind: 类型
        # @type Kind: String
        # @param Name: 名字
        # @type Name: String
        # @param KubeType: Kubernetes 集群类型，取值如下：
        # <li> 1= 容器集群(TKE) </li>
        # <li> 2=弹性集群<EKS> </li>
        # <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        # @type KubeType: Integer
        # @param ClusterId: 集群 ID
        # @type ClusterId: String

        attr_accessor :InstanceId, :Kind, :Name, :KubeType, :ClusterId
        
        def initialize(instanceid=nil, kind=nil, name=nil, kubetype=nil, clusterid=nil)
          @InstanceId = instanceid
          @Kind = kind
          @Name = name
          @KubeType = kubetype
          @ClusterId = clusterid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Kind = params['Kind']
          @Name = params['Name']
          @KubeType = params['KubeType']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteExporterIntegration返回参数结构体
      class DeleteExporterIntegrationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGrafanaInstance请求参数结构体
      class DeleteGrafanaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIDs: 实例名数组
        # @type InstanceIDs: Array

        attr_accessor :InstanceIDs
        
        def initialize(instanceids=nil)
          @InstanceIDs = instanceids
        end

        def deserialize(params)
          @InstanceIDs = params['InstanceIDs']
        end
      end

      # DeleteGrafanaInstance返回参数结构体
      class DeleteGrafanaInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGrafanaIntegration请求参数结构体
      class DeleteGrafanaIntegrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param IntegrationId: 集成 ID
        # @type IntegrationId: String

        attr_accessor :InstanceId, :IntegrationId
        
        def initialize(instanceid=nil, integrationid=nil)
          @InstanceId = instanceid
          @IntegrationId = integrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IntegrationId = params['IntegrationId']
        end
      end

      # DeleteGrafanaIntegration返回参数结构体
      class DeleteGrafanaIntegrationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGrafanaNotificationChannel请求参数结构体
      class DeleteGrafanaNotificationChannelRequest < TencentCloud::Common::AbstractModel
        # @param ChannelIDs: 通道 ID 数组
        # @type ChannelIDs: Array
        # @param InstanceId: 实例名
        # @type InstanceId: String

        attr_accessor :ChannelIDs, :InstanceId
        
        def initialize(channelids=nil, instanceid=nil)
          @ChannelIDs = channelids
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ChannelIDs = params['ChannelIDs']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteGrafanaNotificationChannel返回参数结构体
      class DeleteGrafanaNotificationChannelResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusScrapeJobs请求参数结构体
      class DeletePrometheusScrapeJobsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param JobIds: 任务 ID 列表
        # @type JobIds: Array

        attr_accessor :InstanceId, :AgentId, :JobIds
        
        def initialize(instanceid=nil, agentid=nil, jobids=nil)
          @InstanceId = instanceid
          @AgentId = agentid
          @JobIds = jobids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
          @JobIds = params['JobIds']
        end
      end

      # DeletePrometheusScrapeJobs返回参数结构体
      class DeletePrometheusScrapeJobsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRecordingRules请求参数结构体
      class DeleteRecordingRulesRequest < TencentCloud::Common::AbstractModel
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

      # DeleteRecordingRules返回参数结构体
      class DeleteRecordingRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSSOAccount请求参数结构体
      class DeleteSSOAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param UserId: 用户账号ID
        # @type UserId: String

        attr_accessor :InstanceId, :UserId
        
        def initialize(instanceid=nil, userid=nil)
          @InstanceId = instanceid
          @UserId = userid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserId = params['UserId']
        end
      end

      # DeleteSSOAccount返回参数结构体
      class DeleteSSOAccountResponse < TencentCloud::Common::AbstractModel
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
        # @param MonitorType: 监控类型，如 MT_QCE。如果不填默认为 MT_QCE。
        # @type MonitorType: String

        attr_accessor :Module, :Namespace, :MonitorType
        
        def initialize(_module=nil, namespace=nil, monitortype=nil)
          @Module = _module
          @Namespace = namespace
          @MonitorType = monitortype
        end

        def deserialize(params)
          @Module = params['Module']
          @Namespace = params['Namespace']
          @MonitorType = params['MonitorType']
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
        # @param MonitorTypes: 根据监控类型过滤，不选默认查所有类型。"MT_QCE"=云产品监控，支持的枚举值有："MT_QCE"=云产品监控；"MT_TAW"=应用性能观测；"MT_RUM"=前端性能监控；"MT_PROBE"=云拨测
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
        # @param NoticeIds: 根据通知模板 id 过滤，空数组/不传则不过滤
        # @type NoticeIds: Array

        attr_accessor :Module, :PageNumber, :PageSize, :Order, :OwnerUid, :Name, :ReceiverType, :UserIds, :GroupIds, :NoticeIds
        
        def initialize(_module=nil, pagenumber=nil, pagesize=nil, order=nil, owneruid=nil, name=nil, receivertype=nil, userids=nil, groupids=nil, noticeids=nil)
          @Module = _module
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Order = order
          @OwnerUid = owneruid
          @Name = name
          @ReceiverType = receivertype
          @UserIds = userids
          @GroupIds = groupids
          @NoticeIds = noticeids
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
          @NoticeIds = params['NoticeIds']
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

        # 注意：如果NeedCorrespondence传入1，即需要返回策略与实例对应关系，请传入不多于20个告警对象维度，否则容易请求超时
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
        # @param InstanceGroupId: 实例分组id
        # @type InstanceGroupId: Integer
        # @param NeedCorrespondence: 是否需要策略与入参过滤维度参数的对应关系，1：是  0：否，默认为0
        # @type NeedCorrespondence: Integer
        # @param TriggerTasks: 按照触发任务（例如弹性伸缩）过滤策略。最多10个
        # @type TriggerTasks: Array
        # @param OneClickPolicyType: 根据一键告警策略筛选 不传展示全部策略 ONECLICK=展示一键告警策略 NOT_ONECLICK=展示非一键告警策略
        # @type OneClickPolicyType: Array

        attr_accessor :Module, :PageNumber, :PageSize, :PolicyName, :MonitorTypes, :Namespaces, :Dimensions, :ReceiverUids, :ReceiverGroups, :PolicyType, :Field, :Order, :ProjectIds, :NoticeIds, :RuleTypes, :Enable, :NotBindingNoticeRule, :InstanceGroupId, :NeedCorrespondence, :TriggerTasks, :OneClickPolicyType
        
        def initialize(_module=nil, pagenumber=nil, pagesize=nil, policyname=nil, monitortypes=nil, namespaces=nil, dimensions=nil, receiveruids=nil, receivergroups=nil, policytype=nil, field=nil, order=nil, projectids=nil, noticeids=nil, ruletypes=nil, enable=nil, notbindingnoticerule=nil, instancegroupid=nil, needcorrespondence=nil, triggertasks=nil, oneclickpolicytype=nil)
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
          @InstanceGroupId = instancegroupid
          @NeedCorrespondence = needcorrespondence
          @TriggerTasks = triggertasks
          @OneClickPolicyType = oneclickpolicytype
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
          @InstanceGroupId = params['InstanceGroupId']
          @NeedCorrespondence = params['NeedCorrespondence']
          unless params['TriggerTasks'].nil?
            @TriggerTasks = []
            params['TriggerTasks'].each do |i|
              alarmpolicytriggertask_tmp = AlarmPolicyTriggerTask.new
              alarmpolicytriggertask_tmp.deserialize(i)
              @TriggerTasks << alarmpolicytriggertask_tmp
            end
          end
          @OneClickPolicyType = params['OneClickPolicyType']
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
        # @param SceneType: 根据使用场景过滤 目前仅有"ST_ALARM"=告警类型
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
        # @param CommonNamespaces: 通用告警策略类型(包括：应用性能监控，前端性能监控，云拨测)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonNamespaces: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QceNamespaces, :CustomNamespaces, :QceNamespacesNew, :CustomNamespacesNew, :CommonNamespaces, :RequestId
        
        def initialize(qcenamespaces=nil, customnamespaces=nil, qcenamespacesnew=nil, customnamespacesnew=nil, commonnamespaces=nil, requestid=nil)
          @QceNamespaces = qcenamespaces
          @CustomNamespaces = customnamespaces
          @QceNamespacesNew = qcenamespacesnew
          @CustomNamespacesNew = customnamespacesnew
          @CommonNamespaces = commonnamespaces
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
          unless params['CommonNamespaces'].nil?
            @CommonNamespaces = []
            params['CommonNamespaces'].each do |i|
              commonnamespacenew_tmp = CommonNamespaceNew.new
              commonnamespacenew_tmp.deserialize(i)
              @CommonNamespaces << commonnamespacenew_tmp
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
        # @param Dimensions: 可选参数，按照维度过滤
        # @type Dimensions: Array

        attr_accessor :Namespace, :MetricName, :Dimensions
        
        def initialize(namespace=nil, metricname=nil, dimensions=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @MetricName = params['MetricName']
          @Dimensions = params['Dimensions']
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
        # @param Warning: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warning: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alarms, :Total, :Warning, :RequestId
        
        def initialize(alarms=nil, total=nil, warning=nil, requestid=nil)
          @Alarms = alarms
          @Total = total
          @Warning = warning
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
          @Warning = params['Warning']
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
        # @param GroupId: 策略组id，如果有形如 policy-xxxx 的 id，请填到 PolicyId 字段中，本字段填 0
        # @type GroupId: Integer
        # @param PolicyId: 告警策略id，形如 policy-xxxx，如果填入，则GroupId可以填0
        # @type PolicyId: String
        # @param Limit: 每次返回的数量，取值1~100，默认20
        # @type Limit: Integer
        # @param Offset: 偏移量，从0开始计数，默认0。举例来说，参数 Offset=0&Limit=20 返回第 0 到 19 项，Offset=20&Limit=20 返回第 20 到 39 项，以此类推
        # @type Offset: Integer
        # @param Dimensions: 筛选对象的维度信息
        # @type Dimensions: Array

        attr_accessor :Module, :GroupId, :PolicyId, :Limit, :Offset, :Dimensions
        
        def initialize(_module=nil, groupid=nil, policyid=nil, limit=nil, offset=nil, dimensions=nil)
          @Module = _module
          @GroupId = groupid
          @PolicyId = policyid
          @Limit = limit
          @Offset = offset
          @Dimensions = dimensions
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @PolicyId = params['PolicyId']
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

      # DescribeConditionsTemplateList请求参数结构体
      class DescribeConditionsTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param ViewName: 视图名，由 [DescribeAllNamespaces](https://cloud.tencent.com/document/product/248/48683) 获得。对于云产品监控，取接口出参的 QceNamespacesNew.N.Id，例如 cvm_device
        # @type ViewName: String
        # @param GroupName: 根据触发条件模板名称过滤查询
        # @type GroupName: String
        # @param GroupID: 根据触发条件模板ID过滤查询
        # @type GroupID: String
        # @param Limit: 分页参数，每页返回的数量，取值1~100，默认20
        # @type Limit: Integer
        # @param Offset: 分页参数，页偏移量，从0开始计数，默认0
        # @type Offset: Integer
        # @param UpdateTimeOrder: 指定按更新时间的排序方式，asc=升序, desc=降序
        # @type UpdateTimeOrder: String
        # @param PolicyCountOrder: 指定按绑定策略数目的排序方式，asc=升序, desc=降序
        # @type PolicyCountOrder: String

        attr_accessor :Module, :ViewName, :GroupName, :GroupID, :Limit, :Offset, :UpdateTimeOrder, :PolicyCountOrder
        
        def initialize(_module=nil, viewname=nil, groupname=nil, groupid=nil, limit=nil, offset=nil, updatetimeorder=nil, policycountorder=nil)
          @Module = _module
          @ViewName = viewname
          @GroupName = groupname
          @GroupID = groupid
          @Limit = limit
          @Offset = offset
          @UpdateTimeOrder = updatetimeorder
          @PolicyCountOrder = policycountorder
        end

        def deserialize(params)
          @Module = params['Module']
          @ViewName = params['ViewName']
          @GroupName = params['GroupName']
          @GroupID = params['GroupID']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @UpdateTimeOrder = params['UpdateTimeOrder']
          @PolicyCountOrder = params['PolicyCountOrder']
        end
      end

      # DescribeConditionsTemplateList返回参数结构体
      class DescribeConditionsTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 模板总数
        # @type Total: Integer
        # @param TemplateGroupList: 模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateGroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :TemplateGroupList, :RequestId
        
        def initialize(total=nil, templategrouplist=nil, requestid=nil)
          @Total = total
          @TemplateGroupList = templategrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['TemplateGroupList'].nil?
            @TemplateGroupList = []
            params['TemplateGroupList'].each do |i|
              templategroup_tmp = TemplateGroup.new
              templategroup_tmp.deserialize(i)
              @TemplateGroupList << templategroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDNSConfig请求参数结构体
      class DescribeDNSConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDNSConfig返回参数结构体
      class DescribeDNSConfigResponse < TencentCloud::Common::AbstractModel
        # @param NameServers: DNS 服务器数组
        # @type NameServers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NameServers, :RequestId
        
        def initialize(nameservers=nil, requestid=nil)
          @NameServers = nameservers
          @RequestId = requestid
        end

        def deserialize(params)
          @NameServers = params['NameServers']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExporterIntegrations请求参数结构体
      class DescribeExporterIntegrationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param KubeType: Kubernetes 集群类型，取值如下：
        # <li> 1= 容器集群(TKE) </li>
        # <li> 2=弹性集群<EKS> </li>
        # <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        # @type KubeType: Integer
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Kind: 类型
        # @type Kind: String
        # @param Name: 名字
        # @type Name: String

        attr_accessor :InstanceId, :KubeType, :ClusterId, :Kind, :Name
        
        def initialize(instanceid=nil, kubetype=nil, clusterid=nil, kind=nil, name=nil)
          @InstanceId = instanceid
          @KubeType = kubetype
          @ClusterId = clusterid
          @Kind = kind
          @Name = name
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KubeType = params['KubeType']
          @ClusterId = params['ClusterId']
          @Kind = params['Kind']
          @Name = params['Name']
        end
      end

      # DescribeExporterIntegrations返回参数结构体
      class DescribeExporterIntegrationsResponse < TencentCloud::Common::AbstractModel
        # @param IntegrationSet: 集成配置列表
        # @type IntegrationSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntegrationSet, :RequestId
        
        def initialize(integrationset=nil, requestid=nil)
          @IntegrationSet = integrationset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IntegrationSet'].nil?
            @IntegrationSet = []
            params['IntegrationSet'].each do |i|
              integrationconfiguration_tmp = IntegrationConfiguration.new
              integrationconfiguration_tmp.deserialize(i)
              @IntegrationSet << integrationconfiguration_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaChannels请求参数结构体
      class DescribeGrafanaChannelsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 查询数量
        # @type Limit: Integer
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param ChannelIds: 渠道 ID
        # @type ChannelIds: Array
        # @param ChannelState: 状态
        # @type ChannelState: Integer

        attr_accessor :InstanceId, :Offset, :Limit, :ChannelName, :ChannelIds, :ChannelState
        
        def initialize(instanceid=nil, offset=nil, limit=nil, channelname=nil, channelids=nil, channelstate=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @ChannelName = channelname
          @ChannelIds = channelids
          @ChannelState = channelstate
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ChannelName = params['ChannelName']
          @ChannelIds = params['ChannelIds']
          @ChannelState = params['ChannelState']
        end
      end

      # DescribeGrafanaChannels返回参数结构体
      class DescribeGrafanaChannelsResponse < TencentCloud::Common::AbstractModel
        # @param NotificationChannelSet: 告警通道数组
        # @type NotificationChannelSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotificationChannelSet, :RequestId
        
        def initialize(notificationchannelset=nil, requestid=nil)
          @NotificationChannelSet = notificationchannelset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotificationChannelSet'].nil?
            @NotificationChannelSet = []
            params['NotificationChannelSet'].each do |i|
              grafanachannel_tmp = GrafanaChannel.new
              grafanachannel_tmp.deserialize(i)
              @NotificationChannelSet << grafanachannel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaConfig请求参数结构体
      class DescribeGrafanaConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeGrafanaConfig返回参数结构体
      class DescribeGrafanaConfigResponse < TencentCloud::Common::AbstractModel
        # @param Config: JSON 编码后的字符串
        # @type Config: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Config, :RequestId
        
        def initialize(config=nil, requestid=nil)
          @Config = config
          @RequestId = requestid
        end

        def deserialize(params)
          @Config = params['Config']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaEnvironments请求参数结构体
      class DescribeGrafanaEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeGrafanaEnvironments返回参数结构体
      class DescribeGrafanaEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param Envs: 环境变量字符串
        # @type Envs: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Envs, :RequestId
        
        def initialize(envs=nil, requestid=nil)
          @Envs = envs
          @RequestId = requestid
        end

        def deserialize(params)
          @Envs = params['Envs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaInstances请求参数结构体
      class DescribeGrafanaInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询数量
        # @type Limit: Integer
        # @param InstanceIds: 实例 ID 数组
        # @type InstanceIds: Array
        # @param InstanceName: 实例名，支持前缀模糊搜索
        # @type InstanceName: String
        # @param InstanceStatus: 查询状态
        # @type InstanceStatus: Array
        # @param TagFilters: 标签过滤数组
        # @type TagFilters: Array

        attr_accessor :Offset, :Limit, :InstanceIds, :InstanceName, :InstanceStatus, :TagFilters
        
        def initialize(offset=nil, limit=nil, instanceids=nil, instancename=nil, instancestatus=nil, tagfilters=nil)
          @Offset = offset
          @Limit = limit
          @InstanceIds = instanceids
          @InstanceName = instancename
          @InstanceStatus = instancestatus
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIds = params['InstanceIds']
          @InstanceName = params['InstanceName']
          @InstanceStatus = params['InstanceStatus']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              prometheustag_tmp = PrometheusTag.new
              prometheustag_tmp.deserialize(i)
              @TagFilters << prometheustag_tmp
            end
          end
        end
      end

      # DescribeGrafanaInstances返回参数结构体
      class DescribeGrafanaInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 已废弃，请使用 Instances
        # @type InstanceSet: Array
        # @param TotalCount: 符合查询条件的实例总数
        # @type TotalCount: Integer
        # @param Instances: 实例列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :Instances, :RequestId
        
        def initialize(instanceset=nil, totalcount=nil, instances=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              grafanainstanceinfo_tmp = GrafanaInstanceInfo.new
              grafanainstanceinfo_tmp.deserialize(i)
              @InstanceSet << grafanainstanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              grafanainstanceinfo_tmp = GrafanaInstanceInfo.new
              grafanainstanceinfo_tmp.deserialize(i)
              @Instances << grafanainstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaIntegrations请求参数结构体
      class DescribeGrafanaIntegrationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param IntegrationId: 集成 ID
        # @type IntegrationId: String
        # @param Kind: 类型
        # @type Kind: String

        attr_accessor :InstanceId, :IntegrationId, :Kind
        
        def initialize(instanceid=nil, integrationid=nil, kind=nil)
          @InstanceId = instanceid
          @IntegrationId = integrationid
          @Kind = kind
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IntegrationId = params['IntegrationId']
          @Kind = params['Kind']
        end
      end

      # DescribeGrafanaIntegrations返回参数结构体
      class DescribeGrafanaIntegrationsResponse < TencentCloud::Common::AbstractModel
        # @param IntegrationSet: 集成数组
        # @type IntegrationSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntegrationSet, :RequestId
        
        def initialize(integrationset=nil, requestid=nil)
          @IntegrationSet = integrationset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IntegrationSet'].nil?
            @IntegrationSet = []
            params['IntegrationSet'].each do |i|
              grafanaintegrationconfig_tmp = GrafanaIntegrationConfig.new
              grafanaintegrationconfig_tmp.deserialize(i)
              @IntegrationSet << grafanaintegrationconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaNotificationChannels请求参数结构体
      class DescribeGrafanaNotificationChannelsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 查询数量
        # @type Limit: Integer
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param ChannelIDs: 渠道 ID
        # @type ChannelIDs: Array
        # @param ChannelState: 状态
        # @type ChannelState: Integer

        attr_accessor :InstanceId, :Offset, :Limit, :ChannelName, :ChannelIDs, :ChannelState
        
        def initialize(instanceid=nil, offset=nil, limit=nil, channelname=nil, channelids=nil, channelstate=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @ChannelName = channelname
          @ChannelIDs = channelids
          @ChannelState = channelstate
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ChannelName = params['ChannelName']
          @ChannelIDs = params['ChannelIDs']
          @ChannelState = params['ChannelState']
        end
      end

      # DescribeGrafanaNotificationChannels返回参数结构体
      class DescribeGrafanaNotificationChannelsResponse < TencentCloud::Common::AbstractModel
        # @param NotificationChannelSet: 告警通道数组
        # @type NotificationChannelSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotificationChannelSet, :RequestId
        
        def initialize(notificationchannelset=nil, requestid=nil)
          @NotificationChannelSet = notificationchannelset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotificationChannelSet'].nil?
            @NotificationChannelSet = []
            params['NotificationChannelSet'].each do |i|
              grafananotificationchannel_tmp = GrafanaNotificationChannel.new
              grafananotificationchannel_tmp.deserialize(i)
              @NotificationChannelSet << grafananotificationchannel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGrafanaWhiteList请求参数结构体
      class DescribeGrafanaWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeGrafanaWhiteList返回参数结构体
      class DescribeGrafanaWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param WhiteList: 数组
        # @type WhiteList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhiteList, :RequestId
        
        def initialize(whitelist=nil, requestid=nil)
          @WhiteList = whitelist
          @RequestId = requestid
        end

        def deserialize(params)
          @WhiteList = params['WhiteList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstalledPlugins请求参数结构体
      class DescribeInstalledPluginsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param PluginId: 按插件 ID 过滤
        # @type PluginId: String

        attr_accessor :InstanceId, :PluginId
        
        def initialize(instanceid=nil, pluginid=nil)
          @InstanceId = instanceid
          @PluginId = pluginid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PluginId = params['PluginId']
        end
      end

      # DescribeInstalledPlugins返回参数结构体
      class DescribeInstalledPluginsResponse < TencentCloud::Common::AbstractModel
        # @param PluginSet: 插件列表
        # @type PluginSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PluginSet, :RequestId
        
        def initialize(pluginset=nil, requestid=nil)
          @PluginSet = pluginset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PluginSet'].nil?
            @PluginSet = []
            params['PluginSet'].each do |i|
              grafanaplugin_tmp = GrafanaPlugin.new
              grafanaplugin_tmp.deserialize(i)
              @PluginSet << grafanaplugin_tmp
            end
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
        # @param MonitorTypeInfos: 监控类型详情
        # @type MonitorTypeInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorTypes, :MonitorTypeInfos, :RequestId
        
        def initialize(monitortypes=nil, monitortypeinfos=nil, requestid=nil)
          @MonitorTypes = monitortypes
          @MonitorTypeInfos = monitortypeinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @MonitorTypes = params['MonitorTypes']
          unless params['MonitorTypeInfos'].nil?
            @MonitorTypeInfos = []
            params['MonitorTypeInfos'].each do |i|
              monitortypeinfo_tmp = MonitorTypeInfo.new
              monitortypeinfo_tmp.deserialize(i)
              @MonitorTypeInfos << monitortypeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePluginOverviews请求参数结构体
      class DescribePluginOverviewsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePluginOverviews返回参数结构体
      class DescribePluginOverviewsResponse < TencentCloud::Common::AbstractModel
        # @param PluginSet: 插件列表
        # @type PluginSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PluginSet, :RequestId
        
        def initialize(pluginset=nil, requestid=nil)
          @PluginSet = pluginset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PluginSet'].nil?
            @PluginSet = []
            params['PluginSet'].each do |i|
              grafanaplugin_tmp = GrafanaPlugin.new
              grafanaplugin_tmp.deserialize(i)
              @PluginSet << grafanaplugin_tmp
            end
          end
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
        # @param StartTime: 告警时间段开始时间。范围[0,86400)，作为 UNIX 时间戳转成北京时间后去掉日期，例如7200表示"10:0:0"
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
        # @param Warning: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warning: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupList, :Total, :Warning, :RequestId
        
        def initialize(grouplist=nil, total=nil, warning=nil, requestid=nil)
          @GroupList = grouplist
          @Total = total
          @Warning = warning
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
          @Warning = params['Warning']
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

      # DescribePrometheusAgents请求参数结构体
      class DescribePrometheusAgentsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Name: Agent 名称
        # @type Name: String
        # @param AgentIds: Agent ID 列表
        # @type AgentIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :InstanceId, :Name, :AgentIds, :Offset, :Limit
        
        def initialize(instanceid=nil, name=nil, agentids=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Name = name
          @AgentIds = agentids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @AgentIds = params['AgentIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrometheusAgents返回参数结构体
      class DescribePrometheusAgentsResponse < TencentCloud::Common::AbstractModel
        # @param AgentSet: Agent 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentSet: Array
        # @param TotalCount: Agent 总量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentSet, :TotalCount, :RequestId
        
        def initialize(agentset=nil, totalcount=nil, requestid=nil)
          @AgentSet = agentset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentSet'].nil?
            @AgentSet = []
            params['AgentSet'].each do |i|
              prometheusagent_tmp = PrometheusAgent.new
              prometheusagent_tmp.deserialize(i)
              @AgentSet << prometheusagent_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusInstances请求参数结构体
      class DescribePrometheusInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如：prom-xxxxxxxx。请求的实例的上限为100。
        # @type InstanceIds: Array
        # @param InstanceStatus: 按照【实例状态】进行过滤。
        # <ul>
        # <li>1：正在创建</li>
        # <li>2：运行中</li>
        # <li>3：异常</li>
        # <li>4：重建中</li>
        # <li>5：销毁中</li>
        # <li>6：已停服</li>
        # <li>8：欠费停服中</li>
        # <li>9：欠费已停服</li>
        # </ul>
        # @type InstanceStatus: Array
        # @param InstanceName: 按照【实例名称】进行过滤。
        # @type InstanceName: String
        # @param Zones: 按照【可用区】进行过滤。可用区形如：ap-guangzhou-1。
        # @type Zones: Array
        # @param TagFilters: 按照【标签键值对】进行过滤。tag-key使用具体的标签键进行替换。
        # @type TagFilters: Array
        # @param IPv4Address: 按照【实例的IPv4地址】进行过滤。
        # @type IPv4Address: Array
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param InstanceChargeType: 按照【计费类型】进行过滤。
        # <li>2：包年包月</li>
        # <li>3：按量</li>
        # @type InstanceChargeType: Integer

        attr_accessor :InstanceIds, :InstanceStatus, :InstanceName, :Zones, :TagFilters, :IPv4Address, :Limit, :Offset, :InstanceChargeType
        
        def initialize(instanceids=nil, instancestatus=nil, instancename=nil, zones=nil, tagfilters=nil, ipv4address=nil, limit=nil, offset=nil, instancechargetype=nil)
          @InstanceIds = instanceids
          @InstanceStatus = instancestatus
          @InstanceName = instancename
          @Zones = zones
          @TagFilters = tagfilters
          @IPv4Address = ipv4address
          @Limit = limit
          @Offset = offset
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceStatus = params['InstanceStatus']
          @InstanceName = params['InstanceName']
          @Zones = params['Zones']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              prometheustag_tmp = PrometheusTag.new
              prometheustag_tmp.deserialize(i)
              @TagFilters << prometheustag_tmp
            end
          end
          @IPv4Address = params['IPv4Address']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # DescribePrometheusInstances返回参数结构体
      class DescribePrometheusInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 实例详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :RequestId
        
        def initialize(instanceset=nil, totalcount=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              prometheusinstancesitem_tmp = PrometheusInstancesItem.new
              prometheusinstancesitem_tmp.deserialize(i)
              @InstanceSet << prometheusinstancesitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusScrapeJobs请求参数结构体
      class DescribePrometheusScrapeJobsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param Name: 任务名
        # @type Name: String
        # @param JobIds: 任务 ID 列表
        # @type JobIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :InstanceId, :AgentId, :Name, :JobIds, :Offset, :Limit
        
        def initialize(instanceid=nil, agentid=nil, name=nil, jobids=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @AgentId = agentid
          @Name = name
          @JobIds = jobids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
          @Name = params['Name']
          @JobIds = params['JobIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrometheusScrapeJobs返回参数结构体
      class DescribePrometheusScrapeJobsResponse < TencentCloud::Common::AbstractModel
        # @param ScrapeJobSet: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScrapeJobSet: Array
        # @param TotalCount: 任务总量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScrapeJobSet, :TotalCount, :RequestId
        
        def initialize(scrapejobset=nil, totalcount=nil, requestid=nil)
          @ScrapeJobSet = scrapejobset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScrapeJobSet'].nil?
            @ScrapeJobSet = []
            params['ScrapeJobSet'].each do |i|
              prometheusscrapejob_tmp = PrometheusScrapeJob.new
              prometheusscrapejob_tmp.deserialize(i)
              @ScrapeJobSet << prometheusscrapejob_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordingRules请求参数结构体
      class DescribeRecordingRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param RuleState: 规则状态码，取值如下：
        # <li>1=RuleDeleted</li>
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # @type RuleState: Integer
        # @param Name: 规则名称
        # @type Name: String

        attr_accessor :InstanceId, :Limit, :Offset, :RuleId, :RuleState, :Name
        
        def initialize(instanceid=nil, limit=nil, offset=nil, ruleid=nil, rulestate=nil, name=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @RuleId = ruleid
          @RuleState = rulestate
          @Name = name
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RuleId = params['RuleId']
          @RuleState = params['RuleState']
          @Name = params['Name']
        end
      end

      # DescribeRecordingRules返回参数结构体
      class DescribeRecordingRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 规则组数量
        # @type TotalCount: Integer
        # @param RecordingRuleSet: 规则组详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordingRuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RecordingRuleSet, :RequestId
        
        def initialize(totalcount=nil, recordingruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @RecordingRuleSet = recordingruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RecordingRuleSet'].nil?
            @RecordingRuleSet = []
            params['RecordingRuleSet'].each do |i|
              recordingruleset_tmp = RecordingRuleSet.new
              recordingruleset_tmp.deserialize(i)
              @RecordingRuleSet << recordingruleset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSSOAccount请求参数结构体
      class DescribeSSOAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param UserId: 按账号 UIN 进行过滤
        # @type UserId: String

        attr_accessor :InstanceId, :UserId
        
        def initialize(instanceid=nil, userid=nil)
          @InstanceId = instanceid
          @UserId = userid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserId = params['UserId']
        end
      end

      # DescribeSSOAccount返回参数结构体
      class DescribeSSOAccountResponse < TencentCloud::Common::AbstractModel
        # @param AccountSet: 授权账号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountSet, :RequestId
        
        def initialize(accountset=nil, requestid=nil)
          @AccountSet = accountset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountSet'].nil?
            @AccountSet = []
            params['AccountSet'].each do |i|
              grafanaaccountinfo_tmp = GrafanaAccountInfo.new
              grafanaaccountinfo_tmp.deserialize(i)
              @AccountSet << grafanaaccountinfo_tmp
            end
          end
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
        # @param Period: 统计粒度。默认取值为300，单位为s；可选的值为60、300、3600、86400
        # 受存储时长限制，统计粒度与统计的时间范围有关：
        # 60s：EndTime-StartTime<12小时，且StartTime距当前时间不能超过15天；
        # 300s：EndTime-StartTime<3天，且StartTime距当前时间不能超过31天；
        # 3600s：EndTime-StartTime<30天，且StartTime距当前时间不能超过93天；
        # 86400s：EndTime-StartTime<186天，且StartTime距当前时间不能超过186天。
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

      # DestroyPrometheusInstance请求参数结构体
      class DestroyPrometheusInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，该实例必须先被 terminate
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyPrometheusInstance返回参数结构体
      class DestroyPrometheusInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 策略类型的维度信息
      class DimensionNew < TencentCloud::Common::AbstractModel
        # @param Key: 维度 key 标示，后台英文名
        # @type Key: String
        # @param Name: 维度 key 名称，中英文前台展示名
        # @type Name: String
        # @param IsRequired: 是否必选
        # @type IsRequired: Boolean
        # @param Operators: 支持的操作符列表
        # @type Operators: Array
        # @param IsMultiple: 是否支持多选
        # @type IsMultiple: Boolean
        # @param IsMutable: 创建后是否可以修改
        # @type IsMutable: Boolean
        # @param IsVisible: 是否展示给用户
        # @type IsVisible: Boolean
        # @param CanFilterPolicy: 能否用来过滤策略列表
        # @type CanFilterPolicy: Boolean
        # @param CanFilterHistory: 能否用来过滤告警历史
        # @type CanFilterHistory: Boolean
        # @param CanGroupBy: 能否作为聚合维度
        # @type CanGroupBy: Boolean
        # @param MustGroupBy: 是否必须作为聚合维度
        # @type MustGroupBy: Boolean
        # @param ShowValueReplace: 前端翻译要替换的 key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowValueReplace: String

        attr_accessor :Key, :Name, :IsRequired, :Operators, :IsMultiple, :IsMutable, :IsVisible, :CanFilterPolicy, :CanFilterHistory, :CanGroupBy, :MustGroupBy, :ShowValueReplace
        
        def initialize(key=nil, name=nil, isrequired=nil, operators=nil, ismultiple=nil, ismutable=nil, isvisible=nil, canfilterpolicy=nil, canfilterhistory=nil, cangroupby=nil, mustgroupby=nil, showvaluereplace=nil)
          @Key = key
          @Name = name
          @IsRequired = isrequired
          @Operators = operators
          @IsMultiple = ismultiple
          @IsMutable = ismutable
          @IsVisible = isvisible
          @CanFilterPolicy = canfilterpolicy
          @CanFilterHistory = canfilterhistory
          @CanGroupBy = cangroupby
          @MustGroupBy = mustgroupby
          @ShowValueReplace = showvaluereplace
        end

        def deserialize(params)
          @Key = params['Key']
          @Name = params['Name']
          @IsRequired = params['IsRequired']
          unless params['Operators'].nil?
            @Operators = []
            params['Operators'].each do |i|
              operator_tmp = Operator.new
              operator_tmp.deserialize(i)
              @Operators << operator_tmp
            end
          end
          @IsMultiple = params['IsMultiple']
          @IsMutable = params['IsMutable']
          @IsVisible = params['IsVisible']
          @CanFilterPolicy = params['CanFilterPolicy']
          @CanFilterHistory = params['CanFilterHistory']
          @CanGroupBy = params['CanGroupBy']
          @MustGroupBy = params['MustGroupBy']
          @ShowValueReplace = params['ShowValueReplace']
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

      # EnableGrafanaInternet请求参数结构体
      class EnableGrafanaInternetRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例 ID
        # @type InstanceID: String
        # @param EnableInternet: 开启或关闭
        # @type EnableInternet: Boolean

        attr_accessor :InstanceID, :EnableInternet
        
        def initialize(instanceid=nil, enableinternet=nil)
          @InstanceID = instanceid
          @EnableInternet = enableinternet
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @EnableInternet = params['EnableInternet']
        end
      end

      # EnableGrafanaInternet返回参数结构体
      class EnableGrafanaInternetResponse < TencentCloud::Common::AbstractModel
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

      # EnableGrafanaSSO请求参数结构体
      class EnableGrafanaSSORequest < TencentCloud::Common::AbstractModel
        # @param EnableSSO: 是否开启 SSO
        # @type EnableSSO: Boolean
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :EnableSSO, :InstanceId
        
        def initialize(enablesso=nil, instanceid=nil)
          @EnableSSO = enablesso
          @InstanceId = instanceid
        end

        def deserialize(params)
          @EnableSSO = params['EnableSSO']
          @InstanceId = params['InstanceId']
        end
      end

      # EnableGrafanaSSO返回参数结构体
      class EnableGrafanaSSOResponse < TencentCloud::Common::AbstractModel
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

      # EnableSSOCamCheck请求参数结构体
      class EnableSSOCamCheckRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param EnableSSOCamCheck: 是否开启cam鉴权
        # @type EnableSSOCamCheck: Boolean

        attr_accessor :InstanceId, :EnableSSOCamCheck
        
        def initialize(instanceid=nil, enablessocamcheck=nil)
          @InstanceId = instanceid
          @EnableSSOCamCheck = enablessocamcheck
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EnableSSOCamCheck = params['EnableSSOCamCheck']
        end
      end

      # EnableSSOCamCheck返回参数结构体
      class EnableSSOCamCheckResponse < TencentCloud::Common::AbstractModel
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

      # 事件告警条件
      class EventCondition < TencentCloud::Common::AbstractModel
        # @param AlarmNotifyPeriod: 告警通知频率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmNotifyPeriod: String
        # @param AlarmNotifyType: 重复通知策略预定义（0 - 只告警一次， 1 - 指数告警，2 - 连接告警）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmNotifyType: String
        # @param EventID: 事件ID
        # @type EventID: String
        # @param EventDisplayName: 事件展示名称（对外）
        # @type EventDisplayName: String
        # @param RuleID: 规则ID
        # @type RuleID: String

        attr_accessor :AlarmNotifyPeriod, :AlarmNotifyType, :EventID, :EventDisplayName, :RuleID
        
        def initialize(alarmnotifyperiod=nil, alarmnotifytype=nil, eventid=nil, eventdisplayname=nil, ruleid=nil)
          @AlarmNotifyPeriod = alarmnotifyperiod
          @AlarmNotifyType = alarmnotifytype
          @EventID = eventid
          @EventDisplayName = eventdisplayname
          @RuleID = ruleid
        end

        def deserialize(params)
          @AlarmNotifyPeriod = params['AlarmNotifyPeriod']
          @AlarmNotifyType = params['AlarmNotifyType']
          @EventID = params['EventID']
          @EventDisplayName = params['EventDisplayName']
          @RuleID = params['RuleID']
        end
      end

      # GetMonitorData请求参数结构体
      class GetMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间，如QCE/CVM。各个云产品的详细命名空间说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档
        # @type Namespace: String
        # @param MetricName: 指标名称，如CPUUsage，仅支持单指标拉取。各个云产品的详细指标说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的指标英文名即为MetricName
        # @type MetricName: String
        # @param Instances: 实例对象的维度组合，格式为key-value键值对形式的集合。不同类型的实例字段完全不同，如CVM为[{"Name":"InstanceId","Value":"ins-j0hk02zo"}]，Ckafka为[{"Name":"instanceId","Value":"ckafka-l49k54dd"}]，COS为[{"Name":"appid","Value":"1258344699"},{"Name":"bucket","Value":"rig-1258344699"}]。各个云产品的维度请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的维度列即为维度组合的key，value为key对应的值。单请求最多支持批量拉取10个实例的监控数据。
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

      # GetPrometheusAgentManagementCommand请求参数结构体
      class GetPrometheusAgentManagementCommandRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param AgentId: Prometheus Agent ID
        # @type AgentId: String

        attr_accessor :InstanceId, :AgentId
        
        def initialize(instanceid=nil, agentid=nil)
          @InstanceId = instanceid
          @AgentId = agentid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
        end
      end

      # GetPrometheusAgentManagementCommand返回参数结构体
      class GetPrometheusAgentManagementCommandResponse < TencentCloud::Common::AbstractModel
        # @param Command: Agent 管理命令
        # @type Command: :class:`Tencentcloud::Monitor.v20180724.models.ManagementCommand`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Command, :RequestId
        
        def initialize(command=nil, requestid=nil)
          @Command = command
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Command'].nil?
            @Command = ManagementCommand.new
            @Command.deserialize(params['Command'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Grafana可视化服务 授权账户信息
      class GrafanaAccountInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户账号ID
        # @type UserId: String
        # @param Role: 用户权限
        # @type Role: Array
        # @param Notes: 备注
        # @type Notes: String
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param InstanceId: 实例 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Uin: 用户主账号 UIN
        # @type Uin: String

        attr_accessor :UserId, :Role, :Notes, :CreateAt, :InstanceId, :Uin
        
        def initialize(userid=nil, role=nil, notes=nil, createat=nil, instanceid=nil, uin=nil)
          @UserId = userid
          @Role = role
          @Notes = notes
          @CreateAt = createat
          @InstanceId = instanceid
          @Uin = uin
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['Role'].nil?
            @Role = []
            params['Role'].each do |i|
              grafanaaccountrole_tmp = GrafanaAccountRole.new
              grafanaaccountrole_tmp.deserialize(i)
              @Role << grafanaaccountrole_tmp
            end
          end
          @Notes = params['Notes']
          @CreateAt = params['CreateAt']
          @InstanceId = params['InstanceId']
          @Uin = params['Uin']
        end
      end

      # Grafana可视化服务 账号权限
      class GrafanaAccountRole < TencentCloud::Common::AbstractModel
        # @param Organization: 组织
        # @type Organization: String
        # @param Role: 权限
        # @type Role: String

        attr_accessor :Organization, :Role
        
        def initialize(organization=nil, role=nil)
          @Organization = organization
          @Role = role
        end

        def deserialize(params)
          @Organization = params['Organization']
          @Role = params['Role']
        end
      end

      # Grafana 告警渠道
      class GrafanaChannel < TencentCloud::Common::AbstractModel
        # @param ChannelId: 渠道 ID
        # @type ChannelId: String
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param Receivers: 告警通道模板 ID 数组
        # @type Receivers: Array
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param OrganizationIds: 告警渠道的所有生效组织
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationIds: Array

        attr_accessor :ChannelId, :ChannelName, :Receivers, :CreatedAt, :UpdatedAt, :OrganizationIds
        
        def initialize(channelid=nil, channelname=nil, receivers=nil, createdat=nil, updatedat=nil, organizationids=nil)
          @ChannelId = channelid
          @ChannelName = channelname
          @Receivers = receivers
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @OrganizationIds = organizationids
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @Receivers = params['Receivers']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @OrganizationIds = params['OrganizationIds']
        end
      end

      # 查询 Grafana 实例时的实例类型
      class GrafanaInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetIds: 子网 ID 数组
        # @type SubnetIds: Array
        # @param InternetUrl: Grafana 内网地址
        # @type InternetUrl: String
        # @param InternalUrl: Grafana 公网地址
        # @type InternalUrl: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param InstanceStatus: 运行状态（1:正在创建；2:运行中；3:异常；4:重启中；5:停机中； 6:已停机； 7: 已删除）
        # @type InstanceStatus: Integer
        # @param TagSpecification: 实例的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSpecification: Array
        # @param Zone: 实例的可用区
        # @type Zone: String
        # @param InstanceChargeType: 计费模式（1:包年包月）
        # @type InstanceChargeType: Integer
        # @param VpcName: VPC 名称
        # @type VpcName: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param RegionId: 地域 ID
        # @type RegionId: Integer
        # @param RootUrl: 可访问此实例的完整 URL
        # @type RootUrl: String
        # @param EnableSSO: 是否开启 SSO
        # @type EnableSSO: Boolean
        # @param Version: 版本号
        # @type Version: String
        # @param EnableSSOCamCheck: SSO登录时是否开启cam鉴权
        # @type EnableSSOCamCheck: Boolean

        attr_accessor :InstanceName, :InstanceId, :Region, :VpcId, :SubnetIds, :InternetUrl, :InternalUrl, :CreatedAt, :InstanceStatus, :TagSpecification, :Zone, :InstanceChargeType, :VpcName, :SubnetName, :RegionId, :RootUrl, :EnableSSO, :Version, :EnableSSOCamCheck
        
        def initialize(instancename=nil, instanceid=nil, region=nil, vpcid=nil, subnetids=nil, interneturl=nil, internalurl=nil, createdat=nil, instancestatus=nil, tagspecification=nil, zone=nil, instancechargetype=nil, vpcname=nil, subnetname=nil, regionid=nil, rooturl=nil, enablesso=nil, version=nil, enablessocamcheck=nil)
          @InstanceName = instancename
          @InstanceId = instanceid
          @Region = region
          @VpcId = vpcid
          @SubnetIds = subnetids
          @InternetUrl = interneturl
          @InternalUrl = internalurl
          @CreatedAt = createdat
          @InstanceStatus = instancestatus
          @TagSpecification = tagspecification
          @Zone = zone
          @InstanceChargeType = instancechargetype
          @VpcName = vpcname
          @SubnetName = subnetname
          @RegionId = regionid
          @RootUrl = rooturl
          @EnableSSO = enablesso
          @Version = version
          @EnableSSOCamCheck = enablessocamcheck
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @InternetUrl = params['InternetUrl']
          @InternalUrl = params['InternalUrl']
          @CreatedAt = params['CreatedAt']
          @InstanceStatus = params['InstanceStatus']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              prometheustag_tmp = PrometheusTag.new
              prometheustag_tmp.deserialize(i)
              @TagSpecification << prometheustag_tmp
            end
          end
          @Zone = params['Zone']
          @InstanceChargeType = params['InstanceChargeType']
          @VpcName = params['VpcName']
          @SubnetName = params['SubnetName']
          @RegionId = params['RegionId']
          @RootUrl = params['RootUrl']
          @EnableSSO = params['EnableSSO']
          @Version = params['Version']
          @EnableSSOCamCheck = params['EnableSSOCamCheck']
        end
      end

      # Grafana 集成实例配置
      class GrafanaIntegrationConfig < TencentCloud::Common::AbstractModel
        # @param IntegrationId: 集成 ID
        # @type IntegrationId: String
        # @param Kind: 集成类型
        # @type Kind: String
        # @param Content: 集成内容
        # @type Content: String
        # @param Description: 集成描述
        # @type Description: String
        # @param GrafanaURL: Grafana 跳转地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaURL: String

        attr_accessor :IntegrationId, :Kind, :Content, :Description, :GrafanaURL
        
        def initialize(integrationid=nil, kind=nil, content=nil, description=nil, grafanaurl=nil)
          @IntegrationId = integrationid
          @Kind = kind
          @Content = content
          @Description = description
          @GrafanaURL = grafanaurl
        end

        def deserialize(params)
          @IntegrationId = params['IntegrationId']
          @Kind = params['Kind']
          @Content = params['Content']
          @Description = params['Description']
          @GrafanaURL = params['GrafanaURL']
        end
      end

      # Grafana 告警渠道
      class GrafanaNotificationChannel < TencentCloud::Common::AbstractModel
        # @param ChannelId: 渠道 ID
        # @type ChannelId: String
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param Receivers: 告警通道模板 ID 数组
        # @type Receivers: Array
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param OrgId: 默认生效组织，已废弃，请使用 OrganizationIds
        # @type OrgId: String
        # @param ExtraOrgIds: 额外生效组织，已废弃，请使用 OrganizationIds
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraOrgIds: Array
        # @param OrgIds: 生效组织，已废弃，请使用 OrganizationIds
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgIds: String
        # @param OrganizationIds: 告警渠道的所有生效组织
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationIds: String

        attr_accessor :ChannelId, :ChannelName, :Receivers, :CreatedAt, :UpdatedAt, :OrgId, :ExtraOrgIds, :OrgIds, :OrganizationIds
        
        def initialize(channelid=nil, channelname=nil, receivers=nil, createdat=nil, updatedat=nil, orgid=nil, extraorgids=nil, orgids=nil, organizationids=nil)
          @ChannelId = channelid
          @ChannelName = channelname
          @Receivers = receivers
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @OrgId = orgid
          @ExtraOrgIds = extraorgids
          @OrgIds = orgids
          @OrganizationIds = organizationids
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @Receivers = params['Receivers']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @OrgId = params['OrgId']
          @ExtraOrgIds = params['ExtraOrgIds']
          @OrgIds = params['OrgIds']
          @OrganizationIds = params['OrganizationIds']
        end
      end

      # Grafana 插件
      class GrafanaPlugin < TencentCloud::Common::AbstractModel
        # @param PluginId: Grafana 插件 ID
        # @type PluginId: String
        # @param Version: Grafana 插件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :PluginId, :Version
        
        def initialize(pluginid=nil, version=nil)
          @PluginId = pluginid
          @Version = version
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @Version = params['Version']
        end
      end

      # InstallPlugins请求参数结构体
      class InstallPluginsRequest < TencentCloud::Common::AbstractModel
        # @param Plugins: 插件信息
        # @type Plugins: Array
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :Plugins, :InstanceId
        
        def initialize(plugins=nil, instanceid=nil)
          @Plugins = plugins
          @InstanceId = instanceid
        end

        def deserialize(params)
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              grafanaplugin_tmp = GrafanaPlugin.new
              grafanaplugin_tmp.deserialize(i)
              @Plugins << grafanaplugin_tmp
            end
          end
          @InstanceId = params['InstanceId']
        end
      end

      # InstallPlugins返回参数结构体
      class InstallPluginsResponse < TencentCloud::Common::AbstractModel
        # @param PluginIds: 已安装插件 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PluginIds, :RequestId
        
        def initialize(pluginids=nil, requestid=nil)
          @PluginIds = pluginids
          @RequestId = requestid
        end

        def deserialize(params)
          @PluginIds = params['PluginIds']
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

      # export 集成配置
      class IntegrationConfiguration < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # @type Name: String
        # @param Kind: 类型
        # @type Kind: String
        # @param Content: 内容
        # @type Content: String
        # @param Status: 状态
        # @type Status: Integer
        # @param Category: 实例类型
        # @type Category: String
        # @param InstanceDesc: 实例描述
        # @type InstanceDesc: String
        # @param GrafanaDashboardURL: dashboard 的 URL
        # @type GrafanaDashboardURL: String

        attr_accessor :Name, :Kind, :Content, :Status, :Category, :InstanceDesc, :GrafanaDashboardURL
        
        def initialize(name=nil, kind=nil, content=nil, status=nil, category=nil, instancedesc=nil, grafanadashboardurl=nil)
          @Name = name
          @Kind = kind
          @Content = content
          @Status = status
          @Category = category
          @InstanceDesc = instancedesc
          @GrafanaDashboardURL = grafanadashboardurl
        end

        def deserialize(params)
          @Name = params['Name']
          @Kind = params['Kind']
          @Content = params['Content']
          @Status = params['Status']
          @Category = params['Category']
          @InstanceDesc = params['InstanceDesc']
          @GrafanaDashboardURL = params['GrafanaDashboardURL']
        end
      end

      # Prometheus Agent 管理命令行
      class ManagementCommand < TencentCloud::Common::AbstractModel
        # @param Install: Agent 安装命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Install: String
        # @param Restart: Agent 重启命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Restart: String
        # @param Stop: Agent 停止命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stop: String
        # @param StatusCheck: Agent 状态检测命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCheck: String
        # @param LogCheck: Agent 日志检测命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogCheck: String

        attr_accessor :Install, :Restart, :Stop, :StatusCheck, :LogCheck
        
        def initialize(install=nil, restart=nil, stop=nil, statuscheck=nil, logcheck=nil)
          @Install = install
          @Restart = restart
          @Stop = stop
          @StatusCheck = statuscheck
          @LogCheck = logcheck
        end

        def deserialize(params)
          @Install = params['Install']
          @Restart = params['Restart']
          @Stop = params['Stop']
          @StatusCheck = params['StatusCheck']
          @LogCheck = params['LogCheck']
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
        # @param IsAdvanced: 是否为高级指标。1是 0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAdvanced: Integer
        # @param IsOpen: 高级指标是否开通。1是 0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOpen: Integer
        # @param ProductId: 集成中心产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer

        attr_accessor :Namespace, :MetricName, :Description, :Min, :Max, :Dimensions, :Unit, :MetricConfig, :IsAdvanced, :IsOpen, :ProductId
        
        def initialize(namespace=nil, metricname=nil, description=nil, min=nil, max=nil, dimensions=nil, unit=nil, metricconfig=nil, isadvanced=nil, isopen=nil, productid=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Description = description
          @Min = min
          @Max = max
          @Dimensions = dimensions
          @Unit = unit
          @MetricConfig = metricconfig
          @IsAdvanced = isadvanced
          @IsOpen = isopen
          @ProductId = productid
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
          @IsAdvanced = params['IsAdvanced']
          @IsOpen = params['IsOpen']
          @ProductId = params['ProductId']
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
        # @param MetricCName: 指标中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricCName: String
        # @param MetricEName: 指标英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricEName: String

        attr_accessor :Namespace, :MetricName, :Unit, :UnitCname, :Period, :Periods, :Meaning, :Dimensions, :MetricCName, :MetricEName
        
        def initialize(namespace=nil, metricname=nil, unit=nil, unitcname=nil, period=nil, periods=nil, meaning=nil, dimensions=nil, metriccname=nil, metricename=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Unit = unit
          @UnitCname = unitcname
          @Period = period
          @Periods = periods
          @Meaning = meaning
          @Dimensions = dimensions
          @MetricCName = metriccname
          @MetricEName = metricename
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
          @MetricCName = params['MetricCName']
          @MetricEName = params['MetricEName']
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
        # @param CLSNotices: 告警通知推送到CLS服务 最多1个
        # @type CLSNotices: Array

        attr_accessor :Module, :Name, :NoticeType, :NoticeLanguage, :NoticeId, :UserNotices, :URLNotices, :CLSNotices
        
        def initialize(_module=nil, name=nil, noticetype=nil, noticelanguage=nil, noticeid=nil, usernotices=nil, urlnotices=nil, clsnotices=nil)
          @Module = _module
          @Name = name
          @NoticeType = noticetype
          @NoticeLanguage = noticelanguage
          @NoticeId = noticeid
          @UserNotices = usernotices
          @URLNotices = urlnotices
          @CLSNotices = clsnotices
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
          unless params['CLSNotices'].nil?
            @CLSNotices = []
            params['CLSNotices'].each do |i|
              clsnotice_tmp = CLSNotice.new
              clsnotice_tmp.deserialize(i)
              @CLSNotices << clsnotice_tmp
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
        # @param Filter: 全局过滤条件
        # @type Filter: :class:`Tencentcloud::Monitor.v20180724.models.AlarmPolicyFilter`
        # @param GroupBy: 聚合维度列表，指定按哪些维度 key 来做 group by
        # @type GroupBy: Array

        attr_accessor :Module, :PolicyId, :ConditionTemplateId, :Condition, :EventCondition, :Filter, :GroupBy
        
        def initialize(_module=nil, policyid=nil, conditiontemplateid=nil, condition=nil, eventcondition=nil, filter=nil, groupby=nil)
          @Module = _module
          @PolicyId = policyid
          @ConditionTemplateId = conditiontemplateid
          @Condition = condition
          @EventCondition = eventcondition
          @Filter = filter
          @GroupBy = groupby
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
          unless params['Filter'].nil?
            @Filter = AlarmPolicyFilter.new
            @Filter.deserialize(params['Filter'])
          end
          @GroupBy = params['GroupBy']
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
        # @param Module: 模块名，这里填“monitor”。
        # @type Module: String
        # @param PolicyId: 告警策略 ID，如果该参数与PolicyIds参数同时存在，则以PolicyIds为准。
        # @type PolicyId: String
        # @param NoticeIds: 告警通知模板 ID 列表。
        # @type NoticeIds: Array
        # @param PolicyIds: 告警策略ID数组，支持给多个告警策略批量绑定通知模板。最多30个。
        # @type PolicyIds: Array

        attr_accessor :Module, :PolicyId, :NoticeIds, :PolicyIds
        
        def initialize(_module=nil, policyid=nil, noticeids=nil, policyids=nil)
          @Module = _module
          @PolicyId = policyid
          @NoticeIds = noticeids
          @PolicyIds = policyids
        end

        def deserialize(params)
          @Module = params['Module']
          @PolicyId = params['PolicyId']
          @NoticeIds = params['NoticeIds']
          @PolicyIds = params['PolicyIds']
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

      # ModifyGrafanaInstance请求参数结构体
      class ModifyGrafanaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName
        
        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyGrafanaInstance返回参数结构体
      class ModifyGrafanaInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusInstanceAttributes请求参数结构体
      class ModifyPrometheusInstanceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param DataRetentionTime: 存储时长（取值为 15、30、45。此参数不适用于包年包月实例）
        # @type DataRetentionTime: Integer

        attr_accessor :InstanceName, :InstanceId, :DataRetentionTime
        
        def initialize(instancename=nil, instanceid=nil, dataretentiontime=nil)
          @InstanceName = instancename
          @InstanceId = instanceid
          @DataRetentionTime = dataretentiontime
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @DataRetentionTime = params['DataRetentionTime']
        end
      end

      # ModifyPrometheusInstanceAttributes返回参数结构体
      class ModifyPrometheusInstanceAttributesResponse < TencentCloud::Common::AbstractModel
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

      # 监控类型详细信息
      class MonitorTypeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 监控类型ID
        # @type Id: String
        # @param Name: 监控类型
        # @type Name: String
        # @param SortId: 排列顺序
        # @type SortId: Integer

        attr_accessor :Id, :Name, :SortId
        
        def initialize(id=nil, name=nil, sortid=nil)
          @Id = id
          @Name = name
          @SortId = sortid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @SortId = params['SortId']
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

      # 维度支持的操作符信息
      class Operator < TencentCloud::Common::AbstractModel
        # @param Id: 运算符标识
        # @type Id: String
        # @param Name: 运算符展示名
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

      # 策略组信息
      class PolicyGroup < TencentCloud::Common::AbstractModel
        # @param CanSetDefault: 是否可设为默认告警策略
        # @type CanSetDefault: Boolean
        # @param GroupID: 告警策略组ID
        # @type GroupID: Integer
        # @param GroupName: 告警策略组名称
        # @type GroupName: String
        # @param InsertTime: 创建时间
        # @type InsertTime: Integer
        # @param IsDefault: 是否为默认告警策略
        # @type IsDefault: Integer
        # @param Enable: 告警策略启用状态
        # @type Enable: Boolean
        # @param LastEditUin: 最后修改人UIN
        # @type LastEditUin: Integer
        # @param NoShieldedInstanceCount: 未屏蔽的实例数
        # @type NoShieldedInstanceCount: Integer
        # @param ParentGroupID: 父策略组ID
        # @type ParentGroupID: Integer
        # @param ProjectID: 所属项目ID
        # @type ProjectID: Integer
        # @param ReceiverInfos: 告警接收对象信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverInfos: Array
        # @param Remark: 备注信息
        # @type Remark: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: Integer
        # @param TotalInstanceCount: 总绑定实例数
        # @type TotalInstanceCount: Integer
        # @param ViewName: 视图
        # @type ViewName: String
        # @param IsUnionRule: 是否为与关系规则
        # @type IsUnionRule: Integer

        attr_accessor :CanSetDefault, :GroupID, :GroupName, :InsertTime, :IsDefault, :Enable, :LastEditUin, :NoShieldedInstanceCount, :ParentGroupID, :ProjectID, :ReceiverInfos, :Remark, :UpdateTime, :TotalInstanceCount, :ViewName, :IsUnionRule
        
        def initialize(cansetdefault=nil, groupid=nil, groupname=nil, inserttime=nil, isdefault=nil, enable=nil, lastedituin=nil, noshieldedinstancecount=nil, parentgroupid=nil, projectid=nil, receiverinfos=nil, remark=nil, updatetime=nil, totalinstancecount=nil, viewname=nil, isunionrule=nil)
          @CanSetDefault = cansetdefault
          @GroupID = groupid
          @GroupName = groupname
          @InsertTime = inserttime
          @IsDefault = isdefault
          @Enable = enable
          @LastEditUin = lastedituin
          @NoShieldedInstanceCount = noshieldedinstancecount
          @ParentGroupID = parentgroupid
          @ProjectID = projectid
          @ReceiverInfos = receiverinfos
          @Remark = remark
          @UpdateTime = updatetime
          @TotalInstanceCount = totalinstancecount
          @ViewName = viewname
          @IsUnionRule = isunionrule
        end

        def deserialize(params)
          @CanSetDefault = params['CanSetDefault']
          @GroupID = params['GroupID']
          @GroupName = params['GroupName']
          @InsertTime = params['InsertTime']
          @IsDefault = params['IsDefault']
          @Enable = params['Enable']
          @LastEditUin = params['LastEditUin']
          @NoShieldedInstanceCount = params['NoShieldedInstanceCount']
          @ParentGroupID = params['ParentGroupID']
          @ProjectID = params['ProjectID']
          unless params['ReceiverInfos'].nil?
            @ReceiverInfos = []
            params['ReceiverInfos'].each do |i|
              policygroupreceiverinfo_tmp = PolicyGroupReceiverInfo.new
              policygroupreceiverinfo_tmp.deserialize(i)
              @ReceiverInfos << policygroupreceiverinfo_tmp
            end
          end
          @Remark = params['Remark']
          @UpdateTime = params['UpdateTime']
          @TotalInstanceCount = params['TotalInstanceCount']
          @ViewName = params['ViewName']
          @IsUnionRule = params['IsUnionRule']
        end
      end

      # 2018版策略模板列表接收人信息
      class PolicyGroupReceiverInfo < TencentCloud::Common::AbstractModel
        # @param EndTime: 有效时段结束时间
        # @type EndTime: Integer
        # @param NeedSendNotice: 是否需要发送通知
        # @type NeedSendNotice: Integer
        # @param NotifyWay: 告警接收渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyWay: Array
        # @param PersonInterval: 电话告警对个人间隔（秒）
        # @type PersonInterval: Integer
        # @param ReceiverGroupList: 消息接收组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverGroupList: Array
        # @param ReceiverType: 接受者类型
        # @type ReceiverType: String
        # @param ReceiverUserList: 接收人列表。通过平台接口查询到的接收人id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverUserList: Array
        # @param RecoverNotify: 告警恢复通知方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecoverNotify: Array
        # @param RoundInterval: 电话告警每轮间隔（秒）
        # @type RoundInterval: Integer
        # @param RoundNumber: 电话告警轮数
        # @type RoundNumber: Integer
        # @param SendFor: 电话告警通知时机。可选"OCCUR"(告警时通知),"RECOVER"(恢复时通知)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendFor: Array
        # @param StartTime: 有效时段开始时间
        # @type StartTime: Integer
        # @param UIDList: 电话告警接收者uid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UIDList: Array

        attr_accessor :EndTime, :NeedSendNotice, :NotifyWay, :PersonInterval, :ReceiverGroupList, :ReceiverType, :ReceiverUserList, :RecoverNotify, :RoundInterval, :RoundNumber, :SendFor, :StartTime, :UIDList
        
        def initialize(endtime=nil, needsendnotice=nil, notifyway=nil, personinterval=nil, receivergrouplist=nil, receivertype=nil, receiveruserlist=nil, recovernotify=nil, roundinterval=nil, roundnumber=nil, sendfor=nil, starttime=nil, uidlist=nil)
          @EndTime = endtime
          @NeedSendNotice = needsendnotice
          @NotifyWay = notifyway
          @PersonInterval = personinterval
          @ReceiverGroupList = receivergrouplist
          @ReceiverType = receivertype
          @ReceiverUserList = receiveruserlist
          @RecoverNotify = recovernotify
          @RoundInterval = roundinterval
          @RoundNumber = roundnumber
          @SendFor = sendfor
          @StartTime = starttime
          @UIDList = uidlist
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @NeedSendNotice = params['NeedSendNotice']
          @NotifyWay = params['NotifyWay']
          @PersonInterval = params['PersonInterval']
          @ReceiverGroupList = params['ReceiverGroupList']
          @ReceiverType = params['ReceiverType']
          @ReceiverUserList = params['ReceiverUserList']
          @RecoverNotify = params['RecoverNotify']
          @RoundInterval = params['RoundInterval']
          @RoundNumber = params['RoundNumber']
          @SendFor = params['SendFor']
          @StartTime = params['StartTime']
          @UIDList = params['UIDList']
        end
      end

      # 策略标签
      class PolicyTag < TencentCloud::Common::AbstractModel
        # @param Key: 标签Key
        # @type Key: String
        # @param Value: 标签Value
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

      # prometheus agent
      class PrometheusAgent < TencentCloud::Common::AbstractModel
        # @param Name: Agent 名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Ipv4: Agent IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv4: String
        # @param HeartbeatTime: 心跳时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeartbeatTime: String
        # @param LastError: 最近一次错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastError: String
        # @param AgentVersion: Agent 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentVersion: String
        # @param Status: Agent 状态
        # @type Status: Integer

        attr_accessor :Name, :AgentId, :InstanceId, :Ipv4, :HeartbeatTime, :LastError, :AgentVersion, :Status
        
        def initialize(name=nil, agentid=nil, instanceid=nil, ipv4=nil, heartbeattime=nil, lasterror=nil, agentversion=nil, status=nil)
          @Name = name
          @AgentId = agentid
          @InstanceId = instanceid
          @Ipv4 = ipv4
          @HeartbeatTime = heartbeattime
          @LastError = lasterror
          @AgentVersion = agentversion
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @AgentId = params['AgentId']
          @InstanceId = params['InstanceId']
          @Ipv4 = params['Ipv4']
          @HeartbeatTime = params['HeartbeatTime']
          @LastError = params['LastError']
          @AgentVersion = params['AgentVersion']
          @Status = params['Status']
        end
      end

      # 实例的授权信息
      class PrometheusInstanceGrantInfo < TencentCloud::Common::AbstractModel
        # @param HasChargeOperation: 是否有计费操作权限(1=有，2=无)
        # @type HasChargeOperation: Integer
        # @param HasVpcDisplay: 是否显示VPC信息的权限(1=有，2=无)
        # @type HasVpcDisplay: Integer
        # @param HasGrafanaStatusChange: 是否可修改Grafana的状态(1=有，2=无)
        # @type HasGrafanaStatusChange: Integer
        # @param HasAgentManage: 是否有管理agent的权限(1=有，2=无)
        # @type HasAgentManage: Integer
        # @param HasTkeManage: 是否有管理TKE集成的权限(1=有，2=无)
        # @type HasTkeManage: Integer
        # @param HasApiOperation: 是否显示API等信息(1=有, 2=无)
        # @type HasApiOperation: Integer

        attr_accessor :HasChargeOperation, :HasVpcDisplay, :HasGrafanaStatusChange, :HasAgentManage, :HasTkeManage, :HasApiOperation
        
        def initialize(haschargeoperation=nil, hasvpcdisplay=nil, hasgrafanastatuschange=nil, hasagentmanage=nil, hastkemanage=nil, hasapioperation=nil)
          @HasChargeOperation = haschargeoperation
          @HasVpcDisplay = hasvpcdisplay
          @HasGrafanaStatusChange = hasgrafanastatuschange
          @HasAgentManage = hasagentmanage
          @HasTkeManage = hastkemanage
          @HasApiOperation = hasapioperation
        end

        def deserialize(params)
          @HasChargeOperation = params['HasChargeOperation']
          @HasVpcDisplay = params['HasVpcDisplay']
          @HasGrafanaStatusChange = params['HasGrafanaStatusChange']
          @HasAgentManage = params['HasAgentManage']
          @HasTkeManage = params['HasTkeManage']
          @HasApiOperation = params['HasApiOperation']
        end
      end

      # Prometheus 服务响应体
      class PrometheusInstancesItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceChargeType: 实例计费模式。取值范围：
        # <ul>
        # <li>2：包年包月</li>
        # <li>3：按量</li>
        # </ul>
        # @type InstanceChargeType: Integer
        # @param RegionId: 地域 ID
        # @type RegionId: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网 ID
        # @type SubnetId: String
        # @param DataRetentionTime: 存储周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataRetentionTime: Integer
        # @param InstanceStatus: 实例业务状态。取值范围：
        # <ul>
        # <li>1：正在创建</li>
        # <li>2：运行中</li>
        # <li>3：异常</li>
        # <li>4：重建中</li>
        # <li>5：销毁中</li>
        # <li>6：已停服</li>
        # <li>8：欠费停服中</li>
        # <li>9：欠费已停服</li>
        # </ul>
        # @type InstanceStatus: Integer
        # @param GrafanaURL: Grafana 面板 URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaURL: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param EnableGrafana: 是否开启 Grafana
        # <li>0：不开启</li>
        # <li>1：开启</li>
        # @type EnableGrafana: Integer
        # @param IPv4Address: 实例IPV4地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv4Address: String
        # @param TagSpecification: 实例关联的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSpecification: Array
        # @param ExpireTime: 购买的实例过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param ChargeStatus: 计费状态
        # <ul>
        # <li>1：正常</li>
        # <li>2：过期</li>
        # <li>3：销毁</li>
        # <li>4：分配中</li>
        # <li>5：分配失败</li>
        # </ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeStatus: Integer
        # @param SpecName: 规格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param AutoRenewFlag: 自动续费标记
        # <ul>
        # <li>0：不自动续费</li>
        # <li>1：开启自动续费</li>
        # <li>2：禁止自动续费</li>
        # <li>-1：无效</ii>
        # </ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param IsNearExpire: 是否快过期
        # <ul>
        # <li>0：否</li>
        # <li>1：快过期</li>
        # </ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNearExpire: Integer
        # @param AuthToken: 数据写入需要的 Token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthToken: String
        # @param RemoteWrite: Prometheus Remote Write 的地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoteWrite: String
        # @param ApiRootPath: Prometheus HTTP Api 根地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiRootPath: String
        # @param ProxyAddress: Proxy 的地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyAddress: String
        # @param GrafanaStatus: Grafana 运行状态
        # <ul>
        # <li>1：正在创建</li>
        # <li>2：运行中</li>
        # <li>3：异常</li>
        # <li>4：重启中</li>
        # <li>5：销毁中</li>
        # <li>6：已停机</li>
        # <li>7：已删除</li>
        # </ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaStatus: Integer
        # @param GrafanaIpWhiteList: Grafana IP 白名单列表，使用英文分号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaIpWhiteList: String
        # @param Grant: 实例的授权信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grant: :class:`Tencentcloud::Monitor.v20180724.models.PrometheusInstanceGrantInfo`
        # @param GrafanaInstanceId: 绑定的 Grafana 实例 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaInstanceId: String
        # @param AlertRuleLimit: 告警规则限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRuleLimit: Integer
        # @param RecordingRuleLimit: 预聚合规则限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordingRuleLimit: Integer

        attr_accessor :InstanceId, :InstanceName, :InstanceChargeType, :RegionId, :Zone, :VpcId, :SubnetId, :DataRetentionTime, :InstanceStatus, :GrafanaURL, :CreatedAt, :EnableGrafana, :IPv4Address, :TagSpecification, :ExpireTime, :ChargeStatus, :SpecName, :AutoRenewFlag, :IsNearExpire, :AuthToken, :RemoteWrite, :ApiRootPath, :ProxyAddress, :GrafanaStatus, :GrafanaIpWhiteList, :Grant, :GrafanaInstanceId, :AlertRuleLimit, :RecordingRuleLimit
        
        def initialize(instanceid=nil, instancename=nil, instancechargetype=nil, regionid=nil, zone=nil, vpcid=nil, subnetid=nil, dataretentiontime=nil, instancestatus=nil, grafanaurl=nil, createdat=nil, enablegrafana=nil, ipv4address=nil, tagspecification=nil, expiretime=nil, chargestatus=nil, specname=nil, autorenewflag=nil, isnearexpire=nil, authtoken=nil, remotewrite=nil, apirootpath=nil, proxyaddress=nil, grafanastatus=nil, grafanaipwhitelist=nil, grant=nil, grafanainstanceid=nil, alertrulelimit=nil, recordingrulelimit=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceChargeType = instancechargetype
          @RegionId = regionid
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @DataRetentionTime = dataretentiontime
          @InstanceStatus = instancestatus
          @GrafanaURL = grafanaurl
          @CreatedAt = createdat
          @EnableGrafana = enablegrafana
          @IPv4Address = ipv4address
          @TagSpecification = tagspecification
          @ExpireTime = expiretime
          @ChargeStatus = chargestatus
          @SpecName = specname
          @AutoRenewFlag = autorenewflag
          @IsNearExpire = isnearexpire
          @AuthToken = authtoken
          @RemoteWrite = remotewrite
          @ApiRootPath = apirootpath
          @ProxyAddress = proxyaddress
          @GrafanaStatus = grafanastatus
          @GrafanaIpWhiteList = grafanaipwhitelist
          @Grant = grant
          @GrafanaInstanceId = grafanainstanceid
          @AlertRuleLimit = alertrulelimit
          @RecordingRuleLimit = recordingrulelimit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceChargeType = params['InstanceChargeType']
          @RegionId = params['RegionId']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DataRetentionTime = params['DataRetentionTime']
          @InstanceStatus = params['InstanceStatus']
          @GrafanaURL = params['GrafanaURL']
          @CreatedAt = params['CreatedAt']
          @EnableGrafana = params['EnableGrafana']
          @IPv4Address = params['IPv4Address']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              prometheustag_tmp = PrometheusTag.new
              prometheustag_tmp.deserialize(i)
              @TagSpecification << prometheustag_tmp
            end
          end
          @ExpireTime = params['ExpireTime']
          @ChargeStatus = params['ChargeStatus']
          @SpecName = params['SpecName']
          @AutoRenewFlag = params['AutoRenewFlag']
          @IsNearExpire = params['IsNearExpire']
          @AuthToken = params['AuthToken']
          @RemoteWrite = params['RemoteWrite']
          @ApiRootPath = params['ApiRootPath']
          @ProxyAddress = params['ProxyAddress']
          @GrafanaStatus = params['GrafanaStatus']
          @GrafanaIpWhiteList = params['GrafanaIpWhiteList']
          unless params['Grant'].nil?
            @Grant = PrometheusInstanceGrantInfo.new
            @Grant.deserialize(params['Grant'])
          end
          @GrafanaInstanceId = params['GrafanaInstanceId']
          @AlertRuleLimit = params['AlertRuleLimit']
          @RecordingRuleLimit = params['RecordingRuleLimit']
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

      # Prometheus 抓取任务
      class PrometheusScrapeJob < TencentCloud::Common::AbstractModel
        # @param Name: 任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param JobId: 任务 ID
        # @type JobId: String
        # @param Config: 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: String

        attr_accessor :Name, :AgentId, :JobId, :Config
        
        def initialize(name=nil, agentid=nil, jobid=nil, config=nil)
          @Name = name
          @AgentId = agentid
          @JobId = jobid
          @Config = config
        end

        def deserialize(params)
          @Name = params['Name']
          @AgentId = params['AgentId']
          @JobId = params['JobId']
          @Config = params['Config']
        end
      end

      # Prometheus 托管服务标签
      class PrometheusTag < TencentCloud::Common::AbstractModel
        # @param Key: 标签的健值
        # @type Key: String
        # @param Value: 标签对应的值
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
        # @param StartTime: 告警时间段开始时间。范围[0,86400)，作为 UNIX 时间戳转成北京时间后去掉日期，例如7200表示"10:0:0"
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
        # @param UidList: 电话告警接收者 UID
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
        # @param ReceiverGroupList: 接收组列表。通过平台接口查询到的接收组 ID 列表
        # @type ReceiverGroupList: Array
        # @param ReceiverUserList: 接收人列表。通过平台接口查询到的接收人 ID 列表
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

      # Prometheus 聚合规则响应结构体内信息
      class RecordingRuleSet < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param RuleState: 规则状态码
        # @type RuleState: Integer
        # @param Name: 分组名称
        # @type Name: String
        # @param Group: 规则内容组
        # @type Group: String
        # @param Total: 规则数量
        # @type Total: Integer
        # @param CreatedAt: 规则创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 规则最近更新时间
        # @type UpdatedAt: String
        # @param RuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String

        attr_accessor :RuleId, :RuleState, :Name, :Group, :Total, :CreatedAt, :UpdatedAt, :RuleName
        
        def initialize(ruleid=nil, rulestate=nil, name=nil, group=nil, total=nil, createdat=nil, updatedat=nil, rulename=nil)
          @RuleId = ruleid
          @RuleState = rulestate
          @Name = name
          @Group = group
          @Total = total
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleState = params['RuleState']
          @Name = params['Name']
          @Group = params['Group']
          @Total = params['Total']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @RuleName = params['RuleName']
        end
      end

      # ResumeGrafanaInstance请求参数结构体
      class ResumeGrafanaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ResumeGrafanaInstance返回参数结构体
      class ResumeGrafanaInstanceResponse < TencentCloud::Common::AbstractModel
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
        # @type RegionId: Integer
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

      # 模板列表
      class TemplateGroup < TencentCloud::Common::AbstractModel
        # @param Conditions: 指标告警规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array
        # @param EventConditions: 事件告警规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventConditions: Array
        # @param PolicyGroups: 关联告警策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyGroups: Array
        # @param GroupID: 模板策略组ID
        # @type GroupID: Integer
        # @param GroupName: 模板策略组名称
        # @type GroupName: String
        # @param InsertTime: 创建时间
        # @type InsertTime: Integer
        # @param LastEditUin: 最后修改人UIN
        # @type LastEditUin: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param ViewName: 视图
        # @type ViewName: String
        # @param IsUnionRule: 是否为与关系
        # @type IsUnionRule: Integer

        attr_accessor :Conditions, :EventConditions, :PolicyGroups, :GroupID, :GroupName, :InsertTime, :LastEditUin, :Remark, :UpdateTime, :ViewName, :IsUnionRule
        
        def initialize(conditions=nil, eventconditions=nil, policygroups=nil, groupid=nil, groupname=nil, inserttime=nil, lastedituin=nil, remark=nil, updatetime=nil, viewname=nil, isunionrule=nil)
          @Conditions = conditions
          @EventConditions = eventconditions
          @PolicyGroups = policygroups
          @GroupID = groupid
          @GroupName = groupname
          @InsertTime = inserttime
          @LastEditUin = lastedituin
          @Remark = remark
          @UpdateTime = updatetime
          @ViewName = viewname
          @IsUnionRule = isunionrule
        end

        def deserialize(params)
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              condition_tmp = Condition.new
              condition_tmp.deserialize(i)
              @Conditions << condition_tmp
            end
          end
          unless params['EventConditions'].nil?
            @EventConditions = []
            params['EventConditions'].each do |i|
              eventcondition_tmp = EventCondition.new
              eventcondition_tmp.deserialize(i)
              @EventConditions << eventcondition_tmp
            end
          end
          unless params['PolicyGroups'].nil?
            @PolicyGroups = []
            params['PolicyGroups'].each do |i|
              policygroup_tmp = PolicyGroup.new
              policygroup_tmp.deserialize(i)
              @PolicyGroups << policygroup_tmp
            end
          end
          @GroupID = params['GroupID']
          @GroupName = params['GroupName']
          @InsertTime = params['InsertTime']
          @LastEditUin = params['LastEditUin']
          @Remark = params['Remark']
          @UpdateTime = params['UpdateTime']
          @ViewName = params['ViewName']
          @IsUnionRule = params['IsUnionRule']
        end
      end

      # TerminatePrometheusInstances请求参数结构体
      class TerminatePrometheusInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds
        
        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # TerminatePrometheusInstances返回参数结构体
      class TerminatePrometheusInstancesResponse < TencentCloud::Common::AbstractModel
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
        # @param StartTime: 通知开始时间 一天开始的秒数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 通知结束时间 一天开始的秒数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param Weekday: 通知周期 1-7表示周一到周日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weekday: Array

        attr_accessor :URL, :IsValid, :ValidationCode, :StartTime, :EndTime, :Weekday
        
        def initialize(url=nil, isvalid=nil, validationcode=nil, starttime=nil, endtime=nil, weekday=nil)
          @URL = url
          @IsValid = isvalid
          @ValidationCode = validationcode
          @StartTime = starttime
          @EndTime = endtime
          @Weekday = weekday
        end

        def deserialize(params)
          @URL = params['URL']
          @IsValid = params['IsValid']
          @ValidationCode = params['ValidationCode']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Weekday = params['Weekday']
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

      # UnbindPrometheusManagedGrafana请求参数结构体
      class UnbindPrometheusManagedGrafanaRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param GrafanaId: Grafana 实例 ID
        # @type GrafanaId: String

        attr_accessor :InstanceId, :GrafanaId
        
        def initialize(instanceid=nil, grafanaid=nil)
          @InstanceId = instanceid
          @GrafanaId = grafanaid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GrafanaId = params['GrafanaId']
        end
      end

      # UnbindPrometheusManagedGrafana返回参数结构体
      class UnbindPrometheusManagedGrafanaResponse < TencentCloud::Common::AbstractModel
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

      # UninstallGrafanaDashboard请求参数结构体
      class UninstallGrafanaDashboardRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param IntegrationCodes: Prometheus 集成项 Code，删除对应的 Dashboard，Code 如下：
        # <li>spring_mvc</li>
        # <li>mysql</li>
        # <li>go</li>
        # <li>redis</li>
        # <li>jvm</li>
        # <li>pgsql</li>
        # <li>mongo</li>
        # <li>kafka</li>
        # <li>es</li>
        # <li>flink</li>
        # <li>blackbox</li>
        # <li>consule</li>
        # <li>memcached</li>
        # <li>zk</li>
        # <li>tps</li>
        # <li>istio</li>
        # <li>etcd</li>
        # @type IntegrationCodes: Array

        attr_accessor :InstanceId, :IntegrationCodes
        
        def initialize(instanceid=nil, integrationcodes=nil)
          @InstanceId = instanceid
          @IntegrationCodes = integrationcodes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IntegrationCodes = params['IntegrationCodes']
        end
      end

      # UninstallGrafanaDashboard返回参数结构体
      class UninstallGrafanaDashboardResponse < TencentCloud::Common::AbstractModel
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

      # UninstallGrafanaPlugins请求参数结构体
      class UninstallGrafanaPluginsRequest < TencentCloud::Common::AbstractModel
        # @param PluginIds: 插件 ID 数组
        # @type PluginIds: Array
        # @param InstanceId: 实例 ID
        # @type InstanceId: String

        attr_accessor :PluginIds, :InstanceId
        
        def initialize(pluginids=nil, instanceid=nil)
          @PluginIds = pluginids
          @InstanceId = instanceid
        end

        def deserialize(params)
          @PluginIds = params['PluginIds']
          @InstanceId = params['InstanceId']
        end
      end

      # UninstallGrafanaPlugins返回参数结构体
      class UninstallGrafanaPluginsResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDNSConfig请求参数结构体
      class UpdateDNSConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param NameServers: DNS 数组
        # @type NameServers: Array

        attr_accessor :InstanceId, :NameServers
        
        def initialize(instanceid=nil, nameservers=nil)
          @InstanceId = instanceid
          @NameServers = nameservers
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NameServers = params['NameServers']
        end
      end

      # UpdateDNSConfig返回参数结构体
      class UpdateDNSConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateExporterIntegration请求参数结构体
      class UpdateExporterIntegrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param KubeType: Kubernetes 集群类型，取值如下：
        # <li> 1= 容器集群(TKE) </li>
        # <li> 2=弹性集群<EKS> </li>
        # <li> 3= Prometheus管理的弹性集群<MEKS> </li>
        # @type KubeType: Integer
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Kind: 类型
        # @type Kind: String
        # @param Content: 配置内容
        # @type Content: String

        attr_accessor :InstanceId, :KubeType, :ClusterId, :Kind, :Content
        
        def initialize(instanceid=nil, kubetype=nil, clusterid=nil, kind=nil, content=nil)
          @InstanceId = instanceid
          @KubeType = kubetype
          @ClusterId = clusterid
          @Kind = kind
          @Content = content
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KubeType = params['KubeType']
          @ClusterId = params['ClusterId']
          @Kind = params['Kind']
          @Content = params['Content']
        end
      end

      # UpdateExporterIntegration返回参数结构体
      class UpdateExporterIntegrationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGrafanaConfig请求参数结构体
      class UpdateGrafanaConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Config: JSON 编码后的字符串
        # @type Config: String

        attr_accessor :InstanceId, :Config
        
        def initialize(instanceid=nil, config=nil)
          @InstanceId = instanceid
          @Config = config
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Config = params['Config']
        end
      end

      # UpdateGrafanaConfig返回参数结构体
      class UpdateGrafanaConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGrafanaEnvironments请求参数结构体
      class UpdateGrafanaEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Envs: 环境变量字符串
        # @type Envs: String

        attr_accessor :InstanceId, :Envs
        
        def initialize(instanceid=nil, envs=nil)
          @InstanceId = instanceid
          @Envs = envs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Envs = params['Envs']
        end
      end

      # UpdateGrafanaEnvironments返回参数结构体
      class UpdateGrafanaEnvironmentsResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGrafanaIntegration请求参数结构体
      class UpdateGrafanaIntegrationRequest < TencentCloud::Common::AbstractModel
        # @param IntegrationId: 集成 ID
        # @type IntegrationId: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Kind: 集成类型
        # @type Kind: String
        # @param Content: 集成内容
        # @type Content: String

        attr_accessor :IntegrationId, :InstanceId, :Kind, :Content
        
        def initialize(integrationid=nil, instanceid=nil, kind=nil, content=nil)
          @IntegrationId = integrationid
          @InstanceId = instanceid
          @Kind = kind
          @Content = content
        end

        def deserialize(params)
          @IntegrationId = params['IntegrationId']
          @InstanceId = params['InstanceId']
          @Kind = params['Kind']
          @Content = params['Content']
        end
      end

      # UpdateGrafanaIntegration返回参数结构体
      class UpdateGrafanaIntegrationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGrafanaNotificationChannel请求参数结构体
      class UpdateGrafanaNotificationChannelRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID
        # @type ChannelId: String
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param Receivers: 接受告警通道 ID 数组
        # @type Receivers: Array
        # @param ExtraOrgIds: 已废弃，请使用 OrganizationIds
        # @type ExtraOrgIds: Array
        # @param OrganizationIds: 生效的组织 ID 数组
        # @type OrganizationIds: Array

        attr_accessor :ChannelId, :InstanceId, :ChannelName, :Receivers, :ExtraOrgIds, :OrganizationIds
        
        def initialize(channelid=nil, instanceid=nil, channelname=nil, receivers=nil, extraorgids=nil, organizationids=nil)
          @ChannelId = channelid
          @InstanceId = instanceid
          @ChannelName = channelname
          @Receivers = receivers
          @ExtraOrgIds = extraorgids
          @OrganizationIds = organizationids
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @InstanceId = params['InstanceId']
          @ChannelName = params['ChannelName']
          @Receivers = params['Receivers']
          @ExtraOrgIds = params['ExtraOrgIds']
          @OrganizationIds = params['OrganizationIds']
        end
      end

      # UpdateGrafanaNotificationChannel返回参数结构体
      class UpdateGrafanaNotificationChannelResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGrafanaWhiteList请求参数结构体
      class UpdateGrafanaWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名
        # @type InstanceId: String
        # @param Whitelist: 白名单数组
        # @type Whitelist: Array

        attr_accessor :InstanceId, :Whitelist
        
        def initialize(instanceid=nil, whitelist=nil)
          @InstanceId = instanceid
          @Whitelist = whitelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Whitelist = params['Whitelist']
        end
      end

      # UpdateGrafanaWhiteList返回参数结构体
      class UpdateGrafanaWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePrometheusAgentStatus请求参数结构体
      class UpdatePrometheusAgentStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param AgentIds: Agent ID 列表
        # @type AgentIds: Array
        # @param Status: 要更新的状态
        # <li> 1= 开启 </li>
        # <li> 2= 关闭 </li>
        # @type Status: Integer

        attr_accessor :InstanceId, :AgentIds, :Status
        
        def initialize(instanceid=nil, agentids=nil, status=nil)
          @InstanceId = instanceid
          @AgentIds = agentids
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentIds = params['AgentIds']
          @Status = params['Status']
        end
      end

      # UpdatePrometheusAgentStatus返回参数结构体
      class UpdatePrometheusAgentStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePrometheusScrapeJob请求参数结构体
      class UpdatePrometheusScrapeJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param AgentId: Agent ID
        # @type AgentId: String
        # @param JobId: 抓取任务 ID
        # @type JobId: String
        # @param Config: 抓取任务配置
        # @type Config: String

        attr_accessor :InstanceId, :AgentId, :JobId, :Config
        
        def initialize(instanceid=nil, agentid=nil, jobid=nil, config=nil)
          @InstanceId = instanceid
          @AgentId = agentid
          @JobId = jobid
          @Config = config
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
          @JobId = params['JobId']
          @Config = params['Config']
        end
      end

      # UpdatePrometheusScrapeJob返回参数结构体
      class UpdatePrometheusScrapeJobResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRecordingRule请求参数结构体
      class UpdateRecordingRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 聚合规则名称
        # @type Name: String
        # @param Group: 聚合规则组内容，格式为 yaml，通过 base64 进行编码。
        # @type Group: String
        # @param InstanceId: Prometheus 实例 ID
        # @type InstanceId: String
        # @param RuleId: Prometheus 聚合规则 ID
        # @type RuleId: String
        # @param RuleState: 规则状态码，取值如下：
        # <li>1=RuleDeleted</li>
        # <li>2=RuleEnabled</li>
        # <li>3=RuleDisabled</li>
        # 默认状态码为 2 启用。
        # @type RuleState: Integer

        attr_accessor :Name, :Group, :InstanceId, :RuleId, :RuleState
        
        def initialize(name=nil, group=nil, instanceid=nil, ruleid=nil, rulestate=nil)
          @Name = name
          @Group = group
          @InstanceId = instanceid
          @RuleId = ruleid
          @RuleState = rulestate
        end

        def deserialize(params)
          @Name = params['Name']
          @Group = params['Group']
          @InstanceId = params['InstanceId']
          @RuleId = params['RuleId']
          @RuleState = params['RuleState']
        end
      end

      # UpdateRecordingRule返回参数结构体
      class UpdateRecordingRuleResponse < TencentCloud::Common::AbstractModel
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

      # UpdateSSOAccount请求参数结构体
      class UpdateSSOAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 示例ID
        # @type InstanceId: String
        # @param UserId: 用户账号ID
        # @type UserId: String
        # @param Role: 权限
        # @type Role: Array
        # @param Notes: 备注
        # @type Notes: String

        attr_accessor :InstanceId, :UserId, :Role, :Notes
        
        def initialize(instanceid=nil, userid=nil, role=nil, notes=nil)
          @InstanceId = instanceid
          @UserId = userid
          @Role = role
          @Notes = notes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserId = params['UserId']
          unless params['Role'].nil?
            @Role = []
            params['Role'].each do |i|
              grafanaaccountrole_tmp = GrafanaAccountRole.new
              grafanaaccountrole_tmp.deserialize(i)
              @Role << grafanaaccountrole_tmp
            end
          end
          @Notes = params['Notes']
        end
      end

      # UpdateSSOAccount返回参数结构体
      class UpdateSSOAccountResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeGrafanaDashboard请求参数结构体
      class UpgradeGrafanaDashboardRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param IntegrationCodes: Prometheus 集成项 Code，升级对应的 Dashboard，取值如下：
        # <li>spring_mvc</li>
        # <li>mysql</li>
        # <li>go</li>
        # <li>redis</li>
        # <li>jvm</li>
        # <li>pgsql</li>
        # <li>mongo</li>
        # <li>kafka</li>
        # <li>es</li>
        # <li>flink</li>
        # <li>blackbox</li>
        # <li>consule</li>
        # <li>memcached</li>
        # <li>zk</li>
        # <li>tps</li>
        # <li>istio</li>
        # <li>etcd</li>
        # @type IntegrationCodes: Array

        attr_accessor :InstanceId, :IntegrationCodes
        
        def initialize(instanceid=nil, integrationcodes=nil)
          @InstanceId = instanceid
          @IntegrationCodes = integrationcodes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IntegrationCodes = params['IntegrationCodes']
        end
      end

      # UpgradeGrafanaDashboard返回参数结构体
      class UpgradeGrafanaDashboardResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeGrafanaInstance请求参数结构体
      class UpgradeGrafanaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Alias: 版本别名
        # @type Alias: String

        attr_accessor :InstanceId, :Alias
        
        def initialize(instanceid=nil, _alias=nil)
          @InstanceId = instanceid
          @Alias = _alias
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
        end
      end

      # UpgradeGrafanaInstance返回参数结构体
      class UpgradeGrafanaInstanceResponse < TencentCloud::Common::AbstractModel
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
        # @param NoticeWay: 通知渠道列表 EMAIL=邮件 SMS=短信 CALL=电话 WECHAT=微信 RTX=企业微信
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
        # @param PhoneCallType: 电话拨打类型 SYNC=同时拨打 CIRCLE=轮询拨打 不指定时默认是轮询
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCallType: String
        # @param Weekday: 通知周期 1-7表示周一到周日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weekday: Array

        attr_accessor :ReceiverType, :StartTime, :EndTime, :NoticeWay, :UserIds, :GroupIds, :PhoneOrder, :PhoneCircleTimes, :PhoneInnerInterval, :PhoneCircleInterval, :NeedPhoneArriveNotice, :PhoneCallType, :Weekday
        
        def initialize(receivertype=nil, starttime=nil, endtime=nil, noticeway=nil, userids=nil, groupids=nil, phoneorder=nil, phonecircletimes=nil, phoneinnerinterval=nil, phonecircleinterval=nil, needphonearrivenotice=nil, phonecalltype=nil, weekday=nil)
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
          @PhoneCallType = phonecalltype
          @Weekday = weekday
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
          @PhoneCallType = params['PhoneCallType']
          @Weekday = params['Weekday']
        end
      end

    end
  end
end

