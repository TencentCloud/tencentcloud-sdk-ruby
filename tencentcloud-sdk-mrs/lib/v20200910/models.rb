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

      # 活检部位
      class BiopsyPart < TencentCloud::Common::AbstractModel
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Src: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Src: String

        attr_accessor :Value, :Src
        
        def initialize(value=nil, src=nil)
          @Value = value
          @Src = src
        end

        def deserialize(params)
          @Value = params['Value']
          @Src = params['Src']
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

        attr_accessor :Index, :Positive, :Src, :Value, :Type, :Name
        
        def initialize(index=nil, positive=nil, src=nil, value=nil, type=nil, name=nil)
          @Index = index
          @Positive = positive
          @Src = src
          @Value = value
          @Type = type
          @Name = name
        end

        def deserialize(params)
          @Index = params['Index']
          @Positive = params['Positive']
          @Src = params['Src']
          @Value = params['Value']
          @Type = params['Type']
          @Name = params['Name']
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

        attr_accessor :Text, :Organ, :Tuber
        
        def initialize(text=nil, organ=nil, tuber=nil)
          @Text = text
          @Organ = organ
          @Tuber = tuber
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

        attr_accessor :Text, :Organ
        
        def initialize(text=nil, organ=nil)
          @Text = text
          @Organ = organ
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

        attr_accessor :Part, :Index, :Src, :PartAlias, :SymDescList
        
        def initialize(part=nil, index=nil, src=nil, partalias=nil, symdesclist=nil)
          @Part = part
          @Index = index
          @Src = src
          @PartAlias = partalias
          @SymDescList = symdesclist
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

        attr_accessor :DischargeDiagnosis, :PathologicalDiagnosis, :ClinicalDiagnosis
        
        def initialize(dischargediagnosis=nil, pathologicaldiagnosis=nil, clinicaldiagnosis=nil)
          @DischargeDiagnosis = dischargediagnosis
          @PathologicalDiagnosis = pathologicaldiagnosis
          @ClinicalDiagnosis = clinicaldiagnosis
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

        attr_accessor :ImageInfoList, :HandleParam, :Type
        
        def initialize(imageinfolist=nil, handleparam=nil, type=nil)
          @ImageInfoList = imageinfolist
          @HandleParam = handleparam
          @Type = type
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

        attr_accessor :ImageInfoList, :HandleParam, :Type, :IsUsedClassify
        
        def initialize(imageinfolist=nil, handleparam=nil, type=nil, isusedclassify=nil)
          @ImageInfoList = imageinfolist
          @HandleParam = handleparam
          @Type = type
          @IsUsedClassify = isusedclassify
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

        attr_accessor :Code, :Scode, :Name, :Sname, :Result, :Unit, :Range, :Arrow, :Normal, :ItemString
        
        def initialize(code=nil, scode=nil, name=nil, sname=nil, result=nil, unit=nil, range=nil, arrow=nil, normal=nil, itemstring=nil)
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

        attr_accessor :Part, :PartDirection, :Tissue, :TissueDirection, :Upper
        
        def initialize(part=nil, partdirection=nil, tissue=nil, tissuedirection=nil, upper=nil)
          @Part = part
          @PartDirection = partdirection
          @Tissue = tissue
          @TissueDirection = tissuedirection
          @Upper = upper
        end

        def deserialize(params)
          @Part = params['Part']
          @PartDirection = params['PartDirection']
          @Tissue = params['Tissue']
          @TissueDirection = params['TissueDirection']
          @Upper = params['Upper']
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

        attr_accessor :Number, :Type, :Unit
        
        def initialize(number=nil, type=nil, unit=nil)
          @Number = number
          @Type = type
          @Unit = unit
        end

        def deserialize(params)
          @Number = params['Number']
          @Type = params['Type']
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

        attr_accessor :Part, :Size, :Envelope, :Edge, :InnerEcho, :Gland, :Shape, :Thickness, :ShapeAttr, :CDFI, :SymDesc, :SizeStatus, :Outline, :Structure, :Density, :Vas, :Cysticwall, :Capsule, :IsthmusThicknese, :InnerEchoDistribution, :Src, :Index
        
        def initialize(part=nil, size=nil, envelope=nil, edge=nil, innerecho=nil, gland=nil, shape=nil, thickness=nil, shapeattr=nil, cdfi=nil, symdesc=nil, sizestatus=nil, outline=nil, structure=nil, density=nil, vas=nil, cysticwall=nil, capsule=nil, isthmusthicknese=nil, innerechodistribution=nil, src=nil, index=nil)
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

        attr_accessor :Index, :NormPart, :Src, :Value, :Name
        
        def initialize(index=nil, normpart=nil, src=nil, value=nil, name=nil)
          @Index = index
          @NormPart = normpart
          @Src = src
          @Value = value
          @Name = name
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

        attr_accessor :Index, :NormSize, :Src, :Value
        
        def initialize(index=nil, normsize=nil, src=nil, value=nil)
          @Index = index
          @NormSize = normsize
          @Src = src
          @Value = value
        end

        def deserialize(params)
          @Index = params['Index']
          unless params['NormSize'].nil?
            @NormSize = NormSize.new
            @NormSize.deserialize(params['NormSize'])
          end
          @Src = params['Src']
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

        attr_accessor :Symptom, :Text
        
        def initialize(symptom=nil, text=nil)
          @Symptom = symptom
          @Text = text
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
        end
      end

      # 手术记录
      class Surgery < TencentCloud::Common::AbstractModel
        # @param SurgeryHistory: 手术史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurgeryHistory: :class:`Tencentcloud::Mrs.v20200910.models.SurgeryHistory`

        attr_accessor :SurgeryHistory
        
        def initialize(surgeryhistory=nil)
          @SurgeryHistory = surgeryhistory
        end

        def deserialize(params)
          unless params['SurgeryHistory'].nil?
            @SurgeryHistory = SurgeryHistory.new
            @SurgeryHistory.deserialize(params['SurgeryHistory'])
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

        attr_accessor :Grade, :Part, :Index, :Symptom, :Attrs, :Src
        
        def initialize(grade=nil, part=nil, index=nil, symptom=nil, attrs=nil, src=nil)
          @Grade = grade
          @Part = part
          @Index = index
          @Symptom = symptom
          @Attrs = attrs
          @Src = src
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
        # @param VaccineCertificate: 免疫接种证明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VaccineCertificate: :class:`Tencentcloud::Mrs.v20200910.models.VaccineCertificate`
        # @param OcrText: OCR文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrText: String
        # @param OcrResult: OCR拼接后文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrResult: String

        attr_accessor :PatientInfo, :ReportInfo, :Check, :Pathology, :MedDoc, :DiagCert, :FirstPage, :Indicator, :ReportType, :MedicalRecordInfo, :Hospitalization, :Surgery, :Electrocardiogram, :Endoscopy, :Prescription, :VaccineCertificate, :OcrText, :OcrResult
        
        def initialize(patientinfo=nil, reportinfo=nil, check=nil, pathology=nil, meddoc=nil, diagcert=nil, firstpage=nil, indicator=nil, reporttype=nil, medicalrecordinfo=nil, hospitalization=nil, surgery=nil, electrocardiogram=nil, endoscopy=nil, prescription=nil, vaccinecertificate=nil, ocrtext=nil, ocrresult=nil)
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
        end
      end

      # TextToClass请求参数结构体
      class TextToClassRequest < TencentCloud::Common::AbstractModel
        # @param Text: 报告文本
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
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

        attr_accessor :Text, :Type, :IsUsedClassify
        
        def initialize(text=nil, type=nil, isusedclassify=nil)
          @Text = text
          @Type = type
          @IsUsedClassify = isusedclassify
        end

        def deserialize(params)
          @Text = params['Text']
          @Type = params['Type']
          @IsUsedClassify = params['IsUsedClassify']
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

        attr_accessor :Type, :Part, :Size, :Multiple, :AspectRatio, :Edge, :InnerEcho, :RearEcho, :Elastic, :Shape, :ShapeAttr, :SkinMedulla, :Trend, :Calcification, :Envelope, :Enhancement, :LymphEnlargement, :LymphDoor, :Activity, :Operation, :CDFI, :Index, :SizeStatus, :InnerEchoDistribution, :InnerEchoType, :Outline, :Structure, :Density, :Vas, :Cysticwall, :Capsule, :IsthmusThicknese, :Src
        
        def initialize(type=nil, part=nil, size=nil, multiple=nil, aspectratio=nil, edge=nil, innerecho=nil, rearecho=nil, elastic=nil, shape=nil, shapeattr=nil, skinmedulla=nil, trend=nil, calcification=nil, envelope=nil, enhancement=nil, lymphenlargement=nil, lymphdoor=nil, activity=nil, operation=nil, cdfi=nil, index=nil, sizestatus=nil, innerechodistribution=nil, innerechotype=nil, outline=nil, structure=nil, density=nil, vas=nil, cysticwall=nil, capsule=nil, isthmusthicknese=nil, src=nil)
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

        attr_accessor :Id, :Vaccine, :Dose, :Date, :LotNumber, :Manufacturer, :Clinic, :Site, :Provider
        
        def initialize(id=nil, vaccine=nil, dose=nil, date=nil, lotnumber=nil, manufacturer=nil, clinic=nil, site=nil, provider=nil)
          @Id = id
          @Vaccine = vaccine
          @Dose = dose
          @Date = date
          @LotNumber = lotnumber
          @Manufacturer = manufacturer
          @Clinic = clinic
          @Site = site
          @Provider = provider
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

    end
  end
end

