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
  module Controlcenter
    module V20230110
      # 账号工厂基线项
      class AccountFactoryItem < TencentCloud::Common::AbstractModel
        # @param Identifier: 账号工厂基线项唯一标识，只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param Name: 基线项名称，功能项名字唯一，仅支持英文字母、数宇、汉字、符号@、＆_[]-的组合，1-25个中文或英文字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param NameEn: 基线项英文名称，基线项名字唯一，仅支持英文字母、数字、空格、符号@、＆_[]-的组合，1-64个英文字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameEn: String
        # @param Weight: 基线项权重，数值小权重越高，取值范围大于等于0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param Required: 基线项是否必填，1必填，0非必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Required: Integer
        # @param DependsOn: 基线项依赖项，N的取值范围与该基线项依赖的其它基线项个数有关。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependsOn: Array
        # @param Description: 基线描述，长度为2~256个英文或中文字符，默认值为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DescriptionEn: 基线项英文描述，长度为2~1024个英文字符，默认值为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptionEn: String
        # @param Classify: 基线分类，长度为2~32个英文或中文字符，不能为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Classify: String
        # @param ClassifyEn: 基线英文分类，长度为2~64个英文字符，不能为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassifyEn: String

        attr_accessor :Identifier, :Name, :NameEn, :Weight, :Required, :DependsOn, :Description, :DescriptionEn, :Classify, :ClassifyEn

        def initialize(identifier=nil, name=nil, nameen=nil, weight=nil, required=nil, dependson=nil, description=nil, descriptionen=nil, classify=nil, classifyen=nil)
          @Identifier = identifier
          @Name = name
          @NameEn = nameen
          @Weight = weight
          @Required = required
          @DependsOn = dependson
          @Description = description
          @DescriptionEn = descriptionen
          @Classify = classify
          @ClassifyEn = classifyen
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @Name = params['Name']
          @NameEn = params['NameEn']
          @Weight = params['Weight']
          @Required = params['Required']
          unless params['DependsOn'].nil?
            @DependsOn = []
            params['DependsOn'].each do |i|
              dependsonitem_tmp = DependsOnItem.new
              dependsonitem_tmp.deserialize(i)
              @DependsOn << dependsonitem_tmp
            end
          end
          @Description = params['Description']
          @DescriptionEn = params['DescriptionEn']
          @Classify = params['Classify']
          @ClassifyEn = params['ClassifyEn']
        end
      end

      # 账号工厂基线配置项
      class BaselineConfigItem < TencentCloud::Common::AbstractModel
        # @param Identifier: 账号工厂基线项唯一标识,只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # @type Identifier: String
        # @param Configuration: 账号工厂基线项配置，不同基线项配置参数不同。
        # @type Configuration: String

        attr_accessor :Identifier, :Configuration

        def initialize(identifier=nil, configuration=nil)
          @Identifier = identifier
          @Configuration = configuration
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @Configuration = params['Configuration']
        end
      end

      # 账号工厂基线信息
      class BaselineInfoItem < TencentCloud::Common::AbstractModel
        # @param Identifier: 账号工厂基线项唯一标识，只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param Configuration: 账号工厂基线项配置，不同的基线项配置参数不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: String
        # @param ApplyCount: 基线应用的账号数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyCount: Integer

        attr_accessor :Identifier, :Configuration, :ApplyCount

        def initialize(identifier=nil, configuration=nil, applycount=nil)
          @Identifier = identifier
          @Configuration = configuration
          @ApplyCount = applycount
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @Configuration = params['Configuration']
          @ApplyCount = params['ApplyCount']
        end
      end

      # 基线项部署任务信息列表
      class BaselineStepTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一Id，只能包含英文字母、数字，是16个字符的随机字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Identifier: 基线功能项唯一标识，只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param MemberUin: 被应用基线项的成员账号uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberUin: Integer
        # @param Status: 基线项应用的状态,Running表示基线项应用中,Success表示基线项应用成功,Failed表示基线项应用失败,Pending表示基线项待应用,Skipped表示基线项被跳过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrCode: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: String
        # @param ErrMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param Output: 基线项部署输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param CreateTime: 创建时间，按照ISO8601标准表示，格式为yyyy-MM-dd hh:mm:ss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，按照ISO8601标准表示，格式为yyyy-MM-dd hh:mm:ss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :TaskId, :Identifier, :MemberUin, :Status, :ErrCode, :ErrMessage, :Output, :CreateTime, :UpdateTime

        def initialize(taskid=nil, identifier=nil, memberuin=nil, status=nil, errcode=nil, errmessage=nil, output=nil, createtime=nil, updatetime=nil)
          @TaskId = taskid
          @Identifier = identifier
          @MemberUin = memberuin
          @Status = status
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Output = output
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Identifier = params['Identifier']
          @MemberUin = params['MemberUin']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @Output = params['Output']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # BatchApplyAccountBaselines请求参数结构体
      class BatchApplyAccountBaselinesRequest < TencentCloud::Common::AbstractModel
        # @param MemberUinList: 成员账号uin，也是被应用基线的账号uin。
        # @type MemberUinList: Array
        # @param BaselineConfigItems: 基线项配置信息列表。
        # @type BaselineConfigItems: Array

        attr_accessor :MemberUinList, :BaselineConfigItems

        def initialize(memberuinlist=nil, baselineconfigitems=nil)
          @MemberUinList = memberuinlist
          @BaselineConfigItems = baselineconfigitems
        end

        def deserialize(params)
          @MemberUinList = params['MemberUinList']
          unless params['BaselineConfigItems'].nil?
            @BaselineConfigItems = []
            params['BaselineConfigItems'].each do |i|
              baselineconfigitem_tmp = BaselineConfigItem.new
              baselineconfigitem_tmp.deserialize(i)
              @BaselineConfigItems << baselineconfigitem_tmp
            end
          end
        end
      end

      # BatchApplyAccountBaselines返回参数结构体
      class BatchApplyAccountBaselinesResponse < TencentCloud::Common::AbstractModel
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

      # 依赖项
      class DependsOnItem < TencentCloud::Common::AbstractModel
        # @param Type: 依赖项类型，只有LandingZoneSetUp或AccountFactorySetUp。LandingZoneSetUp表示landingZone的依赖项；AccountFactorySetUp表示账号工厂的依赖项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Identifier: 功能项唯一标识，只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String

        attr_accessor :Type, :Identifier

        def initialize(type=nil, identifier=nil)
          @Type = type
          @Identifier = identifier
        end

        def deserialize(params)
          @Type = params['Type']
          @Identifier = params['Identifier']
        end
      end

      # GetAccountFactoryBaseline请求参数结构体
      class GetAccountFactoryBaselineRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetAccountFactoryBaseline返回参数结构体
      class GetAccountFactoryBaselineResponse < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 资源所属主账号uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Integer
        # @param Name: 基线项名称，基线项名字唯一，仅支持英文字母、数宇、汉字、符号@、＆_[]-的组合，1-25个中文或英文字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BaselineConfigItems: 基线项配置列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineConfigItems: Array
        # @param CreateTime: 创建时间，按照ISO8601标准表示，格式为yyyy-MM-dd hh:mm:ss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，按照ISO8601标准表示，格式为yyyy-MM-dd hh:mm:ss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :Name, :BaselineConfigItems, :CreateTime, :UpdateTime, :RequestId

        def initialize(owneruin=nil, name=nil, baselineconfigitems=nil, createtime=nil, updatetime=nil, requestid=nil)
          @OwnerUin = owneruin
          @Name = name
          @BaselineConfigItems = baselineconfigitems
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @Name = params['Name']
          unless params['BaselineConfigItems'].nil?
            @BaselineConfigItems = []
            params['BaselineConfigItems'].each do |i|
              baselineinfoitem_tmp = BaselineInfoItem.new
              baselineinfoitem_tmp.deserialize(i)
              @BaselineConfigItems << baselineinfoitem_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # ListAccountFactoryBaselineItems请求参数结构体
      class ListAccountFactoryBaselineItemsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回记录最大数目,取值范围0~200。
        # @type Limit: Integer
        # @param Offset: 偏移量，取值范围大于等于0。
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

      # ListAccountFactoryBaselineItems返回参数结构体
      class ListAccountFactoryBaselineItemsResponse < TencentCloud::Common::AbstractModel
        # @param BaselineItems: 账号工厂基线列表。
        # @type BaselineItems: Array
        # @param Total: 总数。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineItems, :Total, :RequestId

        def initialize(baselineitems=nil, total=nil, requestid=nil)
          @BaselineItems = baselineitems
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineItems'].nil?
            @BaselineItems = []
            params['BaselineItems'].each do |i|
              accountfactoryitem_tmp = AccountFactoryItem.new
              accountfactoryitem_tmp.deserialize(i)
              @BaselineItems << accountfactoryitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # ListDeployStepTasks请求参数结构体
      class ListDeployStepTasksRequest < TencentCloud::Common::AbstractModel
        # @param Identifier: 功能项唯一标识，只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # @type Identifier: String
        # @param Limit: 返回记录最大数目,取值范围0~200。
        # @type Limit: Integer
        # @param Offset: 偏移量，取值范围大于等于0。
        # @type Offset: Integer

        attr_accessor :Identifier, :Limit, :Offset

        def initialize(identifier=nil, limit=nil, offset=nil)
          @Identifier = identifier
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListDeployStepTasks返回参数结构体
      class ListDeployStepTasksResponse < TencentCloud::Common::AbstractModel
        # @param BaselineDeployStepTaskList: 账号工厂基线功能项应用信息列表。
        # @type BaselineDeployStepTaskList: Array
        # @param Total: 总数。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineDeployStepTaskList, :Total, :RequestId

        def initialize(baselinedeploysteptasklist=nil, total=nil, requestid=nil)
          @BaselineDeployStepTaskList = baselinedeploysteptasklist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineDeployStepTaskList'].nil?
            @BaselineDeployStepTaskList = []
            params['BaselineDeployStepTaskList'].each do |i|
              baselinesteptaskinfo_tmp = BaselineStepTaskInfo.new
              baselinesteptaskinfo_tmp.deserialize(i)
              @BaselineDeployStepTaskList << baselinesteptaskinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # UpdateAccountFactoryBaseline请求参数结构体
      class UpdateAccountFactoryBaselineRequest < TencentCloud::Common::AbstractModel
        # @param Name: 基线名称，基线名字唯一，仅支持英文字母、数宇、汉字、符号@、＆_[]-的组合，1-25个中文或英文字符。
        # @type Name: String
        # @param BaselineConfigItems: 基线配置，覆盖更新。可以通过controlcenter:GetAccountFactoryBaseline查询现有基线配置。可以通过controlcenter:ListAccountFactoryBaselineItems查询支持的基线列表。
        # @type BaselineConfigItems: Array

        attr_accessor :Name, :BaselineConfigItems

        def initialize(name=nil, baselineconfigitems=nil)
          @Name = name
          @BaselineConfigItems = baselineconfigitems
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['BaselineConfigItems'].nil?
            @BaselineConfigItems = []
            params['BaselineConfigItems'].each do |i|
              baselineconfigitem_tmp = BaselineConfigItem.new
              baselineconfigitem_tmp.deserialize(i)
              @BaselineConfigItems << baselineconfigitem_tmp
            end
          end
        end
      end

      # UpdateAccountFactoryBaseline返回参数结构体
      class UpdateAccountFactoryBaselineResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

