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

      # 提取属性内容
      class Attribute < TencentCloud::Common::AbstractModel
        # @param Text: 原文文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 标准化提取值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Index: 对应上级文本位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer

        attr_accessor :Text, :Value, :Index
        
        def initialize(text=nil, value=nil, index=nil)
          @Text = text
          @Value = value
          @Index = index
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          @Index = params['Index']
        end
      end

      # 报告基本信息
      class BasicInfo < TencentCloud::Common::AbstractModel
        # @param HospitalName: 医院名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HospitalName: String
        # @param DepartmentName: 科室名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param ReportName: 报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportName: String
        # @param ReportTime: 报告时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTime: String
        # @param OutpatientNum: 门诊号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutpatientNum: String
        # @param InHospitalNum: 住院号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InHospitalNum: String
        # @param InspectionNum: 检查号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InspectionNum: String
        # @param ImageNum: 影像号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageNum: String
        # @param RadiationNum: 放射号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RadiationNum: String
        # @param PathologyNum: 病理号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologyNum: String
        # @param BedNum: 床位号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BedNum: String
        # @param InHospitalTime: 入院时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InHospitalTime: String
        # @param OutHospitalTime: 出院时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutHospitalTime: String
        # @param CureDuration: 住院治疗时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CureDuration: String
        # @param HospitalizationTimes: 住院次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HospitalizationTimes: String
        # @param InspectionTime: 送检检查时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InspectionTime: String

        attr_accessor :HospitalName, :DepartmentName, :ReportName, :ReportTime, :OutpatientNum, :InHospitalNum, :InspectionNum, :ImageNum, :RadiationNum, :PathologyNum, :BedNum, :InHospitalTime, :OutHospitalTime, :CureDuration, :HospitalizationTimes, :InspectionTime
        
        def initialize(hospitalname=nil, departmentname=nil, reportname=nil, reporttime=nil, outpatientnum=nil, inhospitalnum=nil, inspectionnum=nil, imagenum=nil, radiationnum=nil, pathologynum=nil, bednum=nil, inhospitaltime=nil, outhospitaltime=nil, cureduration=nil, hospitalizationtimes=nil, inspectiontime=nil)
          @HospitalName = hospitalname
          @DepartmentName = departmentname
          @ReportName = reportname
          @ReportTime = reporttime
          @OutpatientNum = outpatientnum
          @InHospitalNum = inhospitalnum
          @InspectionNum = inspectionnum
          @ImageNum = imagenum
          @RadiationNum = radiationnum
          @PathologyNum = pathologynum
          @BedNum = bednum
          @InHospitalTime = inhospitaltime
          @OutHospitalTime = outhospitaltime
          @CureDuration = cureduration
          @HospitalizationTimes = hospitalizationtimes
          @InspectionTime = inspectiontime
        end

        def deserialize(params)
          @HospitalName = params['HospitalName']
          @DepartmentName = params['DepartmentName']
          @ReportName = params['ReportName']
          @ReportTime = params['ReportTime']
          @OutpatientNum = params['OutpatientNum']
          @InHospitalNum = params['InHospitalNum']
          @InspectionNum = params['InspectionNum']
          @ImageNum = params['ImageNum']
          @RadiationNum = params['RadiationNum']
          @PathologyNum = params['PathologyNum']
          @BedNum = params['BedNum']
          @InHospitalTime = params['InHospitalTime']
          @OutHospitalTime = params['OutHospitalTime']
          @CureDuration = params['CureDuration']
          @HospitalizationTimes = params['HospitalizationTimes']
          @InspectionTime = params['InspectionTime']
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

      # 医疗事例
      class Case < TencentCloud::Common::AbstractModel
        # @param Time: 时间发生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Value: 事件提取值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Type: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Desc: 类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Text: 对应原文内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Time, :Value, :Type, :Desc, :Text
        
        def initialize(time=nil, value=nil, type=nil, desc=nil, text=nil)
          @Time = time
          @Value = value
          @Type = type
          @Desc = desc
          @Text = text
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
          @Type = params['Type']
          @Desc = params['Desc']
          @Text = params['Text']
        end
      end

      # 病历资料
      class CaseHistory < TencentCloud::Common::AbstractModel
        # @param Treatment: 诊治信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Treatment: :class:`Tencentcloud::Mrs.v20200910.models.Treatment`
        # @param HealthHistory: 健康史信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthHistory: :class:`Tencentcloud::Mrs.v20200910.models.HealthHistory`
        # @param CaseHistoryList: 病例时间轴
        # @type CaseHistoryList: Array

        attr_accessor :Treatment, :HealthHistory, :CaseHistoryList
        
        def initialize(treatment=nil, healthhistory=nil, casehistorylist=nil)
          @Treatment = treatment
          @HealthHistory = healthhistory
          @CaseHistoryList = casehistorylist
        end

        def deserialize(params)
          unless params['Treatment'].nil?
            @Treatment = Treatment.new
            @Treatment.deserialize(params['Treatment'])
          end
          unless params['HealthHistory'].nil?
            @HealthHistory = HealthHistory.new
            @HealthHistory.deserialize(params['HealthHistory'])
          end
          unless params['CaseHistoryList'].nil?
            @CaseHistoryList = []
            params['CaseHistoryList'].each do |i|
              case_tmp = Case.new
              case_tmp.deserialize(i)
              @CaseHistoryList << case_tmp
            end
          end
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

      # 检查报告结论，常见于病理检查报告
      class Conclusion < TencentCloud::Common::AbstractModel
        # @param Text: 原文文本内容
        # @type Text: String
        # @param SymptomList: 病症列表
        # @type SymptomList: Array

        attr_accessor :Text, :SymptomList
        
        def initialize(text=nil, symptomlist=nil)
          @Text = text
          @SymptomList = symptomlist
        end

        def deserialize(params)
          @Text = params['Text']
          unless params['SymptomList'].nil?
            @SymptomList = []
            params['SymptomList'].each do |i|
              symptom_tmp = Symptom.new
              symptom_tmp.deserialize(i)
              @SymptomList << symptom_tmp
            end
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

      # 病史
      class DiseaseHistory < TencentCloud::Common::AbstractModel
        # @param Allergy: 过敏史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Allergy: String
        # @param Infect: 传染疾病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Infect: String
        # @param MainDisease: 主要病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDisease: String
        # @param Operation: 手术外伤史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param Transfusion: 输血史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transfusion: String
        # @param Disease: 疾病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disease: String

        attr_accessor :Allergy, :Infect, :MainDisease, :Operation, :Transfusion, :Disease
        
        def initialize(allergy=nil, infect=nil, maindisease=nil, operation=nil, transfusion=nil, disease=nil)
          @Allergy = allergy
          @Infect = infect
          @MainDisease = maindisease
          @Operation = operation
          @Transfusion = transfusion
          @Disease = disease
        end

        def deserialize(params)
          @Allergy = params['Allergy']
          @Infect = params['Infect']
          @MainDisease = params['MainDisease']
          @Operation = params['Operation']
          @Transfusion = params['Transfusion']
          @Disease = params['Disease']
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

      # 家族史
      class FamilyHistory < TencentCloud::Common::AbstractModel
        # @param RelativeMember: 家族成员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeMember: String
        # @param RelativeCancer: 家族肿瘤史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeCancer: String
        # @param Genetic: 家族遗传史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Genetic: String

        attr_accessor :RelativeMember, :RelativeCancer, :Genetic
        
        def initialize(relativemember=nil, relativecancer=nil, genetic=nil)
          @RelativeMember = relativemember
          @RelativeCancer = relativecancer
          @Genetic = genetic
        end

        def deserialize(params)
          @RelativeMember = params['RelativeMember']
          @RelativeCancer = params['RelativeCancer']
          @Genetic = params['Genetic']
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

      # 检查所见内容，常见于病理，检查报告
      class Finding < TencentCloud::Common::AbstractModel
        # @param Text: 原文文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param TuberList: 肿瘤结节列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TuberList: Array

        attr_accessor :Text, :TuberList
        
        def initialize(text=nil, tuberlist=nil)
          @Text = text
          @TuberList = tuberlist
        end

        def deserialize(params)
          @Text = params['Text']
          unless params['TuberList'].nil?
            @TuberList = []
            params['TuberList'].each do |i|
              tuber_tmp = Tuber.new
              tuber_tmp.deserialize(i)
              @TuberList << tuber_tmp
            end
          end
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

      # 健康史信息
      class HealthHistory < TencentCloud::Common::AbstractModel
        # @param DiseaseHistory: 疾病史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiseaseHistory: :class:`Tencentcloud::Mrs.v20200910.models.DiseaseHistory`
        # @param FamilyHistory: 家族史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FamilyHistory: :class:`Tencentcloud::Mrs.v20200910.models.FamilyHistory`
        # @param MarryHistory: 婚育史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarryHistory: :class:`Tencentcloud::Mrs.v20200910.models.MarryHistory`
        # @param PersonalHistory: 个人史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalHistory: :class:`Tencentcloud::Mrs.v20200910.models.PersonalHistory`
        # @param MenstrualHistory: 月经史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenstrualHistory: :class:`Tencentcloud::Mrs.v20200910.models.MenstrualHistory`

        attr_accessor :DiseaseHistory, :FamilyHistory, :MarryHistory, :PersonalHistory, :MenstrualHistory
        
        def initialize(diseasehistory=nil, familyhistory=nil, marryhistory=nil, personalhistory=nil, menstrualhistory=nil)
          @DiseaseHistory = diseasehistory
          @FamilyHistory = familyhistory
          @MarryHistory = marryhistory
          @PersonalHistory = personalhistory
          @MenstrualHistory = menstrualhistory
        end

        def deserialize(params)
          unless params['DiseaseHistory'].nil?
            @DiseaseHistory = DiseaseHistory.new
            @DiseaseHistory.deserialize(params['DiseaseHistory'])
          end
          unless params['FamilyHistory'].nil?
            @FamilyHistory = FamilyHistory.new
            @FamilyHistory.deserialize(params['FamilyHistory'])
          end
          unless params['MarryHistory'].nil?
            @MarryHistory = MarryHistory.new
            @MarryHistory.deserialize(params['MarryHistory'])
          end
          unless params['PersonalHistory'].nil?
            @PersonalHistory = PersonalHistory.new
            @PersonalHistory.deserialize(params['PersonalHistory'])
          end
          unless params['MenstrualHistory'].nil?
            @MenstrualHistory = MenstrualHistory.new
            @MenstrualHistory.deserialize(params['MenstrualHistory'])
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

      # 免疫组化项目
      class IHC < TencentCloud::Common::AbstractModel
        # @param Index: 索引位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Text: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Grade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: String
        # @param Percent: 百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: String
        # @param Positive: 阴阳性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Positive: String

        attr_accessor :Index, :Text, :Name, :Grade, :Percent, :Positive
        
        def initialize(index=nil, text=nil, name=nil, grade=nil, percent=nil, positive=nil)
          @Index = index
          @Text = text
          @Name = name
          @Grade = grade
          @Percent = percent
          @Positive = positive
        end

        def deserialize(params)
          @Index = params['Index']
          @Text = params['Text']
          @Name = params['Name']
          @Grade = params['Grade']
          @Percent = params['Percent']
          @Positive = params['Positive']
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

      # 报告内容
      class ImageReport < TencentCloud::Common::AbstractModel
        # @param ImageText: 报告文本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageText: :class:`Tencentcloud::Mrs.v20200910.models.ImageText`
        # @param KindSet: 报告类别信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KindSet: Array
        # @param BasicInfo: 基本信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Mrs.v20200910.models.BasicInfo`
        # @param PersonalInfo: 个人隐私信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalInfo: :class:`Tencentcloud::Mrs.v20200910.models.PersonalInfo`
        # @param TestList: 检验指标内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestList: Array
        # @param Inspection: 检查报告内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Inspection: :class:`Tencentcloud::Mrs.v20200910.models.Inspection`
        # @param CaseHistory: 病历资料内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaseHistory: :class:`Tencentcloud::Mrs.v20200910.models.CaseHistory`
        # @param Pathology: 病理报告内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pathology: :class:`Tencentcloud::Mrs.v20200910.models.Pathology`

        attr_accessor :ImageText, :KindSet, :BasicInfo, :PersonalInfo, :TestList, :Inspection, :CaseHistory, :Pathology
        
        def initialize(imagetext=nil, kindset=nil, basicinfo=nil, personalinfo=nil, testlist=nil, inspection=nil, casehistory=nil, pathology=nil)
          @ImageText = imagetext
          @KindSet = kindset
          @BasicInfo = basicinfo
          @PersonalInfo = personalinfo
          @TestList = testlist
          @Inspection = inspection
          @CaseHistory = casehistory
          @Pathology = pathology
        end

        def deserialize(params)
          unless params['ImageText'].nil?
            @ImageText = ImageText.new
            @ImageText.deserialize(params['ImageText'])
          end
          unless params['KindSet'].nil?
            @KindSet = []
            params['KindSet'].each do |i|
              kinditem_tmp = KindItem.new
              kinditem_tmp.deserialize(i)
              @KindSet << kinditem_tmp
            end
          end
          unless params['BasicInfo'].nil?
            @BasicInfo = BasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['PersonalInfo'].nil?
            @PersonalInfo = PersonalInfo.new
            @PersonalInfo.deserialize(params['PersonalInfo'])
          end
          unless params['TestList'].nil?
            @TestList = []
            params['TestList'].each do |i|
              testitem_tmp = TestItem.new
              testitem_tmp.deserialize(i)
              @TestList << testitem_tmp
            end
          end
          unless params['Inspection'].nil?
            @Inspection = Inspection.new
            @Inspection.deserialize(params['Inspection'])
          end
          unless params['CaseHistory'].nil?
            @CaseHistory = CaseHistory.new
            @CaseHistory.deserialize(params['CaseHistory'])
          end
          unless params['Pathology'].nil?
            @Pathology = Pathology.new
            @Pathology.deserialize(params['Pathology'])
          end
        end
      end

      # 报告图片信息
      class ImageText < TencentCloud::Common::AbstractModel
        # @param Confidence: 文字内容可信度，0-100评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Integer
        # @param Text: 图片文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param RotateAngle: 文本旋转角度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RotateAngle: Float

        attr_accessor :Confidence, :Text, :RotateAngle
        
        def initialize(confidence=nil, text=nil, rotateangle=nil)
          @Confidence = confidence
          @Text = text
          @RotateAngle = rotateangle
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Text = params['Text']
          @RotateAngle = params['RotateAngle']
        end
      end

      # ImageToClass请求参数结构体
      class ImageToClassRequest < TencentCloud::Common::AbstractModel
        # @param ImageInfoList: 图片列表，允许传入多张图片，支持传入图片的url或base64编码
        # @type ImageInfoList: Array
        # @param HandleParam: 图片处理参数
        # @type HandleParam: :class:`Tencentcloud::Mrs.v20200910.models.HandleParam`
        # @param Type: 图片类型，目前支持11（检验报告），12（检查报告），15（病理报告），218（诊断证明）。
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
        # @param ImageInfoList: 图片列表，允许传入多张图片，支持传入图片的url或base64编码
        # @type ImageInfoList: Array
        # @param HandleParam: 图片处理参数
        # @type HandleParam: :class:`Tencentcloud::Mrs.v20200910.models.HandleParam`
        # @param Type: 报告类型，目前支持11（检验报告），12（检查报告），15（病理报告），28（出院报告），29（入院报告），210（门诊病历），212（手术记录），218（诊断证明）。如果不清楚报告类型，可以使用分类引擎，该字段传0（同时IsUsedClassify字段必须为True，否则无法输出结果）
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

      # 检查报告内容
      class Inspection < TencentCloud::Common::AbstractModel
        # @param Finding: 检查所见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Finding: :class:`Tencentcloud::Mrs.v20200910.models.Finding`
        # @param Conclusion: 检查结论
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conclusion: :class:`Tencentcloud::Mrs.v20200910.models.Conclusion`

        attr_accessor :Finding, :Conclusion
        
        def initialize(finding=nil, conclusion=nil)
          @Finding = finding
          @Conclusion = conclusion
        end

        def deserialize(params)
          unless params['Finding'].nil?
            @Finding = Finding.new
            @Finding.deserialize(params['Finding'])
          end
          unless params['Conclusion'].nil?
            @Conclusion = Conclusion.new
            @Conclusion.deserialize(params['Conclusion'])
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

      # 侵犯扩散
      class Invasive < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Array
        # @param Text: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String
        # @param Positive: 阴阳性
        # @type Positive: String

        attr_accessor :Index, :Text, :Part, :Positive
        
        def initialize(index=nil, text=nil, part=nil, positive=nil)
          @Index = index
          @Text = text
          @Part = part
          @Positive = positive
        end

        def deserialize(params)
          @Index = params['Index']
          @Text = params['Text']
          @Part = params['Part']
          @Positive = params['Positive']
        end
      end

      # 类型描述
      class KindItem < TencentCloud::Common::AbstractModel
        # @param Level: 等级，分为1，2，3级别，类型逐级细分
        # @type Level: Integer
        # @param ID: 类型编号，对应唯一的类型编号
        # @type ID: Integer
        # @param Name: 类型名称
        # @type Name: String

        attr_accessor :Level, :ID, :Name
        
        def initialize(level=nil, id=nil, name=nil)
          @Level = level
          @ID = id
          @Name = name
        end

        def deserialize(params)
          @Level = params['Level']
          @ID = params['ID']
          @Name = params['Name']
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

      # 婚育史
      class MarryHistory < TencentCloud::Common::AbstractModel
        # @param Marriage: 结婚史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Marriage: String
        # @param Fertility: 生育史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fertility: String

        attr_accessor :Marriage, :Fertility
        
        def initialize(marriage=nil, fertility=nil)
          @Marriage = marriage
          @Fertility = fertility
        end

        def deserialize(params)
          @Marriage = params['Marriage']
          @Fertility = params['Fertility']
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

      # 月经史
      class MenstrualHistory < TencentCloud::Common::AbstractModel
        # @param IsOrNot: 是否来月经
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOrNot: String
        # @param MenarcheAge: 月经初潮年龄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MenarcheAge: String
        # @param LastTime: 末次月经时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTime: String
        # @param Flow: 经量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Flow: String
        # @param Cycles: 月经周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cycles: String
        # @param Duration: 行经天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String

        attr_accessor :IsOrNot, :MenarcheAge, :LastTime, :Flow, :Cycles, :Duration
        
        def initialize(isornot=nil, menarcheage=nil, lasttime=nil, flow=nil, cycles=nil, duration=nil)
          @IsOrNot = isornot
          @MenarcheAge = menarcheage
          @LastTime = lasttime
          @Flow = flow
          @Cycles = cycles
          @Duration = duration
        end

        def deserialize(params)
          @IsOrNot = params['IsOrNot']
          @MenarcheAge = params['MenarcheAge']
          @LastTime = params['LastTime']
          @Flow = params['Flow']
          @Cycles = params['Cycles']
          @Duration = params['Duration']
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

      # 转移
      class Metastasis < TencentCloud::Common::AbstractModel
        # @param Index: 索引位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Text: 原文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: String
        # @param TotalNum: 局部总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param TransferNum: 转移数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferNum: String

        attr_accessor :Index, :Text, :Part, :TotalNum, :TransferNum
        
        def initialize(index=nil, text=nil, part=nil, totalnum=nil, transfernum=nil)
          @Index = index
          @Text = text
          @Part = part
          @TotalNum = totalnum
          @TransferNum = transfernum
        end

        def deserialize(params)
          @Index = params['Index']
          @Text = params['Text']
          @Part = params['Part']
          @TotalNum = params['TotalNum']
          @TransferNum = params['TransferNum']
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

      # 病理内容
      class Pathology < TencentCloud::Common::AbstractModel
        # @param PathologicalType: 病理类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathologicalType: String
        # @param InfiltrationDepth: 侵润深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InfiltrationDepth: String
        # @param PTNM: PTNM分期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PTNM: String
        # @param DistanceMetastasis: 远处转移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistanceMetastasis: String
        # @param SummaryText: 影像诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryText: String
        # @param DescText: 影像所见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescText: String
        # @param HistologyType: 组织学类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologyType: String
        # @param HistologyLevel: 组织学等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistologyLevel: String
        # @param SampleType: 标本类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleType: String
        # @param SamplePart: 标本部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SamplePart: String
        # @param SampleSize: 标本大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSize: String
        # @param InvasiveList: 肿瘤扩散
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvasiveList: Array
        # @param MetastasisList: 肿瘤转移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetastasisList: Array
        # @param IHCList: 免疫组化信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IHCList: Array

        attr_accessor :PathologicalType, :InfiltrationDepth, :PTNM, :DistanceMetastasis, :SummaryText, :DescText, :HistologyType, :HistologyLevel, :SampleType, :SamplePart, :SampleSize, :InvasiveList, :MetastasisList, :IHCList
        
        def initialize(pathologicaltype=nil, infiltrationdepth=nil, ptnm=nil, distancemetastasis=nil, summarytext=nil, desctext=nil, histologytype=nil, histologylevel=nil, sampletype=nil, samplepart=nil, samplesize=nil, invasivelist=nil, metastasislist=nil, ihclist=nil)
          @PathologicalType = pathologicaltype
          @InfiltrationDepth = infiltrationdepth
          @PTNM = ptnm
          @DistanceMetastasis = distancemetastasis
          @SummaryText = summarytext
          @DescText = desctext
          @HistologyType = histologytype
          @HistologyLevel = histologylevel
          @SampleType = sampletype
          @SamplePart = samplepart
          @SampleSize = samplesize
          @InvasiveList = invasivelist
          @MetastasisList = metastasislist
          @IHCList = ihclist
        end

        def deserialize(params)
          @PathologicalType = params['PathologicalType']
          @InfiltrationDepth = params['InfiltrationDepth']
          @PTNM = params['PTNM']
          @DistanceMetastasis = params['DistanceMetastasis']
          @SummaryText = params['SummaryText']
          @DescText = params['DescText']
          @HistologyType = params['HistologyType']
          @HistologyLevel = params['HistologyLevel']
          @SampleType = params['SampleType']
          @SamplePart = params['SamplePart']
          @SampleSize = params['SampleSize']
          unless params['InvasiveList'].nil?
            @InvasiveList = []
            params['InvasiveList'].each do |i|
              invasive_tmp = Invasive.new
              invasive_tmp.deserialize(i)
              @InvasiveList << invasive_tmp
            end
          end
          unless params['MetastasisList'].nil?
            @MetastasisList = []
            params['MetastasisList'].each do |i|
              metastasis_tmp = Metastasis.new
              metastasis_tmp.deserialize(i)
              @MetastasisList << metastasis_tmp
            end
          end
          unless params['IHCList'].nil?
            @IHCList = []
            params['IHCList'].each do |i|
              ihc_tmp = IHC.new
              ihc_tmp.deserialize(i)
              @IHCList << ihc_tmp
            end
          end
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

        attr_accessor :Name, :Sex, :Age, :Phone, :Address, :IdCard, :HealthCardNo, :SocialSecurityCardNo, :Birthday, :Ethnicity, :Married, :Profession, :EducationBackground, :Nationality, :BirthPlace, :MedicalInsuranceType
        
        def initialize(name=nil, sex=nil, age=nil, phone=nil, address=nil, idcard=nil, healthcardno=nil, socialsecuritycardno=nil, birthday=nil, ethnicity=nil, married=nil, profession=nil, educationbackground=nil, nationality=nil, birthplace=nil, medicalinsurancetype=nil)
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
        end
      end

      # 个人史
      class PersonalHistory < TencentCloud::Common::AbstractModel
        # @param BirthPlace: 出生地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthPlace: String
        # @param Job: 工作史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: String
        # @param LivePlace: 旅居史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivePlace: String
        # @param Personal: 个人史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Personal: String
        # @param Smoke: 吸烟史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Smoke: String
        # @param Alcoholic: 饮酒史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alcoholic: String

        attr_accessor :BirthPlace, :Job, :LivePlace, :Personal, :Smoke, :Alcoholic
        
        def initialize(birthplace=nil, job=nil, liveplace=nil, personal=nil, smoke=nil, alcoholic=nil)
          @BirthPlace = birthplace
          @Job = job
          @LivePlace = liveplace
          @Personal = personal
          @Smoke = smoke
          @Alcoholic = alcoholic
        end

        def deserialize(params)
          @BirthPlace = params['BirthPlace']
          @Job = params['Job']
          @LivePlace = params['LivePlace']
          @Personal = params['Personal']
          @Smoke = params['Smoke']
          @Alcoholic = params['Alcoholic']
        end
      end

      # 个人信息
      class PersonalInfo < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Gender: 性别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gender: String
        # @param Age: 年龄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Age: String
        # @param IDCard: 身份证号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IDCard: String
        # @param HealthCardNum: 健康卡号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCardNum: String
        # @param SocialSecurityCardNum: 社保号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SocialSecurityCardNum: String
        # @param Birthday: 出生日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birthday: String
        # @param Ethnicity: 民族
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ethnicity: String
        # @param Nationality: 国籍
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nationality: String
        # @param Married: 婚姻状况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Married: String
        # @param Profession: 职业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profession: String
        # @param EducationBackground: 教育程度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EducationBackground: String
        # @param BirthPlace: 籍贯
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthPlace: String
        # @param MedicalInsuranceType: 医保卡类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MedicalInsuranceType: String
        # @param LinkPhone: 联系电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkPhone: String
        # @param LinkAddress: 联系地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkAddress: String
        # @param KinsfolkName: 家属姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KinsfolkName: String
        # @param KinsfolkRelation: 家属关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KinsfolkRelation: String
        # @param KinsfolkPhone: 家属联系电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KinsfolkPhone: String

        attr_accessor :Name, :Gender, :Age, :IDCard, :HealthCardNum, :SocialSecurityCardNum, :Birthday, :Ethnicity, :Nationality, :Married, :Profession, :EducationBackground, :BirthPlace, :MedicalInsuranceType, :LinkPhone, :LinkAddress, :KinsfolkName, :KinsfolkRelation, :KinsfolkPhone
        
        def initialize(name=nil, gender=nil, age=nil, idcard=nil, healthcardnum=nil, socialsecuritycardnum=nil, birthday=nil, ethnicity=nil, nationality=nil, married=nil, profession=nil, educationbackground=nil, birthplace=nil, medicalinsurancetype=nil, linkphone=nil, linkaddress=nil, kinsfolkname=nil, kinsfolkrelation=nil, kinsfolkphone=nil)
          @Name = name
          @Gender = gender
          @Age = age
          @IDCard = idcard
          @HealthCardNum = healthcardnum
          @SocialSecurityCardNum = socialsecuritycardnum
          @Birthday = birthday
          @Ethnicity = ethnicity
          @Nationality = nationality
          @Married = married
          @Profession = profession
          @EducationBackground = educationbackground
          @BirthPlace = birthplace
          @MedicalInsuranceType = medicalinsurancetype
          @LinkPhone = linkphone
          @LinkAddress = linkaddress
          @KinsfolkName = kinsfolkname
          @KinsfolkRelation = kinsfolkrelation
          @KinsfolkPhone = kinsfolkphone
        end

        def deserialize(params)
          @Name = params['Name']
          @Gender = params['Gender']
          @Age = params['Age']
          @IDCard = params['IDCard']
          @HealthCardNum = params['HealthCardNum']
          @SocialSecurityCardNum = params['SocialSecurityCardNum']
          @Birthday = params['Birthday']
          @Ethnicity = params['Ethnicity']
          @Nationality = params['Nationality']
          @Married = params['Married']
          @Profession = params['Profession']
          @EducationBackground = params['EducationBackground']
          @BirthPlace = params['BirthPlace']
          @MedicalInsuranceType = params['MedicalInsuranceType']
          @LinkPhone = params['LinkPhone']
          @LinkAddress = params['LinkAddress']
          @KinsfolkName = params['KinsfolkName']
          @KinsfolkRelation = params['KinsfolkRelation']
          @KinsfolkPhone = params['KinsfolkPhone']
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

      # ReportImageStructured请求参数结构体
      class ReportImageStructuredRequest < TencentCloud::Common::AbstractModel
        # @param ImageURL: 医疗报告图片URL
        # @type ImageURL: String
        # @param ImageBase64: 医疗报告图片base64编码后内容
        # @type ImageBase64: String

        attr_accessor :ImageURL, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageURL = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageURL = params['ImageURL']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # ReportImageStructured返回参数结构体
      class ReportImageStructuredResponse < TencentCloud::Common::AbstractModel
        # @param Report: 报告内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Report: :class:`Tencentcloud::Mrs.v20200910.models.ImageReport`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Report, :RequestId
        
        def initialize(report=nil, requestid=nil)
          @Report = report
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Report'].nil?
            @Report = ImageReport.new
            @Report.deserialize(params['Report'])
          end
          @RequestId = params['RequestId']
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

        attr_accessor :Hospital, :DepartmentName, :BillingTime, :ReportTime, :InspectTime, :CheckNum, :ImageNum, :RadiationNum, :TestNum, :OutpatientNum, :PathologyNum, :InHospitalNum, :SampleNum, :SampleType, :MedicalRecordNum, :ReportName, :UltraNum, :Diagnose
        
        def initialize(hospital=nil, departmentname=nil, billingtime=nil, reporttime=nil, inspecttime=nil, checknum=nil, imagenum=nil, radiationnum=nil, testnum=nil, outpatientnum=nil, pathologynum=nil, inhospitalnum=nil, samplenum=nil, sampletype=nil, medicalrecordnum=nil, reportname=nil, ultranum=nil, diagnose=nil)
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
        end
      end

      # ReportTextStructured请求参数结构体
      class ReportTextStructuredRequest < TencentCloud::Common::AbstractModel
        # @param Text: 报告文本内容
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # ReportTextStructured返回参数结构体
      class ReportTextStructuredResponse < TencentCloud::Common::AbstractModel
        # @param Report: 报告内容
        # @type Report: :class:`Tencentcloud::Mrs.v20200910.models.TextReport`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Report, :RequestId
        
        def initialize(report=nil, requestid=nil)
          @Report = report
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Report'].nil?
            @Report = TextReport.new
            @Report.deserialize(params['Report'])
          end
          @RequestId = params['RequestId']
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

      # 可见病症内容
      class Symptom < TencentCloud::Common::AbstractModel
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Part: 部位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Grade: 等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param AttrList: 性质
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrList: Array

        attr_accessor :Desc, :Part, :Grade, :AttrList
        
        def initialize(desc=nil, part=nil, grade=nil, attrlist=nil)
          @Desc = desc
          @Part = part
          @Grade = grade
          @AttrList = attrlist
        end

        def deserialize(params)
          unless params['Desc'].nil?
            @Desc = Attribute.new
            @Desc.deserialize(params['Desc'])
          end
          unless params['Part'].nil?
            @Part = Attribute.new
            @Part.deserialize(params['Part'])
          end
          unless params['Grade'].nil?
            @Grade = Attribute.new
            @Grade.deserialize(params['Grade'])
          end
          unless params['AttrList'].nil?
            @AttrList = []
            params['AttrList'].each do |i|
              attribute_tmp = Attribute.new
              attribute_tmp.deserialize(i)
              @AttrList << attribute_tmp
            end
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

        attr_accessor :PatientInfo, :ReportInfo, :Check, :Pathology, :MedDoc, :DiagCert, :FirstPage, :Indicator, :ReportType, :MedicalRecordInfo, :Hospitalization, :Surgery
        
        def initialize(patientinfo=nil, reportinfo=nil, check=nil, pathology=nil, meddoc=nil, diagcert=nil, firstpage=nil, indicator=nil, reporttype=nil, medicalrecordinfo=nil, hospitalization=nil, surgery=nil)
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
        end
      end

      # 检验指标内容
      class TestItem < TencentCloud::Common::AbstractModel
        # @param ID: 标准名称编号，利用该编号可以获取详细的指标含义和解释
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Code: 英文名称或简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Name: 项目指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Result: 检验结果值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param Range: 正常结果范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: String
        # @param Util: 指标单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Util: String
        # @param IsNormal: 是否正常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNormal: Boolean
        # @param IsExceed: 是否超标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExceed: Boolean

        attr_accessor :ID, :Code, :Name, :Result, :Range, :Util, :IsNormal, :IsExceed
        
        def initialize(id=nil, code=nil, name=nil, result=nil, range=nil, util=nil, isnormal=nil, isexceed=nil)
          @ID = id
          @Code = code
          @Name = name
          @Result = result
          @Range = range
          @Util = util
          @IsNormal = isnormal
          @IsExceed = isexceed
        end

        def deserialize(params)
          @ID = params['ID']
          @Code = params['Code']
          @Name = params['Name']
          @Result = params['Result']
          @Range = params['Range']
          @Util = params['Util']
          @IsNormal = params['IsNormal']
          @IsExceed = params['IsExceed']
        end
      end

      # 文本类型报告返回结果
      class TextReport < TencentCloud::Common::AbstractModel
        # @param KindSet: 报告类别信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KindSet: Array
        # @param BasicInfo: 基本信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Mrs.v20200910.models.BasicInfo`
        # @param PersonalInfo: 个人隐私信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalInfo: :class:`Tencentcloud::Mrs.v20200910.models.PersonalInfo`
        # @param TestList: 检验指标表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestList: Array
        # @param Inspection: 检查报告内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Inspection: :class:`Tencentcloud::Mrs.v20200910.models.Inspection`
        # @param CaseHistory: 病历资料
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaseHistory: :class:`Tencentcloud::Mrs.v20200910.models.CaseHistory`
        # @param Pathology: 病理检查内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pathology: :class:`Tencentcloud::Mrs.v20200910.models.Pathology`

        attr_accessor :KindSet, :BasicInfo, :PersonalInfo, :TestList, :Inspection, :CaseHistory, :Pathology
        
        def initialize(kindset=nil, basicinfo=nil, personalinfo=nil, testlist=nil, inspection=nil, casehistory=nil, pathology=nil)
          @KindSet = kindset
          @BasicInfo = basicinfo
          @PersonalInfo = personalinfo
          @TestList = testlist
          @Inspection = inspection
          @CaseHistory = casehistory
          @Pathology = pathology
        end

        def deserialize(params)
          unless params['KindSet'].nil?
            @KindSet = []
            params['KindSet'].each do |i|
              kinditem_tmp = KindItem.new
              kinditem_tmp.deserialize(i)
              @KindSet << kinditem_tmp
            end
          end
          unless params['BasicInfo'].nil?
            @BasicInfo = BasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['PersonalInfo'].nil?
            @PersonalInfo = PersonalInfo.new
            @PersonalInfo.deserialize(params['PersonalInfo'])
          end
          unless params['TestList'].nil?
            @TestList = []
            params['TestList'].each do |i|
              testitem_tmp = TestItem.new
              testitem_tmp.deserialize(i)
              @TestList << testitem_tmp
            end
          end
          unless params['Inspection'].nil?
            @Inspection = Inspection.new
            @Inspection.deserialize(params['Inspection'])
          end
          unless params['CaseHistory'].nil?
            @CaseHistory = CaseHistory.new
            @CaseHistory.deserialize(params['CaseHistory'])
          end
          unless params['Pathology'].nil?
            @Pathology = Pathology.new
            @Pathology.deserialize(params['Pathology'])
          end
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
        # @param Type: 报告类型，目前支持12（检查报告），15（病理报告），28（出院报告），29（入院报告），210（门诊病历），212（手术记录），218（诊断证明）。如果不清楚报告类型，可以使用分类引擎，该字段传0（同时IsUsedClassify字段必须为True，否则无法输出结果）
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

      # 诊治信息
      class Treatment < TencentCloud::Common::AbstractModel
        # @param ChiefComplaint: 主诉
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChiefComplaint: String
        # @param AdmissionDiagnosis: 入院诊断
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdmissionDiagnosis: String

        attr_accessor :ChiefComplaint, :AdmissionDiagnosis
        
        def initialize(chiefcomplaint=nil, admissiondiagnosis=nil)
          @ChiefComplaint = chiefcomplaint
          @AdmissionDiagnosis = admissiondiagnosis
        end

        def deserialize(params)
          @ChiefComplaint = params['ChiefComplaint']
          @AdmissionDiagnosis = params['AdmissionDiagnosis']
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

      # 肿瘤结节
      class Tuber < TencentCloud::Common::AbstractModel
        # @param Part: 部位信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Part: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Type: 类型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param SizeList: 大小信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SizeList: Array
        # @param Shape: 形态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shape: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Edge: 边缘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Edge: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param CDFI: CDFI信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CDFI: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Metabolism: 代谢信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metabolism: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param LymphGland: 淋巴结信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphGland: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param LymphDoor: 淋巴门信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LymphDoor: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param SkinMedulla: 皮髓质信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkinMedulla: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param InnerEcho: 内部回声信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerEcho: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param RearEcho: 外部回声信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RearEcho: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Envelope: 包膜信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Envelope: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Calcification: 钙化信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Calcification: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param Enhancement: 强化信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enhancement: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`
        # @param AspectRatio: 纵横比信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AspectRatio: :class:`Tencentcloud::Mrs.v20200910.models.Attribute`

        attr_accessor :Part, :Type, :SizeList, :Shape, :Edge, :CDFI, :Metabolism, :LymphGland, :LymphDoor, :SkinMedulla, :InnerEcho, :RearEcho, :Envelope, :Calcification, :Enhancement, :AspectRatio
        
        def initialize(part=nil, type=nil, sizelist=nil, shape=nil, edge=nil, cdfi=nil, metabolism=nil, lymphgland=nil, lymphdoor=nil, skinmedulla=nil, innerecho=nil, rearecho=nil, envelope=nil, calcification=nil, enhancement=nil, aspectratio=nil)
          @Part = part
          @Type = type
          @SizeList = sizelist
          @Shape = shape
          @Edge = edge
          @CDFI = cdfi
          @Metabolism = metabolism
          @LymphGland = lymphgland
          @LymphDoor = lymphdoor
          @SkinMedulla = skinmedulla
          @InnerEcho = innerecho
          @RearEcho = rearecho
          @Envelope = envelope
          @Calcification = calcification
          @Enhancement = enhancement
          @AspectRatio = aspectratio
        end

        def deserialize(params)
          unless params['Part'].nil?
            @Part = Attribute.new
            @Part.deserialize(params['Part'])
          end
          unless params['Type'].nil?
            @Type = Attribute.new
            @Type.deserialize(params['Type'])
          end
          unless params['SizeList'].nil?
            @SizeList = []
            params['SizeList'].each do |i|
              attribute_tmp = Attribute.new
              attribute_tmp.deserialize(i)
              @SizeList << attribute_tmp
            end
          end
          unless params['Shape'].nil?
            @Shape = Attribute.new
            @Shape.deserialize(params['Shape'])
          end
          unless params['Edge'].nil?
            @Edge = Attribute.new
            @Edge.deserialize(params['Edge'])
          end
          unless params['CDFI'].nil?
            @CDFI = Attribute.new
            @CDFI.deserialize(params['CDFI'])
          end
          unless params['Metabolism'].nil?
            @Metabolism = Attribute.new
            @Metabolism.deserialize(params['Metabolism'])
          end
          unless params['LymphGland'].nil?
            @LymphGland = Attribute.new
            @LymphGland.deserialize(params['LymphGland'])
          end
          unless params['LymphDoor'].nil?
            @LymphDoor = Attribute.new
            @LymphDoor.deserialize(params['LymphDoor'])
          end
          unless params['SkinMedulla'].nil?
            @SkinMedulla = Attribute.new
            @SkinMedulla.deserialize(params['SkinMedulla'])
          end
          unless params['InnerEcho'].nil?
            @InnerEcho = Attribute.new
            @InnerEcho.deserialize(params['InnerEcho'])
          end
          unless params['RearEcho'].nil?
            @RearEcho = Attribute.new
            @RearEcho.deserialize(params['RearEcho'])
          end
          unless params['Envelope'].nil?
            @Envelope = Attribute.new
            @Envelope.deserialize(params['Envelope'])
          end
          unless params['Calcification'].nil?
            @Calcification = Attribute.new
            @Calcification.deserialize(params['Calcification'])
          end
          unless params['Enhancement'].nil?
            @Enhancement = Attribute.new
            @Enhancement.deserialize(params['Enhancement'])
          end
          unless params['AspectRatio'].nil?
            @AspectRatio = Attribute.new
            @AspectRatio.deserialize(params['AspectRatio'])
          end
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

