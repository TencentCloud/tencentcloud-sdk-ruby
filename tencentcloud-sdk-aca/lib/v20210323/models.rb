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
  module Aca
    module V20210323
      # 异常提醒
      class Abnormals < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Title: 标题
        # @type Title: String
        # @param AbnormalReason: 异常原因 PatientInfo 病人信息缺失；OrderInfo 医嘱信息缺失； PrescriptionError 处方异常提醒
        # @type AbnormalReason: String

        attr_accessor :Type, :Title, :AbnormalReason

        def initialize(type=nil, title=nil, abnormalreason=nil)
          @Type = type
          @Title = title
          @AbnormalReason = abnormalreason
        end

        def deserialize(params)
          @Type = params['Type']
          @Title = params['Title']
          @AbnormalReason = params['AbnormalReason']
        end
      end

      # 业务接口请求头
      class CommonHeader < TencentCloud::Common::AbstractModel
        # @param HospitalId: 机构ID
        # @type HospitalId: String
        # @param Token: 合作方ID
        # @type Token: String

        attr_accessor :HospitalId, :Token

        def initialize(hospitalid=nil, token=nil)
          @HospitalId = hospitalid
          @Token = token
        end

        def deserialize(params)
          @HospitalId = params['HospitalId']
          @Token = params['Token']
        end
      end

      # 危疾重症
      class CriticalInfo < TencentCloud::Common::AbstractModel
        # @param Type: 危急重症类型 0:文字描述类 1:数值检查类
        # @type Type: Integer
        # @param Tips: 提示
        # @type Tips: String

        attr_accessor :Type, :Tips

        def initialize(type=nil, tips=nil)
          @Type = type
          @Tips = tips
        end

        def deserialize(params)
          @Type = params['Type']
          @Tips = params['Tips']
        end
      end

      # 当前诊断
      class CurrentDiagnosis < TencentCloud::Common::AbstractModel
        # @param DiagnoseDisease: 诊断疾病
        # @type DiagnoseDisease: String
        # @param DiseaseGuideInfo: 疾病指南信息
        # @type DiseaseGuideInfo: String
        # @param StandardName: 标准名称
        # @type StandardName: String

        attr_accessor :DiagnoseDisease, :DiseaseGuideInfo, :StandardName

        def initialize(diagnosedisease=nil, diseaseguideinfo=nil, standardname=nil)
          @DiagnoseDisease = diagnosedisease
          @DiseaseGuideInfo = diseaseguideinfo
          @StandardName = standardname
        end

        def deserialize(params)
          @DiagnoseDisease = params['DiagnoseDisease']
          @DiseaseGuideInfo = params['DiseaseGuideInfo']
          @StandardName = params['StandardName']
        end
      end

      # 科室信息
      class Department < TencentCloud::Common::AbstractModel
        # @param Id: 科室ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 科室名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Scope: 科室类型 0:门诊  1:住院  2:门诊+住院
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: Integer
        # @param OutpatientOn: 门诊区开关 true:此科室对应的门诊区开启智能审方功能, false:此科室对应的门诊区关闭智能审方功能; 仅对scope为0/2的科室生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutpatientOn: Boolean
        # @param InHospitalOn: 住院区开关 true:此科室对应的住院区开启智能审方功能, false:此科室对应的住院区关闭智能审方功能; 仅对scope为1/2的科室生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InHospitalOn: Boolean

        attr_accessor :Id, :Name, :Scope, :OutpatientOn, :InHospitalOn

        def initialize(id=nil, name=nil, scope=nil, outpatienton=nil, inhospitalon=nil)
          @Id = id
          @Name = name
          @Scope = scope
          @OutpatientOn = outpatienton
          @InHospitalOn = inhospitalon
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Scope = params['Scope']
          @OutpatientOn = params['OutpatientOn']
          @InHospitalOn = params['InHospitalOn']
        end
      end

      # 诊断、辅助内容
      class DiagnosisInfo < TencentCloud::Common::AbstractModel
        # @param IntentType: 默认0，0:初诊-常规诊疗 1:复诊 2:检验检查/取药/咨询/疫苗 3:信息缺失 4:信息错误
        # @type IntentType: Integer
        # @param RiskInfo: 诊断风险
        # @type RiskInfo: String
        # @param SuspectedDiagnosis: 疑似诊断列表
        # @type SuspectedDiagnosis: Array
        # @param ReferralInfo: 转诊提醒
        # @type ReferralInfo: :class:`Tencentcloud::Aca.v20210323.models.ReferralInfo`
        # @param CriticalInfo: 危急重症
        # @type CriticalInfo: Array
        # @param VitalSignsInfo: 生命体征风险
        # @type VitalSignsInfo: :class:`Tencentcloud::Aca.v20210323.models.VitalSignsInfo`
        # @param DifferDiagnosis: 鉴别诊断
        # @type DifferDiagnosis: Array
        # @param RecordQuality: 病历质控
        # @type RecordQuality: :class:`Tencentcloud::Aca.v20210323.models.RecordQuality`
        # @param CurrentDiagnosis: 当前诊断
        # @type CurrentDiagnosis: Array
        # @param TreatmentGuide: 治疗方案
        # @type TreatmentGuide: Array
        # @param EmrQuality: 病历质控
        # @type EmrQuality: :class:`Tencentcloud::Aca.v20210323.models.EmrQuality`
        # @param HealthPrescriptions: 健康处方
        # @type HealthPrescriptions: Array

        attr_accessor :IntentType, :RiskInfo, :SuspectedDiagnosis, :ReferralInfo, :CriticalInfo, :VitalSignsInfo, :DifferDiagnosis, :RecordQuality, :CurrentDiagnosis, :TreatmentGuide, :EmrQuality, :HealthPrescriptions

        def initialize(intenttype=nil, riskinfo=nil, suspecteddiagnosis=nil, referralinfo=nil, criticalinfo=nil, vitalsignsinfo=nil, differdiagnosis=nil, recordquality=nil, currentdiagnosis=nil, treatmentguide=nil, emrquality=nil, healthprescriptions=nil)
          @IntentType = intenttype
          @RiskInfo = riskinfo
          @SuspectedDiagnosis = suspecteddiagnosis
          @ReferralInfo = referralinfo
          @CriticalInfo = criticalinfo
          @VitalSignsInfo = vitalsignsinfo
          @DifferDiagnosis = differdiagnosis
          @RecordQuality = recordquality
          @CurrentDiagnosis = currentdiagnosis
          @TreatmentGuide = treatmentguide
          @EmrQuality = emrquality
          @HealthPrescriptions = healthprescriptions
        end

        def deserialize(params)
          @IntentType = params['IntentType']
          @RiskInfo = params['RiskInfo']
          unless params['SuspectedDiagnosis'].nil?
            @SuspectedDiagnosis = []
            params['SuspectedDiagnosis'].each do |i|
              suspecteddiagnosis_tmp = SuspectedDiagnosis.new
              suspecteddiagnosis_tmp.deserialize(i)
              @SuspectedDiagnosis << suspecteddiagnosis_tmp
            end
          end
          unless params['ReferralInfo'].nil?
            @ReferralInfo = ReferralInfo.new
            @ReferralInfo.deserialize(params['ReferralInfo'])
          end
          unless params['CriticalInfo'].nil?
            @CriticalInfo = []
            params['CriticalInfo'].each do |i|
              criticalinfo_tmp = CriticalInfo.new
              criticalinfo_tmp.deserialize(i)
              @CriticalInfo << criticalinfo_tmp
            end
          end
          unless params['VitalSignsInfo'].nil?
            @VitalSignsInfo = VitalSignsInfo.new
            @VitalSignsInfo.deserialize(params['VitalSignsInfo'])
          end
          unless params['DifferDiagnosis'].nil?
            @DifferDiagnosis = []
            params['DifferDiagnosis'].each do |i|
              differdiagnosis_tmp = DifferDiagnosis.new
              differdiagnosis_tmp.deserialize(i)
              @DifferDiagnosis << differdiagnosis_tmp
            end
          end
          unless params['RecordQuality'].nil?
            @RecordQuality = RecordQuality.new
            @RecordQuality.deserialize(params['RecordQuality'])
          end
          unless params['CurrentDiagnosis'].nil?
            @CurrentDiagnosis = []
            params['CurrentDiagnosis'].each do |i|
              currentdiagnosis_tmp = CurrentDiagnosis.new
              currentdiagnosis_tmp.deserialize(i)
              @CurrentDiagnosis << currentdiagnosis_tmp
            end
          end
          unless params['TreatmentGuide'].nil?
            @TreatmentGuide = []
            params['TreatmentGuide'].each do |i|
              treatmentguide_tmp = TreatmentGuide.new
              treatmentguide_tmp.deserialize(i)
              @TreatmentGuide << treatmentguide_tmp
            end
          end
          unless params['EmrQuality'].nil?
            @EmrQuality = EmrQuality.new
            @EmrQuality.deserialize(params['EmrQuality'])
          end
          unless params['HealthPrescriptions'].nil?
            @HealthPrescriptions = []
            params['HealthPrescriptions'].each do |i|
              healthprescriptions_tmp = HealthPrescriptions.new
              healthprescriptions_tmp.deserialize(i)
              @HealthPrescriptions << healthprescriptions_tmp
            end
          end
        end
      end

      # 字典信息
      class Dict < TencentCloud::Common::AbstractModel
        # @param FreqCode: 给药频次编码
        # @type FreqCode: String
        # @param FreqName: 给药频次名称
        # @type FreqName: String
        # @param Disable: 是否禁用 0-启用 1-禁用
        # @type Disable: Integer
        # @param UsageCode: 给药途径编码
        # @type UsageCode: String
        # @param UsageName: 给药途径名称
        # @type UsageName: String
        # @param DeptId: 科室ID
        # @type DeptId: String
        # @param DeptName: 科室名称
        # @type DeptName: String
        # @param Scope: 科室区域类型 0:门诊  1:住院  2:门诊+住院
        # @type Scope: Integer
        # @param OutpatientOn: 门诊开关
        # @type OutpatientOn: Boolean
        # @param InHospitalOn: 住院
        # @type InHospitalOn: Boolean
        # @param DiagCode: 诊断编码
        # @type DiagCode: String
        # @param DiagName: 诊断名称
        # @type DiagName: String
        # @param IcdCode: ICD代码
        # @type IcdCode: String

        attr_accessor :FreqCode, :FreqName, :Disable, :UsageCode, :UsageName, :DeptId, :DeptName, :Scope, :OutpatientOn, :InHospitalOn, :DiagCode, :DiagName, :IcdCode

        def initialize(freqcode=nil, freqname=nil, disable=nil, usagecode=nil, usagename=nil, deptid=nil, deptname=nil, scope=nil, outpatienton=nil, inhospitalon=nil, diagcode=nil, diagname=nil, icdcode=nil)
          @FreqCode = freqcode
          @FreqName = freqname
          @Disable = disable
          @UsageCode = usagecode
          @UsageName = usagename
          @DeptId = deptid
          @DeptName = deptname
          @Scope = scope
          @OutpatientOn = outpatienton
          @InHospitalOn = inhospitalon
          @DiagCode = diagcode
          @DiagName = diagname
          @IcdCode = icdcode
        end

        def deserialize(params)
          @FreqCode = params['FreqCode']
          @FreqName = params['FreqName']
          @Disable = params['Disable']
          @UsageCode = params['UsageCode']
          @UsageName = params['UsageName']
          @DeptId = params['DeptId']
          @DeptName = params['DeptName']
          @Scope = params['Scope']
          @OutpatientOn = params['OutpatientOn']
          @InHospitalOn = params['InHospitalOn']
          @DiagCode = params['DiagCode']
          @DiagName = params['DiagName']
          @IcdCode = params['IcdCode']
        end
      end

      # 鉴别诊断
      class DifferDiagnosis < TencentCloud::Common::AbstractModel
        # @param DifferName: 鉴别名称
        # @type DifferName: String
        # @param DifferTips: 鉴别提示
        # @type DifferTips: String
        # @param DiseaseGuideInfo: 疾病指南信息
        # @type DiseaseGuideInfo: String

        attr_accessor :DifferName, :DifferTips, :DiseaseGuideInfo

        def initialize(differname=nil, differtips=nil, diseaseguideinfo=nil)
          @DifferName = differname
          @DifferTips = differtips
          @DiseaseGuideInfo = diseaseguideinfo
        end

        def deserialize(params)
          @DifferName = params['DifferName']
          @DifferTips = params['DifferTips']
          @DiseaseGuideInfo = params['DiseaseGuideInfo']
        end
      end

      # 药品文档信息
      class DocInfo < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param DocUrl: 说明书地址
        # @type DocUrl: String

        attr_accessor :DrugId, :DrugName, :DocUrl

        def initialize(drugid=nil, drugname=nil, docurl=nil)
          @DrugId = drugid
          @DrugName = drugname
          @DocUrl = docurl
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @DrugName = params['DrugName']
          @DocUrl = params['DocUrl']
        end
      end

      # 医生信息
      class DoctorInfo < TencentCloud::Common::AbstractModel
        # @param DoctorId: 医生ID
        # @type DoctorId: String
        # @param DoctorName: 医生姓名
        # @type DoctorName: String
        # @param DoctorPhone: 医生电话
        # @type DoctorPhone: String

        attr_accessor :DoctorId, :DoctorName, :DoctorPhone

        def initialize(doctorid=nil, doctorname=nil, doctorphone=nil)
          @DoctorId = doctorid
          @DoctorName = doctorname
          @DoctorPhone = doctorphone
        end

        def deserialize(params)
          @DoctorId = params['DoctorId']
          @DoctorName = params['DoctorName']
          @DoctorPhone = params['DoctorPhone']
        end
      end

      # 药品信息
      class Drug < TencentCloud::Common::AbstractModel
        # @param DrugOrgId: 医院药品id
        # @type DrugOrgId: String
        # @param DrugName: 医院药品通用名
        # @type DrugName: String
        # @param DrugCommodityName: 医院药品商品名
        # @type DrugCommodityName: String
        # @param Specifications: 医院药品规格
        # @type Specifications: String
        # @param ApprovalNumber: 医院药品批准文号
        # @type ApprovalNumber: String
        # @param Manufacturer: 生产厂商
        # @type Manufacturer: String
        # @param DosageForm: 剂型
        # @type DosageForm: String
        # @param Unuse: 使用状态 0:启用 1:停用
        # @type Unuse: Integer
        # @param DosageFormCode: 剂型编码
        # @type DosageFormCode: String
        # @param DefinedDailyDose: 抗菌药DDD值
        # @type DefinedDailyDose: String
        # @param Amount: 药品单价
        # @type Amount: String
        # @param YbCode: 国家医保编码
        # @type YbCode: String
        # @param DrugBasicCode: 药品本位码
        # @type DrugBasicCode: String
        # @param PropertyInfo: 药品属性
        # @type PropertyInfo: :class:`Tencentcloud::Aca.v20210323.models.DurgPropertyInfo`

        attr_accessor :DrugOrgId, :DrugName, :DrugCommodityName, :Specifications, :ApprovalNumber, :Manufacturer, :DosageForm, :Unuse, :DosageFormCode, :DefinedDailyDose, :Amount, :YbCode, :DrugBasicCode, :PropertyInfo

        def initialize(drugorgid=nil, drugname=nil, drugcommodityname=nil, specifications=nil, approvalnumber=nil, manufacturer=nil, dosageform=nil, unuse=nil, dosageformcode=nil, defineddailydose=nil, amount=nil, ybcode=nil, drugbasiccode=nil, propertyinfo=nil)
          @DrugOrgId = drugorgid
          @DrugName = drugname
          @DrugCommodityName = drugcommodityname
          @Specifications = specifications
          @ApprovalNumber = approvalnumber
          @Manufacturer = manufacturer
          @DosageForm = dosageform
          @Unuse = unuse
          @DosageFormCode = dosageformcode
          @DefinedDailyDose = defineddailydose
          @Amount = amount
          @YbCode = ybcode
          @DrugBasicCode = drugbasiccode
          @PropertyInfo = propertyinfo
        end

        def deserialize(params)
          @DrugOrgId = params['DrugOrgId']
          @DrugName = params['DrugName']
          @DrugCommodityName = params['DrugCommodityName']
          @Specifications = params['Specifications']
          @ApprovalNumber = params['ApprovalNumber']
          @Manufacturer = params['Manufacturer']
          @DosageForm = params['DosageForm']
          @Unuse = params['Unuse']
          @DosageFormCode = params['DosageFormCode']
          @DefinedDailyDose = params['DefinedDailyDose']
          @Amount = params['Amount']
          @YbCode = params['YbCode']
          @DrugBasicCode = params['DrugBasicCode']
          unless params['PropertyInfo'].nil?
            @PropertyInfo = DurgPropertyInfo.new
            @PropertyInfo.deserialize(params['PropertyInfo'])
          end
        end
      end

      # 药品列表
      class DrugList < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param DocUrl: 文档地址
        # @type DocUrl: String
        # @param NotFound: 是否找到
        # @type NotFound: Boolean

        attr_accessor :DrugId, :DrugName, :DocUrl, :NotFound

        def initialize(drugid=nil, drugname=nil, docurl=nil, notfound=nil)
          @DrugId = drugid
          @DrugName = drugname
          @DocUrl = docurl
          @NotFound = notfound
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @DrugName = params['DrugName']
          @DocUrl = params['DocUrl']
          @NotFound = params['NotFound']
        end
      end

      # 处方药品信息
      class DrugUsage < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param TimePerDay: 日服药频次
        # @type TimePerDay: String
        # @param Usage: 给药途径
        # @type Usage: String
        # @param PrescriptionId: 处方ID，药品不同分组是传不同的处方ID
        # @type PrescriptionId: String
        # @param DosagePerTime: 每次剂量
        # @type DosagePerTime: String
        # @param DosagePerTimeUnit: 每次剂量单位
        # @type DosagePerTimeUnit: String
        # @param Time: 单次服药时间
        # @type Time: String
        # @param Cycle: 给药周期
        # @type Cycle: String
        # @param DosagePerDay: 单日剂量
        # @type DosagePerDay: String
        # @param Course: 疗程
        # @type Course: String
        # @param Speed: 给药速度
        # @type Speed: String
        # @param BeginTime: 处方生效时间戳，住院医嘱必须传(caseType =1)
        # @type BeginTime: Integer
        # @param EndTime: 处方失效时间戳，住院医嘱必须传(caseType =1)
        # @type EndTime: Integer
        # @param Package: 开具数量
        # @type Package: String
        # @param PackageUnit: 开具数量单位
        # @type PackageUnit: String
        # @param GroupInj: 相同标志液体间进行配伍禁忌审核，不同标志间液体不进行配伍禁忌审核
        # @type GroupInj: String
        # @param PrescriptionCharge: 处方金额
        # @type PrescriptionCharge: String
        # @param MedicationDays: 用药天数
        # @type MedicationDays: String

        attr_accessor :DrugId, :DrugName, :TimePerDay, :Usage, :PrescriptionId, :DosagePerTime, :DosagePerTimeUnit, :Time, :Cycle, :DosagePerDay, :Course, :Speed, :BeginTime, :EndTime, :Package, :PackageUnit, :GroupInj, :PrescriptionCharge, :MedicationDays

        def initialize(drugid=nil, drugname=nil, timeperday=nil, usage=nil, prescriptionid=nil, dosagepertime=nil, dosagepertimeunit=nil, time=nil, cycle=nil, dosageperday=nil, course=nil, speed=nil, begintime=nil, endtime=nil, package=nil, packageunit=nil, groupinj=nil, prescriptioncharge=nil, medicationdays=nil)
          @DrugId = drugid
          @DrugName = drugname
          @TimePerDay = timeperday
          @Usage = usage
          @PrescriptionId = prescriptionid
          @DosagePerTime = dosagepertime
          @DosagePerTimeUnit = dosagepertimeunit
          @Time = time
          @Cycle = cycle
          @DosagePerDay = dosageperday
          @Course = course
          @Speed = speed
          @BeginTime = begintime
          @EndTime = endtime
          @Package = package
          @PackageUnit = packageunit
          @GroupInj = groupinj
          @PrescriptionCharge = prescriptioncharge
          @MedicationDays = medicationdays
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @DrugName = params['DrugName']
          @TimePerDay = params['TimePerDay']
          @Usage = params['Usage']
          @PrescriptionId = params['PrescriptionId']
          @DosagePerTime = params['DosagePerTime']
          @DosagePerTimeUnit = params['DosagePerTimeUnit']
          @Time = params['Time']
          @Cycle = params['Cycle']
          @DosagePerDay = params['DosagePerDay']
          @Course = params['Course']
          @Speed = params['Speed']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Package = params['Package']
          @PackageUnit = params['PackageUnit']
          @GroupInj = params['GroupInj']
          @PrescriptionCharge = params['PrescriptionCharge']
          @MedicationDays = params['MedicationDays']
        end
      end

      # 药品属性
      class DurgPropertyInfo < TencentCloud::Common::AbstractModel
        # @param DrugType: 药品类型 1:西药,2:中成药,3:中药,4:化学药品,5:生物制药
        # @type DrugType: Integer
        # @param AntibacterialType: 抗菌药分类 1:抗真菌药物, 2:抗细菌药物, 3:抗结核药物, 4:其他抗菌药, 0:普通药品
        # @type AntibacterialType: Integer
        # @param AntibacterialClass: 抗菌药级别 1:非限制级, 2:限制级, 3:特殊使用级
        # @type AntibacterialClass: Integer
        # @param SpeciallyDrugType: 特殊药品类型 1:毒性药品, 2:麻醉药品, 3:放射药品, 4:精神一类药品, 5:精神二类药品, 6:其他特管药品， 7:贵重药品
        # @type SpeciallyDrugType: Integer
        # @param IsBasicDrug: 是否为基本药物 1:是, 2:否, 0:未知
        # @type IsBasicDrug: Integer
        # @param ChargeType: 社保药品 1:甲类药品, 2:乙类药品, 3:双跨药品, 4:自费药品, 0:未知
        # @type ChargeType: Integer

        attr_accessor :DrugType, :AntibacterialType, :AntibacterialClass, :SpeciallyDrugType, :IsBasicDrug, :ChargeType

        def initialize(drugtype=nil, antibacterialtype=nil, antibacterialclass=nil, speciallydrugtype=nil, isbasicdrug=nil, chargetype=nil)
          @DrugType = drugtype
          @AntibacterialType = antibacterialtype
          @AntibacterialClass = antibacterialclass
          @SpeciallyDrugType = speciallydrugtype
          @IsBasicDrug = isbasicdrug
          @ChargeType = chargetype
        end

        def deserialize(params)
          @DrugType = params['DrugType']
          @AntibacterialType = params['AntibacterialType']
          @AntibacterialClass = params['AntibacterialClass']
          @SpeciallyDrugType = params['SpeciallyDrugType']
          @IsBasicDrug = params['IsBasicDrug']
          @ChargeType = params['ChargeType']
        end
      end

      # 诊断列表
      class EmrDiagnosises < TencentCloud::Common::AbstractModel
        # @param DiagnosisName: 诊断名称
        # @type DiagnosisName: String
        # @param IcdCode: ICD代码
        # @type IcdCode: String

        attr_accessor :DiagnosisName, :IcdCode

        def initialize(diagnosisname=nil, icdcode=nil)
          @DiagnosisName = diagnosisname
          @IcdCode = icdcode
        end

        def deserialize(params)
          @DiagnosisName = params['DiagnosisName']
          @IcdCode = params['IcdCode']
        end
      end

      # 病历质控
      class EmrQuality < TencentCloud::Common::AbstractModel
        # @param MissPhysicalExamination: 缺失体格检查项目
        # @type MissPhysicalExamination: Array

        attr_accessor :MissPhysicalExamination

        def initialize(missphysicalexamination=nil)
          @MissPhysicalExamination = missphysicalexamination
        end

        def deserialize(params)
          @MissPhysicalExamination = params['MissPhysicalExamination']
        end
      end

      # 获取适应症请求
      class GetDrugIndicationsReqData < TencentCloud::Common::AbstractModel
        # @param Drugs: 查询药品列表
        # @type Drugs: Array

        attr_accessor :Drugs

        def initialize(drugs=nil)
          @Drugs = drugs
        end

        def deserialize(params)
          unless params['Drugs'].nil?
            @Drugs = []
            params['Drugs'].each do |i|
              indicationsdrug_tmp = IndicationsDrug.new
              indicationsdrug_tmp.deserialize(i)
              @Drugs << indicationsdrug_tmp
            end
          end
        end
      end

      # GetDrugIndications请求参数结构体
      class GetDrugIndicationsRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.CommonHeader`
        # @param Data: 获取适应症请求
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.GetDrugIndicationsReqData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = CommonHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = GetDrugIndicationsReqData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 药品适应症响应
      class GetDrugIndicationsResp < TencentCloud::Common::AbstractModel
        # @param Indications: 适应症
        # @type Indications: Array
        # @param DocInfos: 药品说明
        # @type DocInfos: Array

        attr_accessor :Indications, :DocInfos

        def initialize(indications=nil, docinfos=nil)
          @Indications = indications
          @DocInfos = docinfos
        end

        def deserialize(params)
          @Indications = params['Indications']
          unless params['DocInfos'].nil?
            @DocInfos = []
            params['DocInfos'].each do |i|
              docinfo_tmp = DocInfo.new
              docinfo_tmp.deserialize(i)
              @DocInfos << docinfo_tmp
            end
          end
        end
      end

      # GetDrugIndications返回参数结构体
      class GetDrugIndicationsResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 适应症响应
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.GetDrugIndicationsResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = GetDrugIndicationsResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 健康处方
      class HealthPrescriptions < TencentCloud::Common::AbstractModel
        # @param Title: 标题
        # @type Title: String
        # @param Url: 健康处方链接
        # @type Url: String
        # @param KeyInformation: 关键信息
        # @type KeyInformation: String

        attr_accessor :Title, :Url, :KeyInformation

        def initialize(title=nil, url=nil, keyinformation=nil)
          @Title = title
          @Url = url
          @KeyInformation = keyinformation
        end

        def deserialize(params)
          @Title = params['Title']
          @Url = params['Url']
          @KeyInformation = params['KeyInformation']
        end
      end

      # 适应症药品请求
      class IndicationsDrug < TencentCloud::Common::AbstractModel
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param Specifications: 规格
        # @type Specifications: String
        # @param ApprovalNumber: 批准文号
        # @type ApprovalNumber: String
        # @param Manufacturer: 生产厂家
        # @type Manufacturer: String
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param TradeName: 商品名
        # @type TradeName: String
        # @param Type: 类型 默认0 0-西药 2-中药
        # @type Type: Integer

        attr_accessor :DrugName, :Specifications, :ApprovalNumber, :Manufacturer, :DrugId, :TradeName, :Type

        def initialize(drugname=nil, specifications=nil, approvalnumber=nil, manufacturer=nil, drugid=nil, tradename=nil, type=nil)
          @DrugName = drugname
          @Specifications = specifications
          @ApprovalNumber = approvalnumber
          @Manufacturer = manufacturer
          @DrugId = drugid
          @TradeName = tradename
          @Type = type
        end

        def deserialize(params)
          @DrugName = params['DrugName']
          @Specifications = params['Specifications']
          @ApprovalNumber = params['ApprovalNumber']
          @Manufacturer = params['Manufacturer']
          @DrugId = params['DrugId']
          @TradeName = params['TradeName']
          @Type = params['Type']
        end
      end

      # 登录请求对象
      class LoginData < TencentCloud::Common::AbstractModel
        # @param DoctorId: 医生ID
        # @type DoctorId: String
        # @param DoctorName: 医生名称
        # @type DoctorName: String
        # @param DoctorLevel: 医生职级 主治医师、副主任医师、主任医师
        # @type DoctorLevel: String
        # @param DoctorDepartment: 医生科室 当前登录科室
        # @type DoctorDepartment: String
        # @param DepartmentId: 科室ID
        # @type DepartmentId: String

        attr_accessor :DoctorId, :DoctorName, :DoctorLevel, :DoctorDepartment, :DepartmentId

        def initialize(doctorid=nil, doctorname=nil, doctorlevel=nil, doctordepartment=nil, departmentid=nil)
          @DoctorId = doctorid
          @DoctorName = doctorname
          @DoctorLevel = doctorlevel
          @DoctorDepartment = doctordepartment
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @DoctorId = params['DoctorId']
          @DoctorName = params['DoctorName']
          @DoctorLevel = params['DoctorLevel']
          @DoctorDepartment = params['DoctorDepartment']
          @DepartmentId = params['DepartmentId']
        end
      end

      # 登录返回数据
      class LoginDataResp < TencentCloud::Common::AbstractModel
        # @param Token: token
        # @type Token: String
        # @param ExpiresIn: 过期时间
        # @type ExpiresIn: Integer
        # @param Timestamp: 服务端时间戳，时间戳校验失败时返回
        # @type Timestamp: Integer

        attr_accessor :Token, :ExpiresIn, :Timestamp

        def initialize(token=nil, expiresin=nil, timestamp=nil)
          @Token = token
          @ExpiresIn = expiresin
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpiresIn = params['ExpiresIn']
          @Timestamp = params['Timestamp']
        end
      end

      # 登录接口请求头
      class LoginHeader < TencentCloud::Common::AbstractModel
        # @param HospitalId: 机构ID
        # @type HospitalId: String
        # @param PartnerId: 合作方ID
        # @type PartnerId: String
        # @param Timestamp: 加密时间戳毫秒
        # @type Timestamp: Integer
        # @param Signature: 签名数据
        # @type Signature: String
        # @param PlatformId: 平台ID，平台版登录时传入
        # @type PlatformId: String

        attr_accessor :HospitalId, :PartnerId, :Timestamp, :Signature, :PlatformId

        def initialize(hospitalid=nil, partnerid=nil, timestamp=nil, signature=nil, platformid=nil)
          @HospitalId = hospitalid
          @PartnerId = partnerid
          @Timestamp = timestamp
          @Signature = signature
          @PlatformId = platformid
        end

        def deserialize(params)
          @HospitalId = params['HospitalId']
          @PartnerId = params['PartnerId']
          @Timestamp = params['Timestamp']
          @Signature = params['Signature']
          @PlatformId = params['PlatformId']
        end
      end

      # LoginHisTool请求参数结构体
      class LoginHisToolRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.LoginHeader`
        # @param Data: 请求体
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.LoginData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = LoginHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = LoginData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # LoginHisTool返回参数结构体
      class LoginHisToolResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 登录返回token信息
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.LoginDataResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = LoginDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 登出
      class LoginOutData < TencentCloud::Common::AbstractModel
        # @param Token: 登录获取的token
        # @type Token: String

        attr_accessor :Token

        def initialize(token=nil)
          @Token = token
        end

        def deserialize(params)
          @Token = params['Token']
        end
      end

      # 登出header对象
      class LoginOutHeader < TencentCloud::Common::AbstractModel
        # @param PartnerId: 合作方ID
        # @type PartnerId: String
        # @param Timestamp: 时间戳毫秒数
        # @type Timestamp: Integer
        # @param Signature: 签名值
        # @type Signature: String
        # @param HospitalId: 医院ID 单院版传这个
        # @type HospitalId: String
        # @param PlatformId: 平台ID 平台版传这个
        # @type PlatformId: String

        attr_accessor :PartnerId, :Timestamp, :Signature, :HospitalId, :PlatformId

        def initialize(partnerid=nil, timestamp=nil, signature=nil, hospitalid=nil, platformid=nil)
          @PartnerId = partnerid
          @Timestamp = timestamp
          @Signature = signature
          @HospitalId = hospitalid
          @PlatformId = platformid
        end

        def deserialize(params)
          @PartnerId = params['PartnerId']
          @Timestamp = params['Timestamp']
          @Signature = params['Signature']
          @HospitalId = params['HospitalId']
          @PlatformId = params['PlatformId']
        end
      end

      # LoginOutHisTool请求参数结构体
      class LoginOutHisToolRequest < TencentCloud::Common::AbstractModel
        # @param Header: 登出请求header
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.LoginOutHeader`
        # @param Data: 登出请求数据
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.LoginOutData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = LoginOutHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = LoginOutData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # LoginOutHisTool返回参数结构体
      class LoginOutHisToolResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 响应数据
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.LoginOutResponseData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = LoginOutResponseData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 登出数据
      class LoginOutResponseData < TencentCloud::Common::AbstractModel
        # @param Timestamp: 服务器时间戳毫秒
        # @type Timestamp: Integer

        attr_accessor :Timestamp

        def initialize(timestamp=nil)
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
        end
      end

      # 操作结果
      class OperateResp < TencentCloud::Common::AbstractModel
        # @param Dummy: 操作结果
        # @type Dummy: Boolean

        attr_accessor :Dummy

        def initialize(dummy=nil)
          @Dummy = dummy
        end

        def deserialize(params)
          @Dummy = params['Dummy']
        end
      end

      # 患者信息
      class PatientBaseInfo < TencentCloud::Common::AbstractModel
        # @param Sex: 性别
        # @type Sex: String
        # @param Height: 身高 单位cm
        # @type Height: String
        # @param Weight: 体重 单位kg
        # @type Weight: String
        # @param PatientId: 患者ID
        # @type PatientId: String
        # @param Name: 名称
        # @type Name: String
        # @param Age: 年龄
        # @type Age: String
        # @param BirthPlace: 出生地
        # @type BirthPlace: String
        # @param LivePlace: 居住地
        # @type LivePlace: String
        # @param BirthDay: 出生日期和年龄必须传一个
        # @type BirthDay: String

        attr_accessor :Sex, :Height, :Weight, :PatientId, :Name, :Age, :BirthPlace, :LivePlace, :BirthDay

        def initialize(sex=nil, height=nil, weight=nil, patientid=nil, name=nil, age=nil, birthplace=nil, liveplace=nil, birthday=nil)
          @Sex = sex
          @Height = height
          @Weight = weight
          @PatientId = patientid
          @Name = name
          @Age = age
          @BirthPlace = birthplace
          @LivePlace = liveplace
          @BirthDay = birthday
        end

        def deserialize(params)
          @Sex = params['Sex']
          @Height = params['Height']
          @Weight = params['Weight']
          @PatientId = params['PatientId']
          @Name = params['Name']
          @Age = params['Age']
          @BirthPlace = params['BirthPlace']
          @LivePlace = params['LivePlace']
          @BirthDay = params['BirthDay']
        end
      end

      # 患者家族病史
      class PatientFamilyHistory < TencentCloud::Common::AbstractModel
        # @param FamilyDiseaseHistory: 家族病史 如家族病史不能分开，可传入此字段
        # @type FamilyDiseaseHistory: String
        # @param Relation: 关系
        # @type Relation: String
        # @param CurrentSituation: 当前情况
        # @type CurrentSituation: String

        attr_accessor :FamilyDiseaseHistory, :Relation, :CurrentSituation

        def initialize(familydiseasehistory=nil, relation=nil, currentsituation=nil)
          @FamilyDiseaseHistory = familydiseasehistory
          @Relation = relation
          @CurrentSituation = currentsituation
        end

        def deserialize(params)
          @FamilyDiseaseHistory = params['FamilyDiseaseHistory']
          @Relation = params['Relation']
          @CurrentSituation = params['CurrentSituation']
        end
      end

      # 患者过往病史
      class PatientHistory < TencentCloud::Common::AbstractModel
        # @param DiseaseHistory: 病史
        # @type DiseaseHistory: String
        # @param TreatmentHistory: 治疗史
        # @type TreatmentHistory: String

        attr_accessor :DiseaseHistory, :TreatmentHistory

        def initialize(diseasehistory=nil, treatmenthistory=nil)
          @DiseaseHistory = diseasehistory
          @TreatmentHistory = treatmenthistory
        end

        def deserialize(params)
          @DiseaseHistory = params['DiseaseHistory']
          @TreatmentHistory = params['TreatmentHistory']
        end
      end

      # 体格检查
      class PhysicalExam < TencentCloud::Common::AbstractModel
        # @param Pulse: 脉搏，单位：次/分
        # @type Pulse: String
        # @param Breathe: 呼吸，单位：次/分
        # @type Breathe: String
        # @param Weight: 体重，单位KG
        # @type Weight: String
        # @param BodyTemperature: 体温，单位：℃
        # @type BodyTemperature: String
        # @param DiastolicPressure: 舒张压， 单位：mmHg
        # @type DiastolicPressure: String
        # @param SystolicPressure: 收缩压， 单位：mmHg
        # @type SystolicPressure: String

        attr_accessor :Pulse, :Breathe, :Weight, :BodyTemperature, :DiastolicPressure, :SystolicPressure

        def initialize(pulse=nil, breathe=nil, weight=nil, bodytemperature=nil, diastolicpressure=nil, systolicpressure=nil)
          @Pulse = pulse
          @Breathe = breathe
          @Weight = weight
          @BodyTemperature = bodytemperature
          @DiastolicPressure = diastolicpressure
          @SystolicPressure = systolicpressure
        end

        def deserialize(params)
          @Pulse = params['Pulse']
          @Breathe = params['Breathe']
          @Weight = params['Weight']
          @BodyTemperature = params['BodyTemperature']
          @DiastolicPressure = params['DiastolicPressure']
          @SystolicPressure = params['SystolicPressure']
        end
      end

      # 合理用药信息
      class RationalDrugInfo < TencentCloud::Common::AbstractModel
        # @param Hit: 是否有风险
        # @type Hit: Boolean
        # @param DrugUsages: 药品用量风险
        # @type DrugUsages: Array
        # @param DrugRepeats: 重复用药风险
        # @type DrugRepeats: Array
        # @param DrugRoutes: 用药途径风险
        # @type DrugRoutes: Array
        # @param SpecialPopulations: 特殊人群风险
        # @type SpecialPopulations: Array
        # @param DrugTaboos: 禁忌症风险
        # @type DrugTaboos: Array
        # @param DrugInteractions: 相互作用风险
        # @type DrugInteractions: Array
        # @param DrugIncompatibility: 配伍禁忌风险
        # @type DrugIncompatibility: Array
        # @param DrugAllergys: 过敏风险
        # @type DrugAllergys: Array
        # @param DrugIndications: 适应症风险
        # @type DrugIndications: Array
        # @param Abnormals: 异常提醒
        # @type Abnormals: Array
        # @param DrugList: 药品列表
        # @type DrugList: Array

        attr_accessor :Hit, :DrugUsages, :DrugRepeats, :DrugRoutes, :SpecialPopulations, :DrugTaboos, :DrugInteractions, :DrugIncompatibility, :DrugAllergys, :DrugIndications, :Abnormals, :DrugList

        def initialize(hit=nil, drugusages=nil, drugrepeats=nil, drugroutes=nil, specialpopulations=nil, drugtaboos=nil, druginteractions=nil, drugincompatibility=nil, drugallergys=nil, drugindications=nil, abnormals=nil, druglist=nil)
          @Hit = hit
          @DrugUsages = drugusages
          @DrugRepeats = drugrepeats
          @DrugRoutes = drugroutes
          @SpecialPopulations = specialpopulations
          @DrugTaboos = drugtaboos
          @DrugInteractions = druginteractions
          @DrugIncompatibility = drugincompatibility
          @DrugAllergys = drugallergys
          @DrugIndications = drugindications
          @Abnormals = abnormals
          @DrugList = druglist
        end

        def deserialize(params)
          @Hit = params['Hit']
          unless params['DrugUsages'].nil?
            @DrugUsages = []
            params['DrugUsages'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugUsages << riskinfo_tmp
            end
          end
          unless params['DrugRepeats'].nil?
            @DrugRepeats = []
            params['DrugRepeats'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugRepeats << riskinfo_tmp
            end
          end
          unless params['DrugRoutes'].nil?
            @DrugRoutes = []
            params['DrugRoutes'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugRoutes << riskinfo_tmp
            end
          end
          unless params['SpecialPopulations'].nil?
            @SpecialPopulations = []
            params['SpecialPopulations'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @SpecialPopulations << riskinfo_tmp
            end
          end
          unless params['DrugTaboos'].nil?
            @DrugTaboos = []
            params['DrugTaboos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugTaboos << riskinfo_tmp
            end
          end
          unless params['DrugInteractions'].nil?
            @DrugInteractions = []
            params['DrugInteractions'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugInteractions << riskinfo_tmp
            end
          end
          unless params['DrugIncompatibility'].nil?
            @DrugIncompatibility = []
            params['DrugIncompatibility'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugIncompatibility << riskinfo_tmp
            end
          end
          unless params['DrugAllergys'].nil?
            @DrugAllergys = []
            params['DrugAllergys'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugAllergys << riskinfo_tmp
            end
          end
          unless params['DrugIndications'].nil?
            @DrugIndications = []
            params['DrugIndications'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @DrugIndications << riskinfo_tmp
            end
          end
          unless params['Abnormals'].nil?
            @Abnormals = []
            params['Abnormals'].each do |i|
              abnormals_tmp = Abnormals.new
              abnormals_tmp.deserialize(i)
              @Abnormals << abnormals_tmp
            end
          end
          unless params['DrugList'].nil?
            @DrugList = []
            params['DrugList'].each do |i|
              druglist_tmp = DrugList.new
              druglist_tmp.deserialize(i)
              @DrugList << druglist_tmp
            end
          end
        end
      end

      # 推荐用法
      class RecommendedUsage < TencentCloud::Common::AbstractModel
        # @param UsageRoute: 给药途径
        # @type UsageRoute: String
        # @param Frequency: 给药频率 格式为“最小频次,最大频次,频次单位,频次周期”，如"1,2,次,2"， 表示2天内最少给药1次，最大给药2次。
        # @type Frequency: String
        # @param SingleDose: 给药剂量 格式为"最小剂量,最大剂量,剂量单位"，如"10,10,ml"，<br>表示每次最大给药量为10ml，最小给药量为10ml。
        # @type SingleDose: String

        attr_accessor :UsageRoute, :Frequency, :SingleDose

        def initialize(usageroute=nil, frequency=nil, singledose=nil)
          @UsageRoute = usageroute
          @Frequency = frequency
          @SingleDose = singledose
        end

        def deserialize(params)
          @UsageRoute = params['UsageRoute']
          @Frequency = params['Frequency']
          @SingleDose = params['SingleDose']
        end
      end

      # 病历质控
      class RecordQuality < TencentCloud::Common::AbstractModel
        # @param Hit: 病历是否有问题
        # @type Hit: Boolean
        # @param Completeness: 完整性问题
        # @type Completeness: String
        # @param Timeliness: 及时性问题
        # @type Timeliness: String
        # @param Logical: 逻辑性问题
        # @type Logical: String

        attr_accessor :Hit, :Completeness, :Timeliness, :Logical

        def initialize(hit=nil, completeness=nil, timeliness=nil, logical=nil)
          @Hit = hit
          @Completeness = completeness
          @Timeliness = timeliness
          @Logical = logical
        end

        def deserialize(params)
          @Hit = params['Hit']
          @Completeness = params['Completeness']
          @Timeliness = params['Timeliness']
          @Logical = params['Logical']
        end
      end

      # 转诊提醒
      class ReferralInfo < TencentCloud::Common::AbstractModel
        # @param Hit: 命中
        # @type Hit: Boolean
        # @param Tips: 提示
        # @type Tips: String

        attr_accessor :Hit, :Tips

        def initialize(hit=nil, tips=nil)
          @Hit = hit
          @Tips = tips
        end

        def deserialize(params)
          @Hit = params['Hit']
          @Tips = params['Tips']
        end
      end

      # 预测数据
      class RequestCase < TencentCloud::Common::AbstractModel
        # @param CaseType: 处方类型 0:门诊处方；1:住院医嘱；2:急诊处方
        # @type CaseType: Integer
        # @param ChiefComplaint: 主诉
        # @type ChiefComplaint: String
        # @param Department: 科室
        # @type Department: String
        # @param CaseId: 病历文书ID
        # 医生每次书写病历文书的ID，文书内容包含主诉，病史，当前诊断等内容<br />门诊场景：门诊病历文书（带有主诉、病史、诊断及药品的）只有一份，这个编号只有一个。<br/>住院场景：假设住院3天，医生每天都会写一份病历文书（带有主诉、病史、诊断及医嘱药品的文书），那么有对应三个病历文书编号，每次调用预测接口都要传入不同的病历文书编号。注意：如两次调用预测接口，传相同的caseid，则在药师端管理平台的上一次审方记录中的诊断会被本次接口传入的诊断更新。
        # @type CaseId: String
        # @param CaseTime: 病历更新时间
        # @type CaseTime: String
        # @param VisitId: 就诊ID
        # 门诊处方传门诊号，住院医嘱传住院号；备注：门诊场景：用户挂一次号，看一个医生，这时候会有一个代表变成就诊的编号，下一次挂号就诊，这个编号会变。<br/>住院场景：用户本次办理入院，会有一个住院编号，仅代表本次住院，如果下次再住院，这个编号会变。
        # @type VisitId: String
        # @param PatientBaseinfo: 患者信息
        # @type PatientBaseinfo: :class:`Tencentcloud::Aca.v20210323.models.PatientBaseInfo`
        # @param DoctorInfo: 医生信息
        # @type DoctorInfo: :class:`Tencentcloud::Aca.v20210323.models.DoctorInfo`
        # @param PresentIllness: 现病史
        # @type PresentIllness: String
        # @param PatientOther: 患者其他信息，包含过敏史等
        # @type PatientOther: String
        # @param PatientHistory: 患者过往病史
        # @type PatientHistory: :class:`Tencentcloud::Aca.v20210323.models.PatientHistory`
        # @param PatientFamilyHistory: 患者家族病史
        # @type PatientFamilyHistory: :class:`Tencentcloud::Aca.v20210323.models.PatientFamilyHistory`
        # @param PhysicalExam: 体格检查
        # @type PhysicalExam: :class:`Tencentcloud::Aca.v20210323.models.PhysicalExam`
        # @param EmrDiagnosises: 诊断列表，第一个为首要诊断
        # @type EmrDiagnosises: Array
        # @param Prescriptions: 处方列表
        # @type Prescriptions: Array

        attr_accessor :CaseType, :ChiefComplaint, :Department, :CaseId, :CaseTime, :VisitId, :PatientBaseinfo, :DoctorInfo, :PresentIllness, :PatientOther, :PatientHistory, :PatientFamilyHistory, :PhysicalExam, :EmrDiagnosises, :Prescriptions

        def initialize(casetype=nil, chiefcomplaint=nil, department=nil, caseid=nil, casetime=nil, visitid=nil, patientbaseinfo=nil, doctorinfo=nil, presentillness=nil, patientother=nil, patienthistory=nil, patientfamilyhistory=nil, physicalexam=nil, emrdiagnosises=nil, prescriptions=nil)
          @CaseType = casetype
          @ChiefComplaint = chiefcomplaint
          @Department = department
          @CaseId = caseid
          @CaseTime = casetime
          @VisitId = visitid
          @PatientBaseinfo = patientbaseinfo
          @DoctorInfo = doctorinfo
          @PresentIllness = presentillness
          @PatientOther = patientother
          @PatientHistory = patienthistory
          @PatientFamilyHistory = patientfamilyhistory
          @PhysicalExam = physicalexam
          @EmrDiagnosises = emrdiagnosises
          @Prescriptions = prescriptions
        end

        def deserialize(params)
          @CaseType = params['CaseType']
          @ChiefComplaint = params['ChiefComplaint']
          @Department = params['Department']
          @CaseId = params['CaseId']
          @CaseTime = params['CaseTime']
          @VisitId = params['VisitId']
          unless params['PatientBaseinfo'].nil?
            @PatientBaseinfo = PatientBaseInfo.new
            @PatientBaseinfo.deserialize(params['PatientBaseinfo'])
          end
          unless params['DoctorInfo'].nil?
            @DoctorInfo = DoctorInfo.new
            @DoctorInfo.deserialize(params['DoctorInfo'])
          end
          @PresentIllness = params['PresentIllness']
          @PatientOther = params['PatientOther']
          unless params['PatientHistory'].nil?
            @PatientHistory = PatientHistory.new
            @PatientHistory.deserialize(params['PatientHistory'])
          end
          unless params['PatientFamilyHistory'].nil?
            @PatientFamilyHistory = PatientFamilyHistory.new
            @PatientFamilyHistory.deserialize(params['PatientFamilyHistory'])
          end
          unless params['PhysicalExam'].nil?
            @PhysicalExam = PhysicalExam.new
            @PhysicalExam.deserialize(params['PhysicalExam'])
          end
          unless params['EmrDiagnosises'].nil?
            @EmrDiagnosises = []
            params['EmrDiagnosises'].each do |i|
              emrdiagnosises_tmp = EmrDiagnosises.new
              emrdiagnosises_tmp.deserialize(i)
              @EmrDiagnosises << emrdiagnosises_tmp
            end
          end
          unless params['Prescriptions'].nil?
            @Prescriptions = []
            params['Prescriptions'].each do |i|
              drugusage_tmp = DrugUsage.new
              drugusage_tmp.deserialize(i)
              @Prescriptions << drugusage_tmp
            end
          end
        end
      end

      # 风险信息
      class RiskInfo < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param RiskLevel: 风险等级：低级风险、中级风险、高级风险
        # @type RiskLevel: String
        # @param RiskTips: 风险提示
        # @type RiskTips: String
        # @param FdaLevel: FDA分级
        # @type FdaLevel: String
        # @param RelatedDrugName: 关联药品名称
        # @type RelatedDrugName: String
        # @param RelatedPrescriptionId: 关联处方ID
        # @type RelatedPrescriptionId: String

        attr_accessor :DrugId, :DrugName, :RiskLevel, :RiskTips, :FdaLevel, :RelatedDrugName, :RelatedPrescriptionId

        def initialize(drugid=nil, drugname=nil, risklevel=nil, risktips=nil, fdalevel=nil, relateddrugname=nil, relatedprescriptionid=nil)
          @DrugId = drugid
          @DrugName = drugname
          @RiskLevel = risklevel
          @RiskTips = risktips
          @FdaLevel = fdalevel
          @RelatedDrugName = relateddrugname
          @RelatedPrescriptionId = relatedprescriptionid
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @DrugName = params['DrugName']
          @RiskLevel = params['RiskLevel']
          @RiskTips = params['RiskTips']
          @FdaLevel = params['FdaLevel']
          @RelatedDrugName = params['RelatedDrugName']
          @RelatedPrescriptionId = params['RelatedPrescriptionId']
        end
      end

      # 智能用药请求数据
      class SmartDrugInfoData < TencentCloud::Common::AbstractModel
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param Specifications: 规格
        # @type Specifications: String
        # @param ApprovalNumber: 批准文号
        # @type ApprovalNumber: String
        # @param Manufacturer: 生产厂家
        # @type Manufacturer: String
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param Diagnosis: 诊断
        # @type Diagnosis: String
        # @param Age: 年龄
        # @type Age: Float

        attr_accessor :DrugName, :Specifications, :ApprovalNumber, :Manufacturer, :DrugId, :Diagnosis, :Age

        def initialize(drugname=nil, specifications=nil, approvalnumber=nil, manufacturer=nil, drugid=nil, diagnosis=nil, age=nil)
          @DrugName = drugname
          @Specifications = specifications
          @ApprovalNumber = approvalnumber
          @Manufacturer = manufacturer
          @DrugId = drugid
          @Diagnosis = diagnosis
          @Age = age
        end

        def deserialize(params)
          @DrugName = params['DrugName']
          @Specifications = params['Specifications']
          @ApprovalNumber = params['ApprovalNumber']
          @Manufacturer = params['Manufacturer']
          @DrugId = params['DrugId']
          @Diagnosis = params['Diagnosis']
          @Age = params['Age']
        end
      end

      # SmartDrugInfo请求参数结构体
      class SmartDrugInfoRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.CommonHeader`
        # @param Data: 药品信息
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SmartDrugInfoData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = CommonHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = SmartDrugInfoData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 智能用药响应
      class SmartDrugInfoResp < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品ID
        # @type DrugId: String
        # @param SequenceId: 序列ID
        # @type SequenceId: Integer
        # @param DrugHashId: 药品哈希ID
        # @type DrugHashId: String
        # @param ImgUrl: 图片URL
        # @type ImgUrl: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param TradeName: 商品名
        # @type TradeName: String
        # @param EnglishName: 英文名称
        # @type EnglishName: String
        # @param EnglishTradeName: 英文商品名
        # @type EnglishTradeName: String
        # @param Pinyin: 拼音
        # @type Pinyin: String
        # @param OtherNames: 其他名称
        # @type OtherNames: String
        # @param ChemicalName: 化学名称
        # @type ChemicalName: String
        # @param EnglishChemicalName: 英文化学名称
        # @type EnglishChemicalName: String
        # @param ApprovalNumber: 批准文号
        # @type ApprovalNumber: String
        # @param Property: 药品属性标签 多个标签时 | 分隔，如抗菌药|抗生素|贵重药品
        # @type Property: String
        # @param Ingredients: 药品成分
        # @type Ingredients: String
        # @param PhenotypicTrait: 药品性状
        # @type PhenotypicTrait: String
        # @param Indications: 适应症
        # @type Indications: String
        # @param Specifications: 规格
        # @type Specifications: String
        # @param UsageAndDosage: 用法用量
        # @type UsageAndDosage: String
        # @param RecommendedUsage: 推荐用法
        # @type RecommendedUsage: :class:`Tencentcloud::Aca.v20210323.models.RecommendedUsage`
        # @param AdverseReaction: 不良反应
        # @type AdverseReaction: String
        # @param Contraindication: 禁忌
        # @type Contraindication: String
        # @param Attentions: 注意事项
        # @type Attentions: String
        # @param Overdose: 药物过量
        # @type Overdose: String
        # @param PregnantAndLactatingWomen: 孕妇及哺乳期妇女用药
        # @type PregnantAndLactatingWomen: String
        # @param ElderlyPatients: 老年患者用药
        # @type ElderlyPatients: String
        # @param PediatricDrugs: 儿童用药
        # @type PediatricDrugs: String
        # @param Interactions: 药物相互作用
        # @type Interactions: String
        # @param ClinicalResearch: 临床研究
        # @type ClinicalResearch: String
        # @param PharmacologyToxicology: 药理毒理
        # @type PharmacologyToxicology: String
        # @param Pharmacokinetics: 药代动力学
        # @type Pharmacokinetics: String
        # @param Warning: 警告
        # @type Warning: String
        # @param ExpireDate: 有效期
        # @type ExpireDate: String
        # @param Storage: 贮藏
        # @type Storage: String
        # @param Pack: 包装
        # @type Pack: String
        # @param Manufacturer: 生产企业
        # @type Manufacturer: String
        # @param ManufacturerAddress: 生产企业地址
        # @type ManufacturerAddress: String
        # @param ManufacturerPhone: 生产企业电话
        # @type ManufacturerPhone: String
        # @param ManufacturerEmail: 生产企业邮箱
        # @type ManufacturerEmail: String
        # @param ManufacturerWebsite: 生产企业网站
        # @type ManufacturerWebsite: String
        # @param DocRevisionTime: 说明书制定和修订时间
        # @type DocRevisionTime: String
        # @param References: 参考文献
        # @type References: String
        # @param DrugDosageForm: 剂型
        # @type DrugDosageForm: String
        # @param DrugRoute: 给药途径
        # @type DrugRoute: String
        # @param DrugBasicCode: 药品本位码
        # @type DrugBasicCode: String
        # @param OctTag: OCT标签
        # @type OctTag: String

        attr_accessor :DrugId, :SequenceId, :DrugHashId, :ImgUrl, :DrugName, :TradeName, :EnglishName, :EnglishTradeName, :Pinyin, :OtherNames, :ChemicalName, :EnglishChemicalName, :ApprovalNumber, :Property, :Ingredients, :PhenotypicTrait, :Indications, :Specifications, :UsageAndDosage, :RecommendedUsage, :AdverseReaction, :Contraindication, :Attentions, :Overdose, :PregnantAndLactatingWomen, :ElderlyPatients, :PediatricDrugs, :Interactions, :ClinicalResearch, :PharmacologyToxicology, :Pharmacokinetics, :Warning, :ExpireDate, :Storage, :Pack, :Manufacturer, :ManufacturerAddress, :ManufacturerPhone, :ManufacturerEmail, :ManufacturerWebsite, :DocRevisionTime, :References, :DrugDosageForm, :DrugRoute, :DrugBasicCode, :OctTag

        def initialize(drugid=nil, sequenceid=nil, drughashid=nil, imgurl=nil, drugname=nil, tradename=nil, englishname=nil, englishtradename=nil, pinyin=nil, othernames=nil, chemicalname=nil, englishchemicalname=nil, approvalnumber=nil, property=nil, ingredients=nil, phenotypictrait=nil, indications=nil, specifications=nil, usageanddosage=nil, recommendedusage=nil, adversereaction=nil, contraindication=nil, attentions=nil, overdose=nil, pregnantandlactatingwomen=nil, elderlypatients=nil, pediatricdrugs=nil, interactions=nil, clinicalresearch=nil, pharmacologytoxicology=nil, pharmacokinetics=nil, warning=nil, expiredate=nil, storage=nil, pack=nil, manufacturer=nil, manufactureraddress=nil, manufacturerphone=nil, manufactureremail=nil, manufacturerwebsite=nil, docrevisiontime=nil, references=nil, drugdosageform=nil, drugroute=nil, drugbasiccode=nil, octtag=nil)
          @DrugId = drugid
          @SequenceId = sequenceid
          @DrugHashId = drughashid
          @ImgUrl = imgurl
          @DrugName = drugname
          @TradeName = tradename
          @EnglishName = englishname
          @EnglishTradeName = englishtradename
          @Pinyin = pinyin
          @OtherNames = othernames
          @ChemicalName = chemicalname
          @EnglishChemicalName = englishchemicalname
          @ApprovalNumber = approvalnumber
          @Property = property
          @Ingredients = ingredients
          @PhenotypicTrait = phenotypictrait
          @Indications = indications
          @Specifications = specifications
          @UsageAndDosage = usageanddosage
          @RecommendedUsage = recommendedusage
          @AdverseReaction = adversereaction
          @Contraindication = contraindication
          @Attentions = attentions
          @Overdose = overdose
          @PregnantAndLactatingWomen = pregnantandlactatingwomen
          @ElderlyPatients = elderlypatients
          @PediatricDrugs = pediatricdrugs
          @Interactions = interactions
          @ClinicalResearch = clinicalresearch
          @PharmacologyToxicology = pharmacologytoxicology
          @Pharmacokinetics = pharmacokinetics
          @Warning = warning
          @ExpireDate = expiredate
          @Storage = storage
          @Pack = pack
          @Manufacturer = manufacturer
          @ManufacturerAddress = manufactureraddress
          @ManufacturerPhone = manufacturerphone
          @ManufacturerEmail = manufactureremail
          @ManufacturerWebsite = manufacturerwebsite
          @DocRevisionTime = docrevisiontime
          @References = references
          @DrugDosageForm = drugdosageform
          @DrugRoute = drugroute
          @DrugBasicCode = drugbasiccode
          @OctTag = octtag
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @SequenceId = params['SequenceId']
          @DrugHashId = params['DrugHashId']
          @ImgUrl = params['ImgUrl']
          @DrugName = params['DrugName']
          @TradeName = params['TradeName']
          @EnglishName = params['EnglishName']
          @EnglishTradeName = params['EnglishTradeName']
          @Pinyin = params['Pinyin']
          @OtherNames = params['OtherNames']
          @ChemicalName = params['ChemicalName']
          @EnglishChemicalName = params['EnglishChemicalName']
          @ApprovalNumber = params['ApprovalNumber']
          @Property = params['Property']
          @Ingredients = params['Ingredients']
          @PhenotypicTrait = params['PhenotypicTrait']
          @Indications = params['Indications']
          @Specifications = params['Specifications']
          @UsageAndDosage = params['UsageAndDosage']
          unless params['RecommendedUsage'].nil?
            @RecommendedUsage = RecommendedUsage.new
            @RecommendedUsage.deserialize(params['RecommendedUsage'])
          end
          @AdverseReaction = params['AdverseReaction']
          @Contraindication = params['Contraindication']
          @Attentions = params['Attentions']
          @Overdose = params['Overdose']
          @PregnantAndLactatingWomen = params['PregnantAndLactatingWomen']
          @ElderlyPatients = params['ElderlyPatients']
          @PediatricDrugs = params['PediatricDrugs']
          @Interactions = params['Interactions']
          @ClinicalResearch = params['ClinicalResearch']
          @PharmacologyToxicology = params['PharmacologyToxicology']
          @Pharmacokinetics = params['Pharmacokinetics']
          @Warning = params['Warning']
          @ExpireDate = params['ExpireDate']
          @Storage = params['Storage']
          @Pack = params['Pack']
          @Manufacturer = params['Manufacturer']
          @ManufacturerAddress = params['ManufacturerAddress']
          @ManufacturerPhone = params['ManufacturerPhone']
          @ManufacturerEmail = params['ManufacturerEmail']
          @ManufacturerWebsite = params['ManufacturerWebsite']
          @DocRevisionTime = params['DocRevisionTime']
          @References = params['References']
          @DrugDosageForm = params['DrugDosageForm']
          @DrugRoute = params['DrugRoute']
          @DrugBasicCode = params['DrugBasicCode']
          @OctTag = params['OctTag']
        end
      end

      # SmartDrugInfo返回参数结构体
      class SmartDrugInfoResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 智能用药信息
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SmartDrugInfoResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = SmartDrugInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 智能预测接口请求对象
      class SmartPredictReqData < TencentCloud::Common::AbstractModel
        # @param RequestCase: 病历和处方信息
        # @type RequestCase: :class:`Tencentcloud::Aca.v20210323.models.RequestCase`
        # @param RequestType: 0--默认值，同时返回**疾病预测**和**用药审查**结果<br>1--仅返回**疾病预测**结果<br>2--仅返回**用药审查**结果<br>已同时激活两个模块时，可按需使用
        # @type RequestType: Integer

        attr_accessor :RequestCase, :RequestType

        def initialize(requestcase=nil, requesttype=nil)
          @RequestCase = requestcase
          @RequestType = requesttype
        end

        def deserialize(params)
          unless params['RequestCase'].nil?
            @RequestCase = RequestCase.new
            @RequestCase.deserialize(params['RequestCase'])
          end
          @RequestType = params['RequestType']
        end
      end

      # SmartPredict请求参数结构体
      class SmartPredictRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.CommonHeader`
        # @param Data: 请求体
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SmartPredictReqData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = CommonHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = SmartPredictReqData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 智能问诊响应数据
      class SmartPredictRespData < TencentCloud::Common::AbstractModel
        # @param DiagnosisInfo: 诊断辅助内容
        # @type DiagnosisInfo: :class:`Tencentcloud::Aca.v20210323.models.DiagnosisInfo`
        # @param RationalDrugInfo: 用药风险信息
        # @type RationalDrugInfo: :class:`Tencentcloud::Aca.v20210323.models.RationalDrugInfo`

        attr_accessor :DiagnosisInfo, :RationalDrugInfo

        def initialize(diagnosisinfo=nil, rationaldruginfo=nil)
          @DiagnosisInfo = diagnosisinfo
          @RationalDrugInfo = rationaldruginfo
        end

        def deserialize(params)
          unless params['DiagnosisInfo'].nil?
            @DiagnosisInfo = DiagnosisInfo.new
            @DiagnosisInfo.deserialize(params['DiagnosisInfo'])
          end
          unless params['RationalDrugInfo'].nil?
            @RationalDrugInfo = RationalDrugInfo.new
            @RationalDrugInfo.deserialize(params['RationalDrugInfo'])
          end
        end
      end

      # SmartPredict返回参数结构体
      class SmartPredictResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 智能预测内容
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SmartPredictRespData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = SmartPredictRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 疑似诊断
      class SuspectedDiagnosis < TencentCloud::Common::AbstractModel
        # @param DiseaseName: 疾病名称
        # @type DiseaseName: String
        # @param IcdCode: ICD代码
        # @type IcdCode: String
        # @param Symptom: 症状
        # @type Symptom: String
        # @param Physi: 体征
        # @type Physi: String
        # @param Inspection: 检查
        # @type Inspection: String
        # @param DiseaseGuideInfo: 疾病指南信息
        # @type DiseaseGuideInfo: String
        # @param Probability: 置信度
        # @type Probability: Float

        attr_accessor :DiseaseName, :IcdCode, :Symptom, :Physi, :Inspection, :DiseaseGuideInfo, :Probability

        def initialize(diseasename=nil, icdcode=nil, symptom=nil, physi=nil, inspection=nil, diseaseguideinfo=nil, probability=nil)
          @DiseaseName = diseasename
          @IcdCode = icdcode
          @Symptom = symptom
          @Physi = physi
          @Inspection = inspection
          @DiseaseGuideInfo = diseaseguideinfo
          @Probability = probability
        end

        def deserialize(params)
          @DiseaseName = params['DiseaseName']
          @IcdCode = params['IcdCode']
          @Symptom = params['Symptom']
          @Physi = params['Physi']
          @Inspection = params['Inspection']
          @DiseaseGuideInfo = params['DiseaseGuideInfo']
          @Probability = params['Probability']
        end
      end

      # 同步科室信息
      class SyncDepartmentData < TencentCloud::Common::AbstractModel
        # @param Cmd: 操作类型 1:获取科室列表  2:同步科室信息（增、改） 3:删除科室
        # @type Cmd: Integer
        # @param List: 科室列表
        # @type List: Array

        attr_accessor :Cmd, :List

        def initialize(cmd=nil, list=nil)
          @Cmd = cmd
          @List = list
        end

        def deserialize(params)
          @Cmd = params['Cmd']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              department_tmp = Department.new
              department_tmp.deserialize(i)
              @List << department_tmp
            end
          end
        end
      end

      # SyncDepartment请求参数结构体
      class SyncDepartmentRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.CommonHeader`
        # @param Data: 同步数据
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SyncDepartmentData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = CommonHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = SyncDepartmentData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 同步科室信息返回
      class SyncDepartmentRespData < TencentCloud::Common::AbstractModel
        # @param List: 科室列表
        # @type List: Array

        attr_accessor :List

        def initialize(list=nil)
          @List = list
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              department_tmp = Department.new
              department_tmp.deserialize(i)
              @List << department_tmp
            end
          end
        end
      end

      # SyncDepartment返回参数结构体
      class SyncDepartmentResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 响应数据
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SyncDepartmentRespData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = SyncDepartmentRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 同步字典数据
      class SyncDictData < TencentCloud::Common::AbstractModel
        # @param HospitalId: 医院ID
        # @type HospitalId: String
        # @param DictType: 字典类型 1-给药频次 2-给药途径 3-科室 4-诊断
        # @type DictType: Integer
        # @param Dicts: 字典数据
        # @type Dicts: Array

        attr_accessor :HospitalId, :DictType, :Dicts

        def initialize(hospitalid=nil, dicttype=nil, dicts=nil)
          @HospitalId = hospitalid
          @DictType = dicttype
          @Dicts = dicts
        end

        def deserialize(params)
          @HospitalId = params['HospitalId']
          @DictType = params['DictType']
          unless params['Dicts'].nil?
            @Dicts = []
            params['Dicts'].each do |i|
              dict_tmp = Dict.new
              dict_tmp.deserialize(i)
              @Dicts << dict_tmp
            end
          end
        end
      end

      # SyncStandardDict请求参数结构体
      class SyncStandardDictRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.CommonHeader`
        # @param Data: 字典数据
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.SyncDictData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = CommonHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = SyncDictData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # SyncStandardDict返回参数结构体
      class SyncStandardDictResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :RequestId

        def initialize(code=nil, message=nil, requestid=nil)
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # 治疗方案
      class TreatmentGuide < TencentCloud::Common::AbstractModel
        # @param DoctorDiagnosis: 医生诊断
        # @type DoctorDiagnosis: String
        # @param DiseaseName: 疾病名称
        # @type DiseaseName: String
        # @param TreatDetailUrl: 治疗详情链接
        # @type TreatDetailUrl: String
        # @param TreatPlan: 治疗方案
        # @type TreatPlan: String
        # @param TreatPrinciple: 治疗原则
        # @type TreatPrinciple: String

        attr_accessor :DoctorDiagnosis, :DiseaseName, :TreatDetailUrl, :TreatPlan, :TreatPrinciple

        def initialize(doctordiagnosis=nil, diseasename=nil, treatdetailurl=nil, treatplan=nil, treatprinciple=nil)
          @DoctorDiagnosis = doctordiagnosis
          @DiseaseName = diseasename
          @TreatDetailUrl = treatdetailurl
          @TreatPlan = treatplan
          @TreatPrinciple = treatprinciple
        end

        def deserialize(params)
          @DoctorDiagnosis = params['DoctorDiagnosis']
          @DiseaseName = params['DiseaseName']
          @TreatDetailUrl = params['TreatDetailUrl']
          @TreatPlan = params['TreatPlan']
          @TreatPrinciple = params['TreatPrinciple']
        end
      end

      # 上传药品数据
      class UploadDrugData < TencentCloud::Common::AbstractModel
        # @param Drugs: 药品列表
        # @type Drugs: Array

        attr_accessor :Drugs

        def initialize(drugs=nil)
          @Drugs = drugs
        end

        def deserialize(params)
          unless params['Drugs'].nil?
            @Drugs = []
            params['Drugs'].each do |i|
              drug_tmp = Drug.new
              drug_tmp.deserialize(i)
              @Drugs << drug_tmp
            end
          end
        end
      end

      # UploadDrugs请求参数结构体
      class UploadDrugsRequest < TencentCloud::Common::AbstractModel
        # @param Header: 请求头数据
        # @type Header: :class:`Tencentcloud::Aca.v20210323.models.CommonHeader`
        # @param Data: 药品上传数据
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.UploadDrugData`

        attr_accessor :Header, :Data

        def initialize(header=nil, data=nil)
          @Header = header
          @Data = data
        end

        def deserialize(params)
          unless params['Header'].nil?
            @Header = CommonHeader.new
            @Header.deserialize(params['Header'])
          end
          unless params['Data'].nil?
            @Data = UploadDrugData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # UploadDrugs返回参数结构体
      class UploadDrugsResponse < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Data: 操作信息
        # @type Data: :class:`Tencentcloud::Aca.v20210323.models.OperateResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = OperateResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 生命体征风险
      class VitalSignsInfo < TencentCloud::Common::AbstractModel
        # @param Hit: 是否包含风险
        # @type Hit: Boolean
        # @param Tips: 提示
        # @type Tips: String

        attr_accessor :Hit, :Tips

        def initialize(hit=nil, tips=nil)
          @Hit = hit
          @Tips = tips
        end

        def deserialize(params)
          @Hit = params['Hit']
          @Tips = params['Tips']
        end
      end

    end
  end
end

