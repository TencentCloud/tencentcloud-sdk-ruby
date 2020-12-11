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
      # 策略绑定实例维度信息
      class BindingPolicyObjectDimension < TencentCloud::Common::AbstractModel
        # @param Region: 地域名
        # @type Region: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Dimensions: 维度信息
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
        # @param GroupId: 策略分组Id
        # @type GroupId: Integer
        # @param Module: 必填。固定值"monitor"
        # @type Module: String
        # @param InstanceGroupId: 实例分组ID
        # @type InstanceGroupId: Integer
        # @param Dimensions: 需要绑定的对象维度信息
        # @type Dimensions: Array

        attr_accessor :GroupId, :Module, :InstanceGroupId, :Dimensions
        
        def initialize(groupid=nil, module=nil, instancegroupid=nil, dimensions=nil)
          @GroupId = groupid
          @Module = module
          @InstanceGroupId = instancegroupid
          @Dimensions = dimensions
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Module = params['Module']
          @InstanceGroupId = params['InstanceGroupId']
          @Dimensions = params['Dimensions']
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
        
        def initialize(groupname=nil, module=nil, viewname=nil, projectid=nil, conditiontempgroupid=nil, isshielded=nil, remark=nil, inserttime=nil, conditions=nil, eventconditions=nil, backendcall=nil, isunionrule=nil)
          @GroupName = groupname
          @Module = module
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
          @Conditions = params['Conditions']
          @EventConditions = params['EventConditions']
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
          @Dimensions = params['Dimensions']
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # DeletePolicyGroup请求参数结构体
      class DeletePolicyGroupRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id
        # @type GroupId: Array

        attr_accessor :Module, :GroupId
        
        def initialize(module=nil, groupid=nil)
          @Module = module
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
        
        def initialize(module=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, updatetimeorder=nil, occurtimeorder=nil, accidenttype=nil, accidentevent=nil, accidentstatus=nil, accidentregion=nil, affectresource=nil)
          @Module = module
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
          @Alarms = params['Alarms']
          @Total = params['Total']
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
          @MetricSet = params['MetricSet']
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
        # @param Status: 告警状态ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param AlarmStatus: 告警状态
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
          @InstanceGroup = params['InstanceGroup']
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
        
        def initialize(module=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, occurtimeorder=nil, projectids=nil, viewnames=nil, alarmstatus=nil, objlike=nil, instancegroupids=nil, metricnames=nil)
          @Module = module
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
          @Alarms = params['Alarms']
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
        
        def initialize(module=nil, groupid=nil, limit=nil, offset=nil, dimensions=nil)
          @Module = module
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
          @Dimensions = params['Dimensions']
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
          @List = params['List']
          @Total = params['Total']
          @NoShieldedSum = params['NoShieldedSum']
          unless params['InstanceGroup'].nil?
            @InstanceGroup = DescribeBindingPolicyObjectListInstanceGroup.new.deserialize(params[InstanceGroup])
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
          @EventMetrics = params['EventMetrics']
          @IsSupportMultiRegion = params['IsSupportMultiRegion']
          @Metrics = params['Metrics']
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
            @CalcType = DescribePolicyConditionListConfigManualCalcType.new.deserialize(params[CalcType])
          end
          unless params['CalcValue'].nil?
            @CalcValue = DescribePolicyConditionListConfigManualCalcValue.new.deserialize(params[CalcValue])
          end
          unless params['ContinueTime'].nil?
            @ContinueTime = DescribePolicyConditionListConfigManualContinueTime.new.deserialize(params[ContinueTime])
          end
          unless params['Period'].nil?
            @Period = DescribePolicyConditionListConfigManualPeriod.new.deserialize(params[Period])
          end
          unless params['PeriodNum'].nil?
            @PeriodNum = DescribePolicyConditionListConfigManualPeriodNum.new.deserialize(params[PeriodNum])
          end
          unless params['StatType'].nil?
            @StatType = DescribePolicyConditionListConfigManualStatType.new.deserialize(params[StatType])
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
            @ConfigManual = DescribePolicyConditionListConfigManual.new.deserialize(params[ConfigManual])
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
        
        def initialize(module=nil)
          @Module = module
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
          @Conditions = params['Conditions']
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
        
        def initialize(module=nil, groupid=nil)
          @Module = module
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
          @ConditionsConfig = params['ConditionsConfig']
          @EventConfig = params['EventConfig']
          @ReceiverInfos = params['ReceiverInfos']
          unless params['Callback'].nil?
            @Callback = DescribePolicyGroupInfoCallback.new.deserialize(params[Callback])
          end
          unless params['ConditionsTemp'].nil?
            @ConditionsTemp = DescribePolicyGroupInfoConditionTpl.new.deserialize(params[ConditionsTemp])
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
          @Conditions = params['Conditions']
          @EventConditions = params['EventConditions']
          @ReceiverInfos = params['ReceiverInfos']
          unless params['ConditionsTemp'].nil?
            @ConditionsTemp = DescribePolicyGroupInfoConditionTpl.new.deserialize(params[ConditionsTemp])
          end
          unless params['InstanceGroup'].nil?
            @InstanceGroup = DescribePolicyGroupListGroupInstanceGroup.new.deserialize(params[InstanceGroup])
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

        attr_accessor :Module, :Limit, :Offset, :Like, :InstanceGroupId, :UpdateTimeOrder, :ProjectIds, :ViewNames, :FilterUnuseReceiver, :Receivers, :ReceiverUserList, :Dimensions, :ConditionTempGroupId, :ReceiverType
        
        def initialize(module=nil, limit=nil, offset=nil, like=nil, instancegroupid=nil, updatetimeorder=nil, projectids=nil, viewnames=nil, filterunusereceiver=nil, receivers=nil, receiveruserlist=nil, dimensions=nil, conditiontempgroupid=nil, receivertype=nil)
          @Module = module
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
          @GroupList = params['GroupList']
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

        attr_accessor :EventId, :EventCName, :EventEName, :EventName, :ProductCName, :ProductEName, :ProductName, :InstanceId, :InstanceName, :ProjectId, :Region, :Status, :SupportAlarm, :Type, :StartTime, :UpdateTime, :Dimensions, :AdditionMsg, :IsAlarmConfig, :GroupInfo
        
        def initialize(eventid=nil, eventcname=nil, eventename=nil, eventname=nil, productcname=nil, productename=nil, productname=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, status=nil, supportalarm=nil, type=nil, starttime=nil, updatetime=nil, dimensions=nil, additionmsg=nil, isalarmconfig=nil, groupinfo=nil)
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
          @Dimensions = params['Dimensions']
          @AdditionMsg = params['AdditionMsg']
          @IsAlarmConfig = params['IsAlarmConfig']
          @GroupInfo = params['GroupInfo']
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
        # @param InstanceId: 影响对象，比如ins-19708ino
        # @type InstanceId: Array
        # @param Dimensions: 维度过滤，比如外网IP:10.0.0.1
        # @type Dimensions: Array
        # @param RegionList: 地域过滤，比如gz
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
        
        def initialize(module=nil, productname=nil, eventname=nil, instanceid=nil, dimensions=nil, regionlist=nil, type=nil, status=nil, project=nil, isalarmconfig=nil, timeorder=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @Module = module
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
          @Dimensions = params['Dimensions']
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
          @Events = params['Events']
          unless params['OverView'].nil?
            @OverView = DescribeProductEventListOverView.new.deserialize(params[OverView])
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
        
        def initialize(module=nil, order=nil, offset=nil, limit=nil)
          @Module = module
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
          @ProductList = params['ProductList']
          @TotalCount = params['TotalCount']
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
        # @param Namespace: 命名空间，各个云产品的详细命名空间说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档
        # @type Namespace: String
        # @param MetricName: 指标名称，各个云产品的详细指标说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档
        # @type MetricName: String
        # @param Instances: 实例对象的维度组合
        # @type Instances: Array
        # @param Period: 监控统计周期。默认为取值为300，单位为s
        # @type Period: Integer
        # @param StartTime: 起始时间，如2018-09-22T19:51:23+08:00
        # @type StartTime: String
        # @param EndTime: 结束时间，默认为当前时间。 EndTime不能小于StartTime
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
          @Instances = params['Instances']
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
          @DataPoints = params['DataPoints']
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
          @Dimensions = params['Dimensions']
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
          @Periods = params['Periods']
          unless params['Meaning'].nil?
            @Meaning = MetricObjectMeaning.new.deserialize(params[Meaning])
          end
          @Dimensions = params['Dimensions']
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
        
        def initialize(groupid=nil, module=nil, receiverinfos=nil)
          @GroupId = groupid
          @Module = module
          @ReceiverInfos = receiverinfos
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Module = params['Module']
          @ReceiverInfos = params['ReceiverInfos']
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
        
        def initialize(module=nil, groupid=nil, viewname=nil, groupname=nil, isunionrule=nil, conditions=nil, eventconditions=nil, conditiontempgroupid=nil)
          @Module = module
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
          @Conditions = params['Conditions']
          @EventConditions = params['EventConditions']
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
          @Metrics = params['Metrics']
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
        
        def initialize(module=nil, policyid=nil, msg=nil)
          @Module = module
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

      # UnBindingAllPolicyObject请求参数结构体
      class UnBindingAllPolicyObjectRequest < TencentCloud::Common::AbstractModel
        # @param Module: 固定值，为"monitor"
        # @type Module: String
        # @param GroupId: 策略组id
        # @type GroupId: Integer

        attr_accessor :Module, :GroupId
        
        def initialize(module=nil, groupid=nil)
          @Module = module
          @GroupId = groupid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
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
        # @param GroupId: 策略组id
        # @type GroupId: Integer
        # @param UniqueId: 待删除对象实例的唯一id列表
        # @type UniqueId: Array
        # @param InstanceGroupId: 实例分组id, 如果按实例分组删除的话UniqueId参数是无效的
        # @type InstanceGroupId: Integer

        attr_accessor :Module, :GroupId, :UniqueId, :InstanceGroupId
        
        def initialize(module=nil, groupid=nil, uniqueid=nil, instancegroupid=nil)
          @Module = module
          @GroupId = groupid
          @UniqueId = uniqueid
          @InstanceGroupId = instancegroupid
        end

        def deserialize(params)
          @Module = params['Module']
          @GroupId = params['GroupId']
          @UniqueId = params['UniqueId']
          @InstanceGroupId = params['InstanceGroupId']
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

    end
  end
end

