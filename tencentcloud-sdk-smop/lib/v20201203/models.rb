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
  module Smop
    module V20201203
      # SubmitTaskEvent请求参数结构体
      class SubmitTaskEventRequest < TencentCloud::Common::AbstractModel
        # @param AccountId: 用户唯一标识，最大长度为64
        # @type AccountId: String
        # @param DeviceId: 用户设备ID，最大长度为64
        # @type DeviceId: String
        # @param OrderId: 任务的唯一订单号，只能是数字、大小写字母，且在同一个产品ID下唯一，最大长度为64
        # @type OrderId: String
        # @param Code: 任务事件Code，在腾讯安心用户运营平台下的任务事件列表中设置并获取
        # @type Code: String
        # @param Async: 任务结果是否异步通知。0表示任务结果在返回信息中同步返回；1表示任务结果通过回调结果异步通知。
        # @type Async: Integer
        # @param ProductId: 产品ID，可在腾讯安心用户运营平台的企业管理中获取
        # @type ProductId: Integer
        # @param NotifyURL: 异步接收任务结果通知的回调地址。在Async为1的时候，会将任务结果通过该回调地址进行通知。
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
        # @param OrderId: 任务的唯一订单号
        # @type OrderId: String
        # @param Code: 信息码。0表示成功，-1标识失败
        # @type Code: Integer
        # @param Message: 提示信息
        # @type Message: String
        # @param Data: 任务处理结果列表
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
        # @param Code: 状态码，0为成功，-1为失败
        # @type Code: Integer
        # @param Message: 提示信息
        # @type Message: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskOrderId: 当前完成或正在完成的安心用户运营平台的任务订单ID
        # @type TaskOrderId: String
        # @param TaskCode: 当前任务订单状态码。1代表未完成；2代表已完成但未提交任务；3表示已完成，且已提交获得积分任务；4表示过期任务，提交后不获得积分。
        # @type TaskCode: Integer
        # @param TaskCoinNumber: 获得积分数
        # @type TaskCoinNumber: Integer
        # @param TaskType: 任务类型后台代码
        # @type TaskType: Integer
        # @param TotalCoin: 用户的当前积分
        # @type TotalCoin: Integer
        # @param Attach: 用户透传的附加数据
        # @type Attach: String
        # @param DoneTimes: 计次任务当前完成次数
        # @type DoneTimes: Integer
        # @param TotalTimes: 计次任务当前所需完成次数
        # @type TotalTimes: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param GrowScore: 用户当前成长值
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

