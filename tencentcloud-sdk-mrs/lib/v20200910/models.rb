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
  module Mrs
    module V20200910
      # 入院情况
      class AdmissionConditionBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Value

        def initialize(name=nil, src=nil, value=nil)
          @Name = name
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 入院诊断
      class AdmissionDiagnosisBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Norm, :Value

        def initialize(name=nil, src=nil, norm=nil, value=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @Value = params['Value']
        end
      end

      # 建议
      class Advice < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 纵横比
      class AspectRatio < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Number: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Number: String
        # @param Relation: 关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Relation: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Index, :Number, :Relation, :Src, :Value

        def initialize(index=nil, number=nil, relation=nil, src=nil, value=nil)
          @Index = index
          @Number = number
          @Relation = relation
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Index = params['Index']
          @Number = params['Number']
          @Relation = params['Relation']
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 标准信息类
      class BaseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 标准值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Index, :Src, :Value, :Coords

        def initialize(name=nil, index=nil, src=nil, value=nil, coords=nil)
          @Name = name
          @Index = index
          @Src = src
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Index = params['Index']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 基础类型
      class BaseItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原始文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 归一化后值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Alias: 别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Coords: 四点坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Src, :Value, :Alias, :Coords

        def initialize(name=nil, src=nil, value=nil, _alias=nil, coords=nil)
          @Name = name
          @Src = src
          @Value = value
          @Alias = _alias
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          @Alias = params['Alias']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 基础类型
      class BaseItem2 < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原始文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 归一化后值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Coords: 四点坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Src, :Value, :Coords

        def initialize(name=nil, src=nil, value=nil, coords=nil)
          @Name = name
          @Src = src
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 基础类型
      class BaseItem3 < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原始文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 归一化后值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Coords: 四点坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array
        # @param Order: 第几次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: Integer

        attr_accessor :Name, :Src, :Value, :Coords, :Order

        def initialize(name=nil, src=nil, value=nil, coords=nil, order=nil)
          @Name = name
          @Src = src
          @Value = value
          @Coords = coords
          @Order = order
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
          @Order = params['Order']
        end
      end

      # 预防用生物制品说明书
      class BiologicalProductInfo < TencentCloud::Common::AbstractModel
        # @param Name: 药品名称，包括通用名和商品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoName`
        # @param IngredientAndAppearance: 成份和性状
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IngredientAndAppearance: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoIngredientAndAppearance`
        # @param VaccinationTarget: 接种对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VaccinationTarget: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoVaccinationTarget`
        # @param Indications: 作用与用途
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indications: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoIndications`
        # @param Brochure: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Brochure: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoBrochure`
        # @param Dosage: 免疫程序和剂量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dosage: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoDosage`
        # @param AdverseReaction: 不良反应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdverseReaction: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoAdverseReaction`
        # @param Contraindications: 禁忌情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contraindications: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoContraindications`
        # @param Precautions: 注意事项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Precautions: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoPrecautions`
        # @param Storage: 储存条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoStorage`
        # @param Packaging: 包装信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Packaging: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoPackaging`
        # @param ValidityPeriod: 有效期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoValidityPeriod`
        # @param ExecutiveStandards: 执行标准
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutiveStandards: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoExecutiveStandards`
        # @param Approval: 批准文号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Approval: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoApproval`
        # @param Manufacturer: 生产企业名称和地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manufacturer: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfoManufacturer`

        attr_accessor :Name, :IngredientAndAppearance, :VaccinationTarget, :Indications, :Brochure, :Dosage, :AdverseReaction, :Contraindications, :Precautions, :Storage, :Packaging, :ValidityPeriod, :ExecutiveStandards, :Approval, :Manufacturer

        def initialize(name=nil, ingredientandappearance=nil, vaccinationtarget=nil, indications=nil, brochure=nil, dosage=nil, adversereaction=nil, contraindications=nil, precautions=nil, storage=nil, packaging=nil, validityperiod=nil, executivestandards=nil, approval=nil, manufacturer=nil)
          @Name = name
          @IngredientAndAppearance = ingredientandappearance
          @VaccinationTarget = vaccinationtarget
          @Indications = indications
          @Brochure = brochure
          @Dosage = dosage
          @AdverseReaction = adversereaction
          @Contraindications = contraindications
          @Precautions = precautions
          @Storage = storage
          @Packaging = packaging
          @ValidityPeriod = validityperiod
          @ExecutiveStandards = executivestandards
          @Approval = approval
          @Manufacturer = manufacturer
        end

        def deserialize(params)
          unless params['Name'].nil?
            @Name = BiologicalProductInfoName.new
            @Name.deserialize(params['Name'])
          end
          unless params['IngredientAndAppearance'].nil?
            @IngredientAndAppearance = BiologicalProductInfoIngredientAndAppearance.new
            @IngredientAndAppearance.deserialize(params['IngredientAndAppearance'])
          end
          unless params['VaccinationTarget'].nil?
            @VaccinationTarget = BiologicalProductInfoVaccinationTarget.new
            @VaccinationTarget.deserialize(params['VaccinationTarget'])
          end
          unless params['Indications'].nil?
            @Indications = BiologicalProductInfoIndications.new
            @Indications.deserialize(params['Indications'])
          end
          unless params['Brochure'].nil?
            @Brochure = BiologicalProductInfoBrochure.new
            @Brochure.deserialize(params['Brochure'])
          end
          unless params['Dosage'].nil?
            @Dosage = BiologicalProductInfoDosage.new
            @Dosage.deserialize(params['Dosage'])
          end
          unless params['AdverseReaction'].nil?
            @AdverseReaction = BiologicalProductInfoAdverseReaction.new
            @AdverseReaction.deserialize(params['AdverseReaction'])
          end
          unless params['Contraindications'].nil?
            @Contraindications = BiologicalProductInfoContraindications.new
            @Contraindications.deserialize(params['Contraindications'])
          end
          unless params['Precautions'].nil?
            @Precautions = BiologicalProductInfoPrecautions.new
            @Precautions.deserialize(params['Precautions'])
          end
          unless params['Storage'].nil?
            @Storage = BiologicalProductInfoStorage.new
            @Storage.deserialize(params['Storage'])
          end
          unless params['Packaging'].nil?
            @Packaging = BiologicalProductInfoPackaging.new
            @Packaging.deserialize(params['Packaging'])
          end
          unless params['ValidityPeriod'].nil?
            @ValidityPeriod = BiologicalProductInfoValidityPeriod.new
            @ValidityPeriod.deserialize(params['ValidityPeriod'])
          end
          unless params['ExecutiveStandards'].nil?
            @ExecutiveStandards = BiologicalProductInfoExecutiveStandards.new
            @ExecutiveStandards.deserialize(params['ExecutiveStandards'])
          end
          unless params['Approval'].nil?
            @Approval = BiologicalProductInfoApproval.new
            @Approval.deserialize(params['Approval'])
          end
          unless params['Manufacturer'].nil?
            @Manufacturer = BiologicalProductInfoManufacturer.new
            @Manufacturer.deserialize(params['Manufacturer'])
          end
        end
      end

      # 不良反应
      class BiologicalProductInfoAdverseReaction < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 批准文号
      class BiologicalProductInfoApproval < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 规格
      class BiologicalProductInfoBrochure < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 禁忌情况
      class BiologicalProductInfoContraindications < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 免疫程序和剂量
      class BiologicalProductInfoDosage < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 执行标准
      class BiologicalProductInfoExecutiveStandards < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 作用与用途
      class BiologicalProductInfoIndications < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 成份和性状
      class BiologicalProductInfoIngredientAndAppearance < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 生产企业名称和地址
      class BiologicalProductInfoManufacturer < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 药品名称，包括通用名和商品名
      class BiologicalProductInfoName < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param GenericName: 通用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GenericName: String
        # @param BarndName: 品牌名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BarndName: String
        # @param EnName: 英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnName: String
        # @param Pinyin: 拼音
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pinyin: String

        attr_accessor :Text, :GenericName, :BarndName, :EnName, :Pinyin

        def initialize(text=nil, genericname=nil, barndname=nil, enname=nil, pinyin=nil)
          @Text = text
          @GenericName = genericname
          @BarndName = barndname
          @EnName = enname
          @Pinyin = pinyin
        end

        def deserialize(params)
          @Text = params['Text']
          @GenericName = params['GenericName']
          @BarndName = params['BarndName']
          @EnName = params['EnName']
          @Pinyin = params['Pinyin']
        end
      end

      # 包装信息
      class BiologicalProductInfoPackaging < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 注意事项
      class BiologicalProductInfoPrecautions < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 储存条件
      class BiologicalProductInfoStorage < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 接种对象
      class BiologicalProductInfoVaccinationTarget < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 有效期
      class BiologicalProductInfoValidityPeriod < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 活检部位
      class BiopsyPart < TencentCloud::Common::AbstractModel
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Value, :Src, :Coords

        def initialize(value=nil, src=nil, coords=nil)
          @Value = value
          @Src = src
          @Coords = coords
        end

        def deserialize(params)
          @Value = params['Value']
          @Src = params['Src']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 出生证明结构化信息
      class BirthCert < TencentCloud::Common::AbstractModel
        # @param NeonatalInfo: 新生儿信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeonatalInfo: :class:`Tencentcloud::Mrs.v20200910.models.NeonatalInfo`
        # @param MotherInfo: 母亲信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MotherInfo: :class:`Tencentcloud::Mrs.v20200910.models.ParentInfo`
        # @param FatherInfo: 父亲信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FatherInfo: :class:`Tencentcloud::Mrs.v20200910.models.ParentInfo`
        # @param IssueInfo: 签发信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueInfo: :class:`Tencentcloud::Mrs.v20200910.models.IssueInfo`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :NeonatalInfo, :MotherInfo, :FatherInfo, :IssueInfo, :Page

        def initialize(neonatalinfo=nil, motherinfo=nil, fatherinfo=nil, issueinfo=nil, page=nil)
          @NeonatalInfo = neonatalinfo
          @MotherInfo = motherinfo
          @FatherInfo = fatherinfo
          @IssueInfo = issueinfo
          @Page = page
        end

        def deserialize(params)
          unless params['NeonatalInfo'].nil?
            @NeonatalInfo = NeonatalInfo.new
            @NeonatalInfo.deserialize(params['NeonatalInfo'])
          end
          unless params['MotherInfo'].nil?
            @MotherInfo = ParentInfo.new
            @MotherInfo.deserialize(params['MotherInfo'])
          end
          unless params['FatherInfo'].nil?
            @FatherInfo = ParentInfo.new
            @FatherInfo.deserialize(params['FatherInfo'])
          end
          unless params['IssueInfo'].nil?
            @IssueInfo = IssueInfo.new
            @IssueInfo.deserialize(params['IssueInfo'])
          end
          @Page = params['Page']
        end
      end

      # 出生地
      class BirthPlaceBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Value

        def initialize(name=nil, src=nil, value=nil)
          @Name = name
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 结构化信息
      class Block < TencentCloud::Common::AbstractModel
        # @param Check: 诊断信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Check: Array
        # @param Pathology: 病理报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pathology: Array
        # @param MedDoc: 医学资料
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedDoc: Array
        # @param DiagCert: 诊断证明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagCert: Array
        # @param FirstPage: 病案首页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstPage: Array
        # @param Indicator: 检验报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indicator: Array
        # @param MedicalRecordInfo: 门诊病历信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalRecordInfo: Array
        # @param Hospitalization: 出入院信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hospitalization: Array
        # @param Surgery: 手术记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Surgery: Array
        # @param Prescription: 处方单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prescription: Array
        # @param VaccineCertificate: 免疫接种证明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VaccineCertificate: Array
        # @param Electrocardiogram: 心电图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Electrocardiogram: Array
        # @param PathologyV2: 病理报告v2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologyV2: Array
        # @param Endoscopy: 内窥镜报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endoscopy: Array
        # @param C14: C14检验报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type C14: Array
        # @param Exame: 体检结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exame: Array
        # @param MedDocV2: 出入院结构体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedDocV2: Array
        # @param IndicatorV3: 检验报告v3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndicatorV3: Array
        # @param Maternity: 孕产报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Maternity: Array
        # @param Timeline: 时间轴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeline: Array
        # @param Covid: 核酸报告结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Covid: Array
        # @param Eye: 眼科报告结构体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eye: Array
        # @param BirthCert: 出生证明结构化信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthCert: Array
        # @param TextTypeListBlocks: 文本类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTypeListBlocks: Array
        # @param PhysicalExamination: 体检报告信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalExamination: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalExaminationV1`

        attr_accessor :Check, :Pathology, :MedDoc, :DiagCert, :FirstPage, :Indicator, :MedicalRecordInfo, :Hospitalization, :Surgery, :Prescription, :VaccineCertificate, :Electrocardiogram, :PathologyV2, :Endoscopy, :C14, :Exame, :MedDocV2, :IndicatorV3, :Maternity, :Timeline, :Covid, :Eye, :BirthCert, :TextTypeListBlocks, :PhysicalExamination

        def initialize(check=nil, pathology=nil, meddoc=nil, diagcert=nil, firstpage=nil, indicator=nil, medicalrecordinfo=nil, hospitalization=nil, surgery=nil, prescription=nil, vaccinecertificate=nil, electrocardiogram=nil, pathologyv2=nil, endoscopy=nil, c14=nil, exame=nil, meddocv2=nil, indicatorv3=nil, maternity=nil, timeline=nil, covid=nil, eye=nil, birthcert=nil, texttypelistblocks=nil, physicalexamination=nil)
          @Check = check
          @Pathology = pathology
          @MedDoc = meddoc
          @DiagCert = diagcert
          @FirstPage = firstpage
          @Indicator = indicator
          @MedicalRecordInfo = medicalrecordinfo
          @Hospitalization = hospitalization
          @Surgery = surgery
          @Prescription = prescription
          @VaccineCertificate = vaccinecertificate
          @Electrocardiogram = electrocardiogram
          @PathologyV2 = pathologyv2
          @Endoscopy = endoscopy
          @C14 = c14
          @Exame = exame
          @MedDocV2 = meddocv2
          @IndicatorV3 = indicatorv3
          @Maternity = maternity
          @Timeline = timeline
          @Covid = covid
          @Eye = eye
          @BirthCert = birthcert
          @TextTypeListBlocks = texttypelistblocks
          @PhysicalExamination = physicalexamination
        end

        def deserialize(params)
          unless params['Check'].nil?
            @Check = []
            params['Check'].each do |i|
              check_tmp = Check.new
              check_tmp.deserialize(i)
              @Check << check_tmp
            end
          end
          unless params['Pathology'].nil?
            @Pathology = []
            params['Pathology'].each do |i|
              pathologyreport_tmp = PathologyReport.new
              pathologyreport_tmp.deserialize(i)
              @Pathology << pathologyreport_tmp
            end
          end
          unless params['MedDoc'].nil?
            @MedDoc = []
            params['MedDoc'].each do |i|
              meddoc_tmp = MedDoc.new
              meddoc_tmp.deserialize(i)
              @MedDoc << meddoc_tmp
            end
          end
          unless params['DiagCert'].nil?
            @DiagCert = []
            params['DiagCert'].each do |i|
              diagcert_tmp = DiagCert.new
              diagcert_tmp.deserialize(i)
              @DiagCert << diagcert_tmp
            end
          end
          unless params['FirstPage'].nil?
            @FirstPage = []
            params['FirstPage'].each do |i|
              firstpage_tmp = FirstPage.new
              firstpage_tmp.deserialize(i)
              @FirstPage << firstpage_tmp
            end
          end
          unless params['Indicator'].nil?
            @Indicator = []
            params['Indicator'].each do |i|
              indicator_tmp = Indicator.new
              indicator_tmp.deserialize(i)
              @Indicator << indicator_tmp
            end
          end
          unless params['MedicalRecordInfo'].nil?
            @MedicalRecordInfo = []
            params['MedicalRecordInfo'].each do |i|
              medicalrecordinfo_tmp = MedicalRecordInfo.new
              medicalrecordinfo_tmp.deserialize(i)
              @MedicalRecordInfo << medicalrecordinfo_tmp
            end
          end
          unless params['Hospitalization'].nil?
            @Hospitalization = []
            params['Hospitalization'].each do |i|
              hospitalization_tmp = Hospitalization.new
              hospitalization_tmp.deserialize(i)
              @Hospitalization << hospitalization_tmp
            end
          end
          unless params['Surgery'].nil?
            @Surgery = []
            params['Surgery'].each do |i|
              surgery_tmp = Surgery.new
              surgery_tmp.deserialize(i)
              @Surgery << surgery_tmp
            end
          end
          unless params['Prescription'].nil?
            @Prescription = []
            params['Prescription'].each do |i|
              prescription_tmp = Prescription.new
              prescription_tmp.deserialize(i)
              @Prescription << prescription_tmp
            end
          end
          unless params['VaccineCertificate'].nil?
            @VaccineCertificate = []
            params['VaccineCertificate'].each do |i|
              vaccinecertificate_tmp = VaccineCertificate.new
              vaccinecertificate_tmp.deserialize(i)
              @VaccineCertificate << vaccinecertificate_tmp
            end
          end
          unless params['Electrocardiogram'].nil?
            @Electrocardiogram = []
            params['Electrocardiogram'].each do |i|
              electrocardiogram_tmp = Electrocardiogram.new
              electrocardiogram_tmp.deserialize(i)
              @Electrocardiogram << electrocardiogram_tmp
            end
          end
          unless params['PathologyV2'].nil?
            @PathologyV2 = []
            params['PathologyV2'].each do |i|
              pathologyv2_tmp = PathologyV2.new
              pathologyv2_tmp.deserialize(i)
              @PathologyV2 << pathologyv2_tmp
            end
          end
          unless params['Endoscopy'].nil?
            @Endoscopy = []
            params['Endoscopy'].each do |i|
              endoscopy_tmp = Endoscopy.new
              endoscopy_tmp.deserialize(i)
              @Endoscopy << endoscopy_tmp
            end
          end
          unless params['C14'].nil?
            @C14 = []
            params['C14'].each do |i|
              indicator_tmp = Indicator.new
              indicator_tmp.deserialize(i)
              @C14 << indicator_tmp
            end
          end
          unless params['Exame'].nil?
            @Exame = []
            params['Exame'].each do |i|
              exame_tmp = Exame.new
              exame_tmp.deserialize(i)
              @Exame << exame_tmp
            end
          end
          unless params['MedDocV2'].nil?
            @MedDocV2 = []
            params['MedDocV2'].each do |i|
              dischargeinfoblock_tmp = DischargeInfoBlock.new
              dischargeinfoblock_tmp.deserialize(i)
              @MedDocV2 << dischargeinfoblock_tmp
            end
          end
          unless params['IndicatorV3'].nil?
            @IndicatorV3 = []
            params['IndicatorV3'].each do |i|
              indicatorv3_tmp = IndicatorV3.new
              indicatorv3_tmp.deserialize(i)
              @IndicatorV3 << indicatorv3_tmp
            end
          end
          unless params['Maternity'].nil?
            @Maternity = []
            params['Maternity'].each do |i|
              maternity_tmp = Maternity.new
              maternity_tmp.deserialize(i)
              @Maternity << maternity_tmp
            end
          end
          unless params['Timeline'].nil?
            @Timeline = []
            params['Timeline'].each do |i|
              timelineinformation_tmp = TimelineInformation.new
              timelineinformation_tmp.deserialize(i)
              @Timeline << timelineinformation_tmp
            end
          end
          unless params['Covid'].nil?
            @Covid = []
            params['Covid'].each do |i|
              coviditemsinfo_tmp = CovidItemsInfo.new
              coviditemsinfo_tmp.deserialize(i)
              @Covid << coviditemsinfo_tmp
            end
          end
          unless params['Eye'].nil?
            @Eye = []
            params['Eye'].each do |i|
              eyeitemsinfo_tmp = EyeItemsInfo.new
              eyeitemsinfo_tmp.deserialize(i)
              @Eye << eyeitemsinfo_tmp
            end
          end
          unless params['BirthCert'].nil?
            @BirthCert = []
            params['BirthCert'].each do |i|
              birthcert_tmp = BirthCert.new
              birthcert_tmp.deserialize(i)
              @BirthCert << birthcert_tmp
            end
          end
          unless params['TextTypeListBlocks'].nil?
            @TextTypeListBlocks = []
            params['TextTypeListBlocks'].each do |i|
              texttypelistblock_tmp = TextTypeListBlock.new
              texttypelistblock_tmp.deserialize(i)
              @TextTypeListBlocks << texttypelistblock_tmp
            end
          end
          unless params['PhysicalExamination'].nil?
            @PhysicalExamination = PhysicalExaminationV1.new
            @PhysicalExamination.deserialize(params['PhysicalExamination'])
          end
        end
      end

      # 块信息
      class BlockInfo < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Positive: 阳性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Size: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Array

        attr_accessor :Index, :Positive, :Src, :Value, :Type, :Name, :Size

        def initialize(index=nil, positive=nil, src=nil, value=nil, type=nil, name=nil, size=nil)
          @Index = index
          @Positive = positive
          @Src = src
          @Value = value
          @Type = type
          @Name = name
          @Size = size
        end

        def deserialize(params)
          @Index = params['Index']
          @Positive = params['Positive']
          @Src = params['Src']
          @Value = params['Value']
          @Type = params['Type']
          @Name = params['Name']
          unless params['Size'].nil?
            @Size = []
            params['Size'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @Size << size_tmp
            end
          end
        end
      end

      # 块信息
      class BlockInfoV2 < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Code: 疾病编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String

        attr_accessor :Index, :Src, :Value, :Name, :Code

        def initialize(index=nil, src=nil, value=nil, name=nil, code=nil)
          @Index = index
          @Src = src
          @Value = value
          @Name = name
          @Code = code
        end

        def deserialize(params)
          @Index = params['Index']
          @Src = params['Src']
          @Value = params['Value']
          @Name = params['Name']
          @Code = params['Code']
        end
      end

      # 块标题
      class BlockTitle < TencentCloud::Common::AbstractModel
        # @param Name: name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: src
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Value

        def initialize(name=nil, src=nil, value=nil)
          @Name = name
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 血压
      class BloodPressureBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param NormDiastolic: 舒张压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormDiastolic: String
        # @param NormSystolic: 收缩压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormSystolic: String

        attr_accessor :Name, :Src, :Norm, :Unit, :Value, :NormDiastolic, :NormSystolic

        def initialize(name=nil, src=nil, norm=nil, unit=nil, value=nil, normdiastolic=nil, normsystolic=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @Unit = unit
          @Value = value
          @NormDiastolic = normdiastolic
          @NormSystolic = normsystolic
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @Unit = params['Unit']
          @Value = params['Value']
          @NormDiastolic = params['NormDiastolic']
          @NormSystolic = params['NormSystolic']
        end
      end

      # 体检报告血压检测信息
      class BloodPressureItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Item: 项目原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Result: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Times: 第几次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Times: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Location: 左右手臂
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Name, :Item, :Result, :Unit, :Times, :Location, :Page

        def initialize(name=nil, item=nil, result=nil, unit=nil, times=nil, location=nil, page=nil)
          @Name = name
          @Item = item
          @Result = result
          @Unit = unit
          @Times = times
          @Location = location
          @Page = page
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Item'].nil?
            @Item = PhysicalBaseItem.new
            @Item.deserialize(params['Item'])
          end
          unless params['Result'].nil?
            @Result = PhysicalBaseItem.new
            @Result.deserialize(params['Result'])
          end
          unless params['Unit'].nil?
            @Unit = PhysicalBaseItem.new
            @Unit.deserialize(params['Unit'])
          end
          unless params['Times'].nil?
            @Times = PhysicalBaseItem.new
            @Times.deserialize(params['Times'])
          end
          unless params['Location'].nil?
            @Location = PhysicalBaseItem.new
            @Location.deserialize(params['Location'])
          end
          @Page = params['Page']
        end
      end

      # 查体
      class BodyExaminationBlock < TencentCloud::Common::AbstractModel
        # @param BodyTemperature: 体温
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyTemperature: :class:`Tencentcloud::Mrs.v20200910.models.BodyTemperatureBlock`
        # @param Pulse: 脉搏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pulse: :class:`Tencentcloud::Mrs.v20200910.models.BodyTemperatureBlock`
        # @param Breathe: 呼吸
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Breathe: :class:`Tencentcloud::Mrs.v20200910.models.BodyTemperatureBlock`
        # @param BloodPressure: 血压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BloodPressure: :class:`Tencentcloud::Mrs.v20200910.models.BloodPressureBlock`

        attr_accessor :BodyTemperature, :Pulse, :Breathe, :BloodPressure

        def initialize(bodytemperature=nil, pulse=nil, breathe=nil, bloodpressure=nil)
          @BodyTemperature = bodytemperature
          @Pulse = pulse
          @Breathe = breathe
          @BloodPressure = bloodpressure
        end

        def deserialize(params)
          unless params['BodyTemperature'].nil?
            @BodyTemperature = BodyTemperatureBlock.new
            @BodyTemperature.deserialize(params['BodyTemperature'])
          end
          unless params['Pulse'].nil?
            @Pulse = BodyTemperatureBlock.new
            @Pulse.deserialize(params['Pulse'])
          end
          unless params['Breathe'].nil?
            @Breathe = BodyTemperatureBlock.new
            @Breathe.deserialize(params['Breathe'])
          end
          unless params['BloodPressure'].nil?
            @BloodPressure = BloodPressureBlock.new
            @BloodPressure.deserialize(params['BloodPressure'])
          end
        end
      end

      # 体温名称
      class BodyTemperatureBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Norm, :Unit, :Value

        def initialize(name=nil, src=nil, norm=nil, unit=nil, value=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @Unit = unit
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @Unit = params['Unit']
          @Value = params['Value']
        end
      end

      # 检查报告单
      class Check < TencentCloud::Common::AbstractModel
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: :class:`Tencentcloud::Mrs.v20200910.models.Desc`
        # @param Summary: 结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: :class:`Tencentcloud::Mrs.v20200910.models.Summary`
        # @param BlockTitle: 检查报告块标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockTitle: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Desc, :Summary, :BlockTitle, :Page

        def initialize(desc=nil, summary=nil, blocktitle=nil, page=nil)
          @Desc = desc
          @Summary = summary
          @BlockTitle = blocktitle
          @Page = page
        end

        def deserialize(params)
          unless params['Desc'].nil?
            @Desc = Desc.new
            @Desc.deserialize(params['Desc'])
          end
          unless params['Summary'].nil?
            @Summary = Summary.new
            @Summary.deserialize(params['Summary'])
          end
          unless params['BlockTitle'].nil?
            @BlockTitle = []
            params['BlockTitle'].each do |i|
              blocktitle_tmp = BlockTitle.new
              blocktitle_tmp.deserialize(i)
              @BlockTitle << blocktitle_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 药品说明书消息定义
      class ChemicalProductInfo < TencentCloud::Common::AbstractModel
        # @param Name: 药品名称，包括通用名和商品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoName`
        # @param ActiveIngredient: 活性成份消息定义，如果是复方制剂，可以不列出每个活性成份的详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveIngredient: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoActiveIngredient`
        # @param Appearance: 性状
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Appearance: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoAppearance`
        # @param Indications: 适应症描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indications: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoIndications`
        # @param Brochure: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Brochure: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoBrochure`
        # @param Dosage: 用法用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dosage: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoDosage`
        # @param AdverseReaction: 不良反应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdverseReaction: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoAdverseReaction`
        # @param Contraindications: 禁忌情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contraindications: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoContraindications`
        # @param Precautions: 注意事项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Precautions: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoPrecautions`
        # @param PregnancyLactationUse: 孕妇及哺乳期妇女用药
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PregnancyLactationUse: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoPregnancyLactationUse`
        # @param PediatricUse: 儿童用药
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PediatricUse: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoPediatricUse`
        # @param GeriatricUse: 老年用药
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeriatricUse: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoGeriatricUse`
        # @param Interactions: 药品的药物相互作用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interactions: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoInteractions`
        # @param Overdose: 药物过量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Overdose: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoOverdose`
        # @param ClinicalTrial: 临床试验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClinicalTrial: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoClinicalTrial`
        # @param PharmacologyToxicology: 药理毒理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PharmacologyToxicology: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoPharmacologyToxicology`
        # @param Pharmacokinetics: 药代动力学
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pharmacokinetics: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoPharmacokinetics`
        # @param Storage: 储存条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoStorage`
        # @param Packaging: 包装信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Packaging: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoPackaging`
        # @param ValidityPeriod: 有效期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoValidityPeriod`
        # @param ExecutiveStandards: 执行标准
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutiveStandards: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoExecutiveStandards`
        # @param Approval: 批准文号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Approval: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoApproval`
        # @param Manufacturer: 生产企业名称和地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manufacturer: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfoManufacturer`

        attr_accessor :Name, :ActiveIngredient, :Appearance, :Indications, :Brochure, :Dosage, :AdverseReaction, :Contraindications, :Precautions, :PregnancyLactationUse, :PediatricUse, :GeriatricUse, :Interactions, :Overdose, :ClinicalTrial, :PharmacologyToxicology, :Pharmacokinetics, :Storage, :Packaging, :ValidityPeriod, :ExecutiveStandards, :Approval, :Manufacturer

        def initialize(name=nil, activeingredient=nil, appearance=nil, indications=nil, brochure=nil, dosage=nil, adversereaction=nil, contraindications=nil, precautions=nil, pregnancylactationuse=nil, pediatricuse=nil, geriatricuse=nil, interactions=nil, overdose=nil, clinicaltrial=nil, pharmacologytoxicology=nil, pharmacokinetics=nil, storage=nil, packaging=nil, validityperiod=nil, executivestandards=nil, approval=nil, manufacturer=nil)
          @Name = name
          @ActiveIngredient = activeingredient
          @Appearance = appearance
          @Indications = indications
          @Brochure = brochure
          @Dosage = dosage
          @AdverseReaction = adversereaction
          @Contraindications = contraindications
          @Precautions = precautions
          @PregnancyLactationUse = pregnancylactationuse
          @PediatricUse = pediatricuse
          @GeriatricUse = geriatricuse
          @Interactions = interactions
          @Overdose = overdose
          @ClinicalTrial = clinicaltrial
          @PharmacologyToxicology = pharmacologytoxicology
          @Pharmacokinetics = pharmacokinetics
          @Storage = storage
          @Packaging = packaging
          @ValidityPeriod = validityperiod
          @ExecutiveStandards = executivestandards
          @Approval = approval
          @Manufacturer = manufacturer
        end

        def deserialize(params)
          unless params['Name'].nil?
            @Name = ChemicalProductInfoName.new
            @Name.deserialize(params['Name'])
          end
          unless params['ActiveIngredient'].nil?
            @ActiveIngredient = ChemicalProductInfoActiveIngredient.new
            @ActiveIngredient.deserialize(params['ActiveIngredient'])
          end
          unless params['Appearance'].nil?
            @Appearance = ChemicalProductInfoAppearance.new
            @Appearance.deserialize(params['Appearance'])
          end
          unless params['Indications'].nil?
            @Indications = ChemicalProductInfoIndications.new
            @Indications.deserialize(params['Indications'])
          end
          unless params['Brochure'].nil?
            @Brochure = ChemicalProductInfoBrochure.new
            @Brochure.deserialize(params['Brochure'])
          end
          unless params['Dosage'].nil?
            @Dosage = ChemicalProductInfoDosage.new
            @Dosage.deserialize(params['Dosage'])
          end
          unless params['AdverseReaction'].nil?
            @AdverseReaction = ChemicalProductInfoAdverseReaction.new
            @AdverseReaction.deserialize(params['AdverseReaction'])
          end
          unless params['Contraindications'].nil?
            @Contraindications = ChemicalProductInfoContraindications.new
            @Contraindications.deserialize(params['Contraindications'])
          end
          unless params['Precautions'].nil?
            @Precautions = ChemicalProductInfoPrecautions.new
            @Precautions.deserialize(params['Precautions'])
          end
          unless params['PregnancyLactationUse'].nil?
            @PregnancyLactationUse = ChemicalProductInfoPregnancyLactationUse.new
            @PregnancyLactationUse.deserialize(params['PregnancyLactationUse'])
          end
          unless params['PediatricUse'].nil?
            @PediatricUse = ChemicalProductInfoPediatricUse.new
            @PediatricUse.deserialize(params['PediatricUse'])
          end
          unless params['GeriatricUse'].nil?
            @GeriatricUse = ChemicalProductInfoGeriatricUse.new
            @GeriatricUse.deserialize(params['GeriatricUse'])
          end
          unless params['Interactions'].nil?
            @Interactions = ChemicalProductInfoInteractions.new
            @Interactions.deserialize(params['Interactions'])
          end
          unless params['Overdose'].nil?
            @Overdose = ChemicalProductInfoOverdose.new
            @Overdose.deserialize(params['Overdose'])
          end
          unless params['ClinicalTrial'].nil?
            @ClinicalTrial = ChemicalProductInfoClinicalTrial.new
            @ClinicalTrial.deserialize(params['ClinicalTrial'])
          end
          unless params['PharmacologyToxicology'].nil?
            @PharmacologyToxicology = ChemicalProductInfoPharmacologyToxicology.new
            @PharmacologyToxicology.deserialize(params['PharmacologyToxicology'])
          end
          unless params['Pharmacokinetics'].nil?
            @Pharmacokinetics = ChemicalProductInfoPharmacokinetics.new
            @Pharmacokinetics.deserialize(params['Pharmacokinetics'])
          end
          unless params['Storage'].nil?
            @Storage = ChemicalProductInfoStorage.new
            @Storage.deserialize(params['Storage'])
          end
          unless params['Packaging'].nil?
            @Packaging = ChemicalProductInfoPackaging.new
            @Packaging.deserialize(params['Packaging'])
          end
          unless params['ValidityPeriod'].nil?
            @ValidityPeriod = ChemicalProductInfoValidityPeriod.new
            @ValidityPeriod.deserialize(params['ValidityPeriod'])
          end
          unless params['ExecutiveStandards'].nil?
            @ExecutiveStandards = ChemicalProductInfoExecutiveStandards.new
            @ExecutiveStandards.deserialize(params['ExecutiveStandards'])
          end
          unless params['Approval'].nil?
            @Approval = ChemicalProductInfoApproval.new
            @Approval.deserialize(params['Approval'])
          end
          unless params['Manufacturer'].nil?
            @Manufacturer = ChemicalProductInfoManufacturer.new
            @Manufacturer.deserialize(params['Manufacturer'])
          end
        end
      end

      # 活性成份消息定义，如果是复方制剂，可以不列出每个活性成份的详细信息
      class ChemicalProductInfoActiveIngredient < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param ChemicalName: 活性成份的化学名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChemicalName: String
        # @param ChemicalFormula: 活性成份的化学结构式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChemicalFormula: String
        # @param MolecularFormula: 活性成份的分子式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MolecularFormula: String
        # @param MolecularWeight: 活性成份的分子量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MolecularWeight: String

        attr_accessor :Text, :ChemicalName, :ChemicalFormula, :MolecularFormula, :MolecularWeight

        def initialize(text=nil, chemicalname=nil, chemicalformula=nil, molecularformula=nil, molecularweight=nil)
          @Text = text
          @ChemicalName = chemicalname
          @ChemicalFormula = chemicalformula
          @MolecularFormula = molecularformula
          @MolecularWeight = molecularweight
        end

        def deserialize(params)
          @Text = params['Text']
          @ChemicalName = params['ChemicalName']
          @ChemicalFormula = params['ChemicalFormula']
          @MolecularFormula = params['MolecularFormula']
          @MolecularWeight = params['MolecularWeight']
        end
      end

      # 不良反应
      class ChemicalProductInfoAdverseReaction < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 性状
      class ChemicalProductInfoAppearance < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 批准文号
      class ChemicalProductInfoApproval < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 规格
      class ChemicalProductInfoBrochure < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 临床试验
      class ChemicalProductInfoClinicalTrial < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 禁忌情况
      class ChemicalProductInfoContraindications < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 用法用量
      class ChemicalProductInfoDosage < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 执行标准
      class ChemicalProductInfoExecutiveStandards < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 老年用药
      class ChemicalProductInfoGeriatricUse < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 适应症描述
      class ChemicalProductInfoIndications < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 药品的药物相互作用
      class ChemicalProductInfoInteractions < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 生产企业名称和地址
      class ChemicalProductInfoManufacturer < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Name: 企业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Address: 生产地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param PostalCode: 邮政编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostalCode: String
        # @param Phone: 电话，包含区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Fax: 传真，包含区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fax: String
        # @param Website: 网址，如无则不填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Website: String

        attr_accessor :Text, :Name, :Address, :PostalCode, :Phone, :Fax, :Website

        def initialize(text=nil, name=nil, address=nil, postalcode=nil, phone=nil, fax=nil, website=nil)
          @Text = text
          @Name = name
          @Address = address
          @PostalCode = postalcode
          @Phone = phone
          @Fax = fax
          @Website = website
        end

        def deserialize(params)
          @Text = params['Text']
          @Name = params['Name']
          @Address = params['Address']
          @PostalCode = params['PostalCode']
          @Phone = params['Phone']
          @Fax = params['Fax']
          @Website = params['Website']
        end
      end

      # 药品名称，包括通用名和商品名
      class ChemicalProductInfoName < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param GenericName: 通用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GenericName: String
        # @param BarndName: 品牌名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BarndName: String
        # @param EnName: 英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnName: String
        # @param Pinyin: 拼音
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pinyin: String

        attr_accessor :Text, :GenericName, :BarndName, :EnName, :Pinyin

        def initialize(text=nil, genericname=nil, barndname=nil, enname=nil, pinyin=nil)
          @Text = text
          @GenericName = genericname
          @BarndName = barndname
          @EnName = enname
          @Pinyin = pinyin
        end

        def deserialize(params)
          @Text = params['Text']
          @GenericName = params['GenericName']
          @BarndName = params['BarndName']
          @EnName = params['EnName']
          @Pinyin = params['Pinyin']
        end
      end

      # 药物过量
      class ChemicalProductInfoOverdose < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 包装信息
      class ChemicalProductInfoPackaging < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 儿童用药
      class ChemicalProductInfoPediatricUse < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 药代动力学
      class ChemicalProductInfoPharmacokinetics < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 药理毒理
      class ChemicalProductInfoPharmacologyToxicology < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 注意事项
      class ChemicalProductInfoPrecautions < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 孕妇及哺乳期妇女用药
      class ChemicalProductInfoPregnancyLactationUse < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 储存条件
      class ChemicalProductInfoStorage < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 有效期
      class ChemicalProductInfoValidityPeriod < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 体检报告-胸围信息
      class ChestCircumferenceItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Item: 项目原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Result: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param State: 呼吸状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`

        attr_accessor :Name, :Item, :Result, :Unit, :State

        def initialize(name=nil, item=nil, result=nil, unit=nil, state=nil)
          @Name = name
          @Item = item
          @Result = result
          @Unit = unit
          @State = state
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Item'].nil?
            @Item = PhysicalBaseItem.new
            @Item.deserialize(params['Item'])
          end
          unless params['Result'].nil?
            @Result = PhysicalBaseItem.new
            @Result.deserialize(params['Result'])
          end
          unless params['Unit'].nil?
            @Unit = PhysicalBaseItem.new
            @Unit.deserialize(params['Unit'])
          end
          unless params['State'].nil?
            @State = PhysicalBaseItem.new
            @State.deserialize(params['State'])
          end
        end
      end

      # 主诉
      class ChiefComplaintBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 单位输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Detail: 主诉详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array

        attr_accessor :Name, :Src, :Value, :Detail

        def initialize(name=nil, src=nil, value=nil, detail=nil)
          @Name = name
          @Src = src
          @Value = value
          @Detail = detail
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              chiefcomplaintdetailblock_tmp = ChiefComplaintDetailBlock.new
              chiefcomplaintdetailblock_tmp.deserialize(i)
              @Detail << chiefcomplaintdetailblock_tmp
            end
          end
        end
      end

      # 主诉详情
      class ChiefComplaintDetailBlock < TencentCloud::Common::AbstractModel
        # @param DiseaseName: 疾病名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseName: String
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String
        # @param Time: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param TimeType: 时间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String

        attr_accessor :DiseaseName, :Part, :Time, :TimeType

        def initialize(diseasename=nil, part=nil, time=nil, timetype=nil)
          @DiseaseName = diseasename
          @Part = part
          @Time = time
          @TimeType = timetype
        end

        def deserialize(params)
          @DiseaseName = params['DiseaseName']
          @Part = params['Part']
          @Time = params['Time']
          @TimeType = params['TimeType']
        end
      end

      # 临床分期
      class ClinicalStaging < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Value

        def initialize(name=nil, src=nil, value=nil)
          @Name = name
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 坐标
      class Coord < TencentCloud::Common::AbstractModel
        # @param Points: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array

        attr_accessor :Points

        def initialize(points=nil)
          @Points = points
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Points << point_tmp
            end
          end
        end
      end

      # 坐标
      class Coordinate < TencentCloud::Common::AbstractModel
        # @param X: 左上角x坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Integer
        # @param Y: 左上角y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Integer
        # @param Width: 宽度，单位像素
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 高度，单位像素
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height

        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 核酸报告结论结构
      class CovidItem < TencentCloud::Common::AbstractModel
        # @param SampleTime: 采样时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleTime: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param TestTime: 检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestTime: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param TestOrganization: 检测机构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestOrganization: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param TestResult: 检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestResult: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param CodeColor: 健康码颜色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeColor: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`

        attr_accessor :SampleTime, :TestTime, :TestOrganization, :TestResult, :CodeColor

        def initialize(sampletime=nil, testtime=nil, testorganization=nil, testresult=nil, codecolor=nil)
          @SampleTime = sampletime
          @TestTime = testtime
          @TestOrganization = testorganization
          @TestResult = testresult
          @CodeColor = codecolor
        end

        def deserialize(params)
          unless params['SampleTime'].nil?
            @SampleTime = BaseItem.new
            @SampleTime.deserialize(params['SampleTime'])
          end
          unless params['TestTime'].nil?
            @TestTime = BaseItem.new
            @TestTime.deserialize(params['TestTime'])
          end
          unless params['TestOrganization'].nil?
            @TestOrganization = BaseItem.new
            @TestOrganization.deserialize(params['TestOrganization'])
          end
          unless params['TestResult'].nil?
            @TestResult = BaseItem.new
            @TestResult.deserialize(params['TestResult'])
          end
          unless params['CodeColor'].nil?
            @CodeColor = BaseItem.new
            @CodeColor.deserialize(params['CodeColor'])
          end
        end
      end

      # 核酸报告结论
      class CovidItemsInfo < TencentCloud::Common::AbstractModel
        # @param CovidItems: 核酸报告结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CovidItems: Array
        # @param Version: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :CovidItems, :Version, :Page

        def initialize(coviditems=nil, version=nil, page=nil)
          @CovidItems = coviditems
          @Version = version
          @Page = page
        end

        def deserialize(params)
          unless params['CovidItems'].nil?
            @CovidItems = []
            params['CovidItems'].each do |i|
              coviditem_tmp = CovidItem.new
              coviditem_tmp.deserialize(i)
              @CovidItems << coviditem_tmp
            end
          end
          @Version = params['Version']
          @Page = params['Page']
        end
      end

      # 死亡时间
      class DeathDateBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Type, :Norm, :Unit, :Timestamp, :Value

        def initialize(name=nil, src=nil, type=nil, norm=nil, unit=nil, timestamp=nil, value=nil)
          @Name = name
          @Src = src
          @Type = type
          @Norm = norm
          @Unit = unit
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Type = params['Type']
          @Norm = params['Norm']
          @Unit = params['Unit']
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 描述
      class Desc < TencentCloud::Common::AbstractModel
        # @param Text: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Organ: 器官
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Organ: Array
        # @param Tuber: 结节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tuber: Array
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Text, :Organ, :Tuber, :Coords

        def initialize(text=nil, organ=nil, tuber=nil, coords=nil)
          @Text = text
          @Organ = organ
          @Tuber = tuber
          @Coords = coords
        end

        def deserialize(params)
          @Text = params['Text']
          unless params['Organ'].nil?
            @Organ = []
            params['Organ'].each do |i|
              organ_tmp = Organ.new
              organ_tmp.deserialize(i)
              @Organ << organ_tmp
            end
          end
          unless params['Tuber'].nil?
            @Tuber = []
            params['Tuber'].each do |i|
              tuberinfo_tmp = TuberInfo.new
              tuberinfo_tmp.deserialize(i)
              @Tuber << tuberinfo_tmp
            end
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 描述段落
      class DescInfo < TencentCloud::Common::AbstractModel
        # @param Text: 描述段落文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Infos: 描述段落详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Infos: Array

        attr_accessor :Text, :Infos

        def initialize(text=nil, infos=nil)
          @Text = text
          @Infos = infos
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = BaseInfo.new
            @Text.deserialize(params['Text'])
          end
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              detailinformation_tmp = DetailInformation.new
              detailinformation_tmp.deserialize(i)
              @Infos << detailinformation_tmp
            end
          end
        end
      end

      # 详情
      class DetailInformation < TencentCloud::Common::AbstractModel
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param TissueSizes: 组织大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TissueSizes: Array
        # @param TuberSizes: 结节大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TuberSizes: Array
        # @param CancerSizes: 肿瘤大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CancerSizes: Array
        # @param HistologyLevel: 组织学等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologyLevel: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param HistologyType: 组织学类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologyType: :class:`Tencentcloud::Mrs.v20200910.models.HistologyTypeV2`
        # @param Invasive: 侵犯
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Invasive: Array
        # @param PTNM: pTNM
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNM: :class:`Tencentcloud::Mrs.v20200910.models.PTNM`
        # @param InfiltrationDepth: 浸润深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InfiltrationDepth: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param TuberNum: 结节数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TuberNum: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Calcification: 钙化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Calcification: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Necrosis: 坏死
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Necrosis: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Abnormity: 异形
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Abnormity: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Breaked: 断链
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Breaked: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`

        attr_accessor :Part, :TissueSizes, :TuberSizes, :CancerSizes, :HistologyLevel, :HistologyType, :Invasive, :PTNM, :InfiltrationDepth, :TuberNum, :Calcification, :Necrosis, :Abnormity, :Breaked

        def initialize(part=nil, tissuesizes=nil, tubersizes=nil, cancersizes=nil, histologylevel=nil, histologytype=nil, invasive=nil, ptnm=nil, infiltrationdepth=nil, tubernum=nil, calcification=nil, necrosis=nil, abnormity=nil, breaked=nil)
          @Part = part
          @TissueSizes = tissuesizes
          @TuberSizes = tubersizes
          @CancerSizes = cancersizes
          @HistologyLevel = histologylevel
          @HistologyType = histologytype
          @Invasive = invasive
          @PTNM = ptnm
          @InfiltrationDepth = infiltrationdepth
          @TuberNum = tubernum
          @Calcification = calcification
          @Necrosis = necrosis
          @Abnormity = abnormity
          @Breaked = breaked
        end

        def deserialize(params)
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          unless params['TissueSizes'].nil?
            @TissueSizes = []
            params['TissueSizes'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @TissueSizes << size_tmp
            end
          end
          unless params['TuberSizes'].nil?
            @TuberSizes = []
            params['TuberSizes'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @TuberSizes << size_tmp
            end
          end
          unless params['CancerSizes'].nil?
            @CancerSizes = []
            params['CancerSizes'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @CancerSizes << size_tmp
            end
          end
          unless params['HistologyLevel'].nil?
            @HistologyLevel = BaseInfo.new
            @HistologyLevel.deserialize(params['HistologyLevel'])
          end
          unless params['HistologyType'].nil?
            @HistologyType = HistologyTypeV2.new
            @HistologyType.deserialize(params['HistologyType'])
          end
          unless params['Invasive'].nil?
            @Invasive = []
            params['Invasive'].each do |i|
              invasivev2_tmp = InvasiveV2.new
              invasivev2_tmp.deserialize(i)
              @Invasive << invasivev2_tmp
            end
          end
          unless params['PTNM'].nil?
            @PTNM = PTNM.new
            @PTNM.deserialize(params['PTNM'])
          end
          unless params['InfiltrationDepth'].nil?
            @InfiltrationDepth = BaseInfo.new
            @InfiltrationDepth.deserialize(params['InfiltrationDepth'])
          end
          unless params['TuberNum'].nil?
            @TuberNum = BaseInfo.new
            @TuberNum.deserialize(params['TuberNum'])
          end
          unless params['Calcification'].nil?
            @Calcification = BaseInfo.new
            @Calcification.deserialize(params['Calcification'])
          end
          unless params['Necrosis'].nil?
            @Necrosis = BaseInfo.new
            @Necrosis.deserialize(params['Necrosis'])
          end
          unless params['Abnormity'].nil?
            @Abnormity = BaseInfo.new
            @Abnormity.deserialize(params['Abnormity'])
          end
          unless params['Breaked'].nil?
            @Breaked = BaseInfo.new
            @Breaked.deserialize(params['Breaked'])
          end
        end
      end

      # 诊断证明
      class DiagCert < TencentCloud::Common::AbstractModel
        # @param Advice: 建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Advice: :class:`Tencentcloud::Mrs.v20200910.models.Advice`
        # @param Diagnosis: 诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Diagnosis: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Advice, :Diagnosis, :Page

        def initialize(advice=nil, diagnosis=nil, page=nil)
          @Advice = advice
          @Diagnosis = diagnosis
          @Page = page
        end

        def deserialize(params)
          unless params['Advice'].nil?
            @Advice = Advice.new
            @Advice.deserialize(params['Advice'])
          end
          unless params['Diagnosis'].nil?
            @Diagnosis = []
            params['Diagnosis'].each do |i|
              diagcertitem_tmp = DiagCertItem.new
              diagcertitem_tmp.deserialize(i)
              @Diagnosis << diagcertitem_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 诊断证明项
      class DiagCertItem < TencentCloud::Common::AbstractModel
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Text, :Type, :Value

        def initialize(text=nil, type=nil, value=nil)
          @Text = text
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Text = params['Text']
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 出院情况
      class DischargeConditionBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String

        attr_accessor :Name, :Src, :Value, :Norm

        def initialize(name=nil, src=nil, value=nil, norm=nil)
          @Name = name
          @Src = src
          @Value = value
          @Norm = norm
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          @Norm = params['Norm']
        end
      end

      # 出入院诊断
      class DischargeDiagnosis < TencentCloud::Common::AbstractModel
        # @param TableIndex: 表格位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIndex: Integer
        # @param OutDiagnosis: 出院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param DiseaseCode: 疾病编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseCode: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param InStatus: 入院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InStatus: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param OutStatus: 出院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutStatus: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`

        attr_accessor :TableIndex, :OutDiagnosis, :DiseaseCode, :InStatus, :OutStatus

        def initialize(tableindex=nil, outdiagnosis=nil, diseasecode=nil, instatus=nil, outstatus=nil)
          @TableIndex = tableindex
          @OutDiagnosis = outdiagnosis
          @DiseaseCode = diseasecode
          @InStatus = instatus
          @OutStatus = outstatus
        end

        def deserialize(params)
          @TableIndex = params['TableIndex']
          unless params['OutDiagnosis'].nil?
            @OutDiagnosis = BlockInfo.new
            @OutDiagnosis.deserialize(params['OutDiagnosis'])
          end
          unless params['DiseaseCode'].nil?
            @DiseaseCode = BlockInfo.new
            @DiseaseCode.deserialize(params['DiseaseCode'])
          end
          unless params['InStatus'].nil?
            @InStatus = BlockInfo.new
            @InStatus.deserialize(params['InStatus'])
          end
          unless params['OutStatus'].nil?
            @OutStatus = BlockInfo.new
            @OutStatus.deserialize(params['OutStatus'])
          end
        end
      end

      # 出院诊断
      class DischargeDiagnosisBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Norm, :Value

        def initialize(name=nil, src=nil, norm=nil, value=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @Value = params['Value']
        end
      end

      # 出入院结构体
      class DischargeInfoBlock < TencentCloud::Common::AbstractModel
        # @param DiseaseHistory: 疾病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseHistory: :class:`Tencentcloud::Mrs.v20200910.models.DiseaseHistoryBlock`
        # @param PersonalHistory: 个人史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalHistory: :class:`Tencentcloud::Mrs.v20200910.models.PersonalHistoryBlock`
        # @param DrugHistory: 药物史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrugHistory: :class:`Tencentcloud::Mrs.v20200910.models.DrugHistoryBlock`
        # @param TreatmentRecord: 治疗相关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreatmentRecord: :class:`Tencentcloud::Mrs.v20200910.models.TreatmentRecordBlock`
        # @param ParagraphBlock: 文本段落
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParagraphBlock: :class:`Tencentcloud::Mrs.v20200910.models.ParagraphBlock`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :DiseaseHistory, :PersonalHistory, :DrugHistory, :TreatmentRecord, :ParagraphBlock, :Page

        def initialize(diseasehistory=nil, personalhistory=nil, drughistory=nil, treatmentrecord=nil, paragraphblock=nil, page=nil)
          @DiseaseHistory = diseasehistory
          @PersonalHistory = personalhistory
          @DrugHistory = drughistory
          @TreatmentRecord = treatmentrecord
          @ParagraphBlock = paragraphblock
          @Page = page
        end

        def deserialize(params)
          unless params['DiseaseHistory'].nil?
            @DiseaseHistory = DiseaseHistoryBlock.new
            @DiseaseHistory.deserialize(params['DiseaseHistory'])
          end
          unless params['PersonalHistory'].nil?
            @PersonalHistory = PersonalHistoryBlock.new
            @PersonalHistory.deserialize(params['PersonalHistory'])
          end
          unless params['DrugHistory'].nil?
            @DrugHistory = DrugHistoryBlock.new
            @DrugHistory.deserialize(params['DrugHistory'])
          end
          unless params['TreatmentRecord'].nil?
            @TreatmentRecord = TreatmentRecordBlock.new
            @TreatmentRecord.deserialize(params['TreatmentRecord'])
          end
          unless params['ParagraphBlock'].nil?
            @ParagraphBlock = ParagraphBlock.new
            @ParagraphBlock.deserialize(params['ParagraphBlock'])
          end
          @Page = params['Page']
        end
      end

      # 疾病史
      class DiseaseHistoryBlock < TencentCloud::Common::AbstractModel
        # @param MainDiseaseHistory: 主要病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDiseaseHistory: :class:`Tencentcloud::Mrs.v20200910.models.MainDiseaseHistoryBlock`
        # @param AllergyHistory: 过敏史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllergyHistory: :class:`Tencentcloud::Mrs.v20200910.models.MainDiseaseHistoryBlock`
        # @param InfectHistory: 注射史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InfectHistory: :class:`Tencentcloud::Mrs.v20200910.models.MainDiseaseHistoryBlock`
        # @param SurgeryHistory: 手术史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryHistory: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryHistoryBlock`
        # @param TransfusionHistory: 输血史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransfusionHistory: :class:`Tencentcloud::Mrs.v20200910.models.TransfusionHistoryBlock`

        attr_accessor :MainDiseaseHistory, :AllergyHistory, :InfectHistory, :SurgeryHistory, :TransfusionHistory

        def initialize(maindiseasehistory=nil, allergyhistory=nil, infecthistory=nil, surgeryhistory=nil, transfusionhistory=nil)
          @MainDiseaseHistory = maindiseasehistory
          @AllergyHistory = allergyhistory
          @InfectHistory = infecthistory
          @SurgeryHistory = surgeryhistory
          @TransfusionHistory = transfusionhistory
        end

        def deserialize(params)
          unless params['MainDiseaseHistory'].nil?
            @MainDiseaseHistory = MainDiseaseHistoryBlock.new
            @MainDiseaseHistory.deserialize(params['MainDiseaseHistory'])
          end
          unless params['AllergyHistory'].nil?
            @AllergyHistory = MainDiseaseHistoryBlock.new
            @AllergyHistory.deserialize(params['AllergyHistory'])
          end
          unless params['InfectHistory'].nil?
            @InfectHistory = MainDiseaseHistoryBlock.new
            @InfectHistory.deserialize(params['InfectHistory'])
          end
          unless params['SurgeryHistory'].nil?
            @SurgeryHistory = SurgeryHistoryBlock.new
            @SurgeryHistory.deserialize(params['SurgeryHistory'])
          end
          unless params['TransfusionHistory'].nil?
            @TransfusionHistory = TransfusionHistoryBlock.new
            @TransfusionHistory.deserialize(params['TransfusionHistory'])
          end
        end
      end

      # 疾病史
      class DiseaseMedicalHistory < TencentCloud::Common::AbstractModel
        # @param MainDiseaseHistory: 主病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDiseaseHistory: String
        # @param AllergyHistory: 过敏史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllergyHistory: String
        # @param InfectHistory: 传染疾病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InfectHistory: String
        # @param OperationHistory: 手术史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationHistory: String
        # @param TransfusionHistory: 输血史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransfusionHistory: String

        attr_accessor :MainDiseaseHistory, :AllergyHistory, :InfectHistory, :OperationHistory, :TransfusionHistory

        def initialize(maindiseasehistory=nil, allergyhistory=nil, infecthistory=nil, operationhistory=nil, transfusionhistory=nil)
          @MainDiseaseHistory = maindiseasehistory
          @AllergyHistory = allergyhistory
          @InfectHistory = infecthistory
          @OperationHistory = operationhistory
          @TransfusionHistory = transfusionhistory
        end

        def deserialize(params)
          @MainDiseaseHistory = params['MainDiseaseHistory']
          @AllergyHistory = params['AllergyHistory']
          @InfectHistory = params['InfectHistory']
          @OperationHistory = params['OperationHistory']
          @TransfusionHistory = params['TransfusionHistory']
        end
      end

      # 现病史
      class DiseasePresentBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Norm: 归一化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String

        attr_accessor :Name, :Src, :Value, :Norm

        def initialize(name=nil, src=nil, value=nil, norm=nil)
          @Name = name
          @Src = src
          @Value = value
          @Norm = norm
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          @Norm = params['Norm']
        end
      end

      # 药物用法用量
      class DosageBlock < TencentCloud::Common::AbstractModel
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param SingleMeasurement: 单次计量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SingleMeasurement: String
        # @param Frequency: 频次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Frequency: String
        # @param DrugDeliveryRoute: 给药途径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrugDeliveryRoute: String

        attr_accessor :Value, :SingleMeasurement, :Frequency, :DrugDeliveryRoute

        def initialize(value=nil, singlemeasurement=nil, frequency=nil, drugdeliveryroute=nil)
          @Value = value
          @SingleMeasurement = singlemeasurement
          @Frequency = frequency
          @DrugDeliveryRoute = drugdeliveryroute
        end

        def deserialize(params)
          @Value = params['Value']
          @SingleMeasurement = params['SingleMeasurement']
          @Frequency = params['Frequency']
          @DrugDeliveryRoute = params['DrugDeliveryRoute']
        end
      end

      # 药物史
      class DrugHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 药品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param DrugList: 药物列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrugList: Array
        # @param Value: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :DrugList, :Value

        def initialize(name=nil, src=nil, druglist=nil, value=nil)
          @Name = name
          @Src = src
          @DrugList = druglist
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          unless params['DrugList'].nil?
            @DrugList = []
            params['DrugList'].each do |i|
              druglistblock_tmp = DrugListBlock.new
              druglistblock_tmp.deserialize(i)
              @DrugList << druglistblock_tmp
            end
          end
          @Value = params['Value']
        end
      end

      # DrugInstructionObject请求参数结构体
      class DrugInstructionObjectRequest < TencentCloud::Common::AbstractModel
        # @param PdfInfo: 药品说明书PDF文件信息, 目前只支持传PDF文件的Base64编码字符(PDF文件不能超过10MB，如果超过建议先压缩PDF，再转成base64).
        # @type PdfInfo: :class:`Tencentcloud::Mrs.v20200910.models.PdfInfo`

        attr_accessor :PdfInfo

        def initialize(pdfinfo=nil)
          @PdfInfo = pdfinfo
        end

        def deserialize(params)
          unless params['PdfInfo'].nil?
            @PdfInfo = PdfInfo.new
            @PdfInfo.deserialize(params['PdfInfo'])
          end
        end
      end

      # DrugInstructionObject返回参数结构体
      class DrugInstructionObjectResponse < TencentCloud::Common::AbstractModel
        # @param ChemicalProductInfo: 药品说明书消息定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChemicalProductInfo: :class:`Tencentcloud::Mrs.v20200910.models.ChemicalProductInfo`
        # @param BiologicalProductInfo: 预防用生物制品说明书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BiologicalProductInfo: :class:`Tencentcloud::Mrs.v20200910.models.BiologicalProductInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChemicalProductInfo, :BiologicalProductInfo, :RequestId

        def initialize(chemicalproductinfo=nil, biologicalproductinfo=nil, requestid=nil)
          @ChemicalProductInfo = chemicalproductinfo
          @BiologicalProductInfo = biologicalproductinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ChemicalProductInfo'].nil?
            @ChemicalProductInfo = ChemicalProductInfo.new
            @ChemicalProductInfo.deserialize(params['ChemicalProductInfo'])
          end
          unless params['BiologicalProductInfo'].nil?
            @BiologicalProductInfo = BiologicalProductInfo.new
            @BiologicalProductInfo.deserialize(params['BiologicalProductInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 药物史
      class DrugListBlock < TencentCloud::Common::AbstractModel
        # @param CommonName: 通用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonName: String
        # @param TradeName: 商品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeName: String
        # @param Dosage: 用法用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dosage: :class:`Tencentcloud::Mrs.v20200910.models.DosageBlock`
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :CommonName, :TradeName, :Dosage, :Value

        def initialize(commonname=nil, tradename=nil, dosage=nil, value=nil)
          @CommonName = commonname
          @TradeName = tradename
          @Dosage = dosage
          @Value = value
        end

        def deserialize(params)
          @CommonName = params['CommonName']
          @TradeName = params['TradeName']
          unless params['Dosage'].nil?
            @Dosage = DosageBlock.new
            @Dosage.deserialize(params['Dosage'])
          end
          @Value = params['Value']
        end
      end

      # 心电图详情
      class EcgDescription < TencentCloud::Common::AbstractModel
        # @param HeartRate: 心率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeartRate: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param AuricularRate: 心房率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuricularRate: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param VentricularRate: 心室率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VentricularRate: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param Rhythm: 节律
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rhythm: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param PDuration: P波时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PDuration: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param QrsDuration: QRS时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QrsDuration: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param QrsAxis: QRS电轴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QrsAxis: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param PRInterval: P-R间期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PRInterval: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param PPInterval: P-P间期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PPInterval: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param RRInterval: R-R间期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RRInterval: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param PJInterval: P-J间期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PJInterval: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param QTInterval: Q-T间期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QTInterval: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param QTCInterval: qt/qtc间期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QTCInterval: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param Rv5SV1Amplitude: RV5/SV1振幅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rv5SV1Amplitude: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param Rv5AddSV1Amplitude: RV5+SV1振幅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rv5AddSV1Amplitude: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param PRTAxis: PRT电轴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PRTAxis: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param Rv5Amplitude: RV5振幅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rv5Amplitude: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param SV1Amplitude: SV1振幅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SV1Amplitude: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param RV6SV2: RV6/SV2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RV6SV2: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`
        # @param PQRSTAxis: P/QRS/T电轴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PQRSTAxis: :class:`Tencentcloud::Mrs.v20200910.models.EcgItem`

        attr_accessor :HeartRate, :AuricularRate, :VentricularRate, :Rhythm, :PDuration, :QrsDuration, :QrsAxis, :PRInterval, :PPInterval, :RRInterval, :PJInterval, :QTInterval, :QTCInterval, :Rv5SV1Amplitude, :Rv5AddSV1Amplitude, :PRTAxis, :Rv5Amplitude, :SV1Amplitude, :RV6SV2, :PQRSTAxis

        def initialize(heartrate=nil, auricularrate=nil, ventricularrate=nil, rhythm=nil, pduration=nil, qrsduration=nil, qrsaxis=nil, printerval=nil, ppinterval=nil, rrinterval=nil, pjinterval=nil, qtinterval=nil, qtcinterval=nil, rv5sv1amplitude=nil, rv5addsv1amplitude=nil, prtaxis=nil, rv5amplitude=nil, sv1amplitude=nil, rv6sv2=nil, pqrstaxis=nil)
          @HeartRate = heartrate
          @AuricularRate = auricularrate
          @VentricularRate = ventricularrate
          @Rhythm = rhythm
          @PDuration = pduration
          @QrsDuration = qrsduration
          @QrsAxis = qrsaxis
          @PRInterval = printerval
          @PPInterval = ppinterval
          @RRInterval = rrinterval
          @PJInterval = pjinterval
          @QTInterval = qtinterval
          @QTCInterval = qtcinterval
          @Rv5SV1Amplitude = rv5sv1amplitude
          @Rv5AddSV1Amplitude = rv5addsv1amplitude
          @PRTAxis = prtaxis
          @Rv5Amplitude = rv5amplitude
          @SV1Amplitude = sv1amplitude
          @RV6SV2 = rv6sv2
          @PQRSTAxis = pqrstaxis
        end

        def deserialize(params)
          unless params['HeartRate'].nil?
            @HeartRate = EcgItem.new
            @HeartRate.deserialize(params['HeartRate'])
          end
          unless params['AuricularRate'].nil?
            @AuricularRate = EcgItem.new
            @AuricularRate.deserialize(params['AuricularRate'])
          end
          unless params['VentricularRate'].nil?
            @VentricularRate = EcgItem.new
            @VentricularRate.deserialize(params['VentricularRate'])
          end
          unless params['Rhythm'].nil?
            @Rhythm = EcgItem.new
            @Rhythm.deserialize(params['Rhythm'])
          end
          unless params['PDuration'].nil?
            @PDuration = EcgItem.new
            @PDuration.deserialize(params['PDuration'])
          end
          unless params['QrsDuration'].nil?
            @QrsDuration = EcgItem.new
            @QrsDuration.deserialize(params['QrsDuration'])
          end
          unless params['QrsAxis'].nil?
            @QrsAxis = EcgItem.new
            @QrsAxis.deserialize(params['QrsAxis'])
          end
          unless params['PRInterval'].nil?
            @PRInterval = EcgItem.new
            @PRInterval.deserialize(params['PRInterval'])
          end
          unless params['PPInterval'].nil?
            @PPInterval = EcgItem.new
            @PPInterval.deserialize(params['PPInterval'])
          end
          unless params['RRInterval'].nil?
            @RRInterval = EcgItem.new
            @RRInterval.deserialize(params['RRInterval'])
          end
          unless params['PJInterval'].nil?
            @PJInterval = EcgItem.new
            @PJInterval.deserialize(params['PJInterval'])
          end
          unless params['QTInterval'].nil?
            @QTInterval = EcgItem.new
            @QTInterval.deserialize(params['QTInterval'])
          end
          unless params['QTCInterval'].nil?
            @QTCInterval = EcgItem.new
            @QTCInterval.deserialize(params['QTCInterval'])
          end
          unless params['Rv5SV1Amplitude'].nil?
            @Rv5SV1Amplitude = EcgItem.new
            @Rv5SV1Amplitude.deserialize(params['Rv5SV1Amplitude'])
          end
          unless params['Rv5AddSV1Amplitude'].nil?
            @Rv5AddSV1Amplitude = EcgItem.new
            @Rv5AddSV1Amplitude.deserialize(params['Rv5AddSV1Amplitude'])
          end
          unless params['PRTAxis'].nil?
            @PRTAxis = EcgItem.new
            @PRTAxis.deserialize(params['PRTAxis'])
          end
          unless params['Rv5Amplitude'].nil?
            @Rv5Amplitude = EcgItem.new
            @Rv5Amplitude.deserialize(params['Rv5Amplitude'])
          end
          unless params['SV1Amplitude'].nil?
            @SV1Amplitude = EcgItem.new
            @SV1Amplitude.deserialize(params['SV1Amplitude'])
          end
          unless params['RV6SV2'].nil?
            @RV6SV2 = EcgItem.new
            @RV6SV2.deserialize(params['RV6SV2'])
          end
          unless params['PQRSTAxis'].nil?
            @PQRSTAxis = EcgItem.new
            @PQRSTAxis.deserialize(params['PQRSTAxis'])
          end
        end
      end

      # 心电图诊断
      class EcgDiagnosis < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

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

      # 心电图指标项
      class EcgItem < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :Name, :Value, :Unit, :Src

        def initialize(name=nil, value=nil, unit=nil, src=nil)
          @Name = name
          @Value = value
          @Unit = unit
          @Src = src
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Unit = params['Unit']
          @Src = params['Src']
        end
      end

      # 弹性质地
      class Elastic < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Score: 分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Index, :Score, :Src, :Value, :Name

        def initialize(index=nil, score=nil, src=nil, value=nil, name=nil)
          @Index = index
          @Score = score
          @Src = src
          @Value = value
          @Name = name
        end

        def deserialize(params)
          @Index = params['Index']
          @Score = params['Score']
          @Src = params['Src']
          @Value = params['Value']
          @Name = params['Name']
        end
      end

      # 心电图
      class Electrocardiogram < TencentCloud::Common::AbstractModel
        # @param EcgDescription: 心电图详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EcgDescription: :class:`Tencentcloud::Mrs.v20200910.models.EcgDescription`
        # @param EcgDiagnosis: 心电图诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EcgDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.EcgDiagnosis`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :EcgDescription, :EcgDiagnosis, :Page

        def initialize(ecgdescription=nil, ecgdiagnosis=nil, page=nil)
          @EcgDescription = ecgdescription
          @EcgDiagnosis = ecgdiagnosis
          @Page = page
        end

        def deserialize(params)
          unless params['EcgDescription'].nil?
            @EcgDescription = EcgDescription.new
            @EcgDescription.deserialize(params['EcgDescription'])
          end
          unless params['EcgDiagnosis'].nil?
            @EcgDiagnosis = EcgDiagnosis.new
            @EcgDiagnosis.deserialize(params['EcgDiagnosis'])
          end
          @Page = params['Page']
        end
      end

      # 内窥镜报告
      class Endoscopy < TencentCloud::Common::AbstractModel
        # @param BiopsyPart: 活检部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BiopsyPart: :class:`Tencentcloud::Mrs.v20200910.models.BiopsyPart`
        # @param Desc: 可见描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: :class:`Tencentcloud::Mrs.v20200910.models.EndoscopyDesc`
        # @param Summary: 结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: :class:`Tencentcloud::Mrs.v20200910.models.Summary`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :BiopsyPart, :Desc, :Summary, :Page

        def initialize(biopsypart=nil, desc=nil, summary=nil, page=nil)
          @BiopsyPart = biopsypart
          @Desc = desc
          @Summary = summary
          @Page = page
        end

        def deserialize(params)
          unless params['BiopsyPart'].nil?
            @BiopsyPart = BiopsyPart.new
            @BiopsyPart.deserialize(params['BiopsyPart'])
          end
          unless params['Desc'].nil?
            @Desc = EndoscopyDesc.new
            @Desc.deserialize(params['Desc'])
          end
          unless params['Summary'].nil?
            @Summary = Summary.new
            @Summary.deserialize(params['Summary'])
          end
          @Page = params['Page']
        end
      end

      # 内窥镜描述
      class EndoscopyDesc < TencentCloud::Common::AbstractModel
        # @param Text: 描述内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Organ: 器官
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Organ: Array
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Text, :Organ, :Coords

        def initialize(text=nil, organ=nil, coords=nil)
          @Text = text
          @Organ = organ
          @Coords = coords
        end

        def deserialize(params)
          @Text = params['Text']
          unless params['Organ'].nil?
            @Organ = []
            params['Organ'].each do |i|
              endoscopyorgan_tmp = EndoscopyOrgan.new
              endoscopyorgan_tmp.deserialize(i)
              @Organ << endoscopyorgan_tmp
            end
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 内窥部位
      class EndoscopyOrgan < TencentCloud::Common::AbstractModel
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param PartAlias: 部位别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartAlias: String
        # @param SymDescList: 症状描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymDescList: Array
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Part, :Index, :Src, :PartAlias, :SymDescList, :Coords

        def initialize(part=nil, index=nil, src=nil, partalias=nil, symdesclist=nil, coords=nil)
          @Part = part
          @Index = index
          @Src = src
          @PartAlias = partalias
          @SymDescList = symdesclist
          @Coords = coords
        end

        def deserialize(params)
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          @Index = params['Index']
          @Src = params['Src']
          @PartAlias = params['PartAlias']
          unless params['SymDescList'].nil?
            @SymDescList = []
            params['SymDescList'].each do |i|
              blockinfo_tmp = BlockInfo.new
              blockinfo_tmp.deserialize(i)
              @SymDescList << blockinfo_tmp
            end
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 体检结论
      class Exame < TencentCloud::Common::AbstractModel
        # @param OverView: 结论段落
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverView: Array
        # @param Abnormality: 异常与建议段落
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Abnormality: Array

        attr_accessor :OverView, :Abnormality

        def initialize(overview=nil, abnormality=nil)
          @OverView = overview
          @Abnormality = abnormality
        end

        def deserialize(params)
          unless params['OverView'].nil?
            @OverView = []
            params['OverView'].each do |i|
              resultinfo_tmp = ResultInfo.new
              resultinfo_tmp.deserialize(i)
              @OverView << resultinfo_tmp
            end
          end
          unless params['Abnormality'].nil?
            @Abnormality = []
            params['Abnormality'].each do |i|
              resultinfo_tmp = ResultInfo.new
              resultinfo_tmp.deserialize(i)
              @Abnormality << resultinfo_tmp
            end
          end
        end
      end

      # 眼科子结构
      class EyeChildItem < TencentCloud::Common::AbstractModel
        # @param Sph: 球镜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sph: Array
        # @param Cyl: 柱镜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cyl: Array
        # @param Ax: 轴位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ax: Array
        # @param Se: 等效球镜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Se: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem2`

        attr_accessor :Sph, :Cyl, :Ax, :Se

        def initialize(sph=nil, cyl=nil, ax=nil, se=nil)
          @Sph = sph
          @Cyl = cyl
          @Ax = ax
          @Se = se
        end

        def deserialize(params)
          unless params['Sph'].nil?
            @Sph = []
            params['Sph'].each do |i|
              baseitem3_tmp = BaseItem3.new
              baseitem3_tmp.deserialize(i)
              @Sph << baseitem3_tmp
            end
          end
          unless params['Cyl'].nil?
            @Cyl = []
            params['Cyl'].each do |i|
              baseitem3_tmp = BaseItem3.new
              baseitem3_tmp.deserialize(i)
              @Cyl << baseitem3_tmp
            end
          end
          unless params['Ax'].nil?
            @Ax = []
            params['Ax'].each do |i|
              baseitem3_tmp = BaseItem3.new
              baseitem3_tmp.deserialize(i)
              @Ax << baseitem3_tmp
            end
          end
          unless params['Se'].nil?
            @Se = BaseItem2.new
            @Se.deserialize(params['Se'])
          end
        end
      end

      # 眼科结构体
      class EyeItem < TencentCloud::Common::AbstractModel
        # @param Left: 左眼
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Left: :class:`Tencentcloud::Mrs.v20200910.models.EyeChildItem`
        # @param Right: 右眼
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Right: :class:`Tencentcloud::Mrs.v20200910.models.EyeChildItem`
        # @param Pd: 瞳距
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pd: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem2`

        attr_accessor :Left, :Right, :Pd

        def initialize(left=nil, right=nil, pd=nil)
          @Left = left
          @Right = right
          @Pd = pd
        end

        def deserialize(params)
          unless params['Left'].nil?
            @Left = EyeChildItem.new
            @Left.deserialize(params['Left'])
          end
          unless params['Right'].nil?
            @Right = EyeChildItem.new
            @Right.deserialize(params['Right'])
          end
          unless params['Pd'].nil?
            @Pd = BaseItem2.new
            @Pd.deserialize(params['Pd'])
          end
        end
      end

      # 眼科报告结构体
      class EyeItemsInfo < TencentCloud::Common::AbstractModel
        # @param EyeItems: 眼科报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EyeItems: :class:`Tencentcloud::Mrs.v20200910.models.EyeItem`
        # @param Version: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :EyeItems, :Version, :Page

        def initialize(eyeitems=nil, version=nil, page=nil)
          @EyeItems = eyeitems
          @Version = version
          @Page = page
        end

        def deserialize(params)
          unless params['EyeItems'].nil?
            @EyeItems = EyeItem.new
            @EyeItems.deserialize(params['EyeItems'])
          end
          @Version = params['Version']
          @Page = params['Page']
        end
      end

      # 家族史
      class FamilyHistoryBlock < TencentCloud::Common::AbstractModel
        # @param RelativeHistory: 家庭成员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeHistory: :class:`Tencentcloud::Mrs.v20200910.models.RelativeHistoryBlock`
        # @param RelativeCancerHistory: 家族肿瘤史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeCancerHistory: :class:`Tencentcloud::Mrs.v20200910.models.RelativeCancerHistoryBlock`
        # @param GeneticHistory: 家族遗传史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeneticHistory: :class:`Tencentcloud::Mrs.v20200910.models.GeneticHistoryBlock`

        attr_accessor :RelativeHistory, :RelativeCancerHistory, :GeneticHistory

        def initialize(relativehistory=nil, relativecancerhistory=nil, genetichistory=nil)
          @RelativeHistory = relativehistory
          @RelativeCancerHistory = relativecancerhistory
          @GeneticHistory = genetichistory
        end

        def deserialize(params)
          unless params['RelativeHistory'].nil?
            @RelativeHistory = RelativeHistoryBlock.new
            @RelativeHistory.deserialize(params['RelativeHistory'])
          end
          unless params['RelativeCancerHistory'].nil?
            @RelativeCancerHistory = RelativeCancerHistoryBlock.new
            @RelativeCancerHistory.deserialize(params['RelativeCancerHistory'])
          end
          unless params['GeneticHistory'].nil?
            @GeneticHistory = GeneticHistoryBlock.new
            @GeneticHistory.deserialize(params['GeneticHistory'])
          end
        end
      end

      # 家族疾病史
      class FamilyMedicalHistory < TencentCloud::Common::AbstractModel
        # @param RelativeHistory: 家族成员史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeHistory: String
        # @param RelativeCancerHistory: 家族肿瘤史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeCancerHistory: String
        # @param GeneticHistory: 家族遗传史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeneticHistory: String

        attr_accessor :RelativeHistory, :RelativeCancerHistory, :GeneticHistory

        def initialize(relativehistory=nil, relativecancerhistory=nil, genetichistory=nil)
          @RelativeHistory = relativehistory
          @RelativeCancerHistory = relativecancerhistory
          @GeneticHistory = genetichistory
        end

        def deserialize(params)
          @RelativeHistory = params['RelativeHistory']
          @RelativeCancerHistory = params['RelativeCancerHistory']
          @GeneticHistory = params['GeneticHistory']
        end
      end

      # 婚育史
      class FertilityHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param PregCount: 妊娠次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PregCount: String
        # @param ProduCount: 生产次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProduCount: String

        attr_accessor :Name, :Src, :State, :Norm, :Value, :PregCount, :ProduCount

        def initialize(name=nil, src=nil, state=nil, norm=nil, value=nil, pregcount=nil, producount=nil)
          @Name = name
          @Src = src
          @State = state
          @Norm = norm
          @Value = value
          @PregCount = pregcount
          @ProduCount = producount
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @State = params['State']
          @Norm = params['Norm']
          @Value = params['Value']
          @PregCount = params['PregCount']
          @ProduCount = params['ProduCount']
        end
      end

      # 胎儿数据结构
      class Fetus < TencentCloud::Common::AbstractModel
        # @param BPD: 双顶径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BPD: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param APTD: 腹前后径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APTD: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param TTD: 腹左右径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TTD: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param CRL: 头臀径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CRL: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param HC: 头围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HC: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param AC: 腹围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AC: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param FL: 股骨长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FL: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param HL: 肱骨长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HL: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Weight: 胎儿重量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param NT: 颈项透明层
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NT: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param UmbilicalCord: 脐动脉血流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UmbilicalCord: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param WaterDeep: 羊水最大深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaterDeep: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param WaterQuad: 羊水四象限测量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaterQuad: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param AFI: 羊水指数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AFI: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param FHR: 胎心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FHR: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Movement: 胎动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Movement: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Num: 胎数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Num: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Position: 胎位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Alive: 是否活胎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alive: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param PlacentaLocation: 胎盘位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlacentaLocation: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param PlacentaThickness: 胎盘厚度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlacentaThickness: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param PlacentaGrade: 胎盘成熟度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlacentaGrade: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param GestationTime: 妊娠时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GestationTime: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param GestationPeriod: 妊娠周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GestationPeriod: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param AroundNeck: 绕颈
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AroundNeck: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Sym: 病变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sym: Array
        # @param Src: 原文内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :BPD, :APTD, :TTD, :CRL, :HC, :AC, :FL, :HL, :Weight, :NT, :UmbilicalCord, :WaterDeep, :WaterQuad, :AFI, :FHR, :Movement, :Num, :Position, :Alive, :PlacentaLocation, :PlacentaThickness, :PlacentaGrade, :GestationTime, :GestationPeriod, :AroundNeck, :Sym, :Src

        def initialize(bpd=nil, aptd=nil, ttd=nil, crl=nil, hc=nil, ac=nil, fl=nil, hl=nil, weight=nil, nt=nil, umbilicalcord=nil, waterdeep=nil, waterquad=nil, afi=nil, fhr=nil, movement=nil, num=nil, position=nil, alive=nil, placentalocation=nil, placentathickness=nil, placentagrade=nil, gestationtime=nil, gestationperiod=nil, aroundneck=nil, sym=nil, src=nil)
          @BPD = bpd
          @APTD = aptd
          @TTD = ttd
          @CRL = crl
          @HC = hc
          @AC = ac
          @FL = fl
          @HL = hl
          @Weight = weight
          @NT = nt
          @UmbilicalCord = umbilicalcord
          @WaterDeep = waterdeep
          @WaterQuad = waterquad
          @AFI = afi
          @FHR = fhr
          @Movement = movement
          @Num = num
          @Position = position
          @Alive = alive
          @PlacentaLocation = placentalocation
          @PlacentaThickness = placentathickness
          @PlacentaGrade = placentagrade
          @GestationTime = gestationtime
          @GestationPeriod = gestationperiod
          @AroundNeck = aroundneck
          @Sym = sym
          @Src = src
        end

        def deserialize(params)
          unless params['BPD'].nil?
            @BPD = FieldInfo.new
            @BPD.deserialize(params['BPD'])
          end
          unless params['APTD'].nil?
            @APTD = FieldInfo.new
            @APTD.deserialize(params['APTD'])
          end
          unless params['TTD'].nil?
            @TTD = FieldInfo.new
            @TTD.deserialize(params['TTD'])
          end
          unless params['CRL'].nil?
            @CRL = FieldInfo.new
            @CRL.deserialize(params['CRL'])
          end
          unless params['HC'].nil?
            @HC = FieldInfo.new
            @HC.deserialize(params['HC'])
          end
          unless params['AC'].nil?
            @AC = FieldInfo.new
            @AC.deserialize(params['AC'])
          end
          unless params['FL'].nil?
            @FL = FieldInfo.new
            @FL.deserialize(params['FL'])
          end
          unless params['HL'].nil?
            @HL = FieldInfo.new
            @HL.deserialize(params['HL'])
          end
          unless params['Weight'].nil?
            @Weight = FieldInfo.new
            @Weight.deserialize(params['Weight'])
          end
          unless params['NT'].nil?
            @NT = FieldInfo.new
            @NT.deserialize(params['NT'])
          end
          unless params['UmbilicalCord'].nil?
            @UmbilicalCord = FieldInfo.new
            @UmbilicalCord.deserialize(params['UmbilicalCord'])
          end
          unless params['WaterDeep'].nil?
            @WaterDeep = FieldInfo.new
            @WaterDeep.deserialize(params['WaterDeep'])
          end
          unless params['WaterQuad'].nil?
            @WaterQuad = FieldInfo.new
            @WaterQuad.deserialize(params['WaterQuad'])
          end
          unless params['AFI'].nil?
            @AFI = FieldInfo.new
            @AFI.deserialize(params['AFI'])
          end
          unless params['FHR'].nil?
            @FHR = FieldInfo.new
            @FHR.deserialize(params['FHR'])
          end
          unless params['Movement'].nil?
            @Movement = FieldInfo.new
            @Movement.deserialize(params['Movement'])
          end
          unless params['Num'].nil?
            @Num = FieldInfo.new
            @Num.deserialize(params['Num'])
          end
          unless params['Position'].nil?
            @Position = FieldInfo.new
            @Position.deserialize(params['Position'])
          end
          unless params['Alive'].nil?
            @Alive = FieldInfo.new
            @Alive.deserialize(params['Alive'])
          end
          unless params['PlacentaLocation'].nil?
            @PlacentaLocation = FieldInfo.new
            @PlacentaLocation.deserialize(params['PlacentaLocation'])
          end
          unless params['PlacentaThickness'].nil?
            @PlacentaThickness = FieldInfo.new
            @PlacentaThickness.deserialize(params['PlacentaThickness'])
          end
          unless params['PlacentaGrade'].nil?
            @PlacentaGrade = FieldInfo.new
            @PlacentaGrade.deserialize(params['PlacentaGrade'])
          end
          unless params['GestationTime'].nil?
            @GestationTime = FieldInfo.new
            @GestationTime.deserialize(params['GestationTime'])
          end
          unless params['GestationPeriod'].nil?
            @GestationPeriod = FieldInfo.new
            @GestationPeriod.deserialize(params['GestationPeriod'])
          end
          unless params['AroundNeck'].nil?
            @AroundNeck = FieldInfo.new
            @AroundNeck.deserialize(params['AroundNeck'])
          end
          unless params['Sym'].nil?
            @Sym = []
            params['Sym'].each do |i|
              fieldinfo_tmp = FieldInfo.new
              fieldinfo_tmp.deserialize(i)
              @Sym << fieldinfo_tmp
            end
          end
          @Src = params['Src']
        end
      end

      # 通用块信息
      class FieldInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Nums: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nums: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :Name, :Value, :Nums, :Src

        def initialize(name=nil, value=nil, nums=nil, src=nil)
          @Name = name
          @Value = value
          @Nums = nums
          @Src = src
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Nums'].nil?
            @Nums = []
            params['Nums'].each do |i|
              numvalue_tmp = NumValue.new
              numvalue_tmp.deserialize(i)
              @Nums << numvalue_tmp
            end
          end
          @Src = params['Src']
        end
      end

      # 病案首页
      class FirstPage < TencentCloud::Common::AbstractModel
        # @param DischargeDiagnosis: 出入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeDiagnosis: Array
        # @param PathologicalDiagnosis: 病理诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param ClinicalDiagnosis: 临床诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClinicalDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param DamagePoi: 受伤中毒的外部原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DamagePoi: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfoV2`
        # @param Fp2NdItems: 病案首页第二页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fp2NdItems: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :DischargeDiagnosis, :PathologicalDiagnosis, :ClinicalDiagnosis, :DamagePoi, :Fp2NdItems, :Page

        def initialize(dischargediagnosis=nil, pathologicaldiagnosis=nil, clinicaldiagnosis=nil, damagepoi=nil, fp2nditems=nil, page=nil)
          @DischargeDiagnosis = dischargediagnosis
          @PathologicalDiagnosis = pathologicaldiagnosis
          @ClinicalDiagnosis = clinicaldiagnosis
          @DamagePoi = damagepoi
          @Fp2NdItems = fp2nditems
          @Page = page
        end

        def deserialize(params)
          unless params['DischargeDiagnosis'].nil?
            @DischargeDiagnosis = []
            params['DischargeDiagnosis'].each do |i|
              dischargediagnosis_tmp = DischargeDiagnosis.new
              dischargediagnosis_tmp.deserialize(i)
              @DischargeDiagnosis << dischargediagnosis_tmp
            end
          end
          unless params['PathologicalDiagnosis'].nil?
            @PathologicalDiagnosis = BlockInfo.new
            @PathologicalDiagnosis.deserialize(params['PathologicalDiagnosis'])
          end
          unless params['ClinicalDiagnosis'].nil?
            @ClinicalDiagnosis = BlockInfo.new
            @ClinicalDiagnosis.deserialize(params['ClinicalDiagnosis'])
          end
          unless params['DamagePoi'].nil?
            @DamagePoi = BlockInfoV2.new
            @DamagePoi.deserialize(params['DamagePoi'])
          end
          unless params['Fp2NdItems'].nil?
            @Fp2NdItems = []
            params['Fp2NdItems'].each do |i|
              fp2nditem_tmp = Fp2NdItem.new
              fp2nditem_tmp.deserialize(i)
              @Fp2NdItems << fp2nditem_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 病案首页第二页
      class Fp2NdItem < TencentCloud::Common::AbstractModel
        # @param Code: 手术编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Name: 手术名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param StartTime: 手术开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param EndTime: 手术结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Level: 手术等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Type: 手术类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param IncisionHealingGrade: 醉愈合方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncisionHealingGrade: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param AnesthesiaMethod: 麻醉方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnesthesiaMethod: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`

        attr_accessor :Code, :Name, :StartTime, :EndTime, :Level, :Type, :IncisionHealingGrade, :AnesthesiaMethod

        def initialize(code=nil, name=nil, starttime=nil, endtime=nil, level=nil, type=nil, incisionhealinggrade=nil, anesthesiamethod=nil)
          @Code = code
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @Level = level
          @Type = type
          @IncisionHealingGrade = incisionhealinggrade
          @AnesthesiaMethod = anesthesiamethod
        end

        def deserialize(params)
          unless params['Code'].nil?
            @Code = BaseItem.new
            @Code.deserialize(params['Code'])
          end
          unless params['Name'].nil?
            @Name = BaseItem.new
            @Name.deserialize(params['Name'])
          end
          unless params['StartTime'].nil?
            @StartTime = BaseItem.new
            @StartTime.deserialize(params['StartTime'])
          end
          unless params['EndTime'].nil?
            @EndTime = BaseItem.new
            @EndTime.deserialize(params['EndTime'])
          end
          unless params['Level'].nil?
            @Level = BaseItem.new
            @Level.deserialize(params['Level'])
          end
          unless params['Type'].nil?
            @Type = BaseItem.new
            @Type.deserialize(params['Type'])
          end
          unless params['IncisionHealingGrade'].nil?
            @IncisionHealingGrade = BaseItem.new
            @IncisionHealingGrade.deserialize(params['IncisionHealingGrade'])
          end
          unless params['AnesthesiaMethod'].nil?
            @AnesthesiaMethod = BaseItem.new
            @AnesthesiaMethod.deserialize(params['AnesthesiaMethod'])
          end
        end
      end

      # 体检报告-一般检测信息
      class GeneralExaminationBaseItem < TencentCloud::Common::AbstractModel
        # @param VitalSign: 生命体征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VitalSign: :class:`Tencentcloud::Mrs.v20200910.models.GeneralExaminationVitalSign`
        # @param Others: 其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: :class:`Tencentcloud::Mrs.v20200910.models.GeneralExaminationOthers`
        # @param BriefSummary: 小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.GeneralExaminationBriefSummary`

        attr_accessor :VitalSign, :Others, :BriefSummary

        def initialize(vitalsign=nil, others=nil, briefsummary=nil)
          @VitalSign = vitalsign
          @Others = others
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['VitalSign'].nil?
            @VitalSign = GeneralExaminationVitalSign.new
            @VitalSign.deserialize(params['VitalSign'])
          end
          unless params['Others'].nil?
            @Others = GeneralExaminationOthers.new
            @Others.deserialize(params['Others'])
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = GeneralExaminationBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-小结
      class GeneralExaminationBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 一般检查小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-其他项
      class GeneralExaminationOthers < TencentCloud::Common::AbstractModel
        # @param Countenance: 面容与表情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Countenance: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param MentalStatus: 精神状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MentalStatus: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param DevelopmentCondition: 发育及营养状况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevelopmentCondition: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Memory: 记忆力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Hipline: 臀围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hipline: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param WaistHipRatio: 腰臀比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaistHipRatio: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param Addiction: 生活嗜好
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Addiction: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param AbilityOfLifeADL: 生活能力评定
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbilityOfLifeADL: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Others: 一般检查其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param ChestCircumference: 胸围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChestCircumference: :class:`Tencentcloud::Mrs.v20200910.models.ChestCircumferenceItem`

        attr_accessor :Countenance, :MentalStatus, :DevelopmentCondition, :Memory, :Hipline, :WaistHipRatio, :Addiction, :AbilityOfLifeADL, :Others, :ChestCircumference

        def initialize(countenance=nil, mentalstatus=nil, developmentcondition=nil, memory=nil, hipline=nil, waisthipratio=nil, addiction=nil, abilityoflifeadl=nil, others=nil, chestcircumference=nil)
          @Countenance = countenance
          @MentalStatus = mentalstatus
          @DevelopmentCondition = developmentcondition
          @Memory = memory
          @Hipline = hipline
          @WaistHipRatio = waisthipratio
          @Addiction = addiction
          @AbilityOfLifeADL = abilityoflifeadl
          @Others = others
          @ChestCircumference = chestcircumference
        end

        def deserialize(params)
          unless params['Countenance'].nil?
            @Countenance = KeyValueItem.new
            @Countenance.deserialize(params['Countenance'])
          end
          unless params['MentalStatus'].nil?
            @MentalStatus = KeyValueItem.new
            @MentalStatus.deserialize(params['MentalStatus'])
          end
          unless params['DevelopmentCondition'].nil?
            @DevelopmentCondition = KeyValueItem.new
            @DevelopmentCondition.deserialize(params['DevelopmentCondition'])
          end
          unless params['Memory'].nil?
            @Memory = KeyValueItem.new
            @Memory.deserialize(params['Memory'])
          end
          unless params['Hipline'].nil?
            @Hipline = ValueUnitItem.new
            @Hipline.deserialize(params['Hipline'])
          end
          unless params['WaistHipRatio'].nil?
            @WaistHipRatio = ValueUnitItem.new
            @WaistHipRatio.deserialize(params['WaistHipRatio'])
          end
          unless params['Addiction'].nil?
            @Addiction = KeyValueItem.new
            @Addiction.deserialize(params['Addiction'])
          end
          unless params['AbilityOfLifeADL'].nil?
            @AbilityOfLifeADL = KeyValueItem.new
            @AbilityOfLifeADL.deserialize(params['AbilityOfLifeADL'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['ChestCircumference'].nil?
            @ChestCircumference = ChestCircumferenceItem.new
            @ChestCircumference.deserialize(params['ChestCircumference'])
          end
        end
      end

      # 生命体征
      class GeneralExaminationVitalSign < TencentCloud::Common::AbstractModel
        # @param Text: 生命体征总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param BodyTemperature: 体温
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyTemperature: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param Pulse: 脉率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pulse: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param HeartRate: 心率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeartRate: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param BreathingRate: 呼吸频率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BreathingRate: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param BodyHeight: 身高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyHeight: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param BodyWeight: 体重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyWeight: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param BodyMassIndex: 体质指数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyMassIndex: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param Waistline: 腰围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Waistline: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param BloodPressure: 血压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BloodPressure: :class:`Tencentcloud::Mrs.v20200910.models.GeneralExaminationVitalSignBloodPressure`

        attr_accessor :Text, :BodyTemperature, :Pulse, :HeartRate, :BreathingRate, :BodyHeight, :BodyWeight, :BodyMassIndex, :Waistline, :BloodPressure

        def initialize(text=nil, bodytemperature=nil, pulse=nil, heartrate=nil, breathingrate=nil, bodyheight=nil, bodyweight=nil, bodymassindex=nil, waistline=nil, bloodpressure=nil)
          @Text = text
          @BodyTemperature = bodytemperature
          @Pulse = pulse
          @HeartRate = heartrate
          @BreathingRate = breathingrate
          @BodyHeight = bodyheight
          @BodyWeight = bodyweight
          @BodyMassIndex = bodymassindex
          @Waistline = waistline
          @BloodPressure = bloodpressure
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = ValueUnitItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['BodyTemperature'].nil?
            @BodyTemperature = ValueUnitItem.new
            @BodyTemperature.deserialize(params['BodyTemperature'])
          end
          unless params['Pulse'].nil?
            @Pulse = ValueUnitItem.new
            @Pulse.deserialize(params['Pulse'])
          end
          unless params['HeartRate'].nil?
            @HeartRate = ValueUnitItem.new
            @HeartRate.deserialize(params['HeartRate'])
          end
          unless params['BreathingRate'].nil?
            @BreathingRate = ValueUnitItem.new
            @BreathingRate.deserialize(params['BreathingRate'])
          end
          unless params['BodyHeight'].nil?
            @BodyHeight = ValueUnitItem.new
            @BodyHeight.deserialize(params['BodyHeight'])
          end
          unless params['BodyWeight'].nil?
            @BodyWeight = ValueUnitItem.new
            @BodyWeight.deserialize(params['BodyWeight'])
          end
          unless params['BodyMassIndex'].nil?
            @BodyMassIndex = ValueUnitItem.new
            @BodyMassIndex.deserialize(params['BodyMassIndex'])
          end
          unless params['Waistline'].nil?
            @Waistline = ValueUnitItem.new
            @Waistline.deserialize(params['Waistline'])
          end
          unless params['BloodPressure'].nil?
            @BloodPressure = GeneralExaminationVitalSignBloodPressure.new
            @BloodPressure.deserialize(params['BloodPressure'])
          end
        end
      end

      # 血压
      class GeneralExaminationVitalSignBloodPressure < TencentCloud::Common::AbstractModel
        # @param Text: 血压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.BloodPressureItem`
        # @param SystolicDiastolicPressure: 收缩压/舒张压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystolicDiastolicPressure: Array
        # @param SystolicPressure: 收缩压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystolicPressure: Array
        # @param DiastolicPressure: 舒张压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiastolicPressure: Array

        attr_accessor :Text, :SystolicDiastolicPressure, :SystolicPressure, :DiastolicPressure

        def initialize(text=nil, systolicdiastolicpressure=nil, systolicpressure=nil, diastolicpressure=nil)
          @Text = text
          @SystolicDiastolicPressure = systolicdiastolicpressure
          @SystolicPressure = systolicpressure
          @DiastolicPressure = diastolicpressure
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = BloodPressureItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['SystolicDiastolicPressure'].nil?
            @SystolicDiastolicPressure = []
            params['SystolicDiastolicPressure'].each do |i|
              bloodpressureitem_tmp = BloodPressureItem.new
              bloodpressureitem_tmp.deserialize(i)
              @SystolicDiastolicPressure << bloodpressureitem_tmp
            end
          end
          unless params['SystolicPressure'].nil?
            @SystolicPressure = []
            params['SystolicPressure'].each do |i|
              bloodpressureitem_tmp = BloodPressureItem.new
              bloodpressureitem_tmp.deserialize(i)
              @SystolicPressure << bloodpressureitem_tmp
            end
          end
          unless params['DiastolicPressure'].nil?
            @DiastolicPressure = []
            params['DiastolicPressure'].each do |i|
              bloodpressureitem_tmp = BloodPressureItem.new
              bloodpressureitem_tmp.deserialize(i)
              @DiastolicPressure << bloodpressureitem_tmp
            end
          end
        end
      end

      # 家族遗传史
      class GeneticHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param GeneticList: 遗传列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeneticList: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :GeneticList, :Value

        def initialize(name=nil, src=nil, geneticlist=nil, value=nil)
          @Name = name
          @Src = src
          @GeneticList = geneticlist
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @GeneticList = params['GeneticList']
          @Value = params['Value']
        end
      end

      # 体检报告-妇科-子宫附件
      class GynaecologyAdnexal < TencentCloud::Common::AbstractModel
        # @param Text: 子宫附件总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科
      class GynaecologyBaseItem < TencentCloud::Common::AbstractModel
        # @param Vulva: 外阴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vulva: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyVulva`
        # @param Vagina: 阴道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vagina: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyVagina`
        # @param Cervix: 子宫颈
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cervix: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyCervix`
        # @param Uterus: 子宫
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uterus: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyUterus`
        # @param Adnexal: 子宫附件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Adnexal: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyAdnexal`
        # @param PelvicCavity: 盆腔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PelvicCavity: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyPelvicCavity`
        # @param Others: 妇科其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param MenstrualHistory: 月经史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualHistory: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyMenstrualHistory`
        # @param BriefSummary: 小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyBriefSummary`

        attr_accessor :Vulva, :Vagina, :Cervix, :Uterus, :Adnexal, :PelvicCavity, :Others, :MenstrualHistory, :BriefSummary

        def initialize(vulva=nil, vagina=nil, cervix=nil, uterus=nil, adnexal=nil, pelviccavity=nil, others=nil, menstrualhistory=nil, briefsummary=nil)
          @Vulva = vulva
          @Vagina = vagina
          @Cervix = cervix
          @Uterus = uterus
          @Adnexal = adnexal
          @PelvicCavity = pelviccavity
          @Others = others
          @MenstrualHistory = menstrualhistory
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['Vulva'].nil?
            @Vulva = GynaecologyVulva.new
            @Vulva.deserialize(params['Vulva'])
          end
          unless params['Vagina'].nil?
            @Vagina = GynaecologyVagina.new
            @Vagina.deserialize(params['Vagina'])
          end
          unless params['Cervix'].nil?
            @Cervix = GynaecologyCervix.new
            @Cervix.deserialize(params['Cervix'])
          end
          unless params['Uterus'].nil?
            @Uterus = GynaecologyUterus.new
            @Uterus.deserialize(params['Uterus'])
          end
          unless params['Adnexal'].nil?
            @Adnexal = GynaecologyAdnexal.new
            @Adnexal.deserialize(params['Adnexal'])
          end
          unless params['PelvicCavity'].nil?
            @PelvicCavity = GynaecologyPelvicCavity.new
            @PelvicCavity.deserialize(params['PelvicCavity'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['MenstrualHistory'].nil?
            @MenstrualHistory = GynaecologyMenstrualHistory.new
            @MenstrualHistory.deserialize(params['MenstrualHistory'])
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = GynaecologyBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-妇科-小结
      class GynaecologyBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科-子宫颈
      class GynaecologyCervix < TencentCloud::Common::AbstractModel
        # @param Text: 子宫颈总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科-月经史
      class GynaecologyMenstrualHistory < TencentCloud::Common::AbstractModel
        # @param Text: 妇科月经史总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科-盆腔
      class GynaecologyPelvicCavity < TencentCloud::Common::AbstractModel
        # @param Text: 盆腔总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科-子宫
      class GynaecologyUterus < TencentCloud::Common::AbstractModel
        # @param Text: 子宫总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科-阴道
      class GynaecologyVagina < TencentCloud::Common::AbstractModel
        # @param Text: 阴道总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-妇科-外阴
      class GynaecologyVulva < TencentCloud::Common::AbstractModel
        # @param Text: 外阴总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 图片处理参数
      class HandleParam < TencentCloud::Common::AbstractModel
        # @param OcrEngineType: ocr引擎
        # @type OcrEngineType: Integer
        # @param IsReturnText: 是否返回分行文本内容
        # @type IsReturnText: Boolean
        # @param RotateTheAngle: 顺时针旋转角度
        # @type RotateTheAngle: Float
        # @param AutoFitDirection: 自动适配方向,仅支持优图引擎
        # @type AutoFitDirection: Boolean
        # @param AutoOptimizeCoordinate: 坐标优化
        # @type AutoOptimizeCoordinate: Boolean
        # @param IsScale: 是否开启图片压缩，开启时imageOriginalSize必须正确填写
        # @type IsScale: Boolean
        # @param ImageOriginalSize: 原始图片大小(单位byes),用来判断该图片是否需要压缩
        # @type ImageOriginalSize: Integer
        # @param ScaleTargetSize: 采用后台默认值(2048Kb)
        # @type ScaleTargetSize: Integer

        attr_accessor :OcrEngineType, :IsReturnText, :RotateTheAngle, :AutoFitDirection, :AutoOptimizeCoordinate, :IsScale, :ImageOriginalSize, :ScaleTargetSize

        def initialize(ocrenginetype=nil, isreturntext=nil, rotatetheangle=nil, autofitdirection=nil, autooptimizecoordinate=nil, isscale=nil, imageoriginalsize=nil, scaletargetsize=nil)
          @OcrEngineType = ocrenginetype
          @IsReturnText = isreturntext
          @RotateTheAngle = rotatetheangle
          @AutoFitDirection = autofitdirection
          @AutoOptimizeCoordinate = autooptimizecoordinate
          @IsScale = isscale
          @ImageOriginalSize = imageoriginalsize
          @ScaleTargetSize = scaletargetsize
        end

        def deserialize(params)
          @OcrEngineType = params['OcrEngineType']
          @IsReturnText = params['IsReturnText']
          @RotateTheAngle = params['RotateTheAngle']
          @AutoFitDirection = params['AutoFitDirection']
          @AutoOptimizeCoordinate = params['AutoOptimizeCoordinate']
          @IsScale = params['IsScale']
          @ImageOriginalSize = params['ImageOriginalSize']
          @ScaleTargetSize = params['ScaleTargetSize']
        end
      end

      # 听力信息
      class HearingItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Item: 项目原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Location: 方位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Result: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`

        attr_accessor :Name, :Item, :Location, :Result

        def initialize(name=nil, item=nil, location=nil, result=nil)
          @Name = name
          @Item = item
          @Location = location
          @Result = result
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Item'].nil?
            @Item = PhysicalBaseItem.new
            @Item.deserialize(params['Item'])
          end
          unless params['Location'].nil?
            @Location = PhysicalBaseItem.new
            @Location.deserialize(params['Location'])
          end
          unless params['Result'].nil?
            @Result = PhysicalBaseItem.new
            @Result.deserialize(params['Result'])
          end
        end
      end

      # 组织学类
      class HistologyClass < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Index, :Src, :Value, :Coords

        def initialize(name=nil, index=nil, src=nil, value=nil, coords=nil)
          @Name = name
          @Index = index
          @Src = src
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Index = params['Index']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 组织学等级
      class HistologyLevel < TencentCloud::Common::AbstractModel
        # @param Grade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: String
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :Grade, :Index, :Src

        def initialize(grade=nil, index=nil, src=nil)
          @Grade = grade
          @Index = index
          @Src = src
        end

        def deserialize(params)
          @Grade = params['Grade']
          @Index = params['Index']
          @Src = params['Src']
        end
      end

      # 组织学类型
      class HistologyType < TencentCloud::Common::AbstractModel
        # @param Infiltration: 浸润
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Infiltration: String
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Infiltration, :Index, :Src, :Type

        def initialize(infiltration=nil, index=nil, src=nil, type=nil)
          @Infiltration = infiltration
          @Index = index
          @Src = src
          @Type = type
        end

        def deserialize(params)
          @Infiltration = params['Infiltration']
          @Index = params['Index']
          @Src = params['Src']
          @Type = params['Type']
        end
      end

      # 组织学类型
      class HistologyTypeV2 < TencentCloud::Common::AbstractModel
        # @param Infiltration: 浸润
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Infiltration: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Type: 归一化后的组织学类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Infiltration, :Index, :Src, :Type, :Name, :Coords

        def initialize(infiltration=nil, index=nil, src=nil, type=nil, name=nil, coords=nil)
          @Infiltration = infiltration
          @Index = index
          @Src = src
          @Type = type
          @Name = name
          @Coords = coords
        end

        def deserialize(params)
          @Infiltration = params['Infiltration']
          @Index = params['Index']
          @Src = params['Src']
          @Type = params['Type']
          @Name = params['Name']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 出入院信息
      class Hospitalization < TencentCloud::Common::AbstractModel
        # @param AdmissionTime: 入院时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionTime: String
        # @param DischargeTime: 出院时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeTime: String
        # @param AdmissionDays: 住院天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDays: String
        # @param AdmissionDignosis: 入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDignosis: String
        # @param AdmissionCondition: 入院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionCondition: String
        # @param DiagnosisTreatment: 诊疗经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnosisTreatment: String
        # @param DischargeDiagnosis: 出院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeDiagnosis: String
        # @param DischargeInstruction: 出院医嘱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeInstruction: String
        # @param AdmissionDiagnosis: 入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDiagnosis: String
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :AdmissionTime, :DischargeTime, :AdmissionDays, :AdmissionDignosis, :AdmissionCondition, :DiagnosisTreatment, :DischargeDiagnosis, :DischargeInstruction, :AdmissionDiagnosis, :Page
        extend Gem::Deprecate
        deprecate :AdmissionDignosis, :none, 2024, 10
        deprecate :AdmissionDignosis=, :none, 2024, 10

        def initialize(admissiontime=nil, dischargetime=nil, admissiondays=nil, admissiondignosis=nil, admissioncondition=nil, diagnosistreatment=nil, dischargediagnosis=nil, dischargeinstruction=nil, admissiondiagnosis=nil, page=nil)
          @AdmissionTime = admissiontime
          @DischargeTime = dischargetime
          @AdmissionDays = admissiondays
          @AdmissionDignosis = admissiondignosis
          @AdmissionCondition = admissioncondition
          @DiagnosisTreatment = diagnosistreatment
          @DischargeDiagnosis = dischargediagnosis
          @DischargeInstruction = dischargeinstruction
          @AdmissionDiagnosis = admissiondiagnosis
          @Page = page
        end

        def deserialize(params)
          @AdmissionTime = params['AdmissionTime']
          @DischargeTime = params['DischargeTime']
          @AdmissionDays = params['AdmissionDays']
          @AdmissionDignosis = params['AdmissionDignosis']
          @AdmissionCondition = params['AdmissionCondition']
          @DiagnosisTreatment = params['DiagnosisTreatment']
          @DischargeDiagnosis = params['DischargeDiagnosis']
          @DischargeInstruction = params['DischargeInstruction']
          @AdmissionDiagnosis = params['AdmissionDiagnosis']
          @Page = params['Page']
        end
      end

      # IHC块
      class IHCBlock < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 具体值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Mrs.v20200910.models.ValueBlock`
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Index, :Src, :Name, :Value, :Coords

        def initialize(index=nil, src=nil, name=nil, value=nil, coords=nil)
          @Index = index
          @Src = src
          @Name = name
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Index = params['Index']
          @Src = params['Src']
          @Name = params['Name']
          unless params['Value'].nil?
            @Value = ValueBlock.new
            @Value.deserialize(params['Value'])
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # Ihc信息
      class IHCInfo < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # @type Value: :class:`Tencentcloud::Mrs.v20200910.models.Value`

        attr_accessor :Index, :Src, :Name, :Value

        def initialize(index=nil, src=nil, name=nil, value=nil)
          @Index = index
          @Src = src
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Index = params['Index']
          @Src = params['Src']
          @Name = params['Name']
          unless params['Value'].nil?
            @Value = Value.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # IHC
      class IHCV2 < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Name: ihc归一化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: ihc详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Mrs.v20200910.models.Value`
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Index, :Src, :Name, :Value, :Coords

        def initialize(index=nil, src=nil, name=nil, value=nil, coords=nil)
          @Index = index
          @Src = src
          @Name = name
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Index = params['Index']
          @Src = params['Src']
          @Name = params['Name']
          unless params['Value'].nil?
            @Value = Value.new
            @Value.deserialize(params['Value'])
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 图片信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param Id: 图片id
        # @type Id: Integer
        # @param Url: 图片url(暂不支持传图片Url信息,请使用Base64字段传递图片的Base64编码)
        # @type Url: String
        # @param Base64: 图片base64编码
        # @type Base64: String

        attr_accessor :Id, :Url, :Base64

        def initialize(id=nil, url=nil, base64=nil)
          @Id = id
          @Url = url
          @Base64 = base64
        end

        def deserialize(params)
          @Id = params['Id']
          @Url = params['Url']
          @Base64 = params['Base64']
        end
      end

      # ImageMaskAsyncGetResult请求参数结构体
      class ImageMaskAsyncGetResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 异步任务ID
        # @type TaskID: String

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # ImageMaskAsyncGetResult返回参数结构体
      class ImageMaskAsyncGetResultResponse < TencentCloud::Common::AbstractModel
        # @param MaskedImage: 脱敏后图片的base64编码
        # @type MaskedImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaskedImage, :RequestId

        def initialize(maskedimage=nil, requestid=nil)
          @MaskedImage = maskedimage
          @RequestId = requestid
        end

        def deserialize(params)
          @MaskedImage = params['MaskedImage']
          @RequestId = params['RequestId']
        end
      end

      # ImageMaskAsync请求参数结构体
      class ImageMaskAsyncRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片信息,目前只支持传图片base64
        # @type Image: :class:`Tencentcloud::Mrs.v20200910.models.ImageInfo`
        # @param MaskFlag: 图片脱敏选项, 不传默认都脱敏
        # @type MaskFlag: :class:`Tencentcloud::Mrs.v20200910.models.ImageMaskFlags`

        attr_accessor :Image, :MaskFlag

        def initialize(image=nil, maskflag=nil)
          @Image = image
          @MaskFlag = maskflag
        end

        def deserialize(params)
          unless params['Image'].nil?
            @Image = ImageInfo.new
            @Image.deserialize(params['Image'])
          end
          unless params['MaskFlag'].nil?
            @MaskFlag = ImageMaskFlags.new
            @MaskFlag.deserialize(params['MaskFlag'])
          end
        end
      end

      # ImageMaskAsync返回参数结构体
      class ImageMaskAsyncResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 加密任务ID
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # 图片脱敏选项
      # 不填默认敏感信息都脱敏
      class ImageMaskFlags < TencentCloud::Common::AbstractModel
        # @param HospitalFlag: 是否对医院信息进行脱敏
        # @type HospitalFlag: Boolean
        # @param DoctorFlag: 是否对医生信息进行脱敏
        # @type DoctorFlag: Boolean
        # @param PatientFlag: 是否对患者信息进行脱敏
        # @type PatientFlag: Boolean
        # @param BarFlag: 是否对二维码信息进行脱敏
        # @type BarFlag: Boolean

        attr_accessor :HospitalFlag, :DoctorFlag, :PatientFlag, :BarFlag

        def initialize(hospitalflag=nil, doctorflag=nil, patientflag=nil, barflag=nil)
          @HospitalFlag = hospitalflag
          @DoctorFlag = doctorflag
          @PatientFlag = patientflag
          @BarFlag = barflag
        end

        def deserialize(params)
          @HospitalFlag = params['HospitalFlag']
          @DoctorFlag = params['DoctorFlag']
          @PatientFlag = params['PatientFlag']
          @BarFlag = params['BarFlag']
        end
      end

      # ImageMask请求参数结构体
      class ImageMaskRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片信息,目前只支持传图片base64
        # @type Image: :class:`Tencentcloud::Mrs.v20200910.models.ImageInfo`
        # @param MaskFlag: 图片脱敏选项, 不传默认都脱敏
        # @type MaskFlag: :class:`Tencentcloud::Mrs.v20200910.models.ImageMaskFlags`

        attr_accessor :Image, :MaskFlag

        def initialize(image=nil, maskflag=nil)
          @Image = image
          @MaskFlag = maskflag
        end

        def deserialize(params)
          unless params['Image'].nil?
            @Image = ImageInfo.new
            @Image.deserialize(params['Image'])
          end
          unless params['MaskFlag'].nil?
            @MaskFlag = ImageMaskFlags.new
            @MaskFlag.deserialize(params['MaskFlag'])
          end
        end
      end

      # ImageMask返回参数结构体
      class ImageMaskResponse < TencentCloud::Common::AbstractModel
        # @param MaskedImage: 脱敏后图片的Base64信息
        # @type MaskedImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaskedImage, :RequestId

        def initialize(maskedimage=nil, requestid=nil)
          @MaskedImage = maskedimage
          @RequestId = requestid
        end

        def deserialize(params)
          @MaskedImage = params['MaskedImage']
          @RequestId = params['RequestId']
        end
      end

      # ImageToClass请求参数结构体
      class ImageToClassRequest < TencentCloud::Common::AbstractModel
        # @param ImageInfoList: 图片列表，允许传入多张图片，支持传入图片的base64编码，暂不支持图片url
        # @type ImageInfoList: Array
        # @param HandleParam: 图片处理参数
        # @type HandleParam: :class:`Tencentcloud::Mrs.v20200910.models.HandleParam`
        # @param Type: 不填，默认为0
        # @type Type: Integer
        # @param UserType: 后付费的用户类型，新客户传1，老客户可不传或传 0。2022 年 12 月 15 新增了计费项，在此时间之前已经通过商务指定优惠价格的大客户，请不传这个字段或传 0，如果传 1 会导致以前获得的折扣价格失效。在 2022 年 12 月 15 日之后，通过商务指定优惠价格的大客户请传 1。
        # @type UserType: Integer

        attr_accessor :ImageInfoList, :HandleParam, :Type, :UserType

        def initialize(imageinfolist=nil, handleparam=nil, type=nil, usertype=nil)
          @ImageInfoList = imageinfolist
          @HandleParam = handleparam
          @Type = type
          @UserType = usertype
        end

        def deserialize(params)
          unless params['ImageInfoList'].nil?
            @ImageInfoList = []
            params['ImageInfoList'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @ImageInfoList << imageinfo_tmp
            end
          end
          unless params['HandleParam'].nil?
            @HandleParam = HandleParam.new
            @HandleParam.deserialize(params['HandleParam'])
          end
          @Type = params['Type']
          @UserType = params['UserType']
        end
      end

      # ImageToClass返回参数结构体
      class ImageToClassResponse < TencentCloud::Common::AbstractModel
        # @param TextTypeList: 分类结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextTypeList, :RequestId

        def initialize(texttypelist=nil, requestid=nil)
          @TextTypeList = texttypelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextTypeList'].nil?
            @TextTypeList = []
            params['TextTypeList'].each do |i|
              texttype_tmp = TextType.new
              texttype_tmp.deserialize(i)
              @TextTypeList << texttype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ImageToObject请求参数结构体
      class ImageToObjectRequest < TencentCloud::Common::AbstractModel
        # @param Type: 报告类型，目前支持11（检验报告），12（检查报告），15（病理报告），28（出院报告），29（入院报告），210（门诊病历），212（手术记录），218（诊断证明），363（心电图），27（内窥镜检查），215（处方单），219（免疫接种证明），301（C14呼气试验）。如果不清楚报告类型，可以使用分类引擎，该字段传0（同时IsUsedClassify字段必须为True，否则无法输出结果）
        # @type Type: Integer
        # @param IsUsedClassify: 是否使用分类引擎，当不确定报告类型时，可以使用收费的报告分类引擎服务。若该字段为 False，则 Type 字段不能为 0，否则无法输出结果。
        # 注意：当 IsUsedClassify 为True 时，表示使用收费的报告分类服务，将会产生额外的费用，具体收费标准参见 [购买指南的产品价格](https://cloud.tencent.com/document/product/1314/54264)。
        # @type IsUsedClassify: Boolean
        # @param HandleParam: 图片处理参数
        # @type HandleParam: :class:`Tencentcloud::Mrs.v20200910.models.HandleParam`
        # @param ImageInfoList: 图片列表，允许传入多张图片，目前只支持传入图片base64编码，图片url暂不支持
        # @type ImageInfoList: Array
        # @param UserType: 后付费的用户类型，新客户传1，老客户可不传或传 0。2022 年 12 月 15 新增了计费项，在此时间之前已经通过商务指定优惠价格的大客户，请不传这个字段或传 0，如果传 1 会导致以前获得的折扣价格失效。在 2022 年 12 月 15 日之后，通过商务指定优惠价格的大客户请传 1。
        # @type UserType: Integer
        # @param ReportTypeVersion: 可选。用于指定不同报告使用的结构化引擎版本，不同版本返回的JSON 数据结果不兼容。若不指定版本号，就默认用旧的版本号。
        # （1）检验报告 11，默认使用 V2，最高支持 V3。
        # （2）病理报告 15，默认使用 V1，最高支持 V2。
        # （3）入院记录29、出院记录 28、病历记录 216、病程记录 217、门诊记录 210，默认使用 V1，最高支持 V2。
        # @type ReportTypeVersion: Array
        # @param OcrInfoList: 可选。 图片OCR信息列表，每一个元素是一张图片的OCR结果。适用于不想将医疗报告图片传入腾讯云的客户，客户可对图片OCR信息中的敏感信息去除之后再传入。与 ImageInfoList 二选一，同时存在则使用OcrInfoList
        # @type OcrInfoList: Array

        attr_accessor :Type, :IsUsedClassify, :HandleParam, :ImageInfoList, :UserType, :ReportTypeVersion, :OcrInfoList

        def initialize(type=nil, isusedclassify=nil, handleparam=nil, imageinfolist=nil, usertype=nil, reporttypeversion=nil, ocrinfolist=nil)
          @Type = type
          @IsUsedClassify = isusedclassify
          @HandleParam = handleparam
          @ImageInfoList = imageinfolist
          @UserType = usertype
          @ReportTypeVersion = reporttypeversion
          @OcrInfoList = ocrinfolist
        end

        def deserialize(params)
          @Type = params['Type']
          @IsUsedClassify = params['IsUsedClassify']
          unless params['HandleParam'].nil?
            @HandleParam = HandleParam.new
            @HandleParam.deserialize(params['HandleParam'])
          end
          unless params['ImageInfoList'].nil?
            @ImageInfoList = []
            params['ImageInfoList'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @ImageInfoList << imageinfo_tmp
            end
          end
          @UserType = params['UserType']
          unless params['ReportTypeVersion'].nil?
            @ReportTypeVersion = []
            params['ReportTypeVersion'].each do |i|
              reporttypeversion_tmp = ReportTypeVersion.new
              reporttypeversion_tmp.deserialize(i)
              @ReportTypeVersion << reporttypeversion_tmp
            end
          end
          unless params['OcrInfoList'].nil?
            @OcrInfoList = []
            params['OcrInfoList'].each do |i|
              ocrinfo_tmp = OcrInfo.new
              ocrinfo_tmp.deserialize(i)
              @OcrInfoList << ocrinfo_tmp
            end
          end
        end
      end

      # ImageToObject返回参数结构体
      class ImageToObjectResponse < TencentCloud::Common::AbstractModel
        # @param Template: 报告结构化结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Template: :class:`Tencentcloud::Mrs.v20200910.models.Template`
        # @param TextTypeList: 多级分类结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :TextTypeList, :RequestId

        def initialize(template=nil, texttypelist=nil, requestid=nil)
          @Template = template
          @TextTypeList = texttypelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          unless params['TextTypeList'].nil?
            @TextTypeList = []
            params['TextTypeList'].each do |i|
              texttype_tmp = TextType.new
              texttype_tmp.deserialize(i)
              @TextTypeList << texttype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 免疫组化
      class ImmunohistochemistryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 免疫组化详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Name, :Src, :Value

        def initialize(name=nil, src=nil, value=nil)
          @Name = name
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              ihcblock_tmp = IHCBlock.new
              ihcblock_tmp.deserialize(i)
              @Value << ihcblock_tmp
            end
          end
        end
      end

      # 检验报告
      class Indicator < TencentCloud::Common::AbstractModel
        # @param Indicators: 检验指标项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indicators: Array
        # @param BlockTitle: 检验报告块标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockTitle: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Indicators, :BlockTitle, :Page

        def initialize(indicators=nil, blocktitle=nil, page=nil)
          @Indicators = indicators
          @BlockTitle = blocktitle
          @Page = page
        end

        def deserialize(params)
          unless params['Indicators'].nil?
            @Indicators = []
            params['Indicators'].each do |i|
              indicatoritem_tmp = IndicatorItem.new
              indicatoritem_tmp.deserialize(i)
              @Indicators << indicatoritem_tmp
            end
          end
          unless params['BlockTitle'].nil?
            @BlockTitle = []
            params['BlockTitle'].each do |i|
              blocktitle_tmp = BlockTitle.new
              blocktitle_tmp.deserialize(i)
              @BlockTitle << blocktitle_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 检验指标项
      class IndicatorItem < TencentCloud::Common::AbstractModel
        # @param Code: 英文缩写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Scode: 标准缩写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scode: String
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Sname: 标准名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sname: String
        # @param Result: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Range: 参考范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: String
        # @param Arrow: 上下箭头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Arrow: String
        # @param Normal: 是否正常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Normal: Boolean
        # @param ItemString: 项目原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemString: String
        # @param Id: 指标项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Coords: 指标项坐标位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: :class:`Tencentcloud::Mrs.v20200910.models.Coordinate`
        # @param InferNormal: 推测结果是否异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InferNormal: String

        attr_accessor :Code, :Scode, :Name, :Sname, :Result, :Unit, :Range, :Arrow, :Normal, :ItemString, :Id, :Coords, :InferNormal

        def initialize(code=nil, scode=nil, name=nil, sname=nil, result=nil, unit=nil, range=nil, arrow=nil, normal=nil, itemstring=nil, id=nil, coords=nil, infernormal=nil)
          @Code = code
          @Scode = scode
          @Name = name
          @Sname = sname
          @Result = result
          @Unit = unit
          @Range = range
          @Arrow = arrow
          @Normal = normal
          @ItemString = itemstring
          @Id = id
          @Coords = coords
          @InferNormal = infernormal
        end

        def deserialize(params)
          @Code = params['Code']
          @Scode = params['Scode']
          @Name = params['Name']
          @Sname = params['Sname']
          @Result = params['Result']
          @Unit = params['Unit']
          @Range = params['Range']
          @Arrow = params['Arrow']
          @Normal = params['Normal']
          @ItemString = params['ItemString']
          @Id = params['Id']
          unless params['Coords'].nil?
            @Coords = Coordinate.new
            @Coords.deserialize(params['Coords'])
          end
          @InferNormal = params['InferNormal']
        end
      end

      # 检验指标项结构v2
      class IndicatorItemV2 < TencentCloud::Common::AbstractModel
        # @param Item: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Code: 英文编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Result: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Range: 参考范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Arrow: 上下箭头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Arrow: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Method: 检测方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`
        # @param Normal: 结果是否异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Normal: Boolean
        # @param Id: ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Order: 序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: Integer
        # @param InferNormal: 推测结果是否异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InferNormal: String

        attr_accessor :Item, :Code, :Result, :Unit, :Range, :Arrow, :Method, :Normal, :Id, :Order, :InferNormal

        def initialize(item=nil, code=nil, result=nil, unit=nil, range=nil, arrow=nil, method=nil, normal=nil, id=nil, order=nil, infernormal=nil)
          @Item = item
          @Code = code
          @Result = result
          @Unit = unit
          @Range = range
          @Arrow = arrow
          @Method = method
          @Normal = normal
          @Id = id
          @Order = order
          @InferNormal = infernormal
        end

        def deserialize(params)
          unless params['Item'].nil?
            @Item = BaseItem.new
            @Item.deserialize(params['Item'])
          end
          unless params['Code'].nil?
            @Code = BaseItem.new
            @Code.deserialize(params['Code'])
          end
          unless params['Result'].nil?
            @Result = BaseItem.new
            @Result.deserialize(params['Result'])
          end
          unless params['Unit'].nil?
            @Unit = BaseItem.new
            @Unit.deserialize(params['Unit'])
          end
          unless params['Range'].nil?
            @Range = BaseItem.new
            @Range.deserialize(params['Range'])
          end
          unless params['Arrow'].nil?
            @Arrow = BaseItem.new
            @Arrow.deserialize(params['Arrow'])
          end
          unless params['Method'].nil?
            @Method = BaseItem.new
            @Method.deserialize(params['Method'])
          end
          @Normal = params['Normal']
          @Id = params['Id']
          @Order = params['Order']
          @InferNormal = params['InferNormal']
        end
      end

      # 检验报告v3
      class IndicatorV3 < TencentCloud::Common::AbstractModel
        # @param TableIndictors: 检验报告V3结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIndictors: Array
        # @param Version: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param TableIndicators: 检验报告V3结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIndicators: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :TableIndictors, :Version, :TableIndicators, :Page
        extend Gem::Deprecate
        deprecate :TableIndictors, :none, 2024, 10
        deprecate :TableIndictors=, :none, 2024, 10

        def initialize(tableindictors=nil, version=nil, tableindicators=nil, page=nil)
          @TableIndictors = tableindictors
          @Version = version
          @TableIndicators = tableindicators
          @Page = page
        end

        def deserialize(params)
          unless params['TableIndictors'].nil?
            @TableIndictors = []
            params['TableIndictors'].each do |i|
              tableindicators_tmp = TableIndicators.new
              tableindicators_tmp.deserialize(i)
              @TableIndictors << tableindicators_tmp
            end
          end
          @Version = params['Version']
          unless params['TableIndicators'].nil?
            @TableIndicators = []
            params['TableIndicators'].each do |i|
              tableindicators_tmp = TableIndicators.new
              tableindicators_tmp.deserialize(i)
              @TableIndicators << tableindicators_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 体检报告-内科-腹部
      class InternalMedicineAbdomen < TencentCloud::Common::AbstractModel
        # @param Text: 内科腹部小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Liver: 肝脏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Liver: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineAbdomenLiver`
        # @param GallBladder: 胆囊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GallBladder: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineAbdomenGallBladder`
        # @param Pancreas: 胰腺
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pancreas: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineAbdomenPancreas`
        # @param Spleen: 脾脏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spleen: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineAbdomenSpleen`
        # @param Kidney: 肾脏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kidney: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineAbdomenKidney`
        # @param Others: 腹部其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array

        attr_accessor :Text, :Liver, :GallBladder, :Pancreas, :Spleen, :Kidney, :Others

        def initialize(text=nil, liver=nil, gallbladder=nil, pancreas=nil, spleen=nil, kidney=nil, others=nil)
          @Text = text
          @Liver = liver
          @GallBladder = gallbladder
          @Pancreas = pancreas
          @Spleen = spleen
          @Kidney = kidney
          @Others = others
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['Liver'].nil?
            @Liver = InternalMedicineAbdomenLiver.new
            @Liver.deserialize(params['Liver'])
          end
          unless params['GallBladder'].nil?
            @GallBladder = InternalMedicineAbdomenGallBladder.new
            @GallBladder.deserialize(params['GallBladder'])
          end
          unless params['Pancreas'].nil?
            @Pancreas = InternalMedicineAbdomenPancreas.new
            @Pancreas.deserialize(params['Pancreas'])
          end
          unless params['Spleen'].nil?
            @Spleen = InternalMedicineAbdomenSpleen.new
            @Spleen.deserialize(params['Spleen'])
          end
          unless params['Kidney'].nil?
            @Kidney = InternalMedicineAbdomenKidney.new
            @Kidney.deserialize(params['Kidney'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
        end
      end

      # 体检报告-内科-腹部-胆囊
      class InternalMedicineAbdomenGallBladder < TencentCloud::Common::AbstractModel
        # @param Src: 胆囊总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Size: 胆囊大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Palpation: 胆囊触诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Palpation: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Percussion: 胆囊叩诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percussion: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Tenderness: 胆囊压痛
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tenderness: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Consistency: 胆囊质地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Src, :Size, :Palpation, :Percussion, :Tenderness, :Consistency

        def initialize(src=nil, size=nil, palpation=nil, percussion=nil, tenderness=nil, consistency=nil)
          @Src = src
          @Size = size
          @Palpation = palpation
          @Percussion = percussion
          @Tenderness = tenderness
          @Consistency = consistency
        end

        def deserialize(params)
          unless params['Src'].nil?
            @Src = KeyValueItem.new
            @Src.deserialize(params['Src'])
          end
          unless params['Size'].nil?
            @Size = KeyValueItem.new
            @Size.deserialize(params['Size'])
          end
          unless params['Palpation'].nil?
            @Palpation = KeyValueItem.new
            @Palpation.deserialize(params['Palpation'])
          end
          unless params['Percussion'].nil?
            @Percussion = KeyValueItem.new
            @Percussion.deserialize(params['Percussion'])
          end
          unless params['Tenderness'].nil?
            @Tenderness = KeyValueItem.new
            @Tenderness.deserialize(params['Tenderness'])
          end
          unless params['Consistency'].nil?
            @Consistency = KeyValueItem.new
            @Consistency.deserialize(params['Consistency'])
          end
        end
      end

      # 体检报告-内科-腹部-肾脏
      class InternalMedicineAbdomenKidney < TencentCloud::Common::AbstractModel
        # @param Src: 肾脏总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Size: 肾脏大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Palpation: 肾脏触诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Palpation: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Percussion: 肾脏叩诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percussion: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Tenderness: 肾脏压痛
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tenderness: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Consistency: 肾脏质地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Src, :Size, :Palpation, :Percussion, :Tenderness, :Consistency

        def initialize(src=nil, size=nil, palpation=nil, percussion=nil, tenderness=nil, consistency=nil)
          @Src = src
          @Size = size
          @Palpation = palpation
          @Percussion = percussion
          @Tenderness = tenderness
          @Consistency = consistency
        end

        def deserialize(params)
          unless params['Src'].nil?
            @Src = KeyValueItem.new
            @Src.deserialize(params['Src'])
          end
          unless params['Size'].nil?
            @Size = KeyValueItem.new
            @Size.deserialize(params['Size'])
          end
          unless params['Palpation'].nil?
            @Palpation = KeyValueItem.new
            @Palpation.deserialize(params['Palpation'])
          end
          unless params['Percussion'].nil?
            @Percussion = KeyValueItem.new
            @Percussion.deserialize(params['Percussion'])
          end
          unless params['Tenderness'].nil?
            @Tenderness = KeyValueItem.new
            @Tenderness.deserialize(params['Tenderness'])
          end
          unless params['Consistency'].nil?
            @Consistency = KeyValueItem.new
            @Consistency.deserialize(params['Consistency'])
          end
        end
      end

      # 体检报告-内科-腹部-肝脏
      class InternalMedicineAbdomenLiver < TencentCloud::Common::AbstractModel
        # @param Src: 肝脏总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Size: 肝脏大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Palpation: 肝脏触诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Palpation: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Percussion: 肝脏叩诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percussion: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Tenderness: 肝脏压痛
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tenderness: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Consistency: 肝脏质地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Src, :Size, :Palpation, :Percussion, :Tenderness, :Consistency

        def initialize(src=nil, size=nil, palpation=nil, percussion=nil, tenderness=nil, consistency=nil)
          @Src = src
          @Size = size
          @Palpation = palpation
          @Percussion = percussion
          @Tenderness = tenderness
          @Consistency = consistency
        end

        def deserialize(params)
          unless params['Src'].nil?
            @Src = KeyValueItem.new
            @Src.deserialize(params['Src'])
          end
          unless params['Size'].nil?
            @Size = KeyValueItem.new
            @Size.deserialize(params['Size'])
          end
          unless params['Palpation'].nil?
            @Palpation = KeyValueItem.new
            @Palpation.deserialize(params['Palpation'])
          end
          unless params['Percussion'].nil?
            @Percussion = KeyValueItem.new
            @Percussion.deserialize(params['Percussion'])
          end
          unless params['Tenderness'].nil?
            @Tenderness = KeyValueItem.new
            @Tenderness.deserialize(params['Tenderness'])
          end
          unless params['Consistency'].nil?
            @Consistency = KeyValueItem.new
            @Consistency.deserialize(params['Consistency'])
          end
        end
      end

      # 体检报告-内科-腹部-胰腺
      class InternalMedicineAbdomenPancreas < TencentCloud::Common::AbstractModel
        # @param Src: 胰腺总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Size: 胰腺大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Palpation: 胰腺触诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Palpation: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Percussion: 胰腺叩诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percussion: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Tenderness: 肝脏压痛
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tenderness: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Consistency: 胰腺质地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Src, :Size, :Palpation, :Percussion, :Tenderness, :Consistency

        def initialize(src=nil, size=nil, palpation=nil, percussion=nil, tenderness=nil, consistency=nil)
          @Src = src
          @Size = size
          @Palpation = palpation
          @Percussion = percussion
          @Tenderness = tenderness
          @Consistency = consistency
        end

        def deserialize(params)
          unless params['Src'].nil?
            @Src = KeyValueItem.new
            @Src.deserialize(params['Src'])
          end
          unless params['Size'].nil?
            @Size = KeyValueItem.new
            @Size.deserialize(params['Size'])
          end
          unless params['Palpation'].nil?
            @Palpation = KeyValueItem.new
            @Palpation.deserialize(params['Palpation'])
          end
          unless params['Percussion'].nil?
            @Percussion = KeyValueItem.new
            @Percussion.deserialize(params['Percussion'])
          end
          unless params['Tenderness'].nil?
            @Tenderness = KeyValueItem.new
            @Tenderness.deserialize(params['Tenderness'])
          end
          unless params['Consistency'].nil?
            @Consistency = KeyValueItem.new
            @Consistency.deserialize(params['Consistency'])
          end
        end
      end

      # 体检报告-内科-腹部-脾脏
      class InternalMedicineAbdomenSpleen < TencentCloud::Common::AbstractModel
        # @param Src: 脾脏总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Size: 脾脏大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Palpation: 脾脏触诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Palpation: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Percussion: 脾脏叩诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percussion: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Tenderness: 脾脏压痛
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tenderness: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Consistency: 脾脏质地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Src, :Size, :Palpation, :Percussion, :Tenderness, :Consistency

        def initialize(src=nil, size=nil, palpation=nil, percussion=nil, tenderness=nil, consistency=nil)
          @Src = src
          @Size = size
          @Palpation = palpation
          @Percussion = percussion
          @Tenderness = tenderness
          @Consistency = consistency
        end

        def deserialize(params)
          unless params['Src'].nil?
            @Src = KeyValueItem.new
            @Src.deserialize(params['Src'])
          end
          unless params['Size'].nil?
            @Size = KeyValueItem.new
            @Size.deserialize(params['Size'])
          end
          unless params['Palpation'].nil?
            @Palpation = KeyValueItem.new
            @Palpation.deserialize(params['Palpation'])
          end
          unless params['Percussion'].nil?
            @Percussion = KeyValueItem.new
            @Percussion.deserialize(params['Percussion'])
          end
          unless params['Tenderness'].nil?
            @Tenderness = KeyValueItem.new
            @Tenderness.deserialize(params['Tenderness'])
          end
          unless params['Consistency'].nil?
            @Consistency = KeyValueItem.new
            @Consistency.deserialize(params['Consistency'])
          end
        end
      end

      # 体检报告-内科
      class InternalMedicineBaseItem < TencentCloud::Common::AbstractModel
        # @param Abdomen: 体检报告-内科-腹部
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Abdomen: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineAbdomen`
        # @param Heart: 体检报告-内科-心脏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Heart: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineHeart`
        # @param Vessel: 体检报告-内科-血管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vessel: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineVessel`
        # @param RespiratorySystem: 体检报告-内科-呼吸系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RespiratorySystem: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineRespiratorySystem`
        # @param Others: 体检报告-内科-内科其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param BriefSummary: 体检报告-内科-小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineBriefSummary`

        attr_accessor :Abdomen, :Heart, :Vessel, :RespiratorySystem, :Others, :BriefSummary

        def initialize(abdomen=nil, heart=nil, vessel=nil, respiratorysystem=nil, others=nil, briefsummary=nil)
          @Abdomen = abdomen
          @Heart = heart
          @Vessel = vessel
          @RespiratorySystem = respiratorysystem
          @Others = others
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['Abdomen'].nil?
            @Abdomen = InternalMedicineAbdomen.new
            @Abdomen.deserialize(params['Abdomen'])
          end
          unless params['Heart'].nil?
            @Heart = InternalMedicineHeart.new
            @Heart.deserialize(params['Heart'])
          end
          unless params['Vessel'].nil?
            @Vessel = InternalMedicineVessel.new
            @Vessel.deserialize(params['Vessel'])
          end
          unless params['RespiratorySystem'].nil?
            @RespiratorySystem = InternalMedicineRespiratorySystem.new
            @RespiratorySystem.deserialize(params['RespiratorySystem'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = InternalMedicineBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-内科-内科小结
      class InternalMedicineBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 内科小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-内科-心脏
      class InternalMedicineHeart < TencentCloud::Common::AbstractModel
        # @param Text: 心脏总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param HeartRhythm: 心律
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeartRhythm: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param HeartRate: 心率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeartRate: :class:`Tencentcloud::Mrs.v20200910.models.ValueUnitItem`
        # @param HeartAuscultation: 心脏听诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeartAuscultation: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text, :HeartRhythm, :HeartRate, :HeartAuscultation

        def initialize(text=nil, heartrhythm=nil, heartrate=nil, heartauscultation=nil)
          @Text = text
          @HeartRhythm = heartrhythm
          @HeartRate = heartrate
          @HeartAuscultation = heartauscultation
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['HeartRhythm'].nil?
            @HeartRhythm = KeyValueItem.new
            @HeartRhythm.deserialize(params['HeartRhythm'])
          end
          unless params['HeartRate'].nil?
            @HeartRate = ValueUnitItem.new
            @HeartRate.deserialize(params['HeartRate'])
          end
          unless params['HeartAuscultation'].nil?
            @HeartAuscultation = KeyValueItem.new
            @HeartAuscultation.deserialize(params['HeartAuscultation'])
          end
        end
      end

      # 体检报告-内科-呼吸系统
      class InternalMedicineRespiratorySystem < TencentCloud::Common::AbstractModel
        # @param Text: 呼吸系统总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Thoracic: 胸廓
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Thoracic: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Sputum: 痰量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sputum: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param LungPercussion: 肺部叩诊
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LungPercussion: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param LungAuscultation: 肺部听诊其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LungAuscultation: Array

        attr_accessor :Text, :Thoracic, :Sputum, :LungPercussion, :LungAuscultation

        def initialize(text=nil, thoracic=nil, sputum=nil, lungpercussion=nil, lungauscultation=nil)
          @Text = text
          @Thoracic = thoracic
          @Sputum = sputum
          @LungPercussion = lungpercussion
          @LungAuscultation = lungauscultation
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['Thoracic'].nil?
            @Thoracic = KeyValueItem.new
            @Thoracic.deserialize(params['Thoracic'])
          end
          unless params['Sputum'].nil?
            @Sputum = KeyValueItem.new
            @Sputum.deserialize(params['Sputum'])
          end
          unless params['LungPercussion'].nil?
            @LungPercussion = KeyValueItem.new
            @LungPercussion.deserialize(params['LungPercussion'])
          end
          unless params['LungAuscultation'].nil?
            @LungAuscultation = []
            params['LungAuscultation'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @LungAuscultation << keyvalueitem_tmp
            end
          end
        end
      end

      # 体检报告-内科-血管
      class InternalMedicineVessel < TencentCloud::Common::AbstractModel
        # @param Text: 血管总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param VascularMurmur: 血管杂音
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VascularMurmur: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param PeripheralVessel: 外周血管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeripheralVessel: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text, :VascularMurmur, :PeripheralVessel

        def initialize(text=nil, vascularmurmur=nil, peripheralvessel=nil)
          @Text = text
          @VascularMurmur = vascularmurmur
          @PeripheralVessel = peripheralvessel
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['VascularMurmur'].nil?
            @VascularMurmur = KeyValueItem.new
            @VascularMurmur.deserialize(params['VascularMurmur'])
          end
          unless params['PeripheralVessel'].nil?
            @PeripheralVessel = KeyValueItem.new
            @PeripheralVessel.deserialize(params['PeripheralVessel'])
          end
        end
      end

      # 侵犯扩散
      class Invas < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Positive: 阳性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :Index, :Part, :Positive, :Src

        def initialize(index=nil, part=nil, positive=nil, src=nil)
          @Index = index
          @Part = part
          @Positive = positive
          @Src = src
        end

        def deserialize(params)
          @Index = params['Index']
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          @Positive = params['Positive']
          @Src = params['Src']
        end
      end

      # 侵犯
      class InvasiveV2 < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Positive: 阴性或阳性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Index, :Part, :Positive, :Src, :Coords

        def initialize(index=nil, part=nil, positive=nil, src=nil, coords=nil)
          @Index = index
          @Part = part
          @Positive = positive
          @Src = src
          @Coords = coords
        end

        def deserialize(params)
          @Index = params['Index']
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          @Positive = params['Positive']
          @Src = params['Src']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 签发信息
      class IssueInfo < TencentCloud::Common::AbstractModel
        # @param CertNumber: 编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertNumber: String
        # @param IssuedAuthority: 签发机构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssuedAuthority: String
        # @param IssuedDate: 签发日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssuedDate: String

        attr_accessor :CertNumber, :IssuedAuthority, :IssuedDate

        def initialize(certnumber=nil, issuedauthority=nil, issueddate=nil)
          @CertNumber = certnumber
          @IssuedAuthority = issuedauthority
          @IssuedDate = issueddate
        end

        def deserialize(params)
          @CertNumber = params['CertNumber']
          @IssuedAuthority = params['IssuedAuthority']
          @IssuedDate = params['IssuedDate']
        end
      end

      # 体检报告信息
      class KeyValueItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Item: 项目原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Result: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Name, :Item, :Result, :Page

        def initialize(name=nil, item=nil, result=nil, page=nil)
          @Name = name
          @Item = item
          @Result = result
          @Page = page
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Item'].nil?
            @Item = PhysicalBaseItem.new
            @Item.deserialize(params['Item'])
          end
          unless params['Result'].nil?
            @Result = PhysicalBaseItem.new
            @Result.deserialize(params['Result'])
          end
          @Page = params['Page']
        end
      end

      # 末次月经
      class LastMenstrualPeriodBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Norm, :Type, :Timestamp, :Unit, :Value

        def initialize(name=nil, src=nil, norm=nil, type=nil, timestamp=nil, unit=nil, value=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @Type = type
          @Timestamp = timestamp
          @Unit = unit
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @Type = params['Type']
          @Timestamp = params['Timestamp']
          @Unit = params['Unit']
          @Value = params['Value']
        end
      end

      # 淋巴
      class Lymph < TencentCloud::Common::AbstractModel
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TransferNum: 转移数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferNum: Integer

        attr_accessor :Src, :Index, :Part, :Total, :TransferNum

        def initialize(src=nil, index=nil, part=nil, total=nil, transfernum=nil)
          @Src = src
          @Index = index
          @Part = part
          @Total = total
          @TransferNum = transfernum
        end

        def deserialize(params)
          @Src = params['Src']
          @Index = params['Index']
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          @Total = params['Total']
          @TransferNum = params['TransferNum']
        end
      end

      # 单淋巴结转移信息
      class LymphNode < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Total: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TransferNum: 转移数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferNum: Integer
        # @param Sizes: 淋巴结大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sizes: Array
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Index, :Part, :Src, :Total, :TransferNum, :Sizes, :Coords

        def initialize(name=nil, index=nil, part=nil, src=nil, total=nil, transfernum=nil, sizes=nil, coords=nil)
          @Name = name
          @Index = index
          @Part = part
          @Src = src
          @Total = total
          @TransferNum = transfernum
          @Sizes = sizes
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Index = params['Index']
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          @Src = params['Src']
          @Total = params['Total']
          @TransferNum = params['TransferNum']
          @Sizes = params['Sizes']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 淋巴结总计转移信息
      class LymphTotal < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TransferNum: 转移数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferNum: String
        # @param Total: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :TransferNum, :Total, :Src, :Index, :Coords

        def initialize(name=nil, transfernum=nil, total=nil, src=nil, index=nil, coords=nil)
          @Name = name
          @TransferNum = transfernum
          @Total = total
          @Src = src
          @Index = index
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @TransferNum = params['TransferNum']
          @Total = params['Total']
          @Src = params['Src']
          @Index = params['Index']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 既往史
      class MainDiseaseHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Boolean
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Neglist: 否定列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Neglist: :class:`Tencentcloud::Mrs.v20200910.models.NeglistBlock`
        # @param Poslist: 肯定列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Poslist: :class:`Tencentcloud::Mrs.v20200910.models.PoslistBlock`

        attr_accessor :Name, :Src, :State, :Value, :Neglist, :Poslist

        def initialize(name=nil, src=nil, state=nil, value=nil, neglist=nil, poslist=nil)
          @Name = name
          @Src = src
          @State = state
          @Value = value
          @Neglist = neglist
          @Poslist = poslist
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @State = params['State']
          @Value = params['Value']
          unless params['Neglist'].nil?
            @Neglist = NeglistBlock.new
            @Neglist.deserialize(params['Neglist'])
          end
          unless params['Poslist'].nil?
            @Poslist = PoslistBlock.new
            @Poslist.deserialize(params['Poslist'])
          end
        end
      end

      # 孕产报告
      class Maternity < TencentCloud::Common::AbstractModel
        # @param Desc: 描述部分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: :class:`Tencentcloud::Mrs.v20200910.models.MaternityDesc`
        # @param Summary: 结论部分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: :class:`Tencentcloud::Mrs.v20200910.models.MaternitySummary`
        # @param OcrText: 报告原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrText: String
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Desc, :Summary, :OcrText, :Page

        def initialize(desc=nil, summary=nil, ocrtext=nil, page=nil)
          @Desc = desc
          @Summary = summary
          @OcrText = ocrtext
          @Page = page
        end

        def deserialize(params)
          unless params['Desc'].nil?
            @Desc = MaternityDesc.new
            @Desc.deserialize(params['Desc'])
          end
          unless params['Summary'].nil?
            @Summary = MaternitySummary.new
            @Summary.deserialize(params['Summary'])
          end
          @OcrText = params['OcrText']
          @Page = params['Page']
        end
      end

      # 孕产描述部分
      class MaternityDesc < TencentCloud::Common::AbstractModel
        # @param Fetus: 胎儿数据结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fetus: Array
        # @param FetusNum: 胎儿数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FetusNum: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Text: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Fetus, :FetusNum, :Text, :Coords

        def initialize(fetus=nil, fetusnum=nil, text=nil, coords=nil)
          @Fetus = fetus
          @FetusNum = fetusnum
          @Text = text
          @Coords = coords
        end

        def deserialize(params)
          unless params['Fetus'].nil?
            @Fetus = []
            params['Fetus'].each do |i|
              fetus_tmp = Fetus.new
              fetus_tmp.deserialize(i)
              @Fetus << fetus_tmp
            end
          end
          unless params['FetusNum'].nil?
            @FetusNum = FieldInfo.new
            @FetusNum.deserialize(params['FetusNum'])
          end
          @Text = params['Text']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 孕产结论部分
      class MaternitySummary < TencentCloud::Common::AbstractModel
        # @param Fetus: 胎儿数据结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fetus: Array
        # @param FetusNum: 胎儿数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FetusNum: :class:`Tencentcloud::Mrs.v20200910.models.FieldInfo`
        # @param Sym: 病变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sym: Array
        # @param Text: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Fetus, :FetusNum, :Sym, :Text, :Coords

        def initialize(fetus=nil, fetusnum=nil, sym=nil, text=nil, coords=nil)
          @Fetus = fetus
          @FetusNum = fetusnum
          @Sym = sym
          @Text = text
          @Coords = coords
        end

        def deserialize(params)
          unless params['Fetus'].nil?
            @Fetus = []
            params['Fetus'].each do |i|
              fetus_tmp = Fetus.new
              fetus_tmp.deserialize(i)
              @Fetus << fetus_tmp
            end
          end
          unless params['FetusNum'].nil?
            @FetusNum = FieldInfo.new
            @FetusNum.deserialize(params['FetusNum'])
          end
          unless params['Sym'].nil?
            @Sym = []
            params['Sym'].each do |i|
              fieldinfo_tmp = FieldInfo.new
              fieldinfo_tmp.deserialize(i)
              @Sym << fieldinfo_tmp
            end
          end
          @Text = params['Text']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 医学资料
      class MedDoc < TencentCloud::Common::AbstractModel
        # @param Advice: 建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Advice: :class:`Tencentcloud::Mrs.v20200910.models.Advice`
        # @param Diagnosis: 诊断结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Diagnosis: Array
        # @param DiseaseMedicalHistory: 疾病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseMedicalHistory: :class:`Tencentcloud::Mrs.v20200910.models.DiseaseMedicalHistory`
        # @param PersonalMedicalHistory: 个人史
        # @type PersonalMedicalHistory: :class:`Tencentcloud::Mrs.v20200910.models.PersonalMedicalHistory`
        # @param ObstericalMedicalHistory: 婚孕史
        # @type ObstericalMedicalHistory: :class:`Tencentcloud::Mrs.v20200910.models.ObstericalMedicalHistory`
        # @param FamilyMedicalHistory: 家族史
        # @type FamilyMedicalHistory: :class:`Tencentcloud::Mrs.v20200910.models.FamilyMedicalHistory`
        # @param MenstrualMedicalHistory: 月经史
        # @type MenstrualMedicalHistory: :class:`Tencentcloud::Mrs.v20200910.models.MenstrualMedicalHistory`
        # @param TreatmentRecord: 诊疗记录
        # @type TreatmentRecord: :class:`Tencentcloud::Mrs.v20200910.models.TreatmentRecord`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Advice, :Diagnosis, :DiseaseMedicalHistory, :PersonalMedicalHistory, :ObstericalMedicalHistory, :FamilyMedicalHistory, :MenstrualMedicalHistory, :TreatmentRecord, :Page

        def initialize(advice=nil, diagnosis=nil, diseasemedicalhistory=nil, personalmedicalhistory=nil, obstericalmedicalhistory=nil, familymedicalhistory=nil, menstrualmedicalhistory=nil, treatmentrecord=nil, page=nil)
          @Advice = advice
          @Diagnosis = diagnosis
          @DiseaseMedicalHistory = diseasemedicalhistory
          @PersonalMedicalHistory = personalmedicalhistory
          @ObstericalMedicalHistory = obstericalmedicalhistory
          @FamilyMedicalHistory = familymedicalhistory
          @MenstrualMedicalHistory = menstrualmedicalhistory
          @TreatmentRecord = treatmentrecord
          @Page = page
        end

        def deserialize(params)
          unless params['Advice'].nil?
            @Advice = Advice.new
            @Advice.deserialize(params['Advice'])
          end
          unless params['Diagnosis'].nil?
            @Diagnosis = []
            params['Diagnosis'].each do |i|
              diagcertitem_tmp = DiagCertItem.new
              diagcertitem_tmp.deserialize(i)
              @Diagnosis << diagcertitem_tmp
            end
          end
          unless params['DiseaseMedicalHistory'].nil?
            @DiseaseMedicalHistory = DiseaseMedicalHistory.new
            @DiseaseMedicalHistory.deserialize(params['DiseaseMedicalHistory'])
          end
          unless params['PersonalMedicalHistory'].nil?
            @PersonalMedicalHistory = PersonalMedicalHistory.new
            @PersonalMedicalHistory.deserialize(params['PersonalMedicalHistory'])
          end
          unless params['ObstericalMedicalHistory'].nil?
            @ObstericalMedicalHistory = ObstericalMedicalHistory.new
            @ObstericalMedicalHistory.deserialize(params['ObstericalMedicalHistory'])
          end
          unless params['FamilyMedicalHistory'].nil?
            @FamilyMedicalHistory = FamilyMedicalHistory.new
            @FamilyMedicalHistory.deserialize(params['FamilyMedicalHistory'])
          end
          unless params['MenstrualMedicalHistory'].nil?
            @MenstrualMedicalHistory = MenstrualMedicalHistory.new
            @MenstrualMedicalHistory.deserialize(params['MenstrualMedicalHistory'])
          end
          unless params['TreatmentRecord'].nil?
            @TreatmentRecord = TreatmentRecord.new
            @TreatmentRecord.deserialize(params['TreatmentRecord'])
          end
          @Page = params['Page']
        end
      end

      # 门诊病历信息
      class MedicalRecordInfo < TencentCloud::Common::AbstractModel
        # @param DiagnosisTime: 就诊日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnosisTime: String
        # @param DiagnosisDepartmentName: 就诊科室
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnosisDepartmentName: String
        # @param DiagnosisDoctorName: 就诊医生
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnosisDoctorName: String
        # @param ClinicalDiagnosis: 临床诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClinicalDiagnosis: String
        # @param MainNarration: 主述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainNarration: String
        # @param PhysicalExamination: 体格检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalExamination: String
        # @param InspectionFindings: 检查结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InspectionFindings: String
        # @param TreatmentOpinion: 治疗意见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreatmentOpinion: String
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :DiagnosisTime, :DiagnosisDepartmentName, :DiagnosisDoctorName, :ClinicalDiagnosis, :MainNarration, :PhysicalExamination, :InspectionFindings, :TreatmentOpinion, :Page

        def initialize(diagnosistime=nil, diagnosisdepartmentname=nil, diagnosisdoctorname=nil, clinicaldiagnosis=nil, mainnarration=nil, physicalexamination=nil, inspectionfindings=nil, treatmentopinion=nil, page=nil)
          @DiagnosisTime = diagnosistime
          @DiagnosisDepartmentName = diagnosisdepartmentname
          @DiagnosisDoctorName = diagnosisdoctorname
          @ClinicalDiagnosis = clinicaldiagnosis
          @MainNarration = mainnarration
          @PhysicalExamination = physicalexamination
          @InspectionFindings = inspectionfindings
          @TreatmentOpinion = treatmentopinion
          @Page = page
        end

        def deserialize(params)
          @DiagnosisTime = params['DiagnosisTime']
          @DiagnosisDepartmentName = params['DiagnosisDepartmentName']
          @DiagnosisDoctorName = params['DiagnosisDoctorName']
          @ClinicalDiagnosis = params['ClinicalDiagnosis']
          @MainNarration = params['MainNarration']
          @PhysicalExamination = params['PhysicalExamination']
          @InspectionFindings = params['InspectionFindings']
          @TreatmentOpinion = params['TreatmentOpinion']
          @Page = params['Page']
        end
      end

      # 药品
      class Medicine < TencentCloud::Common::AbstractModel
        # @param Name: 药品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TradeName: 商品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeName: String
        # @param Firm: 厂商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Firm: String
        # @param Category: 医保类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param Specification: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Specification: String
        # @param MinQuantity: 最小包装数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinQuantity: String
        # @param DosageUnit: 最小制剂单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DosageUnit: String
        # @param PackingUnit: 最小包装单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackingUnit: String

        attr_accessor :Name, :TradeName, :Firm, :Category, :Specification, :MinQuantity, :DosageUnit, :PackingUnit

        def initialize(name=nil, tradename=nil, firm=nil, category=nil, specification=nil, minquantity=nil, dosageunit=nil, packingunit=nil)
          @Name = name
          @TradeName = tradename
          @Firm = firm
          @Category = category
          @Specification = specification
          @MinQuantity = minquantity
          @DosageUnit = dosageunit
          @PackingUnit = packingunit
        end

        def deserialize(params)
          @Name = params['Name']
          @TradeName = params['TradeName']
          @Firm = params['Firm']
          @Category = params['Category']
          @Specification = params['Specification']
          @MinQuantity = params['MinQuantity']
          @DosageUnit = params['DosageUnit']
          @PackingUnit = params['PackingUnit']
        end
      end

      # 月经量
      class MenstrualFlowBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Value

        def initialize(name=nil, src=nil, value=nil)
          @Name = name
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 月经史
      class MenstrualHistoryBlock < TencentCloud::Common::AbstractModel
        # @param LastMenstrualPeriod: 末次月经
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMenstrualPeriod: :class:`Tencentcloud::Mrs.v20200910.models.LastMenstrualPeriodBlock`
        # @param MenstrualFlow: 月经量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualFlow: :class:`Tencentcloud::Mrs.v20200910.models.MenstrualFlowBlock`
        # @param MenarcheAge: 初潮时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenarcheAge: :class:`Tencentcloud::Mrs.v20200910.models.LastMenstrualPeriodBlock`
        # @param MenstruationOrNot: 是否绝经
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstruationOrNot: :class:`Tencentcloud::Mrs.v20200910.models.MenstruationOrNotBlock`
        # @param MenstrualCycles: 月经周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualCycles: :class:`Tencentcloud::Mrs.v20200910.models.LastMenstrualPeriodBlock`
        # @param MenstrualPeriod: 月经经期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualPeriod: :class:`Tencentcloud::Mrs.v20200910.models.MenstrualPeriodBlock`

        attr_accessor :LastMenstrualPeriod, :MenstrualFlow, :MenarcheAge, :MenstruationOrNot, :MenstrualCycles, :MenstrualPeriod

        def initialize(lastmenstrualperiod=nil, menstrualflow=nil, menarcheage=nil, menstruationornot=nil, menstrualcycles=nil, menstrualperiod=nil)
          @LastMenstrualPeriod = lastmenstrualperiod
          @MenstrualFlow = menstrualflow
          @MenarcheAge = menarcheage
          @MenstruationOrNot = menstruationornot
          @MenstrualCycles = menstrualcycles
          @MenstrualPeriod = menstrualperiod
        end

        def deserialize(params)
          unless params['LastMenstrualPeriod'].nil?
            @LastMenstrualPeriod = LastMenstrualPeriodBlock.new
            @LastMenstrualPeriod.deserialize(params['LastMenstrualPeriod'])
          end
          unless params['MenstrualFlow'].nil?
            @MenstrualFlow = MenstrualFlowBlock.new
            @MenstrualFlow.deserialize(params['MenstrualFlow'])
          end
          unless params['MenarcheAge'].nil?
            @MenarcheAge = LastMenstrualPeriodBlock.new
            @MenarcheAge.deserialize(params['MenarcheAge'])
          end
          unless params['MenstruationOrNot'].nil?
            @MenstruationOrNot = MenstruationOrNotBlock.new
            @MenstruationOrNot.deserialize(params['MenstruationOrNot'])
          end
          unless params['MenstrualCycles'].nil?
            @MenstrualCycles = LastMenstrualPeriodBlock.new
            @MenstrualCycles.deserialize(params['MenstrualCycles'])
          end
          unless params['MenstrualPeriod'].nil?
            @MenstrualPeriod = MenstrualPeriodBlock.new
            @MenstrualPeriod.deserialize(params['MenstrualPeriod'])
          end
        end
      end

      # 月经史
      class MenstrualHistoryDetailBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param TimeType: 时间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :State, :Norm, :TimeType, :Timestamp, :Unit, :Value

        def initialize(name=nil, src=nil, state=nil, norm=nil, timetype=nil, timestamp=nil, unit=nil, value=nil)
          @Name = name
          @Src = src
          @State = state
          @Norm = norm
          @TimeType = timetype
          @Timestamp = timestamp
          @Unit = unit
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @State = params['State']
          @Norm = params['Norm']
          @TimeType = params['TimeType']
          @Timestamp = params['Timestamp']
          @Unit = params['Unit']
          @Value = params['Value']
        end
      end

      # 月经史
      class MenstrualMedicalHistory < TencentCloud::Common::AbstractModel
        # @param LastMenstrualPeriod: 末次月经时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMenstrualPeriod: String
        # @param MenstrualFlow: 经量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualFlow: String
        # @param MenarcheAge: 月经初潮年龄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenarcheAge: String
        # @param MenstruationOrNot: 是否来月经
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstruationOrNot: String
        # @param MenstrualCycles: 月经周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualCycles: String
        # @param MenstrualPeriod: 月经持续天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualPeriod: String

        attr_accessor :LastMenstrualPeriod, :MenstrualFlow, :MenarcheAge, :MenstruationOrNot, :MenstrualCycles, :MenstrualPeriod

        def initialize(lastmenstrualperiod=nil, menstrualflow=nil, menarcheage=nil, menstruationornot=nil, menstrualcycles=nil, menstrualperiod=nil)
          @LastMenstrualPeriod = lastmenstrualperiod
          @MenstrualFlow = menstrualflow
          @MenarcheAge = menarcheage
          @MenstruationOrNot = menstruationornot
          @MenstrualCycles = menstrualcycles
          @MenstrualPeriod = menstrualperiod
        end

        def deserialize(params)
          @LastMenstrualPeriod = params['LastMenstrualPeriod']
          @MenstrualFlow = params['MenstrualFlow']
          @MenarcheAge = params['MenarcheAge']
          @MenstruationOrNot = params['MenstruationOrNot']
          @MenstrualCycles = params['MenstrualCycles']
          @MenstrualPeriod = params['MenstrualPeriod']
        end
      end

      # 月经经期
      class MenstrualPeriodBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Norm, :Type, :Timestamp, :Unit, :Value

        def initialize(name=nil, src=nil, norm=nil, type=nil, timestamp=nil, unit=nil, value=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @Type = type
          @Timestamp = timestamp
          @Unit = unit
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @Type = params['Type']
          @Timestamp = params['Timestamp']
          @Unit = params['Unit']
          @Value = params['Value']
        end
      end

      # 是否绝经
      class MenstruationOrNotBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param TimeType: 时间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Norm, :TimeType, :Timestamp, :Value

        def initialize(name=nil, src=nil, norm=nil, timetype=nil, timestamp=nil, value=nil)
          @Name = name
          @Src = src
          @Norm = norm
          @TimeType = timetype
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Norm = params['Norm']
          @TimeType = params['TimeType']
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 分子病理
      class Molecular < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Name: 基因名称标注化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 分子病理详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Mrs.v20200910.models.MolecularValue`
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Index, :Src, :Name, :Value, :Coords

        def initialize(index=nil, src=nil, name=nil, value=nil, coords=nil)
          @Index = index
          @Src = src
          @Name = name
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Index = params['Index']
          @Src = params['Src']
          @Name = params['Name']
          unless params['Value'].nil?
            @Value = MolecularValue.new
            @Value.deserialize(params['Value'])
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 分子病理详细信息
      class MolecularValue < TencentCloud::Common::AbstractModel
        # @param Exon: 外显子
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exon: String
        # @param Position: 点位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Positive: 阳性或阴性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String
        # @param Src: 基因名称原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :Exon, :Position, :Type, :Positive, :Src

        def initialize(exon=nil, position=nil, type=nil, positive=nil, src=nil)
          @Exon = exon
          @Position = position
          @Type = type
          @Positive = positive
          @Src = src
        end

        def deserialize(params)
          @Exon = params['Exon']
          @Position = params['Position']
          @Type = params['Type']
          @Positive = params['Positive']
          @Src = params['Src']
        end
      end

      # 多发
      class Multiple < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Count: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Index, :Src, :Value, :Count, :Name

        def initialize(index=nil, src=nil, value=nil, count=nil, name=nil)
          @Index = index
          @Src = src
          @Value = value
          @Count = count
          @Name = name
        end

        def deserialize(params)
          @Index = params['Index']
          @Src = params['Src']
          @Value = params['Value']
          @Count = params['Count']
          @Name = params['Name']
        end
      end

      # 否定列表
      class NeglistBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 新生儿信息
      class NeonatalInfo < TencentCloud::Common::AbstractModel
        # @param NeonatalName: 新生儿名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeonatalName: String
        # @param NeonatalGender: 新生儿性别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeonatalGender: String
        # @param BirthLength: 出生身长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthLength: String
        # @param BirthWeight: 出生体重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthWeight: String
        # @param GestationalAge: 出生孕周
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GestationalAge: String
        # @param BirthTime: 出生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthTime: String
        # @param BirthPlace: 出生地点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthPlace: String
        # @param MedicalInstitutions: 医疗机构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalInstitutions: String

        attr_accessor :NeonatalName, :NeonatalGender, :BirthLength, :BirthWeight, :GestationalAge, :BirthTime, :BirthPlace, :MedicalInstitutions

        def initialize(neonatalname=nil, neonatalgender=nil, birthlength=nil, birthweight=nil, gestationalage=nil, birthtime=nil, birthplace=nil, medicalinstitutions=nil)
          @NeonatalName = neonatalname
          @NeonatalGender = neonatalgender
          @BirthLength = birthlength
          @BirthWeight = birthweight
          @GestationalAge = gestationalage
          @BirthTime = birthtime
          @BirthPlace = birthplace
          @MedicalInstitutions = medicalinstitutions
        end

        def deserialize(params)
          @NeonatalName = params['NeonatalName']
          @NeonatalGender = params['NeonatalGender']
          @BirthLength = params['BirthLength']
          @BirthWeight = params['BirthWeight']
          @GestationalAge = params['GestationalAge']
          @BirthTime = params['BirthTime']
          @BirthPlace = params['BirthPlace']
          @MedicalInstitutions = params['MedicalInstitutions']
        end
      end

      # 标准部位
      class NormPart < TencentCloud::Common::AbstractModel
        # @param Part: 部位值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String
        # @param PartDirection: 部位方向
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartDirection: String
        # @param Tissue: 组织值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tissue: String
        # @param TissueDirection: 组织方向
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TissueDirection: String
        # @param Upper: 上级部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Upper: String
        # @param PartDetail: 部位详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartDetail: :class:`Tencentcloud::Mrs.v20200910.models.PartDesc`

        attr_accessor :Part, :PartDirection, :Tissue, :TissueDirection, :Upper, :PartDetail

        def initialize(part=nil, partdirection=nil, tissue=nil, tissuedirection=nil, upper=nil, partdetail=nil)
          @Part = part
          @PartDirection = partdirection
          @Tissue = tissue
          @TissueDirection = tissuedirection
          @Upper = upper
          @PartDetail = partdetail
        end

        def deserialize(params)
          @Part = params['Part']
          @PartDirection = params['PartDirection']
          @Tissue = params['Tissue']
          @TissueDirection = params['TissueDirection']
          @Upper = params['Upper']
          unless params['PartDetail'].nil?
            @PartDetail = PartDesc.new
            @PartDetail.deserialize(params['PartDetail'])
          end
        end
      end

      # 大小
      class NormSize < TencentCloud::Common::AbstractModel
        # @param Number: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Number: Array
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Impl: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Impl: String

        attr_accessor :Number, :Type, :Unit, :Impl

        def initialize(number=nil, type=nil, unit=nil, impl=nil)
          @Number = number
          @Type = type
          @Unit = unit
          @Impl = impl
        end

        def deserialize(params)
          @Number = params['Number']
          @Type = params['Type']
          @Unit = params['Unit']
          @Impl = params['Impl']
        end
      end

      # 数值结构体
      class NumValue < TencentCloud::Common::AbstractModel
        # @param Num: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Num: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String

        attr_accessor :Num, :Unit

        def initialize(num=nil, unit=nil)
          @Num = num
          @Unit = unit
        end

        def deserialize(params)
          @Num = params['Num']
          @Unit = params['Unit']
        end
      end

      # 孕产史
      class ObstericalMedicalHistory < TencentCloud::Common::AbstractModel
        # @param MarriageHistory: 婚史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarriageHistory: String
        # @param FertilityHistory: 孕史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FertilityHistory: String

        attr_accessor :MarriageHistory, :FertilityHistory

        def initialize(marriagehistory=nil, fertilityhistory=nil)
          @MarriageHistory = marriagehistory
          @FertilityHistory = fertilityhistory
        end

        def deserialize(params)
          @MarriageHistory = params['MarriageHistory']
          @FertilityHistory = params['FertilityHistory']
        end
      end

      # 婚姻-生育史
      class ObstetricalHistoryBlock < TencentCloud::Common::AbstractModel
        # @param MarriageHistory: 婚姻史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarriageHistory: :class:`Tencentcloud::Mrs.v20200910.models.MenstrualHistoryDetailBlock`
        # @param FertilityHistory: 婚育史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FertilityHistory: :class:`Tencentcloud::Mrs.v20200910.models.FertilityHistoryBlock`

        attr_accessor :MarriageHistory, :FertilityHistory

        def initialize(marriagehistory=nil, fertilityhistory=nil)
          @MarriageHistory = marriagehistory
          @FertilityHistory = fertilityhistory
        end

        def deserialize(params)
          unless params['MarriageHistory'].nil?
            @MarriageHistory = MenstrualHistoryDetailBlock.new
            @MarriageHistory.deserialize(params['MarriageHistory'])
          end
          unless params['FertilityHistory'].nil?
            @FertilityHistory = FertilityHistoryBlock.new
            @FertilityHistory.deserialize(params['FertilityHistory'])
          end
        end
      end

      # 图片完整的OCR信息
      class OcrInfo < TencentCloud::Common::AbstractModel
        # @param Items: 图片进行OCR之后得到的所有包含字块的OCR信息
        # @type Items: Array
        # @param Text: 图片进行OCR之后得到的所有字符
        # @type Text: String

        attr_accessor :Items, :Text

        def initialize(items=nil, text=nil)
          @Items = items
          @Text = text
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ocritem_tmp = OcrItem.new
              ocritem_tmp.deserialize(i)
              @Items << ocritem_tmp
            end
          end
          @Text = params['Text']
        end
      end

      # 图片进行OCR之后,包含字符块的信息，包含字符与坐标，一个图片进行OCR之后可能分为多个这样的块
      class OcrItem < TencentCloud::Common::AbstractModel
        # @param Words: 图片中文字的字符串
        # @type Words: String
        # @param Coords: Words 中每个文字的坐标数组，顺序与Words中的字符顺序一致
        # @type Coords: Array
        # @param WordCoords: 整个字符块的坐标信息
        # @type WordCoords: :class:`Tencentcloud::Mrs.v20200910.models.Coordinate`

        attr_accessor :Words, :Coords, :WordCoords

        def initialize(words=nil, coords=nil, wordcoords=nil)
          @Words = words
          @Coords = coords
          @WordCoords = wordcoords
        end

        def deserialize(params)
          @Words = params['Words']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coordinate_tmp = Coordinate.new
              coordinate_tmp.deserialize(i)
              @Coords << coordinate_tmp
            end
          end
          unless params['WordCoords'].nil?
            @WordCoords = Coordinate.new
            @WordCoords.deserialize(params['WordCoords'])
          end
        end
      end

      # 体检报告-眼科-裸眼视力
      class OphthalmologyBareEyeSight < TencentCloud::Common::AbstractModel
        # @param LeftEyeVisual: 左眼视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftEyeVisual: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Text: 裸眼视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param RightEyeVisual: 右眼视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RightEyeVisual: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :LeftEyeVisual, :Text, :RightEyeVisual

        def initialize(lefteyevisual=nil, text=nil, righteyevisual=nil)
          @LeftEyeVisual = lefteyevisual
          @Text = text
          @RightEyeVisual = righteyevisual
        end

        def deserialize(params)
          unless params['LeftEyeVisual'].nil?
            @LeftEyeVisual = KeyValueItem.new
            @LeftEyeVisual.deserialize(params['LeftEyeVisual'])
          end
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['RightEyeVisual'].nil?
            @RightEyeVisual = KeyValueItem.new
            @RightEyeVisual.deserialize(params['RightEyeVisual'])
          end
        end
      end

      # 体检报告-眼科
      class OphthalmologyBaseItem < TencentCloud::Common::AbstractModel
        # @param BareEyeSight: 裸眼视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BareEyeSight: :class:`Tencentcloud::Mrs.v20200910.models.OphthalmologyBareEyeSight`
        # @param CorrectedVisualAcuity: 矫正视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorrectedVisualAcuity: :class:`Tencentcloud::Mrs.v20200910.models.OphthalmologyCorrectedVisualAcuity`
        # @param ColourVision: 色觉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColourVision: :class:`Tencentcloud::Mrs.v20200910.models.OphthalmologyColourVision`
        # @param Fundoscopy: 眼底
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fundoscopy: :class:`Tencentcloud::Mrs.v20200910.models.OphthalmologyFundoscopy`
        # @param Others: 眼科其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param BriefSummary: 眼科小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.OphthalmologyBriefSummary`

        attr_accessor :BareEyeSight, :CorrectedVisualAcuity, :ColourVision, :Fundoscopy, :Others, :BriefSummary

        def initialize(bareeyesight=nil, correctedvisualacuity=nil, colourvision=nil, fundoscopy=nil, others=nil, briefsummary=nil)
          @BareEyeSight = bareeyesight
          @CorrectedVisualAcuity = correctedvisualacuity
          @ColourVision = colourvision
          @Fundoscopy = fundoscopy
          @Others = others
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['BareEyeSight'].nil?
            @BareEyeSight = OphthalmologyBareEyeSight.new
            @BareEyeSight.deserialize(params['BareEyeSight'])
          end
          unless params['CorrectedVisualAcuity'].nil?
            @CorrectedVisualAcuity = OphthalmologyCorrectedVisualAcuity.new
            @CorrectedVisualAcuity.deserialize(params['CorrectedVisualAcuity'])
          end
          unless params['ColourVision'].nil?
            @ColourVision = OphthalmologyColourVision.new
            @ColourVision.deserialize(params['ColourVision'])
          end
          unless params['Fundoscopy'].nil?
            @Fundoscopy = OphthalmologyFundoscopy.new
            @Fundoscopy.deserialize(params['Fundoscopy'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = OphthalmologyBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-眼科-小结
      class OphthalmologyBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 眼科小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-眼科-色觉
      class OphthalmologyColourVision < TencentCloud::Common::AbstractModel
        # @param Text: 色觉总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-眼科-矫正视力
      class OphthalmologyCorrectedVisualAcuity < TencentCloud::Common::AbstractModel
        # @param LeftEyeVisual: 左眼矫正视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftEyeVisual: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Text: 矫正视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param RightEyeVisual: 右眼矫正视力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RightEyeVisual: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :LeftEyeVisual, :Text, :RightEyeVisual

        def initialize(lefteyevisual=nil, text=nil, righteyevisual=nil)
          @LeftEyeVisual = lefteyevisual
          @Text = text
          @RightEyeVisual = righteyevisual
        end

        def deserialize(params)
          unless params['LeftEyeVisual'].nil?
            @LeftEyeVisual = KeyValueItem.new
            @LeftEyeVisual.deserialize(params['LeftEyeVisual'])
          end
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['RightEyeVisual'].nil?
            @RightEyeVisual = KeyValueItem.new
            @RightEyeVisual.deserialize(params['RightEyeVisual'])
          end
        end
      end

      # 体检报告-眼科-眼底
      class OphthalmologyFundoscopy < TencentCloud::Common::AbstractModel
        # @param Text: 眼底检查总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 器官
      class Organ < TencentCloud::Common::AbstractModel
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Size: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Array
        # @param Envelope: 包膜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Envelope: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Edge: 边缘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Edge: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param InnerEcho: 内部回声
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerEcho: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Gland: 腺体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gland: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Shape: 形状
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shape: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Thickness: 厚度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Thickness: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param ShapeAttr: 形态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShapeAttr: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param CDFI: 血液cdfi
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CDFI: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param SymDesc: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymDesc: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param SizeStatus: 大小状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SizeStatus: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Outline: 轮廓
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Outline: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Structure: 结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Structure: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Density: 密度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Density: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Vas: 血管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vas: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Cysticwall: 囊壁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cysticwall: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Capsule: 被膜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Capsule: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param IsthmusThicknese: 峡部厚度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsthmusThicknese: :class:`Tencentcloud::Mrs.v20200910.models.Size`
        # @param InnerEchoDistribution: 内部回声分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerEchoDistribution: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Transparent: 透声度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transparent: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriAdc: MRI ADC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriAdc: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriDwi: MRI DWI
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriDwi: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriT1: MRI T1信号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriT1: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriT2: MRI T2信号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriT2: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param CtHu: CT HU值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CtHu: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Suvmax: SUmax值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suvmax: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Metabolism: 代谢情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metabolism: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param RadioactiveUptake: 放射性摄取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RadioactiveUptake: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param LymphEnlargement: 淋巴结情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphEnlargement: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param ImageFeature: 影像特征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageFeature: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Duct: 导管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duct: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Trend: 趋势
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trend: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Operation: 手术情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Coords: 器官在报告图片中的坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array
        # @param IsthmusThickness: 峡部厚度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsthmusThickness: :class:`Tencentcloud::Mrs.v20200910.models.Size`

        attr_accessor :Part, :Size, :Envelope, :Edge, :InnerEcho, :Gland, :Shape, :Thickness, :ShapeAttr, :CDFI, :SymDesc, :SizeStatus, :Outline, :Structure, :Density, :Vas, :Cysticwall, :Capsule, :IsthmusThicknese, :InnerEchoDistribution, :Src, :Index, :Transparent, :MriAdc, :MriDwi, :MriT1, :MriT2, :CtHu, :Suvmax, :Metabolism, :RadioactiveUptake, :LymphEnlargement, :ImageFeature, :Duct, :Trend, :Operation, :Coords, :IsthmusThickness
        extend Gem::Deprecate
        deprecate :IsthmusThicknese, :none, 2024, 10
        deprecate :IsthmusThicknese=, :none, 2024, 10

        def initialize(part=nil, size=nil, envelope=nil, edge=nil, innerecho=nil, gland=nil, shape=nil, thickness=nil, shapeattr=nil, cdfi=nil, symdesc=nil, sizestatus=nil, outline=nil, structure=nil, density=nil, vas=nil, cysticwall=nil, capsule=nil, isthmusthicknese=nil, innerechodistribution=nil, src=nil, index=nil, transparent=nil, mriadc=nil, mridwi=nil, mrit1=nil, mrit2=nil, cthu=nil, suvmax=nil, metabolism=nil, radioactiveuptake=nil, lymphenlargement=nil, imagefeature=nil, duct=nil, trend=nil, operation=nil, coords=nil, isthmusthickness=nil)
          @Part = part
          @Size = size
          @Envelope = envelope
          @Edge = edge
          @InnerEcho = innerecho
          @Gland = gland
          @Shape = shape
          @Thickness = thickness
          @ShapeAttr = shapeattr
          @CDFI = cdfi
          @SymDesc = symdesc
          @SizeStatus = sizestatus
          @Outline = outline
          @Structure = structure
          @Density = density
          @Vas = vas
          @Cysticwall = cysticwall
          @Capsule = capsule
          @IsthmusThicknese = isthmusthicknese
          @InnerEchoDistribution = innerechodistribution
          @Src = src
          @Index = index
          @Transparent = transparent
          @MriAdc = mriadc
          @MriDwi = mridwi
          @MriT1 = mrit1
          @MriT2 = mrit2
          @CtHu = cthu
          @Suvmax = suvmax
          @Metabolism = metabolism
          @RadioactiveUptake = radioactiveuptake
          @LymphEnlargement = lymphenlargement
          @ImageFeature = imagefeature
          @Duct = duct
          @Trend = trend
          @Operation = operation
          @Coords = coords
          @IsthmusThickness = isthmusthickness
        end

        def deserialize(params)
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          unless params['Size'].nil?
            @Size = []
            params['Size'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @Size << size_tmp
            end
          end
          unless params['Envelope'].nil?
            @Envelope = BlockInfo.new
            @Envelope.deserialize(params['Envelope'])
          end
          unless params['Edge'].nil?
            @Edge = BlockInfo.new
            @Edge.deserialize(params['Edge'])
          end
          unless params['InnerEcho'].nil?
            @InnerEcho = BlockInfo.new
            @InnerEcho.deserialize(params['InnerEcho'])
          end
          unless params['Gland'].nil?
            @Gland = BlockInfo.new
            @Gland.deserialize(params['Gland'])
          end
          unless params['Shape'].nil?
            @Shape = BlockInfo.new
            @Shape.deserialize(params['Shape'])
          end
          unless params['Thickness'].nil?
            @Thickness = BlockInfo.new
            @Thickness.deserialize(params['Thickness'])
          end
          unless params['ShapeAttr'].nil?
            @ShapeAttr = BlockInfo.new
            @ShapeAttr.deserialize(params['ShapeAttr'])
          end
          unless params['CDFI'].nil?
            @CDFI = BlockInfo.new
            @CDFI.deserialize(params['CDFI'])
          end
          unless params['SymDesc'].nil?
            @SymDesc = BlockInfo.new
            @SymDesc.deserialize(params['SymDesc'])
          end
          unless params['SizeStatus'].nil?
            @SizeStatus = BlockInfo.new
            @SizeStatus.deserialize(params['SizeStatus'])
          end
          unless params['Outline'].nil?
            @Outline = BlockInfo.new
            @Outline.deserialize(params['Outline'])
          end
          unless params['Structure'].nil?
            @Structure = BlockInfo.new
            @Structure.deserialize(params['Structure'])
          end
          unless params['Density'].nil?
            @Density = BlockInfo.new
            @Density.deserialize(params['Density'])
          end
          unless params['Vas'].nil?
            @Vas = BlockInfo.new
            @Vas.deserialize(params['Vas'])
          end
          unless params['Cysticwall'].nil?
            @Cysticwall = BlockInfo.new
            @Cysticwall.deserialize(params['Cysticwall'])
          end
          unless params['Capsule'].nil?
            @Capsule = BlockInfo.new
            @Capsule.deserialize(params['Capsule'])
          end
          unless params['IsthmusThicknese'].nil?
            @IsthmusThicknese = Size.new
            @IsthmusThicknese.deserialize(params['IsthmusThicknese'])
          end
          unless params['InnerEchoDistribution'].nil?
            @InnerEchoDistribution = BlockInfo.new
            @InnerEchoDistribution.deserialize(params['InnerEchoDistribution'])
          end
          @Src = params['Src']
          @Index = params['Index']
          unless params['Transparent'].nil?
            @Transparent = BlockInfo.new
            @Transparent.deserialize(params['Transparent'])
          end
          unless params['MriAdc'].nil?
            @MriAdc = BlockInfo.new
            @MriAdc.deserialize(params['MriAdc'])
          end
          unless params['MriDwi'].nil?
            @MriDwi = BlockInfo.new
            @MriDwi.deserialize(params['MriDwi'])
          end
          unless params['MriT1'].nil?
            @MriT1 = BlockInfo.new
            @MriT1.deserialize(params['MriT1'])
          end
          unless params['MriT2'].nil?
            @MriT2 = BlockInfo.new
            @MriT2.deserialize(params['MriT2'])
          end
          unless params['CtHu'].nil?
            @CtHu = BlockInfo.new
            @CtHu.deserialize(params['CtHu'])
          end
          unless params['Suvmax'].nil?
            @Suvmax = BlockInfo.new
            @Suvmax.deserialize(params['Suvmax'])
          end
          unless params['Metabolism'].nil?
            @Metabolism = BlockInfo.new
            @Metabolism.deserialize(params['Metabolism'])
          end
          unless params['RadioactiveUptake'].nil?
            @RadioactiveUptake = BlockInfo.new
            @RadioactiveUptake.deserialize(params['RadioactiveUptake'])
          end
          unless params['LymphEnlargement'].nil?
            @LymphEnlargement = BlockInfo.new
            @LymphEnlargement.deserialize(params['LymphEnlargement'])
          end
          unless params['ImageFeature'].nil?
            @ImageFeature = BlockInfo.new
            @ImageFeature.deserialize(params['ImageFeature'])
          end
          unless params['Duct'].nil?
            @Duct = BlockInfo.new
            @Duct.deserialize(params['Duct'])
          end
          unless params['Trend'].nil?
            @Trend = BlockInfo.new
            @Trend.deserialize(params['Trend'])
          end
          unless params['Operation'].nil?
            @Operation = BlockInfo.new
            @Operation.deserialize(params['Operation'])
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
          unless params['IsthmusThickness'].nil?
            @IsthmusThickness = Size.new
            @IsthmusThickness.deserialize(params['IsthmusThickness'])
          end
        end
      end

      # 其他信息
      class OtherInfo < TencentCloud::Common::AbstractModel
        # @param Anesthesia: 麻醉方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Anesthesia: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param BloodLoss: 术中出血
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BloodLoss: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param BloodTransfusion: 输血
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BloodTransfusion: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param Duration: 手术用时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param EndTime: 手术开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param StartTime: 手术结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`

        attr_accessor :Anesthesia, :BloodLoss, :BloodTransfusion, :Duration, :EndTime, :StartTime

        def initialize(anesthesia=nil, bloodloss=nil, bloodtransfusion=nil, duration=nil, endtime=nil, starttime=nil)
          @Anesthesia = anesthesia
          @BloodLoss = bloodloss
          @BloodTransfusion = bloodtransfusion
          @Duration = duration
          @EndTime = endtime
          @StartTime = starttime
        end

        def deserialize(params)
          unless params['Anesthesia'].nil?
            @Anesthesia = SurgeryAttr.new
            @Anesthesia.deserialize(params['Anesthesia'])
          end
          unless params['BloodLoss'].nil?
            @BloodLoss = SurgeryAttr.new
            @BloodLoss.deserialize(params['BloodLoss'])
          end
          unless params['BloodTransfusion'].nil?
            @BloodTransfusion = SurgeryAttr.new
            @BloodTransfusion.deserialize(params['BloodTransfusion'])
          end
          unless params['Duration'].nil?
            @Duration = SurgeryAttr.new
            @Duration.deserialize(params['Duration'])
          end
          unless params['EndTime'].nil?
            @EndTime = SurgeryAttr.new
            @EndTime.deserialize(params['EndTime'])
          end
          unless params['StartTime'].nil?
            @StartTime = SurgeryAttr.new
            @StartTime.deserialize(params['StartTime'])
          end
        end
      end

      # 体检报告-耳鼻喉科
      class OtolaryngologyBaseItem < TencentCloud::Common::AbstractModel
        # @param Ear: 耳朵
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ear: :class:`Tencentcloud::Mrs.v20200910.models.OtolaryngologyEar`
        # @param Nose: 鼻
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nose: :class:`Tencentcloud::Mrs.v20200910.models.OtolaryngologyNose`
        # @param Larynx: 喉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Larynx: :class:`Tencentcloud::Mrs.v20200910.models.OtolaryngologyLarynx`
        # @param Others: 耳鼻喉其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param BriefSummary: 小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.OtolaryngologyBriefSummary`

        attr_accessor :Ear, :Nose, :Larynx, :Others, :BriefSummary

        def initialize(ear=nil, nose=nil, larynx=nil, others=nil, briefsummary=nil)
          @Ear = ear
          @Nose = nose
          @Larynx = larynx
          @Others = others
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['Ear'].nil?
            @Ear = OtolaryngologyEar.new
            @Ear.deserialize(params['Ear'])
          end
          unless params['Nose'].nil?
            @Nose = OtolaryngologyNose.new
            @Nose.deserialize(params['Nose'])
          end
          unless params['Larynx'].nil?
            @Larynx = OtolaryngologyLarynx.new
            @Larynx.deserialize(params['Larynx'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = OtolaryngologyBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-耳鼻喉科-小结
      class OtolaryngologyBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 耳鼻喉小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-耳鼻喉科-耳朵
      class OtolaryngologyEar < TencentCloud::Common::AbstractModel
        # @param Text: 耳总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Hearing: 听力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hearing: :class:`Tencentcloud::Mrs.v20200910.models.HearingItem`

        attr_accessor :Text, :Hearing

        def initialize(text=nil, hearing=nil)
          @Text = text
          @Hearing = hearing
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['Hearing'].nil?
            @Hearing = HearingItem.new
            @Hearing.deserialize(params['Hearing'])
          end
        end
      end

      # 体检报告-耳鼻喉科-喉
      class OtolaryngologyLarynx < TencentCloud::Common::AbstractModel
        # @param Text: 喉总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-耳鼻喉科-鼻
      class OtolaryngologyNose < TencentCloud::Common::AbstractModel
        # @param Text: 鼻总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # pTNM
      class PTNM < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param PT: pT
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PT: String
        # @param PN: pN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PN: String
        # @param PM: pM
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PM: String
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Index, :Src, :Value, :PT, :PN, :PM, :Coords

        def initialize(name=nil, index=nil, src=nil, value=nil, pt=nil, pn=nil, pm=nil, coords=nil)
          @Name = name
          @Index = index
          @Src = src
          @Value = value
          @PT = pt
          @PN = pn
          @PM = pm
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Index = params['Index']
          @Src = params['Src']
          @Value = params['Value']
          @PT = params['PT']
          @PN = params['PN']
          @PM = params['PM']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # PTNM分期
      class PTNMBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param PTNMM: PTNM分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNMM: String
        # @param PTNMN: PTNM分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNMN: String
        # @param PTNMT: PTNM分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNMT: String

        attr_accessor :Name, :Src, :PTNMM, :PTNMN, :PTNMT

        def initialize(name=nil, src=nil, ptnmm=nil, ptnmn=nil, ptnmt=nil)
          @Name = name
          @Src = src
          @PTNMM = ptnmm
          @PTNMN = ptnmn
          @PTNMT = ptnmt
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @PTNMM = params['PTNMM']
          @PTNMN = params['PTNMN']
          @PTNMT = params['PTNMT']
        end
      end

      # 文本块
      class ParagraphBlock < TencentCloud::Common::AbstractModel
        # @param IncisionHealingText: 切口愈合情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncisionHealingText: String
        # @param AuxiliaryExaminationText: 辅助检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuxiliaryExaminationText: String
        # @param SpecialExamText: 特殊检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialExamText: String
        # @param OutpatientDiagnosisText: 门诊诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutpatientDiagnosisText: String
        # @param AdmissionConditionText: 入院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionConditionText: String
        # @param CheckAndTreatmentProcessText: 诊疗经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckAndTreatmentProcessText: String
        # @param SymptomsAndSignsText: 体征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymptomsAndSignsText: String
        # @param DischargeInstructionsText: 出院医嘱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeInstructionsText: String
        # @param AdmissionDiagnosisText: 入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDiagnosisText: String
        # @param SurgeryConditionText: 手术情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryConditionText: String
        # @param PathologicalDiagnosisText: 病理诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalDiagnosisText: String
        # @param DischargeConditionText: 出院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeConditionText: String
        # @param CheckRecordText: 检查记录

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckRecordText: String
        # @param ChiefComplaintText: 主诉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChiefComplaintText: String
        # @param DischargeDiagnosisText: 出院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeDiagnosisText: String
        # @param MainDiseaseHistoryText: 既往史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDiseaseHistoryText: String
        # @param DiseasePresentText: 现病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseasePresentText: String
        # @param PersonalHistoryText: 个人史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalHistoryText: String
        # @param MenstruallHistoryText: 月经史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstruallHistoryText: String
        # @param ObstericalHistoryText: 婚育史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObstericalHistoryText: String
        # @param FamilyHistoryText: 家族史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FamilyHistoryText: String
        # @param AllergyHistoryText: 过敏史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllergyHistoryText: String
        # @param DiseaseHistoryText: 病史信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseHistoryText: String
        # @param OtherDiagnosisText: 其它诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherDiagnosisText: String
        # @param BodyExaminationText: 体格检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyExaminationText: String
        # @param SpecialistExaminationText: 专科检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialistExaminationText: String
        # @param TreatmentResultText: 治疗结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreatmentResultText: String
        # @param MenstrualHistoryText: 月经史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualHistoryText: String

        attr_accessor :IncisionHealingText, :AuxiliaryExaminationText, :SpecialExamText, :OutpatientDiagnosisText, :AdmissionConditionText, :CheckAndTreatmentProcessText, :SymptomsAndSignsText, :DischargeInstructionsText, :AdmissionDiagnosisText, :SurgeryConditionText, :PathologicalDiagnosisText, :DischargeConditionText, :CheckRecordText, :ChiefComplaintText, :DischargeDiagnosisText, :MainDiseaseHistoryText, :DiseasePresentText, :PersonalHistoryText, :MenstruallHistoryText, :ObstericalHistoryText, :FamilyHistoryText, :AllergyHistoryText, :DiseaseHistoryText, :OtherDiagnosisText, :BodyExaminationText, :SpecialistExaminationText, :TreatmentResultText, :MenstrualHistoryText
        extend Gem::Deprecate
        deprecate :MenstruallHistoryText, :none, 2024, 10
        deprecate :MenstruallHistoryText=, :none, 2024, 10

        def initialize(incisionhealingtext=nil, auxiliaryexaminationtext=nil, specialexamtext=nil, outpatientdiagnosistext=nil, admissionconditiontext=nil, checkandtreatmentprocesstext=nil, symptomsandsignstext=nil, dischargeinstructionstext=nil, admissiondiagnosistext=nil, surgeryconditiontext=nil, pathologicaldiagnosistext=nil, dischargeconditiontext=nil, checkrecordtext=nil, chiefcomplainttext=nil, dischargediagnosistext=nil, maindiseasehistorytext=nil, diseasepresenttext=nil, personalhistorytext=nil, menstruallhistorytext=nil, obstericalhistorytext=nil, familyhistorytext=nil, allergyhistorytext=nil, diseasehistorytext=nil, otherdiagnosistext=nil, bodyexaminationtext=nil, specialistexaminationtext=nil, treatmentresulttext=nil, menstrualhistorytext=nil)
          @IncisionHealingText = incisionhealingtext
          @AuxiliaryExaminationText = auxiliaryexaminationtext
          @SpecialExamText = specialexamtext
          @OutpatientDiagnosisText = outpatientdiagnosistext
          @AdmissionConditionText = admissionconditiontext
          @CheckAndTreatmentProcessText = checkandtreatmentprocesstext
          @SymptomsAndSignsText = symptomsandsignstext
          @DischargeInstructionsText = dischargeinstructionstext
          @AdmissionDiagnosisText = admissiondiagnosistext
          @SurgeryConditionText = surgeryconditiontext
          @PathologicalDiagnosisText = pathologicaldiagnosistext
          @DischargeConditionText = dischargeconditiontext
          @CheckRecordText = checkrecordtext
          @ChiefComplaintText = chiefcomplainttext
          @DischargeDiagnosisText = dischargediagnosistext
          @MainDiseaseHistoryText = maindiseasehistorytext
          @DiseasePresentText = diseasepresenttext
          @PersonalHistoryText = personalhistorytext
          @MenstruallHistoryText = menstruallhistorytext
          @ObstericalHistoryText = obstericalhistorytext
          @FamilyHistoryText = familyhistorytext
          @AllergyHistoryText = allergyhistorytext
          @DiseaseHistoryText = diseasehistorytext
          @OtherDiagnosisText = otherdiagnosistext
          @BodyExaminationText = bodyexaminationtext
          @SpecialistExaminationText = specialistexaminationtext
          @TreatmentResultText = treatmentresulttext
          @MenstrualHistoryText = menstrualhistorytext
        end

        def deserialize(params)
          @IncisionHealingText = params['IncisionHealingText']
          @AuxiliaryExaminationText = params['AuxiliaryExaminationText']
          @SpecialExamText = params['SpecialExamText']
          @OutpatientDiagnosisText = params['OutpatientDiagnosisText']
          @AdmissionConditionText = params['AdmissionConditionText']
          @CheckAndTreatmentProcessText = params['CheckAndTreatmentProcessText']
          @SymptomsAndSignsText = params['SymptomsAndSignsText']
          @DischargeInstructionsText = params['DischargeInstructionsText']
          @AdmissionDiagnosisText = params['AdmissionDiagnosisText']
          @SurgeryConditionText = params['SurgeryConditionText']
          @PathologicalDiagnosisText = params['PathologicalDiagnosisText']
          @DischargeConditionText = params['DischargeConditionText']
          @CheckRecordText = params['CheckRecordText']
          @ChiefComplaintText = params['ChiefComplaintText']
          @DischargeDiagnosisText = params['DischargeDiagnosisText']
          @MainDiseaseHistoryText = params['MainDiseaseHistoryText']
          @DiseasePresentText = params['DiseasePresentText']
          @PersonalHistoryText = params['PersonalHistoryText']
          @MenstruallHistoryText = params['MenstruallHistoryText']
          @ObstericalHistoryText = params['ObstericalHistoryText']
          @FamilyHistoryText = params['FamilyHistoryText']
          @AllergyHistoryText = params['AllergyHistoryText']
          @DiseaseHistoryText = params['DiseaseHistoryText']
          @OtherDiagnosisText = params['OtherDiagnosisText']
          @BodyExaminationText = params['BodyExaminationText']
          @SpecialistExaminationText = params['SpecialistExaminationText']
          @TreatmentResultText = params['TreatmentResultText']
          @MenstrualHistoryText = params['MenstrualHistoryText']
        end
      end

      # 母亲或父亲信息
      class ParentInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Age: 年龄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Age: String
        # @param IdCard: 证件号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCard: String
        # @param Ethnicity: 民族
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ethnicity: String
        # @param Nationality: 国籍
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nationality: String
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String

        attr_accessor :Name, :Age, :IdCard, :Ethnicity, :Nationality, :Address

        def initialize(name=nil, age=nil, idcard=nil, ethnicity=nil, nationality=nil, address=nil)
          @Name = name
          @Age = age
          @IdCard = idcard
          @Ethnicity = ethnicity
          @Nationality = nationality
          @Address = address
        end

        def deserialize(params)
          @Name = params['Name']
          @Age = params['Age']
          @IdCard = params['IdCard']
          @Ethnicity = params['Ethnicity']
          @Nationality = params['Nationality']
          @Address = params['Address']
        end
      end

      # 部位信息
      class Part < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param NormPart: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormPart: :class:`Tencentcloud::Mrs.v20200910.models.NormPart`
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ValueBrief: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueBrief: String

        attr_accessor :Index, :NormPart, :Src, :Value, :Name, :ValueBrief

        def initialize(index=nil, normpart=nil, src=nil, value=nil, name=nil, valuebrief=nil)
          @Index = index
          @NormPart = normpart
          @Src = src
          @Value = value
          @Name = name
          @ValueBrief = valuebrief
        end

        def deserialize(params)
          @Index = params['Index']
          unless params['NormPart'].nil?
            @NormPart = NormPart.new
            @NormPart.deserialize(params['NormPart'])
          end
          @Src = params['Src']
          @Value = params['Value']
          @Name = params['Name']
          @ValueBrief = params['ValueBrief']
        end
      end

      # 部位描述
      class PartDesc < TencentCloud::Common::AbstractModel
        # @param MainDir: 主要部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDir: String
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String
        # @param SecondaryDir: 次要部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondaryDir: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :MainDir, :Part, :SecondaryDir, :Type

        def initialize(maindir=nil, part=nil, secondarydir=nil, type=nil)
          @MainDir = maindir
          @Part = part
          @SecondaryDir = secondarydir
          @Type = type
        end

        def deserialize(params)
          @MainDir = params['MainDir']
          @Part = params['Part']
          @SecondaryDir = params['SecondaryDir']
          @Type = params['Type']
        end
      end

      # 病理诊断
      class PathologicalDiagnosisBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Detail: 病理详细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :Detail, :Value

        def initialize(name=nil, src=nil, detail=nil, value=nil)
          @Name = name
          @Src = src
          @Detail = detail
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              pathologicaldiagnosisdetailblock_tmp = PathologicalDiagnosisDetailBlock.new
              pathologicaldiagnosisdetailblock_tmp.deserialize(i)
              @Detail << pathologicaldiagnosisdetailblock_tmp
            end
          end
          @Value = params['Value']
        end
      end

      # 病理详细
      class PathologicalDiagnosisDetailBlock < TencentCloud::Common::AbstractModel
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String
        # @param HistologicalType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologicalType: String
        # @param HistologicalGrade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologicalGrade: String

        attr_accessor :Part, :HistologicalType, :HistologicalGrade

        def initialize(part=nil, histologicaltype=nil, histologicalgrade=nil)
          @Part = part
          @HistologicalType = histologicaltype
          @HistologicalGrade = histologicalgrade
        end

        def deserialize(params)
          @Part = params['Part']
          @HistologicalType = params['HistologicalType']
          @HistologicalGrade = params['HistologicalGrade']
        end
      end

      # 病理报告
      class PathologyReport < TencentCloud::Common::AbstractModel
        # @param CancerPart: 癌症部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CancerPart: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param CancerSize: 癌症部位大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CancerSize: Array
        # @param DescText: 描述文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescText: String
        # @param HistologyLevel: 组织学等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologyLevel: :class:`Tencentcloud::Mrs.v20200910.models.HistologyLevel`
        # @param HistologyType: 组织学类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologyType: :class:`Tencentcloud::Mrs.v20200910.models.HistologyType`
        # @param IHC: IHC信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IHC: Array
        # @param InfiltrationDepth: 浸润深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InfiltrationDepth: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Invasive: 肿瘤扩散
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Invasive: Array
        # @param LymphNodes: 淋巴结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphNodes: Array
        # @param PTNM: PTNM信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNM: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param PathologicalReportType: 病理报告类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalReportType: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param ReportText: 报告原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportText: String
        # @param SampleType: 标本类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleType: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param SummaryText: 结论文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryText: String

        attr_accessor :CancerPart, :CancerSize, :DescText, :HistologyLevel, :HistologyType, :IHC, :InfiltrationDepth, :Invasive, :LymphNodes, :PTNM, :PathologicalReportType, :ReportText, :SampleType, :SummaryText

        def initialize(cancerpart=nil, cancersize=nil, desctext=nil, histologylevel=nil, histologytype=nil, ihc=nil, infiltrationdepth=nil, invasive=nil, lymphnodes=nil, ptnm=nil, pathologicalreporttype=nil, reporttext=nil, sampletype=nil, summarytext=nil)
          @CancerPart = cancerpart
          @CancerSize = cancersize
          @DescText = desctext
          @HistologyLevel = histologylevel
          @HistologyType = histologytype
          @IHC = ihc
          @InfiltrationDepth = infiltrationdepth
          @Invasive = invasive
          @LymphNodes = lymphnodes
          @PTNM = ptnm
          @PathologicalReportType = pathologicalreporttype
          @ReportText = reporttext
          @SampleType = sampletype
          @SummaryText = summarytext
        end

        def deserialize(params)
          unless params['CancerPart'].nil?
            @CancerPart = Part.new
            @CancerPart.deserialize(params['CancerPart'])
          end
          unless params['CancerSize'].nil?
            @CancerSize = []
            params['CancerSize'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @CancerSize << size_tmp
            end
          end
          @DescText = params['DescText']
          unless params['HistologyLevel'].nil?
            @HistologyLevel = HistologyLevel.new
            @HistologyLevel.deserialize(params['HistologyLevel'])
          end
          unless params['HistologyType'].nil?
            @HistologyType = HistologyType.new
            @HistologyType.deserialize(params['HistologyType'])
          end
          unless params['IHC'].nil?
            @IHC = []
            params['IHC'].each do |i|
              ihcinfo_tmp = IHCInfo.new
              ihcinfo_tmp.deserialize(i)
              @IHC << ihcinfo_tmp
            end
          end
          unless params['InfiltrationDepth'].nil?
            @InfiltrationDepth = BlockInfo.new
            @InfiltrationDepth.deserialize(params['InfiltrationDepth'])
          end
          unless params['Invasive'].nil?
            @Invasive = []
            params['Invasive'].each do |i|
              invas_tmp = Invas.new
              invas_tmp.deserialize(i)
              @Invasive << invas_tmp
            end
          end
          unless params['LymphNodes'].nil?
            @LymphNodes = []
            params['LymphNodes'].each do |i|
              lymph_tmp = Lymph.new
              lymph_tmp.deserialize(i)
              @LymphNodes << lymph_tmp
            end
          end
          unless params['PTNM'].nil?
            @PTNM = BlockInfo.new
            @PTNM.deserialize(params['PTNM'])
          end
          unless params['PathologicalReportType'].nil?
            @PathologicalReportType = BlockInfo.new
            @PathologicalReportType.deserialize(params['PathologicalReportType'])
          end
          @ReportText = params['ReportText']
          unless params['SampleType'].nil?
            @SampleType = BlockInfo.new
            @SampleType.deserialize(params['SampleType'])
          end
          @SummaryText = params['SummaryText']
        end
      end

      # 病理报告v2
      class PathologyV2 < TencentCloud::Common::AbstractModel
        # @param PathologicalReportType: 报告类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalReportType: :class:`Tencentcloud::Mrs.v20200910.models.Report`
        # @param Desc: 描述段落
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: :class:`Tencentcloud::Mrs.v20200910.models.DescInfo`
        # @param Summary: 诊断结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Summary: :class:`Tencentcloud::Mrs.v20200910.models.SummaryInfo`
        # @param ReportText: 报告全文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportText: String
        # @param LymphTotal: 淋巴结总计转移信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphTotal: Array
        # @param LymphNodes: 单淋巴结转移信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphNodes: Array
        # @param Ihc: ihc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ihc: Array
        # @param Clinical: 临床诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clinical: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Precancer: 是否癌前病变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Precancer: :class:`Tencentcloud::Mrs.v20200910.models.HistologyClass`
        # @param Malignant: 是否恶性肿瘤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Malignant: :class:`Tencentcloud::Mrs.v20200910.models.HistologyClass`
        # @param Benigntumor: 是否良性肿瘤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Benigntumor: :class:`Tencentcloud::Mrs.v20200910.models.HistologyClass`
        # @param SampleType: 送检材料
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleType: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param LymphSize: 淋巴结大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphSize: Array
        # @param Molecular: 分子病理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Molecular: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :PathologicalReportType, :Desc, :Summary, :ReportText, :LymphTotal, :LymphNodes, :Ihc, :Clinical, :Precancer, :Malignant, :Benigntumor, :SampleType, :LymphSize, :Molecular, :Page

        def initialize(pathologicalreporttype=nil, desc=nil, summary=nil, reporttext=nil, lymphtotal=nil, lymphnodes=nil, ihc=nil, clinical=nil, precancer=nil, malignant=nil, benigntumor=nil, sampletype=nil, lymphsize=nil, molecular=nil, page=nil)
          @PathologicalReportType = pathologicalreporttype
          @Desc = desc
          @Summary = summary
          @ReportText = reporttext
          @LymphTotal = lymphtotal
          @LymphNodes = lymphnodes
          @Ihc = ihc
          @Clinical = clinical
          @Precancer = precancer
          @Malignant = malignant
          @Benigntumor = benigntumor
          @SampleType = sampletype
          @LymphSize = lymphsize
          @Molecular = molecular
          @Page = page
        end

        def deserialize(params)
          unless params['PathologicalReportType'].nil?
            @PathologicalReportType = Report.new
            @PathologicalReportType.deserialize(params['PathologicalReportType'])
          end
          unless params['Desc'].nil?
            @Desc = DescInfo.new
            @Desc.deserialize(params['Desc'])
          end
          unless params['Summary'].nil?
            @Summary = SummaryInfo.new
            @Summary.deserialize(params['Summary'])
          end
          @ReportText = params['ReportText']
          unless params['LymphTotal'].nil?
            @LymphTotal = []
            params['LymphTotal'].each do |i|
              lymphtotal_tmp = LymphTotal.new
              lymphtotal_tmp.deserialize(i)
              @LymphTotal << lymphtotal_tmp
            end
          end
          unless params['LymphNodes'].nil?
            @LymphNodes = []
            params['LymphNodes'].each do |i|
              lymphnode_tmp = LymphNode.new
              lymphnode_tmp.deserialize(i)
              @LymphNodes << lymphnode_tmp
            end
          end
          unless params['Ihc'].nil?
            @Ihc = []
            params['Ihc'].each do |i|
              ihcv2_tmp = IHCV2.new
              ihcv2_tmp.deserialize(i)
              @Ihc << ihcv2_tmp
            end
          end
          unless params['Clinical'].nil?
            @Clinical = BaseInfo.new
            @Clinical.deserialize(params['Clinical'])
          end
          unless params['Precancer'].nil?
            @Precancer = HistologyClass.new
            @Precancer.deserialize(params['Precancer'])
          end
          unless params['Malignant'].nil?
            @Malignant = HistologyClass.new
            @Malignant.deserialize(params['Malignant'])
          end
          unless params['Benigntumor'].nil?
            @Benigntumor = HistologyClass.new
            @Benigntumor.deserialize(params['Benigntumor'])
          end
          unless params['SampleType'].nil?
            @SampleType = BaseInfo.new
            @SampleType.deserialize(params['SampleType'])
          end
          unless params['LymphSize'].nil?
            @LymphSize = []
            params['LymphSize'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @LymphSize << size_tmp
            end
          end
          unless params['Molecular'].nil?
            @Molecular = []
            params['Molecular'].each do |i|
              molecular_tmp = Molecular.new
              molecular_tmp.deserialize(i)
              @Molecular << molecular_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 患者信息
      class PatientInfo < TencentCloud::Common::AbstractModel
        # @param Name: 患者姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Sex: 患者性别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sex: String
        # @param Age: 患者年龄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Age: String
        # @param Phone: 患者手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Address: 患者地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param IdCard: 患者身份证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCard: String
        # @param HealthCardNo: 健康卡号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCardNo: String
        # @param SocialSecurityCardNo: 社保卡号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SocialSecurityCardNo: String
        # @param Birthday: 出生日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birthday: String
        # @param Ethnicity: 民族
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ethnicity: String
        # @param Married: 婚姻状况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Married: String
        # @param Profession: 职业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profession: String
        # @param EducationBackground: 教育程度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EducationBackground: String
        # @param Nationality: 国籍
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nationality: String
        # @param BirthPlace: 籍贯
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthPlace: String
        # @param MedicalInsuranceType: 医保类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalInsuranceType: String
        # @param AgeNorm: 标准化年龄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgeNorm: String
        # @param Nation: 民族。该字段已不再使用，请从Ethnicity取值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nation: String
        # @param MarriedCode: 婚姻代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarriedCode: String
        # @param ProfessionCode: 职业代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProfessionCode: String
        # @param MedicalInsuranceTypeCode: 居民医保代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalInsuranceTypeCode: String
        # @param BedNo: 床号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BedNo: String

        attr_accessor :Name, :Sex, :Age, :Phone, :Address, :IdCard, :HealthCardNo, :SocialSecurityCardNo, :Birthday, :Ethnicity, :Married, :Profession, :EducationBackground, :Nationality, :BirthPlace, :MedicalInsuranceType, :AgeNorm, :Nation, :MarriedCode, :ProfessionCode, :MedicalInsuranceTypeCode, :BedNo
        extend Gem::Deprecate
        deprecate :Nation, :none, 2024, 10
        deprecate :Nation=, :none, 2024, 10

        def initialize(name=nil, sex=nil, age=nil, phone=nil, address=nil, idcard=nil, healthcardno=nil, socialsecuritycardno=nil, birthday=nil, ethnicity=nil, married=nil, profession=nil, educationbackground=nil, nationality=nil, birthplace=nil, medicalinsurancetype=nil, agenorm=nil, nation=nil, marriedcode=nil, professioncode=nil, medicalinsurancetypecode=nil, bedno=nil)
          @Name = name
          @Sex = sex
          @Age = age
          @Phone = phone
          @Address = address
          @IdCard = idcard
          @HealthCardNo = healthcardno
          @SocialSecurityCardNo = socialsecuritycardno
          @Birthday = birthday
          @Ethnicity = ethnicity
          @Married = married
          @Profession = profession
          @EducationBackground = educationbackground
          @Nationality = nationality
          @BirthPlace = birthplace
          @MedicalInsuranceType = medicalinsurancetype
          @AgeNorm = agenorm
          @Nation = nation
          @MarriedCode = marriedcode
          @ProfessionCode = professioncode
          @MedicalInsuranceTypeCode = medicalinsurancetypecode
          @BedNo = bedno
        end

        def deserialize(params)
          @Name = params['Name']
          @Sex = params['Sex']
          @Age = params['Age']
          @Phone = params['Phone']
          @Address = params['Address']
          @IdCard = params['IdCard']
          @HealthCardNo = params['HealthCardNo']
          @SocialSecurityCardNo = params['SocialSecurityCardNo']
          @Birthday = params['Birthday']
          @Ethnicity = params['Ethnicity']
          @Married = params['Married']
          @Profession = params['Profession']
          @EducationBackground = params['EducationBackground']
          @Nationality = params['Nationality']
          @BirthPlace = params['BirthPlace']
          @MedicalInsuranceType = params['MedicalInsuranceType']
          @AgeNorm = params['AgeNorm']
          @Nation = params['Nation']
          @MarriedCode = params['MarriedCode']
          @ProfessionCode = params['ProfessionCode']
          @MedicalInsuranceTypeCode = params['MedicalInsuranceTypeCode']
          @BedNo = params['BedNo']
        end
      end

      # 体检报告PDF信息
      class PdfInfo < TencentCloud::Common::AbstractModel
        # @param Url: pdf文件url链接(暂不支持)
        # @type Url: String
        # @param Base64: pdf文件base64编码字符串
        # @type Base64: String

        attr_accessor :Url, :Base64

        def initialize(url=nil, base64=nil)
          @Url = url
          @Base64 = base64
        end

        def deserialize(params)
          @Url = params['Url']
          @Base64 = params['Base64']
        end
      end

      # 个人史
      class PersonalHistoryBlock < TencentCloud::Common::AbstractModel
        # @param BirthPlace: 出生地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthPlace: :class:`Tencentcloud::Mrs.v20200910.models.BirthPlaceBlock`
        # @param LivePlace: 居住地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivePlace: :class:`Tencentcloud::Mrs.v20200910.models.BirthPlaceBlock`
        # @param Job: 职业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Mrs.v20200910.models.BirthPlaceBlock`
        # @param SmokeHistory: 吸烟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmokeHistory: :class:`Tencentcloud::Mrs.v20200910.models.SmokeHistoryBlock`
        # @param AlcoholicHistory: 喝酒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlcoholicHistory: :class:`Tencentcloud::Mrs.v20200910.models.SmokeHistoryBlock`
        # @param MenstrualHistory: 月经史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualHistory: :class:`Tencentcloud::Mrs.v20200910.models.MenstrualHistoryBlock`
        # @param ObstericalHistory: 婚姻-生育史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObstericalHistory: :class:`Tencentcloud::Mrs.v20200910.models.ObstetricalHistoryBlock`
        # @param FamilyHistory: 家族史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FamilyHistory: :class:`Tencentcloud::Mrs.v20200910.models.FamilyHistoryBlock`

        attr_accessor :BirthPlace, :LivePlace, :Job, :SmokeHistory, :AlcoholicHistory, :MenstrualHistory, :ObstericalHistory, :FamilyHistory

        def initialize(birthplace=nil, liveplace=nil, job=nil, smokehistory=nil, alcoholichistory=nil, menstrualhistory=nil, obstericalhistory=nil, familyhistory=nil)
          @BirthPlace = birthplace
          @LivePlace = liveplace
          @Job = job
          @SmokeHistory = smokehistory
          @AlcoholicHistory = alcoholichistory
          @MenstrualHistory = menstrualhistory
          @ObstericalHistory = obstericalhistory
          @FamilyHistory = familyhistory
        end

        def deserialize(params)
          unless params['BirthPlace'].nil?
            @BirthPlace = BirthPlaceBlock.new
            @BirthPlace.deserialize(params['BirthPlace'])
          end
          unless params['LivePlace'].nil?
            @LivePlace = BirthPlaceBlock.new
            @LivePlace.deserialize(params['LivePlace'])
          end
          unless params['Job'].nil?
            @Job = BirthPlaceBlock.new
            @Job.deserialize(params['Job'])
          end
          unless params['SmokeHistory'].nil?
            @SmokeHistory = SmokeHistoryBlock.new
            @SmokeHistory.deserialize(params['SmokeHistory'])
          end
          unless params['AlcoholicHistory'].nil?
            @AlcoholicHistory = SmokeHistoryBlock.new
            @AlcoholicHistory.deserialize(params['AlcoholicHistory'])
          end
          unless params['MenstrualHistory'].nil?
            @MenstrualHistory = MenstrualHistoryBlock.new
            @MenstrualHistory.deserialize(params['MenstrualHistory'])
          end
          unless params['ObstericalHistory'].nil?
            @ObstericalHistory = ObstetricalHistoryBlock.new
            @ObstericalHistory.deserialize(params['ObstericalHistory'])
          end
          unless params['FamilyHistory'].nil?
            @FamilyHistory = FamilyHistoryBlock.new
            @FamilyHistory.deserialize(params['FamilyHistory'])
          end
        end
      end

      # 个人史
      class PersonalMedicalHistory < TencentCloud::Common::AbstractModel
        # @param BirthPlace: 出生史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthPlace: String
        # @param LivePlace: 居住史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivePlace: String
        # @param Job: 工作史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: String
        # @param SmokeHistory: 吸烟史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmokeHistory: String
        # @param AlcoholicHistory: 饮酒史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlcoholicHistory: String

        attr_accessor :BirthPlace, :LivePlace, :Job, :SmokeHistory, :AlcoholicHistory

        def initialize(birthplace=nil, liveplace=nil, job=nil, smokehistory=nil, alcoholichistory=nil)
          @BirthPlace = birthplace
          @LivePlace = liveplace
          @Job = job
          @SmokeHistory = smokehistory
          @AlcoholicHistory = alcoholichistory
        end

        def deserialize(params)
          @BirthPlace = params['BirthPlace']
          @LivePlace = params['LivePlace']
          @Job = params['Job']
          @SmokeHistory = params['SmokeHistory']
          @AlcoholicHistory = params['AlcoholicHistory']
        end
      end

      # 体检报告基础信息
      class PhysicalBaseItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原始文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 归一化后值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Coords: 四点坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Src, :Value, :Coords

        def initialize(name=nil, src=nil, value=nil, coords=nil)
          @Name = name
          @Src = src
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 体检报告综合信息
      class PhysicalExamination < TencentCloud::Common::AbstractModel
        # @param GeneralExamination: 一般检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeneralExamination: :class:`Tencentcloud::Mrs.v20200910.models.GeneralExaminationBaseItem`
        # @param InternalMedicine: 内科
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalMedicine: :class:`Tencentcloud::Mrs.v20200910.models.InternalMedicineBaseItem`
        # @param Surgery: 外科
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Surgery: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryBaseItem`
        # @param Stomatology: 口腔科
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stomatology: :class:`Tencentcloud::Mrs.v20200910.models.StomatologyBaseItem`
        # @param Ophthalmology: 眼科
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ophthalmology: :class:`Tencentcloud::Mrs.v20200910.models.OphthalmologyBaseItem`
        # @param Otolaryngology: 耳鼻喉科
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Otolaryngology: :class:`Tencentcloud::Mrs.v20200910.models.OtolaryngologyBaseItem`
        # @param Gynaecology: 妇科
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gynaecology: :class:`Tencentcloud::Mrs.v20200910.models.GynaecologyBaseItem`
        # @param Unclassified: 未标准化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unclassified: Array

        attr_accessor :GeneralExamination, :InternalMedicine, :Surgery, :Stomatology, :Ophthalmology, :Otolaryngology, :Gynaecology, :Unclassified

        def initialize(generalexamination=nil, internalmedicine=nil, surgery=nil, stomatology=nil, ophthalmology=nil, otolaryngology=nil, gynaecology=nil, unclassified=nil)
          @GeneralExamination = generalexamination
          @InternalMedicine = internalmedicine
          @Surgery = surgery
          @Stomatology = stomatology
          @Ophthalmology = ophthalmology
          @Otolaryngology = otolaryngology
          @Gynaecology = gynaecology
          @Unclassified = unclassified
        end

        def deserialize(params)
          unless params['GeneralExamination'].nil?
            @GeneralExamination = GeneralExaminationBaseItem.new
            @GeneralExamination.deserialize(params['GeneralExamination'])
          end
          unless params['InternalMedicine'].nil?
            @InternalMedicine = InternalMedicineBaseItem.new
            @InternalMedicine.deserialize(params['InternalMedicine'])
          end
          unless params['Surgery'].nil?
            @Surgery = SurgeryBaseItem.new
            @Surgery.deserialize(params['Surgery'])
          end
          unless params['Stomatology'].nil?
            @Stomatology = StomatologyBaseItem.new
            @Stomatology.deserialize(params['Stomatology'])
          end
          unless params['Ophthalmology'].nil?
            @Ophthalmology = OphthalmologyBaseItem.new
            @Ophthalmology.deserialize(params['Ophthalmology'])
          end
          unless params['Otolaryngology'].nil?
            @Otolaryngology = OtolaryngologyBaseItem.new
            @Otolaryngology.deserialize(params['Otolaryngology'])
          end
          unless params['Gynaecology'].nil?
            @Gynaecology = GynaecologyBaseItem.new
            @Gynaecology.deserialize(params['Gynaecology'])
          end
          unless params['Unclassified'].nil?
            @Unclassified = []
            params['Unclassified'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Unclassified << keyvalueitem_tmp
            end
          end
        end
      end

      # 体检报告V1版本
      class PhysicalExaminationV1 < TencentCloud::Common::AbstractModel
        # @param PhysicalExaminationMulti: 体检报告信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalExaminationMulti: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalExamination`
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :PhysicalExaminationMulti, :Version

        def initialize(physicalexaminationmulti=nil, version=nil)
          @PhysicalExaminationMulti = physicalexaminationmulti
          @Version = version
        end

        def deserialize(params)
          unless params['PhysicalExaminationMulti'].nil?
            @PhysicalExaminationMulti = PhysicalExamination.new
            @PhysicalExaminationMulti.deserialize(params['PhysicalExaminationMulti'])
          end
          @Version = params['Version']
        end
      end

      # 点坐标
      class Point < TencentCloud::Common::AbstractModel
        # @param X: x坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Integer
        # @param Y: y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Integer

        attr_accessor :X, :Y

        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 肯定列表
      class PoslistBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 处方单
      class Prescription < TencentCloud::Common::AbstractModel
        # @param MedicineList: 药品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicineList: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :MedicineList, :Page

        def initialize(medicinelist=nil, page=nil)
          @MedicineList = medicinelist
          @Page = page
        end

        def deserialize(params)
          unless params['MedicineList'].nil?
            @MedicineList = []
            params['MedicineList'].each do |i|
              medicine_tmp = Medicine.new
              medicine_tmp.deserialize(i)
              @MedicineList << medicine_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 位置坐标
      class Rectangle < TencentCloud::Common::AbstractModel
        # @param X: x坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Integer
        # @param Y: y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Integer
        # @param W: 宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type W: Integer
        # @param H: 高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type H: Integer

        attr_accessor :X, :Y, :W, :H

        def initialize(x=nil, y=nil, w=nil, h=nil)
          @X = x
          @Y = y
          @W = w
          @H = h
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @W = params['W']
          @H = params['H']
        end
      end

      # 复发时间
      class RelapseDateBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param DiseaseName: 疾病名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseName: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Norm: 归一化值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Norm: String
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :DiseaseName, :Type, :Norm, :Unit, :Timestamp, :Value

        def initialize(name=nil, src=nil, diseasename=nil, type=nil, norm=nil, unit=nil, timestamp=nil, value=nil)
          @Name = name
          @Src = src
          @DiseaseName = diseasename
          @Type = type
          @Norm = norm
          @Unit = unit
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @DiseaseName = params['DiseaseName']
          @Type = params['Type']
          @Norm = params['Norm']
          @Unit = params['Unit']
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 家族肿瘤史
      class RelativeCancerHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param RelativeCancerList: 肿瘤史列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeCancerList: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :RelativeCancerList, :Value

        def initialize(name=nil, src=nil, relativecancerlist=nil, value=nil)
          @Name = name
          @Src = src
          @RelativeCancerList = relativecancerlist
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @RelativeCancerList = params['RelativeCancerList']
          @Value = params['Value']
        end
      end

      # 家庭成员
      class RelativeHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Detail: 成员列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Detail, :Src, :Value

        def initialize(name=nil, detail=nil, src=nil, value=nil)
          @Name = name
          @Detail = detail
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              relativehistorydetailblock_tmp = RelativeHistoryDetailBlock.new
              relativehistorydetailblock_tmp.deserialize(i)
              @Detail << relativehistorydetailblock_tmp
            end
          end
          @Src = params['Src']
          @Value = params['Value']
        end
      end

      # 家庭成员详情
      class RelativeHistoryDetailBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Relation: 关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Relation: String
        # @param TimeOfDeath: 死亡时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeOfDeath: String
        # @param TimeType: 时间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String

        attr_accessor :Name, :Relation, :TimeOfDeath, :TimeType

        def initialize(name=nil, relation=nil, timeofdeath=nil, timetype=nil)
          @Name = name
          @Relation = relation
          @TimeOfDeath = timeofdeath
          @TimeType = timetype
        end

        def deserialize(params)
          @Name = params['Name']
          @Relation = params['Relation']
          @TimeOfDeath = params['TimeOfDeath']
          @TimeType = params['TimeType']
        end
      end

      # 报告类型
      class Report < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 报告类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Coords: 原文对应坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Name, :Index, :Src, :Value, :Coords

        def initialize(name=nil, index=nil, src=nil, value=nil, coords=nil)
          @Name = name
          @Index = index
          @Src = src
          @Value = value
          @Coords = coords
        end

        def deserialize(params)
          @Name = params['Name']
          @Index = params['Index']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 报告基本信息
      class ReportInfo < TencentCloud::Common::AbstractModel
        # @param Hospital: 医院名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hospital: String
        # @param DepartmentName: 科室名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param BillingTime: 申请时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingTime: String
        # @param ReportTime: 报告时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTime: String
        # @param InspectTime: 检查时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InspectTime: String
        # @param CheckNum: 检查号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckNum: String
        # @param ImageNum: 影像号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageNum: String
        # @param RadiationNum: 放射号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RadiationNum: String
        # @param TestNum: 检验号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestNum: String
        # @param OutpatientNum: 门诊号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutpatientNum: String
        # @param PathologyNum: 病理号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologyNum: String
        # @param InHospitalNum: 住院号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InHospitalNum: String
        # @param SampleNum: 样本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleNum: String
        # @param SampleType: 标本种类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleType: String
        # @param MedicalRecordNum: 病历号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalRecordNum: String
        # @param ReportName: 报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportName: String
        # @param UltraNum: 超声号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UltraNum: String
        # @param Diagnose: 临床诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Diagnose: String
        # @param CheckItem: 检查项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckItem: String
        # @param CheckMethod: 检查方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckMethod: String
        # @param DiagnoseTime: 诊断时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagnoseTime: String
        # @param HealthCheckupNum: 体检号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckupNum: String
        # @param OtherTime: 其它时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherTime: String
        # @param PrintTime: 打印时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrintTime: String
        # @param Times: 未归类时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Times: Array
        # @param BedNo: 床号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BedNo: String

        attr_accessor :Hospital, :DepartmentName, :BillingTime, :ReportTime, :InspectTime, :CheckNum, :ImageNum, :RadiationNum, :TestNum, :OutpatientNum, :PathologyNum, :InHospitalNum, :SampleNum, :SampleType, :MedicalRecordNum, :ReportName, :UltraNum, :Diagnose, :CheckItem, :CheckMethod, :DiagnoseTime, :HealthCheckupNum, :OtherTime, :PrintTime, :Times, :BedNo

        def initialize(hospital=nil, departmentname=nil, billingtime=nil, reporttime=nil, inspecttime=nil, checknum=nil, imagenum=nil, radiationnum=nil, testnum=nil, outpatientnum=nil, pathologynum=nil, inhospitalnum=nil, samplenum=nil, sampletype=nil, medicalrecordnum=nil, reportname=nil, ultranum=nil, diagnose=nil, checkitem=nil, checkmethod=nil, diagnosetime=nil, healthcheckupnum=nil, othertime=nil, printtime=nil, times=nil, bedno=nil)
          @Hospital = hospital
          @DepartmentName = departmentname
          @BillingTime = billingtime
          @ReportTime = reporttime
          @InspectTime = inspecttime
          @CheckNum = checknum
          @ImageNum = imagenum
          @RadiationNum = radiationnum
          @TestNum = testnum
          @OutpatientNum = outpatientnum
          @PathologyNum = pathologynum
          @InHospitalNum = inhospitalnum
          @SampleNum = samplenum
          @SampleType = sampletype
          @MedicalRecordNum = medicalrecordnum
          @ReportName = reportname
          @UltraNum = ultranum
          @Diagnose = diagnose
          @CheckItem = checkitem
          @CheckMethod = checkmethod
          @DiagnoseTime = diagnosetime
          @HealthCheckupNum = healthcheckupnum
          @OtherTime = othertime
          @PrintTime = printtime
          @Times = times
          @BedNo = bedno
        end

        def deserialize(params)
          @Hospital = params['Hospital']
          @DepartmentName = params['DepartmentName']
          @BillingTime = params['BillingTime']
          @ReportTime = params['ReportTime']
          @InspectTime = params['InspectTime']
          @CheckNum = params['CheckNum']
          @ImageNum = params['ImageNum']
          @RadiationNum = params['RadiationNum']
          @TestNum = params['TestNum']
          @OutpatientNum = params['OutpatientNum']
          @PathologyNum = params['PathologyNum']
          @InHospitalNum = params['InHospitalNum']
          @SampleNum = params['SampleNum']
          @SampleType = params['SampleType']
          @MedicalRecordNum = params['MedicalRecordNum']
          @ReportName = params['ReportName']
          @UltraNum = params['UltraNum']
          @Diagnose = params['Diagnose']
          @CheckItem = params['CheckItem']
          @CheckMethod = params['CheckMethod']
          @DiagnoseTime = params['DiagnoseTime']
          @HealthCheckupNum = params['HealthCheckupNum']
          @OtherTime = params['OtherTime']
          @PrintTime = params['PrintTime']
          unless params['Times'].nil?
            @Times = []
            params['Times'].each do |i|
              time_tmp = Time.new
              time_tmp.deserialize(i)
              @Times << time_tmp
            end
          end
          @BedNo = params['BedNo']
        end
      end

      # 指定报告类型选用其结构化版本
      class ReportTypeVersion < TencentCloud::Common::AbstractModel
        # @param ReportType: 检验报告
        # @type ReportType: Integer
        # @param Version: 版本2
        # @type Version: Integer

        attr_accessor :ReportType, :Version

        def initialize(reporttype=nil, version=nil)
          @ReportType = reporttype
          @Version = version
        end

        def deserialize(params)
          @ReportType = params['ReportType']
          @Version = params['Version']
        end
      end

      # 结论信息
      class ResultInfo < TencentCloud::Common::AbstractModel
        # @param Text: 段落文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Items: 结论详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Text, :Items, :Page

        def initialize(text=nil, items=nil, page=nil)
          @Text = text
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = BaseInfo.new
            @Text.deserialize(params['Text'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              baseinfo_tmp = BaseInfo.new
              baseinfo_tmp.deserialize(i)
              @Items << baseinfo_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 大小
      class Size < TencentCloud::Common::AbstractModel
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param NormSize: 标准大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormSize: :class:`Tencentcloud::Mrs.v20200910.models.NormSize`
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Index, :NormSize, :Src, :Value, :Name

        def initialize(index=nil, normsize=nil, src=nil, value=nil, name=nil)
          @Index = index
          @NormSize = normsize
          @Src = src
          @Value = value
          @Name = name
        end

        def deserialize(params)
          @Index = params['Index']
          unless params['NormSize'].nil?
            @NormSize = NormSize.new
            @NormSize.deserialize(params['NormSize'])
          end
          @Src = params['Src']
          @Value = params['Value']
          @Name = params['Name']
        end
      end

      # 吸烟史
      class SmokeHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param TimeUnit: 时间单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param TimeNorm: 时间归一化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeNorm: String
        # @param Amount: 吸烟量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Amount: String
        # @param QuitState: 戒烟状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuitState: Boolean
        # @param State: 是否吸烟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Boolean
        # @param Value: 对外输出值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :TimeUnit, :TimeNorm, :Amount, :QuitState, :State, :Value

        def initialize(name=nil, src=nil, timeunit=nil, timenorm=nil, amount=nil, quitstate=nil, state=nil, value=nil)
          @Name = name
          @Src = src
          @TimeUnit = timeunit
          @TimeNorm = timenorm
          @Amount = amount
          @QuitState = quitstate
          @State = state
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @TimeUnit = params['TimeUnit']
          @TimeNorm = params['TimeNorm']
          @Amount = params['Amount']
          @QuitState = params['QuitState']
          @State = params['State']
          @Value = params['Value']
        end
      end

      # 体检报告-口腔科
      class StomatologyBaseItem < TencentCloud::Common::AbstractModel
        # @param ToothDecay: 龋齿
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToothDecay: :class:`Tencentcloud::Mrs.v20200910.models.StomatologyToothDecay`
        # @param Gingiva: 牙龈
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gingiva: :class:`Tencentcloud::Mrs.v20200910.models.StomatologyGingiva`
        # @param Periodontics: 牙周
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Periodontics: :class:`Tencentcloud::Mrs.v20200910.models.StomatologyPeriodontics`
        # @param Others: 口腔其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param BriefSummary: 小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.StomatologyBriefSummary`

        attr_accessor :ToothDecay, :Gingiva, :Periodontics, :Others, :BriefSummary

        def initialize(toothdecay=nil, gingiva=nil, periodontics=nil, others=nil, briefsummary=nil)
          @ToothDecay = toothdecay
          @Gingiva = gingiva
          @Periodontics = periodontics
          @Others = others
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['ToothDecay'].nil?
            @ToothDecay = StomatologyToothDecay.new
            @ToothDecay.deserialize(params['ToothDecay'])
          end
          unless params['Gingiva'].nil?
            @Gingiva = StomatologyGingiva.new
            @Gingiva.deserialize(params['Gingiva'])
          end
          unless params['Periodontics'].nil?
            @Periodontics = StomatologyPeriodontics.new
            @Periodontics.deserialize(params['Periodontics'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = StomatologyBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-口腔科-小结
      class StomatologyBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 口腔小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-口腔科-牙龈
      class StomatologyGingiva < TencentCloud::Common::AbstractModel
        # @param Text: 牙龈总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-口腔科-牙周
      class StomatologyPeriodontics < TencentCloud::Common::AbstractModel
        # @param Text: 牙周总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-口腔科-龋齿
      class StomatologyToothDecay < TencentCloud::Common::AbstractModel
        # @param Text: 龋齿总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 结论
      class Summary < TencentCloud::Common::AbstractModel
        # @param Symptom: 症状
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Symptom: Array
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Symptom, :Text, :Coords

        def initialize(symptom=nil, text=nil, coords=nil)
          @Symptom = symptom
          @Text = text
          @Coords = coords
        end

        def deserialize(params)
          unless params['Symptom'].nil?
            @Symptom = []
            params['Symptom'].each do |i|
              symptominfo_tmp = SymptomInfo.new
              symptominfo_tmp.deserialize(i)
              @Symptom << symptominfo_tmp
            end
          end
          @Text = params['Text']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 诊断结论
      class SummaryInfo < TencentCloud::Common::AbstractModel
        # @param Text: 诊断结论文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.BaseInfo`
        # @param Infos: 诊断结论详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Infos: Array

        attr_accessor :Text, :Infos

        def initialize(text=nil, infos=nil)
          @Text = text
          @Infos = infos
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = BaseInfo.new
            @Text.deserialize(params['Text'])
          end
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              detailinformation_tmp = DetailInformation.new
              detailinformation_tmp.deserialize(i)
              @Infos << detailinformation_tmp
            end
          end
        end
      end

      # 手术记录
      class Surgery < TencentCloud::Common::AbstractModel
        # @param SurgeryHistory: 手术史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryHistory: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryHistory`
        # @param OtherInfo: 其他信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherInfo: :class:`Tencentcloud::Mrs.v20200910.models.OtherInfo`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :SurgeryHistory, :OtherInfo, :Page

        def initialize(surgeryhistory=nil, otherinfo=nil, page=nil)
          @SurgeryHistory = surgeryhistory
          @OtherInfo = otherinfo
          @Page = page
        end

        def deserialize(params)
          unless params['SurgeryHistory'].nil?
            @SurgeryHistory = SurgeryHistory.new
            @SurgeryHistory.deserialize(params['SurgeryHistory'])
          end
          unless params['OtherInfo'].nil?
            @OtherInfo = OtherInfo.new
            @OtherInfo.deserialize(params['OtherInfo'])
          end
          @Page = params['Page']
        end
      end

      # 体检报告-外科-肛门直肠
      class SurgeryAnorectal < TencentCloud::Common::AbstractModel
        # @param Text: 肛门直肠总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param DigitalRectalExamination: 直肠指检
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DigitalRectalExamination: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Hemorrhoid: 痔疮
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hemorrhoid: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text, :DigitalRectalExamination, :Hemorrhoid

        def initialize(text=nil, digitalrectalexamination=nil, hemorrhoid=nil)
          @Text = text
          @DigitalRectalExamination = digitalrectalexamination
          @Hemorrhoid = hemorrhoid
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['DigitalRectalExamination'].nil?
            @DigitalRectalExamination = KeyValueItem.new
            @DigitalRectalExamination.deserialize(params['DigitalRectalExamination'])
          end
          unless params['Hemorrhoid'].nil?
            @Hemorrhoid = KeyValueItem.new
            @Hemorrhoid.deserialize(params['Hemorrhoid'])
          end
        end
      end

      # 手术记录属性
      class SurgeryAttr < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 体检报告-外科
      class SurgeryBaseItem < TencentCloud::Common::AbstractModel
        # @param HeadNeck: 体检报告-外科-头颈部
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadNeck: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryHeadNeck`
        # @param Thyroid: 体检报告-外科-甲状腺
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Thyroid: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryThyroid`
        # @param Breast: 体检报告-外科-乳房
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Breast: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryBreast`
        # @param LymphNode: 体检报告-外科-浅表淋巴结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphNode: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryLymphNode`
        # @param SpinalExtremities: 体检报告-外科-脊柱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpinalExtremities: :class:`Tencentcloud::Mrs.v20200910.models.SurgerySpinalExtremities`
        # @param Skin: 体检报告-外科-皮肤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Skin: :class:`Tencentcloud::Mrs.v20200910.models.SurgerySkin`
        # @param Anorectal: 体检报告-外科-肛门直肠
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Anorectal: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAnorectal`
        # @param UrogenitalSystem: 体检报告-外科-泌尿生殖系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrogenitalSystem: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryUrogenitalSystem`
        # @param Others: 体检报告-外科-外科其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Others: Array
        # @param BriefSummary: 体检报告-外科-小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefSummary: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryBriefSummary`

        attr_accessor :HeadNeck, :Thyroid, :Breast, :LymphNode, :SpinalExtremities, :Skin, :Anorectal, :UrogenitalSystem, :Others, :BriefSummary

        def initialize(headneck=nil, thyroid=nil, breast=nil, lymphnode=nil, spinalextremities=nil, skin=nil, anorectal=nil, urogenitalsystem=nil, others=nil, briefsummary=nil)
          @HeadNeck = headneck
          @Thyroid = thyroid
          @Breast = breast
          @LymphNode = lymphnode
          @SpinalExtremities = spinalextremities
          @Skin = skin
          @Anorectal = anorectal
          @UrogenitalSystem = urogenitalsystem
          @Others = others
          @BriefSummary = briefsummary
        end

        def deserialize(params)
          unless params['HeadNeck'].nil?
            @HeadNeck = SurgeryHeadNeck.new
            @HeadNeck.deserialize(params['HeadNeck'])
          end
          unless params['Thyroid'].nil?
            @Thyroid = SurgeryThyroid.new
            @Thyroid.deserialize(params['Thyroid'])
          end
          unless params['Breast'].nil?
            @Breast = SurgeryBreast.new
            @Breast.deserialize(params['Breast'])
          end
          unless params['LymphNode'].nil?
            @LymphNode = SurgeryLymphNode.new
            @LymphNode.deserialize(params['LymphNode'])
          end
          unless params['SpinalExtremities'].nil?
            @SpinalExtremities = SurgerySpinalExtremities.new
            @SpinalExtremities.deserialize(params['SpinalExtremities'])
          end
          unless params['Skin'].nil?
            @Skin = SurgerySkin.new
            @Skin.deserialize(params['Skin'])
          end
          unless params['Anorectal'].nil?
            @Anorectal = SurgeryAnorectal.new
            @Anorectal.deserialize(params['Anorectal'])
          end
          unless params['UrogenitalSystem'].nil?
            @UrogenitalSystem = SurgeryUrogenitalSystem.new
            @UrogenitalSystem.deserialize(params['UrogenitalSystem'])
          end
          unless params['Others'].nil?
            @Others = []
            params['Others'].each do |i|
              keyvalueitem_tmp = KeyValueItem.new
              keyvalueitem_tmp.deserialize(i)
              @Others << keyvalueitem_tmp
            end
          end
          unless params['BriefSummary'].nil?
            @BriefSummary = SurgeryBriefSummary.new
            @BriefSummary.deserialize(params['BriefSummary'])
          end
        end
      end

      # 体检报告-外科-乳房
      class SurgeryBreast < TencentCloud::Common::AbstractModel
        # @param Text: 乳房总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-外科-小结
      class SurgeryBriefSummary < TencentCloud::Common::AbstractModel
        # @param Text: 外科小结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 手术经过
      class SurgeryConditionBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param SurgeryList: 手术历史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryList: Array
        # @param Value: 对外输出值

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :SurgeryList, :Value

        def initialize(name=nil, src=nil, surgerylist=nil, value=nil)
          @Name = name
          @Src = src
          @SurgeryList = surgerylist
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          unless params['SurgeryList'].nil?
            @SurgeryList = []
            params['SurgeryList'].each do |i|
              surgerylistblock_tmp = SurgeryListBlock.new
              surgerylistblock_tmp.deserialize(i)
              @SurgeryList << surgerylistblock_tmp
            end
          end
          @Value = params['Value']
        end
      end

      # 体检报告-外科-头颈部
      class SurgeryHeadNeck < TencentCloud::Common::AbstractModel
        # @param Text: 头颈部总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 手术史
      class SurgeryHistory < TencentCloud::Common::AbstractModel
        # @param SurgeryName: 手术名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryName: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param SurgeryDate: 手术日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryDate: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param PreoperativePathology: 术前诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreoperativePathology: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param IntraoperativePathology: 术中诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntraoperativePathology: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param PostoperativePathology: 术后诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostoperativePathology: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`
        # @param DischargeDiagnosis: 出院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryAttr`

        attr_accessor :SurgeryName, :SurgeryDate, :PreoperativePathology, :IntraoperativePathology, :PostoperativePathology, :DischargeDiagnosis

        def initialize(surgeryname=nil, surgerydate=nil, preoperativepathology=nil, intraoperativepathology=nil, postoperativepathology=nil, dischargediagnosis=nil)
          @SurgeryName = surgeryname
          @SurgeryDate = surgerydate
          @PreoperativePathology = preoperativepathology
          @IntraoperativePathology = intraoperativepathology
          @PostoperativePathology = postoperativepathology
          @DischargeDiagnosis = dischargediagnosis
        end

        def deserialize(params)
          unless params['SurgeryName'].nil?
            @SurgeryName = SurgeryAttr.new
            @SurgeryName.deserialize(params['SurgeryName'])
          end
          unless params['SurgeryDate'].nil?
            @SurgeryDate = SurgeryAttr.new
            @SurgeryDate.deserialize(params['SurgeryDate'])
          end
          unless params['PreoperativePathology'].nil?
            @PreoperativePathology = SurgeryAttr.new
            @PreoperativePathology.deserialize(params['PreoperativePathology'])
          end
          unless params['IntraoperativePathology'].nil?
            @IntraoperativePathology = SurgeryAttr.new
            @IntraoperativePathology.deserialize(params['IntraoperativePathology'])
          end
          unless params['PostoperativePathology'].nil?
            @PostoperativePathology = SurgeryAttr.new
            @PostoperativePathology.deserialize(params['PostoperativePathology'])
          end
          unless params['DischargeDiagnosis'].nil?
            @DischargeDiagnosis = SurgeryAttr.new
            @DischargeDiagnosis.deserialize(params['DischargeDiagnosis'])
          end
        end
      end

      # 手术史
      class SurgeryHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Surgerylist: 手术列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Surgerylist: Array

        attr_accessor :Name, :Src, :Value, :Surgerylist

        def initialize(name=nil, src=nil, value=nil, surgerylist=nil)
          @Name = name
          @Src = src
          @Value = value
          @Surgerylist = surgerylist
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @Value = params['Value']
          unless params['Surgerylist'].nil?
            @Surgerylist = []
            params['Surgerylist'].each do |i|
              surgerylistblock_tmp = SurgeryListBlock.new
              surgerylistblock_tmp.deserialize(i)
              @Surgerylist << surgerylistblock_tmp
            end
          end
        end
      end

      # 手术列表
      class SurgeryListBlock < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param TimeType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: Array
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String

        attr_accessor :Time, :TimeType, :Name, :Part

        def initialize(time=nil, timetype=nil, name=nil, part=nil)
          @Time = time
          @TimeType = timetype
          @Name = name
          @Part = part
        end

        def deserialize(params)
          @Time = params['Time']
          @TimeType = params['TimeType']
          @Name = params['Name']
          @Part = params['Part']
        end
      end

      # 体检报告-外科-浅表淋巴结
      class SurgeryLymphNode < TencentCloud::Common::AbstractModel
        # @param Text: 浅表淋巴结总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-外科-皮肤
      class SurgerySkin < TencentCloud::Common::AbstractModel
        # @param Text: 皮肤总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-外科-脊柱
      class SurgerySpinalExtremities < TencentCloud::Common::AbstractModel
        # @param Text: 脊柱四肢总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param SpinalColumn: 脊柱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpinalColumn: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param LimbJoint: 四肢和关节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimbJoint: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Foot: 平跛足
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Foot: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Bone: 骨骼
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bone: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Gait: 步态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gait: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Deformity: 残疾或畸形
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deformity: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text, :SpinalColumn, :LimbJoint, :Foot, :Bone, :Gait, :Deformity

        def initialize(text=nil, spinalcolumn=nil, limbjoint=nil, foot=nil, bone=nil, gait=nil, deformity=nil)
          @Text = text
          @SpinalColumn = spinalcolumn
          @LimbJoint = limbjoint
          @Foot = foot
          @Bone = bone
          @Gait = gait
          @Deformity = deformity
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['SpinalColumn'].nil?
            @SpinalColumn = KeyValueItem.new
            @SpinalColumn.deserialize(params['SpinalColumn'])
          end
          unless params['LimbJoint'].nil?
            @LimbJoint = KeyValueItem.new
            @LimbJoint.deserialize(params['LimbJoint'])
          end
          unless params['Foot'].nil?
            @Foot = KeyValueItem.new
            @Foot.deserialize(params['Foot'])
          end
          unless params['Bone'].nil?
            @Bone = KeyValueItem.new
            @Bone.deserialize(params['Bone'])
          end
          unless params['Gait'].nil?
            @Gait = KeyValueItem.new
            @Gait.deserialize(params['Gait'])
          end
          unless params['Deformity'].nil?
            @Deformity = KeyValueItem.new
            @Deformity.deserialize(params['Deformity'])
          end
        end
      end

      # 体检报告-外科-甲状腺
      class SurgeryThyroid < TencentCloud::Common::AbstractModel
        # @param Text: 甲状腺总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 体检报告-外科-泌尿生殖系统
      class SurgeryUrogenitalSystem < TencentCloud::Common::AbstractModel
        # @param Text: 泌尿生殖系统总体描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param Prostate: 前列腺
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prostate: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`
        # @param ExternalReproductiveOrgans: 外生殖器（男性）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReproductiveOrgans: :class:`Tencentcloud::Mrs.v20200910.models.KeyValueItem`

        attr_accessor :Text, :Prostate, :ExternalReproductiveOrgans

        def initialize(text=nil, prostate=nil, externalreproductiveorgans=nil)
          @Text = text
          @Prostate = prostate
          @ExternalReproductiveOrgans = externalreproductiveorgans
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = KeyValueItem.new
            @Text.deserialize(params['Text'])
          end
          unless params['Prostate'].nil?
            @Prostate = KeyValueItem.new
            @Prostate.deserialize(params['Prostate'])
          end
          unless params['ExternalReproductiveOrgans'].nil?
            @ExternalReproductiveOrgans = KeyValueItem.new
            @ExternalReproductiveOrgans.deserialize(params['ExternalReproductiveOrgans'])
          end
        end
      end

      # 病症描述信息
      class SymptomInfo < TencentCloud::Common::AbstractModel
        # @param Grade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Symptom: 病变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Symptom: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Attrs: 属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attrs: Array
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Coords: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array

        attr_accessor :Grade, :Part, :Index, :Symptom, :Attrs, :Src, :Coords

        def initialize(grade=nil, part=nil, index=nil, symptom=nil, attrs=nil, src=nil, coords=nil)
          @Grade = grade
          @Part = part
          @Index = index
          @Symptom = symptom
          @Attrs = attrs
          @Src = src
          @Coords = coords
        end

        def deserialize(params)
          unless params['Grade'].nil?
            @Grade = BlockInfo.new
            @Grade.deserialize(params['Grade'])
          end
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          @Index = params['Index']
          unless params['Symptom'].nil?
            @Symptom = BlockInfo.new
            @Symptom.deserialize(params['Symptom'])
          end
          unless params['Attrs'].nil?
            @Attrs = []
            params['Attrs'].each do |i|
              blockinfo_tmp = BlockInfo.new
              blockinfo_tmp.deserialize(i)
              @Attrs << blockinfo_tmp
            end
          end
          @Src = params['Src']
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
        end
      end

      # 检验报告结构
      class TableIndicators < TencentCloud::Common::AbstractModel
        # @param Indicators: 项目列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indicators: Array
        # @param Sample: 采样标本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sample: :class:`Tencentcloud::Mrs.v20200910.models.BaseItem`

        attr_accessor :Indicators, :Sample

        def initialize(indicators=nil, sample=nil)
          @Indicators = indicators
          @Sample = sample
        end

        def deserialize(params)
          unless params['Indicators'].nil?
            @Indicators = []
            params['Indicators'].each do |i|
              indicatoritemv2_tmp = IndicatorItemV2.new
              indicatoritemv2_tmp.deserialize(i)
              @Indicators << indicatoritemv2_tmp
            end
          end
          unless params['Sample'].nil?
            @Sample = BaseItem.new
            @Sample.deserialize(params['Sample'])
          end
        end
      end

      # 报告模板
      class Template < TencentCloud::Common::AbstractModel
        # @param PatientInfo: 患者信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PatientInfo: :class:`Tencentcloud::Mrs.v20200910.models.PatientInfo`
        # @param ReportInfo: 报告信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportInfo: :class:`Tencentcloud::Mrs.v20200910.models.ReportInfo`
        # @param Check: 检查报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Check: :class:`Tencentcloud::Mrs.v20200910.models.Check`
        # @param Pathology: 病理报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pathology: :class:`Tencentcloud::Mrs.v20200910.models.PathologyReport`
        # @param MedDoc: 出院报告，入院报告，门诊病历
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedDoc: :class:`Tencentcloud::Mrs.v20200910.models.MedDoc`
        # @param DiagCert: 诊断证明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiagCert: :class:`Tencentcloud::Mrs.v20200910.models.DiagCert`
        # @param FirstPage: 病案首页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstPage: :class:`Tencentcloud::Mrs.v20200910.models.FirstPage`
        # @param Indicator: 检验报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indicator: :class:`Tencentcloud::Mrs.v20200910.models.Indicator`
        # @param ReportType: 报告类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportType: String
        # @param MedicalRecordInfo: 门诊病历信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalRecordInfo: :class:`Tencentcloud::Mrs.v20200910.models.MedicalRecordInfo`
        # @param Hospitalization: 出入院信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hospitalization: :class:`Tencentcloud::Mrs.v20200910.models.Hospitalization`
        # @param Surgery: 手术记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Surgery: :class:`Tencentcloud::Mrs.v20200910.models.Surgery`
        # @param Electrocardiogram: 心电图报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Electrocardiogram: :class:`Tencentcloud::Mrs.v20200910.models.Electrocardiogram`
        # @param Endoscopy: 内窥镜报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endoscopy: :class:`Tencentcloud::Mrs.v20200910.models.Endoscopy`
        # @param Prescription: 处方单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prescription: :class:`Tencentcloud::Mrs.v20200910.models.Prescription`
        # @param VaccineCertificate: 疫苗接种凭证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VaccineCertificate: :class:`Tencentcloud::Mrs.v20200910.models.VaccineCertificate`
        # @param OcrText: OCR文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrText: String
        # @param OcrResult: OCR拼接后文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrResult: String
        # @param ReportTypeDesc: 报告类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTypeDesc: String
        # @param PathologyV2: 病理报告v2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologyV2: :class:`Tencentcloud::Mrs.v20200910.models.PathologyV2`
        # @param C14: 碳14尿素呼气试验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type C14: :class:`Tencentcloud::Mrs.v20200910.models.Indicator`
        # @param Exame: 体检结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exame: :class:`Tencentcloud::Mrs.v20200910.models.Exame`
        # @param MedDocV2: 出院报告v2，入院报告v2，门诊病历v2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedDocV2: :class:`Tencentcloud::Mrs.v20200910.models.DischargeInfoBlock`
        # @param IndicatorV3: 检验报告v3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndicatorV3: :class:`Tencentcloud::Mrs.v20200910.models.IndicatorV3`
        # @param Covid: 核酸报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Covid: :class:`Tencentcloud::Mrs.v20200910.models.CovidItemsInfo`
        # @param Maternity: 孕产报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Maternity: :class:`Tencentcloud::Mrs.v20200910.models.Maternity`
        # @param Eye: 眼科报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eye: :class:`Tencentcloud::Mrs.v20200910.models.EyeItemsInfo`
        # @param BirthCert: 出生证明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthCert: :class:`Tencentcloud::Mrs.v20200910.models.BirthCert`
        # @param Timeline: 时间轴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeline: :class:`Tencentcloud::Mrs.v20200910.models.TimelineInformation`

        attr_accessor :PatientInfo, :ReportInfo, :Check, :Pathology, :MedDoc, :DiagCert, :FirstPage, :Indicator, :ReportType, :MedicalRecordInfo, :Hospitalization, :Surgery, :Electrocardiogram, :Endoscopy, :Prescription, :VaccineCertificate, :OcrText, :OcrResult, :ReportTypeDesc, :PathologyV2, :C14, :Exame, :MedDocV2, :IndicatorV3, :Covid, :Maternity, :Eye, :BirthCert, :Timeline

        def initialize(patientinfo=nil, reportinfo=nil, check=nil, pathology=nil, meddoc=nil, diagcert=nil, firstpage=nil, indicator=nil, reporttype=nil, medicalrecordinfo=nil, hospitalization=nil, surgery=nil, electrocardiogram=nil, endoscopy=nil, prescription=nil, vaccinecertificate=nil, ocrtext=nil, ocrresult=nil, reporttypedesc=nil, pathologyv2=nil, c14=nil, exame=nil, meddocv2=nil, indicatorv3=nil, covid=nil, maternity=nil, eye=nil, birthcert=nil, timeline=nil)
          @PatientInfo = patientinfo
          @ReportInfo = reportinfo
          @Check = check
          @Pathology = pathology
          @MedDoc = meddoc
          @DiagCert = diagcert
          @FirstPage = firstpage
          @Indicator = indicator
          @ReportType = reporttype
          @MedicalRecordInfo = medicalrecordinfo
          @Hospitalization = hospitalization
          @Surgery = surgery
          @Electrocardiogram = electrocardiogram
          @Endoscopy = endoscopy
          @Prescription = prescription
          @VaccineCertificate = vaccinecertificate
          @OcrText = ocrtext
          @OcrResult = ocrresult
          @ReportTypeDesc = reporttypedesc
          @PathologyV2 = pathologyv2
          @C14 = c14
          @Exame = exame
          @MedDocV2 = meddocv2
          @IndicatorV3 = indicatorv3
          @Covid = covid
          @Maternity = maternity
          @Eye = eye
          @BirthCert = birthcert
          @Timeline = timeline
        end

        def deserialize(params)
          unless params['PatientInfo'].nil?
            @PatientInfo = PatientInfo.new
            @PatientInfo.deserialize(params['PatientInfo'])
          end
          unless params['ReportInfo'].nil?
            @ReportInfo = ReportInfo.new
            @ReportInfo.deserialize(params['ReportInfo'])
          end
          unless params['Check'].nil?
            @Check = Check.new
            @Check.deserialize(params['Check'])
          end
          unless params['Pathology'].nil?
            @Pathology = PathologyReport.new
            @Pathology.deserialize(params['Pathology'])
          end
          unless params['MedDoc'].nil?
            @MedDoc = MedDoc.new
            @MedDoc.deserialize(params['MedDoc'])
          end
          unless params['DiagCert'].nil?
            @DiagCert = DiagCert.new
            @DiagCert.deserialize(params['DiagCert'])
          end
          unless params['FirstPage'].nil?
            @FirstPage = FirstPage.new
            @FirstPage.deserialize(params['FirstPage'])
          end
          unless params['Indicator'].nil?
            @Indicator = Indicator.new
            @Indicator.deserialize(params['Indicator'])
          end
          @ReportType = params['ReportType']
          unless params['MedicalRecordInfo'].nil?
            @MedicalRecordInfo = MedicalRecordInfo.new
            @MedicalRecordInfo.deserialize(params['MedicalRecordInfo'])
          end
          unless params['Hospitalization'].nil?
            @Hospitalization = Hospitalization.new
            @Hospitalization.deserialize(params['Hospitalization'])
          end
          unless params['Surgery'].nil?
            @Surgery = Surgery.new
            @Surgery.deserialize(params['Surgery'])
          end
          unless params['Electrocardiogram'].nil?
            @Electrocardiogram = Electrocardiogram.new
            @Electrocardiogram.deserialize(params['Electrocardiogram'])
          end
          unless params['Endoscopy'].nil?
            @Endoscopy = Endoscopy.new
            @Endoscopy.deserialize(params['Endoscopy'])
          end
          unless params['Prescription'].nil?
            @Prescription = Prescription.new
            @Prescription.deserialize(params['Prescription'])
          end
          unless params['VaccineCertificate'].nil?
            @VaccineCertificate = VaccineCertificate.new
            @VaccineCertificate.deserialize(params['VaccineCertificate'])
          end
          @OcrText = params['OcrText']
          @OcrResult = params['OcrResult']
          @ReportTypeDesc = params['ReportTypeDesc']
          unless params['PathologyV2'].nil?
            @PathologyV2 = PathologyV2.new
            @PathologyV2.deserialize(params['PathologyV2'])
          end
          unless params['C14'].nil?
            @C14 = Indicator.new
            @C14.deserialize(params['C14'])
          end
          unless params['Exame'].nil?
            @Exame = Exame.new
            @Exame.deserialize(params['Exame'])
          end
          unless params['MedDocV2'].nil?
            @MedDocV2 = DischargeInfoBlock.new
            @MedDocV2.deserialize(params['MedDocV2'])
          end
          unless params['IndicatorV3'].nil?
            @IndicatorV3 = IndicatorV3.new
            @IndicatorV3.deserialize(params['IndicatorV3'])
          end
          unless params['Covid'].nil?
            @Covid = CovidItemsInfo.new
            @Covid.deserialize(params['Covid'])
          end
          unless params['Maternity'].nil?
            @Maternity = Maternity.new
            @Maternity.deserialize(params['Maternity'])
          end
          unless params['Eye'].nil?
            @Eye = EyeItemsInfo.new
            @Eye.deserialize(params['Eye'])
          end
          unless params['BirthCert'].nil?
            @BirthCert = BirthCert.new
            @BirthCert.deserialize(params['BirthCert'])
          end
          unless params['Timeline'].nil?
            @Timeline = TimelineInformation.new
            @Timeline.deserialize(params['Timeline'])
          end
        end
      end

      # TextToClass请求参数结构体
      class TextToClassRequest < TencentCloud::Common::AbstractModel
        # @param Text: 报告文本
        # @type Text: String
        # @param UserType: 后付费的用户类型，新客户传1，老客户可不传或传 0。2022 年 12 月 15 新增了计费项，在此时间之前已经通过商务指定优惠价格的大客户，请不传这个字段或传 0，如果传 1 会导致以前获得的折扣价格失效。在 2022 年 12 月 15 日之后，通过商务指定优惠价格的大客户请传 1。
        # @type UserType: Integer

        attr_accessor :Text, :UserType

        def initialize(text=nil, usertype=nil)
          @Text = text
          @UserType = usertype
        end

        def deserialize(params)
          @Text = params['Text']
          @UserType = params['UserType']
        end
      end

      # TextToClass返回参数结构体
      class TextToClassResponse < TencentCloud::Common::AbstractModel
        # @param TextTypeList: 分类结果
        # @type TextTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextTypeList, :RequestId

        def initialize(texttypelist=nil, requestid=nil)
          @TextTypeList = texttypelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextTypeList'].nil?
            @TextTypeList = []
            params['TextTypeList'].each do |i|
              texttype_tmp = TextType.new
              texttype_tmp.deserialize(i)
              @TextTypeList << texttype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TextToObject请求参数结构体
      class TextToObjectRequest < TencentCloud::Common::AbstractModel
        # @param Text: 报告文本
        # @type Text: String
        # @param Type: 报告类型，目前支持12（检查报告），15（病理报告），28（出院报告），29（入院报告），210（门诊病历），212（手术记录），218（诊断证明），363（心电图），27（内窥镜检查），215（处方单），219（免疫接种证明），301（C14呼气试验）。如果不清楚报告类型，可以使用分类引擎，该字段传0（同时IsUsedClassify字段必须为True，否则无法输出结果）
        # @type Type: Integer
        # @param IsUsedClassify: 是否使用分类引擎，当不确定报告类型时，可以使用收费的报告分类引擎服务。若该字段为False，则Type字段不能为0，否则无法输出结果。
        # 注意：当 IsUsedClassify 为True 时，表示使用收费的报告分类服务，将会产生额外的费用，具体收费标准参见 [购买指南的产品价格](https://cloud.tencent.com/document/product/1314/54264)。
        # @type IsUsedClassify: Boolean
        # @param UserType: 后付费的用户类型，新客户传1，老客户可不传或传 0。2022 年 12 月 15 新增了计费项，在此时间之前已经通过商务指定优惠价格的大客户，请不传这个字段或传 0，如果传 1 会导致以前获得的折扣价格失效。在 2022 年 12 月 15 日之后，通过商务指定优惠价格的大客户请传 1。
        # @type UserType: Integer
        # @param ReportTypeVersion: 可选。用于指定不同报告使用的结构化引擎版本，不同版本返回的JSON 数据结果不兼容。若不指定版本号，就默认用旧的版本号。
        # （1）检验报告 11，默认使用 V2，最高支持 V3。
        # （2）病理报告 15，默认使用 V1，最高支持 V2。
        # （3）入院记录29、出院记录 28、病历记录 216、病程记录 217、门诊记录 210，默认使用 V1，最高支持 V2。
        # @type ReportTypeVersion: Array

        attr_accessor :Text, :Type, :IsUsedClassify, :UserType, :ReportTypeVersion

        def initialize(text=nil, type=nil, isusedclassify=nil, usertype=nil, reporttypeversion=nil)
          @Text = text
          @Type = type
          @IsUsedClassify = isusedclassify
          @UserType = usertype
          @ReportTypeVersion = reporttypeversion
        end

        def deserialize(params)
          @Text = params['Text']
          @Type = params['Type']
          @IsUsedClassify = params['IsUsedClassify']
          @UserType = params['UserType']
          unless params['ReportTypeVersion'].nil?
            @ReportTypeVersion = []
            params['ReportTypeVersion'].each do |i|
              reporttypeversion_tmp = ReportTypeVersion.new
              reporttypeversion_tmp.deserialize(i)
              @ReportTypeVersion << reporttypeversion_tmp
            end
          end
        end
      end

      # TextToObject返回参数结构体
      class TextToObjectResponse < TencentCloud::Common::AbstractModel
        # @param Template: 报告结构化结果
        # @type Template: :class:`Tencentcloud::Mrs.v20200910.models.Template`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId

        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文本类型
      class TextType < TencentCloud::Common::AbstractModel
        # @param Id: 类别Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Level: 类别层级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Name: 类别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Level, :Name

        def initialize(id=nil, level=nil, name=nil)
          @Id = id
          @Level = level
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Level = params['Level']
          @Name = params['Name']
        end
      end

      # 文本类型列表块
      class TextTypeListBlock < TencentCloud::Common::AbstractModel
        # @param TextTypeList: 文本类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTypeList: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :TextTypeList, :Page

        def initialize(texttypelist=nil, page=nil)
          @TextTypeList = texttypelist
          @Page = page
        end

        def deserialize(params)
          unless params['TextTypeList'].nil?
            @TextTypeList = []
            params['TextTypeList'].each do |i|
              texttype_tmp = TextType.new
              texttype_tmp.deserialize(i)
              @TextTypeList << texttype_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 时间
      class Time < TencentCloud::Common::AbstractModel
        # @param Name: 具体时间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 时间值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 时间轴事件
      class TimelineEvent < TencentCloud::Common::AbstractModel
        # @param Type: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Src: 原文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param SubType: 事件子类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubType: String
        # @param Time: 事件发生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Value: 事件值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Rectangle: 位置坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rectangle: :class:`Tencentcloud::Mrs.v20200910.models.Rectangle`
        # @param Place: 事件发生地点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Place: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :Type, :Src, :SubType, :Time, :Value, :Rectangle, :Place, :EndTime

        def initialize(type=nil, src=nil, subtype=nil, time=nil, value=nil, rectangle=nil, place=nil, endtime=nil)
          @Type = type
          @Src = src
          @SubType = subtype
          @Time = time
          @Value = value
          @Rectangle = rectangle
          @Place = place
          @EndTime = endtime
        end

        def deserialize(params)
          @Type = params['Type']
          @Src = params['Src']
          @SubType = params['SubType']
          @Time = params['Time']
          @Value = params['Value']
          unless params['Rectangle'].nil?
            @Rectangle = Rectangle.new
            @Rectangle.deserialize(params['Rectangle'])
          end
          @Place = params['Place']
          @EndTime = params['EndTime']
        end
      end

      # 时间轴
      class TimelineInformation < TencentCloud::Common::AbstractModel
        # @param Timeline: 时间轴
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeline: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Timeline, :Page

        def initialize(timeline=nil, page=nil)
          @Timeline = timeline
          @Page = page
        end

        def deserialize(params)
          unless params['Timeline'].nil?
            @Timeline = []
            params['Timeline'].each do |i|
              timelineevent_tmp = TimelineEvent.new
              timelineevent_tmp.deserialize(i)
              @Timeline << timelineevent_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 输血史
      class TransfusionHistoryBlock < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Boolean
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Src, :State, :Value

        def initialize(name=nil, src=nil, state=nil, value=nil)
          @Name = name
          @Src = src
          @State = state
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Src = params['Src']
          @State = params['State']
          @Value = params['Value']
        end
      end

      # 病历
      class TreatmentRecord < TencentCloud::Common::AbstractModel
        # @param DmissionCondition: 入院
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DmissionCondition: String
        # @param ChiefComplaint: 主诉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChiefComplaint: String
        # @param DiseasePresent: 现病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseasePresent: String
        # @param SymptomsAndSigns: 主要症状体征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymptomsAndSigns: String
        # @param AuxiliaryExamination: 辅助检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuxiliaryExamination: String
        # @param BodyExamination: 体格检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyExamination: String
        # @param SpecialistExamination: 专科检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialistExamination: String
        # @param MentalExamination: 精神检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MentalExamination: String
        # @param CheckRecord: 检查记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckRecord: String
        # @param InspectResult: 化验结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InspectResult: String
        # @param IncisionHealing: 切口愈合情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncisionHealing: String
        # @param TreatmentSuggestion: 处理意见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreatmentSuggestion: String
        # @param FollowUpRequirements: 门诊随访要求
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowUpRequirements: String
        # @param CheckAndTreatmentProcess: 诊疗经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckAndTreatmentProcess: String
        # @param SurgeryCondition: 手术经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryCondition: String
        # @param ConditionChanges: 入院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionChanges: String
        # @param DischargeCondition: 出院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeCondition: String
        # @param PTNM: pTNM信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNM: String
        # @param PTNMM: pTNMM信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNMM: String
        # @param PTNMN: pTNMN信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNMN: String
        # @param PTNMT: pTNMT信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNMT: String
        # @param ECOG: ECOG信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ECOG: String
        # @param NRS: NRS信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NRS: String
        # @param KPS: KPS信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KPS: String
        # @param DeathDate: 死亡日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeathDate: String
        # @param RelapseDate: 复发日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelapseDate: String
        # @param ObservationDays: 观测天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObservationDays: String
        # @param AdmissionCondition: 入院
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionCondition: String

        attr_accessor :DmissionCondition, :ChiefComplaint, :DiseasePresent, :SymptomsAndSigns, :AuxiliaryExamination, :BodyExamination, :SpecialistExamination, :MentalExamination, :CheckRecord, :InspectResult, :IncisionHealing, :TreatmentSuggestion, :FollowUpRequirements, :CheckAndTreatmentProcess, :SurgeryCondition, :ConditionChanges, :DischargeCondition, :PTNM, :PTNMM, :PTNMN, :PTNMT, :ECOG, :NRS, :KPS, :DeathDate, :RelapseDate, :ObservationDays, :AdmissionCondition
        extend Gem::Deprecate
        deprecate :DmissionCondition, :none, 2024, 10
        deprecate :DmissionCondition=, :none, 2024, 10

        def initialize(dmissioncondition=nil, chiefcomplaint=nil, diseasepresent=nil, symptomsandsigns=nil, auxiliaryexamination=nil, bodyexamination=nil, specialistexamination=nil, mentalexamination=nil, checkrecord=nil, inspectresult=nil, incisionhealing=nil, treatmentsuggestion=nil, followuprequirements=nil, checkandtreatmentprocess=nil, surgerycondition=nil, conditionchanges=nil, dischargecondition=nil, ptnm=nil, ptnmm=nil, ptnmn=nil, ptnmt=nil, ecog=nil, nrs=nil, kps=nil, deathdate=nil, relapsedate=nil, observationdays=nil, admissioncondition=nil)
          @DmissionCondition = dmissioncondition
          @ChiefComplaint = chiefcomplaint
          @DiseasePresent = diseasepresent
          @SymptomsAndSigns = symptomsandsigns
          @AuxiliaryExamination = auxiliaryexamination
          @BodyExamination = bodyexamination
          @SpecialistExamination = specialistexamination
          @MentalExamination = mentalexamination
          @CheckRecord = checkrecord
          @InspectResult = inspectresult
          @IncisionHealing = incisionhealing
          @TreatmentSuggestion = treatmentsuggestion
          @FollowUpRequirements = followuprequirements
          @CheckAndTreatmentProcess = checkandtreatmentprocess
          @SurgeryCondition = surgerycondition
          @ConditionChanges = conditionchanges
          @DischargeCondition = dischargecondition
          @PTNM = ptnm
          @PTNMM = ptnmm
          @PTNMN = ptnmn
          @PTNMT = ptnmt
          @ECOG = ecog
          @NRS = nrs
          @KPS = kps
          @DeathDate = deathdate
          @RelapseDate = relapsedate
          @ObservationDays = observationdays
          @AdmissionCondition = admissioncondition
        end

        def deserialize(params)
          @DmissionCondition = params['DmissionCondition']
          @ChiefComplaint = params['ChiefComplaint']
          @DiseasePresent = params['DiseasePresent']
          @SymptomsAndSigns = params['SymptomsAndSigns']
          @AuxiliaryExamination = params['AuxiliaryExamination']
          @BodyExamination = params['BodyExamination']
          @SpecialistExamination = params['SpecialistExamination']
          @MentalExamination = params['MentalExamination']
          @CheckRecord = params['CheckRecord']
          @InspectResult = params['InspectResult']
          @IncisionHealing = params['IncisionHealing']
          @TreatmentSuggestion = params['TreatmentSuggestion']
          @FollowUpRequirements = params['FollowUpRequirements']
          @CheckAndTreatmentProcess = params['CheckAndTreatmentProcess']
          @SurgeryCondition = params['SurgeryCondition']
          @ConditionChanges = params['ConditionChanges']
          @DischargeCondition = params['DischargeCondition']
          @PTNM = params['PTNM']
          @PTNMM = params['PTNMM']
          @PTNMN = params['PTNMN']
          @PTNMT = params['PTNMT']
          @ECOG = params['ECOG']
          @NRS = params['NRS']
          @KPS = params['KPS']
          @DeathDate = params['DeathDate']
          @RelapseDate = params['RelapseDate']
          @ObservationDays = params['ObservationDays']
          @AdmissionCondition = params['AdmissionCondition']
        end
      end

      # 治疗记录
      class TreatmentRecordBlock < TencentCloud::Common::AbstractModel
        # @param Immunohistochemistry: 免疫组化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Immunohistochemistry: :class:`Tencentcloud::Mrs.v20200910.models.ImmunohistochemistryBlock`
        # @param ChiefComplaint: 主诉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChiefComplaint: :class:`Tencentcloud::Mrs.v20200910.models.ChiefComplaintBlock`
        # @param AdmissionCondition: 入院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionCondition: :class:`Tencentcloud::Mrs.v20200910.models.AdmissionConditionBlock`
        # @param BodyExamination: 查体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyExamination: :class:`Tencentcloud::Mrs.v20200910.models.BodyExaminationBlock`
        # @param AdmissionDiagnosis: 入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.AdmissionDiagnosisBlock`
        # @param AdmissionTraditionalDiagnosis: 入院中医诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionTraditionalDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.AdmissionDiagnosisBlock`
        # @param AdmissionModernDiagnosis: 入院西医诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionModernDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.AdmissionDiagnosisBlock`
        # @param PathologicalDiagnosis: 病理诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.PathologicalDiagnosisBlock`
        # @param DiseasePresent: 现病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseasePresent: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param SymptomsAndSigns: 体征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymptomsAndSigns: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param AuxiliaryExamination: 辅助检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuxiliaryExamination: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param SpecialistExamination: 特殊检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialistExamination: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param MentalExamination: 精神检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MentalExamination: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param CheckRecord: 检查记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckRecord: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param InspectResult: 检查结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InspectResult: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param CheckAndTreatmentProcess: 治疗经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckAndTreatmentProcess: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param SurgeryCondition: 手术经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryCondition: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryConditionBlock`
        # @param IncisionHealing: 切口愈合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncisionHealing: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param DischargeDiagnosis: 出院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.DischargeDiagnosisBlock`
        # @param DischargeTraditionalDiagnosis: 出院中医诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeTraditionalDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param DischargeModernDiagnosis: 出院西医诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeModernDiagnosis: :class:`Tencentcloud::Mrs.v20200910.models.DischargeDiagnosisBlock`
        # @param DischargeCondition: 出院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeCondition: :class:`Tencentcloud::Mrs.v20200910.models.DischargeConditionBlock`
        # @param DischargeInstructions: 出院医嘱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeInstructions: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param TreatmentSuggestion: 治疗建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreatmentSuggestion: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param FollowUpRequirements: 随访
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowUpRequirements: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param ConditionChanges: 治疗情况变化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionChanges: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param PulmonaryArterySystolicPressure: 收缩压
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PulmonaryArterySystolicPressure: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param BCLC: bclc分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BCLC: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param PTNM: PTNM分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNM: :class:`Tencentcloud::Mrs.v20200910.models.PTNMBlock`
        # @param ECOG: ECOG评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ECOG: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param NRS: NRS评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NRS: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param KPS: kps评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KPS: :class:`Tencentcloud::Mrs.v20200910.models.DiseasePresentBlock`
        # @param Cancerstaging: 癌症分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cancerstaging: :class:`Tencentcloud::Mrs.v20200910.models.ClinicalStaging`
        # @param DeathDate: 死亡时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeathDate: :class:`Tencentcloud::Mrs.v20200910.models.DeathDateBlock`
        # @param RelapseDate: 复发日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelapseDate: :class:`Tencentcloud::Mrs.v20200910.models.RelapseDateBlock`
        # @param ObservationDays: 观察日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObservationDays: :class:`Tencentcloud::Mrs.v20200910.models.DeathDateBlock`
        # @param IncisionHealingText: 切口愈合情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncisionHealingText: String
        # @param AuxiliaryExaminationText: 辅助检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuxiliaryExaminationText: String
        # @param SpecialExamText: 特殊检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialExamText: String
        # @param OutpatientDiagnosisText: 门诊诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutpatientDiagnosisText: String
        # @param AdmissionConditionText: 入院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionConditionText: String
        # @param CheckAndTreatmentProcessText: 诊疗经过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckAndTreatmentProcessText: String
        # @param SymptomsAndSignsText: 体征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymptomsAndSignsText: String
        # @param DischargeInstructionsText: 出院医嘱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeInstructionsText: String
        # @param AdmissionDiagnosisText: 入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDiagnosisText: String
        # @param SurgeryConditionText: 手术情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryConditionText: String
        # @param PathologicalDiagnosisText: 病理诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalDiagnosisText: String
        # @param DischargeConditionText: 出院情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeConditionText: String
        # @param CheckRecordText: 检查记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckRecordText: String
        # @param ChiefComplaintText: 主诉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChiefComplaintText: String
        # @param DischargeDiagnosisText: 出院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DischargeDiagnosisText: String

        attr_accessor :Immunohistochemistry, :ChiefComplaint, :AdmissionCondition, :BodyExamination, :AdmissionDiagnosis, :AdmissionTraditionalDiagnosis, :AdmissionModernDiagnosis, :PathologicalDiagnosis, :DiseasePresent, :SymptomsAndSigns, :AuxiliaryExamination, :SpecialistExamination, :MentalExamination, :CheckRecord, :InspectResult, :CheckAndTreatmentProcess, :SurgeryCondition, :IncisionHealing, :DischargeDiagnosis, :DischargeTraditionalDiagnosis, :DischargeModernDiagnosis, :DischargeCondition, :DischargeInstructions, :TreatmentSuggestion, :FollowUpRequirements, :ConditionChanges, :PulmonaryArterySystolicPressure, :BCLC, :PTNM, :ECOG, :NRS, :KPS, :Cancerstaging, :DeathDate, :RelapseDate, :ObservationDays, :IncisionHealingText, :AuxiliaryExaminationText, :SpecialExamText, :OutpatientDiagnosisText, :AdmissionConditionText, :CheckAndTreatmentProcessText, :SymptomsAndSignsText, :DischargeInstructionsText, :AdmissionDiagnosisText, :SurgeryConditionText, :PathologicalDiagnosisText, :DischargeConditionText, :CheckRecordText, :ChiefComplaintText, :DischargeDiagnosisText

        def initialize(immunohistochemistry=nil, chiefcomplaint=nil, admissioncondition=nil, bodyexamination=nil, admissiondiagnosis=nil, admissiontraditionaldiagnosis=nil, admissionmoderndiagnosis=nil, pathologicaldiagnosis=nil, diseasepresent=nil, symptomsandsigns=nil, auxiliaryexamination=nil, specialistexamination=nil, mentalexamination=nil, checkrecord=nil, inspectresult=nil, checkandtreatmentprocess=nil, surgerycondition=nil, incisionhealing=nil, dischargediagnosis=nil, dischargetraditionaldiagnosis=nil, dischargemoderndiagnosis=nil, dischargecondition=nil, dischargeinstructions=nil, treatmentsuggestion=nil, followuprequirements=nil, conditionchanges=nil, pulmonaryarterysystolicpressure=nil, bclc=nil, ptnm=nil, ecog=nil, nrs=nil, kps=nil, cancerstaging=nil, deathdate=nil, relapsedate=nil, observationdays=nil, incisionhealingtext=nil, auxiliaryexaminationtext=nil, specialexamtext=nil, outpatientdiagnosistext=nil, admissionconditiontext=nil, checkandtreatmentprocesstext=nil, symptomsandsignstext=nil, dischargeinstructionstext=nil, admissiondiagnosistext=nil, surgeryconditiontext=nil, pathologicaldiagnosistext=nil, dischargeconditiontext=nil, checkrecordtext=nil, chiefcomplainttext=nil, dischargediagnosistext=nil)
          @Immunohistochemistry = immunohistochemistry
          @ChiefComplaint = chiefcomplaint
          @AdmissionCondition = admissioncondition
          @BodyExamination = bodyexamination
          @AdmissionDiagnosis = admissiondiagnosis
          @AdmissionTraditionalDiagnosis = admissiontraditionaldiagnosis
          @AdmissionModernDiagnosis = admissionmoderndiagnosis
          @PathologicalDiagnosis = pathologicaldiagnosis
          @DiseasePresent = diseasepresent
          @SymptomsAndSigns = symptomsandsigns
          @AuxiliaryExamination = auxiliaryexamination
          @SpecialistExamination = specialistexamination
          @MentalExamination = mentalexamination
          @CheckRecord = checkrecord
          @InspectResult = inspectresult
          @CheckAndTreatmentProcess = checkandtreatmentprocess
          @SurgeryCondition = surgerycondition
          @IncisionHealing = incisionhealing
          @DischargeDiagnosis = dischargediagnosis
          @DischargeTraditionalDiagnosis = dischargetraditionaldiagnosis
          @DischargeModernDiagnosis = dischargemoderndiagnosis
          @DischargeCondition = dischargecondition
          @DischargeInstructions = dischargeinstructions
          @TreatmentSuggestion = treatmentsuggestion
          @FollowUpRequirements = followuprequirements
          @ConditionChanges = conditionchanges
          @PulmonaryArterySystolicPressure = pulmonaryarterysystolicpressure
          @BCLC = bclc
          @PTNM = ptnm
          @ECOG = ecog
          @NRS = nrs
          @KPS = kps
          @Cancerstaging = cancerstaging
          @DeathDate = deathdate
          @RelapseDate = relapsedate
          @ObservationDays = observationdays
          @IncisionHealingText = incisionhealingtext
          @AuxiliaryExaminationText = auxiliaryexaminationtext
          @SpecialExamText = specialexamtext
          @OutpatientDiagnosisText = outpatientdiagnosistext
          @AdmissionConditionText = admissionconditiontext
          @CheckAndTreatmentProcessText = checkandtreatmentprocesstext
          @SymptomsAndSignsText = symptomsandsignstext
          @DischargeInstructionsText = dischargeinstructionstext
          @AdmissionDiagnosisText = admissiondiagnosistext
          @SurgeryConditionText = surgeryconditiontext
          @PathologicalDiagnosisText = pathologicaldiagnosistext
          @DischargeConditionText = dischargeconditiontext
          @CheckRecordText = checkrecordtext
          @ChiefComplaintText = chiefcomplainttext
          @DischargeDiagnosisText = dischargediagnosistext
        end

        def deserialize(params)
          unless params['Immunohistochemistry'].nil?
            @Immunohistochemistry = ImmunohistochemistryBlock.new
            @Immunohistochemistry.deserialize(params['Immunohistochemistry'])
          end
          unless params['ChiefComplaint'].nil?
            @ChiefComplaint = ChiefComplaintBlock.new
            @ChiefComplaint.deserialize(params['ChiefComplaint'])
          end
          unless params['AdmissionCondition'].nil?
            @AdmissionCondition = AdmissionConditionBlock.new
            @AdmissionCondition.deserialize(params['AdmissionCondition'])
          end
          unless params['BodyExamination'].nil?
            @BodyExamination = BodyExaminationBlock.new
            @BodyExamination.deserialize(params['BodyExamination'])
          end
          unless params['AdmissionDiagnosis'].nil?
            @AdmissionDiagnosis = AdmissionDiagnosisBlock.new
            @AdmissionDiagnosis.deserialize(params['AdmissionDiagnosis'])
          end
          unless params['AdmissionTraditionalDiagnosis'].nil?
            @AdmissionTraditionalDiagnosis = AdmissionDiagnosisBlock.new
            @AdmissionTraditionalDiagnosis.deserialize(params['AdmissionTraditionalDiagnosis'])
          end
          unless params['AdmissionModernDiagnosis'].nil?
            @AdmissionModernDiagnosis = AdmissionDiagnosisBlock.new
            @AdmissionModernDiagnosis.deserialize(params['AdmissionModernDiagnosis'])
          end
          unless params['PathologicalDiagnosis'].nil?
            @PathologicalDiagnosis = PathologicalDiagnosisBlock.new
            @PathologicalDiagnosis.deserialize(params['PathologicalDiagnosis'])
          end
          unless params['DiseasePresent'].nil?
            @DiseasePresent = DiseasePresentBlock.new
            @DiseasePresent.deserialize(params['DiseasePresent'])
          end
          unless params['SymptomsAndSigns'].nil?
            @SymptomsAndSigns = DiseasePresentBlock.new
            @SymptomsAndSigns.deserialize(params['SymptomsAndSigns'])
          end
          unless params['AuxiliaryExamination'].nil?
            @AuxiliaryExamination = DiseasePresentBlock.new
            @AuxiliaryExamination.deserialize(params['AuxiliaryExamination'])
          end
          unless params['SpecialistExamination'].nil?
            @SpecialistExamination = DiseasePresentBlock.new
            @SpecialistExamination.deserialize(params['SpecialistExamination'])
          end
          unless params['MentalExamination'].nil?
            @MentalExamination = DiseasePresentBlock.new
            @MentalExamination.deserialize(params['MentalExamination'])
          end
          unless params['CheckRecord'].nil?
            @CheckRecord = DiseasePresentBlock.new
            @CheckRecord.deserialize(params['CheckRecord'])
          end
          unless params['InspectResult'].nil?
            @InspectResult = DiseasePresentBlock.new
            @InspectResult.deserialize(params['InspectResult'])
          end
          unless params['CheckAndTreatmentProcess'].nil?
            @CheckAndTreatmentProcess = DiseasePresentBlock.new
            @CheckAndTreatmentProcess.deserialize(params['CheckAndTreatmentProcess'])
          end
          unless params['SurgeryCondition'].nil?
            @SurgeryCondition = SurgeryConditionBlock.new
            @SurgeryCondition.deserialize(params['SurgeryCondition'])
          end
          unless params['IncisionHealing'].nil?
            @IncisionHealing = DiseasePresentBlock.new
            @IncisionHealing.deserialize(params['IncisionHealing'])
          end
          unless params['DischargeDiagnosis'].nil?
            @DischargeDiagnosis = DischargeDiagnosisBlock.new
            @DischargeDiagnosis.deserialize(params['DischargeDiagnosis'])
          end
          unless params['DischargeTraditionalDiagnosis'].nil?
            @DischargeTraditionalDiagnosis = DiseasePresentBlock.new
            @DischargeTraditionalDiagnosis.deserialize(params['DischargeTraditionalDiagnosis'])
          end
          unless params['DischargeModernDiagnosis'].nil?
            @DischargeModernDiagnosis = DischargeDiagnosisBlock.new
            @DischargeModernDiagnosis.deserialize(params['DischargeModernDiagnosis'])
          end
          unless params['DischargeCondition'].nil?
            @DischargeCondition = DischargeConditionBlock.new
            @DischargeCondition.deserialize(params['DischargeCondition'])
          end
          unless params['DischargeInstructions'].nil?
            @DischargeInstructions = DiseasePresentBlock.new
            @DischargeInstructions.deserialize(params['DischargeInstructions'])
          end
          unless params['TreatmentSuggestion'].nil?
            @TreatmentSuggestion = DiseasePresentBlock.new
            @TreatmentSuggestion.deserialize(params['TreatmentSuggestion'])
          end
          unless params['FollowUpRequirements'].nil?
            @FollowUpRequirements = DiseasePresentBlock.new
            @FollowUpRequirements.deserialize(params['FollowUpRequirements'])
          end
          unless params['ConditionChanges'].nil?
            @ConditionChanges = DiseasePresentBlock.new
            @ConditionChanges.deserialize(params['ConditionChanges'])
          end
          unless params['PulmonaryArterySystolicPressure'].nil?
            @PulmonaryArterySystolicPressure = DiseasePresentBlock.new
            @PulmonaryArterySystolicPressure.deserialize(params['PulmonaryArterySystolicPressure'])
          end
          unless params['BCLC'].nil?
            @BCLC = DiseasePresentBlock.new
            @BCLC.deserialize(params['BCLC'])
          end
          unless params['PTNM'].nil?
            @PTNM = PTNMBlock.new
            @PTNM.deserialize(params['PTNM'])
          end
          unless params['ECOG'].nil?
            @ECOG = DiseasePresentBlock.new
            @ECOG.deserialize(params['ECOG'])
          end
          unless params['NRS'].nil?
            @NRS = DiseasePresentBlock.new
            @NRS.deserialize(params['NRS'])
          end
          unless params['KPS'].nil?
            @KPS = DiseasePresentBlock.new
            @KPS.deserialize(params['KPS'])
          end
          unless params['Cancerstaging'].nil?
            @Cancerstaging = ClinicalStaging.new
            @Cancerstaging.deserialize(params['Cancerstaging'])
          end
          unless params['DeathDate'].nil?
            @DeathDate = DeathDateBlock.new
            @DeathDate.deserialize(params['DeathDate'])
          end
          unless params['RelapseDate'].nil?
            @RelapseDate = RelapseDateBlock.new
            @RelapseDate.deserialize(params['RelapseDate'])
          end
          unless params['ObservationDays'].nil?
            @ObservationDays = DeathDateBlock.new
            @ObservationDays.deserialize(params['ObservationDays'])
          end
          @IncisionHealingText = params['IncisionHealingText']
          @AuxiliaryExaminationText = params['AuxiliaryExaminationText']
          @SpecialExamText = params['SpecialExamText']
          @OutpatientDiagnosisText = params['OutpatientDiagnosisText']
          @AdmissionConditionText = params['AdmissionConditionText']
          @CheckAndTreatmentProcessText = params['CheckAndTreatmentProcessText']
          @SymptomsAndSignsText = params['SymptomsAndSignsText']
          @DischargeInstructionsText = params['DischargeInstructionsText']
          @AdmissionDiagnosisText = params['AdmissionDiagnosisText']
          @SurgeryConditionText = params['SurgeryConditionText']
          @PathologicalDiagnosisText = params['PathologicalDiagnosisText']
          @DischargeConditionText = params['DischargeConditionText']
          @CheckRecordText = params['CheckRecordText']
          @ChiefComplaintText = params['ChiefComplaintText']
          @DischargeDiagnosisText = params['DischargeDiagnosisText']
        end
      end

      # 结节
      class TuberInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Part`
        # @param Size: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Array
        # @param Multiple: 多发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Multiple: :class:`Tencentcloud::Mrs.v20200910.models.Multiple`
        # @param AspectRatio: 纵横比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AspectRatio: :class:`Tencentcloud::Mrs.v20200910.models.AspectRatio`
        # @param Edge: 边缘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Edge: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param InnerEcho: 内部回声
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerEcho: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param RearEcho: 外部回声
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RearEcho: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Elastic: 弹性质地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Elastic: :class:`Tencentcloud::Mrs.v20200910.models.Elastic`
        # @param Shape: 形状
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shape: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param ShapeAttr: 形态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShapeAttr: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param SkinMedulla: 皮髓质信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkinMedulla: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Trend: 变化趋势
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trend: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Calcification: 钙化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Calcification: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Envelope: 包膜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Envelope: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Enhancement: 强化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enhancement: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param LymphEnlargement: 淋巴结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphEnlargement: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param LymphDoor: 淋巴门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphDoor: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Activity: 活动度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Activity: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Operation: 手术情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param CDFI: 血液cdfi
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CDFI: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Index: 原文位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param SizeStatus: 大小状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SizeStatus: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param InnerEchoDistribution: 内部回声分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerEchoDistribution: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param InnerEchoType: 内部回声类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerEchoType: Array
        # @param Outline: 轮廓
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Outline: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Structure: 结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Structure: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Density: 密度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Density: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Vas: 血管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vas: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Cysticwall: 囊壁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cysticwall: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Capsule: 被膜
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Capsule: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param IsthmusThicknese: 峡部厚度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsthmusThicknese: :class:`Tencentcloud::Mrs.v20200910.models.Size`
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String
        # @param Transparent: 透声度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transparent: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriAdc: MRI ADC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriAdc: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriDwi: MRI DWI
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriDwi: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriT1: MRI T1信号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriT1: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param MriT2: MRI T2信号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MriT2: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param CtHu: CT HU值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CtHu: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Suvmax: SUmax值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suvmax: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Metabolism: 代谢情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metabolism: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param RadioactiveUptake: 放射性摄取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RadioactiveUptake: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param SymDesc: 病变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SymDesc: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param ImageFeature: 影像特征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageFeature: :class:`Tencentcloud::Mrs.v20200910.models.BlockInfo`
        # @param Coords: 在报告图片中的坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coords: Array
        # @param IsthmusThickness: 峡部厚度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsthmusThickness: :class:`Tencentcloud::Mrs.v20200910.models.Size`

        attr_accessor :Type, :Part, :Size, :Multiple, :AspectRatio, :Edge, :InnerEcho, :RearEcho, :Elastic, :Shape, :ShapeAttr, :SkinMedulla, :Trend, :Calcification, :Envelope, :Enhancement, :LymphEnlargement, :LymphDoor, :Activity, :Operation, :CDFI, :Index, :SizeStatus, :InnerEchoDistribution, :InnerEchoType, :Outline, :Structure, :Density, :Vas, :Cysticwall, :Capsule, :IsthmusThicknese, :Src, :Transparent, :MriAdc, :MriDwi, :MriT1, :MriT2, :CtHu, :Suvmax, :Metabolism, :RadioactiveUptake, :SymDesc, :ImageFeature, :Coords, :IsthmusThickness
        extend Gem::Deprecate
        deprecate :IsthmusThicknese, :none, 2024, 10
        deprecate :IsthmusThicknese=, :none, 2024, 10

        def initialize(type=nil, part=nil, size=nil, multiple=nil, aspectratio=nil, edge=nil, innerecho=nil, rearecho=nil, elastic=nil, shape=nil, shapeattr=nil, skinmedulla=nil, trend=nil, calcification=nil, envelope=nil, enhancement=nil, lymphenlargement=nil, lymphdoor=nil, activity=nil, operation=nil, cdfi=nil, index=nil, sizestatus=nil, innerechodistribution=nil, innerechotype=nil, outline=nil, structure=nil, density=nil, vas=nil, cysticwall=nil, capsule=nil, isthmusthicknese=nil, src=nil, transparent=nil, mriadc=nil, mridwi=nil, mrit1=nil, mrit2=nil, cthu=nil, suvmax=nil, metabolism=nil, radioactiveuptake=nil, symdesc=nil, imagefeature=nil, coords=nil, isthmusthickness=nil)
          @Type = type
          @Part = part
          @Size = size
          @Multiple = multiple
          @AspectRatio = aspectratio
          @Edge = edge
          @InnerEcho = innerecho
          @RearEcho = rearecho
          @Elastic = elastic
          @Shape = shape
          @ShapeAttr = shapeattr
          @SkinMedulla = skinmedulla
          @Trend = trend
          @Calcification = calcification
          @Envelope = envelope
          @Enhancement = enhancement
          @LymphEnlargement = lymphenlargement
          @LymphDoor = lymphdoor
          @Activity = activity
          @Operation = operation
          @CDFI = cdfi
          @Index = index
          @SizeStatus = sizestatus
          @InnerEchoDistribution = innerechodistribution
          @InnerEchoType = innerechotype
          @Outline = outline
          @Structure = structure
          @Density = density
          @Vas = vas
          @Cysticwall = cysticwall
          @Capsule = capsule
          @IsthmusThicknese = isthmusthicknese
          @Src = src
          @Transparent = transparent
          @MriAdc = mriadc
          @MriDwi = mridwi
          @MriT1 = mrit1
          @MriT2 = mrit2
          @CtHu = cthu
          @Suvmax = suvmax
          @Metabolism = metabolism
          @RadioactiveUptake = radioactiveuptake
          @SymDesc = symdesc
          @ImageFeature = imagefeature
          @Coords = coords
          @IsthmusThickness = isthmusthickness
        end

        def deserialize(params)
          unless params['Type'].nil?
            @Type = BlockInfo.new
            @Type.deserialize(params['Type'])
          end
          unless params['Part'].nil?
            @Part = Part.new
            @Part.deserialize(params['Part'])
          end
          unless params['Size'].nil?
            @Size = []
            params['Size'].each do |i|
              size_tmp = Size.new
              size_tmp.deserialize(i)
              @Size << size_tmp
            end
          end
          unless params['Multiple'].nil?
            @Multiple = Multiple.new
            @Multiple.deserialize(params['Multiple'])
          end
          unless params['AspectRatio'].nil?
            @AspectRatio = AspectRatio.new
            @AspectRatio.deserialize(params['AspectRatio'])
          end
          unless params['Edge'].nil?
            @Edge = BlockInfo.new
            @Edge.deserialize(params['Edge'])
          end
          unless params['InnerEcho'].nil?
            @InnerEcho = BlockInfo.new
            @InnerEcho.deserialize(params['InnerEcho'])
          end
          unless params['RearEcho'].nil?
            @RearEcho = BlockInfo.new
            @RearEcho.deserialize(params['RearEcho'])
          end
          unless params['Elastic'].nil?
            @Elastic = Elastic.new
            @Elastic.deserialize(params['Elastic'])
          end
          unless params['Shape'].nil?
            @Shape = BlockInfo.new
            @Shape.deserialize(params['Shape'])
          end
          unless params['ShapeAttr'].nil?
            @ShapeAttr = BlockInfo.new
            @ShapeAttr.deserialize(params['ShapeAttr'])
          end
          unless params['SkinMedulla'].nil?
            @SkinMedulla = BlockInfo.new
            @SkinMedulla.deserialize(params['SkinMedulla'])
          end
          unless params['Trend'].nil?
            @Trend = BlockInfo.new
            @Trend.deserialize(params['Trend'])
          end
          unless params['Calcification'].nil?
            @Calcification = BlockInfo.new
            @Calcification.deserialize(params['Calcification'])
          end
          unless params['Envelope'].nil?
            @Envelope = BlockInfo.new
            @Envelope.deserialize(params['Envelope'])
          end
          unless params['Enhancement'].nil?
            @Enhancement = BlockInfo.new
            @Enhancement.deserialize(params['Enhancement'])
          end
          unless params['LymphEnlargement'].nil?
            @LymphEnlargement = BlockInfo.new
            @LymphEnlargement.deserialize(params['LymphEnlargement'])
          end
          unless params['LymphDoor'].nil?
            @LymphDoor = BlockInfo.new
            @LymphDoor.deserialize(params['LymphDoor'])
          end
          unless params['Activity'].nil?
            @Activity = BlockInfo.new
            @Activity.deserialize(params['Activity'])
          end
          unless params['Operation'].nil?
            @Operation = BlockInfo.new
            @Operation.deserialize(params['Operation'])
          end
          unless params['CDFI'].nil?
            @CDFI = BlockInfo.new
            @CDFI.deserialize(params['CDFI'])
          end
          @Index = params['Index']
          unless params['SizeStatus'].nil?
            @SizeStatus = BlockInfo.new
            @SizeStatus.deserialize(params['SizeStatus'])
          end
          unless params['InnerEchoDistribution'].nil?
            @InnerEchoDistribution = BlockInfo.new
            @InnerEchoDistribution.deserialize(params['InnerEchoDistribution'])
          end
          unless params['InnerEchoType'].nil?
            @InnerEchoType = []
            params['InnerEchoType'].each do |i|
              blockinfo_tmp = BlockInfo.new
              blockinfo_tmp.deserialize(i)
              @InnerEchoType << blockinfo_tmp
            end
          end
          unless params['Outline'].nil?
            @Outline = BlockInfo.new
            @Outline.deserialize(params['Outline'])
          end
          unless params['Structure'].nil?
            @Structure = BlockInfo.new
            @Structure.deserialize(params['Structure'])
          end
          unless params['Density'].nil?
            @Density = BlockInfo.new
            @Density.deserialize(params['Density'])
          end
          unless params['Vas'].nil?
            @Vas = BlockInfo.new
            @Vas.deserialize(params['Vas'])
          end
          unless params['Cysticwall'].nil?
            @Cysticwall = BlockInfo.new
            @Cysticwall.deserialize(params['Cysticwall'])
          end
          unless params['Capsule'].nil?
            @Capsule = BlockInfo.new
            @Capsule.deserialize(params['Capsule'])
          end
          unless params['IsthmusThicknese'].nil?
            @IsthmusThicknese = Size.new
            @IsthmusThicknese.deserialize(params['IsthmusThicknese'])
          end
          @Src = params['Src']
          unless params['Transparent'].nil?
            @Transparent = BlockInfo.new
            @Transparent.deserialize(params['Transparent'])
          end
          unless params['MriAdc'].nil?
            @MriAdc = BlockInfo.new
            @MriAdc.deserialize(params['MriAdc'])
          end
          unless params['MriDwi'].nil?
            @MriDwi = BlockInfo.new
            @MriDwi.deserialize(params['MriDwi'])
          end
          unless params['MriT1'].nil?
            @MriT1 = BlockInfo.new
            @MriT1.deserialize(params['MriT1'])
          end
          unless params['MriT2'].nil?
            @MriT2 = BlockInfo.new
            @MriT2.deserialize(params['MriT2'])
          end
          unless params['CtHu'].nil?
            @CtHu = BlockInfo.new
            @CtHu.deserialize(params['CtHu'])
          end
          unless params['Suvmax'].nil?
            @Suvmax = BlockInfo.new
            @Suvmax.deserialize(params['Suvmax'])
          end
          unless params['Metabolism'].nil?
            @Metabolism = BlockInfo.new
            @Metabolism.deserialize(params['Metabolism'])
          end
          unless params['RadioactiveUptake'].nil?
            @RadioactiveUptake = BlockInfo.new
            @RadioactiveUptake.deserialize(params['RadioactiveUptake'])
          end
          unless params['SymDesc'].nil?
            @SymDesc = BlockInfo.new
            @SymDesc.deserialize(params['SymDesc'])
          end
          unless params['ImageFeature'].nil?
            @ImageFeature = BlockInfo.new
            @ImageFeature.deserialize(params['ImageFeature'])
          end
          unless params['Coords'].nil?
            @Coords = []
            params['Coords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coords << coord_tmp
            end
          end
          unless params['IsthmusThickness'].nil?
            @IsthmusThickness = Size.new
            @IsthmusThickness.deserialize(params['IsthmusThickness'])
          end
        end
      end

      # TurnPDFToObjectAsyncGetResult请求参数结构体
      class TurnPDFToObjectAsyncGetResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 加密任务ID。在上一步通过TurnPDFToObjectAsync 接口返回的TaskID。
        # 1、建议在上一步调用TurnPDFToObjectAsync接口传入PDF之后，等5-10分钟再调用此接口获取 json 结果。如果任务还没完成，可以等待几分钟之后再重新调用此接口获取 json 结果。
        # 2、临时加密存储的 json 结果会 24 小时后定时自动删除，因此TaskID 仅 24 小时内有效。
        # 3、TaskID 与腾讯云的账号绑定，通过 TurnPDFToObjectAsync 传入 PDF 文件和通过 TurnPDFToObjectAsyncGetResult 获取 json 结果，必须是同一个腾讯云账号，否则无法获取到 json 结果。
        # @type TaskID: String

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # TurnPDFToObjectAsyncGetResult返回参数结构体
      class TurnPDFToObjectAsyncGetResultResponse < TencentCloud::Common::AbstractModel
        # @param Template: 报告结构化结果
        # @type Template: :class:`Tencentcloud::Mrs.v20200910.models.Template`
        # @param TextTypeList: 多级分类结果
        # @type TextTypeList: Array
        # @param Block: 报告结构化结果(体检报告PDF结构化接口返回的 json 内容非常多，建议通过本地代码调用)
        # @type Block: :class:`Tencentcloud::Mrs.v20200910.models.Block`
        # @param IsBlock: 是否使用Block字段
        # @type IsBlock: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :TextTypeList, :Block, :IsBlock, :RequestId

        def initialize(template=nil, texttypelist=nil, block=nil, isblock=nil, requestid=nil)
          @Template = template
          @TextTypeList = texttypelist
          @Block = block
          @IsBlock = isblock
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          unless params['TextTypeList'].nil?
            @TextTypeList = []
            params['TextTypeList'].each do |i|
              texttype_tmp = TextType.new
              texttype_tmp.deserialize(i)
              @TextTypeList << texttype_tmp
            end
          end
          unless params['Block'].nil?
            @Block = Block.new
            @Block.deserialize(params['Block'])
          end
          @IsBlock = params['IsBlock']
          @RequestId = params['RequestId']
        end
      end

      # TurnPDFToObjectAsync请求参数结构体
      class TurnPDFToObjectAsyncRequest < TencentCloud::Common::AbstractModel
        # @param PdfInfo: 体检报告PDF文件信息, 目前只支持传PDF文件的Base64编码字符(PDF文件不能超过10MB，如果超过建议先压缩PDF，再转成base64)
        # @type PdfInfo: :class:`Tencentcloud::Mrs.v20200910.models.PdfInfo`
        # @param TextBasedPdfFlag: PDF文件中的文字是否为文本内容.
        # 如果该字段为true,那么就会自动判断是电子版还是图片，自动选择直接读取文字还是 OCR 方式.
        # 如果该字段为false, 那么始终采用 OCR 方式
        # @type TextBasedPdfFlag: Boolean

        attr_accessor :PdfInfo, :TextBasedPdfFlag

        def initialize(pdfinfo=nil, textbasedpdfflag=nil)
          @PdfInfo = pdfinfo
          @TextBasedPdfFlag = textbasedpdfflag
        end

        def deserialize(params)
          unless params['PdfInfo'].nil?
            @PdfInfo = PdfInfo.new
            @PdfInfo.deserialize(params['PdfInfo'])
          end
          @TextBasedPdfFlag = params['TextBasedPdfFlag']
        end
      end

      # TurnPDFToObjectAsync返回参数结构体
      class TurnPDFToObjectAsyncResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 加密任务ID。
        # 1、此 ID 是经过加密生成，是用于获取 PDF 返回 json 的凭证，需要由客户存储该 TaskID。
        # 2、建议在获取到TaskID 后，5-10分钟后再调用 TurnPDFToObjectAsyncGetResult 接口获取 json 结果。
        # 3、使用此接口，腾讯不会存储传入的 PDF 文件，但是会临时加密存储对应的 json 结果。如果不希望腾讯临时加密存储 json 结果，请使用 TurnPDFToObject 接口。
        # 4、加密存储的 json 结果会24小时后定时自动删除，因此TaskID 仅 24 小时内有效，请在24小时内调用接口 TurnPDFToObjectAsyncGetResult 获取对应 json 结果。
        # 5、TaskID 与腾讯云的账号绑定，通过 TurnPDFToObjectAsync 传入PDF文件和通过 TurnPDFToObjectAsyncGetResult 获取 json 结果，必须是同一个腾讯云账号。即其它人就算获取到 TaskID 也无法获取到 json 结果。
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # TurnPDFToObject请求参数结构体
      class TurnPDFToObjectRequest < TencentCloud::Common::AbstractModel
        # @param PdfInfo: 体检报告PDF文件信息, 目前只支持传PDF文件的Base64编码字符(PDF文件不能超过10MB，如果超过建议先压缩PDF，再转成base64)
        # @type PdfInfo: :class:`Tencentcloud::Mrs.v20200910.models.PdfInfo`
        # @param TextBasedPdfFlag: PDF文件中的文字是否为文本内容.
        # 如果该字段为true,那么就会自动判断是电子版还是图片，自动选择直接读取文字还是 OCR 方式.
        # 如果该字段为false, 那么始终采用 OCR 方式
        # @type TextBasedPdfFlag: Boolean

        attr_accessor :PdfInfo, :TextBasedPdfFlag

        def initialize(pdfinfo=nil, textbasedpdfflag=nil)
          @PdfInfo = pdfinfo
          @TextBasedPdfFlag = textbasedpdfflag
        end

        def deserialize(params)
          unless params['PdfInfo'].nil?
            @PdfInfo = PdfInfo.new
            @PdfInfo.deserialize(params['PdfInfo'])
          end
          @TextBasedPdfFlag = params['TextBasedPdfFlag']
        end
      end

      # TurnPDFToObject返回参数结构体
      class TurnPDFToObjectResponse < TencentCloud::Common::AbstractModel
        # @param Template: 报告结构化结果
        # @type Template: :class:`Tencentcloud::Mrs.v20200910.models.Template`
        # @param TextTypeList: 多级分类结果
        # @type TextTypeList: Array
        # @param Block: 报告结构化结果(体检报告PDF结构化接口返回的 json 内容非常多，建议通过本地代码调用)
        # @type Block: :class:`Tencentcloud::Mrs.v20200910.models.Block`
        # @param IsBlock: 是否使用Block字段
        # @type IsBlock: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :TextTypeList, :Block, :IsBlock, :RequestId

        def initialize(template=nil, texttypelist=nil, block=nil, isblock=nil, requestid=nil)
          @Template = template
          @TextTypeList = texttypelist
          @Block = block
          @IsBlock = isblock
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          unless params['TextTypeList'].nil?
            @TextTypeList = []
            params['TextTypeList'].each do |i|
              texttype_tmp = TextType.new
              texttype_tmp.deserialize(i)
              @TextTypeList << texttype_tmp
            end
          end
          unless params['Block'].nil?
            @Block = Block.new
            @Block.deserialize(params['Block'])
          end
          @IsBlock = params['IsBlock']
          @RequestId = params['RequestId']
        end
      end

      # 免疫接种记录
      class Vaccination < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Vaccine: 疫苗名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vaccine: String
        # @param Dose: 剂次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dose: String
        # @param Date: 接种日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param LotNumber: 疫苗批号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LotNumber: String
        # @param Manufacturer: 生产企业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manufacturer: String
        # @param Clinic: 接种单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clinic: String
        # @param Site: 接种部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Site: String
        # @param Provider: 接种者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Provider: String
        # @param Lot: 疫苗批号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lot: String

        attr_accessor :Id, :Vaccine, :Dose, :Date, :LotNumber, :Manufacturer, :Clinic, :Site, :Provider, :Lot

        def initialize(id=nil, vaccine=nil, dose=nil, date=nil, lotnumber=nil, manufacturer=nil, clinic=nil, site=nil, provider=nil, lot=nil)
          @Id = id
          @Vaccine = vaccine
          @Dose = dose
          @Date = date
          @LotNumber = lotnumber
          @Manufacturer = manufacturer
          @Clinic = clinic
          @Site = site
          @Provider = provider
          @Lot = lot
        end

        def deserialize(params)
          @Id = params['Id']
          @Vaccine = params['Vaccine']
          @Dose = params['Dose']
          @Date = params['Date']
          @LotNumber = params['LotNumber']
          @Manufacturer = params['Manufacturer']
          @Clinic = params['Clinic']
          @Site = params['Site']
          @Provider = params['Provider']
          @Lot = params['Lot']
        end
      end

      # 免疫接种证明
      class VaccineCertificate < TencentCloud::Common::AbstractModel
        # @param VaccineList: 免疫接种列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VaccineList: Array
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :VaccineList, :Page

        def initialize(vaccinelist=nil, page=nil)
          @VaccineList = vaccinelist
          @Page = page
        end

        def deserialize(params)
          unless params['VaccineList'].nil?
            @VaccineList = []
            params['VaccineList'].each do |i|
              vaccination_tmp = Vaccination.new
              vaccination_tmp.deserialize(i)
              @VaccineList << vaccination_tmp
            end
          end
          @Page = params['Page']
        end
      end

      # 值
      class Value < TencentCloud::Common::AbstractModel
        # @param Grade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: String
        # @param Percent: 百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Array
        # @param Positive: 阳性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String

        attr_accessor :Grade, :Percent, :Positive

        def initialize(grade=nil, percent=nil, positive=nil)
          @Grade = grade
          @Percent = percent
          @Positive = positive
        end

        def deserialize(params)
          @Grade = params['Grade']
          @Percent = params['Percent']
          @Positive = params['Positive']
        end
      end

      # 值块
      class ValueBlock < TencentCloud::Common::AbstractModel
        # @param Grade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: String
        # @param Percent: 百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Array
        # @param Positive: 阳性阴性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String

        attr_accessor :Grade, :Percent, :Positive

        def initialize(grade=nil, percent=nil, positive=nil)
          @Grade = grade
          @Percent = percent
          @Positive = positive
        end

        def deserialize(params)
          @Grade = params['Grade']
          @Percent = params['Percent']
          @Positive = params['Positive']
        end
      end

      # 体检报告信息-包含单位
      class ValueUnitItem < TencentCloud::Common::AbstractModel
        # @param Name: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Item: 项目原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Result: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: :class:`Tencentcloud::Mrs.v20200910.models.PhysicalBaseItem`
        # @param Page: 数据在原PDF文件中的第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer

        attr_accessor :Name, :Item, :Result, :Unit, :Page

        def initialize(name=nil, item=nil, result=nil, unit=nil, page=nil)
          @Name = name
          @Item = item
          @Result = result
          @Unit = unit
          @Page = page
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Item'].nil?
            @Item = PhysicalBaseItem.new
            @Item.deserialize(params['Item'])
          end
          unless params['Result'].nil?
            @Result = PhysicalBaseItem.new
            @Result.deserialize(params['Result'])
          end
          unless params['Unit'].nil?
            @Unit = PhysicalBaseItem.new
            @Unit.deserialize(params['Unit'])
          end
          @Page = params['Page']
        end
      end

    end
  end
end

