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
  module Cii
    module V20201210
      # 结构化对比指标（准确率/召回率）数据
      class CompareMetricsData < TencentCloud::Common::AbstractModel
        # @param ShortStructAccuracy: 短文准确率
        # @type ShortStructAccuracy: String
        # @param ShortStructRecall: 短文召回率
        # @type ShortStructRecall: String
        # @param LongStructAccuracy: 长文结构化准确率
        # @type LongStructAccuracy: String
        # @param LongStructRecall: 长文结构化召回率
        # @type LongStructRecall: String
        # @param LongContentAccuracy: 长文提取准确率
        # @type LongContentAccuracy: String
        # @param LongContentRecall: 长文提取召回率
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

      # CreateStructureTask请求参数结构体
      class CreateStructureTaskRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 保单号
        # @type PolicyId: String
        # @param CustomerId: 客户号
        # @type CustomerId: String
        # @param CustomerName: 客户姓名
        # @type CustomerName: String
        # @param TaskType: 文件类型，目前只支持体检报告类型，对应的值为：HealthReport
        # @type TaskType: String
        # @param Year: 报告年份
        # @type Year: String
        # @param FileList: 报告文件上传的地址列表，需按顺序排列。如果使用ImageList参数，置为空数组即可
        # @type FileList: Array
        # @param InsuranceTypes: 险种，如果是体检报告类型，此参数是必填，类型说明如下：
        # CriticalDiseaseInsurance:重疾险
        # LifeInsurance：寿险
        # AccidentInsurance：意外险
        # @type InsuranceTypes: Array
        # @param ImageList: 报告上传的图片内容数组，图片内容采用base64编码，需按顺序排列
        # @type ImageList: Array

        attr_accessor :PolicyId, :CustomerId, :CustomerName, :TaskType, :Year, :FileList, :InsuranceTypes, :ImageList

        def initialize(policyid=nil, customerid=nil, customername=nil, tasktype=nil, year=nil, filelist=nil, insurancetypes=nil, imagelist=nil)
          @PolicyId = policyid
          @CustomerId = customerid
          @CustomerName = customername
          @TaskType = tasktype
          @Year = year
          @FileList = filelist
          @InsuranceTypes = insurancetypes
          @ImageList = imagelist
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          @TaskType = params['TaskType']
          @Year = params['Year']
          @FileList = params['FileList']
          @InsuranceTypes = params['InsuranceTypes']
          @ImageList = params['ImageList']
        end
      end

      # CreateStructureTask返回参数结构体
      class CreateStructureTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次结构化任务的ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeStructCompareData请求参数结构体
      class DescribeStructCompareDataRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 结构化任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeStructCompareData返回参数结构体
      class DescribeStructCompareDataResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 保单号
        # @type PolicyId: String
        # @param TaskId: 结构化任务ID
        # @type TaskId: String
        # @param CustomerId: 客户号
        # @type CustomerId: String
        # @param CustomerName: 客户姓名
        # @type CustomerName: String
        # @param ReviewTime: 复核时间
        # @type ReviewTime: String
        # @param MachineResult: 算法识别结果
        # @type MachineResult: String
        # @param ManualResult: 人工复核结果
        # @type ManualResult: String
        # @param Metrics: 结构化对比指标数据
        # @type Metrics: :class:`Tencentcloud::Cii.v20201210.models.CompareMetricsData`
        # @param NewItems: 新增项
        # @type NewItems: String
        # @param ModifyItems: 修改项
        # @type ModifyItems: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :TaskId, :CustomerId, :CustomerName, :ReviewTime, :MachineResult, :ManualResult, :Metrics, :NewItems, :ModifyItems, :RequestId

        def initialize(policyid=nil, taskid=nil, customerid=nil, customername=nil, reviewtime=nil, machineresult=nil, manualresult=nil, metrics=nil, newitems=nil, modifyitems=nil, requestid=nil)
          @PolicyId = policyid
          @TaskId = taskid
          @CustomerId = customerid
          @CustomerName = customername
          @ReviewTime = reviewtime
          @MachineResult = machineresult
          @ManualResult = manualresult
          @Metrics = metrics
          @NewItems = newitems
          @ModifyItems = modifyitems
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @TaskId = params['TaskId']
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeStructureTaskResult请求参数结构体
      class DescribeStructureTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 结构化任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
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

      # 用于返回结构化任务结果
      class ResultObject < TencentCloud::Common::AbstractModel
        # @param Quality: 图片质量分
        # @type Quality: Float
        # @param StructureResult: 由结构化算法结构化json转换的字符串，具体协议参见算法结构化结果协议
        # @type StructureResult: String

        attr_accessor :Quality, :StructureResult

        def initialize(quality=nil, structureresult=nil)
          @Quality = quality
          @StructureResult = structureresult
        end

        def deserialize(params)
          @Quality = params['Quality']
          @StructureResult = params['StructureResult']
        end
      end

    end
  end
end

