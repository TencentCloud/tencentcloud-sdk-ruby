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
  module Cii
    module V20210408
      # 报告分类信息
      class ClassifyInfo < TencentCloud::Common::AbstractModel
        # @param FirstClass: 一级分类
        # @type FirstClass: String
        # @param SecondClass: 二级分类
        # @type SecondClass: String
        # @param ThirdClass: 三级分类
        # @type ThirdClass: String
        # @param FirstClassId: 一级分类序号
        # @type FirstClassId: Integer
        # @param SecondClassId: 二级分类序号
        # @type SecondClassId: Integer
        # @param ThirdClassId: 三级分类序号
        # @type ThirdClassId: Integer

        attr_accessor :FirstClass, :SecondClass, :ThirdClass, :FirstClassId, :SecondClassId, :ThirdClassId
        
        def initialize(firstclass=nil, secondclass=nil, thirdclass=nil, firstclassid=nil, secondclassid=nil, thirdclassid=nil)
          @FirstClass = firstclass
          @SecondClass = secondclass
          @ThirdClass = thirdclass
          @FirstClassId = firstclassid
          @SecondClassId = secondclassid
          @ThirdClassId = thirdclassid
        end

        def deserialize(params)
          @FirstClass = params['FirstClass']
          @SecondClass = params['SecondClass']
          @ThirdClass = params['ThirdClass']
          @FirstClassId = params['FirstClassId']
          @SecondClassId = params['SecondClassId']
          @ThirdClassId = params['ThirdClassId']
        end
      end

      # 结构化对比指标（准确率/召回率）数据
      class CompareMetricsData < TencentCloud::Common::AbstractModel
        # @param ShortStructAccuracy: 短文准确率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShortStructAccuracy: String
        # @param ShortStructRecall: 短文召回率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShortStructRecall: String
        # @param LongStructAccuracy: 长文结构化准确率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongStructAccuracy: String
        # @param LongStructRecall: 长文结构化召回率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongStructRecall: String
        # @param LongContentAccuracy: 长文提取准确率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongContentAccuracy: String
        # @param LongContentRecall: 长文提取召回率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongContentRecall: String

        attr_accessor :ShortStructAccuracy, :ShortStructRecall, :LongStructAccuracy, :LongStructRecall, :LongContentAccuracy, :LongContentRecall
        
        def initialize(shortstructaccuracy=nil, shortstructrecall=nil, longstructaccuracy=nil, longstructrecall=nil, longcontentaccuracy=nil, longcontentrecall=nil)
          @ShortStructAccuracy = shortstructaccuracy
          @ShortStructRecall = shortstructrecall
          @LongStructAccuracy = longstructaccuracy
          @LongStructRecall = longstructrecall
          @LongContentAccuracy = longcontentaccuracy
          @LongContentRecall = longcontentrecall
        end

        def deserialize(params)
          @ShortStructAccuracy = params['ShortStructAccuracy']
          @ShortStructRecall = params['ShortStructRecall']
          @LongStructAccuracy = params['LongStructAccuracy']
          @LongStructRecall = params['LongStructRecall']
          @LongContentAccuracy = params['LongContentAccuracy']
          @LongContentRecall = params['LongContentRecall']
        end
      end

      # 创建自动分类的结构化任务子任务信息
      class CreateAutoClassifyStructureTaskInfo < TencentCloud::Common::AbstractModel
        # @param FileList: 报告文件上传的地址列表，需按顺序排列。如果使用ImageList参数，置为空数组即可
        # @type FileList: Array
        # @param CustomerId: 客户号
        # @type CustomerId: String
        # @param CustomerName: 客户姓名
        # @type CustomerName: String
        # @param ImageList: 报告上传的图片内容数组，图片内容采用base64编码，需按顺序排列
        # @type ImageList: Array

        attr_accessor :FileList, :CustomerId, :CustomerName, :ImageList
        
        def initialize(filelist=nil, customerid=nil, customername=nil, imagelist=nil)
          @FileList = filelist
          @CustomerId = customerid
          @CustomerName = customername
          @ImageList = imagelist
        end

        def deserialize(params)
          @FileList = params['FileList']
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          @ImageList = params['ImageList']
        end
      end

      # CreateAutoClassifyStructureTask请求参数结构体
      class CreateAutoClassifyStructureTaskRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 服务类型
        # Structured 仅结构化
        # Underwrite 结构化+核保
        # @type ServiceType: String
        # @param TaskInfos: 创建任务时可以上传多个报告，后台生成多个识别子任务，子任务的详细信息
        # @type TaskInfos: Array
        # @param PolicyId: 保单号
        # @type PolicyId: String
        # @param TriggerType: 核保触发方式
        # Auto 自动
        # Manual 手动
        # @type TriggerType: String
        # @param InsuranceTypes: 险种，如果是体检报告类型，此参数是必填，类型说明如下：
        # CriticalDiseaseInsurance:重疾险
        # LifeInsurance：寿险
        # AccidentInsurance：意外险
        # @type InsuranceTypes: Array
        # @param CallbackUrl: 回调地址，接收Post请求传送结果
        # @type CallbackUrl: String

        attr_accessor :ServiceType, :TaskInfos, :PolicyId, :TriggerType, :InsuranceTypes, :CallbackUrl
        
        def initialize(servicetype=nil, taskinfos=nil, policyid=nil, triggertype=nil, insurancetypes=nil, callbackurl=nil)
          @ServiceType = servicetype
          @TaskInfos = taskinfos
          @PolicyId = policyid
          @TriggerType = triggertype
          @InsuranceTypes = insurancetypes
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              createautoclassifystructuretaskinfo_tmp = CreateAutoClassifyStructureTaskInfo.new
              createautoclassifystructuretaskinfo_tmp.deserialize(i)
              @TaskInfos << createautoclassifystructuretaskinfo_tmp
            end
          end
          @PolicyId = params['PolicyId']
          @TriggerType = params['TriggerType']
          @InsuranceTypes = params['InsuranceTypes']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # CreateAutoClassifyStructureTask返回参数结构体
      class CreateAutoClassifyStructureTaskResponse < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 创建的主任务号，用于查询结果
        # @type MainTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MainTaskId, :RequestId
        
        def initialize(maintaskid=nil, requestid=nil)
          @MainTaskId = maintaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
          @RequestId = params['RequestId']
        end
      end

      # 创建结构化任务子任务信息
      class CreateStructureTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型:HealthReport(体检报告); BUltraReport(B超报告);MedCheckReport(检查报告);LaboratoryReport(检验报告); PathologyReport(病理报告);AdmissionReport(入院记录);DischargeReport(出院记录); DischargeSummary(出院小结);DiagnosisReport(诊断证明); MedicalRecordFront(病案首页);OperationReport(手术记录);OutpatientMedicalRecord(门诊病历)
        # @type TaskType: String
        # @param FileList: 报告文件上传的地址列表，需按顺序排列。如果使用ImageList参数，置为空数组即可
        # @type FileList: Array
        # @param CustomerId: 客户号
        # @type CustomerId: String
        # @param CustomerName: 客户姓名
        # @type CustomerName: String
        # @param ImageList: 报告上传的图片内容数组，图片内容采用base64编码，需按顺序排列
        # @type ImageList: Array
        # @param Year: 报告年份
        # @type Year: String

        attr_accessor :TaskType, :FileList, :CustomerId, :CustomerName, :ImageList, :Year
        
        def initialize(tasktype=nil, filelist=nil, customerid=nil, customername=nil, imagelist=nil, year=nil)
          @TaskType = tasktype
          @FileList = filelist
          @CustomerId = customerid
          @CustomerName = customername
          @ImageList = imagelist
          @Year = year
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @FileList = params['FileList']
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          @ImageList = params['ImageList']
          @Year = params['Year']
        end
      end

      # CreateStructureTask请求参数结构体
      class CreateStructureTaskRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 服务类型
        # Structured 仅结构化
        # Underwrite 结构化+核保
        # @type ServiceType: String
        # @param TaskInfos: 创建任务时可以上传多个报告，后台生成多个识别子任务，子任务的详细信息
        # @type TaskInfos: Array
        # @param PolicyId: 保单号
        # @type PolicyId: String
        # @param TriggerType: 核保触发方式
        # Auto 自动
        # Manual 手动
        # @type TriggerType: String
        # @param InsuranceTypes: 险种，如果是体检报告类型，此参数是必填，类型说明如下：
        # CriticalDiseaseInsurance:重疾险
        # LifeInsurance：寿险
        # AccidentInsurance：意外险
        # @type InsuranceTypes: Array
        # @param CallbackUrl: 回调地址，接收Post请求传送结果
        # @type CallbackUrl: String

        attr_accessor :ServiceType, :TaskInfos, :PolicyId, :TriggerType, :InsuranceTypes, :CallbackUrl
        
        def initialize(servicetype=nil, taskinfos=nil, policyid=nil, triggertype=nil, insurancetypes=nil, callbackurl=nil)
          @ServiceType = servicetype
          @TaskInfos = taskinfos
          @PolicyId = policyid
          @TriggerType = triggertype
          @InsuranceTypes = insurancetypes
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              createstructuretaskinfo_tmp = CreateStructureTaskInfo.new
              createstructuretaskinfo_tmp.deserialize(i)
              @TaskInfos << createstructuretaskinfo_tmp
            end
          end
          @PolicyId = params['PolicyId']
          @TriggerType = params['TriggerType']
          @InsuranceTypes = params['InsuranceTypes']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # CreateStructureTask返回参数结构体
      class CreateStructureTaskResponse < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 创建的主任务号，用于查询结果
        # @type MainTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MainTaskId, :RequestId
        
        def initialize(maintaskid=nil, requestid=nil)
          @MainTaskId = maintaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUnderwriteTaskById请求参数结构体
      class CreateUnderwriteTaskByIdRequest < TencentCloud::Common::AbstractModel
        # @param MainTaskIds: 主任务ID数组，
        # @type MainTaskIds: Array
        # @param CallbackUrl: 回调地址，可不传（提供轮询机制）。
        # @type CallbackUrl: String

        attr_accessor :MainTaskIds, :CallbackUrl
        
        def initialize(maintaskids=nil, callbackurl=nil)
          @MainTaskIds = maintaskids
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          @MainTaskIds = params['MainTaskIds']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # CreateUnderwriteTaskById返回参数结构体
      class CreateUnderwriteTaskByIdResponse < TencentCloud::Common::AbstractModel
        # @param UnderwriteTaskIds: 核保任务ID数据
        # @type UnderwriteTaskIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UnderwriteTaskIds, :RequestId
        
        def initialize(underwritetaskids=nil, requestid=nil)
          @UnderwriteTaskIds = underwritetaskids
          @RequestId = requestid
        end

        def deserialize(params)
          @UnderwriteTaskIds = params['UnderwriteTaskIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineUnderwrite请求参数结构体
      class DescribeMachineUnderwriteRequest < TencentCloud::Common::AbstractModel
        # @param UnderwriteTaskId: 核保任务ID
        # @type UnderwriteTaskId: String

        attr_accessor :UnderwriteTaskId
        
        def initialize(underwritetaskid=nil)
          @UnderwriteTaskId = underwritetaskid
        end

        def deserialize(params)
          @UnderwriteTaskId = params['UnderwriteTaskId']
        end
      end

      # DescribeMachineUnderwrite返回参数结构体
      class DescribeMachineUnderwriteResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 腾讯云主账号ID
        # @type Uin: String
        # @param SubAccountUin: 操作人子账户ID
        # @type SubAccountUin: String
        # @param PolicyId: 保单ID
        # @type PolicyId: String
        # @param MainTaskId: 主任务ID
        # @type MainTaskId: String
        # @param UnderwriteTaskId: 核保任务ID
        # @type UnderwriteTaskId: String
        # @param Status: 状态码
        # @type Status: Integer
        # @param UnderwriteResults: 机器核保结果
        # @type UnderwriteResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :SubAccountUin, :PolicyId, :MainTaskId, :UnderwriteTaskId, :Status, :UnderwriteResults, :RequestId
        
        def initialize(uin=nil, subaccountuin=nil, policyid=nil, maintaskid=nil, underwritetaskid=nil, status=nil, underwriteresults=nil, requestid=nil)
          @Uin = uin
          @SubAccountUin = subaccountuin
          @PolicyId = policyid
          @MainTaskId = maintaskid
          @UnderwriteTaskId = underwritetaskid
          @Status = status
          @UnderwriteResults = underwriteresults
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
          @PolicyId = params['PolicyId']
          @MainTaskId = params['MainTaskId']
          @UnderwriteTaskId = params['UnderwriteTaskId']
          @Status = params['Status']
          unless params['UnderwriteResults'].nil?
            @UnderwriteResults = []
            params['UnderwriteResults'].each do |i|
              machineunderwriteoutput_tmp = MachineUnderwriteOutput.new
              machineunderwriteoutput_tmp.deserialize(i)
              @UnderwriteResults << machineunderwriteoutput_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStructCompareData请求参数结构体
      class DescribeStructCompareDataRequest < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 主任务号
        # @type MainTaskId: String
        # @param SubTaskId: 子任务号
        # @type SubTaskId: String

        attr_accessor :MainTaskId, :SubTaskId
        
        def initialize(maintaskid=nil, subtaskid=nil)
          @MainTaskId = maintaskid
          @SubTaskId = subtaskid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
          @SubTaskId = params['SubTaskId']
        end
      end

      # DescribeStructCompareData返回参数结构体
      class DescribeStructCompareDataResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 保单号
        # @type PolicyId: String
        # @param MainTaskId: 主任务号
        # @type MainTaskId: String
        # @param CustomerId: 客户号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerId: String
        # @param CustomerName: 客户姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomerName: String
        # @param ReviewTime: 复核时间
        # @type ReviewTime: String
        # @param MachineResult: 算法识别结果
        # @type MachineResult: String
        # @param ManualResult: 人工复核结果
        # @type ManualResult: String
        # @param Metrics: 结构化对比指标数据
        # @type Metrics: :class:`Tencentcloud::Cii.v20210408.models.CompareMetricsData`
        # @param NewItems: 新增项
        # @type NewItems: String
        # @param ModifyItems: 修改项
        # @type ModifyItems: String
        # @param SubTaskId: 子任务号
        # @type SubTaskId: String
        # @param AllTasks: 所有的子任务
        # @type AllTasks: Array
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :MainTaskId, :CustomerId, :CustomerName, :ReviewTime, :MachineResult, :ManualResult, :Metrics, :NewItems, :ModifyItems, :SubTaskId, :AllTasks, :TaskType, :RequestId
        
        def initialize(policyid=nil, maintaskid=nil, customerid=nil, customername=nil, reviewtime=nil, machineresult=nil, manualresult=nil, metrics=nil, newitems=nil, modifyitems=nil, subtaskid=nil, alltasks=nil, tasktype=nil, requestid=nil)
          @PolicyId = policyid
          @MainTaskId = maintaskid
          @CustomerId = customerid
          @CustomerName = customername
          @ReviewTime = reviewtime
          @MachineResult = machineresult
          @ManualResult = manualresult
          @Metrics = metrics
          @NewItems = newitems
          @ModifyItems = modifyitems
          @SubTaskId = subtaskid
          @AllTasks = alltasks
          @TaskType = tasktype
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @MainTaskId = params['MainTaskId']
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          @ReviewTime = params['ReviewTime']
          @MachineResult = params['MachineResult']
          @ManualResult = params['ManualResult']
          unless params['Metrics'].nil?
            @Metrics = CompareMetricsData.new
            @Metrics.deserialize(params['Metrics'])
          end
          @NewItems = params['NewItems']
          @ModifyItems = params['ModifyItems']
          @SubTaskId = params['SubTaskId']
          unless params['AllTasks'].nil?
            @AllTasks = []
            params['AllTasks'].each do |i|
              reviewdatataskinfo_tmp = ReviewDataTaskInfo.new
              reviewdatataskinfo_tmp.deserialize(i)
              @AllTasks << reviewdatataskinfo_tmp
            end
          end
          @TaskType = params['TaskType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStructureDifference请求参数结构体
      class DescribeStructureDifferenceRequest < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 主任务号
        # @type MainTaskId: String
        # @param SubTaskId: 子任务号
        # @type SubTaskId: String

        attr_accessor :MainTaskId, :SubTaskId
        
        def initialize(maintaskid=nil, subtaskid=nil)
          @MainTaskId = maintaskid
          @SubTaskId = subtaskid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
          @SubTaskId = params['SubTaskId']
        end
      end

      # DescribeStructureDifference返回参数结构体
      class DescribeStructureDifferenceResponse < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 主任务号
        # @type MainTaskId: String
        # @param Status: 结果状态：
        # 0：返回成功
        # 1：结果未生成
        # 2：结果生成失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Results: 差异的结果数组
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MainTaskId, :Status, :Results, :RequestId
        
        def initialize(maintaskid=nil, status=nil, results=nil, requestid=nil)
          @MainTaskId = maintaskid
          @Status = status
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
          @Status = params['Status']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              perstructdifference_tmp = PerStructDifference.new
              perstructdifference_tmp.deserialize(i)
              @Results << perstructdifference_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStructureResult请求参数结构体
      class DescribeStructureResultRequest < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 创建任务时返回的主任务ID
        # @type MainTaskId: String

        attr_accessor :MainTaskId
        
        def initialize(maintaskid=nil)
          @MainTaskId = maintaskid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
        end
      end

      # DescribeStructureResult返回参数结构体
      class DescribeStructureResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 结果状态：
        # 0：返回成功
        # 1：结果未生成
        # 2：结果生成失败
        # @type Status: Integer
        # @param Results: 结构化结果
        # @type Results: Array
        # @param MainTaskId: 主任务ID
        # @type MainTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Results, :MainTaskId, :RequestId
        
        def initialize(status=nil, results=nil, maintaskid=nil, requestid=nil)
          @Status = status
          @Results = results
          @MainTaskId = maintaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              structureresultobject_tmp = StructureResultObject.new
              structureresultobject_tmp.deserialize(i)
              @Results << structureresultobject_tmp
            end
          end
          @MainTaskId = params['MainTaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStructureTaskResult请求参数结构体
      class DescribeStructureTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 结构化任务ID
        # @type MainTaskId: String

        attr_accessor :MainTaskId
        
        def initialize(maintaskid=nil)
          @MainTaskId = maintaskid
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
        end
      end

      # DescribeStructureTaskResult返回参数结构体
      class DescribeStructureTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 结果状态：
        # 0：返回成功
        # 1：结果未生成
        # 2：结果生成失败
        # @type Status: Integer
        # @param Results: 结构化识别结果数组，每个数组元素对应一个图片的结构化结果，顺序和输入参数的ImageList或FileList对应。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Results, :RequestId
        
        def initialize(status=nil, results=nil, requestid=nil)
          @Status = status
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              resultobject_tmp = ResultObject.new
              resultobject_tmp.deserialize(i)
              @Results << resultobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 包含险种的各个核保结论
      class InsuranceResult < TencentCloud::Common::AbstractModel
        # @param InsuranceType: 险种:CriticalDiseaseInsurance(重疾险);LifeInsurance(寿险);AccidentInsurance(意外险);MedicalInsurance(医疗险)
        # @type InsuranceType: String
        # @param Result: 对应险种的机器核保结果
        # @type Result: Array

        attr_accessor :InsuranceType, :Result
        
        def initialize(insurancetype=nil, result=nil)
          @InsuranceType = insurancetype
          @Result = result
        end

        def deserialize(params)
          @InsuranceType = params['InsuranceType']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              machinepredict_tmp = MachinePredict.new
              machinepredict_tmp.deserialize(i)
              @Result << machinepredict_tmp
            end
          end
        end
      end

      # 机器核保预测结果
      class MachinePredict < TencentCloud::Common::AbstractModel
        # @param Title: 核保引擎名称
        # @type Title: String
        # @param Conclusion: 核保结论：加费、承保、拒保、延期、除外、加费+除外
        # @type Conclusion: String
        # @param Explanation: AI决策树解释
        # @type Explanation: Array
        # @param Disease: 疾病指标
        # @type Disease: Array
        # @param Laboratory: 检查异常
        # @type Laboratory: Array

        attr_accessor :Title, :Conclusion, :Explanation, :Disease, :Laboratory
        
        def initialize(title=nil, conclusion=nil, explanation=nil, disease=nil, laboratory=nil)
          @Title = title
          @Conclusion = conclusion
          @Explanation = explanation
          @Disease = disease
          @Laboratory = laboratory
        end

        def deserialize(params)
          @Title = params['Title']
          @Conclusion = params['Conclusion']
          unless params['Explanation'].nil?
            @Explanation = []
            params['Explanation'].each do |i|
              underwriteitem_tmp = UnderwriteItem.new
              underwriteitem_tmp.deserialize(i)
              @Explanation << underwriteitem_tmp
            end
          end
          unless params['Disease'].nil?
            @Disease = []
            params['Disease'].each do |i|
              underwriteitem_tmp = UnderwriteItem.new
              underwriteitem_tmp.deserialize(i)
              @Disease << underwriteitem_tmp
            end
          end
          unless params['Laboratory'].nil?
            @Laboratory = []
            params['Laboratory'].each do |i|
              underwriteitem_tmp = UnderwriteItem.new
              underwriteitem_tmp.deserialize(i)
              @Laboratory << underwriteitem_tmp
            end
          end
        end
      end

      # 机器核保输出
      class MachineUnderwriteOutput < TencentCloud::Common::AbstractModel
        # @param CustomerId: 客户号
        # @type CustomerId: String
        # @param CustomerName: 客户姓名
        # @type CustomerName: String
        # @param Results: 各个险种的结果
        # @type Results: Array

        attr_accessor :CustomerId, :CustomerName, :Results
        
        def initialize(customerid=nil, customername=nil, results=nil)
          @CustomerId = customerid
          @CustomerName = customername
          @Results = results
        end

        def deserialize(params)
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              insuranceresult_tmp = InsuranceResult.new
              insuranceresult_tmp.deserialize(i)
              @Results << insuranceresult_tmp
            end
          end
        end
      end

      # 复核差异接口的每一份报告的差异结果
      class PerStructDifference < TencentCloud::Common::AbstractModel
        # @param SubTaskId: 子任务ID
        # @type SubTaskId: String
        # @param TaskType: 任务类型:HealthReport(体检报告); BUltraReport(B超报告);MedCheckReport(检查报告);LaboratoryReport(检验报告); PathologyReport(病理报告);AdmissionReport(入院记录);DischargeReport(出院记录); DischargeSummary(出院小结);DiagnosisReport(诊断证明); MedicalRecordFront(病案首页);OperationReport(手术记录);OutpatientMedicalRecord(门诊病历)
        # @type TaskType: String
        # @param ModifyItems: 修改的项
        # @type ModifyItems: Array
        # @param NewItems: 新增的项
        # @type NewItems: Array
        # @param RemoveItems: 删除的项
        # @type RemoveItems: Array

        attr_accessor :SubTaskId, :TaskType, :ModifyItems, :NewItems, :RemoveItems
        
        def initialize(subtaskid=nil, tasktype=nil, modifyitems=nil, newitems=nil, removeitems=nil)
          @SubTaskId = subtaskid
          @TaskType = tasktype
          @ModifyItems = modifyitems
          @NewItems = newitems
          @RemoveItems = removeitems
        end

        def deserialize(params)
          @SubTaskId = params['SubTaskId']
          @TaskType = params['TaskType']
          unless params['ModifyItems'].nil?
            @ModifyItems = []
            params['ModifyItems'].each do |i|
              structuremodifyitem_tmp = StructureModifyItem.new
              structuremodifyitem_tmp.deserialize(i)
              @ModifyItems << structuremodifyitem_tmp
            end
          end
          unless params['NewItems'].nil?
            @NewItems = []
            params['NewItems'].each do |i|
              structureoneitem_tmp = StructureOneItem.new
              structureoneitem_tmp.deserialize(i)
              @NewItems << structureoneitem_tmp
            end
          end
          unless params['RemoveItems'].nil?
            @RemoveItems = []
            params['RemoveItems'].each do |i|
              structureoneitem_tmp = StructureOneItem.new
              structureoneitem_tmp.deserialize(i)
              @RemoveItems << structureoneitem_tmp
            end
          end
        end
      end

      # 用于返回结构化任务结果
      class ResultObject < TencentCloud::Common::AbstractModel
        # @param Quality: 图片质量分
        # @type Quality: Float
        # @param StructureResult: 由结构化算法结构化json转换的字符串，具体协议参见算法结构化结果协议
        # @type StructureResult: String
        # @param ReportType: 报告分类信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportType: Array

        attr_accessor :Quality, :StructureResult, :ReportType
        
        def initialize(quality=nil, structureresult=nil, reporttype=nil)
          @Quality = quality
          @StructureResult = structureresult
          @ReportType = reporttype
        end

        def deserialize(params)
          @Quality = params['Quality']
          @StructureResult = params['StructureResult']
          unless params['ReportType'].nil?
            @ReportType = []
            params['ReportType'].each do |i|
              classifyinfo_tmp = ClassifyInfo.new
              classifyinfo_tmp.deserialize(i)
              @ReportType << classifyinfo_tmp
            end
          end
        end
      end

      # 人工复核数据的子任务信息
      class ReviewDataTaskInfo < TencentCloud::Common::AbstractModel
        # @param MainTaskId: 主任务号
        # @type MainTaskId: String
        # @param SubTaskId: 子任务号
        # @type SubTaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param TaskType: 任务类型:HealthReport(体检报告); BUltraReport(B超报告);MedCheckReport(检查报告);LaboratoryReport(检验报告); PathologyReport(病理报告);AdmissionReport(入院记录);DischargeReport(出院记录); DischargeSummary(出院小结);DiagnosisReport(诊断证明); MedicalRecordFront(病案首页);OperationReport(手术记录);OutpatientMedicalRecord(门诊病历)
        # @type TaskType: String

        attr_accessor :MainTaskId, :SubTaskId, :TaskName, :TaskType
        
        def initialize(maintaskid=nil, subtaskid=nil, taskname=nil, tasktype=nil)
          @MainTaskId = maintaskid
          @SubTaskId = subtaskid
          @TaskName = taskname
          @TaskType = tasktype
        end

        def deserialize(params)
          @MainTaskId = params['MainTaskId']
          @SubTaskId = params['SubTaskId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
        end
      end

      # 结构化复核差异接口的修改的项
      class StructureModifyItem < TencentCloud::Common::AbstractModel
        # @param Path: 修改的字段的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Machine: 机器结果的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Machine: String
        # @param Manual: 人工结果的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manual: String

        attr_accessor :Path, :Machine, :Manual
        
        def initialize(path=nil, machine=nil, manual=nil)
          @Path = path
          @Machine = machine
          @Manual = manual
        end

        def deserialize(params)
          @Path = params['Path']
          @Machine = params['Machine']
          @Manual = params['Manual']
        end
      end

      # 复核差异接口的新增或者删除的项
      class StructureOneItem < TencentCloud::Common::AbstractModel
        # @param Path: 新字段的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Value: 字段的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Path, :Value
        
        def initialize(path=nil, value=nil)
          @Path = path
          @Value = value
        end

        def deserialize(params)
          @Path = params['Path']
          @Value = params['Value']
        end
      end

      # 结构化结果
      class StructureResultObject < TencentCloud::Common::AbstractModel
        # @param Code: 0表示正常返回；1代表结果未生成；2代表任务执行失败
        # @type Code: Integer
        # @param TaskType: 报告类型:HealthReport(体检报告); BUltraReport(B超报告);MedCheckReport(检查报告);LaboratoryReport(检验报告); PathologyReport(病理报告);AdmissionReport(入院记录);DischargeReport(出院记录); DischargeSummary(出院小结);DiagnosisReport(诊断证明); MedicalRecordFront(病案首页);OperationReport(手术记录);OutpatientMedicalRecord(门诊病历)
        # @type TaskType: String
        # @param StructureResult: 结构化结果
        # @type StructureResult: String
        # @param SubTaskId: 子任务ID
        # @type SubTaskId: String

        attr_accessor :Code, :TaskType, :StructureResult, :SubTaskId
        
        def initialize(code=nil, tasktype=nil, structureresult=nil, subtaskid=nil)
          @Code = code
          @TaskType = tasktype
          @StructureResult = structureresult
          @SubTaskId = subtaskid
        end

        def deserialize(params)
          @Code = params['Code']
          @TaskType = params['TaskType']
          @StructureResult = params['StructureResult']
          @SubTaskId = params['SubTaskId']
        end
      end

      # 机器核保结论子项
      class UnderwriteItem < TencentCloud::Common::AbstractModel
        # @param Name: 字段名
        # @type Name: String
        # @param Result: 结果
        # @type Result: String
        # @param Value: 风险值或者说明
        # @type Value: String

        attr_accessor :Name, :Result, :Value
        
        def initialize(name=nil, result=nil, value=nil)
          @Name = name
          @Result = result
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Result = params['Result']
          @Value = params['Value']
        end
      end

      # UploadMedicalFile请求参数结构体
      class UploadMedicalFileRequest < TencentCloud::Common::AbstractModel
        # @param File: 文件内容的base64的值。FileBase64与FileURL有一个不为空即可，若FileURL同时存在，那么取FileBase64。
        # @type File: String
        # @param FileURL: 文件的URL地址。FileBase64与FileURL有一个不为空即可，若FileBase64同时存在，那么取FileBase64。
        # @type FileURL: String

        attr_accessor :File, :FileURL
        
        def initialize(file=nil, fileurl=nil)
          @File = file
          @FileURL = fileurl
        end

        def deserialize(params)
          @File = params['File']
          @FileURL = params['FileURL']
        end
      end

      # UploadMedicalFile返回参数结构体
      class UploadMedicalFileResponse < TencentCloud::Common::AbstractModel
        # @param FileKey: 文件存储的key，可以用来创建结构化任务。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileKey, :RequestId
        
        def initialize(filekey=nil, requestid=nil)
          @FileKey = filekey
          @RequestId = requestid
        end

        def deserialize(params)
          @FileKey = params['FileKey']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

