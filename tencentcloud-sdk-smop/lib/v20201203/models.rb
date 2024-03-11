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
  module Smop
    module V20201203
      # SubmitTaskEvent请求参数结构体
      class SubmitTaskEventRequest < TencentCloud::Common::AbstractModel
        # @param AccountId: 用户ID
        # @type AccountId: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param OrderId: 订单ID
        # @type OrderId: String
        # @param Code: 任务事件Code
        # @type Code: String
        # @param Async: 同步异步方式：0为同步、1位异步
        # @type Async: Integer
        # @param ProductId: 产品ID
        # @type ProductId: Integer
        # @param NotifyURL: 回调地址
        # @type NotifyURL: String

        attr_accessor :AccountId, :DeviceId, :OrderId, :Code, :Async, :ProductId, :NotifyURL

        def initialize(accountid=nil, deviceid=nil, orderid=nil, code=nil, async=nil, productid=nil, notifyurl=nil)
          @AccountId = accountid
          @DeviceId = deviceid
          @OrderId = orderid
          @Code = code
          @Async = async
          @ProductId = productid
          @NotifyURL = notifyurl
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @DeviceId = params['DeviceId']
          @OrderId = params['OrderId']
          @Code = params['Code']
          @Async = params['Async']
          @ProductId = params['ProductId']
          @NotifyURL = params['NotifyURL']
        end
      end

      # SubmitTaskEvent返回参数结构体
      class SubmitTaskEventResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param Code: 信息码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: success
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Data: 任务处理结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Code, :Message, :Data, :RequestId

        def initialize(orderid=nil, code=nil, message=nil, data=nil, requestid=nil)
          @OrderId = orderid
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              taskeventdata_tmp = TaskEventData.new
              taskeventdata_tmp.deserialize(i)
              @Data << taskeventdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 后端提交任务事件返回Data复杂类型
      class TaskEventData < TencentCloud::Common::AbstractModel
        # @param Code: 状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: 提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param TaskOrderId: 当前完成或正在完成的任务订单ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskOrderId: String
        # @param TaskCode: 当前任务订单状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskCode: Integer
        # @param TaskCoinNumber: 获得积分数/成长值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskCoinNumber: Integer
        # @param TaskType: 任务类型后台代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: Integer
        # @param TotalCoin: 当前积分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCoin: Integer
        # @param Attach: 用户透传的代码块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attach: String
        # @param DoneTimes: 计次任务当前完成次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoneTimes: Integer
        # @param TotalTimes: 计次任务当前所需完成次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTimes: Integer
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param GrowScore: 当前成长值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrowScore: Integer

        attr_accessor :Code, :Message, :TaskId, :TaskOrderId, :TaskCode, :TaskCoinNumber, :TaskType, :TotalCoin, :Attach, :DoneTimes, :TotalTimes, :TaskName, :GrowScore

        def initialize(code=nil, message=nil, taskid=nil, taskorderid=nil, taskcode=nil, taskcoinnumber=nil, tasktype=nil, totalcoin=nil, attach=nil, donetimes=nil, totaltimes=nil, taskname=nil, growscore=nil)
          @Code = code
          @Message = message
          @TaskId = taskid
          @TaskOrderId = taskorderid
          @TaskCode = taskcode
          @TaskCoinNumber = taskcoinnumber
          @TaskType = tasktype
          @TotalCoin = totalcoin
          @Attach = attach
          @DoneTimes = donetimes
          @TotalTimes = totaltimes
          @TaskName = taskname
          @GrowScore = growscore
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @TaskId = params['TaskId']
          @TaskOrderId = params['TaskOrderId']
          @TaskCode = params['TaskCode']
          @TaskCoinNumber = params['TaskCoinNumber']
          @TaskType = params['TaskType']
          @TotalCoin = params['TotalCoin']
          @Attach = params['Attach']
          @DoneTimes = params['DoneTimes']
          @TotalTimes = params['TotalTimes']
          @TaskName = params['TaskName']
          @GrowScore = params['GrowScore']
        end
      end

    end
  end
end

