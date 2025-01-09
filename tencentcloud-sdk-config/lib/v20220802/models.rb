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
  module Config
    module V20220802
      # 资源列列表信息
      class AggregateResourceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceRegion: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRegion: String
        # @param ResourceStatus: 资源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: String
        # @param ResourceDelete: 是否删除 1:已删除 0:未删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceDelete: Integer
        # @param ResourceCreateTime: 资源创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCreateTime: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ResourceZone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceZone: String
        # @param ComplianceResult: 合规状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceResult: String
        # @param ResourceOwnerId: 资源所属用户ID
        # @type ResourceOwnerId: Integer
        # @param ResourceOwnerName: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceOwnerName: String

        attr_accessor :ResourceType, :ResourceName, :ResourceId, :ResourceRegion, :ResourceStatus, :ResourceDelete, :ResourceCreateTime, :Tags, :ResourceZone, :ComplianceResult, :ResourceOwnerId, :ResourceOwnerName

        def initialize(resourcetype=nil, resourcename=nil, resourceid=nil, resourceregion=nil, resourcestatus=nil, resourcedelete=nil, resourcecreatetime=nil, tags=nil, resourcezone=nil, complianceresult=nil, resourceownerid=nil, resourceownername=nil)
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @ResourceStatus = resourcestatus
          @ResourceDelete = resourcedelete
          @ResourceCreateTime = resourcecreatetime
          @Tags = tags
          @ResourceZone = resourcezone
          @ComplianceResult = complianceresult
          @ResourceOwnerId = resourceownerid
          @ResourceOwnerName = resourceownername
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @ResourceStatus = params['ResourceStatus']
          @ResourceDelete = params['ResourceDelete']
          @ResourceCreateTime = params['ResourceCreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ResourceZone = params['ResourceZone']
          @ComplianceResult = params['ComplianceResult']
          @ResourceOwnerId = params['ResourceOwnerId']
          @ResourceOwnerName = params['ResourceOwnerName']
        end
      end

      # 合规详情
      class Annotation < TencentCloud::Common::AbstractModel
        # @param Configuration: 资源当前实际配置。长度为0~256位字符，即资源不合规配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: String
        # @param DesiredValue: 资源期望配置。长度为0~256位字符，即资源合规配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredValue: String
        # @param Operator: 资源当前配置和期望配置之间的比较运算符。长度为0~16位字符，自定义规则上报评估结果此字段可能为空
        # @type Operator: String
        # @param Property: 当前配置在资源属性结构体中的JSON路径。长度为0~256位字符，自定义规则上报评估结果此字段可能为空
        # @type Property: String

        attr_accessor :Configuration, :DesiredValue, :Operator, :Property

        def initialize(configuration=nil, desiredvalue=nil, operator=nil, property=nil)
          @Configuration = configuration
          @DesiredValue = desiredvalue
          @Operator = operator
          @Property = property
        end

        def deserialize(params)
          @Configuration = params['Configuration']
          @DesiredValue = params['DesiredValue']
          @Operator = params['Operator']
          @Property = params['Property']
        end
      end

      # 规则详情
      class ConfigRule < TencentCloud::Common::AbstractModel
        # @param Identifier: 规则标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param RuleName: 规则名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param InputParameter: 规则参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputParameter: Array
        # @param SourceCondition: 规则触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceCondition: Array
        # @param ResourceType: 规则支持的资源类型，规则仅对指定资源类型的资源生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: Array
        # @param Labels: 规则所属标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param RiskLevel: 规则风险等级
        # 1:低风险
        # 2:中风险
        # 3:高风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param ServiceFunction: 规则对应的函数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceFunction: String
        # @param CreateTime: 创建时间
        # 格式：YYYY-MM-DD h:i:s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: ACTIVE：启用
        # NO_ACTIVE：停止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ComplianceResult: 合规： 'COMPLIANT'
        # 不合规： 'NON_COMPLIANT'
        # 无法应用规则： 'NOT_APPLICABLE'
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceResult: String
        # @param Annotation: ["",""]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotation: :class:`Tencentcloud::Config.v20220802.models.Annotation`
        # @param ConfigRuleInvokedTime: 规则评估时间
        # 格式：YYYY-MM-DD h:i:s

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRuleInvokedTime: String
        # @param ConfigRuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRuleId: String
        # @param IdentifierType: CUSTOMIZE：自定义规则、
        # SYSTEM：托管规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentifierType: String
        # @param CompliancePackId: 合规包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompliancePackId: String
        # @param TriggerType: 触发类型
        # ScheduledNotification：周期触发、
        # ConfigurationItemChangeNotification：变更触发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Array
        # @param ManageInputParameter: 参数详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManageInputParameter: Array
        # @param CompliancePackName: 合规包名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompliancePackName: String
        # @param RegionsScope: 关联地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionsScope: Array
        # @param TagsScope: 关联标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagsScope: Array
        # @param ExcludeResourceIdsScope:  规则对指定资源ID无效，即不对该资源执行评估。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeResourceIdsScope: Array
        # @param AccountGroupId: 账号组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupId: String
        # @param AccountGroupName: 账号组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupName: String
        # @param RuleOwnerId: 规则所属用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleOwnerId: Integer
        # @param ManageTriggerType: 预设规则支持的触发方式
        # ScheduledNotification：周期触发
        # ConfigurationItemChangeNotification：变更触发
        # @type ManageTriggerType: Array

        attr_accessor :Identifier, :RuleName, :InputParameter, :SourceCondition, :ResourceType, :Labels, :RiskLevel, :ServiceFunction, :CreateTime, :Description, :Status, :ComplianceResult, :Annotation, :ConfigRuleInvokedTime, :ConfigRuleId, :IdentifierType, :CompliancePackId, :TriggerType, :ManageInputParameter, :CompliancePackName, :RegionsScope, :TagsScope, :ExcludeResourceIdsScope, :AccountGroupId, :AccountGroupName, :RuleOwnerId, :ManageTriggerType

        def initialize(identifier=nil, rulename=nil, inputparameter=nil, sourcecondition=nil, resourcetype=nil, labels=nil, risklevel=nil, servicefunction=nil, createtime=nil, description=nil, status=nil, complianceresult=nil, annotation=nil, configruleinvokedtime=nil, configruleid=nil, identifiertype=nil, compliancepackid=nil, triggertype=nil, manageinputparameter=nil, compliancepackname=nil, regionsscope=nil, tagsscope=nil, excluderesourceidsscope=nil, accountgroupid=nil, accountgroupname=nil, ruleownerid=nil, managetriggertype=nil)
          @Identifier = identifier
          @RuleName = rulename
          @InputParameter = inputparameter
          @SourceCondition = sourcecondition
          @ResourceType = resourcetype
          @Labels = labels
          @RiskLevel = risklevel
          @ServiceFunction = servicefunction
          @CreateTime = createtime
          @Description = description
          @Status = status
          @ComplianceResult = complianceresult
          @Annotation = annotation
          @ConfigRuleInvokedTime = configruleinvokedtime
          @ConfigRuleId = configruleid
          @IdentifierType = identifiertype
          @CompliancePackId = compliancepackid
          @TriggerType = triggertype
          @ManageInputParameter = manageinputparameter
          @CompliancePackName = compliancepackname
          @RegionsScope = regionsscope
          @TagsScope = tagsscope
          @ExcludeResourceIdsScope = excluderesourceidsscope
          @AccountGroupId = accountgroupid
          @AccountGroupName = accountgroupname
          @RuleOwnerId = ruleownerid
          @ManageTriggerType = managetriggertype
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @RuleName = params['RuleName']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameter_tmp = InputParameter.new
              inputparameter_tmp.deserialize(i)
              @InputParameter << inputparameter_tmp
            end
          end
          unless params['SourceCondition'].nil?
            @SourceCondition = []
            params['SourceCondition'].each do |i|
              sourceconditionformanage_tmp = SourceConditionForManage.new
              sourceconditionformanage_tmp.deserialize(i)
              @SourceCondition << sourceconditionformanage_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @Labels = params['Labels']
          @RiskLevel = params['RiskLevel']
          @ServiceFunction = params['ServiceFunction']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @Status = params['Status']
          @ComplianceResult = params['ComplianceResult']
          unless params['Annotation'].nil?
            @Annotation = Annotation.new
            @Annotation.deserialize(params['Annotation'])
          end
          @ConfigRuleInvokedTime = params['ConfigRuleInvokedTime']
          @ConfigRuleId = params['ConfigRuleId']
          @IdentifierType = params['IdentifierType']
          @CompliancePackId = params['CompliancePackId']
          unless params['TriggerType'].nil?
            @TriggerType = []
            params['TriggerType'].each do |i|
              triggertype_tmp = TriggerType.new
              triggertype_tmp.deserialize(i)
              @TriggerType << triggertype_tmp
            end
          end
          unless params['ManageInputParameter'].nil?
            @ManageInputParameter = []
            params['ManageInputParameter'].each do |i|
              inputparameterformanage_tmp = InputParameterForManage.new
              inputparameterformanage_tmp.deserialize(i)
              @ManageInputParameter << inputparameterformanage_tmp
            end
          end
          @CompliancePackName = params['CompliancePackName']
          @RegionsScope = params['RegionsScope']
          unless params['TagsScope'].nil?
            @TagsScope = []
            params['TagsScope'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagsScope << tag_tmp
            end
          end
          @ExcludeResourceIdsScope = params['ExcludeResourceIdsScope']
          @AccountGroupId = params['AccountGroupId']
          @AccountGroupName = params['AccountGroupName']
          @RuleOwnerId = params['RuleOwnerId']
          @ManageTriggerType = params['ManageTriggerType']
        end
      end

      # DescribeAggregateDiscoveredResource请求参数结构体
      class DescribeAggregateDiscoveredResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param ResourceOwnerId: 资源所属用户ID
        # @type ResourceOwnerId: Integer

        attr_accessor :ResourceId, :ResourceType, :ResourceRegion, :AccountGroupId, :ResourceOwnerId

        def initialize(resourceid=nil, resourcetype=nil, resourceregion=nil, accountgroupid=nil, resourceownerid=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @ResourceRegion = resourceregion
          @AccountGroupId = accountgroupid
          @ResourceOwnerId = resourceownerid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @ResourceRegion = params['ResourceRegion']
          @AccountGroupId = params['AccountGroupId']
          @ResourceOwnerId = params['ResourceOwnerId']
        end
      end

      # DescribeAggregateDiscoveredResource返回参数结构体
      class DescribeAggregateDiscoveredResourceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceName: 资源名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ResourceRegion: 资源地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRegion: String
        # @param ResourceZone: 资源可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceZone: String
        # @param Configuration: 资源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: String
        # @param ResourceCreateTime: 资源创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCreateTime: String
        # @param Tags: 资源标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param UpdateTime: 资源更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :ResourceType, :ResourceName, :ResourceRegion, :ResourceZone, :Configuration, :ResourceCreateTime, :Tags, :UpdateTime, :RequestId

        def initialize(resourceid=nil, resourcetype=nil, resourcename=nil, resourceregion=nil, resourcezone=nil, configuration=nil, resourcecreatetime=nil, tags=nil, updatetime=nil, requestid=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @ResourceRegion = resourceregion
          @ResourceZone = resourcezone
          @Configuration = configuration
          @ResourceCreateTime = resourcecreatetime
          @Tags = tags
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @ResourceRegion = params['ResourceRegion']
          @ResourceZone = params['ResourceZone']
          @Configuration = params['Configuration']
          @ResourceCreateTime = params['ResourceCreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiscoveredResource请求参数结构体
      class DescribeDiscoveredResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String

        attr_accessor :ResourceId, :ResourceType, :ResourceRegion

        def initialize(resourceid=nil, resourcetype=nil, resourceregion=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # DescribeDiscoveredResource返回参数结构体
      class DescribeDiscoveredResourceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceName: 资源名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ResourceRegion: 资源地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRegion: String
        # @param ResourceZone: 资源可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceZone: String
        # @param Configuration: 资源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: String
        # @param ResourceCreateTime: 资源创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCreateTime: String
        # @param Tags: 资源标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param UpdateTime: 资源更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :ResourceType, :ResourceName, :ResourceRegion, :ResourceZone, :Configuration, :ResourceCreateTime, :Tags, :UpdateTime, :RequestId

        def initialize(resourceid=nil, resourcetype=nil, resourcename=nil, resourceregion=nil, resourcezone=nil, configuration=nil, resourcecreatetime=nil, tags=nil, updatetime=nil, requestid=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @ResourceRegion = resourceregion
          @ResourceZone = resourcezone
          @Configuration = configuration
          @ResourceCreateTime = resourcecreatetime
          @Tags = tags
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @ResourceRegion = params['ResourceRegion']
          @ResourceZone = params['ResourceZone']
          @Configuration = params['Configuration']
          @ResourceCreateTime = params['ResourceCreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # 自定义规则评估结果
      class Evaluation < TencentCloud::Common::AbstractModel
        # @param ComplianceResourceId: 已评估资源ID。长度为0~256个字符
        # @type ComplianceResourceId: String
        # @param ComplianceResourceType: 已评估资源类型。
        # 支持:
        # QCS::CVM::Instance、 QCS::CBS::Disk、QCS::VPC::Vpc、QCS::VPC::Subnet、QCS::VPC::SecurityGroup、 QCS::CAM::User、QCS::CAM::Group、QCS::CAM::Policy、QCS::CAM::Role、QCS::COS::Bucket
        # @type ComplianceResourceType: String
        # @param ComplianceRegion: 已评估资源地域。
        # 长度为0~32个字符
        # @type ComplianceRegion: String
        # @param ComplianceType: 合规类型。取值：
        # COMPLIANT：合规、
        # NON_COMPLIANT：不合规
        # @type ComplianceType: String
        # @param Annotation: 不合规资源的补充信息。
        # @type Annotation: :class:`Tencentcloud::Config.v20220802.models.Annotation`

        attr_accessor :ComplianceResourceId, :ComplianceResourceType, :ComplianceRegion, :ComplianceType, :Annotation

        def initialize(complianceresourceid=nil, complianceresourcetype=nil, complianceregion=nil, compliancetype=nil, annotation=nil)
          @ComplianceResourceId = complianceresourceid
          @ComplianceResourceType = complianceresourcetype
          @ComplianceRegion = complianceregion
          @ComplianceType = compliancetype
          @Annotation = annotation
        end

        def deserialize(params)
          @ComplianceResourceId = params['ComplianceResourceId']
          @ComplianceResourceType = params['ComplianceResourceType']
          @ComplianceRegion = params['ComplianceRegion']
          @ComplianceType = params['ComplianceType']
          unless params['Annotation'].nil?
            @Annotation = Annotation.new
            @Annotation.deserialize(params['Annotation'])
          end
        end
      end

      # 资源列表筛选
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 查询字段名称 资源名称：resourceName  资源ID：resourceId 资源类型：resourceType 资源地域：resourceRegion    删除状态：resourceDelete 0未删除，1已删除  resourceRegionAndZone地域/可用区
        # @type Name: String
        # @param Values: 查询字段值
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 参数值
      class InputParameter < TencentCloud::Common::AbstractModel
        # @param ParameterKey: 参数名
        # @type ParameterKey: String
        # @param Type: 参数类型。必填类型：Require，可选类型：Optional。
        # @type Type: String
        # @param Value: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :ParameterKey, :Type, :Value

        def initialize(parameterkey=nil, type=nil, value=nil)
          @ParameterKey = parameterkey
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @ParameterKey = params['ParameterKey']
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 规则入参
      class InputParameterForManage < TencentCloud::Common::AbstractModel
        # @param ValueType: 值类型。数值：Integer， 字符串：String
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueType: String
        # @param ParameterKey: 参数Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParameterKey: String
        # @param Type: 参数类型。必填类型：Require，可选类型：Optional。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DefaultValue: 默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :ValueType, :ParameterKey, :Type, :DefaultValue, :Description

        def initialize(valuetype=nil, parameterkey=nil, type=nil, defaultvalue=nil, description=nil)
          @ValueType = valuetype
          @ParameterKey = parameterkey
          @Type = type
          @DefaultValue = defaultvalue
          @Description = description
        end

        def deserialize(params)
          @ValueType = params['ValueType']
          @ParameterKey = params['ParameterKey']
          @Type = params['Type']
          @DefaultValue = params['DefaultValue']
          @Description = params['Description']
        end
      end

      # ListAggregateConfigRules请求参数结构体
      class ListAggregateConfigRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param OrderType: 排序类型, 倒序：desc，顺序：asc
        # @type OrderType: String
        # @param RiskLevel: 风险等级
        # 1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Array
        # @param State: 规则状态
        # @type State: String
        # @param ComplianceResult: 评估结果
        # @type ComplianceResult: Array
        # @param RuleName: 规则名
        # @type RuleName: String
        # @param RuleOwnerId: 规则所属账号ID
        # @type RuleOwnerId: Integer

        attr_accessor :Limit, :Offset, :AccountGroupId, :OrderType, :RiskLevel, :State, :ComplianceResult, :RuleName, :RuleOwnerId

        def initialize(limit=nil, offset=nil, accountgroupid=nil, ordertype=nil, risklevel=nil, state=nil, complianceresult=nil, rulename=nil, ruleownerid=nil)
          @Limit = limit
          @Offset = offset
          @AccountGroupId = accountgroupid
          @OrderType = ordertype
          @RiskLevel = risklevel
          @State = state
          @ComplianceResult = complianceresult
          @RuleName = rulename
          @RuleOwnerId = ruleownerid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AccountGroupId = params['AccountGroupId']
          @OrderType = params['OrderType']
          @RiskLevel = params['RiskLevel']
          @State = params['State']
          @ComplianceResult = params['ComplianceResult']
          @RuleName = params['RuleName']
          @RuleOwnerId = params['RuleOwnerId']
        end
      end

      # ListAggregateConfigRules返回参数结构体
      class ListAggregateConfigRulesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Items: 详情
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Items, :RequestId

        def initialize(total=nil, items=nil, requestid=nil)
          @Total = total
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              configrule_tmp = ConfigRule.new
              configrule_tmp.deserialize(i)
              @Items << configrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAggregateDiscoveredResources请求参数结构体
      class ListAggregateDiscoveredResourcesRequest < TencentCloud::Common::AbstractModel
        # @param MaxResults: 每页显示数量
        # @type MaxResults: Integer
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param Filters: resourceName：资源名  resourceId ：资源ID
        # @type Filters: Array
        # @param Tags: 标签
        # @type Tags: Array
        # @param NextToken: 下一页token
        # @type NextToken: String
        # @param OrderType: 排序方式 asc、desc
        # @type OrderType: String

        attr_accessor :MaxResults, :AccountGroupId, :Filters, :Tags, :NextToken, :OrderType

        def initialize(maxresults=nil, accountgroupid=nil, filters=nil, tags=nil, nexttoken=nil, ordertype=nil)
          @MaxResults = maxresults
          @AccountGroupId = accountgroupid
          @Filters = filters
          @Tags = tags
          @NextToken = nexttoken
          @OrderType = ordertype
        end

        def deserialize(params)
          @MaxResults = params['MaxResults']
          @AccountGroupId = params['AccountGroupId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NextToken = params['NextToken']
          @OrderType = params['OrderType']
        end
      end

      # ListAggregateDiscoveredResources返回参数结构体
      class ListAggregateDiscoveredResourcesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 详情
        # @type Items: Array
        # @param NextToken: 下一页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :NextToken, :RequestId

        def initialize(items=nil, nexttoken=nil, requestid=nil)
          @Items = items
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              aggregateresourceinfo_tmp = AggregateResourceInfo.new
              aggregateresourceinfo_tmp.deserialize(i)
              @Items << aggregateresourceinfo_tmp
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # ListConfigRules请求参数结构体
      class ListConfigRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页数量。
        # 取值范围：1~200
        # @type Limit: Integer
        # @param Offset: 偏移量。
        # 取值范围：最小值为0
        # @type Offset: Integer
        # @param OrderType: 排序类型(规则名称)。
        # 倒序：desc，
        # 顺序：asc
        # @type OrderType: String
        # @param RiskLevel: 风险等级。
        # 1：高风险，
        # 2：中风险，
        # 3：低风险。
        # @type RiskLevel: Array
        # @param State: 规则状态。
        # ACTIVE：启用
        # UN_ACTIVE：停用
        # @type State: String
        # @param ComplianceResult: 评估结果。
        # COMPLIANT：合规
        # NON_COMPLIANT：不合规
        # @type ComplianceResult: Array
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :Limit, :Offset, :OrderType, :RiskLevel, :State, :ComplianceResult, :RuleName

        def initialize(limit=nil, offset=nil, ordertype=nil, risklevel=nil, state=nil, complianceresult=nil, rulename=nil)
          @Limit = limit
          @Offset = offset
          @OrderType = ordertype
          @RiskLevel = risklevel
          @State = state
          @ComplianceResult = complianceresult
          @RuleName = rulename
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderType = params['OrderType']
          @RiskLevel = params['RiskLevel']
          @State = params['State']
          @ComplianceResult = params['ComplianceResult']
          @RuleName = params['RuleName']
        end
      end

      # ListConfigRules返回参数结构体
      class ListConfigRulesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Items: 详情
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Items, :RequestId

        def initialize(total=nil, items=nil, requestid=nil)
          @Total = total
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              configrule_tmp = ConfigRule.new
              configrule_tmp.deserialize(i)
              @Items << configrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDiscoveredResources请求参数结构体
      class ListDiscoveredResourcesRequest < TencentCloud::Common::AbstractModel
        # @param MaxResults: 每页显示数量
        # @type MaxResults: Integer
        # @param Filters: resourceName：资源名  resourceId ：资源ID
        # @type Filters: Array
        # @param Tags: 标签
        # @type Tags: Array
        # @param NextToken: 下一页token
        # @type NextToken: String
        # @param OrderType: 排序方式 asc、desc
        # @type OrderType: String

        attr_accessor :MaxResults, :Filters, :Tags, :NextToken, :OrderType

        def initialize(maxresults=nil, filters=nil, tags=nil, nexttoken=nil, ordertype=nil)
          @MaxResults = maxresults
          @Filters = filters
          @Tags = tags
          @NextToken = nexttoken
          @OrderType = ordertype
        end

        def deserialize(params)
          @MaxResults = params['MaxResults']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NextToken = params['NextToken']
          @OrderType = params['OrderType']
        end
      end

      # ListDiscoveredResources返回参数结构体
      class ListDiscoveredResourcesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 详情
        # @type Items: Array
        # @param NextToken: 下一页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :NextToken, :RequestId

        def initialize(items=nil, nexttoken=nil, requestid=nil)
          @Items = items
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              resourcelistinfo_tmp = ResourceListInfo.new
              resourcelistinfo_tmp.deserialize(i)
              @Items << resourcelistinfo_tmp
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # PutEvaluations请求参数结构体
      class PutEvaluationsRequest < TencentCloud::Common::AbstractModel
        # @param ResultToken: 回调令牌。从自定义规则所选的scf云函数入参中取参数ResultToken值
        # <a href="https://cloud.tencent.com/document/product/583/9210#.E5.87.BD.E6.95.B0.E5.85.A5.E5.8F.82.3Ca-id.3D.22input.22.3E.3C.2Fa.3E" target="_blank">云函数入参说明</a>
        # @type ResultToken: String
        # @param Evaluations: 自定义规则评估结果信息。
        # @type Evaluations: Array

        attr_accessor :ResultToken, :Evaluations

        def initialize(resulttoken=nil, evaluations=nil)
          @ResultToken = resulttoken
          @Evaluations = evaluations
        end

        def deserialize(params)
          @ResultToken = params['ResultToken']
          unless params['Evaluations'].nil?
            @Evaluations = []
            params['Evaluations'].each do |i|
              evaluation_tmp = Evaluation.new
              evaluation_tmp.deserialize(i)
              @Evaluations << evaluation_tmp
            end
          end
        end
      end

      # PutEvaluations返回参数结构体
      class PutEvaluationsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 资源列列表信息
      class ResourceListInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceRegion: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRegion: String
        # @param ResourceStatus: 资源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: String
        # @param ResourceDelete: 1 :已删除 2：未删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceDelete: Integer
        # @param ResourceCreateTime: 资源创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCreateTime: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ResourceZone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceZone: String
        # @param ComplianceResult: 合规状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceResult: String

        attr_accessor :ResourceType, :ResourceName, :ResourceId, :ResourceRegion, :ResourceStatus, :ResourceDelete, :ResourceCreateTime, :Tags, :ResourceZone, :ComplianceResult

        def initialize(resourcetype=nil, resourcename=nil, resourceid=nil, resourceregion=nil, resourcestatus=nil, resourcedelete=nil, resourcecreatetime=nil, tags=nil, resourcezone=nil, complianceresult=nil)
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @ResourceStatus = resourcestatus
          @ResourceDelete = resourcedelete
          @ResourceCreateTime = resourcecreatetime
          @Tags = tags
          @ResourceZone = resourcezone
          @ComplianceResult = complianceresult
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @ResourceStatus = params['ResourceStatus']
          @ResourceDelete = params['ResourceDelete']
          @ResourceCreateTime = params['ResourceCreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ResourceZone = params['ResourceZone']
          @ComplianceResult = params['ComplianceResult']
        end
      end

      # 管理端规则条件
      class SourceConditionForManage < TencentCloud::Common::AbstractModel
        # @param EmptyAs: 条件为空，合规：COMPLIANT，不合规：NON_COMPLIANT，无法应用：NOT_APPLICABLE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmptyAs: String
        # @param SelectPath: 配置路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectPath: String
        # @param Operator: 操作运算符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Required: 是否必须
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Required: Boolean
        # @param DesiredValue: 期望值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredValue: String

        attr_accessor :EmptyAs, :SelectPath, :Operator, :Required, :DesiredValue

        def initialize(emptyas=nil, selectpath=nil, operator=nil, required=nil, desiredvalue=nil)
          @EmptyAs = emptyas
          @SelectPath = selectpath
          @Operator = operator
          @Required = required
          @DesiredValue = desiredvalue
        end

        def deserialize(params)
          @EmptyAs = params['EmptyAs']
          @SelectPath = params['SelectPath']
          @Operator = params['Operator']
          @Required = params['Required']
          @DesiredValue = params['DesiredValue']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签value
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

      # 规则支持触发类型
      class TriggerType < TencentCloud::Common::AbstractModel
        # @param MessageType: 触发类型
        # @type MessageType: String
        # @param MaximumExecutionFrequency: 触发时间周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaximumExecutionFrequency: String

        attr_accessor :MessageType, :MaximumExecutionFrequency

        def initialize(messagetype=nil, maximumexecutionfrequency=nil)
          @MessageType = messagetype
          @MaximumExecutionFrequency = maximumexecutionfrequency
        end

        def deserialize(params)
          @MessageType = params['MessageType']
          @MaximumExecutionFrequency = params['MaximumExecutionFrequency']
        end
      end

    end
  end
end

