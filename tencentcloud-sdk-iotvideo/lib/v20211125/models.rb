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
  module Iotvideo
    module V20211125
      # CallDeviceActionAsync请求参数结构体
      class CallDeviceActionAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        # @type ActionId: String
        # @param InputParams: 输入参数
        # @type InputParams: String

        attr_accessor :ProductId, :DeviceName, :ActionId, :InputParams
        
        def initialize(productid=nil, devicename=nil, actionid=nil, inputparams=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActionId = actionid
          @InputParams = inputparams
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @InputParams = params['InputParams']
        end
      end

      # CallDeviceActionAsync返回参数结构体
      class CallDeviceActionAsyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: 调用Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientToken: String
        # @param Status: 异步调用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :Status, :RequestId
        
        def initialize(clienttoken=nil, status=nil, requestid=nil)
          @ClientToken = clienttoken
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CallDeviceActionSync请求参数结构体
      class CallDeviceActionSyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        # @type ActionId: String
        # @param InputParams: 输入参数
        # @type InputParams: String

        attr_accessor :ProductId, :DeviceName, :ActionId, :InputParams
        
        def initialize(productid=nil, devicename=nil, actionid=nil, inputparams=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActionId = actionid
          @InputParams = inputparams
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @InputParams = params['InputParams']
        end
      end

      # CallDeviceActionSync返回参数结构体
      class CallDeviceActionSyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: 调用Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientToken: String
        # @param OutputParams: 输出参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputParams: String
        # @param Status: 返回状态，当设备不在线等部分情况，会通过该 Status 返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :OutputParams, :Status, :RequestId
        
        def initialize(clienttoken=nil, outputparams=nil, status=nil, requestid=nil)
          @ClientToken = clienttoken
          @OutputParams = outputparams
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @OutputParams = params['OutputParams']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceDataStats请求参数结构体
      class DescribeDeviceDataStatsRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期
        # @type StartDate: String
        # @param EndDate: 结束日期
        # @type EndDate: String
        # @param ProductId: 产品id
        # @type ProductId: String

        attr_accessor :StartDate, :EndDate, :ProductId
        
        def initialize(startdate=nil, enddate=nil, productid=nil)
          @StartDate = startdate
          @EndDate = enddate
          @ProductId = productid
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ProductId = params['ProductId']
        end
      end

      # DescribeDeviceDataStats返回参数结构体
      class DescribeDeviceDataStatsResponse < TencentCloud::Common::AbstractModel
        # @param RegisterCnt: 累计注册设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterCnt: Integer
        # @param Data: 设备数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegisterCnt, :Data, :Total, :RequestId
        
        def initialize(registercnt=nil, data=nil, total=nil, requestid=nil)
          @RegisterCnt = registercnt
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @RegisterCnt = params['RegisterCnt']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              devicecntstats_tmp = DeviceCntStats.new
              devicecntstats_tmp.deserialize(i)
              @Data << devicecntstats_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageDataStats请求参数结构体
      class DescribeMessageDataStatsRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 统计开始日期
        # @type StartDate: String
        # @param EndDate: 统计结束日期
        # @type EndDate: String
        # @param ProductId: 产品id
        # @type ProductId: String

        attr_accessor :StartDate, :EndDate, :ProductId
        
        def initialize(startdate=nil, enddate=nil, productid=nil)
          @StartDate = startdate
          @EndDate = enddate
          @ProductId = productid
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ProductId = params['ProductId']
        end
      end

      # DescribeMessageDataStats返回参数结构体
      class DescribeMessageDataStatsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 消息数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId
        
        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              messagecntstats_tmp = MessageCntStats.new
              messagecntstats_tmp.deserialize(i)
              @Data << messagecntstats_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 设备数量统计
      class DeviceCntStats < TencentCloud::Common::AbstractModel
        # @param Date: 统计日期
        # @type Date: String
        # @param NewRegisterCnt: 新增注册设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewRegisterCnt: Integer
        # @param NewActivateCnt: 新增激活设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewActivateCnt: Integer
        # @param ActiveCnt: 活跃设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveCnt: Integer

        attr_accessor :Date, :NewRegisterCnt, :NewActivateCnt, :ActiveCnt
        
        def initialize(date=nil, newregistercnt=nil, newactivatecnt=nil, activecnt=nil)
          @Date = date
          @NewRegisterCnt = newregistercnt
          @NewActivateCnt = newactivatecnt
          @ActiveCnt = activecnt
        end

        def deserialize(params)
          @Date = params['Date']
          @NewRegisterCnt = params['NewRegisterCnt']
          @NewActivateCnt = params['NewActivateCnt']
          @ActiveCnt = params['ActiveCnt']
        end
      end

      # 消息数量统计
      class MessageCntStats < TencentCloud::Common::AbstractModel
        # @param Date: 统计日期
        # @type Date: String
        # @param UpMsgCnt: 物模型上行消息数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpMsgCnt: Integer
        # @param DownMsgCnt: 物模型下行消息数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownMsgCnt: Integer
        # @param NtpMsgCnt: ntp消息数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NtpMsgCnt: Integer

        attr_accessor :Date, :UpMsgCnt, :DownMsgCnt, :NtpMsgCnt
        
        def initialize(date=nil, upmsgcnt=nil, downmsgcnt=nil, ntpmsgcnt=nil)
          @Date = date
          @UpMsgCnt = upmsgcnt
          @DownMsgCnt = downmsgcnt
          @NtpMsgCnt = ntpmsgcnt
        end

        def deserialize(params)
          @Date = params['Date']
          @UpMsgCnt = params['UpMsgCnt']
          @DownMsgCnt = params['DownMsgCnt']
          @NtpMsgCnt = params['NtpMsgCnt']
        end
      end

    end
  end
end

