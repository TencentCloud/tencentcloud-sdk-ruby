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
  module Lke
    module V20231130
      # 应用配置
      class AppConfig < TencentCloud::Common::AbstractModel
        # @param KnowledgeQa: 知识问答管理应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KnowledgeQa: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeQaConfig`
        # @param Summary: 知识摘要应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: :class:`Tencentcloud::Lke.v20231130.models.SummaryConfig`
        # @param Classify: 标签提取应用配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Classify: :class:`Tencentcloud::Lke.v20231130.models.ClassifyConfig`

        attr_accessor :KnowledgeQa, :Summary, :Classify

        def initialize(knowledgeqa=nil, summary=nil, classify=nil)
          @KnowledgeQa = knowledgeqa
          @Summary = summary
          @Classify = classify
        end

        def deserialize(params)
          unless params['KnowledgeQa'].nil?
            @KnowledgeQa = KnowledgeQaConfig.new
            @KnowledgeQa.deserialize(params['KnowledgeQa'])
          end
          unless params['Summary'].nil?
            @Summary = SummaryConfig.new
            @Summary.deserialize(params['Summary'])
          end
          unless params['Classify'].nil?
            @Classify = ClassifyConfig.new
            @Classify.deserialize(params['Classify'])
          end
        end
      end

      # 应用详情
      class AppInfo < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppType: String
        # @param AppTypeDesc: 应用类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppTypeDesc: String
        # @param AppBizId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppBizId: String
        # @param Name: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Avatar: 应用头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param Desc: 应用描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param AppStatus: 应用状态，1：未上线，2：运行中，3：停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppStatus: Integer
        # @param AppStatusDesc: 状态说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppStatusDesc: String
        # @param UpdateTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Operator: 最后修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelAliasName: 模型别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAliasName: String

        attr_accessor :AppType, :AppTypeDesc, :AppBizId, :Name, :Avatar, :Desc, :AppStatus, :AppStatusDesc, :UpdateTime, :Operator, :ModelName, :ModelAliasName

        def initialize(apptype=nil, apptypedesc=nil, appbizid=nil, name=nil, avatar=nil, desc=nil, appstatus=nil, appstatusdesc=nil, updatetime=nil, operator=nil, modelname=nil, modelaliasname=nil)
          @AppType = apptype
          @AppTypeDesc = apptypedesc
          @AppBizId = appbizid
          @Name = name
          @Avatar = avatar
          @Desc = desc
          @AppStatus = appstatus
          @AppStatusDesc = appstatusdesc
          @UpdateTime = updatetime
          @Operator = operator
          @ModelName = modelname
          @ModelAliasName = modelaliasname
        end

        def deserialize(params)
          @AppType = params['AppType']
          @AppTypeDesc = params['AppTypeDesc']
          @AppBizId = params['AppBizId']
          @Name = params['Name']
          @Avatar = params['Avatar']
          @Desc = params['Desc']
          @AppStatus = params['AppStatus']
          @AppStatusDesc = params['AppStatusDesc']
          @UpdateTime = params['UpdateTime']
          @Operator = params['Operator']
          @ModelName = params['ModelName']
          @ModelAliasName = params['ModelAliasName']
        end
      end

      # 应用模型配置
      class AppModel < TencentCloud::Common::AbstractModel
        # @param Name: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Desc: 模型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param ContextLimit: 上下文指代轮次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextLimit: Integer
        # @param AliasName: 模型别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String

        attr_accessor :Name, :Desc, :ContextLimit, :AliasName

        def initialize(name=nil, desc=nil, contextlimit=nil, aliasname=nil)
          @Name = name
          @Desc = desc
          @ContextLimit = contextlimit
          @AliasName = aliasname
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @ContextLimit = params['ContextLimit']
          @AliasName = params['AliasName']
        end
      end

      # 属性标签详情信息
      class AttrLabel < TencentCloud::Common::AbstractModel
        # @param Source: 属性标签来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param AttrBizId: 属性ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrBizId: String
        # @param AttrKey: 属性标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrKey: String
        # @param AttrName: 属性名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrName: String
        # @param Labels: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array

        attr_accessor :Source, :AttrBizId, :AttrKey, :AttrName, :Labels

        def initialize(source=nil, attrbizid=nil, attrkey=nil, attrname=nil, labels=nil)
          @Source = source
          @AttrBizId = attrbizid
          @AttrKey = attrkey
          @AttrName = attrname
          @Labels = labels
        end

        def deserialize(params)
          @Source = params['Source']
          @AttrBizId = params['AttrBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
        end
      end

      # 属性标签详情
      class AttrLabelDetail < TencentCloud::Common::AbstractModel
        # @param AttrBizId: 属性ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrBizId: String
        # @param AttrKey: 属性标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrKey: String
        # @param AttrName: 属性名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrName: String
        # @param LabelNames: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelNames: Array
        # @param IsUpdating: 属性标签是否在更新中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdating: Boolean

        attr_accessor :AttrBizId, :AttrKey, :AttrName, :LabelNames, :IsUpdating

        def initialize(attrbizid=nil, attrkey=nil, attrname=nil, labelnames=nil, isupdating=nil)
          @AttrBizId = attrbizid
          @AttrKey = attrkey
          @AttrName = attrname
          @LabelNames = labelnames
          @IsUpdating = isupdating
        end

        def deserialize(params)
          @AttrBizId = params['AttrBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          @LabelNames = params['LabelNames']
          @IsUpdating = params['IsUpdating']
        end
      end

      # 属性标签引用信息
      class AttrLabelRefer < TencentCloud::Common::AbstractModel
        # @param Source: 属性标签来源，1：属性标签
        # @type Source: Integer
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param LabelBizIds: 标签ID
        # @type LabelBizIds: Array

        attr_accessor :Source, :AttributeBizId, :LabelBizIds

        def initialize(source=nil, attributebizid=nil, labelbizids=nil)
          @Source = source
          @AttributeBizId = attributebizid
          @LabelBizIds = labelbizids
        end

        def deserialize(params)
          @Source = params['Source']
          @AttributeBizId = params['AttributeBizId']
          @LabelBizIds = params['LabelBizIds']
        end
      end

      # 导出知识标签过滤器
      class AttributeFilters < TencentCloud::Common::AbstractModel
        # @param Query: 检索，属性或标签名称
        # @type Query: String

        attr_accessor :Query

        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # 属性标签
      class AttributeLabel < TencentCloud::Common::AbstractModel
        # @param LabelBizId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelBizId: String
        # @param LabelName: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelName: String
        # @param SimilarLabels: 相似标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SimilarLabels: Array

        attr_accessor :LabelBizId, :LabelName, :SimilarLabels

        def initialize(labelbizid=nil, labelname=nil, similarlabels=nil)
          @LabelBizId = labelbizid
          @LabelName = labelname
          @SimilarLabels = similarlabels
        end

        def deserialize(params)
          @LabelBizId = params['LabelBizId']
          @LabelName = params['LabelName']
          @SimilarLabels = params['SimilarLabels']
        end
      end

      # 应用基础配置
      class BaseConfig < TencentCloud::Common::AbstractModel
        # @param Name: 应用名称
        # @type Name: String
        # @param Avatar: 机器人头像
        # @type Avatar: String
        # @param Desc: 机器人描述
        # @type Desc: String

        attr_accessor :Name, :Avatar, :Desc

        def initialize(name=nil, avatar=nil, desc=nil)
          @Name = name
          @Avatar = avatar
          @Desc = desc
        end

        def deserialize(params)
          @Name = params['Name']
          @Avatar = params['Avatar']
          @Desc = params['Desc']
        end
      end

      # CheckAttributeLabelExist请求参数结构体
      class CheckAttributeLabelExistRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param LabelName: 属性名称
        # @type LabelName: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param LastLabelBizId: 滚动加载，最后一个属性标签ID
        # @type LastLabelBizId: String

        attr_accessor :BotBizId, :LabelName, :AttributeBizId, :LoginUin, :LoginSubAccountUin, :LastLabelBizId

        def initialize(botbizid=nil, labelname=nil, attributebizid=nil, loginuin=nil, loginsubaccountuin=nil, lastlabelbizid=nil)
          @BotBizId = botbizid
          @LabelName = labelname
          @AttributeBizId = attributebizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @LastLabelBizId = lastlabelbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @LabelName = params['LabelName']
          @AttributeBizId = params['AttributeBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LastLabelBizId = params['LastLabelBizId']
        end
      end

      # CheckAttributeLabelExist返回参数结构体
      class CheckAttributeLabelExistResponse < TencentCloud::Common::AbstractModel
        # @param IsExist: 是否存在
        # @type IsExist: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsExist, :RequestId

        def initialize(isexist=nil, requestid=nil)
          @IsExist = isexist
          @RequestId = requestid
        end

        def deserialize(params)
          @IsExist = params['IsExist']
          @RequestId = params['RequestId']
        end
      end

      # CheckAttributeLabelRefer请求参数结构体
      class CheckAttributeLabelReferRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param LabelBizId: 属性标签
        # @type LabelBizId: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: Array

        attr_accessor :BotBizId, :LoginUin, :LoginSubAccountUin, :LabelBizId, :AttributeBizId

        def initialize(botbizid=nil, loginuin=nil, loginsubaccountuin=nil, labelbizid=nil, attributebizid=nil)
          @BotBizId = botbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @LabelBizId = labelbizid
          @AttributeBizId = attributebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @LabelBizId = params['LabelBizId']
          @AttributeBizId = params['AttributeBizId']
        end
      end

      # CheckAttributeLabelRefer返回参数结构体
      class CheckAttributeLabelReferResponse < TencentCloud::Common::AbstractModel
        # @param IsRefer: 是否引用
        # @type IsRefer: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsRefer, :RequestId

        def initialize(isrefer=nil, requestid=nil)
          @IsRefer = isrefer
          @RequestId = requestid
        end

        def deserialize(params)
          @IsRefer = params['IsRefer']
          @RequestId = params['RequestId']
        end
      end

      # 标签提取配置
      class ClassifyConfig < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param Labels: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array

        attr_accessor :Model, :Labels

        def initialize(model=nil, labels=nil)
          @Model = model
          @Labels = labels
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = AppModel.new
            @Model.deserialize(params['Model'])
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              classifylabel_tmp = ClassifyLabel.new
              classifylabel_tmp.deserialize(i)
              @Labels << classifylabel_tmp
            end
          end
        end
      end

      # 标签信息
      class ClassifyLabel < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 标签描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Values: 标签取值范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Name, :Description, :Values

        def initialize(name=nil, description=nil, values=nil)
          @Name = name
          @Description = description
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Values = params['Values']
        end
      end

      # 获取不满意回复上下文响
      class Context < TencentCloud::Common::AbstractModel
        # @param RecordBizId: 消息记录ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordBizId: String
        # @param IsVisitor: 是否为用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVisitor: Boolean
        # @param NickName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param Avatar: 头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param Content: 消息内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :RecordBizId, :IsVisitor, :NickName, :Avatar, :Content

        def initialize(recordbizid=nil, isvisitor=nil, nickname=nil, avatar=nil, content=nil)
          @RecordBizId = recordbizid
          @IsVisitor = isvisitor
          @NickName = nickname
          @Avatar = avatar
          @Content = content
        end

        def deserialize(params)
          @RecordBizId = params['RecordBizId']
          @IsVisitor = params['IsVisitor']
          @NickName = params['NickName']
          @Avatar = params['Avatar']
          @Content = params['Content']
        end
      end

      # CreateApp请求参数结构体
      class CreateAppRequest < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param BaseConfig: 应用基础配置
        # @type BaseConfig: :class:`Tencentcloud::Lke.v20231130.models.BaseConfig`

        attr_accessor :AppType, :BaseConfig

        def initialize(apptype=nil, baseconfig=nil)
          @AppType = apptype
          @BaseConfig = baseconfig
        end

        def deserialize(params)
          @AppType = params['AppType']
          unless params['BaseConfig'].nil?
            @BaseConfig = BaseConfig.new
            @BaseConfig.deserialize(params['BaseConfig'])
          end
        end
      end

      # CreateApp返回参数结构体
      class CreateAppResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :RequestId

        def initialize(appbizid=nil, requestid=nil)
          @AppBizId = appbizid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAttributeLabel请求参数结构体
      class CreateAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param AttrKey: 属性标识
        # @type AttrKey: String
        # @param AttrName: 属性名称
        # @type AttrName: String
        # @param Labels: 属性标签
        # @type Labels: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :AttrKey, :AttrName, :Labels, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, attrkey=nil, attrname=nil, labels=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @AttrKey = attrkey
          @AttrName = attrname
          @Labels = labels
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabel_tmp = AttributeLabel.new
              attributelabel_tmp.deserialize(i)
              @Labels << attributelabel_tmp
            end
          end
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # CreateAttributeLabel返回参数结构体
      class CreateAttributeLabelResponse < TencentCloud::Common::AbstractModel
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

      # CreateCorp请求参数结构体
      class CreateCorpRequest < TencentCloud::Common::AbstractModel
        # @param FullName: 企业全称
        # @type FullName: String
        # @param ContactName: 联系人名称
        # @type ContactName: String
        # @param Email: 联系人邮箱
        # @type Email: String
        # @param Telephone: 联系人手机号
        # @type Telephone: String

        attr_accessor :FullName, :ContactName, :Email, :Telephone

        def initialize(fullname=nil, contactname=nil, email=nil, telephone=nil)
          @FullName = fullname
          @ContactName = contactname
          @Email = email
          @Telephone = telephone
        end

        def deserialize(params)
          @FullName = params['FullName']
          @ContactName = params['ContactName']
          @Email = params['Email']
          @Telephone = params['Telephone']
        end
      end

      # CreateCorp返回参数结构体
      class CreateCorpResponse < TencentCloud::Common::AbstractModel
        # @param CorpBizId: 企业ID
        # @type CorpBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CorpBizId, :RequestId

        def initialize(corpbizid=nil, requestid=nil)
          @CorpBizId = corpbizid
          @RequestId = requestid
        end

        def deserialize(params)
          @CorpBizId = params['CorpBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateQACate请求参数结构体
      class CreateQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ParentBizId: 父级业务ID
        # @type ParentBizId: String
        # @param Name: 分类名称
        # @type Name: String

        attr_accessor :BotBizId, :ParentBizId, :Name

        def initialize(botbizid=nil, parentbizid=nil, name=nil)
          @BotBizId = botbizid
          @ParentBizId = parentbizid
          @Name = name
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ParentBizId = params['ParentBizId']
          @Name = params['Name']
        end
      end

      # CreateQACate返回参数结构体
      class CreateQACateResponse < TencentCloud::Common::AbstractModel
        # @param CanAdd: 是否可新增
        # @type CanAdd: Boolean
        # @param CanEdit: 是否可编辑
        # @type CanEdit: Boolean
        # @param CanDelete: 是否可删除
        # @type CanDelete: Boolean
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CanAdd, :CanEdit, :CanDelete, :CateBizId, :RequestId

        def initialize(canadd=nil, canedit=nil, candelete=nil, catebizid=nil, requestid=nil)
          @CanAdd = canadd
          @CanEdit = canedit
          @CanDelete = candelete
          @CateBizId = catebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @CanAdd = params['CanAdd']
          @CanEdit = params['CanEdit']
          @CanDelete = params['CanDelete']
          @CateBizId = params['CateBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateQA请求参数结构体
      class CreateQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param CustomParam: 自定义参数
        # @type CustomParam: String
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String

        attr_accessor :BotBizId, :Question, :Answer, :AttrRange, :CustomParam, :AttrLabels, :DocBizId, :CateBizId, :ExpireStart, :ExpireEnd

        def initialize(botbizid=nil, question=nil, answer=nil, attrrange=nil, customparam=nil, attrlabels=nil, docbizid=nil, catebizid=nil, expirestart=nil, expireend=nil)
          @BotBizId = botbizid
          @Question = question
          @Answer = answer
          @AttrRange = attrrange
          @CustomParam = customparam
          @AttrLabels = attrlabels
          @DocBizId = docbizid
          @CateBizId = catebizid
          @ExpireStart = expirestart
          @ExpireEnd = expireend
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @AttrRange = params['AttrRange']
          @CustomParam = params['CustomParam']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @DocBizId = params['DocBizId']
          @CateBizId = params['CateBizId']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
        end
      end

      # CreateQA返回参数结构体
      class CreateQAResponse < TencentCloud::Common::AbstractModel
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QaBizId, :RequestId

        def initialize(qabizid=nil, requestid=nil)
          @QaBizId = qabizid
          @RequestId = requestid
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRejectedQuestion请求参数结构体
      class CreateRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param Question: 拒答问题

        # @type Question: String
        # @param BusinessSource: 拒答问题来源的数据源唯一id，取值1，2

        # @type BusinessSource: Integer
        # @param BusinessId: 拒答问题来源的数据源唯一id

        # @type BusinessId: String

        attr_accessor :BotBizId, :Question, :BusinessSource, :BusinessId

        def initialize(botbizid=nil, question=nil, businesssource=nil, businessid=nil)
          @BotBizId = botbizid
          @Question = question
          @BusinessSource = businesssource
          @BusinessId = businessid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Question = params['Question']
          @BusinessSource = params['BusinessSource']
          @BusinessId = params['BusinessId']
        end
      end

      # CreateRejectedQuestion返回参数结构体
      class CreateRejectedQuestionResponse < TencentCloud::Common::AbstractModel
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

      # CreateRelease请求参数结构体
      class CreateReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param Desc: 发布描述
        # @type Desc: String

        attr_accessor :BotBizId, :Desc

        def initialize(botbizid=nil, desc=nil)
          @BotBizId = botbizid
          @Desc = desc
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Desc = params['Desc']
        end
      end

      # CreateRelease返回参数结构体
      class CreateReleaseResponse < TencentCloud::Common::AbstractModel
        # @param ReleaseBizId: 发布ID
        # @type ReleaseBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReleaseBizId, :RequestId

        def initialize(releasebizid=nil, requestid=nil)
          @ReleaseBizId = releasebizid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReleaseBizId = params['ReleaseBizId']
          @RequestId = params['RequestId']
        end
      end

      # 临时密钥结构
      class Credentials < TencentCloud::Common::AbstractModel
        # @param Token: token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param TmpSecretId: 临时证书密钥ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时证书密钥Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String

        attr_accessor :Token, :TmpSecretId, :TmpSecretKey

        def initialize(token=nil, tmpsecretid=nil, tmpsecretkey=nil)
          @Token = token
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
        end

        def deserialize(params)
          @Token = params['Token']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
        end
      end

      # DeleteApp请求参数结构体
      class DeleteAppRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String

        attr_accessor :AppBizId, :AppType

        def initialize(appbizid=nil, apptype=nil)
          @AppBizId = appbizid
          @AppType = apptype
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
        end
      end

      # DeleteApp返回参数结构体
      class DeleteAppResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAttributeLabel请求参数结构体
      class DeleteAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param AttributeBizIds: 属性ID
        # @type AttributeBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :AttributeBizIds, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, attributebizids=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @AttributeBizIds = attributebizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttributeBizIds = params['AttributeBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # DeleteAttributeLabel返回参数结构体
      class DeleteAttributeLabelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDoc请求参数结构体
      class DeleteDocRequest < TencentCloud::Common::AbstractModel
        # @param DocBizIds: 文档业务ID列表
        # @type DocBizIds: Array
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :DocBizIds, :BotBizId

        def initialize(docbizids=nil, botbizid=nil)
          @DocBizIds = docbizids
          @BotBizId = botbizid
        end

        def deserialize(params)
          @DocBizIds = params['DocBizIds']
          @BotBizId = params['BotBizId']
        end
      end

      # DeleteDoc返回参数结构体
      class DeleteDocResponse < TencentCloud::Common::AbstractModel
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

      # DeleteQACate请求参数结构体
      class DeleteQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :CateBizId

        def initialize(botbizid=nil, catebizid=nil)
          @BotBizId = botbizid
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @CateBizId = params['CateBizId']
        end
      end

      # DeleteQACate返回参数结构体
      class DeleteQACateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteQA请求参数结构体
      class DeleteQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param QaBizIds: 问答ID
        # @type QaBizIds: Array

        attr_accessor :BotBizId, :QaBizIds

        def initialize(botbizid=nil, qabizids=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
        end
      end

      # DeleteQA返回参数结构体
      class DeleteQAResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRejectedQuestion请求参数结构体
      class DeleteRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param RejectedBizIds: 拒答问题来源的数据源唯一id


        # @type RejectedBizIds: Array

        attr_accessor :BotBizId, :RejectedBizIds

        def initialize(botbizid=nil, rejectedbizids=nil)
          @BotBizId = botbizid
          @RejectedBizIds = rejectedbizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @RejectedBizIds = params['RejectedBizIds']
        end
      end

      # DeleteRejectedQuestion返回参数结构体
      class DeleteRejectedQuestionResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApp请求参数结构体
      class DescribeAppRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param IsRelease: 是否发布后的配置
        # @type IsRelease: Boolean

        attr_accessor :AppBizId, :AppType, :IsRelease

        def initialize(appbizid=nil, apptype=nil, isrelease=nil)
          @AppBizId = appbizid
          @AppType = apptype
          @IsRelease = isrelease
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
          @IsRelease = params['IsRelease']
        end
      end

      # DescribeApp返回参数结构体
      class DescribeAppResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用 ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param AppTypeDesc: 应用类型说明
        # @type AppTypeDesc: String
        # @param BaseConfig: 应用类型说明
        # @type BaseConfig: :class:`Tencentcloud::Lke.v20231130.models.BaseConfig`
        # @param AppConfig: 应用配置
        # @type AppConfig: :class:`Tencentcloud::Lke.v20231130.models.AppConfig`
        # @param AvatarInAppeal: 头像是否在申诉中
        # @type AvatarInAppeal: Boolean
        # @param RoleInAppeal: 角色描述是否在申诉中
        # @type RoleInAppeal: Boolean
        # @param NameInAppeal: 名称是否在申诉中
        # @type NameInAppeal: Boolean
        # @param GreetingInAppeal: 欢迎语是否在申诉中
        # @type GreetingInAppeal: Boolean
        # @param BareAnswerInAppeal: 未知问题回复语是否在申诉中
        # @type BareAnswerInAppeal: Boolean
        # @param AppKey: 应用appKey
        # @type AppKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :AppType, :AppTypeDesc, :BaseConfig, :AppConfig, :AvatarInAppeal, :RoleInAppeal, :NameInAppeal, :GreetingInAppeal, :BareAnswerInAppeal, :AppKey, :RequestId

        def initialize(appbizid=nil, apptype=nil, apptypedesc=nil, baseconfig=nil, appconfig=nil, avatarinappeal=nil, roleinappeal=nil, nameinappeal=nil, greetinginappeal=nil, bareanswerinappeal=nil, appkey=nil, requestid=nil)
          @AppBizId = appbizid
          @AppType = apptype
          @AppTypeDesc = apptypedesc
          @BaseConfig = baseconfig
          @AppConfig = appconfig
          @AvatarInAppeal = avatarinappeal
          @RoleInAppeal = roleinappeal
          @NameInAppeal = nameinappeal
          @GreetingInAppeal = greetinginappeal
          @BareAnswerInAppeal = bareanswerinappeal
          @AppKey = appkey
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
          @AppTypeDesc = params['AppTypeDesc']
          unless params['BaseConfig'].nil?
            @BaseConfig = BaseConfig.new
            @BaseConfig.deserialize(params['BaseConfig'])
          end
          unless params['AppConfig'].nil?
            @AppConfig = AppConfig.new
            @AppConfig.deserialize(params['AppConfig'])
          end
          @AvatarInAppeal = params['AvatarInAppeal']
          @RoleInAppeal = params['RoleInAppeal']
          @NameInAppeal = params['NameInAppeal']
          @GreetingInAppeal = params['GreetingInAppeal']
          @BareAnswerInAppeal = params['BareAnswerInAppeal']
          @AppKey = params['AppKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttributeLabel请求参数结构体
      class DescribeAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param Limit: 每次加载的数量
        # @type Limit: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Query: 查询标签或相似标签
        # @type Query: String
        # @param LastLabelBizId: 滚动加载游标的标签ID
        # @type LastLabelBizId: String

        attr_accessor :BotBizId, :AttributeBizId, :Limit, :LoginUin, :LoginSubAccountUin, :Query, :LastLabelBizId

        def initialize(botbizid=nil, attributebizid=nil, limit=nil, loginuin=nil, loginsubaccountuin=nil, query=nil, lastlabelbizid=nil)
          @BotBizId = botbizid
          @AttributeBizId = attributebizid
          @Limit = limit
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Query = query
          @LastLabelBizId = lastlabelbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttributeBizId = params['AttributeBizId']
          @Limit = params['Limit']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @Query = params['Query']
          @LastLabelBizId = params['LastLabelBizId']
        end
      end

      # DescribeAttributeLabel返回参数结构体
      class DescribeAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param AttrKey: 属性标识
        # @type AttrKey: String
        # @param AttrName: 属性名称
        # @type AttrName: String
        # @param LabelNumber: 标签数量
        # @type LabelNumber: String
        # @param Labels: 标签名称
        # @type Labels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttributeBizId, :AttrKey, :AttrName, :LabelNumber, :Labels, :RequestId

        def initialize(attributebizid=nil, attrkey=nil, attrname=nil, labelnumber=nil, labels=nil, requestid=nil)
          @AttributeBizId = attributebizid
          @AttrKey = attrkey
          @AttrName = attrname
          @LabelNumber = labelnumber
          @Labels = labels
          @RequestId = requestid
        end

        def deserialize(params)
          @AttributeBizId = params['AttributeBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          @LabelNumber = params['LabelNumber']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabel_tmp = AttributeLabel.new
              attributelabel_tmp.deserialize(i)
              @Labels << attributelabel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCorp请求参数结构体
      class DescribeCorpRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCorp返回参数结构体
      class DescribeCorpResponse < TencentCloud::Common::AbstractModel
        # @param CorpBizId: 企业ID
        # @type CorpBizId: String
        # @param RobotQuota: 机器人配额
        # @type RobotQuota: Integer
        # @param FullName: 企业全称
        # @type FullName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CorpBizId, :RobotQuota, :FullName, :RequestId

        def initialize(corpbizid=nil, robotquota=nil, fullname=nil, requestid=nil)
          @CorpBizId = corpbizid
          @RobotQuota = robotquota
          @FullName = fullname
          @RequestId = requestid
        end

        def deserialize(params)
          @CorpBizId = params['CorpBizId']
          @RobotQuota = params['RobotQuota']
          @FullName = params['FullName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDoc请求参数结构体
      class DescribeDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # DescribeDoc返回参数结构体
      class DescribeDocResponse < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 文档状态(5审核通过 7审核中 8审核不通过 9审核通过 10待发布 11发布中 12发布成功 13学习中 14学习失败)
        # @type Status: Integer
        # @param StatusDesc: 文档状态描述
        # @type StatusDesc: String
        # @param Reason: 生成失败原因
        # @type Reason: String
        # @param IsRefer: 答案中是否引用
        # @type IsRefer: Boolean
        # @param QaNum: 问答对数量
        # @type QaNum: Integer
        # @param IsDeleted: 是否删除
        # @type IsDeleted: Boolean
        # @param Source: 文档来源
        # @type Source: Integer
        # @param SourceDesc: 文档来源描述
        # @type SourceDesc: String
        # @param IsAllowRestart: 是否允许重新生成
        # @type IsAllowRestart: Boolean
        # @param IsDeletedQa: qa是否已删除
        # @type IsDeletedQa: Boolean
        # @param IsCreatingQa: 问答是否生成中
        # @type IsCreatingQa: Boolean
        # @param IsAllowDelete: 是否允许删除
        # @type IsAllowDelete: Boolean
        # @param IsAllowRefer: 是否允许操作引用开关
        # @type IsAllowRefer: Boolean
        # @param IsCreatedQa: 是否生成过问答
        # @type IsCreatedQa: Boolean
        # @param DocCharSize: 文档字符量
        # @type DocCharSize: String
        # @param IsAllowEdit: 是否允许编辑
        # @type IsAllowEdit: Boolean
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件范围
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签
        # @type AttrLabels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocBizId, :FileName, :FileType, :CosUrl, :UpdateTime, :Status, :StatusDesc, :Reason, :IsRefer, :QaNum, :IsDeleted, :Source, :SourceDesc, :IsAllowRestart, :IsDeletedQa, :IsCreatingQa, :IsAllowDelete, :IsAllowRefer, :IsCreatedQa, :DocCharSize, :IsAllowEdit, :AttrRange, :AttrLabels, :RequestId

        def initialize(docbizid=nil, filename=nil, filetype=nil, cosurl=nil, updatetime=nil, status=nil, statusdesc=nil, reason=nil, isrefer=nil, qanum=nil, isdeleted=nil, source=nil, sourcedesc=nil, isallowrestart=nil, isdeletedqa=nil, iscreatingqa=nil, isallowdelete=nil, isallowrefer=nil, iscreatedqa=nil, doccharsize=nil, isallowedit=nil, attrrange=nil, attrlabels=nil, requestid=nil)
          @DocBizId = docbizid
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @Reason = reason
          @IsRefer = isrefer
          @QaNum = qanum
          @IsDeleted = isdeleted
          @Source = source
          @SourceDesc = sourcedesc
          @IsAllowRestart = isallowrestart
          @IsDeletedQa = isdeletedqa
          @IsCreatingQa = iscreatingqa
          @IsAllowDelete = isallowdelete
          @IsAllowRefer = isallowrefer
          @IsCreatedQa = iscreatedqa
          @DocCharSize = doccharsize
          @IsAllowEdit = isallowedit
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @RequestId = requestid
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Reason = params['Reason']
          @IsRefer = params['IsRefer']
          @QaNum = params['QaNum']
          @IsDeleted = params['IsDeleted']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @IsAllowRestart = params['IsAllowRestart']
          @IsDeletedQa = params['IsDeletedQa']
          @IsCreatingQa = params['IsCreatingQa']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowRefer = params['IsAllowRefer']
          @IsCreatedQa = params['IsCreatedQa']
          @DocCharSize = params['DocCharSize']
          @IsAllowEdit = params['IsAllowEdit']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQA请求参数结构体
      class DescribeQARequest < TencentCloud::Common::AbstractModel
        # @param QaBizId: QA业务ID
        # @type QaBizId: String
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :QaBizId, :BotBizId

        def initialize(qabizid=nil, botbizid=nil)
          @QaBizId = qabizid
          @BotBizId = botbizid
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @BotBizId = params['BotBizId']
        end
      end

      # DescribeQA返回参数结构体
      class DescribeQAResponse < TencentCloud::Common::AbstractModel
        # @param QaBizId: QA业务ID
        # @type QaBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param CustomParam: 自定义参数
        # @type CustomParam: String
        # @param Source: 来源
        # @type Source: Integer
        # @param SourceDesc: 来源描述
        # @type SourceDesc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param IsAllowAccept: 是否允许校验
        # @type IsAllowAccept: Boolean
        # @param IsAllowDelete: 是否允许删除
        # @type IsAllowDelete: Boolean
        # @param IsAllowEdit: 是否允许编辑
        # @type IsAllowEdit: Boolean
        # @param DocBizId: 文档id
        # @type DocBizId: String
        # @param FileName: 文档名称
        # @type FileName: String
        # @param FileType: 文档类型
        # @type FileType: String
        # @param SegmentBizId: 分片ID
        # @type SegmentBizId: String
        # @param PageContent: 分片内容
        # @type PageContent: String
        # @param Highlights: 分片高亮内容
        # @type Highlights: Array
        # @param OrgData: 分片内容
        # @type OrgData: String
        # @param AttrRange: 属性标签适用范围
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签
        # @type AttrLabels: Array
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QaBizId, :Question, :Answer, :CustomParam, :Source, :SourceDesc, :UpdateTime, :Status, :StatusDesc, :CateBizId, :IsAllowAccept, :IsAllowDelete, :IsAllowEdit, :DocBizId, :FileName, :FileType, :SegmentBizId, :PageContent, :Highlights, :OrgData, :AttrRange, :AttrLabels, :ExpireStart, :ExpireEnd, :RequestId

        def initialize(qabizid=nil, question=nil, answer=nil, customparam=nil, source=nil, sourcedesc=nil, updatetime=nil, status=nil, statusdesc=nil, catebizid=nil, isallowaccept=nil, isallowdelete=nil, isallowedit=nil, docbizid=nil, filename=nil, filetype=nil, segmentbizid=nil, pagecontent=nil, highlights=nil, orgdata=nil, attrrange=nil, attrlabels=nil, expirestart=nil, expireend=nil, requestid=nil)
          @QaBizId = qabizid
          @Question = question
          @Answer = answer
          @CustomParam = customparam
          @Source = source
          @SourceDesc = sourcedesc
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @CateBizId = catebizid
          @IsAllowAccept = isallowaccept
          @IsAllowDelete = isallowdelete
          @IsAllowEdit = isallowedit
          @DocBizId = docbizid
          @FileName = filename
          @FileType = filetype
          @SegmentBizId = segmentbizid
          @PageContent = pagecontent
          @Highlights = highlights
          @OrgData = orgdata
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @RequestId = requestid
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @CustomParam = params['CustomParam']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CateBizId = params['CateBizId']
          @IsAllowAccept = params['IsAllowAccept']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowEdit = params['IsAllowEdit']
          @DocBizId = params['DocBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @SegmentBizId = params['SegmentBizId']
          @PageContent = params['PageContent']
          unless params['Highlights'].nil?
            @Highlights = []
            params['Highlights'].each do |i|
              highlight_tmp = Highlight.new
              highlight_tmp.deserialize(i)
              @Highlights << highlight_tmp
            end
          end
          @OrgData = params['OrgData']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRefer请求参数结构体
      class DescribeReferRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReferBizIds: 引用ID
        # @type ReferBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :ReferBizIds, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, referbizids=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @ReferBizIds = referbizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReferBizIds = params['ReferBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # DescribeRefer返回参数结构体
      class DescribeReferResponse < TencentCloud::Common::AbstractModel
        # @param List: 引用列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              referdetail_tmp = ReferDetail.new
              referdetail_tmp.deserialize(i)
              @List << referdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseInfo请求参数结构体
      class DescribeReleaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :BotBizId

        def initialize(botbizid=nil)
          @BotBizId = botbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
        end
      end

      # DescribeReleaseInfo返回参数结构体
      class DescribeReleaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param LastTime: 最后发布时间
        # @type LastTime: String
        # @param Status: 发布状态
        # @type Status: Integer
        # @param IsUpdated: 是否编辑过
        # @type IsUpdated: Boolean
        # @param Msg: 失败原因
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LastTime, :Status, :IsUpdated, :Msg, :RequestId

        def initialize(lasttime=nil, status=nil, isupdated=nil, msg=nil, requestid=nil)
          @LastTime = lasttime
          @Status = status
          @IsUpdated = isupdated
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @LastTime = params['LastTime']
          @Status = params['Status']
          @IsUpdated = params['IsUpdated']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelease请求参数结构体
      class DescribeReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReleaseBizId: 发布详情
        # @type ReleaseBizId: String

        attr_accessor :BotBizId, :ReleaseBizId

        def initialize(botbizid=nil, releasebizid=nil)
          @BotBizId = botbizid
          @ReleaseBizId = releasebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReleaseBizId = params['ReleaseBizId']
        end
      end

      # DescribeRelease返回参数结构体
      class DescribeReleaseResponse < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Description: 发布描述
        # @type Description: String
        # @param Status: 发布状态(1待发布 2发布中 3发布成功 4发布失败 5发布中 6发布中 7发布失败 9发布暂停)
        # @type Status: Integer
        # @param StatusDesc: 发布状态描述
        # @type StatusDesc: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreateTime, :Description, :Status, :StatusDesc, :RequestId

        def initialize(createtime=nil, description=nil, status=nil, statusdesc=nil, requestid=nil)
          @CreateTime = createtime
          @Description = description
          @Status = status
          @StatusDesc = statusdesc
          @RequestId = requestid
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRobotBizIDByAppKey请求参数结构体
      class DescribeRobotBizIDByAppKeyRequest < TencentCloud::Common::AbstractModel
        # @param AppKey: 机器人appkey
        # @type AppKey: String

        attr_accessor :AppKey

        def initialize(appkey=nil)
          @AppKey = appkey
        end

        def deserialize(params)
          @AppKey = params['AppKey']
        end
      end

      # DescribeRobotBizIDByAppKey返回参数结构体
      class DescribeRobotBizIDByAppKeyResponse < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人业务ID
        # @type BotBizId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BotBizId, :RequestId

        def initialize(botbizid=nil, requestid=nil)
          @BotBizId = botbizid
          @RequestId = requestid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorageCredential请求参数结构体
      class DescribeStorageCredentialRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :BotBizId

        def initialize(botbizid=nil)
          @BotBizId = botbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
        end
      end

      # DescribeStorageCredential返回参数结构体
      class DescribeStorageCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 密钥信息
        # @type Credentials: :class:`Tencentcloud::Lke.v20231130.models.Credentials`
        # @param ExpiredTime: 失效时间
        # @type ExpiredTime: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Bucket: 对象存储桶
        # @type Bucket: String
        # @param Region: 对象存储可用区
        # @type Region: String
        # @param FilePath: 文件存储目录
        # @type FilePath: String
        # @param Type: 存储类型
        # @type Type: String
        # @param CorpUin: 主号
        # @type CorpUin: String
        # @param ImagePath: 图片存储目录
        # @type ImagePath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :ExpiredTime, :StartTime, :Bucket, :Region, :FilePath, :Type, :CorpUin, :ImagePath, :RequestId

        def initialize(credentials=nil, expiredtime=nil, starttime=nil, bucket=nil, region=nil, filepath=nil, type=nil, corpuin=nil, imagepath=nil, requestid=nil)
          @Credentials = credentials
          @ExpiredTime = expiredtime
          @StartTime = starttime
          @Bucket = bucket
          @Region = region
          @FilePath = filepath
          @Type = type
          @CorpUin = corpuin
          @ImagePath = imagepath
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @ExpiredTime = params['ExpiredTime']
          @StartTime = params['StartTime']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @FilePath = params['FilePath']
          @Type = params['Type']
          @CorpUin = params['CorpUin']
          @ImagePath = params['ImagePath']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnsatisfiedReplyContext请求参数结构体
      class DescribeUnsatisfiedReplyContextRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReplyBizId: 回复ID
        # @type ReplyBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :ReplyBizId, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, replybizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @ReplyBizId = replybizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReplyBizId = params['ReplyBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # DescribeUnsatisfiedReplyContext返回参数结构体
      class DescribeUnsatisfiedReplyContextResponse < TencentCloud::Common::AbstractModel
        # @param List: 不满意回复上下文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              context_tmp = Context.new
              context_tmp.deserialize(i)
              @List << context_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 向量
      class EmbeddingObject < TencentCloud::Common::AbstractModel
        # @param Embedding: 向量
        # @type Embedding: Array

        attr_accessor :Embedding

        def initialize(embedding=nil)
          @Embedding = embedding
        end

        def deserialize(params)
          @Embedding = params['Embedding']
        end
      end

      # ExportAttributeLabel请求参数结构体
      class ExportAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param AttributeBizIds: 属性ID
        # @type AttributeBizIds: Array
        # @param Filters: 根据筛选数据导出
        # @type Filters: :class:`Tencentcloud::Lke.v20231130.models.AttributeFilters`

        attr_accessor :BotBizId, :LoginUin, :LoginSubAccountUin, :AttributeBizIds, :Filters

        def initialize(botbizid=nil, loginuin=nil, loginsubaccountuin=nil, attributebizids=nil, filters=nil)
          @BotBizId = botbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @AttributeBizIds = attributebizids
          @Filters = filters
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @AttributeBizIds = params['AttributeBizIds']
          unless params['Filters'].nil?
            @Filters = AttributeFilters.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ExportAttributeLabel返回参数结构体
      class ExportAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportQAList请求参数结构体
      class ExportQAListRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param QaBizIds: QA业务ID
        # @type QaBizIds: Array
        # @param Filters: 查询参数
        # @type Filters: :class:`Tencentcloud::Lke.v20231130.models.QAQuery`

        attr_accessor :BotBizId, :QaBizIds, :Filters

        def initialize(botbizid=nil, qabizids=nil, filters=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
          @Filters = filters
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
          unless params['Filters'].nil?
            @Filters = QAQuery.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ExportQAList返回参数结构体
      class ExportQAListResponse < TencentCloud::Common::AbstractModel
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

      # ExportUnsatisfiedReply请求参数结构体
      class ExportUnsatisfiedReplyRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReplyBizIds: 勾选导出ID列表
        # @type ReplyBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Filters: 检索过滤器
        # @type Filters: :class:`Tencentcloud::Lke.v20231130.models.Filters`

        attr_accessor :BotBizId, :ReplyBizIds, :LoginUin, :LoginSubAccountUin, :Filters

        def initialize(botbizid=nil, replybizids=nil, loginuin=nil, loginsubaccountuin=nil, filters=nil)
          @BotBizId = botbizid
          @ReplyBizIds = replybizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Filters = filters
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReplyBizIds = params['ReplyBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          unless params['Filters'].nil?
            @Filters = Filters.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ExportUnsatisfiedReply返回参数结构体
      class ExportUnsatisfiedReplyResponse < TencentCloud::Common::AbstractModel
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

      # 不满意回复检索过滤
      class Filters < TencentCloud::Common::AbstractModel
        # @param Query: 检索，用户问题或答案
        # @type Query: String
        # @param Reasons: 错误类型检索
        # @type Reasons: Array

        attr_accessor :Query, :Reasons

        def initialize(query=nil, reasons=nil)
          @Query = query
          @Reasons = reasons
        end

        def deserialize(params)
          @Query = params['Query']
          @Reasons = params['Reasons']
        end
      end

      # GenerateQA请求参数结构体
      class GenerateQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizIds: 文档ID
        # @type DocBizIds: Array

        attr_accessor :BotBizId, :DocBizIds

        def initialize(botbizid=nil, docbizids=nil)
          @BotBizId = botbizid
          @DocBizIds = docbizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizIds = params['DocBizIds']
        end
      end

      # GenerateQA返回参数结构体
      class GenerateQAResponse < TencentCloud::Common::AbstractModel
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

      # GetAppKnowledgeCount请求参数结构体
      class GetAppKnowledgeCountRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型：doc-文档；qa-问答对
        # @type Type: String
        # @param AppBizId: 应用ID
        # @type AppBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :Type, :AppBizId, :LoginUin, :LoginSubAccountUin

        def initialize(type=nil, appbizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @Type = type
          @AppBizId = appbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @Type = params['Type']
          @AppBizId = params['AppBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # GetAppKnowledgeCount返回参数结构体
      class GetAppKnowledgeCountResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RequestId

        def initialize(total=nil, requestid=nil)
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetAppSecret请求参数结构体
      class GetAppSecretRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用ID
        # @type AppBizId: String

        attr_accessor :AppBizId

        def initialize(appbizid=nil)
          @AppBizId = appbizid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
        end
      end

      # GetAppSecret返回参数结构体
      class GetAppSecretResponse < TencentCloud::Common::AbstractModel
        # @param AppKey: 应用密钥
        # @type AppKey: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsRelease: 是否发布
        # @type IsRelease: Boolean
        # @param HasPermission: 是否有查看权限
        # @type HasPermission: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppKey, :CreateTime, :IsRelease, :HasPermission, :RequestId

        def initialize(appkey=nil, createtime=nil, isrelease=nil, haspermission=nil, requestid=nil)
          @AppKey = appkey
          @CreateTime = createtime
          @IsRelease = isrelease
          @HasPermission = haspermission
          @RequestId = requestid
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @CreateTime = params['CreateTime']
          @IsRelease = params['IsRelease']
          @HasPermission = params['HasPermission']
          @RequestId = params['RequestId']
        end
      end

      # GetDocPreview请求参数结构体
      class GetDocPreviewRequest < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档业务ID
        # @type DocBizId: String
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :DocBizId, :BotBizId

        def initialize(docbizid=nil, botbizid=nil)
          @DocBizId = docbizid
          @BotBizId = botbizid
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @BotBizId = params['BotBizId']
        end
      end

      # GetDocPreview返回参数结构体
      class GetDocPreviewResponse < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param Url: cos临时地址
        # @type Url: String
        # @param Bucket: cos桶
        # @type Bucket: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileName, :FileType, :CosUrl, :Url, :Bucket, :RequestId

        def initialize(filename=nil, filetype=nil, cosurl=nil, url=nil, bucket=nil, requestid=nil)
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @Url = url
          @Bucket = bucket
          @RequestId = requestid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @Url = params['Url']
          @Bucket = params['Bucket']
          @RequestId = params['RequestId']
        end
      end

      # GetEmbedding请求参数结构体
      class GetEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称
        # @type Model: String
        # @param Inputs: 需要 embedding 的文本, 单条文本最大长度500个字符, 总条数最大7条
        # @type Inputs: Array
        # @param Online: 是否在线, 后台异步任务使用离线, 实时任务使用在线, 默认值: false
        # @type Online: Boolean

        attr_accessor :Model, :Inputs, :Online

        def initialize(model=nil, inputs=nil, online=nil)
          @Model = model
          @Inputs = inputs
          @Online = online
        end

        def deserialize(params)
          @Model = params['Model']
          @Inputs = params['Inputs']
          @Online = params['Online']
        end
      end

      # GetEmbedding返回参数结构体
      class GetEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Data: 特征
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              embeddingobject_tmp = EmbeddingObject.new
              embeddingobject_tmp.deserialize(i)
              @Data << embeddingobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetMsgRecord请求参数结构体
      class GetMsgRecordRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: Integer
        # @param Count: 数量
        # @type Count: Integer
        # @param SessionId: 会话sessionid
        # @type SessionId: String
        # @param LastRecordId: 最后一条记录ID
        # @type LastRecordId: String
        # @param BotAppKey: 机器人AppKey
        # @type BotAppKey: String

        attr_accessor :Type, :Count, :SessionId, :LastRecordId, :BotAppKey

        def initialize(type=nil, count=nil, sessionid=nil, lastrecordid=nil, botappkey=nil)
          @Type = type
          @Count = count
          @SessionId = sessionid
          @LastRecordId = lastrecordid
          @BotAppKey = botappkey
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
          @SessionId = params['SessionId']
          @LastRecordId = params['LastRecordId']
          @BotAppKey = params['BotAppKey']
        end
      end

      # GetMsgRecord返回参数结构体
      class GetMsgRecordResponse < TencentCloud::Common::AbstractModel
        # @param Records: 会话记录
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              msgrecord_tmp = MsgRecord.new
              msgrecord_tmp.deserialize(i)
              @Records << msgrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTaskStatus请求参数结构体
      class GetTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :TaskId, :TaskType, :BotBizId

        def initialize(taskid=nil, tasktype=nil, botbizid=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @BotBizId = botbizid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @BotBizId = params['BotBizId']
        end
      end

      # GetTaskStatus返回参数结构体
      class GetTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Message: 任务消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Params: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: :class:`Tencentcloud::Lke.v20231130.models.TaskParams`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskType, :Status, :Message, :Params, :RequestId

        def initialize(taskid=nil, tasktype=nil, status=nil, message=nil, params=nil, requestid=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @Status = status
          @Message = message
          @Params = params
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @Status = params['Status']
          @Message = params['Message']
          unless params['Params'].nil?
            @Params = TaskParams.new
            @Params.deserialize(params['Params'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取ws token label
      class GetWsTokenReq_Label < TencentCloud::Common::AbstractModel
        # @param Name: 标签名
        # @type Name: String
        # @param Values: 标签值
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

      # GetWsToken请求参数结构体
      class GetWsTokenRequest < TencentCloud::Common::AbstractModel
        # @param Type: 接入类型
        # @type Type: Integer
        # @param BotAppKey: 机器人AppKey
        # @type BotAppKey: String
        # @param VisitorBizId: 坐席ID
        # @type VisitorBizId: String
        # @param VisitorLabels: 坐席标签
        # @type VisitorLabels: Array

        attr_accessor :Type, :BotAppKey, :VisitorBizId, :VisitorLabels

        def initialize(type=nil, botappkey=nil, visitorbizid=nil, visitorlabels=nil)
          @Type = type
          @BotAppKey = botappkey
          @VisitorBizId = visitorbizid
          @VisitorLabels = visitorlabels
        end

        def deserialize(params)
          @Type = params['Type']
          @BotAppKey = params['BotAppKey']
          @VisitorBizId = params['VisitorBizId']
          unless params['VisitorLabels'].nil?
            @VisitorLabels = []
            params['VisitorLabels'].each do |i|
              getwstokenreq_label_tmp = GetWsTokenReq_Label.new
              getwstokenreq_label_tmp.deserialize(i)
              @VisitorLabels << getwstokenreq_label_tmp
            end
          end
        end
      end

      # GetWsToken返回参数结构体
      class GetWsTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: token值
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :RequestId

        def initialize(token=nil, requestid=nil)
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # GroupQA请求参数结构体
      class GroupQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param QaBizIds: QA业务ID列表
        # @type QaBizIds: Array
        # @param CateBizId: 分组 ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :QaBizIds, :CateBizId

        def initialize(botbizid=nil, qabizids=nil, catebizid=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
          @CateBizId = params['CateBizId']
        end
      end

      # GroupQA返回参数结构体
      class GroupQAResponse < TencentCloud::Common::AbstractModel
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

      # 分片高亮内容
      class Highlight < TencentCloud::Common::AbstractModel
        # @param StartPos: 高亮启始位置

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartPos: String
        # @param EndPos: 高亮结束位置

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPos: String
        # @param Text: 高亮子文本

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :StartPos, :EndPos, :Text

        def initialize(startpos=nil, endpos=nil, text=nil)
          @StartPos = startpos
          @EndPos = endpos
          @Text = text
        end

        def deserialize(params)
          @StartPos = params['StartPos']
          @EndPos = params['EndPos']
          @Text = params['Text']
        end
      end

      # IgnoreUnsatisfiedReply请求参数结构体
      class IgnoreUnsatisfiedReplyRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReplyBizIds: 不满意回复ID
        # @type ReplyBizIds: Array
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :ReplyBizIds, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, replybizids=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @ReplyBizIds = replybizids
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReplyBizIds = params['ReplyBizIds']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # IgnoreUnsatisfiedReply返回参数结构体
      class IgnoreUnsatisfiedReplyResponse < TencentCloud::Common::AbstractModel
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

      # IsTransferIntent请求参数结构体
      class IsTransferIntentRequest < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param BotAppKey: 机器人appKey
        # @type BotAppKey: String

        attr_accessor :Content, :BotAppKey

        def initialize(content=nil, botappkey=nil)
          @Content = content
          @BotAppKey = botappkey
        end

        def deserialize(params)
          @Content = params['Content']
          @BotAppKey = params['BotAppKey']
        end
      end

      # IsTransferIntent返回参数结构体
      class IsTransferIntentResponse < TencentCloud::Common::AbstractModel
        # @param Hit: 是否意图转人工
        # @type Hit: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hit, :RequestId

        def initialize(hit=nil, requestid=nil)
          @Hit = hit
          @RequestId = requestid
        end

        def deserialize(params)
          @Hit = params['Hit']
          @RequestId = params['RequestId']
        end
      end

      # 知识问答配置
      class KnowledgeQaConfig < TencentCloud::Common::AbstractModel
        # @param Greeting: 欢迎语，200字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Greeting: String
        # @param RoleDescription: 角色描述，300字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleDescription: String
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param Search: 知识搜索配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Search: Array
        # @param Output: 知识管理输出配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Lke.v20231130.models.KnowledgeQaOutput`

        attr_accessor :Greeting, :RoleDescription, :Model, :Search, :Output

        def initialize(greeting=nil, roledescription=nil, model=nil, search=nil, output=nil)
          @Greeting = greeting
          @RoleDescription = roledescription
          @Model = model
          @Search = search
          @Output = output
        end

        def deserialize(params)
          @Greeting = params['Greeting']
          @RoleDescription = params['RoleDescription']
          unless params['Model'].nil?
            @Model = AppModel.new
            @Model.deserialize(params['Model'])
          end
          unless params['Search'].nil?
            @Search = []
            params['Search'].each do |i|
              knowledgeqasearch_tmp = KnowledgeQaSearch.new
              knowledgeqasearch_tmp.deserialize(i)
              @Search << knowledgeqasearch_tmp
            end
          end
          unless params['Output'].nil?
            @Output = KnowledgeQaOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 应用管理输出配置
      class KnowledgeQaOutput < TencentCloud::Common::AbstractModel
        # @param Method: 输出方式 1：流式 2：非流式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: Integer
        # @param UseGeneralKnowledge: 通用模型回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseGeneralKnowledge: Boolean
        # @param BareAnswer: 未知回复语，300字符以内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BareAnswer: String

        attr_accessor :Method, :UseGeneralKnowledge, :BareAnswer

        def initialize(method=nil, usegeneralknowledge=nil, bareanswer=nil)
          @Method = method
          @UseGeneralKnowledge = usegeneralknowledge
          @BareAnswer = bareanswer
        end

        def deserialize(params)
          @Method = params['Method']
          @UseGeneralKnowledge = params['UseGeneralKnowledge']
          @BareAnswer = params['BareAnswer']
        end
      end

      # 检索配置
      class KnowledgeQaSearch < TencentCloud::Common::AbstractModel
        # @param Type: 知识来源 doc：文档，qa：问答  taskflow：业务流程，search：搜索增强
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ReplyFlexibility: 问答-回复灵活度 1：已采纳答案直接回复 2：已采纳润色后回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyFlexibility: Integer
        # @param UseSearchEngine: 搜索增强-搜索引擎状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseSearchEngine: Boolean
        # @param ShowSearchEngine: 是否显示搜索引擎检索状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowSearchEngine: Boolean
        # @param IsEnabled: 知识来源，是否选择
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEnabled: Boolean
        # @param QaTopN: 问答最大召回数量, 默认2，限制5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaTopN: Integer
        # @param DocTopN: 文档最大召回数量, 默认3，限制5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocTopN: Integer

        attr_accessor :Type, :ReplyFlexibility, :UseSearchEngine, :ShowSearchEngine, :IsEnabled, :QaTopN, :DocTopN

        def initialize(type=nil, replyflexibility=nil, usesearchengine=nil, showsearchengine=nil, isenabled=nil, qatopn=nil, doctopn=nil)
          @Type = type
          @ReplyFlexibility = replyflexibility
          @UseSearchEngine = usesearchengine
          @ShowSearchEngine = showsearchengine
          @IsEnabled = isenabled
          @QaTopN = qatopn
          @DocTopN = doctopn
        end

        def deserialize(params)
          @Type = params['Type']
          @ReplyFlexibility = params['ReplyFlexibility']
          @UseSearchEngine = params['UseSearchEngine']
          @ShowSearchEngine = params['ShowSearchEngine']
          @IsEnabled = params['IsEnabled']
          @QaTopN = params['QaTopN']
          @DocTopN = params['DocTopN']
        end
      end

      # 标签ID
      class Label < TencentCloud::Common::AbstractModel
        # @param LabelBizId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelBizId: String
        # @param LabelName: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelName: String

        attr_accessor :LabelBizId, :LabelName

        def initialize(labelbizid=nil, labelname=nil)
          @LabelBizId = labelbizid
          @LabelName = labelname
        end

        def deserialize(params)
          @LabelBizId = params['LabelBizId']
          @LabelName = params['LabelName']
        end
      end

      # ListAppCategory请求参数结构体
      class ListAppCategoryRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListAppCategory返回参数结构体
      class ListAppCategoryResponse < TencentCloud::Common::AbstractModel
        # @param List: 应用类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listappcategoryrspoption_tmp = ListAppCategoryRspOption.new
              listappcategoryrspoption_tmp.deserialize(i)
              @List << listappcategoryrspoption_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 应用类型详情
      class ListAppCategoryRspOption < TencentCloud::Common::AbstractModel
        # @param Text: 类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 类型值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Logo: 类型log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String

        attr_accessor :Text, :Value, :Logo

        def initialize(text=nil, value=nil, logo=nil)
          @Text = text
          @Value = value
          @Logo = logo
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          @Logo = params['Logo']
        end
      end

      # ListApp请求参数结构体
      class ListAppRequest < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param PageSize: 每页数目，整型
        # @type PageSize: Integer
        # @param PageNumber: 页码，整型
        # @type PageNumber: Integer
        # @param Keyword: 关键词：应用/修改人
        # @type Keyword: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppType, :PageSize, :PageNumber, :Keyword, :LoginSubAccountUin

        def initialize(apptype=nil, pagesize=nil, pagenumber=nil, keyword=nil, loginsubaccountuin=nil)
          @AppType = apptype
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Keyword = keyword
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppType = params['AppType']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Keyword = params['Keyword']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ListApp返回参数结构体
      class ListAppResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数量
        # @type Total: String
        # @param List: 标签列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              appinfo_tmp = AppInfo.new
              appinfo_tmp.deserialize(i)
              @List << appinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAttributeLabel请求参数结构体
      class ListAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Query: 查询内容
        # @type Query: String

        attr_accessor :BotBizId, :PageNumber, :PageSize, :LoginUin, :LoginSubAccountUin, :Query

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, loginuin=nil, loginsubaccountuin=nil, query=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Query = query
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @Query = params['Query']
        end
      end

      # ListAttributeLabel返回参数结构体
      class ListAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              attrlabeldetail_tmp = AttrLabelDetail.new
              attrlabeldetail_tmp.deserialize(i)
              @List << attrlabeldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文档列表详情描述
      class ListDocItem < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocBizId: String
        # @param FileName: 文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param CosUrl: cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosUrl: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Status: 文档状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 文档状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param Reason: 原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param IsRefer: 答案中是否引用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRefer: Boolean
        # @param QaNum: 问答对数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaNum: Integer
        # @param IsDeleted: 是否已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDeleted: Boolean
        # @param Source: 文档来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param SourceDesc: 文档来源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceDesc: String
        # @param IsAllowRestart: 是否允许重新生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowRestart: Boolean
        # @param IsDeletedQa: qa是否已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDeletedQa: Boolean
        # @param IsCreatingQa: 问答是否生成中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCreatingQa: Boolean
        # @param IsAllowDelete: 是否允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowDelete: Boolean
        # @param IsAllowRefer: 是否允许操作引用开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowRefer: Boolean
        # @param IsCreatedQa: 问答是否生成过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCreatedQa: Boolean
        # @param DocCharSize: 文档字符量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocCharSize: String
        # @param AttrRange: 属性标签适用范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrLabels: Array
        # @param IsAllowEdit: 是否允许编辑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowEdit: Boolean
        # @param ReferUrlType: 外部引用链接类型 0：系统链接 1：自定义链接
        # 值为1时，WebUrl 字段不能为空，否则不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReferUrlType: Integer
        # @param WebUrl: 网页(或自定义链接)地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebUrl: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireEnd: String

        attr_accessor :DocBizId, :FileName, :FileType, :CosUrl, :UpdateTime, :Status, :StatusDesc, :Reason, :IsRefer, :QaNum, :IsDeleted, :Source, :SourceDesc, :IsAllowRestart, :IsDeletedQa, :IsCreatingQa, :IsAllowDelete, :IsAllowRefer, :IsCreatedQa, :DocCharSize, :AttrRange, :AttrLabels, :IsAllowEdit, :ReferUrlType, :WebUrl, :ExpireStart, :ExpireEnd

        def initialize(docbizid=nil, filename=nil, filetype=nil, cosurl=nil, updatetime=nil, status=nil, statusdesc=nil, reason=nil, isrefer=nil, qanum=nil, isdeleted=nil, source=nil, sourcedesc=nil, isallowrestart=nil, isdeletedqa=nil, iscreatingqa=nil, isallowdelete=nil, isallowrefer=nil, iscreatedqa=nil, doccharsize=nil, attrrange=nil, attrlabels=nil, isallowedit=nil, referurltype=nil, weburl=nil, expirestart=nil, expireend=nil)
          @DocBizId = docbizid
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @Reason = reason
          @IsRefer = isrefer
          @QaNum = qanum
          @IsDeleted = isdeleted
          @Source = source
          @SourceDesc = sourcedesc
          @IsAllowRestart = isallowrestart
          @IsDeletedQa = isdeletedqa
          @IsCreatingQa = iscreatingqa
          @IsAllowDelete = isallowdelete
          @IsAllowRefer = isallowrefer
          @IsCreatedQa = iscreatedqa
          @DocCharSize = doccharsize
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @IsAllowEdit = isallowedit
          @ReferUrlType = referurltype
          @WebUrl = weburl
          @ExpireStart = expirestart
          @ExpireEnd = expireend
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Reason = params['Reason']
          @IsRefer = params['IsRefer']
          @QaNum = params['QaNum']
          @IsDeleted = params['IsDeleted']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @IsAllowRestart = params['IsAllowRestart']
          @IsDeletedQa = params['IsDeletedQa']
          @IsCreatingQa = params['IsCreatingQa']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowRefer = params['IsAllowRefer']
          @IsCreatedQa = params['IsCreatedQa']
          @DocCharSize = params['DocCharSize']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabel_tmp = AttrLabel.new
              attrlabel_tmp.deserialize(i)
              @AttrLabels << attrlabel_tmp
            end
          end
          @IsAllowEdit = params['IsAllowEdit']
          @ReferUrlType = params['ReferUrlType']
          @WebUrl = params['WebUrl']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
        end
      end

      # ListDoc请求参数结构体
      class ListDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param Status: 文档状态： 7 审核中、8 审核失败、10 待发布、11 发布中、12 已发布、13 学习中、14 学习失败 20 已过期
        # @type Status: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :Status

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, status=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @Status = status
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @Status = params['Status']
        end
      end

      # ListDoc返回参数结构体
      class ListDocResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              listdocitem_tmp = ListDocItem.new
              listdocitem_tmp.deserialize(i)
              @List << listdocitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListModel请求参数结构体
      class ListModelRequest < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :AppType, :LoginUin, :LoginSubAccountUin

        def initialize(apptype=nil, loginuin=nil, loginsubaccountuin=nil)
          @AppType = apptype
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @AppType = params['AppType']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # ListModel返回参数结构体
      class ListModelResponse < TencentCloud::Common::AbstractModel
        # @param List: 模型列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              modelinfo_tmp = ModelInfo.new
              modelinfo_tmp.deserialize(i)
              @List << modelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQACate请求参数结构体
      class ListQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String

        attr_accessor :BotBizId

        def initialize(botbizid=nil)
          @BotBizId = botbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
        end
      end

      # ListQACate返回参数结构体
      class ListQACateResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              qacate_tmp = QACate.new
              qacate_tmp.deserialize(i)
              @List << qacate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQA请求参数结构体
      class ListQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param Query: 查询问题
        # @type Query: String
        # @param AcceptStatus: 校验状态(1未校验2采纳3不采纳)
        # @type AcceptStatus: Array
        # @param ReleaseStatus: 发布状态(2待发布 3发布中 4已发布 7审核中 8审核失败 9人工申述中 11人工申述失败)
        # @type ReleaseStatus: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param Source: 来源(1 文档生成 2 批量导入 3 手动添加)
        # @type Source: Integer
        # @param QueryAnswer: 查询答案
        # @type QueryAnswer: String
        # @param QaBizIds: QA业务ID列表
        # @type QaBizIds: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :AcceptStatus, :ReleaseStatus, :DocBizId, :Source, :QueryAnswer, :QaBizIds

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, acceptstatus=nil, releasestatus=nil, docbizid=nil, source=nil, queryanswer=nil, qabizids=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @AcceptStatus = acceptstatus
          @ReleaseStatus = releasestatus
          @DocBizId = docbizid
          @Source = source
          @QueryAnswer = queryanswer
          @QaBizIds = qabizids
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @AcceptStatus = params['AcceptStatus']
          @ReleaseStatus = params['ReleaseStatus']
          @DocBizId = params['DocBizId']
          @Source = params['Source']
          @QueryAnswer = params['QueryAnswer']
          @QaBizIds = params['QaBizIds']
        end
      end

      # ListQA返回参数结构体
      class ListQAResponse < TencentCloud::Common::AbstractModel
        # @param Total: 问答数量
        # @type Total: String
        # @param WaitVerifyTotal: 待校验问答数量
        # @type WaitVerifyTotal: String
        # @param NotAcceptedTotal: 未采纳问答数量
        # @type NotAcceptedTotal: String
        # @param AcceptedTotal: 已采纳问答数量
        # @type AcceptedTotal: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param List: 问答详情
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :WaitVerifyTotal, :NotAcceptedTotal, :AcceptedTotal, :PageNumber, :List, :RequestId

        def initialize(total=nil, waitverifytotal=nil, notacceptedtotal=nil, acceptedtotal=nil, pagenumber=nil, list=nil, requestid=nil)
          @Total = total
          @WaitVerifyTotal = waitverifytotal
          @NotAcceptedTotal = notacceptedtotal
          @AcceptedTotal = acceptedtotal
          @PageNumber = pagenumber
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @WaitVerifyTotal = params['WaitVerifyTotal']
          @NotAcceptedTotal = params['NotAcceptedTotal']
          @AcceptedTotal = params['AcceptedTotal']
          @PageNumber = params['PageNumber']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listqaitem_tmp = ListQaItem.new
              listqaitem_tmp.deserialize(i)
              @List << listqaitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 问答详情数据
      class ListQaItem < TencentCloud::Common::AbstractModel
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param Source: 来源
        # @type Source: Integer
        # @param SourceDesc: 来源描述
        # @type SourceDesc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsAllowEdit: 是否允许编辑
        # @type IsAllowEdit: Boolean
        # @param IsAllowDelete: 是否允许删除
        # @type IsAllowDelete: Boolean
        # @param IsAllowAccept: 是否允许校验
        # @type IsAllowAccept: Boolean
        # @param FileName: 文档名称
        # @type FileName: String
        # @param FileType: 文档类型
        # @type FileType: String
        # @param QaCharSize: 问答字符数
        # @type QaCharSize: String

        attr_accessor :QaBizId, :Question, :Answer, :Source, :SourceDesc, :UpdateTime, :Status, :StatusDesc, :DocBizId, :CreateTime, :IsAllowEdit, :IsAllowDelete, :IsAllowAccept, :FileName, :FileType, :QaCharSize

        def initialize(qabizid=nil, question=nil, answer=nil, source=nil, sourcedesc=nil, updatetime=nil, status=nil, statusdesc=nil, docbizid=nil, createtime=nil, isallowedit=nil, isallowdelete=nil, isallowaccept=nil, filename=nil, filetype=nil, qacharsize=nil)
          @QaBizId = qabizid
          @Question = question
          @Answer = answer
          @Source = source
          @SourceDesc = sourcedesc
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @DocBizId = docbizid
          @CreateTime = createtime
          @IsAllowEdit = isallowedit
          @IsAllowDelete = isallowdelete
          @IsAllowAccept = isallowaccept
          @FileName = filename
          @FileType = filetype
          @QaCharSize = qacharsize
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DocBizId = params['DocBizId']
          @CreateTime = params['CreateTime']
          @IsAllowEdit = params['IsAllowEdit']
          @IsAllowDelete = params['IsAllowDelete']
          @IsAllowAccept = params['IsAllowAccept']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @QaCharSize = params['QaCharSize']
        end
      end

      # ListRejectedQuestionPreview请求参数结构体
      class ListRejectedQuestionPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param Actions: 状态(1新增2更新3删除)
        # @type Actions: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :Actions, :StartTime, :EndTime

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, actions=nil, starttime=nil, endtime=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @Actions = actions
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @Actions = params['Actions']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ListRejectedQuestionPreview返回参数结构体
      class ListRejectedQuestionPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releaserejectedquestion_tmp = ReleaseRejectedQuestion.new
              releaserejectedquestion_tmp.deserialize(i)
              @List << releaserejectedquestion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRejectedQuestion请求参数结构体
      class ListRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
        end
      end

      # ListRejectedQuestion返回参数结构体
      class ListRejectedQuestionResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 拒答问题列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              rejectedquestion_tmp = RejectedQuestion.new
              rejectedquestion_tmp.deserialize(i)
              @List << rejectedquestion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListReleaseConfigPreview请求参数结构体
      class ListReleaseConfigPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param Actions: 状态(1新增2更新3删除)
        # @type Actions: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :Actions, :StartTime, :EndTime, :ReleaseStatus

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, actions=nil, starttime=nil, endtime=nil, releasestatus=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @Actions = actions
          @StartTime = starttime
          @EndTime = endtime
          @ReleaseStatus = releasestatus
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @Actions = params['Actions']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReleaseStatus = params['ReleaseStatus']
        end
      end

      # ListReleaseConfigPreview返回参数结构体
      class ListReleaseConfigPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数量
        # @type Total: String
        # @param List: 配置项列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releaseconfigs_tmp = ReleaseConfigs.new
              releaseconfigs_tmp.deserialize(i)
              @List << releaseconfigs_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListReleaseDocPreview请求参数结构体
      class ListReleaseDocPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布业务ID
        # @type ReleaseBizId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Actions: 状态(1新增2修改3删除)
        # @type Actions: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :StartTime, :EndTime, :Actions

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, starttime=nil, endtime=nil, actions=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @StartTime = starttime
          @EndTime = endtime
          @Actions = actions
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Actions = params['Actions']
        end
      end

      # ListReleaseDocPreview返回参数结构体
      class ListReleaseDocPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releasedoc_tmp = ReleaseDoc.new
              releasedoc_tmp.deserialize(i)
              @List << releasedoc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 发布列表详情
      class ListReleaseItem < TencentCloud::Common::AbstractModel
        # @param ReleaseBizId: 版本ID
        # @type ReleaseBizId: String
        # @param Operator: 发布人
        # @type Operator: String
        # @param Desc: 发布描述
        # @type Desc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 发布状态
        # @type Status: Integer
        # @param StatusDesc: 发布状态描述
        # @type StatusDesc: String
        # @param Reason: 失败原因
        # @type Reason: String
        # @param SuccessCount: 发布成功数
        # @type SuccessCount: Integer
        # @param FailCount: 发布失败数
        # @type FailCount: Integer

        attr_accessor :ReleaseBizId, :Operator, :Desc, :UpdateTime, :Status, :StatusDesc, :Reason, :SuccessCount, :FailCount

        def initialize(releasebizid=nil, operator=nil, desc=nil, updatetime=nil, status=nil, statusdesc=nil, reason=nil, successcount=nil, failcount=nil)
          @ReleaseBizId = releasebizid
          @Operator = operator
          @Desc = desc
          @UpdateTime = updatetime
          @Status = status
          @StatusDesc = statusdesc
          @Reason = reason
          @SuccessCount = successcount
          @FailCount = failcount
        end

        def deserialize(params)
          @ReleaseBizId = params['ReleaseBizId']
          @Operator = params['Operator']
          @Desc = params['Desc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Reason = params['Reason']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
        end
      end

      # ListReleaseQAPreview请求参数结构体
      class ListReleaseQAPreviewRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param Query: 查询内容
        # @type Query: String
        # @param ReleaseBizId: 发布单ID
        # @type ReleaseBizId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Actions: 状态(1新增2修改3删除)
        # @type Actions: Array
        # @param ReleaseStatus: 发布状态(4发布成功5发布失败)
        # @type ReleaseStatus: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :Query, :ReleaseBizId, :StartTime, :EndTime, :Actions, :ReleaseStatus

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, query=nil, releasebizid=nil, starttime=nil, endtime=nil, actions=nil, releasestatus=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Query = query
          @ReleaseBizId = releasebizid
          @StartTime = starttime
          @EndTime = endtime
          @Actions = actions
          @ReleaseStatus = releasestatus
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Query = params['Query']
          @ReleaseBizId = params['ReleaseBizId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Actions = params['Actions']
          @ReleaseStatus = params['ReleaseStatus']
        end
      end

      # ListReleaseQAPreview返回参数结构体
      class ListReleaseQAPreviewResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文档数量
        # @type Total: String
        # @param List: 文档列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              releaseqa_tmp = ReleaseQA.new
              releaseqa_tmp.deserialize(i)
              @List << releaseqa_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRelease请求参数结构体
      class ListReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer

        attr_accessor :BotBizId, :PageNumber, :PageSize

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListRelease返回参数结构体
      class ListReleaseResponse < TencentCloud::Common::AbstractModel
        # @param Total: 发布列表数量
        # @type Total: String
        # @param List: 发布列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              listreleaseitem_tmp = ListReleaseItem.new
              listreleaseitem_tmp.deserialize(i)
              @List << listreleaseitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSelectDoc请求参数结构体
      class ListSelectDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param FileName: 文档名称
        # @type FileName: String
        # @param Status: 文档状态： 7 审核中、8 审核失败、10 待发布、11 发布中、12 已发布、13 学习中、14 学习失败 20 已过期
        # @type Status: Array

        attr_accessor :BotBizId, :FileName, :Status

        def initialize(botbizid=nil, filename=nil, status=nil)
          @BotBizId = botbizid
          @FileName = filename
          @Status = status
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileName = params['FileName']
          @Status = params['Status']
        end
      end

      # ListSelectDoc返回参数结构体
      class ListSelectDocResponse < TencentCloud::Common::AbstractModel
        # @param List: 下拉框内容
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              option_tmp = Option.new
              option_tmp.deserialize(i)
              @List << option_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUnsatisfiedReply请求参数结构体
      class ListUnsatisfiedReplyRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 分页数量
        # @type PageSize: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param Query: 用户请求(问题或答案)
        # @type Query: String
        # @param Reasons: 错误类型检索
        # @type Reasons: Array

        attr_accessor :BotBizId, :PageNumber, :PageSize, :LoginUin, :LoginSubAccountUin, :Query, :Reasons

        def initialize(botbizid=nil, pagenumber=nil, pagesize=nil, loginuin=nil, loginsubaccountuin=nil, query=nil, reasons=nil)
          @BotBizId = botbizid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @Query = query
          @Reasons = reasons
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @Query = params['Query']
          @Reasons = params['Reasons']
        end
      end

      # ListUnsatisfiedReply返回参数结构体
      class ListUnsatisfiedReplyResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: String
        # @param List: 不满意回复列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              unsatisfiedreply_tmp = UnsatisfiedReply.new
              unsatisfiedreply_tmp.deserialize(i)
              @List << unsatisfiedreply_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 一条message代表一条对话记录
      # role表示角色  user或者assistant
      # content表示对话内容
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: role表示角色  user标识用户提问，assistant标识返回的答案

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param Content: 对话内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Role, :Content

        def initialize(role=nil, content=nil)
          @Role = role
          @Content = content
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
        end
      end

      # 模型信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelDesc: 模型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelDesc: String
        # @param AliasName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String

        attr_accessor :ModelName, :ModelDesc, :AliasName

        def initialize(modelname=nil, modeldesc=nil, aliasname=nil)
          @ModelName = modelname
          @ModelDesc = modeldesc
          @AliasName = aliasname
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @ModelDesc = params['ModelDesc']
          @AliasName = params['AliasName']
        end
      end

      # ModifyApp请求参数结构体
      class ModifyAppRequest < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用 ID
        # @type AppBizId: String
        # @param AppType: 应用类型；knowledge_qa-知识问答管理；summary-知识摘要；classifys-知识标签提取
        # @type AppType: String
        # @param BaseConfig: 应用基础配置
        # @type BaseConfig: :class:`Tencentcloud::Lke.v20231130.models.BaseConfig`
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param AppConfig: 应用配置
        # @type AppConfig: :class:`Tencentcloud::Lke.v20231130.models.AppConfig`

        attr_accessor :AppBizId, :AppType, :BaseConfig, :LoginSubAccountUin, :AppConfig

        def initialize(appbizid=nil, apptype=nil, baseconfig=nil, loginsubaccountuin=nil, appconfig=nil)
          @AppBizId = appbizid
          @AppType = apptype
          @BaseConfig = baseconfig
          @LoginSubAccountUin = loginsubaccountuin
          @AppConfig = appconfig
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @AppType = params['AppType']
          unless params['BaseConfig'].nil?
            @BaseConfig = BaseConfig.new
            @BaseConfig.deserialize(params['BaseConfig'])
          end
          @LoginSubAccountUin = params['LoginSubAccountUin']
          unless params['AppConfig'].nil?
            @AppConfig = AppConfig.new
            @AppConfig.deserialize(params['AppConfig'])
          end
        end
      end

      # ModifyApp返回参数结构体
      class ModifyAppResponse < TencentCloud::Common::AbstractModel
        # @param AppBizId: 应用App
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppBizId: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppBizId, :UpdateTime, :RequestId

        def initialize(appbizid=nil, updatetime=nil, requestid=nil)
          @AppBizId = appbizid
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @AppBizId = params['AppBizId']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAttributeLabel请求参数结构体
      class ModifyAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param AttributeBizId: 属性ID
        # @type AttributeBizId: String
        # @param AttrKey: 属性标识
        # @type AttrKey: String
        # @param AttrName: 属性名称
        # @type AttrName: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param DeleteLabelBizIds: 删除的属性标签
        # @type DeleteLabelBizIds: Array
        # @param Labels: 新增或编辑的属性标签
        # @type Labels: Array

        attr_accessor :BotBizId, :AttributeBizId, :AttrKey, :AttrName, :LoginUin, :LoginSubAccountUin, :DeleteLabelBizIds, :Labels

        def initialize(botbizid=nil, attributebizid=nil, attrkey=nil, attrname=nil, loginuin=nil, loginsubaccountuin=nil, deletelabelbizids=nil, labels=nil)
          @BotBizId = botbizid
          @AttributeBizId = attributebizid
          @AttrKey = attrkey
          @AttrName = attrname
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @DeleteLabelBizIds = deletelabelbizids
          @Labels = labels
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @AttributeBizId = params['AttributeBizId']
          @AttrKey = params['AttrKey']
          @AttrName = params['AttrName']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          @DeleteLabelBizIds = params['DeleteLabelBizIds']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabel_tmp = AttributeLabel.new
              attributelabel_tmp.deserialize(i)
              @Labels << attributelabel_tmp
            end
          end
        end
      end

      # ModifyAttributeLabel返回参数结构体
      class ModifyAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDocAttrRange请求参数结构体
      class ModifyDocAttrRangeRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizIds: 文档ID
        # @type DocBizIds: Array
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array

        attr_accessor :BotBizId, :DocBizIds, :AttrRange, :AttrLabels

        def initialize(botbizid=nil, docbizids=nil, attrrange=nil, attrlabels=nil)
          @BotBizId = botbizid
          @DocBizIds = docbizids
          @AttrRange = attrrange
          @AttrLabels = attrlabels
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizIds = params['DocBizIds']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
        end
      end

      # ModifyDocAttrRange返回参数结构体
      class ModifyDocAttrRangeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDoc请求参数结构体
      class ModifyDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param IsRefer: 是否引用链接
        # @type IsRefer: Boolean
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String
        # @param AttrLabels: 适用范围，关联的属性标签
        # @type AttrLabels: Array
        # @param WebUrl: 网页(或自定义链接)地址
        # @type WebUrl: String
        # @param ReferUrlType: 外部引用链接类型 0：系统链接 1：自定义链接
        # 值为1时，WebUrl 字段不能为空，否则不生效。
        # @type ReferUrlType: Integer
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String

        attr_accessor :BotBizId, :DocBizId, :IsRefer, :AttrRange, :LoginUin, :LoginSubAccountUin, :AttrLabels, :WebUrl, :ReferUrlType, :ExpireStart, :ExpireEnd

        def initialize(botbizid=nil, docbizid=nil, isrefer=nil, attrrange=nil, loginuin=nil, loginsubaccountuin=nil, attrlabels=nil, weburl=nil, referurltype=nil, expirestart=nil, expireend=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
          @IsRefer = isrefer
          @AttrRange = attrrange
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
          @AttrLabels = attrlabels
          @WebUrl = weburl
          @ReferUrlType = referurltype
          @ExpireStart = expirestart
          @ExpireEnd = expireend
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
          @IsRefer = params['IsRefer']
          @AttrRange = params['AttrRange']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @WebUrl = params['WebUrl']
          @ReferUrlType = params['ReferUrlType']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
        end
      end

      # ModifyDoc返回参数结构体
      class ModifyDocResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQAAttrRange请求参数结构体
      class ModifyQAAttrRangeRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param QaBizIds: 问答ID
        # @type QaBizIds: Array
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array

        attr_accessor :BotBizId, :QaBizIds, :AttrRange, :AttrLabels

        def initialize(botbizid=nil, qabizids=nil, attrrange=nil, attrlabels=nil)
          @BotBizId = botbizid
          @QaBizIds = qabizids
          @AttrRange = attrrange
          @AttrLabels = attrlabels
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizIds = params['QaBizIds']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
        end
      end

      # ModifyQAAttrRange返回参数结构体
      class ModifyQAAttrRangeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQACate请求参数结构体
      class ModifyQACateRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param Name: 分类名称
        # @type Name: String
        # @param CateBizId: 分类业务ID
        # @type CateBizId: String

        attr_accessor :BotBizId, :Name, :CateBizId

        def initialize(botbizid=nil, name=nil, catebizid=nil)
          @BotBizId = botbizid
          @Name = name
          @CateBizId = catebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Name = params['Name']
          @CateBizId = params['CateBizId']
        end
      end

      # ModifyQACate返回参数结构体
      class ModifyQACateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQA请求参数结构体
      class ModifyQARequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String
        # @param CustomParam: 自定义参数
        # @type CustomParam: String
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件
        # @type AttrRange: Integer
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String

        attr_accessor :BotBizId, :QaBizId, :Question, :Answer, :CustomParam, :AttrRange, :AttrLabels, :DocBizId, :CateBizId, :ExpireStart, :ExpireEnd

        def initialize(botbizid=nil, qabizid=nil, question=nil, answer=nil, customparam=nil, attrrange=nil, attrlabels=nil, docbizid=nil, catebizid=nil, expirestart=nil, expireend=nil)
          @BotBizId = botbizid
          @QaBizId = qabizid
          @Question = question
          @Answer = answer
          @CustomParam = customparam
          @AttrRange = attrrange
          @AttrLabels = attrlabels
          @DocBizId = docbizid
          @CateBizId = catebizid
          @ExpireStart = expirestart
          @ExpireEnd = expireend
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @QaBizId = params['QaBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @CustomParam = params['CustomParam']
          @AttrRange = params['AttrRange']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @DocBizId = params['DocBizId']
          @CateBizId = params['CateBizId']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
        end
      end

      # ModifyQA返回参数结构体
      class ModifyQAResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRejectedQuestion请求参数结构体
      class ModifyRejectedQuestionRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param Question: 拒答问题

        # @type Question: String
        # @param RejectedBizId: 拒答问题来源的数据源唯一id


        # @type RejectedBizId: String

        attr_accessor :BotBizId, :Question, :RejectedBizId

        def initialize(botbizid=nil, question=nil, rejectedbizid=nil)
          @BotBizId = botbizid
          @Question = question
          @RejectedBizId = rejectedbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @Question = params['Question']
          @RejectedBizId = params['RejectedBizId']
        end
      end

      # ModifyRejectedQuestion返回参数结构体
      class ModifyRejectedQuestionResponse < TencentCloud::Common::AbstractModel
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

      # 消息详情
      class MsgRecord < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param RecordId: 记录ID
        # @type RecordId: String
        # @param RelatedRecordId: 关联记录ID
        # @type RelatedRecordId: String
        # @param IsFromSelf: 是否来自自己
        # @type IsFromSelf: Boolean
        # @param FromName: 发送者名称
        # @type FromName: String
        # @param FromAvatar: 发送者头像
        # @type FromAvatar: String
        # @param Timestamp: 时间戳
        # @type Timestamp: String
        # @param HasRead: 是否已读
        # @type HasRead: Boolean
        # @param Score: 评价
        # @type Score: Integer
        # @param CanRating: 是否评分
        # @type CanRating: Boolean
        # @param Type: 记录类型
        # @type Type: Integer
        # @param References: 引用来源
        # @type References: Array
        # @param Reasons: 评价原因
        # @type Reasons: Array
        # @param IsLlmGenerated: 是否大模型
        # @type IsLlmGenerated: Boolean

        attr_accessor :Content, :RecordId, :RelatedRecordId, :IsFromSelf, :FromName, :FromAvatar, :Timestamp, :HasRead, :Score, :CanRating, :Type, :References, :Reasons, :IsLlmGenerated

        def initialize(content=nil, recordid=nil, relatedrecordid=nil, isfromself=nil, fromname=nil, fromavatar=nil, timestamp=nil, hasread=nil, score=nil, canrating=nil, type=nil, references=nil, reasons=nil, isllmgenerated=nil)
          @Content = content
          @RecordId = recordid
          @RelatedRecordId = relatedrecordid
          @IsFromSelf = isfromself
          @FromName = fromname
          @FromAvatar = fromavatar
          @Timestamp = timestamp
          @HasRead = hasread
          @Score = score
          @CanRating = canrating
          @Type = type
          @References = references
          @Reasons = reasons
          @IsLlmGenerated = isllmgenerated
        end

        def deserialize(params)
          @Content = params['Content']
          @RecordId = params['RecordId']
          @RelatedRecordId = params['RelatedRecordId']
          @IsFromSelf = params['IsFromSelf']
          @FromName = params['FromName']
          @FromAvatar = params['FromAvatar']
          @Timestamp = params['Timestamp']
          @HasRead = params['HasRead']
          @Score = params['Score']
          @CanRating = params['CanRating']
          @Type = params['Type']
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              msgrecordreference_tmp = MsgRecordReference.new
              msgrecordreference_tmp.deserialize(i)
              @References << msgrecordreference_tmp
            end
          end
          @Reasons = params['Reasons']
          @IsLlmGenerated = params['IsLlmGenerated']
        end
      end

      # 聊天详情Refer
      class MsgRecordReference < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: String
        # @param Url: 链接
        # @type Url: String
        # @param Type: 类型
        # @type Type: Integer
        # @param Name: 名称
        # @type Name: String
        # @param DocId: 来源文档ID
        # @type DocId: String

        attr_accessor :Id, :Url, :Type, :Name, :DocId

        def initialize(id=nil, url=nil, type=nil, name=nil, docid=nil)
          @Id = id
          @Url = url
          @Type = type
          @Name = name
          @DocId = docid
        end

        def deserialize(params)
          @Id = params['Id']
          @Url = params['Url']
          @Type = params['Type']
          @Name = params['Name']
          @DocId = params['DocId']
        end
      end

      # 下拉框选项
      class Option < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param CharSize: 文件字符数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CharSize: String
        # @param FileType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String

        attr_accessor :Text, :Value, :CharSize, :FileType

        def initialize(text=nil, value=nil, charsize=nil, filetype=nil)
          @Text = text
          @Value = value
          @CharSize = charsize
          @FileType = filetype
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          @CharSize = params['CharSize']
          @FileType = params['FileType']
        end
      end

      # ParseDoc请求参数结构体
      class ParseDocRequest < TencentCloud::Common::AbstractModel
        # @param Name: 文件名称(需要包括文件后缀, 最大长度1024字节)
        # @type Name: String
        # @param Url: 文件下载链接 (支持的文件类型: docx, txt, markdown, pdf)
        # @type Url: String
        # @param TaskId: 任务ID, 用于幂等去重, 业务自行定义(最大长度64字节)
        # @type TaskId: String
        # @param Policy: 切分策略
        # @type Policy: String
        # @param Operate: 默认值: split
        # @type Operate: String

        attr_accessor :Name, :Url, :TaskId, :Policy, :Operate

        def initialize(name=nil, url=nil, taskid=nil, policy=nil, operate=nil)
          @Name = name
          @Url = url
          @TaskId = taskid
          @Policy = policy
          @Operate = operate
        end

        def deserialize(params)
          @Name = params['Name']
          @Url = params['Url']
          @TaskId = params['TaskId']
          @Policy = params['Policy']
          @Operate = params['Operate']
        end
      end

      # ParseDoc返回参数结构体
      class ParseDocResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 获取QA分类分组
      class QACate < TencentCloud::Common::AbstractModel
        # @param CateBizId: QA分类的业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CateBizId: String
        # @param Name: 分类名称

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Total: 分类下QA数量

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param CanAdd: 是否可新增

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanAdd: Boolean
        # @param CanEdit: 是否可编辑

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanEdit: Boolean
        # @param CanDelete: 是否可删除

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanDelete: Boolean
        # @param Children: 子分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array

        attr_accessor :CateBizId, :Name, :Total, :CanAdd, :CanEdit, :CanDelete, :Children

        def initialize(catebizid=nil, name=nil, total=nil, canadd=nil, canedit=nil, candelete=nil, children=nil)
          @CateBizId = catebizid
          @Name = name
          @Total = total
          @CanAdd = canadd
          @CanEdit = canedit
          @CanDelete = candelete
          @Children = children
        end

        def deserialize(params)
          @CateBizId = params['CateBizId']
          @Name = params['Name']
          @Total = params['Total']
          @CanAdd = params['CanAdd']
          @CanEdit = params['CanEdit']
          @CanDelete = params['CanDelete']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              qacate_tmp = QACate.new
              qacate_tmp.deserialize(i)
              @Children << qacate_tmp
            end
          end
        end
      end

      # 问答列表
      class QAList < TencentCloud::Common::AbstractModel
        # @param QaBizId: 问答ID
        # @type QaBizId: String
        # @param IsAccepted: 是否采纳
        # @type IsAccepted: Boolean
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param Question: 问题
        # @type Question: String
        # @param Answer: 答案
        # @type Answer: String

        attr_accessor :QaBizId, :IsAccepted, :CateBizId, :Question, :Answer

        def initialize(qabizid=nil, isaccepted=nil, catebizid=nil, question=nil, answer=nil)
          @QaBizId = qabizid
          @IsAccepted = isaccepted
          @CateBizId = catebizid
          @Question = question
          @Answer = answer
        end

        def deserialize(params)
          @QaBizId = params['QaBizId']
          @IsAccepted = params['IsAccepted']
          @CateBizId = params['CateBizId']
          @Question = params['Question']
          @Answer = params['Answer']
        end
      end

      # QA查询参数
      class QAQuery < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码

        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param Query: 查询内容
        # @type Query: String
        # @param CateBizId: 分类ID
        # @type CateBizId: String
        # @param AcceptStatus: 校验状态
        # @type AcceptStatus: Array
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: Array
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param QaBizId: QAID
        # @type QaBizId: String
        # @param Source: 来源
        # @type Source: Integer
        # @param QueryAnswer: 查询答案
        # @type QueryAnswer: String

        attr_accessor :PageNumber, :PageSize, :BotBizId, :Query, :CateBizId, :AcceptStatus, :ReleaseStatus, :DocBizId, :QaBizId, :Source, :QueryAnswer

        def initialize(pagenumber=nil, pagesize=nil, botbizid=nil, query=nil, catebizid=nil, acceptstatus=nil, releasestatus=nil, docbizid=nil, qabizid=nil, source=nil, queryanswer=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @BotBizId = botbizid
          @Query = query
          @CateBizId = catebizid
          @AcceptStatus = acceptstatus
          @ReleaseStatus = releasestatus
          @DocBizId = docbizid
          @QaBizId = qabizid
          @Source = source
          @QueryAnswer = queryanswer
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @BotBizId = params['BotBizId']
          @Query = params['Query']
          @CateBizId = params['CateBizId']
          @AcceptStatus = params['AcceptStatus']
          @ReleaseStatus = params['ReleaseStatus']
          @DocBizId = params['DocBizId']
          @QaBizId = params['QaBizId']
          @Source = params['Source']
          @QueryAnswer = params['QueryAnswer']
        end
      end

      # QueryParseDocResult请求参数结构体
      class QueryParseDocResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # QueryParseDocResult返回参数结构体
      class QueryParseDocResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 等待 / 执行中 / 成功 / 失败
        # @type Status: String
        # @param Name: 解析后的文件内容
        # @type Name: String
        # @param Url: 文件下载地址
        # @type Url: String
        # @param Reason: 解析失败原因
        # @type Reason: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Name, :Url, :Reason, :RequestId

        def initialize(status=nil, name=nil, url=nil, reason=nil, requestid=nil)
          @Status = status
          @Name = name
          @Url = url
          @Reason = reason
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Name = params['Name']
          @Url = params['Url']
          @Reason = params['Reason']
          @RequestId = params['RequestId']
        end
      end

      # QueryRewrite请求参数结构体
      class QueryRewriteRequest < TencentCloud::Common::AbstractModel
        # @param Question: 需要改写的问题
        # @type Question: String
        # @param Messages: 需要改写的多轮历史会话
        # @type Messages: Array
        # @param Model: 模型名称
        # @type Model: String

        attr_accessor :Question, :Messages, :Model

        def initialize(question=nil, messages=nil, model=nil)
          @Question = question
          @Messages = messages
          @Model = model
        end

        def deserialize(params)
          @Question = params['Question']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
          @Model = params['Model']
        end
      end

      # QueryRewrite返回参数结构体
      class QueryRewriteResponse < TencentCloud::Common::AbstractModel
        # @param Content: 改写结果
        # @type Content: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId

        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # RateMsgRecord请求参数结构体
      class RateMsgRecordRequest < TencentCloud::Common::AbstractModel
        # @param BotAppKey: 机器人appKey
        # @type BotAppKey: String
        # @param RecordId: 消息ID
        # @type RecordId: String
        # @param Score: 1点赞2点踩
        # @type Score: Integer
        # @param Reasons: 原因
        # @type Reasons: Array

        attr_accessor :BotAppKey, :RecordId, :Score, :Reasons

        def initialize(botappkey=nil, recordid=nil, score=nil, reasons=nil)
          @BotAppKey = botappkey
          @RecordId = recordid
          @Score = score
          @Reasons = reasons
        end

        def deserialize(params)
          @BotAppKey = params['BotAppKey']
          @RecordId = params['RecordId']
          @Score = params['Score']
          @Reasons = params['Reasons']
        end
      end

      # RateMsgRecord返回参数结构体
      class RateMsgRecordResponse < TencentCloud::Common::AbstractModel
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

      # 引用来源详情
      class ReferDetail < TencentCloud::Common::AbstractModel
        # @param ReferBizId: 引用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReferBizId: String
        # @param DocType: 文档类型 (1 QA, 2 文档段)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocType: Integer
        # @param DocName: 文档名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocName: String
        # @param PageContent: 分片内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageContent: String
        # @param Question: 问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Answer: 答案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Answer: String
        # @param Confidence: 置信度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Mark: 标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: Integer
        # @param Highlights: 分片高亮内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Highlights: Array
        # @param OrgData: 原始内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgData: String

        attr_accessor :ReferBizId, :DocType, :DocName, :PageContent, :Question, :Answer, :Confidence, :Mark, :Highlights, :OrgData

        def initialize(referbizid=nil, doctype=nil, docname=nil, pagecontent=nil, question=nil, answer=nil, confidence=nil, mark=nil, highlights=nil, orgdata=nil)
          @ReferBizId = referbizid
          @DocType = doctype
          @DocName = docname
          @PageContent = pagecontent
          @Question = question
          @Answer = answer
          @Confidence = confidence
          @Mark = mark
          @Highlights = highlights
          @OrgData = orgdata
        end

        def deserialize(params)
          @ReferBizId = params['ReferBizId']
          @DocType = params['DocType']
          @DocName = params['DocName']
          @PageContent = params['PageContent']
          @Question = params['Question']
          @Answer = params['Answer']
          @Confidence = params['Confidence']
          @Mark = params['Mark']
          unless params['Highlights'].nil?
            @Highlights = []
            params['Highlights'].each do |i|
              highlight_tmp = Highlight.new
              highlight_tmp.deserialize(i)
              @Highlights << highlight_tmp
            end
          end
          @OrgData = params['OrgData']
        end
      end

      # 发布拒答
      class RejectedQuestion < TencentCloud::Common::AbstractModel
        # @param RejectedBizId: 拒答问题ID


        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RejectedBizId: String
        # @param Question: 被拒答的问题

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param UpdateTime: 更新时间

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IsAllowEdit: 是否允许编辑

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowEdit: Boolean
        # @param IsAllowDelete: 是否允许删除

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowDelete: Boolean

        attr_accessor :RejectedBizId, :Question, :Status, :StatusDesc, :UpdateTime, :IsAllowEdit, :IsAllowDelete

        def initialize(rejectedbizid=nil, question=nil, status=nil, statusdesc=nil, updatetime=nil, isallowedit=nil, isallowdelete=nil)
          @RejectedBizId = rejectedbizid
          @Question = question
          @Status = status
          @StatusDesc = statusdesc
          @UpdateTime = updatetime
          @IsAllowEdit = isallowedit
          @IsAllowDelete = isallowdelete
        end

        def deserialize(params)
          @RejectedBizId = params['RejectedBizId']
          @Question = params['Question']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @UpdateTime = params['UpdateTime']
          @IsAllowEdit = params['IsAllowEdit']
          @IsAllowDelete = params['IsAllowDelete']
        end
      end

      # 发布配置项
      class ReleaseConfigs < TencentCloud::Common::AbstractModel
        # @param ConfigItem: 配置项描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigItem: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Action: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: Integer
        # @param Value: 变更后的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param LastValue: 变更前的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastValue: String
        # @param Content: 变更内容(优先级展示content内容,content为空取value内容)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Message: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :ConfigItem, :UpdateTime, :Action, :Value, :LastValue, :Content, :Message

        def initialize(configitem=nil, updatetime=nil, action=nil, value=nil, lastvalue=nil, content=nil, message=nil)
          @ConfigItem = configitem
          @UpdateTime = updatetime
          @Action = action
          @Value = value
          @LastValue = lastvalue
          @Content = content
          @Message = message
        end

        def deserialize(params)
          @ConfigItem = params['ConfigItem']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @Value = params['Value']
          @LastValue = params['LastValue']
          @Content = params['Content']
          @Message = params['Message']
        end
      end

      # 发布文档详情
      class ReleaseDoc < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Action: 状态
        # @type Action: Integer
        # @param ActionDesc: 状态描述
        # @type ActionDesc: String
        # @param Message: 失败原因
        # @type Message: String
        # @param DocBizId: 文档业务ID
        # @type DocBizId: String

        attr_accessor :FileName, :FileType, :UpdateTime, :Action, :ActionDesc, :Message, :DocBizId

        def initialize(filename=nil, filetype=nil, updatetime=nil, action=nil, actiondesc=nil, message=nil, docbizid=nil)
          @FileName = filename
          @FileType = filetype
          @UpdateTime = updatetime
          @Action = action
          @ActionDesc = actiondesc
          @Message = message
          @DocBizId = docbizid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDesc = params['ActionDesc']
          @Message = params['Message']
          @DocBizId = params['DocBizId']
        end
      end

      # 发布问答
      class ReleaseQA < TencentCloud::Common::AbstractModel
        # @param Question: 问题
        # @type Question: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Action: 状态
        # @type Action: Integer
        # @param ActionDesc: 状态描述
        # @type ActionDesc: String
        # @param Source: 来源
        # @type Source: Integer
        # @param SourceDesc: 来源描述
        # @type SourceDesc: String
        # @param FileName: 文件名字
        # @type FileName: String
        # @param FileType: 文档类型
        # @type FileType: String
        # @param Message: 失败原因
        # @type Message: String
        # @param ReleaseStatus: 发布状态
        # @type ReleaseStatus: Integer
        # @param QaBizId: QAID
        # @type QaBizId: String
        # @param DocBizId: 文档业务ID
        # @type DocBizId: String

        attr_accessor :Question, :UpdateTime, :Action, :ActionDesc, :Source, :SourceDesc, :FileName, :FileType, :Message, :ReleaseStatus, :QaBizId, :DocBizId

        def initialize(question=nil, updatetime=nil, action=nil, actiondesc=nil, source=nil, sourcedesc=nil, filename=nil, filetype=nil, message=nil, releasestatus=nil, qabizid=nil, docbizid=nil)
          @Question = question
          @UpdateTime = updatetime
          @Action = action
          @ActionDesc = actiondesc
          @Source = source
          @SourceDesc = sourcedesc
          @FileName = filename
          @FileType = filetype
          @Message = message
          @ReleaseStatus = releasestatus
          @QaBizId = qabizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @Question = params['Question']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDesc = params['ActionDesc']
          @Source = params['Source']
          @SourceDesc = params['SourceDesc']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Message = params['Message']
          @ReleaseStatus = params['ReleaseStatus']
          @QaBizId = params['QaBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # 发布拒答
      class ReleaseRejectedQuestion < TencentCloud::Common::AbstractModel
        # @param Question: 问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Action: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: Integer
        # @param ActionDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionDesc: String
        # @param Message: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Question, :UpdateTime, :Action, :ActionDesc, :Message

        def initialize(question=nil, updatetime=nil, action=nil, actiondesc=nil, message=nil)
          @Question = question
          @UpdateTime = updatetime
          @Action = action
          @ActionDesc = actiondesc
          @Message = message
        end

        def deserialize(params)
          @Question = params['Question']
          @UpdateTime = params['UpdateTime']
          @Action = params['Action']
          @ActionDesc = params['ActionDesc']
          @Message = params['Message']
        end
      end

      # ResetSession请求参数结构体
      class ResetSessionRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # ResetSession返回参数结构体
      class ResetSessionResponse < TencentCloud::Common::AbstractModel
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

      # RetryDocAudit请求参数结构体
      class RetryDocAuditRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # RetryDocAudit返回参数结构体
      class RetryDocAuditResponse < TencentCloud::Common::AbstractModel
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

      # RetryDocParse请求参数结构体
      class RetryDocParseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # RetryDocParse返回参数结构体
      class RetryDocParseResponse < TencentCloud::Common::AbstractModel
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

      # RetryRelease请求参数结构体
      class RetryReleaseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param ReleaseBizId: 发布业务ID
        # @type ReleaseBizId: String

        attr_accessor :BotBizId, :ReleaseBizId

        def initialize(botbizid=nil, releasebizid=nil)
          @BotBizId = botbizid
          @ReleaseBizId = releasebizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @ReleaseBizId = params['ReleaseBizId']
        end
      end

      # RetryRelease返回参数结构体
      class RetryReleaseResponse < TencentCloud::Common::AbstractModel
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

      # SaveDoc请求参数结构体
      class SaveDocRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文件类型(md|txt|docx|pdf|xlsx)
        # @type FileType: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param ETag: ETag 全称为 Entity Tag，是对象被创建时标识对象内容的信息标签，可用于检查对象的内容是否发生变化
        # @type ETag: String
        # @param CosHash: cos_hash x-cos-hash-crc64ecma 头部中的 CRC64编码进行校验上传到云端的文件和本地文件的一致性
        # @type CosHash: String
        # @param Size: 文件大小
        # @type Size: String
        # @param AttrRange: 属性标签适用范围 1：全部，2：按条件范围
        # @type AttrRange: Integer
        # @param Source: 来源(0 源文件导入 1 网页导入)
        # @type Source: Integer
        # @param WebUrl: 网页(或自定义链接)地址
        # @type WebUrl: String
        # @param AttrLabels: 属性标签引用
        # @type AttrLabels: Array
        # @param ReferUrlType: 外部引用链接类型 0：系统链接 1：自定义链接
        # 值为1时，WebUrl 字段不能为空，否则不生效。
        # @type ReferUrlType: Integer
        # @param ExpireStart: 有效开始时间，unix时间戳
        # @type ExpireStart: String
        # @param ExpireEnd: 有效结束时间，unix时间戳，0代表永久有效
        # @type ExpireEnd: String
        # @param IsRefer: 是否引用链接
        # @type IsRefer: Boolean
        # @param Opt: 文档操作类型：1：批量导入；2:文档导入
        # @type Opt: Integer

        attr_accessor :BotBizId, :FileName, :FileType, :CosUrl, :ETag, :CosHash, :Size, :AttrRange, :Source, :WebUrl, :AttrLabels, :ReferUrlType, :ExpireStart, :ExpireEnd, :IsRefer, :Opt

        def initialize(botbizid=nil, filename=nil, filetype=nil, cosurl=nil, etag=nil, coshash=nil, size=nil, attrrange=nil, source=nil, weburl=nil, attrlabels=nil, referurltype=nil, expirestart=nil, expireend=nil, isrefer=nil, opt=nil)
          @BotBizId = botbizid
          @FileName = filename
          @FileType = filetype
          @CosUrl = cosurl
          @ETag = etag
          @CosHash = coshash
          @Size = size
          @AttrRange = attrrange
          @Source = source
          @WebUrl = weburl
          @AttrLabels = attrlabels
          @ReferUrlType = referurltype
          @ExpireStart = expirestart
          @ExpireEnd = expireend
          @IsRefer = isrefer
          @Opt = opt
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
          @ETag = params['ETag']
          @CosHash = params['CosHash']
          @Size = params['Size']
          @AttrRange = params['AttrRange']
          @Source = params['Source']
          @WebUrl = params['WebUrl']
          unless params['AttrLabels'].nil?
            @AttrLabels = []
            params['AttrLabels'].each do |i|
              attrlabelrefer_tmp = AttrLabelRefer.new
              attrlabelrefer_tmp.deserialize(i)
              @AttrLabels << attrlabelrefer_tmp
            end
          end
          @ReferUrlType = params['ReferUrlType']
          @ExpireStart = params['ExpireStart']
          @ExpireEnd = params['ExpireEnd']
          @IsRefer = params['IsRefer']
          @Opt = params['Opt']
        end
      end

      # SaveDoc返回参数结构体
      class SaveDocResponse < TencentCloud::Common::AbstractModel
        # @param DocBizId: 文档ID
        # @type DocBizId: String
        # @param ErrorMsg: 导入错误信息
        # @type ErrorMsg: String
        # @param ErrorLink: 错误链接
        # @type ErrorLink: String
        # @param ErrorLinkText: 错误链接文本
        # @type ErrorLinkText: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocBizId, :ErrorMsg, :ErrorLink, :ErrorLinkText, :RequestId

        def initialize(docbizid=nil, errormsg=nil, errorlink=nil, errorlinktext=nil, requestid=nil)
          @DocBizId = docbizid
          @ErrorMsg = errormsg
          @ErrorLink = errorlink
          @ErrorLinkText = errorlinktext
          @RequestId = requestid
        end

        def deserialize(params)
          @DocBizId = params['DocBizId']
          @ErrorMsg = params['ErrorMsg']
          @ErrorLink = params['ErrorLink']
          @ErrorLinkText = params['ErrorLinkText']
          @RequestId = params['RequestId']
        end
      end

      # StopDocParse请求参数结构体
      class StopDocParseRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param DocBizId: 文档ID
        # @type DocBizId: String

        attr_accessor :BotBizId, :DocBizId

        def initialize(botbizid=nil, docbizid=nil)
          @BotBizId = botbizid
          @DocBizId = docbizid
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @DocBizId = params['DocBizId']
        end
      end

      # StopDocParse返回参数结构体
      class StopDocParseResponse < TencentCloud::Common::AbstractModel
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

      # 知识摘要应用配置
      class SummaryConfig < TencentCloud::Common::AbstractModel
        # @param Model: 模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: :class:`Tencentcloud::Lke.v20231130.models.AppModel`
        # @param Output: 知识摘要输出配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Lke.v20231130.models.SummaryOutput`

        attr_accessor :Model, :Output

        def initialize(model=nil, output=nil)
          @Model = model
          @Output = output
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = AppModel.new
            @Model.deserialize(params['Model'])
          end
          unless params['Output'].nil?
            @Output = SummaryOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 知识摘要输出配置
      class SummaryOutput < TencentCloud::Common::AbstractModel
        # @param Method: 输出方式 1：流式 2：非流式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: Integer
        # @param Requirement: 输出要求 1：文本总结 2：自定义要求
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Requirement: Integer
        # @param RequireCommand: 自定义要求指令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequireCommand: String

        attr_accessor :Method, :Requirement, :RequireCommand

        def initialize(method=nil, requirement=nil, requirecommand=nil)
          @Method = method
          @Requirement = requirement
          @RequireCommand = requirecommand
        end

        def deserialize(params)
          @Method = params['Method']
          @Requirement = params['Requirement']
          @RequireCommand = params['RequireCommand']
        end
      end

      # 任务参数
      class TaskParams < TencentCloud::Common::AbstractModel
        # @param CosPath: 下载地址,需要通过cos桶临时密钥去下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPath: String

        attr_accessor :CosPath

        def initialize(cospath=nil)
          @CosPath = cospath
        end

        def deserialize(params)
          @CosPath = params['CosPath']
        end
      end

      # 不满意回复
      class UnsatisfiedReply < TencentCloud::Common::AbstractModel
        # @param ReplyBizId: 不满意回复ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplyBizId: String
        # @param RecordBizId: 消息记录ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordBizId: String
        # @param Question: 用户问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Answer: 机器人回复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Answer: String
        # @param Reasons: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reasons: Array

        attr_accessor :ReplyBizId, :RecordBizId, :Question, :Answer, :Reasons

        def initialize(replybizid=nil, recordbizid=nil, question=nil, answer=nil, reasons=nil)
          @ReplyBizId = replybizid
          @RecordBizId = recordbizid
          @Question = question
          @Answer = answer
          @Reasons = reasons
        end

        def deserialize(params)
          @ReplyBizId = params['ReplyBizId']
          @RecordBizId = params['RecordBizId']
          @Question = params['Question']
          @Answer = params['Answer']
          @Reasons = params['Reasons']
        end
      end

      # UploadAttributeLabel请求参数结构体
      class UploadAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param CosUrl: cos路径
        # @type CosUrl: String
        # @param CosHash: x-cos-hash-crc64ecma 头部中的 CRC64编码进行校验上传到云端的文件和本地文件的一致性
        # @type CosHash: String
        # @param Size: 文件大小
        # @type Size: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :BotBizId, :FileName, :CosUrl, :CosHash, :Size, :LoginUin, :LoginSubAccountUin

        def initialize(botbizid=nil, filename=nil, cosurl=nil, coshash=nil, size=nil, loginuin=nil, loginsubaccountuin=nil)
          @BotBizId = botbizid
          @FileName = filename
          @CosUrl = cosurl
          @CosHash = coshash
          @Size = size
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          @BotBizId = params['BotBizId']
          @FileName = params['FileName']
          @CosUrl = params['CosUrl']
          @CosHash = params['CosHash']
          @Size = params['Size']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # UploadAttributeLabel返回参数结构体
      class UploadAttributeLabelResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 导入错误
        # @type ErrorMsg: String
        # @param ErrorLink: 错误链接
        # @type ErrorLink: String
        # @param ErrorLinkText: 错误链接文本
        # @type ErrorLinkText: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :ErrorLink, :ErrorLinkText, :RequestId

        def initialize(errormsg=nil, errorlink=nil, errorlinktext=nil, requestid=nil)
          @ErrorMsg = errormsg
          @ErrorLink = errorlink
          @ErrorLinkText = errorlinktext
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @ErrorLink = params['ErrorLink']
          @ErrorLinkText = params['ErrorLinkText']
          @RequestId = params['RequestId']
        end
      end

      # VerifyQA请求参数结构体
      class VerifyQARequest < TencentCloud::Common::AbstractModel
        # @param List: 问答列表
        # @type List: Array
        # @param BotBizId: 机器人ID
        # @type BotBizId: String
        # @param LoginUin: 登录用户主账号(集成商模式必填)
        # @type LoginUin: String
        # @param LoginSubAccountUin: 登录用户子账号(集成商模式必填)
        # @type LoginSubAccountUin: String

        attr_accessor :List, :BotBizId, :LoginUin, :LoginSubAccountUin

        def initialize(list=nil, botbizid=nil, loginuin=nil, loginsubaccountuin=nil)
          @List = list
          @BotBizId = botbizid
          @LoginUin = loginuin
          @LoginSubAccountUin = loginsubaccountuin
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              qalist_tmp = QAList.new
              qalist_tmp.deserialize(i)
              @List << qalist_tmp
            end
          end
          @BotBizId = params['BotBizId']
          @LoginUin = params['LoginUin']
          @LoginSubAccountUin = params['LoginSubAccountUin']
        end
      end

      # VerifyQA返回参数结构体
      class VerifyQAResponse < TencentCloud::Common::AbstractModel
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
