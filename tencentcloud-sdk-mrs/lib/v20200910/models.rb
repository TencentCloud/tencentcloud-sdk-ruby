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

        attr_accessor :NeonatalInfo, :MotherInfo, :FatherInfo, :IssueInfo
        
        def initialize(neonatalinfo=nil, motherinfo=nil, fatherinfo=nil, issueinfo=nil)
          @NeonatalInfo = neonatalinfo
          @MotherInfo = motherinfo
          @FatherInfo = fatherinfo
          @IssueInfo = issueinfo
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

        attr_accessor :Desc, :Summary
        
        def initialize(desc=nil, summary=nil)
          @Desc = desc
          @Summary = summary
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

        attr_accessor :CovidItems, :Version
        
        def initialize(coviditems=nil, version=nil)
          @CovidItems = coviditems
          @Version = version
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

        attr_accessor :Advice, :Diagnosis
        
        def initialize(advice=nil, diagnosis=nil)
          @Advice = advice
          @Diagnosis = diagnosis
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

        attr_accessor :DiseaseHistory, :PersonalHistory, :DrugHistory, :TreatmentRecord, :ParagraphBlock
        
        def initialize(diseasehistory=nil, personalhistory=nil, drughistory=nil, treatmentrecord=nil, paragraphblock=nil)
          @DiseaseHistory = diseasehistory
          @PersonalHistory = personalhistory
          @DrugHistory = drughistory
          @TreatmentRecord = treatmentrecord
          @ParagraphBlock = paragraphblock
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

        attr_accessor :EcgDescription, :EcgDiagnosis
        
        def initialize(ecgdescription=nil, ecgdiagnosis=nil)
          @EcgDescription = ecgdescription
          @EcgDiagnosis = ecgdiagnosis
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

        attr_accessor :BiopsyPart, :Desc, :Summary
        
        def initialize(biopsypart=nil, desc=nil, summary=nil)
          @BiopsyPart = biopsypart
          @Desc = desc
          @Summary = summary
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

        attr_accessor :EyeItems, :Version
        
        def initialize(eyeitems=nil, version=nil)
          @EyeItems = eyeitems
          @Version = version
        end

        def deserialize(params)
          unless params['EyeItems'].nil?
            @EyeItems = EyeItem.new
            @EyeItems.deserialize(params['EyeItems'])
          end
          @Version = params['Version']
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

        attr_accessor :DischargeDiagnosis, :PathologicalDiagnosis, :ClinicalDiagnosis, :DamagePoi, :Fp2NdItems
        
        def initialize(dischargediagnosis=nil, pathologicaldiagnosis=nil, clinicaldiagnosis=nil, damagepoi=nil, fp2nditems=nil)
          @DischargeDiagnosis = dischargediagnosis
          @PathologicalDiagnosis = pathologicaldiagnosis
          @ClinicalDiagnosis = clinicaldiagnosis
          @DamagePoi = damagepoi
          @Fp2NdItems = fp2nditems
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

        attr_accessor :AdmissionTime, :DischargeTime, :AdmissionDays, :AdmissionDignosis, :AdmissionCondition, :DiagnosisTreatment, :DischargeDiagnosis, :DischargeInstruction
        
        def initialize(admissiontime=nil, dischargetime=nil, admissiondays=nil, admissiondignosis=nil, admissioncondition=nil, diagnosistreatment=nil, dischargediagnosis=nil, dischargeinstruction=nil)
          @AdmissionTime = admissiontime
          @DischargeTime = dischargetime
          @AdmissionDays = admissiondays
          @AdmissionDignosis = admissiondignosis
          @AdmissionCondition = admissioncondition
          @DiagnosisTreatment = diagnosistreatment
          @DischargeDiagnosis = dischargediagnosis
          @DischargeInstruction = dischargeinstruction
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
        # @param Url: 图片url
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ImageInfoList: 图片列表，允许传入多张图片，目前只支持传入图片base64编码，图片url暂不支持
        # @type ImageInfoList: Array
        # @param HandleParam: 图片处理参数
        # @type HandleParam: :class:`Tencentcloud::Mrs.v20200910.models.HandleParam`
        # @param Type: 报告类型，目前支持11（检验报告），12（检查报告），15（病理报告），28（出院报告），29（入院报告），210（门诊病历），212（手术记录），218（诊断证明），363（心电图），27（内窥镜检查），215（处方单），219（免疫接种证明），301（C14呼气试验）。如果不清楚报告类型，可以使用分类引擎，该字段传0（同时IsUsedClassify字段必须为True，否则无法输出结果）
        # @type Type: Integer
        # @param IsUsedClassify: 是否使用分类引擎，当不确定报告类型时，可以使用收费的报告分类引擎服务。若该字段为 False，则 Type 字段不能为 0，否则无法输出结果。
        # 注意：当 IsUsedClassify 为True 时，表示使用收费的报告分类服务，将会产生额外的费用，具体收费标准参见 [购买指南的产品价格](https://cloud.tencent.com/document/product/1314/54264)。
        # @type IsUsedClassify: Boolean
        # @param UserType: 后付费的用户类型，新客户传1，老客户可不传或传 0。2022 年 12 月 15 新增了计费项，在此时间之前已经通过商务指定优惠价格的大客户，请不传这个字段或传 0，如果传 1 会导致以前获得的折扣价格失效。在 2022 年 12 月 15 日之后，通过商务指定优惠价格的大客户请传 1。
        # @type UserType: Integer
        # @param ReportTypeVersion: 可选。用于指定不同报告使用的结构化引擎版本，不同版本返回的JSON 数据结果不兼容。若不指定版本号，就默认用旧的版本号。
        # （1）检验报告 11，默认使用 V2，最高支持 V3。
        # （2）病理报告 15，默认使用 V1，最高支持 V2。
        # （3）入院记录29、出院记录 28、病历记录 216、病程记录 217、门诊记录 210，默认使用 V1，最高支持 V2。
        # @type ReportTypeVersion: Array

        attr_accessor :ImageInfoList, :HandleParam, :Type, :IsUsedClassify, :UserType, :ReportTypeVersion
        
        def initialize(imageinfolist=nil, handleparam=nil, type=nil, isusedclassify=nil, usertype=nil, reporttypeversion=nil)
          @ImageInfoList = imageinfolist
          @HandleParam = handleparam
          @Type = type
          @IsUsedClassify = isusedclassify
          @UserType = usertype
          @ReportTypeVersion = reporttypeversion
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

      # ImageToObject返回参数结构体
      class ImageToObjectResponse < TencentCloud::Common::AbstractModel
        # @param Template: 报告结构化结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Template: :class:`Tencentcloud::Mrs.v20200910.models.Template`
        # @param TextTypeList: 多级分类结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :Indicators
        
        def initialize(indicators=nil)
          @Indicators = indicators
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

        attr_accessor :TableIndictors, :Version
        
        def initialize(tableindictors=nil, version=nil)
          @TableIndictors = tableindictors
          @Version = version
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

        attr_accessor :Desc, :Summary, :OcrText
        
        def initialize(desc=nil, summary=nil, ocrtext=nil)
          @Desc = desc
          @Summary = summary
          @OcrText = ocrtext
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

        attr_accessor :Advice, :Diagnosis, :DiseaseMedicalHistory, :PersonalMedicalHistory, :ObstericalMedicalHistory, :FamilyMedicalHistory, :MenstrualMedicalHistory, :TreatmentRecord
        
        def initialize(advice=nil, diagnosis=nil, diseasemedicalhistory=nil, personalmedicalhistory=nil, obstericalmedicalhistory=nil, familymedicalhistory=nil, menstrualmedicalhistory=nil, treatmentrecord=nil)
          @Advice = advice
          @Diagnosis = diagnosis
          @DiseaseMedicalHistory = diseasemedicalhistory
          @PersonalMedicalHistory = personalmedicalhistory
          @ObstericalMedicalHistory = obstericalmedicalhistory
          @FamilyMedicalHistory = familymedicalhistory
          @MenstrualMedicalHistory = menstrualmedicalhistory
          @TreatmentRecord = treatmentrecord
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

        attr_accessor :DiagnosisTime, :DiagnosisDepartmentName, :DiagnosisDoctorName, :ClinicalDiagnosis, :MainNarration, :PhysicalExamination, :InspectionFindings, :TreatmentOpinion
        
        def initialize(diagnosistime=nil, diagnosisdepartmentname=nil, diagnosisdoctorname=nil, clinicaldiagnosis=nil, mainnarration=nil, physicalexamination=nil, inspectionfindings=nil, treatmentopinion=nil)
          @DiagnosisTime = diagnosistime
          @DiagnosisDepartmentName = diagnosisdepartmentname
          @DiagnosisDoctorName = diagnosisdoctorname
          @ClinicalDiagnosis = clinicaldiagnosis
          @MainNarration = mainnarration
          @PhysicalExamination = physicalexamination
          @InspectionFindings = inspectionfindings
          @TreatmentOpinion = treatmentopinion
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

        attr_accessor :Part, :Size, :Envelope, :Edge, :InnerEcho, :Gland, :Shape, :Thickness, :ShapeAttr, :CDFI, :SymDesc, :SizeStatus, :Outline, :Structure, :Density, :Vas, :Cysticwall, :Capsule, :IsthmusThicknese, :InnerEchoDistribution, :Src, :Index, :Transparent, :MriAdc, :MriDwi, :MriT1, :MriT2, :CtHu, :Suvmax, :Metabolism, :RadioactiveUptake, :LymphEnlargement, :ImageFeature, :Duct, :Trend, :Operation, :Coords
        
        def initialize(part=nil, size=nil, envelope=nil, edge=nil, innerecho=nil, gland=nil, shape=nil, thickness=nil, shapeattr=nil, cdfi=nil, symdesc=nil, sizestatus=nil, outline=nil, structure=nil, density=nil, vas=nil, cysticwall=nil, capsule=nil, isthmusthicknese=nil, innerechodistribution=nil, src=nil, index=nil, transparent=nil, mriadc=nil, mridwi=nil, mrit1=nil, mrit2=nil, cthu=nil, suvmax=nil, metabolism=nil, radioactiveuptake=nil, lymphenlargement=nil, imagefeature=nil, duct=nil, trend=nil, operation=nil, coords=nil)
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

        attr_accessor :IncisionHealingText, :AuxiliaryExaminationText, :SpecialExamText, :OutpatientDiagnosisText, :AdmissionConditionText, :CheckAndTreatmentProcessText, :SymptomsAndSignsText, :DischargeInstructionsText, :AdmissionDiagnosisText, :SurgeryConditionText, :PathologicalDiagnosisText, :DischargeConditionText, :CheckRecordText, :ChiefComplaintText, :DischargeDiagnosisText, :MainDiseaseHistoryText, :DiseasePresentText, :PersonalHistoryText, :MenstruallHistoryText, :ObstericalHistoryText, :FamilyHistoryText, :AllergyHistoryText, :DiseaseHistoryText, :OtherDiagnosisText, :BodyExaminationText, :SpecialistExaminationText, :TreatmentResultText
        
        def initialize(incisionhealingtext=nil, auxiliaryexaminationtext=nil, specialexamtext=nil, outpatientdiagnosistext=nil, admissionconditiontext=nil, checkandtreatmentprocesstext=nil, symptomsandsignstext=nil, dischargeinstructionstext=nil, admissiondiagnosistext=nil, surgeryconditiontext=nil, pathologicaldiagnosistext=nil, dischargeconditiontext=nil, checkrecordtext=nil, chiefcomplainttext=nil, dischargediagnosistext=nil, maindiseasehistorytext=nil, diseasepresenttext=nil, personalhistorytext=nil, menstruallhistorytext=nil, obstericalhistorytext=nil, familyhistorytext=nil, allergyhistorytext=nil, diseasehistorytext=nil, otherdiagnosistext=nil, bodyexaminationtext=nil, specialistexaminationtext=nil, treatmentresulttext=nil)
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

        attr_accessor :PathologicalReportType, :Desc, :Summary, :ReportText, :LymphTotal, :LymphNodes, :Ihc, :Clinical, :Precancer, :Malignant, :Benigntumor, :SampleType, :LymphSize, :Molecular
        
        def initialize(pathologicalreporttype=nil, desc=nil, summary=nil, reporttext=nil, lymphtotal=nil, lymphnodes=nil, ihc=nil, clinical=nil, precancer=nil, malignant=nil, benigntumor=nil, sampletype=nil, lymphsize=nil, molecular=nil)
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
        # @param Nation: 民族
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

        attr_accessor :MedicineList
        
        def initialize(medicinelist=nil)
          @MedicineList = medicinelist
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

        attr_accessor :Hospital, :DepartmentName, :BillingTime, :ReportTime, :InspectTime, :CheckNum, :ImageNum, :RadiationNum, :TestNum, :OutpatientNum, :PathologyNum, :InHospitalNum, :SampleNum, :SampleType, :MedicalRecordNum, :ReportName, :UltraNum, :Diagnose, :CheckItem, :CheckMethod, :DiagnoseTime, :HealthCheckupNum, :OtherTime, :PrintTime, :Times
        
        def initialize(hospital=nil, departmentname=nil, billingtime=nil, reporttime=nil, inspecttime=nil, checknum=nil, imagenum=nil, radiationnum=nil, testnum=nil, outpatientnum=nil, pathologynum=nil, inhospitalnum=nil, samplenum=nil, sampletype=nil, medicalrecordnum=nil, reportname=nil, ultranum=nil, diagnose=nil, checkitem=nil, checkmethod=nil, diagnosetime=nil, healthcheckupnum=nil, othertime=nil, printtime=nil, times=nil)
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

        attr_accessor :Text, :Items
        
        def initialize(text=nil, items=nil)
          @Text = text
          @Items = items
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

        attr_accessor :SurgeryHistory, :OtherInfo
        
        def initialize(surgeryhistory=nil, otherinfo=nil)
          @SurgeryHistory = surgeryhistory
          @OtherInfo = otherinfo
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :Timeline
        
        def initialize(timeline=nil)
          @Timeline = timeline
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

        attr_accessor :DmissionCondition, :ChiefComplaint, :DiseasePresent, :SymptomsAndSigns, :AuxiliaryExamination, :BodyExamination, :SpecialistExamination, :MentalExamination, :CheckRecord, :InspectResult, :IncisionHealing, :TreatmentSuggestion, :FollowUpRequirements, :CheckAndTreatmentProcess, :SurgeryCondition, :ConditionChanges, :DischargeCondition, :PTNM, :PTNMM, :PTNMN, :PTNMT, :ECOG, :NRS, :KPS, :DeathDate, :RelapseDate, :ObservationDays
        
        def initialize(dmissioncondition=nil, chiefcomplaint=nil, diseasepresent=nil, symptomsandsigns=nil, auxiliaryexamination=nil, bodyexamination=nil, specialistexamination=nil, mentalexamination=nil, checkrecord=nil, inspectresult=nil, incisionhealing=nil, treatmentsuggestion=nil, followuprequirements=nil, checkandtreatmentprocess=nil, surgerycondition=nil, conditionchanges=nil, dischargecondition=nil, ptnm=nil, ptnmm=nil, ptnmn=nil, ptnmt=nil, ecog=nil, nrs=nil, kps=nil, deathdate=nil, relapsedate=nil, observationdays=nil)
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

        attr_accessor :Type, :Part, :Size, :Multiple, :AspectRatio, :Edge, :InnerEcho, :RearEcho, :Elastic, :Shape, :ShapeAttr, :SkinMedulla, :Trend, :Calcification, :Envelope, :Enhancement, :LymphEnlargement, :LymphDoor, :Activity, :Operation, :CDFI, :Index, :SizeStatus, :InnerEchoDistribution, :InnerEchoType, :Outline, :Structure, :Density, :Vas, :Cysticwall, :Capsule, :IsthmusThicknese, :Src, :Transparent, :MriAdc, :MriDwi, :MriT1, :MriT2, :CtHu, :Suvmax, :Metabolism, :RadioactiveUptake, :SymDesc, :ImageFeature, :Coords
        
        def initialize(type=nil, part=nil, size=nil, multiple=nil, aspectratio=nil, edge=nil, innerecho=nil, rearecho=nil, elastic=nil, shape=nil, shapeattr=nil, skinmedulla=nil, trend=nil, calcification=nil, envelope=nil, enhancement=nil, lymphenlargement=nil, lymphdoor=nil, activity=nil, operation=nil, cdfi=nil, index=nil, sizestatus=nil, innerechodistribution=nil, innerechotype=nil, outline=nil, structure=nil, density=nil, vas=nil, cysticwall=nil, capsule=nil, isthmusthicknese=nil, src=nil, transparent=nil, mriadc=nil, mridwi=nil, mrit1=nil, mrit2=nil, cthu=nil, suvmax=nil, metabolism=nil, radioactiveuptake=nil, symdesc=nil, imagefeature=nil, coords=nil)
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

        attr_accessor :VaccineList
        
        def initialize(vaccinelist=nil)
          @VaccineList = vaccinelist
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

    end
  end
end

