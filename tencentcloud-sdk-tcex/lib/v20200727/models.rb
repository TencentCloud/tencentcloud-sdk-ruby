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
  module Tcex
    module V20200727
      # 每个算法的返回结果
      class AlgorithmResult < TencentCloud::Common::AbstractModel
        # @param AlgoId: 算法ID
        # @type AlgoId: String
        # @param AlgoName: 算法名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgoName: String
        # @param Result: 算法返回的结果。
        # - 当算法类型为“OCR（1）”时，结果为文本字符串
        # - 当算法类型为“文本分类（2）”时，结果字符串为json对象数组：
        #   Class：分类结果
        #   Confidence：置信度
        # - 算法类型为“情感分析（3）”时，结果字符串为json对象：
        #   Positive：正面情感概率
        #   Negative：负面情感概率
        #   Neutral：中性情感概率
        # - 当算法类型为“合同要素抽取（4）”时，结果字符串为json对象数组：
        #   NodeName：一级要素名称
        #   ItemName：二级要素名称
        #   Content：要素文本内容
        # - 当算法类型为“实体识别（5）”时，结果字符串为json对象数组：
        #   - Entity：实体类型
        #   - Content：实体文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param Error: 算法调用错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String
        # @param AlgoType: 算法类型：
        # 1：OCR算法
        # 2：文本分类算法
        # 3：情感分析算法
        # 4：合同要素抽取算法
        # 5、实体识别算法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgoType: Integer

        attr_accessor :AlgoId, :AlgoName, :Result, :Error, :AlgoType

        def initialize(algoid=nil, algoname=nil, result=nil, error=nil, algotype=nil)
          @AlgoId = algoid
          @AlgoName = algoname
          @Result = result
          @Error = error
          @AlgoType = algotype
        end

        def deserialize(params)
          @AlgoId = params['AlgoId']
          @AlgoName = params['AlgoName']
          @Result = params['Result']
          @Error = params['Error']
          @AlgoType = params['AlgoType']
        end
      end

      # DescribeInvocationResult请求参数结构体
      class DescribeInvocationResultRequest < TencentCloud::Common::AbstractModel
        # @param InvokeId: 调用id，为调用InvokeService接口返回的RequestId
        # @type InvokeId: String

        attr_accessor :InvokeId

        def initialize(invokeid=nil)
          @InvokeId = invokeid
        end

        def deserialize(params)
          @InvokeId = params['InvokeId']
        end
      end

      # DescribeInvocationResult返回参数结构体
      class DescribeInvocationResultResponse < TencentCloud::Common::AbstractModel
        # @param Results: 服务的调用结果
        # @type Results: Array
        # @param Status: 0:获取结果失败
        # 1：结果还没有生成，继续轮询
        # 2：获取结果成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :Status, :RequestId

        def initialize(results=nil, status=nil, requestid=nil)
          @Results = results
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              algorithmresult_tmp = AlgorithmResult.new
              algorithmresult_tmp.deserialize(i)
              @Results << algorithmresult_tmp
            end
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # InvokeService请求参数结构体
      class InvokeServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待调用的服务ID。
        # @type ServiceId: String
        # @param ServiceStatus: 要调用服务的状态：0表示调试版本，1表示上线版本
        # @type ServiceStatus: Integer
        # @param FileUrl: 用于测试的文档的URL。
        # @type FileUrl: String
        # @param Input: 用于测试的文本，当此值不为空时，调用内容以此参数的值为准。
        # @type Input: String

        attr_accessor :ServiceId, :ServiceStatus, :FileUrl, :Input

        def initialize(serviceid=nil, servicestatus=nil, fileurl=nil, input=nil)
          @ServiceId = serviceid
          @ServiceStatus = servicestatus
          @FileUrl = fileurl
          @Input = input
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceStatus = params['ServiceStatus']
          @FileUrl = params['FileUrl']
          @Input = params['Input']
        end
      end

      # InvokeService返回参数结构体
      class InvokeServiceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

