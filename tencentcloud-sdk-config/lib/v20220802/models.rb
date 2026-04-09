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
  module Config
    module V20220802
      # AddAggregateCompliancePack请求参数结构体
      class AddAggregateCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param ConfigRules: <p>合规包规则</p>
        # @type ConfigRules: Array
        # @param RiskLevel: <p>风险等级<br>1：高风险。<br>2：中风险。<br>3：低风险。</p>
        # @type RiskLevel: Integer
        # @param CompliancePackName: <p>合规包名称</p>
        # @type CompliancePackName: String
        # @param AccountGroupId: <p>账号组ID</p>
        # @type AccountGroupId: String
        # @param Description: <p>描述</p>
        # @type Description: String

        attr_accessor :ConfigRules, :RiskLevel, :CompliancePackName, :AccountGroupId, :Description

        def initialize(configrules=nil, risklevel=nil, compliancepackname=nil, accountgroupid=nil, description=nil)
          @ConfigRules = configrules
          @RiskLevel = risklevel
          @CompliancePackName = compliancepackname
          @AccountGroupId = accountgroupid
          @Description = description
        end

        def deserialize(params)
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              compliancepackrule_tmp = CompliancePackRule.new
              compliancepackrule_tmp.deserialize(i)
              @ConfigRules << compliancepackrule_tmp
            end
          end
          @RiskLevel = params['RiskLevel']
          @CompliancePackName = params['CompliancePackName']
          @AccountGroupId = params['AccountGroupId']
          @Description = params['Description']
        end
      end

      # AddAggregateCompliancePack返回参数结构体
      class AddAggregateCompliancePackResponse < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: <p>合规包Id</p>
        # @type CompliancePackId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompliancePackId, :RequestId

        def initialize(compliancepackid=nil, requestid=nil)
          @CompliancePackId = compliancepackid
          @RequestId = requestid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @RequestId = params['RequestId']
        end
      end

      # AddAggregateConfigRule请求参数结构体
      class AddAggregateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param Identifier: 规则模板标识，预设规则模板为Identifier, 自定义规则为云函数arn（region:functionName）
        # @type Identifier: String
        # @param IdentifierType: 规则模板类型，SYSTEM, CUSTOMIZE
        # @type IdentifierType: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param ResourceType: 规则支持的资源
        # @type ResourceType: Array
        # @param TriggerType: 触发类型，最多支持两种
        # @type TriggerType: Array
        # @param RiskLevel: 风险等级
        # 1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Integer
        # @param AccountGroupId: 账号组Id
        # @type AccountGroupId: String
        # @param InputParameter: 入参
        # @type InputParameter: Array
        # @param Description: 描述
        # @type Description: String
        # @param RegionScope: 关联地域
        # @type RegionScope: Array
        # @param TagsScope: 关联标签
        # @type TagsScope: Array
        # @param ExcludeResourceIdsScope: 排除的资源ID
        # @type ExcludeResourceIdsScope: Array

        attr_accessor :Identifier, :IdentifierType, :RuleName, :ResourceType, :TriggerType, :RiskLevel, :AccountGroupId, :InputParameter, :Description, :RegionScope, :TagsScope, :ExcludeResourceIdsScope

        def initialize(identifier=nil, identifiertype=nil, rulename=nil, resourcetype=nil, triggertype=nil, risklevel=nil, accountgroupid=nil, inputparameter=nil, description=nil, regionscope=nil, tagsscope=nil, excluderesourceidsscope=nil)
          @Identifier = identifier
          @IdentifierType = identifiertype
          @RuleName = rulename
          @ResourceType = resourcetype
          @TriggerType = triggertype
          @RiskLevel = risklevel
          @AccountGroupId = accountgroupid
          @InputParameter = inputparameter
          @Description = description
          @RegionScope = regionscope
          @TagsScope = tagsscope
          @ExcludeResourceIdsScope = excluderesourceidsscope
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @IdentifierType = params['IdentifierType']
          @RuleName = params['RuleName']
          @ResourceType = params['ResourceType']
          unless params['TriggerType'].nil?
            @TriggerType = []
            params['TriggerType'].each do |i|
              triggertype_tmp = TriggerType.new
              triggertype_tmp.deserialize(i)
              @TriggerType << triggertype_tmp
            end
          end
          @RiskLevel = params['RiskLevel']
          @AccountGroupId = params['AccountGroupId']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameter_tmp = InputParameter.new
              inputparameter_tmp.deserialize(i)
              @InputParameter << inputparameter_tmp
            end
          end
          @Description = params['Description']
          @RegionScope = params['RegionScope']
          unless params['TagsScope'].nil?
            @TagsScope = []
            params['TagsScope'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagsScope << tag_tmp
            end
          end
          @ExcludeResourceIdsScope = params['ExcludeResourceIdsScope']
        end
      end

      # AddAggregateConfigRule返回参数结构体
      class AddAggregateConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # AddCompliancePack请求参数结构体
      class AddCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param ConfigRules: <p>合规包规则</p>
        # @type ConfigRules: Array
        # @param RiskLevel: <p>风险等级<br>1：高风险。<br>2：中风险。<br>3：低风险。</p>
        # @type RiskLevel: Integer
        # @param CompliancePackName: <p>合规包名称</p>
        # @type CompliancePackName: String
        # @param Description: <p>描述</p>
        # @type Description: String

        attr_accessor :ConfigRules, :RiskLevel, :CompliancePackName, :Description

        def initialize(configrules=nil, risklevel=nil, compliancepackname=nil, description=nil)
          @ConfigRules = configrules
          @RiskLevel = risklevel
          @CompliancePackName = compliancepackname
          @Description = description
        end

        def deserialize(params)
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              compliancepackrule_tmp = CompliancePackRule.new
              compliancepackrule_tmp.deserialize(i)
              @ConfigRules << compliancepackrule_tmp
            end
          end
          @RiskLevel = params['RiskLevel']
          @CompliancePackName = params['CompliancePackName']
          @Description = params['Description']
        end
      end

      # AddCompliancePack返回参数结构体
      class AddCompliancePackResponse < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: <p>合规包Id</p>
        # @type CompliancePackId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompliancePackId, :RequestId

        def initialize(compliancepackid=nil, requestid=nil)
          @CompliancePackId = compliancepackid
          @RequestId = requestid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @RequestId = params['RequestId']
        end
      end

      # AddConfigRule请求参数结构体
      class AddConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param Identifier: 规则模板标识，预设规则模板为Identifier, 自定义规则为云函数arn（region:functionName）
        # @type Identifier: String
        # @param IdentifierType: 规则模板类型，SYSTEM, CUSTOMIZE
        # @type IdentifierType: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param ResourceType: 规则支持的资源
        # @type ResourceType: Array
        # @param TriggerType: 触发类型，最多支持两种
        # @type TriggerType: Array
        # @param RiskLevel: 风险等级
        # 1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Integer
        # @param InputParameter: 入参
        # @type InputParameter: Array
        # @param Description: 规则描述。长度范围0~1024字符
        # @type Description: String
        # @param RegionsScope: 规则评估地域范围，规则仅对指定地域中的资源生效。
        # 支持的地域范围config:ListResourceRegions返回的地域
        # @type RegionsScope: Array
        # @param TagsScope: 规则评估标签范围，规则仅对绑定指定标签的资源生效。
        # @type TagsScope: Array
        # @param ExcludeResourceIdsScope: 规则对指定资源ID无效，即不对该资源执行评估。
        # @type ExcludeResourceIdsScope: Array

        attr_accessor :Identifier, :IdentifierType, :RuleName, :ResourceType, :TriggerType, :RiskLevel, :InputParameter, :Description, :RegionsScope, :TagsScope, :ExcludeResourceIdsScope

        def initialize(identifier=nil, identifiertype=nil, rulename=nil, resourcetype=nil, triggertype=nil, risklevel=nil, inputparameter=nil, description=nil, regionsscope=nil, tagsscope=nil, excluderesourceidsscope=nil)
          @Identifier = identifier
          @IdentifierType = identifiertype
          @RuleName = rulename
          @ResourceType = resourcetype
          @TriggerType = triggertype
          @RiskLevel = risklevel
          @InputParameter = inputparameter
          @Description = description
          @RegionsScope = regionsscope
          @TagsScope = tagsscope
          @ExcludeResourceIdsScope = excluderesourceidsscope
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @IdentifierType = params['IdentifierType']
          @RuleName = params['RuleName']
          @ResourceType = params['ResourceType']
          unless params['TriggerType'].nil?
            @TriggerType = []
            params['TriggerType'].each do |i|
              triggertype_tmp = TriggerType.new
              triggertype_tmp.deserialize(i)
              @TriggerType << triggertype_tmp
            end
          end
          @RiskLevel = params['RiskLevel']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameter_tmp = InputParameter.new
              inputparameter_tmp.deserialize(i)
              @InputParameter << inputparameter_tmp
            end
          end
          @Description = params['Description']
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
        end
      end

      # AddConfigRule返回参数结构体
      class AddConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # 评估结果
      class AggregateEvaluationResult < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param ConfigRuleId: 规则id
        # @type ConfigRuleId: String
        # @param ConfigRuleName: 规则名称
        # @type ConfigRuleName: String
        # @param CompliancePackId: 合规包id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompliancePackId: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param Annotation: 评估结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotation: :class:`Tencentcloud::Config.v20220802.models.Annotation`
        # @param ComplianceType: 合规类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceType: String
        # @param InvokingEventMessageType: 规则发起类型
        # @type InvokingEventMessageType: String
        # @param ConfigRuleInvokedTime: 评估发起时间
        # @type ConfigRuleInvokedTime: String
        # @param ResultRecordedTime: 评估实际时间
        # @type ResultRecordedTime: String
        # @param ResourceOwnerId: 资源所属用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceOwnerId: Integer
        # @param ResourceOwnerName: 资源所属用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceOwnerName: String

        attr_accessor :ResourceId, :ResourceType, :ResourceRegion, :ResourceName, :ConfigRuleId, :ConfigRuleName, :CompliancePackId, :RiskLevel, :Annotation, :ComplianceType, :InvokingEventMessageType, :ConfigRuleInvokedTime, :ResultRecordedTime, :ResourceOwnerId, :ResourceOwnerName

        def initialize(resourceid=nil, resourcetype=nil, resourceregion=nil, resourcename=nil, configruleid=nil, configrulename=nil, compliancepackid=nil, risklevel=nil, annotation=nil, compliancetype=nil, invokingeventmessagetype=nil, configruleinvokedtime=nil, resultrecordedtime=nil, resourceownerid=nil, resourceownername=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @ResourceRegion = resourceregion
          @ResourceName = resourcename
          @ConfigRuleId = configruleid
          @ConfigRuleName = configrulename
          @CompliancePackId = compliancepackid
          @RiskLevel = risklevel
          @Annotation = annotation
          @ComplianceType = compliancetype
          @InvokingEventMessageType = invokingeventmessagetype
          @ConfigRuleInvokedTime = configruleinvokedtime
          @ResultRecordedTime = resultrecordedtime
          @ResourceOwnerId = resourceownerid
          @ResourceOwnerName = resourceownername
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @ResourceRegion = params['ResourceRegion']
          @ResourceName = params['ResourceName']
          @ConfigRuleId = params['ConfigRuleId']
          @ConfigRuleName = params['ConfigRuleName']
          @CompliancePackId = params['CompliancePackId']
          @RiskLevel = params['RiskLevel']
          unless params['Annotation'].nil?
            @Annotation = Annotation.new
            @Annotation.deserialize(params['Annotation'])
          end
          @ComplianceType = params['ComplianceType']
          @InvokingEventMessageType = params['InvokingEventMessageType']
          @ConfigRuleInvokedTime = params['ConfigRuleInvokedTime']
          @ResultRecordedTime = params['ResultRecordedTime']
          @ResourceOwnerId = params['ResourceOwnerId']
          @ResourceOwnerName = params['ResourceOwnerName']
        end
      end

      # 资源列列表信息
      class AggregateResourceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceRegion: 地域
        # @type ResourceRegion: String
        # @param ResourceStatus: 资源状态
        # @type ResourceStatus: String
        # @param ResourceDelete: 是否删除 1:已删除 0:未删除
        # @type ResourceDelete: Integer
        # @param ResourceCreateTime: 资源创建时间
        # @type ResourceCreateTime: String
        # @param Tags: 标签信息
        # @type Tags: Array
        # @param ResourceZone: 可用区
        # @type ResourceZone: String
        # @param ComplianceResult: 合规状态
        # @type ComplianceResult: String
        # @param ResourceOwnerId: 资源所属用户ID
        # @type ResourceOwnerId: Integer
        # @param ResourceOwnerName: 用户昵称
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

      # 用户组列表信息
      class Aggregator < TencentCloud::Common::AbstractModel
        # @param Name: 账号组名称
        # @type Name: String
        # @param Description: 账号组描述
        # @type Description: String
        # @param OwnerUin: 创建者用户ID
        # @type OwnerUin: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AccountCount: 账号组成员数量
        # @type AccountCount: Integer
        # @param Type: RD:全局账号组
        # @type Type: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param AggregatorStatus: 账号组状态
        # @type AggregatorStatus: Integer
        # @param MemberName: 账号组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberName: String

        attr_accessor :Name, :Description, :OwnerUin, :CreateTime, :AccountCount, :Type, :AccountGroupId, :AggregatorStatus, :MemberName

        def initialize(name=nil, description=nil, owneruin=nil, createtime=nil, accountcount=nil, type=nil, accountgroupid=nil, aggregatorstatus=nil, membername=nil)
          @Name = name
          @Description = description
          @OwnerUin = owneruin
          @CreateTime = createtime
          @AccountCount = accountcount
          @Type = type
          @AccountGroupId = accountgroupid
          @AggregatorStatus = aggregatorstatus
          @MemberName = membername
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @OwnerUin = params['OwnerUin']
          @CreateTime = params['CreateTime']
          @AccountCount = params['AccountCount']
          @Type = params['Type']
          @AccountGroupId = params['AccountGroupId']
          @AggregatorStatus = params['AggregatorStatus']
          @MemberName = params['MemberName']
        end
      end

      # 成员信息
      class AggregatorAccount < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员ID
        # @type MemberUin: Integer
        # @param MemberName: 成员名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberName: String

        attr_accessor :MemberUin, :MemberName

        def initialize(memberuin=nil, membername=nil)
          @MemberUin = memberuin
          @MemberName = membername
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @MemberName = params['MemberName']
        end
      end

      # 合规详情
      class Annotation < TencentCloud::Common::AbstractModel
        # @param Configuration: 资源当前实际配置。长度为0~256位字符，即资源不合规配置
        # @type Configuration: String
        # @param DesiredValue: 资源期望配置。长度为0~256位字符，即资源合规配置
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

      # CloseAggregateConfigRule请求参数结构体
      class CloseAggregateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AccountGroupId: 账号组Id
        # @type AccountGroupId: String

        attr_accessor :RuleId, :AccountGroupId

        def initialize(ruleid=nil, accountgroupid=nil)
          @RuleId = ruleid
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # CloseAggregateConfigRule返回参数结构体
      class CloseAggregateConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # CloseConfigRecorder请求参数结构体
      class CloseConfigRecorderRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CloseConfigRecorder返回参数结构体
      class CloseConfigRecorderResponse < TencentCloud::Common::AbstractModel
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

      # CloseConfigRule请求参数结构体
      class CloseConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # CloseConfigRule返回参数结构体
      class CloseConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # 合规包规则信息
      class ComplianceConfigRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param Status: 规则状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ConfigRuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRuleId: String
        # @param ComplianceResult: 评估结果
        # 合规： 'COMPLIANT'
        # 不合规： 'NON_COMPLIANT'
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceResult: String
        # @param Labels: 关键字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param InputParameter: 入参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputParameter: Array
        # @param SourceCondition: 参数格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceCondition: Array
        # @param Identifier: 规则标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param CreateByType: 创建方式 user、compliancePack、system
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateByType: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ManageInputParameter: 参数描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManageInputParameter: Array

        attr_accessor :RuleName, :RiskLevel, :Status, :ConfigRuleId, :ComplianceResult, :Labels, :InputParameter, :SourceCondition, :Identifier, :CreateByType, :Description, :ManageInputParameter

        def initialize(rulename=nil, risklevel=nil, status=nil, configruleid=nil, complianceresult=nil, labels=nil, inputparameter=nil, sourcecondition=nil, identifier=nil, createbytype=nil, description=nil, manageinputparameter=nil)
          @RuleName = rulename
          @RiskLevel = risklevel
          @Status = status
          @ConfigRuleId = configruleid
          @ComplianceResult = complianceresult
          @Labels = labels
          @InputParameter = inputparameter
          @SourceCondition = sourcecondition
          @Identifier = identifier
          @CreateByType = createbytype
          @Description = description
          @ManageInputParameter = manageinputparameter
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @RiskLevel = params['RiskLevel']
          @Status = params['Status']
          @ConfigRuleId = params['ConfigRuleId']
          @ComplianceResult = params['ComplianceResult']
          @Labels = params['Labels']
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
          @Identifier = params['Identifier']
          @CreateByType = params['CreateByType']
          @Description = params['Description']
          unless params['ManageInputParameter'].nil?
            @ManageInputParameter = []
            params['ManageInputParameter'].each do |i|
              inputparameterformanage_tmp = InputParameterForManage.new
              inputparameterformanage_tmp.deserialize(i)
              @ManageInputParameter << inputparameterformanage_tmp
            end
          end
        end
      end

      # 合规包规则信息
      class CompliancePackRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param InputParameter: 入参
        # @type InputParameter: Array
        # @param Identifier: 规则身份标识
        # @type Identifier: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ManagedRuleIdentifier: 预设规则身份标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManagedRuleIdentifier: String
        # @param ConfigRuleId: 规则ID
        # @type ConfigRuleId: String
        # @param CompliancePackId: 合规包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompliancePackId: String

        attr_accessor :RuleName, :RiskLevel, :InputParameter, :Identifier, :Description, :ManagedRuleIdentifier, :ConfigRuleId, :CompliancePackId

        def initialize(rulename=nil, risklevel=nil, inputparameter=nil, identifier=nil, description=nil, managedruleidentifier=nil, configruleid=nil, compliancepackid=nil)
          @RuleName = rulename
          @RiskLevel = risklevel
          @InputParameter = inputparameter
          @Identifier = identifier
          @Description = description
          @ManagedRuleIdentifier = managedruleidentifier
          @ConfigRuleId = configruleid
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @RiskLevel = params['RiskLevel']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameter_tmp = InputParameter.new
              inputparameter_tmp.deserialize(i)
              @InputParameter << inputparameter_tmp
            end
          end
          @Identifier = params['Identifier']
          @Description = params['Description']
          @ManagedRuleIdentifier = params['ManagedRuleIdentifier']
          @ConfigRuleId = params['ConfigRuleId']
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # 管理端系统合规包规则
      class CompliancePackRuleForManage < TencentCloud::Common::AbstractModel
        # @param Identifier: <p>规则唯一身份标识</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param RuleName: <p>规则名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RiskLevel: <p>风险等级</p><p>1：高风险 2：中风险  3：低风险</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param CreateTime: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param CompliancePackRules: <p>合规包规则</p>
        # @type CompliancePackRules: Array
        # @param Control: <p>规则编号信息</p>
        # @type Control: Array
        # @param ResourceTypes: <p>资源类型</p>
        # @type ResourceTypes: Array

        attr_accessor :Identifier, :RuleName, :Description, :RiskLevel, :CreateTime, :UpdateTime, :CompliancePackRules, :Control, :ResourceTypes

        def initialize(identifier=nil, rulename=nil, description=nil, risklevel=nil, createtime=nil, updatetime=nil, compliancepackrules=nil, control=nil, resourcetypes=nil)
          @Identifier = identifier
          @RuleName = rulename
          @Description = description
          @RiskLevel = risklevel
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CompliancePackRules = compliancepackrules
          @Control = control
          @ResourceTypes = resourcetypes
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @RuleName = params['RuleName']
          @Description = params['Description']
          @RiskLevel = params['RiskLevel']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['CompliancePackRules'].nil?
            @CompliancePackRules = []
            params['CompliancePackRules'].each do |i|
              compliancepackrules_tmp = CompliancePackRules.new
              compliancepackrules_tmp.deserialize(i)
              @CompliancePackRules << compliancepackrules_tmp
            end
          end
          unless params['Control'].nil?
            @Control = []
            params['Control'].each do |i|
              control_tmp = Control.new
              control_tmp.deserialize(i)
              @Control << control_tmp
            end
          end
          @ResourceTypes = params['ResourceTypes']
        end
      end

      # 合规包规则信息
      class CompliancePackRules < TencentCloud::Common::AbstractModel
        # @param Identifier: <p>规则标识</p>
        # @type Identifier: String
        # @param Control: <p>规则编号信息</p>
        # @type Control: Array
        # @param ResourceTypes: <p>资源类型</p>
        # @type ResourceTypes: Array

        attr_accessor :Identifier, :Control, :ResourceTypes

        def initialize(identifier=nil, control=nil, resourcetypes=nil)
          @Identifier = identifier
          @Control = control
          @ResourceTypes = resourcetypes
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          unless params['Control'].nil?
            @Control = []
            params['Control'].each do |i|
              control_tmp = Control.new
              control_tmp.deserialize(i)
              @Control << control_tmp
            end
          end
          @ResourceTypes = params['ResourceTypes']
        end
      end

      # 用户合规包信息
      class ConfigCompliancePack < TencentCloud::Common::AbstractModel
        # @param Status: 合规包状态
        # @type Status: String
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param ComplianceResult: 评估结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceResult: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param NoCompliantNames: 不合规规则名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCompliantNames: Array
        # @param RuleCount: 合规包规则数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCount: Integer

        attr_accessor :Status, :CompliancePackId, :Description, :CompliancePackName, :RiskLevel, :ComplianceResult, :CreateTime, :NoCompliantNames, :RuleCount

        def initialize(status=nil, compliancepackid=nil, description=nil, compliancepackname=nil, risklevel=nil, complianceresult=nil, createtime=nil, nocompliantnames=nil, rulecount=nil)
          @Status = status
          @CompliancePackId = compliancepackid
          @Description = description
          @CompliancePackName = compliancepackname
          @RiskLevel = risklevel
          @ComplianceResult = complianceresult
          @CreateTime = createtime
          @NoCompliantNames = nocompliantnames
          @RuleCount = rulecount
        end

        def deserialize(params)
          @Status = params['Status']
          @CompliancePackId = params['CompliancePackId']
          @Description = params['Description']
          @CompliancePackName = params['CompliancePackName']
          @RiskLevel = params['RiskLevel']
          @ComplianceResult = params['ComplianceResult']
          @CreateTime = params['CreateTime']
          @NoCompliantNames = params['NoCompliantNames']
          @RuleCount = params['RuleCount']
        end
      end

      # 资源类型信息
      class ConfigResource < TencentCloud::Common::AbstractModel
        # @param Product: 产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: String
        # @param ProductName: 产品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceTypeName: 资源类型名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTypeName: String

        attr_accessor :Product, :ProductName, :ResourceType, :ResourceTypeName

        def initialize(product=nil, productname=nil, resourcetype=nil, resourcetypename=nil)
          @Product = product
          @ProductName = productname
          @ResourceType = resourcetype
          @ResourceTypeName = resourcetypename
        end

        def deserialize(params)
          @Product = params['Product']
          @ProductName = params['ProductName']
          @ResourceType = params['ResourceType']
          @ResourceTypeName = params['ResourceTypeName']
        end
      end

      # 规则详情
      class ConfigRule < TencentCloud::Common::AbstractModel
        # @param Identifier: 规则标识
        # @type Identifier: String
        # @param RuleName: 规则名
        # @type RuleName: String
        # @param InputParameter: 规则参数
        # @type InputParameter: Array
        # @param SourceCondition: 规则触发条件
        # @type SourceCondition: Array
        # @param ResourceType: 规则支持的资源类型，规则仅对指定资源类型的资源生效。
        # @type ResourceType: Array
        # @param Labels: 规则所属标签
        # @type Labels: Array
        # @param RiskLevel: 规则风险等级
        # 1:低风险
        # 2:中风险
        # 3:高风险
        # @type RiskLevel: Integer
        # @param ServiceFunction: 规则对应的函数
        # @type ServiceFunction: String
        # @param CreateTime: 创建时间
        # 格式：YYYY-MM-DD h:i:s
        # @type CreateTime: String
        # @param Description: 规则描述
        # @type Description: String
        # @param Status: ACTIVE：启用
        # NO_ACTIVE：停止
        # @type Status: String
        # @param ComplianceResult: 合规： 'COMPLIANT'
        # 不合规： 'NON_COMPLIANT'
        # 无法应用规则： 'NOT_APPLICABLE'
        # @type ComplianceResult: String
        # @param Annotation: ["",""]
        # @type Annotation: :class:`Tencentcloud::Config.v20220802.models.Annotation`
        # @param ConfigRuleInvokedTime: 规则评估时间
        # 格式：YYYY-MM-DD h:i:s
        # @type ConfigRuleInvokedTime: String
        # @param ConfigRuleId: 规则ID
        # @type ConfigRuleId: String
        # @param IdentifierType: CUSTOMIZE：自定义规则、
        # SYSTEM：托管规则
        # @type IdentifierType: String
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param TriggerType: 触发类型
        # ScheduledNotification：周期触发、
        # ConfigurationItemChangeNotification：变更触发
        # @type TriggerType: Array
        # @param ManageInputParameter: 参数详情
        # @type ManageInputParameter: Array
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param RegionsScope: 关联地域
        # @type RegionsScope: Array
        # @param TagsScope: 关联标签
        # @type TagsScope: Array
        # @param ExcludeResourceIdsScope:  规则对指定资源ID无效，即不对该资源执行评估。
        # @type ExcludeResourceIdsScope: Array
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param AccountGroupName: 账号组名称
        # @type AccountGroupName: String
        # @param RuleOwnerId: 规则所属用户ID
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

      # 规则编号信息
      class Control < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则编号</p>
        # @type Id: String
        # @param Description: <p>编号描述</p>
        # @type Description: String

        attr_accessor :Id, :Description

        def initialize(id=nil, description=nil)
          @Id = id
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          @Description = params['Description']
        end
      end

      # CreateAggregator请求参数结构体
      class CreateAggregatorRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>账号组名称</p>
        # @type Name: String
        # @param Description: <p>账号组描述</p>
        # @type Description: String
        # @param Type: <p>账号组类型 </p><p>枚举值：</p><ul><li>RD： 全局账号组</li><li>CUSTOM： 自定义账号组</li></ul>
        # @type Type: String
        # @param AggregatorAccounts: <p>账号组成员信息列表，最多100个</p>
        # @type AggregatorAccounts: Array

        attr_accessor :Name, :Description, :Type, :AggregatorAccounts

        def initialize(name=nil, description=nil, type=nil, aggregatoraccounts=nil)
          @Name = name
          @Description = description
          @Type = type
          @AggregatorAccounts = aggregatoraccounts
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          unless params['AggregatorAccounts'].nil?
            @AggregatorAccounts = []
            params['AggregatorAccounts'].each do |i|
              aggregatoraccount_tmp = AggregatorAccount.new
              aggregatoraccount_tmp.deserialize(i)
              @AggregatorAccounts << aggregatoraccount_tmp
            end
          end
        end
      end

      # CreateAggregator返回参数结构体
      class CreateAggregatorResponse < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: <p>账号组Id</p>
        # @type AccountGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountGroupId, :RequestId

        def initialize(accountgroupid=nil, requestid=nil)
          @AccountGroupId = accountgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRemediation请求参数结构体
      class CreateRemediationRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则 ID</p>
        # @type RuleId: String
        # @param RemediationType: <p>修正类型取值：   SCF：云函数（自定义修正）。</p>
        # @type RemediationType: String
        # @param RemediationTemplateId: <p>修正模板 ID</p>
        # @type RemediationTemplateId: String
        # @param InvokeType: <p>修正执行方式。<br>取值：   MANUAL_EXECUTION：手动执行</p>
        # @type InvokeType: String
        # @param SourceType: <p>执行修正的模板来源<br>CUSTOM：自定义模板。</p>
        # @type SourceType: String

        attr_accessor :RuleId, :RemediationType, :RemediationTemplateId, :InvokeType, :SourceType

        def initialize(ruleid=nil, remediationtype=nil, remediationtemplateid=nil, invoketype=nil, sourcetype=nil)
          @RuleId = ruleid
          @RemediationType = remediationtype
          @RemediationTemplateId = remediationtemplateid
          @InvokeType = invoketype
          @SourceType = sourcetype
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RemediationType = params['RemediationType']
          @RemediationTemplateId = params['RemediationTemplateId']
          @InvokeType = params['InvokeType']
          @SourceType = params['SourceType']
        end
      end

      # CreateRemediation返回参数结构体
      class CreateRemediationResponse < TencentCloud::Common::AbstractModel
        # @param RemediationId: <p>修正设置Id</p>
        # @type RemediationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RemediationId, :RequestId

        def initialize(remediationid=nil, requestid=nil)
          @RemediationId = remediationid
          @RequestId = requestid
        end

        def deserialize(params)
          @RemediationId = params['RemediationId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAggregateCompliancePack请求参数结构体
      class DeleteAggregateCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String

        attr_accessor :CompliancePackId, :AccountGroupId

        def initialize(compliancepackid=nil, accountgroupid=nil)
          @CompliancePackId = compliancepackid
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # DeleteAggregateCompliancePack返回参数结构体
      class DeleteAggregateCompliancePackResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAggregateConfigRule请求参数结构体
      class DeleteAggregateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String

        attr_accessor :RuleId, :AccountGroupId

        def initialize(ruleid=nil, accountgroupid=nil)
          @RuleId = ruleid
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # DeleteAggregateConfigRule返回参数结构体
      class DeleteAggregateConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCompliancePack请求参数结构体
      class DeleteCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String

        attr_accessor :CompliancePackId

        def initialize(compliancepackid=nil)
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # DeleteCompliancePack返回参数结构体
      class DeleteCompliancePackResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConfigRule请求参数结构体
      class DeleteConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DeleteConfigRule返回参数结构体
      class DeleteConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRemediations请求参数结构体
      class DeleteRemediationsRequest < TencentCloud::Common::AbstractModel
        # @param RemediationIds: 修正设置ID
        # @type RemediationIds: Array

        attr_accessor :RemediationIds

        def initialize(remediationids=nil)
          @RemediationIds = remediationids
        end

        def deserialize(params)
          @RemediationIds = params['RemediationIds']
        end
      end

      # DeleteRemediations返回参数结构体
      class DeleteRemediationsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAggregateCompliancePack请求参数结构体
      class DescribeAggregateCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String

        attr_accessor :AccountGroupId, :CompliancePackId

        def initialize(accountgroupid=nil, compliancepackid=nil)
          @AccountGroupId = accountgroupid
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # DescribeAggregateCompliancePack返回参数结构体
      class DescribeAggregateCompliancePackResponse < TencentCloud::Common::AbstractModel
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param ConfigRules: 合规包规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRules: Array
        # @param CompliancePackId: 合规包id
        # @type CompliancePackId: String
        # @param Status: 合规包状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompliancePackName, :Description, :CreateTime, :RiskLevel, :ConfigRules, :CompliancePackId, :Status, :RequestId

        def initialize(compliancepackname=nil, description=nil, createtime=nil, risklevel=nil, configrules=nil, compliancepackid=nil, status=nil, requestid=nil)
          @CompliancePackName = compliancepackname
          @Description = description
          @CreateTime = createtime
          @RiskLevel = risklevel
          @ConfigRules = configrules
          @CompliancePackId = compliancepackid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @CompliancePackName = params['CompliancePackName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @RiskLevel = params['RiskLevel']
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              complianceconfigrule_tmp = ComplianceConfigRule.new
              complianceconfigrule_tmp.deserialize(i)
              @ConfigRules << complianceconfigrule_tmp
            end
          end
          @CompliancePackId = params['CompliancePackId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAggregateConfigDeliver请求参数结构体
      class DescribeAggregateConfigDeliverRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String

        attr_accessor :AccountGroupId

        def initialize(accountgroupid=nil)
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # DescribeAggregateConfigDeliver返回参数结构体
      class DescribeAggregateConfigDeliverResponse < TencentCloud::Common::AbstractModel
        # @param DeliverName: 投递名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverName: String
        # @param TargetArn: 资源六段式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetArn: String
        # @param Status: 投递状态 DeliverStatus：0 关闭  1 开启
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DeliverPrefix: 日志前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverPrefix: String
        # @param DeliverType: 投递类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverType: String
        # @param DeliverUin: 支持跨账号投递的成员账号uin，只能是委派管理员。默认为0，即投递到管理员账号下
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverUin: Integer
        # @param DeliverContentType: 1：配置变更 2： 资源列表 3：全部
        # @type DeliverContentType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeliverName, :TargetArn, :Status, :CreateTime, :DeliverPrefix, :DeliverType, :DeliverUin, :DeliverContentType, :RequestId

        def initialize(delivername=nil, targetarn=nil, status=nil, createtime=nil, deliverprefix=nil, delivertype=nil, deliveruin=nil, delivercontenttype=nil, requestid=nil)
          @DeliverName = delivername
          @TargetArn = targetarn
          @Status = status
          @CreateTime = createtime
          @DeliverPrefix = deliverprefix
          @DeliverType = delivertype
          @DeliverUin = deliveruin
          @DeliverContentType = delivercontenttype
          @RequestId = requestid
        end

        def deserialize(params)
          @DeliverName = params['DeliverName']
          @TargetArn = params['TargetArn']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @DeliverPrefix = params['DeliverPrefix']
          @DeliverType = params['DeliverType']
          @DeliverUin = params['DeliverUin']
          @DeliverContentType = params['DeliverContentType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAggregateConfigRule请求参数结构体
      class DescribeAggregateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AccountGroupId: 账号组
        # @type AccountGroupId: String

        attr_accessor :RuleId, :AccountGroupId

        def initialize(ruleid=nil, accountgroupid=nil)
          @RuleId = ruleid
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # DescribeAggregateConfigRule返回参数结构体
      class DescribeAggregateConfigRuleResponse < TencentCloud::Common::AbstractModel
        # @param ConfigRule: 规则详情
        # @type ConfigRule: :class:`Tencentcloud::Config.v20220802.models.ConfigRule`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigRule, :RequestId

        def initialize(configrule=nil, requestid=nil)
          @ConfigRule = configrule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigRule'].nil?
            @ConfigRule = ConfigRule.new
            @ConfigRule.deserialize(params['ConfigRule'])
          end
          @RequestId = params['RequestId']
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
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceName: 资源名
        # @type ResourceName: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param ResourceZone: 资源可用区
        # @type ResourceZone: String
        # @param Configuration: 资源配置
        # @type Configuration: String
        # @param ResourceCreateTime: 资源创建时间
        # @type ResourceCreateTime: String
        # @param Tags: 资源标签
        # @type Tags: Array
        # @param UpdateTime: 资源更新时间
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

      # DescribeAggregator请求参数结构体
      class DescribeAggregatorRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: <p>账号组ID</p>
        # @type AccountGroupId: String
        # @param OwnerUin: <p>账号组创建者ID</p>
        # @type OwnerUin: Integer

        attr_accessor :AccountGroupId, :OwnerUin

        def initialize(accountgroupid=nil, owneruin=nil)
          @AccountGroupId = accountgroupid
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @OwnerUin = params['OwnerUin']
        end
      end

      # DescribeAggregator返回参数结构体
      class DescribeAggregatorResponse < TencentCloud::Common::AbstractModel
        # @param Name: <p>账号组名称</p>
        # @type Name: String
        # @param Description: <p>账号组描述</p>
        # @type Description: String
        # @param Type: <p>账号组类型</p>
        # @type Type: String
        # @param AggregatorAccounts: <p>成员信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggregatorAccounts: Array
        # @param AggregatorStatus: <p>创建状态</p>
        # @type AggregatorStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :Type, :AggregatorAccounts, :AggregatorStatus, :RequestId

        def initialize(name=nil, description=nil, type=nil, aggregatoraccounts=nil, aggregatorstatus=nil, requestid=nil)
          @Name = name
          @Description = description
          @Type = type
          @AggregatorAccounts = aggregatoraccounts
          @AggregatorStatus = aggregatorstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          unless params['AggregatorAccounts'].nil?
            @AggregatorAccounts = []
            params['AggregatorAccounts'].each do |i|
              aggregatoraccount_tmp = AggregatorAccount.new
              aggregatoraccount_tmp.deserialize(i)
              @AggregatorAccounts << aggregatoraccount_tmp
            end
          end
          @AggregatorStatus = params['AggregatorStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompliancePack请求参数结构体
      class DescribeCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String

        attr_accessor :CompliancePackId

        def initialize(compliancepackid=nil)
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # DescribeCompliancePack返回参数结构体
      class DescribeCompliancePackResponse < TencentCloud::Common::AbstractModel
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param ConfigRules: 合规包规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRules: Array
        # @param CompliancePackId: 合规包id
        # @type CompliancePackId: String
        # @param Status: 合规包状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompliancePackName, :Description, :CreateTime, :RiskLevel, :ConfigRules, :CompliancePackId, :Status, :RequestId

        def initialize(compliancepackname=nil, description=nil, createtime=nil, risklevel=nil, configrules=nil, compliancepackid=nil, status=nil, requestid=nil)
          @CompliancePackName = compliancepackname
          @Description = description
          @CreateTime = createtime
          @RiskLevel = risklevel
          @ConfigRules = configrules
          @CompliancePackId = compliancepackid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @CompliancePackName = params['CompliancePackName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @RiskLevel = params['RiskLevel']
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              complianceconfigrule_tmp = ComplianceConfigRule.new
              complianceconfigrule_tmp.deserialize(i)
              @ConfigRules << complianceconfigrule_tmp
            end
          end
          @CompliancePackId = params['CompliancePackId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigDeliver请求参数结构体
      class DescribeConfigDeliverRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeConfigDeliver返回参数结构体
      class DescribeConfigDeliverResponse < TencentCloud::Common::AbstractModel
        # @param DeliverName: 投递名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverName: String
        # @param TargetArn: 资源六段式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetArn: String
        # @param Status: 投递状态 DeliverStatus：0 关闭  1 开启
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DeliverPrefix: 日志前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverPrefix: String
        # @param DeliverType: 投递类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverType: String
        # @param DeliverContentType: 1：配置变更   2： 资源列表 3：全部
        # @type DeliverContentType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeliverName, :TargetArn, :Status, :CreateTime, :DeliverPrefix, :DeliverType, :DeliverContentType, :RequestId

        def initialize(delivername=nil, targetarn=nil, status=nil, createtime=nil, deliverprefix=nil, delivertype=nil, delivercontenttype=nil, requestid=nil)
          @DeliverName = delivername
          @TargetArn = targetarn
          @Status = status
          @CreateTime = createtime
          @DeliverPrefix = deliverprefix
          @DeliverType = delivertype
          @DeliverContentType = delivercontenttype
          @RequestId = requestid
        end

        def deserialize(params)
          @DeliverName = params['DeliverName']
          @TargetArn = params['TargetArn']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @DeliverPrefix = params['DeliverPrefix']
          @DeliverType = params['DeliverType']
          @DeliverContentType = params['DeliverContentType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigRecorder请求参数结构体
      class DescribeConfigRecorderRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeConfigRecorder返回参数结构体
      class DescribeConfigRecorderResponse < TencentCloud::Common::AbstractModel
        # @param Items: 用户监控资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Status: 0 关闭1 打开
        # @type Status: Integer
        # @param TriggerCount: 当日快照次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerCount: Integer
        # @param OpenCount: 当日打开监控次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenCount: Integer
        # @param UpdateCount: 当日修改监控范围次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateCount: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Status, :TriggerCount, :OpenCount, :UpdateCount, :CreateTime, :RequestId

        def initialize(items=nil, status=nil, triggercount=nil, opencount=nil, updatecount=nil, createtime=nil, requestid=nil)
          @Items = items
          @Status = status
          @TriggerCount = triggercount
          @OpenCount = opencount
          @UpdateCount = updatecount
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              userconfigresource_tmp = UserConfigResource.new
              userconfigresource_tmp.deserialize(i)
              @Items << userconfigresource_tmp
            end
          end
          @Status = params['Status']
          @TriggerCount = params['TriggerCount']
          @OpenCount = params['OpenCount']
          @UpdateCount = params['UpdateCount']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigRule请求参数结构体
      class DescribeConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DescribeConfigRule返回参数结构体
      class DescribeConfigRuleResponse < TencentCloud::Common::AbstractModel
        # @param ConfigRule: 规则详情
        # @type ConfigRule: :class:`Tencentcloud::Config.v20220802.models.ConfigRule`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigRule, :RequestId

        def initialize(configrule=nil, requestid=nil)
          @ConfigRule = configrule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigRule'].nil?
            @ConfigRule = ConfigRule.new
            @ConfigRule.deserialize(params['ConfigRule'])
          end
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
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceName: 资源名
        # @type ResourceName: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param ResourceZone: 资源可用区
        # @type ResourceZone: String
        # @param Configuration: 资源配置
        # @type Configuration: String
        # @param ResourceCreateTime: 资源创建时间
        # @type ResourceCreateTime: String
        # @param Tags: 资源标签
        # @type Tags: Array
        # @param UpdateTime: 资源更新时间
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

      # DescribeSystemCompliancePack请求参数结构体
      class DescribeSystemCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String

        attr_accessor :CompliancePackId

        def initialize(compliancepackid=nil)
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # DescribeSystemCompliancePack返回参数结构体
      class DescribeSystemCompliancePackResponse < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param Description: 合规包描述
        # @type Description: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param ConfigRules: 合规包规则列表
        # @type ConfigRules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompliancePackId, :CompliancePackName, :Description, :RiskLevel, :ConfigRules, :RequestId

        def initialize(compliancepackid=nil, compliancepackname=nil, description=nil, risklevel=nil, configrules=nil, requestid=nil)
          @CompliancePackId = compliancepackid
          @CompliancePackName = compliancepackname
          @Description = description
          @RiskLevel = risklevel
          @ConfigRules = configrules
          @RequestId = requestid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @CompliancePackName = params['CompliancePackName']
          @Description = params['Description']
          @RiskLevel = params['RiskLevel']
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              compliancepackruleformanage_tmp = CompliancePackRuleForManage.new
              compliancepackruleformanage_tmp.deserialize(i)
              @ConfigRules << compliancepackruleformanage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSystemRule请求参数结构体
      class DescribeSystemRuleRequest < TencentCloud::Common::AbstractModel
        # @param Identifier: 规则唯一标识
        # @type Identifier: String

        attr_accessor :Identifier

        def initialize(identifier=nil)
          @Identifier = identifier
        end

        def deserialize(params)
          @Identifier = params['Identifier']
        end
      end

      # DescribeSystemRule返回参数结构体
      class DescribeSystemRuleResponse < TencentCloud::Common::AbstractModel
        # @param SystemConfigRule: 详情
        # @type SystemConfigRule: :class:`Tencentcloud::Config.v20220802.models.SystemConfigRule`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SystemConfigRule, :RequestId

        def initialize(systemconfigrule=nil, requestid=nil)
          @SystemConfigRule = systemconfigrule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SystemConfigRule'].nil?
            @SystemConfigRule = SystemConfigRule.new
            @SystemConfigRule.deserialize(params['SystemConfigRule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachAggregateConfigRuleToCompliancePack请求参数结构体
      class DetachAggregateConfigRuleToCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param ConfigRuleId: 规则ID
        # @type ConfigRuleId: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String

        attr_accessor :CompliancePackId, :ConfigRuleId, :AccountGroupId

        def initialize(compliancepackid=nil, configruleid=nil, accountgroupid=nil)
          @CompliancePackId = compliancepackid
          @ConfigRuleId = configruleid
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @ConfigRuleId = params['ConfigRuleId']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # DetachAggregateConfigRuleToCompliancePack返回参数结构体
      class DetachAggregateConfigRuleToCompliancePackResponse < TencentCloud::Common::AbstractModel
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

      # DetachConfigRuleToCompliancePack请求参数结构体
      class DetachConfigRuleToCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param ConfigRuleId: 规则ID
        # @type ConfigRuleId: String

        attr_accessor :CompliancePackId, :ConfigRuleId

        def initialize(compliancepackid=nil, configruleid=nil)
          @CompliancePackId = compliancepackid
          @ConfigRuleId = configruleid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @ConfigRuleId = params['ConfigRuleId']
        end
      end

      # DetachConfigRuleToCompliancePack返回参数结构体
      class DetachConfigRuleToCompliancePackResponse < TencentCloud::Common::AbstractModel
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

      # 评估结果
      class EvaluationResult < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceRegion: 资源地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRegion: String
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ConfigRuleId: 规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRuleId: String
        # @param ConfigRuleName: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRuleName: String
        # @param CompliancePackId: 合规包id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompliancePackId: String
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param Annotation: 评估结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotation: :class:`Tencentcloud::Config.v20220802.models.Annotation`
        # @param ComplianceType: 合规类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplianceType: String
        # @param InvokingEventMessageType: 规则发起类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokingEventMessageType: String
        # @param ConfigRuleInvokedTime: 评估发起时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRuleInvokedTime: String
        # @param ResultRecordedTime: 评估实际时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultRecordedTime: String

        attr_accessor :ResourceId, :ResourceType, :ResourceRegion, :ResourceName, :ConfigRuleId, :ConfigRuleName, :CompliancePackId, :RiskLevel, :Annotation, :ComplianceType, :InvokingEventMessageType, :ConfigRuleInvokedTime, :ResultRecordedTime

        def initialize(resourceid=nil, resourcetype=nil, resourceregion=nil, resourcename=nil, configruleid=nil, configrulename=nil, compliancepackid=nil, risklevel=nil, annotation=nil, compliancetype=nil, invokingeventmessagetype=nil, configruleinvokedtime=nil, resultrecordedtime=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @ResourceRegion = resourceregion
          @ResourceName = resourcename
          @ConfigRuleId = configruleid
          @ConfigRuleName = configrulename
          @CompliancePackId = compliancepackid
          @RiskLevel = risklevel
          @Annotation = annotation
          @ComplianceType = compliancetype
          @InvokingEventMessageType = invokingeventmessagetype
          @ConfigRuleInvokedTime = configruleinvokedtime
          @ResultRecordedTime = resultrecordedtime
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @ResourceRegion = params['ResourceRegion']
          @ResourceName = params['ResourceName']
          @ConfigRuleId = params['ConfigRuleId']
          @ConfigRuleName = params['ConfigRuleName']
          @CompliancePackId = params['CompliancePackId']
          @RiskLevel = params['RiskLevel']
          unless params['Annotation'].nil?
            @Annotation = Annotation.new
            @Annotation.deserialize(params['Annotation'])
          end
          @ComplianceType = params['ComplianceType']
          @InvokingEventMessageType = params['InvokingEventMessageType']
          @ConfigRuleInvokedTime = params['ConfigRuleInvokedTime']
          @ResultRecordedTime = params['ResultRecordedTime']
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
        # @type ValueType: String
        # @param ParameterKey: 参数Key
        # @type ParameterKey: String
        # @param Type: 参数类型。必填类型：Require，可选类型：Optional。
        # @type Type: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param Description: 描述
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

      # ListAggregateCompliancePacks请求参数结构体
      class ListAggregateCompliancePacksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: <p>数量</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param AccountGroupId: <p>账号组ID</p>
        # @type AccountGroupId: String
        # @param CompliancePackName: <p>合规包名称</p>
        # @type CompliancePackName: String
        # @param RiskLevel: <p>风险等级<br>1：高风险。<br>2：中风险。<br>3：低风险。</p>
        # @type RiskLevel: Array
        # @param Status: <p>合规包状态 ACTIVE、NO_ACTIVE</p>
        # @type Status: String
        # @param ComplianceResult: <p>评估状态合规： &#39;COMPLIANT&#39;<br>不合规： &#39;NON_COMPLIANT&#39;</p>
        # @type ComplianceResult: Array
        # @param OrderType: <p>排序类型, 倒序：desc，顺序：asc</p>
        # @type OrderType: String
        # @param IncludeCompliancePackRuleResult: <p>包含合规包结果定义</p><p>枚举值：</p><ul><li>NO： 不包含</li></ul><p>默认值：空</p><p>此字段为新增，因此不传或者传了YES都会默认返回包含合规结果数据，其他枚举值后面视情况丰富</p>
        # @type IncludeCompliancePackRuleResult: String

        attr_accessor :Limit, :Offset, :AccountGroupId, :CompliancePackName, :RiskLevel, :Status, :ComplianceResult, :OrderType, :IncludeCompliancePackRuleResult

        def initialize(limit=nil, offset=nil, accountgroupid=nil, compliancepackname=nil, risklevel=nil, status=nil, complianceresult=nil, ordertype=nil, includecompliancepackruleresult=nil)
          @Limit = limit
          @Offset = offset
          @AccountGroupId = accountgroupid
          @CompliancePackName = compliancepackname
          @RiskLevel = risklevel
          @Status = status
          @ComplianceResult = complianceresult
          @OrderType = ordertype
          @IncludeCompliancePackRuleResult = includecompliancepackruleresult
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AccountGroupId = params['AccountGroupId']
          @CompliancePackName = params['CompliancePackName']
          @RiskLevel = params['RiskLevel']
          @Status = params['Status']
          @ComplianceResult = params['ComplianceResult']
          @OrderType = params['OrderType']
          @IncludeCompliancePackRuleResult = params['IncludeCompliancePackRuleResult']
        end
      end

      # ListAggregateCompliancePacks返回参数结构体
      class ListAggregateCompliancePacksResponse < TencentCloud::Common::AbstractModel
        # @param Total: <p>总数</p>
        # @type Total: Integer
        # @param Items: <p>详情</p>
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
              configcompliancepack_tmp = ConfigCompliancePack.new
              configcompliancepack_tmp.deserialize(i)
              @Items << configcompliancepack_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAggregateConfigRuleEvaluationResults请求参数结构体
      class ListAggregateConfigRuleEvaluationResultsRequest < TencentCloud::Common::AbstractModel
        # @param ConfigRuleId: <p>规则ID</p>
        # @type ConfigRuleId: String
        # @param Limit: <p>偏移量</p>
        # @type Limit: Integer
        # @param Offset: <p>当前页</p>
        # @type Offset: Integer
        # @param AccountGroupId: <p>账号组ID</p>
        # @type AccountGroupId: String
        # @param ResourceType: <p>类型</p>
        # @type ResourceType: Array
        # @param ComplianceType: <p>评估结果 COMPLIANT：合规   NON_COMPLIANT：不合规</p>
        # @type ComplianceType: Array
        # @param ResourceOwnerId: <p>资源所属用户ID</p>
        # @type ResourceOwnerId: Integer
        # @param ResourceOwnerIds: <p>筛选的资源拥有者uin集合</p>
        # @type ResourceOwnerIds: Array

        attr_accessor :ConfigRuleId, :Limit, :Offset, :AccountGroupId, :ResourceType, :ComplianceType, :ResourceOwnerId, :ResourceOwnerIds

        def initialize(configruleid=nil, limit=nil, offset=nil, accountgroupid=nil, resourcetype=nil, compliancetype=nil, resourceownerid=nil, resourceownerids=nil)
          @ConfigRuleId = configruleid
          @Limit = limit
          @Offset = offset
          @AccountGroupId = accountgroupid
          @ResourceType = resourcetype
          @ComplianceType = compliancetype
          @ResourceOwnerId = resourceownerid
          @ResourceOwnerIds = resourceownerids
        end

        def deserialize(params)
          @ConfigRuleId = params['ConfigRuleId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AccountGroupId = params['AccountGroupId']
          @ResourceType = params['ResourceType']
          @ComplianceType = params['ComplianceType']
          @ResourceOwnerId = params['ResourceOwnerId']
          @ResourceOwnerIds = params['ResourceOwnerIds']
        end
      end

      # ListAggregateConfigRuleEvaluationResults返回参数结构体
      class ListAggregateConfigRuleEvaluationResultsResponse < TencentCloud::Common::AbstractModel
        # @param Total: <p>总数</p>
        # @type Total: Integer
        # @param Items: <p>详情</p>
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
              aggregateevaluationresult_tmp = AggregateEvaluationResult.new
              aggregateevaluationresult_tmp.deserialize(i)
              @Items << aggregateevaluationresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAggregateConfigRules请求参数结构体
      class ListAggregateConfigRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: <p>每页限制</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param AccountGroupId: <p>账号组ID</p>
        # @type AccountGroupId: String
        # @param OrderType: <p>排序类型, 倒序：desc，顺序：asc</p>
        # @type OrderType: String
        # @param RiskLevel: <p>风险等级<br>1：高风险。<br>2：中风险。<br>3：低风险。</p>
        # @type RiskLevel: Array
        # @param State: <p>规则状态</p>
        # @type State: String
        # @param ComplianceResult: <p>评估结果</p>
        # @type ComplianceResult: Array
        # @param RuleName: <p>规则名</p>
        # @type RuleName: String
        # @param RuleOwnerId: <p>规则所属账号ID</p>
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
        # @param Total: <p>总数</p>
        # @type Total: Integer
        # @param Items: <p>详情</p>
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
        # @param Filters: resourceName：资源名  resourceId ：资源ID resourceType：资源类型
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

      # ListAggregators请求参数结构体
      class ListAggregatorsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页显示数量
        # @type Limit: Integer
        # @param Offset: 起始
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListAggregators返回参数结构体
      class ListAggregatorsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Items: 账号组列表
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
              aggregator_tmp = Aggregator.new
              aggregator_tmp.deserialize(i)
              @Items << aggregator_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCompliancePacks请求参数结构体
      class ListCompliancePacksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param RiskLevel: 风险等级
        # 1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Array
        # @param Status: 合规包状态 ACTIVE、NO_ACTIVE
        # @type Status: String
        # @param ComplianceResult: 评估状态合规： 'COMPLIANT'
        # 不合规： 'NON_COMPLIANT'
        # @type ComplianceResult: Array
        # @param OrderType: 排序类型, 倒序：desc，顺序：asc
        # @type OrderType: String

        attr_accessor :Limit, :Offset, :CompliancePackName, :RiskLevel, :Status, :ComplianceResult, :OrderType

        def initialize(limit=nil, offset=nil, compliancepackname=nil, risklevel=nil, status=nil, complianceresult=nil, ordertype=nil)
          @Limit = limit
          @Offset = offset
          @CompliancePackName = compliancepackname
          @RiskLevel = risklevel
          @Status = status
          @ComplianceResult = complianceresult
          @OrderType = ordertype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @CompliancePackName = params['CompliancePackName']
          @RiskLevel = params['RiskLevel']
          @Status = params['Status']
          @ComplianceResult = params['ComplianceResult']
          @OrderType = params['OrderType']
        end
      end

      # ListCompliancePacks返回参数结构体
      class ListCompliancePacksResponse < TencentCloud::Common::AbstractModel
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
              configcompliancepack_tmp = ConfigCompliancePack.new
              configcompliancepack_tmp.deserialize(i)
              @Items << configcompliancepack_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListConfigRuleEvaluationResults请求参数结构体
      class ListConfigRuleEvaluationResultsRequest < TencentCloud::Common::AbstractModel
        # @param ConfigRuleId: 规则ID
        # @type ConfigRuleId: String
        # @param Limit: 偏移量
        # @type Limit: Integer
        # @param Offset: 当前页
        # @type Offset: Integer
        # @param ResourceType: 类型
        # @type ResourceType: Array
        # @param ComplianceType: 评估结果 COMPLIANT：合规   NON_COMPLIANT：不合规
        # @type ComplianceType: Array

        attr_accessor :ConfigRuleId, :Limit, :Offset, :ResourceType, :ComplianceType

        def initialize(configruleid=nil, limit=nil, offset=nil, resourcetype=nil, compliancetype=nil)
          @ConfigRuleId = configruleid
          @Limit = limit
          @Offset = offset
          @ResourceType = resourcetype
          @ComplianceType = compliancetype
        end

        def deserialize(params)
          @ConfigRuleId = params['ConfigRuleId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ResourceType = params['ResourceType']
          @ComplianceType = params['ComplianceType']
        end
      end

      # ListConfigRuleEvaluationResults返回参数结构体
      class ListConfigRuleEvaluationResultsResponse < TencentCloud::Common::AbstractModel
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
              evaluationresult_tmp = EvaluationResult.new
              evaluationresult_tmp.deserialize(i)
              @Items << evaluationresult_tmp
            end
          end
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

      # ListRemediationExecutions请求参数结构体
      class ListRemediationExecutionsRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param Limit: 分页条数。默认20， 取值1~200
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param ExecutionStatus: 修正状态 1：运行中 2：成功 3：失败
        # @type ExecutionStatus: Integer

        attr_accessor :RuleId, :Limit, :Offset, :ExecutionStatus

        def initialize(ruleid=nil, limit=nil, offset=nil, executionstatus=nil)
          @RuleId = ruleid
          @Limit = limit
          @Offset = offset
          @ExecutionStatus = executionstatus
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ExecutionStatus = params['ExecutionStatus']
        end
      end

      # ListRemediationExecutions返回参数结构体
      class ListRemediationExecutionsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param RemediationExecutions: 修复记录
        # @type RemediationExecutions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RemediationExecutions, :RequestId

        def initialize(total=nil, remediationexecutions=nil, requestid=nil)
          @Total = total
          @RemediationExecutions = remediationexecutions
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RemediationExecutions'].nil?
            @RemediationExecutions = []
            params['RemediationExecutions'].each do |i|
              remediationexecutions_tmp = RemediationExecutions.new
              remediationexecutions_tmp.deserialize(i)
              @RemediationExecutions << remediationexecutions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRemediations请求参数结构体
      class ListRemediationsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页条数。默认20， 取值1~200
        # @type Limit: Integer
        # @param RuleIds: 规则ID
        # @type RuleIds: Array

        attr_accessor :Limit, :RuleIds

        def initialize(limit=nil, ruleids=nil)
          @Limit = limit
          @RuleIds = ruleids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @RuleIds = params['RuleIds']
        end
      end

      # ListRemediations返回参数结构体
      class ListRemediationsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Remediations: 修正设置
        # @type Remediations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Remediations, :RequestId

        def initialize(total=nil, remediations=nil, requestid=nil)
          @Total = total
          @Remediations = remediations
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Remediations'].nil?
            @Remediations = []
            params['Remediations'].each do |i|
              remediation_tmp = Remediation.new
              remediation_tmp.deserialize(i)
              @Remediations << remediation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListResourceTypes请求参数结构体
      class ListResourceTypesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListResourceTypes返回参数结构体
      class ListResourceTypesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 详情
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              configresource_tmp = ConfigResource.new
              configresource_tmp.deserialize(i)
              @Items << configresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSystemCompliancePacks请求参数结构体
      class ListSystemCompliancePacksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListSystemCompliancePacks返回参数结构体
      class ListSystemCompliancePacksResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Items: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              systemcompliancepack_tmp = SystemCompliancePack.new
              systemcompliancepack_tmp.deserialize(i)
              @Items << systemcompliancepack_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSystemRules请求参数结构体
      class ListSystemRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param Offset: 当前页
        # @type Offset: Integer
        # @param Keyword: 搜索关键字。支持标识/名称/标签/描述搜索
        # @type Keyword: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer

        attr_accessor :Limit, :Offset, :Keyword, :RiskLevel

        def initialize(limit=nil, offset=nil, keyword=nil, risklevel=nil)
          @Limit = limit
          @Offset = offset
          @Keyword = keyword
          @RiskLevel = risklevel
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Keyword = params['Keyword']
          @RiskLevel = params['RiskLevel']
        end
      end

      # ListSystemRules返回参数结构体
      class ListSystemRulesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              systemconfigrule_tmp = SystemConfigRule.new
              systemconfigrule_tmp.deserialize(i)
              @Items << systemconfigrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # OpenAggregateConfigRule请求参数结构体
      class OpenAggregateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String

        attr_accessor :RuleId, :AccountGroupId

        def initialize(ruleid=nil, accountgroupid=nil)
          @RuleId = ruleid
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # OpenAggregateConfigRule返回参数结构体
      class OpenAggregateConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # OpenConfigRecorder请求参数结构体
      class OpenConfigRecorderRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # OpenConfigRecorder返回参数结构体
      class OpenConfigRecorderResponse < TencentCloud::Common::AbstractModel
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

      # OpenConfigRule请求参数结构体
      class OpenConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # OpenConfigRule返回参数结构体
      class OpenConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # 修复设置
      class Remediation < TencentCloud::Common::AbstractModel
        # @param RemediationTemplateId: 修正模板 ID。
        # @type RemediationTemplateId: String
        # @param RemediationId: 修正设置 ID。
        # @type RemediationId: String
        # @param RemediationSourceType: 执行修正的模板来源
        # @type RemediationSourceType: String
        # @param RemediationType: 修正类型。取值：
        # SCF：函数计算（自定义修正）。
        # @type RemediationType: String
        # @param OwnerUin: 账号ID
        # @type OwnerUin: String
        # @param InvokeType: 修正执行方式。取值：
        # MANUAL_EXECUTION：手动执行。
        # @type InvokeType: String
        # @param RuleId: 规则 ID。
        # @type RuleId: String

        attr_accessor :RemediationTemplateId, :RemediationId, :RemediationSourceType, :RemediationType, :OwnerUin, :InvokeType, :RuleId

        def initialize(remediationtemplateid=nil, remediationid=nil, remediationsourcetype=nil, remediationtype=nil, owneruin=nil, invoketype=nil, ruleid=nil)
          @RemediationTemplateId = remediationtemplateid
          @RemediationId = remediationid
          @RemediationSourceType = remediationsourcetype
          @RemediationType = remediationtype
          @OwnerUin = owneruin
          @InvokeType = invoketype
          @RuleId = ruleid
        end

        def deserialize(params)
          @RemediationTemplateId = params['RemediationTemplateId']
          @RemediationId = params['RemediationId']
          @RemediationSourceType = params['RemediationSourceType']
          @RemediationType = params['RemediationType']
          @OwnerUin = params['OwnerUin']
          @InvokeType = params['InvokeType']
          @RuleId = params['RuleId']
        end
      end

      # 修正记录
      class RemediationExecutions < TencentCloud::Common::AbstractModel
        # @param ExecutionStatus: 修正状态 1：运行中 2：成功 3：失败
        # @type ExecutionStatus: Integer
        # @param ExecutionResourceType: 资源类型
        # @type ExecutionResourceType: String
        # @param ExecutionCreateDate: 修复时间
        # @type ExecutionCreateDate: String
        # @param ExecutionStatusMessage: 错误信息
        # @type ExecutionStatusMessage: String
        # @param ExecutionResourceIds: 资源ID
        # @type ExecutionResourceIds: String

        attr_accessor :ExecutionStatus, :ExecutionResourceType, :ExecutionCreateDate, :ExecutionStatusMessage, :ExecutionResourceIds

        def initialize(executionstatus=nil, executionresourcetype=nil, executioncreatedate=nil, executionstatusmessage=nil, executionresourceids=nil)
          @ExecutionStatus = executionstatus
          @ExecutionResourceType = executionresourcetype
          @ExecutionCreateDate = executioncreatedate
          @ExecutionStatusMessage = executionstatusmessage
          @ExecutionResourceIds = executionresourceids
        end

        def deserialize(params)
          @ExecutionStatus = params['ExecutionStatus']
          @ExecutionResourceType = params['ExecutionResourceType']
          @ExecutionCreateDate = params['ExecutionCreateDate']
          @ExecutionStatusMessage = params['ExecutionStatusMessage']
          @ExecutionResourceIds = params['ExecutionResourceIds']
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
        # @type ResourceRegion: String
        # @param ResourceStatus: 资源状态
        # @type ResourceStatus: String
        # @param ResourceDelete: 1 :已删除 2：未删除
        # @type ResourceDelete: Integer
        # @param ResourceCreateTime: 资源创建时间
        # @type ResourceCreateTime: String
        # @param Tags: 标签信息
        # @type Tags: Array
        # @param ResourceZone: 可用区
        # @type ResourceZone: String
        # @param ComplianceResult: 合规状态
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
        # @type EmptyAs: String
        # @param SelectPath: 配置路径
        # @type SelectPath: String
        # @param Operator: 操作运算符
        # @type Operator: String
        # @param Required: 是否必须
        # @type Required: Boolean
        # @param DesiredValue: 期望值
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

      # StartAggregateConfigRuleEvaluation请求参数结构体
      class StartAggregateConfigRuleEvaluationRequest < TencentCloud::Common::AbstractModel
        # @param TriggerType: 手动触发：MANUAL  周期触发：SCHEDULE
        # @type TriggerType: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String

        attr_accessor :TriggerType, :AccountGroupId, :RuleId, :CompliancePackId

        def initialize(triggertype=nil, accountgroupid=nil, ruleid=nil, compliancepackid=nil)
          @TriggerType = triggertype
          @AccountGroupId = accountgroupid
          @RuleId = ruleid
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @TriggerType = params['TriggerType']
          @AccountGroupId = params['AccountGroupId']
          @RuleId = params['RuleId']
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # StartAggregateConfigRuleEvaluation返回参数结构体
      class StartAggregateConfigRuleEvaluationResponse < TencentCloud::Common::AbstractModel
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

      # StartConfigRuleEvaluation请求参数结构体
      class StartConfigRuleEvaluationRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String

        attr_accessor :RuleId, :CompliancePackId

        def initialize(ruleid=nil, compliancepackid=nil)
          @RuleId = ruleid
          @CompliancePackId = compliancepackid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @CompliancePackId = params['CompliancePackId']
        end
      end

      # StartConfigRuleEvaluation返回参数结构体
      class StartConfigRuleEvaluationResponse < TencentCloud::Common::AbstractModel
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

      # StartRemediation请求参数结构体
      class StartRemediationRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # StartRemediation返回参数结构体
      class StartRemediationResponse < TencentCloud::Common::AbstractModel
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

      # 系统合规包信息
      class SystemCompliancePack < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param CompliancePackName: 名称
        # @type CompliancePackName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RiskLevel: 合规包风险等级1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Integer
        # @param ConfigRules: 合规包规则信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigRules: Array

        attr_accessor :CompliancePackId, :CompliancePackName, :Description, :RiskLevel, :ConfigRules

        def initialize(compliancepackid=nil, compliancepackname=nil, description=nil, risklevel=nil, configrules=nil)
          @CompliancePackId = compliancepackid
          @CompliancePackName = compliancepackname
          @Description = description
          @RiskLevel = risklevel
          @ConfigRules = configrules
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @CompliancePackName = params['CompliancePackName']
          @Description = params['Description']
          @RiskLevel = params['RiskLevel']
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              compliancepackruleformanage_tmp = CompliancePackRuleForManage.new
              compliancepackruleformanage_tmp.deserialize(i)
              @ConfigRules << compliancepackruleformanage_tmp
            end
          end
        end
      end

      # 管理端规则详情
      class SystemConfigRule < TencentCloud::Common::AbstractModel
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
        # @param ResourceType: 支持的资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: Array
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: Array
        # @param RiskLevel: 风险等级，1，2，3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param ServiceFunction: 对应的函数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceFunction: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TriggerType: 触发类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: Array
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ReferenceCount: 使用次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReferenceCount: Integer
        # @param IdentifierType: 规则类型
        # @type IdentifierType: String

        attr_accessor :Identifier, :RuleName, :InputParameter, :SourceCondition, :ResourceType, :Label, :RiskLevel, :ServiceFunction, :CreateTime, :UpdateTime, :TriggerType, :Description, :ReferenceCount, :IdentifierType

        def initialize(identifier=nil, rulename=nil, inputparameter=nil, sourcecondition=nil, resourcetype=nil, label=nil, risklevel=nil, servicefunction=nil, createtime=nil, updatetime=nil, triggertype=nil, description=nil, referencecount=nil, identifiertype=nil)
          @Identifier = identifier
          @RuleName = rulename
          @InputParameter = inputparameter
          @SourceCondition = sourcecondition
          @ResourceType = resourcetype
          @Label = label
          @RiskLevel = risklevel
          @ServiceFunction = servicefunction
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TriggerType = triggertype
          @Description = description
          @ReferenceCount = referencecount
          @IdentifierType = identifiertype
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @RuleName = params['RuleName']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameterformanage_tmp = InputParameterForManage.new
              inputparameterformanage_tmp.deserialize(i)
              @InputParameter << inputparameterformanage_tmp
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
          @Label = params['Label']
          @RiskLevel = params['RiskLevel']
          @ServiceFunction = params['ServiceFunction']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TriggerType = params['TriggerType']
          @Description = params['Description']
          @ReferenceCount = params['ReferenceCount']
          @IdentifierType = params['IdentifierType']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签key
        # @type TagKey: String
        # @param TagValue: 标签value
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

      # UpdateAggregateCompliancePack请求参数结构体
      class UpdateAggregateCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param ConfigRules: 合规包规则
        # @type ConfigRules: Array
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :CompliancePackName, :RiskLevel, :CompliancePackId, :ConfigRules, :AccountGroupId, :Description

        def initialize(compliancepackname=nil, risklevel=nil, compliancepackid=nil, configrules=nil, accountgroupid=nil, description=nil)
          @CompliancePackName = compliancepackname
          @RiskLevel = risklevel
          @CompliancePackId = compliancepackid
          @ConfigRules = configrules
          @AccountGroupId = accountgroupid
          @Description = description
        end

        def deserialize(params)
          @CompliancePackName = params['CompliancePackName']
          @RiskLevel = params['RiskLevel']
          @CompliancePackId = params['CompliancePackId']
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              compliancepackrule_tmp = CompliancePackRule.new
              compliancepackrule_tmp.deserialize(i)
              @ConfigRules << compliancepackrule_tmp
            end
          end
          @AccountGroupId = params['AccountGroupId']
          @Description = params['Description']
        end
      end

      # UpdateAggregateCompliancePack返回参数结构体
      class UpdateAggregateCompliancePackResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAggregateCompliancePackStatus请求参数结构体
      class UpdateAggregateCompliancePackStatusRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param Status: ACTIVE：启用
        # UN_ACTIVE ：停用
        # @type Status: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String

        attr_accessor :CompliancePackId, :Status, :AccountGroupId

        def initialize(compliancepackid=nil, status=nil, accountgroupid=nil)
          @CompliancePackId = compliancepackid
          @Status = status
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @Status = params['Status']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # UpdateAggregateCompliancePackStatus返回参数结构体
      class UpdateAggregateCompliancePackStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAggregateConfigDeliver请求参数结构体
      class UpdateAggregateConfigDeliverRequest < TencentCloud::Common::AbstractModel
        # @param Status: 0 关闭  1 开启
        # @type Status: Integer
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param DeliverName: 投递服务名称
        # @type DeliverName: String
        # @param TargetArn: 资源六段式
        # COS：qcs::cos:$region:$account:prefix/$appid/$BucketName
        # CLS:
        # qcs::cls:$region:$account:cls/topicId
        # @type TargetArn: String
        # @param DeliverPrefix: 资源前缀
        # @type DeliverPrefix: String
        # @param DeliverType: 投递类型  COS CLS
        # @type DeliverType: String
        # @param DeliverUin: 支持跨账号投递的成员账号uin，只能是委派管理员。默认为0，即投递到管理员账号下
        # @type DeliverUin: Integer
        # @param DeliverContentType: 1：配置变更 2： 资源列表 3：全选
        # @type DeliverContentType: Integer

        attr_accessor :Status, :AccountGroupId, :DeliverName, :TargetArn, :DeliverPrefix, :DeliverType, :DeliverUin, :DeliverContentType

        def initialize(status=nil, accountgroupid=nil, delivername=nil, targetarn=nil, deliverprefix=nil, delivertype=nil, deliveruin=nil, delivercontenttype=nil)
          @Status = status
          @AccountGroupId = accountgroupid
          @DeliverName = delivername
          @TargetArn = targetarn
          @DeliverPrefix = deliverprefix
          @DeliverType = delivertype
          @DeliverUin = deliveruin
          @DeliverContentType = delivercontenttype
        end

        def deserialize(params)
          @Status = params['Status']
          @AccountGroupId = params['AccountGroupId']
          @DeliverName = params['DeliverName']
          @TargetArn = params['TargetArn']
          @DeliverPrefix = params['DeliverPrefix']
          @DeliverType = params['DeliverType']
          @DeliverUin = params['DeliverUin']
          @DeliverContentType = params['DeliverContentType']
        end
      end

      # UpdateAggregateConfigDeliver返回参数结构体
      class UpdateAggregateConfigDeliverResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAggregateConfigRule请求参数结构体
      class UpdateAggregateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param TriggerType: 触发类型，最多支持两种
        # @type TriggerType: Array
        # @param RiskLevel: 风险等级
        # 1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Integer
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param InputParameter: 入参
        # @type InputParameter: Array
        # @param Description: 描述
        # @type Description: String
        # @param RegionScope: 关联地域
        # @type RegionScope: Array
        # @param TagsScope: 关联标签
        # @type TagsScope: Array
        # @param ExcludeResourceIdsScope: 排除的资源ID
        # @type ExcludeResourceIdsScope: Array

        attr_accessor :TriggerType, :RiskLevel, :RuleId, :AccountGroupId, :RuleName, :InputParameter, :Description, :RegionScope, :TagsScope, :ExcludeResourceIdsScope

        def initialize(triggertype=nil, risklevel=nil, ruleid=nil, accountgroupid=nil, rulename=nil, inputparameter=nil, description=nil, regionscope=nil, tagsscope=nil, excluderesourceidsscope=nil)
          @TriggerType = triggertype
          @RiskLevel = risklevel
          @RuleId = ruleid
          @AccountGroupId = accountgroupid
          @RuleName = rulename
          @InputParameter = inputparameter
          @Description = description
          @RegionScope = regionscope
          @TagsScope = tagsscope
          @ExcludeResourceIdsScope = excluderesourceidsscope
        end

        def deserialize(params)
          unless params['TriggerType'].nil?
            @TriggerType = []
            params['TriggerType'].each do |i|
              triggertype_tmp = TriggerType.new
              triggertype_tmp.deserialize(i)
              @TriggerType << triggertype_tmp
            end
          end
          @RiskLevel = params['RiskLevel']
          @RuleId = params['RuleId']
          @AccountGroupId = params['AccountGroupId']
          @RuleName = params['RuleName']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameter_tmp = InputParameter.new
              inputparameter_tmp.deserialize(i)
              @InputParameter << inputparameter_tmp
            end
          end
          @Description = params['Description']
          @RegionScope = params['RegionScope']
          unless params['TagsScope'].nil?
            @TagsScope = []
            params['TagsScope'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagsScope << tag_tmp
            end
          end
          @ExcludeResourceIdsScope = params['ExcludeResourceIdsScope']
        end
      end

      # UpdateAggregateConfigRule返回参数结构体
      class UpdateAggregateConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCompliancePack请求参数结构体
      class UpdateCompliancePackRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackName: 合规包名称
        # @type CompliancePackName: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: Integer
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param ConfigRules: 合规包规则
        # @type ConfigRules: Array
        # @param Description: 描述
        # @type Description: String

        attr_accessor :CompliancePackName, :RiskLevel, :CompliancePackId, :ConfigRules, :Description

        def initialize(compliancepackname=nil, risklevel=nil, compliancepackid=nil, configrules=nil, description=nil)
          @CompliancePackName = compliancepackname
          @RiskLevel = risklevel
          @CompliancePackId = compliancepackid
          @ConfigRules = configrules
          @Description = description
        end

        def deserialize(params)
          @CompliancePackName = params['CompliancePackName']
          @RiskLevel = params['RiskLevel']
          @CompliancePackId = params['CompliancePackId']
          unless params['ConfigRules'].nil?
            @ConfigRules = []
            params['ConfigRules'].each do |i|
              compliancepackrule_tmp = CompliancePackRule.new
              compliancepackrule_tmp.deserialize(i)
              @ConfigRules << compliancepackrule_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # UpdateCompliancePack返回参数结构体
      class UpdateCompliancePackResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCompliancePackStatus请求参数结构体
      class UpdateCompliancePackStatusRequest < TencentCloud::Common::AbstractModel
        # @param CompliancePackId: 合规包ID
        # @type CompliancePackId: String
        # @param Status: ACTIVE：启用
        # UN_ACTIVE ：停用
        # @type Status: String

        attr_accessor :CompliancePackId, :Status

        def initialize(compliancepackid=nil, status=nil)
          @CompliancePackId = compliancepackid
          @Status = status
        end

        def deserialize(params)
          @CompliancePackId = params['CompliancePackId']
          @Status = params['Status']
        end
      end

      # UpdateCompliancePackStatus返回参数结构体
      class UpdateCompliancePackStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateConfigDeliver请求参数结构体
      class UpdateConfigDeliverRequest < TencentCloud::Common::AbstractModel
        # @param Status: 0 关闭  1 开启
        # @type Status: Integer
        # @param DeliverName: 投递服务名称
        # @type DeliverName: String
        # @param TargetArn: 资源六段式
        # COS：qcs::cos:$region:$account:prefix/$appid/$BucketName
        # CLS:
        # qcs::cls:$region:$account:cls/topicId
        # @type TargetArn: String
        # @param DeliverPrefix: clonfig_fix
        # @type DeliverPrefix: String
        # @param DeliverType: 投递类型
        # @type DeliverType: String
        # @param DeliverContentType: 1：配置变更 2： 资源列表 3：全选
        # @type DeliverContentType: Integer

        attr_accessor :Status, :DeliverName, :TargetArn, :DeliverPrefix, :DeliverType, :DeliverContentType

        def initialize(status=nil, delivername=nil, targetarn=nil, deliverprefix=nil, delivertype=nil, delivercontenttype=nil)
          @Status = status
          @DeliverName = delivername
          @TargetArn = targetarn
          @DeliverPrefix = deliverprefix
          @DeliverType = delivertype
          @DeliverContentType = delivercontenttype
        end

        def deserialize(params)
          @Status = params['Status']
          @DeliverName = params['DeliverName']
          @TargetArn = params['TargetArn']
          @DeliverPrefix = params['DeliverPrefix']
          @DeliverType = params['DeliverType']
          @DeliverContentType = params['DeliverContentType']
        end
      end

      # UpdateConfigDeliver返回参数结构体
      class UpdateConfigDeliverResponse < TencentCloud::Common::AbstractModel
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

      # UpdateConfigRecorder请求参数结构体
      class UpdateConfigRecorderRequest < TencentCloud::Common::AbstractModel
        # @param ResourceTypes: 资源类型列表
        # @type ResourceTypes: Array

        attr_accessor :ResourceTypes

        def initialize(resourcetypes=nil)
          @ResourceTypes = resourcetypes
        end

        def deserialize(params)
          @ResourceTypes = params['ResourceTypes']
        end
      end

      # UpdateConfigRecorder返回参数结构体
      class UpdateConfigRecorderResponse < TencentCloud::Common::AbstractModel
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

      # UpdateConfigRule请求参数结构体
      class UpdateConfigRuleRequest < TencentCloud::Common::AbstractModel
        # @param TriggerType: 触发类型，最多支持两种
        # @type TriggerType: Array
        # @param RiskLevel: 风险等级
        # 1：高风险。
        # 2：中风险。
        # 3：低风险。
        # @type RiskLevel: Integer
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param InputParameter: 入参
        # @type InputParameter: Array
        # @param Description: 描述
        # @type Description: String
        # @param RegionsScope: 规则评估地域范围，规则仅对指定地域中的资源生效。
        # 支持的地域范围config:ListResourceRegions返回的地域
        # @type RegionsScope: Array
        # @param TagsScope: 规则评估标签范围，规则仅对绑定指定标签的资源生效。
        # @type TagsScope: Array
        # @param ExcludeResourceIdsScope: 规则对指定资源ID无效，即不对该资源执行评估。
        # @type ExcludeResourceIdsScope: Array

        attr_accessor :TriggerType, :RiskLevel, :RuleId, :RuleName, :InputParameter, :Description, :RegionsScope, :TagsScope, :ExcludeResourceIdsScope

        def initialize(triggertype=nil, risklevel=nil, ruleid=nil, rulename=nil, inputparameter=nil, description=nil, regionsscope=nil, tagsscope=nil, excluderesourceidsscope=nil)
          @TriggerType = triggertype
          @RiskLevel = risklevel
          @RuleId = ruleid
          @RuleName = rulename
          @InputParameter = inputparameter
          @Description = description
          @RegionsScope = regionsscope
          @TagsScope = tagsscope
          @ExcludeResourceIdsScope = excluderesourceidsscope
        end

        def deserialize(params)
          unless params['TriggerType'].nil?
            @TriggerType = []
            params['TriggerType'].each do |i|
              triggertype_tmp = TriggerType.new
              triggertype_tmp.deserialize(i)
              @TriggerType << triggertype_tmp
            end
          end
          @RiskLevel = params['RiskLevel']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          unless params['InputParameter'].nil?
            @InputParameter = []
            params['InputParameter'].each do |i|
              inputparameter_tmp = InputParameter.new
              inputparameter_tmp.deserialize(i)
              @InputParameter << inputparameter_tmp
            end
          end
          @Description = params['Description']
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
        end
      end

      # UpdateConfigRule返回参数结构体
      class UpdateConfigRuleResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRemediation请求参数结构体
      class UpdateRemediationRequest < TencentCloud::Common::AbstractModel
        # @param RemediationId: 修正设置 ID
        # @type RemediationId: String
        # @param RemediationType: 修正类型。取值： SCF：函数计算（自定义修正）。
        # @type RemediationType: String
        # @param RemediationTemplateId: 修正模板 ID
        # @type RemediationTemplateId: String
        # @param InvokeType: 修正执行方式。取值：  NON_EXECUTION：不执行。  AUTO_EXECUTION：自动执行。  MANUAL_EXECUTION：手动执行。  NOT_CONFIG：未设置。
        # @type InvokeType: String
        # @param SourceType: 执行修正来源
        # @type SourceType: String

        attr_accessor :RemediationId, :RemediationType, :RemediationTemplateId, :InvokeType, :SourceType

        def initialize(remediationid=nil, remediationtype=nil, remediationtemplateid=nil, invoketype=nil, sourcetype=nil)
          @RemediationId = remediationid
          @RemediationType = remediationtype
          @RemediationTemplateId = remediationtemplateid
          @InvokeType = invoketype
          @SourceType = sourcetype
        end

        def deserialize(params)
          @RemediationId = params['RemediationId']
          @RemediationType = params['RemediationType']
          @RemediationTemplateId = params['RemediationTemplateId']
          @InvokeType = params['InvokeType']
          @SourceType = params['SourceType']
        end
      end

      # UpdateRemediation返回参数结构体
      class UpdateRemediationResponse < TencentCloud::Common::AbstractModel
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

      # 资源类型
      class UserConfigResource < TencentCloud::Common::AbstractModel
        # @param Product: 产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: String
        # @param ProductName: 产品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceTypeName: 资源类型名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTypeName: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Product, :ProductName, :ResourceType, :ResourceTypeName, :UpdateTime

        def initialize(product=nil, productname=nil, resourcetype=nil, resourcetypename=nil, updatetime=nil)
          @Product = product
          @ProductName = productname
          @ResourceType = resourcetype
          @ResourceTypeName = resourcetypename
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Product = params['Product']
          @ProductName = params['ProductName']
          @ResourceType = params['ResourceType']
          @ResourceTypeName = params['ResourceTypeName']
          @UpdateTime = params['UpdateTime']
        end
      end

    end
  end
end

