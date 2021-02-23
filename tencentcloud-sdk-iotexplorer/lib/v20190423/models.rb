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
  module Iotexplorer
    module V20190423
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
        # @type ClientToken: String
        # @param Status: 异步调用状态
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
        # @type ClientToken: String
        # @param OutputParams: 输出参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputParams: String
        # @param Status: 返回状态
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

      # ControlDeviceData请求参数结构体
      class ControlDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Data: 属性数据, JSON格式字符串, 注意字段需要在物模型属性里定义
        # @type Data: String
        # @param Method: 请求类型 , 不填该参数或者 desired 表示下发属性给设备,  reported 表示模拟设备上报属性
        # @type Method: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName , 通常情况不需要填写
        # @type DeviceId: String
        # @param DataTimestamp: 上报数据UNIX时间戳(毫秒), 仅对Method:reported有效
        # @type DataTimestamp: Integer

        attr_accessor :ProductId, :DeviceName, :Data, :Method, :DeviceId, :DataTimestamp
        
        def initialize(productid=nil, devicename=nil, data=nil, method=nil, deviceid=nil, datatimestamp=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Data = data
          @Method = method
          @DeviceId = deviceid
          @DataTimestamp = datatimestamp
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Data = params['Data']
          @Method = params['Method']
          @DeviceId = params['DeviceId']
          @DataTimestamp = params['DataTimestamp']
        end
      end

      # ControlDeviceData返回参数结构体
      class ControlDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回信息
        # @type Data: String
        # @param Result: JSON字符串， 返回下发控制的结果信息,
        # Sent = 1 表示设备已经在线并且订阅了控制下发的mqtt topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Result, :RequestId
        
        def initialize(data=nil, result=nil, requestid=nil)
          @Data = data
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        # @type DeviceName: String
        # @param DevAddr: LoRaWAN 设备地址
        # @type DevAddr: String
        # @param AppKey: LoRaWAN 应用密钥
        # @type AppKey: String
        # @param DevEUI: LoRaWAN 设备唯一标识
        # @type DevEUI: String
        # @param AppSKey: LoRaWAN 应用会话密钥
        # @type AppSKey: String
        # @param NwkSKey: LoRaWAN 网络会话密钥
        # @type NwkSKey: String

        attr_accessor :ProductId, :DeviceName, :DevAddr, :AppKey, :DevEUI, :AppSKey, :NwkSKey
        
        def initialize(productid=nil, devicename=nil, devaddr=nil, appkey=nil, deveui=nil, appskey=nil, nwkskey=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DevAddr = devaddr
          @AppKey = appkey
          @DevEUI = deveui
          @AppSKey = appskey
          @NwkSKey = nwkskey
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DevAddr = params['DevAddr']
          @AppKey = params['AppKey']
          @DevEUI = params['DevEUI']
          @AppSKey = params['AppSKey']
          @NwkSKey = params['NwkSKey']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备参数描述。
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeviceData.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLoRaFrequency请求参数结构体
      class CreateLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqName: 频点配置名称
        # @type FreqName: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行RX1信道
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行RX2信道
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行RX1信道
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行RX2信道
        # @type ChannelsJoinRX2: Array
        # @param Description: 频点配置描述
        # @type Description: String

        attr_accessor :FreqName, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2, :Description
        
        def initialize(freqname=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil, description=nil)
          @FreqName = freqname
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
          @Description = description
        end

        def deserialize(params)
          @FreqName = params['FreqName']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
          @Description = params['Description']
        end
      end

      # CreateLoRaFrequency返回参数结构体
      class CreateLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: LoRa频点信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLoRaGateway请求参数结构体
      class CreateLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关Id
        # @type GatewayId: String
        # @param Name: 网关名称
        # @type Name: String
        # @param Description: 详情描述
        # @type Description: String
        # @param Location: 位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param Position: 位置信息
        # @type Position: String
        # @param PositionDetails: 位置详情
        # @type PositionDetails: String
        # @param IsPublic: 是否公开
        # @type IsPublic: Boolean
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :GatewayId, :Name, :Description, :Location, :Position, :PositionDetails, :IsPublic, :FrequencyId
        
        def initialize(gatewayid=nil, name=nil, description=nil, location=nil, position=nil, positiondetails=nil, ispublic=nil, frequencyid=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
          @Location = location
          @Position = position
          @PositionDetails = positiondetails
          @IsPublic = ispublic
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new.deserialize(params['Location'])
          end
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          @IsPublic = params['IsPublic']
          @FrequencyId = params['FrequencyId']
        end
      end

      # CreateLoRaGateway返回参数结构体
      class CreateLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Gateway: LoRa 网关信息
        # @type Gateway: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateway, :RequestId
        
        def initialize(gateway=nil, requestid=nil)
          @Gateway = gateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateway'].nil?
            @Gateway = LoRaGatewayItem.new.deserialize(params['Gateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param InstanceId: 实例ID，不带实例ID，默认为公共实例
        # @type InstanceId: String

        attr_accessor :ProjectName, :ProjectDesc, :InstanceId
        
        def initialize(projectname=nil, projectdesc=nil, instanceid=nil)
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 返回信息
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId
        
        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntry.new.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateStudioProduct请求参数结构体
      class CreateStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        # @type ProductName: String
        # @param CategoryId: 产品分组模板ID , ( 自定义模板填写1 , 控制台调用会使用预置的其他ID)
        # @type CategoryId: Integer
        # @param ProductType: 产品类型 填写 ( 0 普通产品 )
        # @type ProductType: Integer
        # @param EncryptionType: 加密类型 加密类型，1表示证书认证，2表示签名认证。
        # @type EncryptionType: String
        # @param NetType: 连接类型 可以填写 wifi cellular else
        # @type NetType: String
        # @param DataProtocol: 数据协议 (1 使用物模型 2 为自定义)
        # @type DataProtocol: Integer
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param ProjectId: 产品的项目ID
        # @type ProjectId: String

        attr_accessor :ProductName, :CategoryId, :ProductType, :EncryptionType, :NetType, :DataProtocol, :ProductDesc, :ProjectId
        
        def initialize(productname=nil, categoryid=nil, producttype=nil, encryptiontype=nil, nettype=nil, dataprotocol=nil, productdesc=nil, projectid=nil)
          @ProductName = productname
          @CategoryId = categoryid
          @ProductType = producttype
          @EncryptionType = encryptiontype
          @NetType = nettype
          @DataProtocol = dataprotocol
          @ProductDesc = productdesc
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @CategoryId = params['CategoryId']
          @ProductType = params['ProductType']
          @EncryptionType = params['EncryptionType']
          @NetType = params['NetType']
          @DataProtocol = params['DataProtocol']
          @ProductDesc = params['ProductDesc']
          @ProjectId = params['ProjectId']
        end
      end

      # CreateStudioProduct返回参数结构体
      class CreateStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品描述
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTopicRule请求参数结构体
      class CreateTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 规则内容
        # @type TopicRulePayload: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRulePayload`

        attr_accessor :RuleName, :TopicRulePayload
        
        def initialize(rulename=nil, topicrulepayload=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new.deserialize(params['TopicRulePayload'])
          end
        end
      end

      # CreateTopicRule返回参数结构体
      class CreateTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId
        
        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteLoRaFrequency请求参数结构体
      class DeleteLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String

        attr_accessor :FreqId
        
        def initialize(freqid=nil)
          @FreqId = freqid
        end

        def deserialize(params)
          @FreqId = params['FreqId']
        end
      end

      # DeleteLoRaFrequency返回参数结构体
      class DeleteLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoRaGateway请求参数结构体
      class DeleteLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关 Id
        # @type GatewayId: String

        attr_accessor :GatewayId
        
        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DeleteLoRaGateway返回参数结构体
      class DeleteLoRaGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
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

      # DeleteStudioProduct请求参数结构体
      class DeleteStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteStudioProduct返回参数结构体
      class DeleteStudioProductResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopicRule请求参数结构体
      class DeleteTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DeleteTopicRule返回参数结构体
      class DeleteTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeviceDataHistory请求参数结构体
      class DescribeDeviceDataHistoryRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 区间开始时间（Unix 时间戳，毫秒级）
        # @type MinTime: Integer
        # @param MaxTime: 区间结束时间（Unix 时间戳，毫秒级）
        # @type MaxTime: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # @type FieldName: String
        # @param Limit: 返回条数
        # @type Limit: Integer
        # @param Context: 检索上下文
        # @type Context: String

        attr_accessor :MinTime, :MaxTime, :ProductId, :DeviceName, :FieldName, :Limit, :Context
        
        def initialize(mintime=nil, maxtime=nil, productid=nil, devicename=nil, fieldname=nil, limit=nil, context=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @ProductId = productid
          @DeviceName = devicename
          @FieldName = fieldname
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FieldName = params['FieldName']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # DescribeDeviceDataHistory返回参数结构体
      class DescribeDeviceDataHistoryResponse < TencentCloud::Common::AbstractModel
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Listover: 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param Context: 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Results: 历史数据结果数组，返回对应时间点及取值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FieldName, :Listover, :Context, :Results, :RequestId
        
        def initialize(fieldname=nil, listover=nil, context=nil, results=nil, requestid=nil)
          @FieldName = fieldname
          @Listover = listover
          @Context = context
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Listover = params['Listover']
          @Context = params['Context']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              @Results << DeviceDataHistoryItem.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceData请求参数结构体
      class DescribeDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName
        # @type DeviceId: String

        attr_accessor :ProductId, :DeviceName, :DeviceId
        
        def initialize(productid=nil, devicename=nil, deviceid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDeviceData返回参数结构体
      class DescribeDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备数据
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName
        # @type DeviceId: String

        attr_accessor :ProductId, :DeviceName, :DeviceId
        
        def initialize(productid=nil, devicename=nil, deviceid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备信息
        # @type Device: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId
        
        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = DeviceInfo.new.deserialize(params['Device'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoRaFrequency请求参数结构体
      class DescribeLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String

        attr_accessor :FreqId
        
        def initialize(freqid=nil)
          @FreqId = freqid
        end

        def deserialize(params)
          @FreqId = params['FreqId']
        end
      end

      # DescribeLoRaFrequency返回参数结构体
      class DescribeLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回详情项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelDefinition请求参数结构体
      class DescribeModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeModelDefinition返回参数结构体
      class DescribeModelDefinitionResponse < TencentCloud::Common::AbstractModel
        # @param Model: 产品数据模板
        # @type Model: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductModelDefinition`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :RequestId
        
        def initialize(model=nil, requestid=nil)
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ProductModelDefinition.new.deserialize(params['Model'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProject请求参数结构体
      class DescribeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProject返回参数结构体
      class DescribeProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 返回信息
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntryEx`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId
        
        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntryEx.new.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStudioProduct请求参数结构体
      class DescribeStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeStudioProduct返回参数结构体
      class DescribeStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品详情
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicRule请求参数结构体
      class DescribeTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称。
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DescribeTopicRule返回参数结构体
      class DescribeTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId
        
        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = TopicRule.new.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeviceData
      class DeviceData < TencentCloud::Common::AbstractModel
        # @param DeviceCert: 设备证书，用于 TLS 建立链接时校验客户端身份。采用非对称加密时返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCert: String
        # @param DeviceName: 设备名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param DevicePrivateKey: 设备私钥，用于 TLS 建立链接时校验客户端身份，腾讯云后台不保存，请妥善保管。采用非对称加密时返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevicePrivateKey: String
        # @param DevicePsk: 对称加密密钥，base64编码。采用对称加密时返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevicePsk: String

        attr_accessor :DeviceCert, :DeviceName, :DevicePrivateKey, :DevicePsk
        
        def initialize(devicecert=nil, devicename=nil, deviceprivatekey=nil, devicepsk=nil)
          @DeviceCert = devicecert
          @DeviceName = devicename
          @DevicePrivateKey = deviceprivatekey
          @DevicePsk = devicepsk
        end

        def deserialize(params)
          @DeviceCert = params['DeviceCert']
          @DeviceName = params['DeviceName']
          @DevicePrivateKey = params['DevicePrivateKey']
          @DevicePsk = params['DevicePsk']
        end
      end

      # 设备历史数据结构
      class DeviceDataHistoryItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，毫秒时间戳
        # @type Time: String
        # @param Value: 字段取值
        # @type Value: String

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 设备详细信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Status: 0: 离线, 1: 在线, 2: 获取失败, 3 未激活
        # @type Status: Integer
        # @param DevicePsk: 设备密钥，密钥加密的设备返回
        # @type DevicePsk: String
        # @param FirstOnlineTime: 首次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOnlineTime: Integer
        # @param LoginTime: 最后一次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTime: Integer
        # @param CreateTime: 设备创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Version: 设备固件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param DeviceCert: 设备证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCert: String
        # @param LogLevel: 日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: Integer
        # @param DevAddr: LoRaWAN 设备地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevAddr: String
        # @param AppKey: LoRaWAN 应用密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppKey: String
        # @param DevEUI: LoRaWAN 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevEUI: String
        # @param AppSKey: LoRaWAN 应用会话密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppSKey: String
        # @param NwkSKey: LoRaWAN 网络会话密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NwkSKey: String

        attr_accessor :DeviceName, :Status, :DevicePsk, :FirstOnlineTime, :LoginTime, :CreateTime, :Version, :DeviceCert, :LogLevel, :DevAddr, :AppKey, :DevEUI, :AppSKey, :NwkSKey
        
        def initialize(devicename=nil, status=nil, devicepsk=nil, firstonlinetime=nil, logintime=nil, createtime=nil, version=nil, devicecert=nil, loglevel=nil, devaddr=nil, appkey=nil, deveui=nil, appskey=nil, nwkskey=nil)
          @DeviceName = devicename
          @Status = status
          @DevicePsk = devicepsk
          @FirstOnlineTime = firstonlinetime
          @LoginTime = logintime
          @CreateTime = createtime
          @Version = version
          @DeviceCert = devicecert
          @LogLevel = loglevel
          @DevAddr = devaddr
          @AppKey = appkey
          @DevEUI = deveui
          @AppSKey = appskey
          @NwkSKey = nwkskey
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Status = params['Status']
          @DevicePsk = params['DevicePsk']
          @FirstOnlineTime = params['FirstOnlineTime']
          @LoginTime = params['LoginTime']
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @DeviceCert = params['DeviceCert']
          @LogLevel = params['LogLevel']
          @DevAddr = params['DevAddr']
          @AppKey = params['AppKey']
          @DevEUI = params['DevEUI']
          @AppSKey = params['AppSKey']
          @NwkSKey = params['NwkSKey']
        end
      end

      # DisableTopicRule请求参数结构体
      class DisableTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DisableTopicRule返回参数结构体
      class DisableTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # EnableTopicRule请求参数结构体
      class EnableTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # EnableTopicRule返回参数结构体
      class EnableTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # 设备事件的搜索结果项
      class EventHistoryItem < TencentCloud::Common::AbstractModel
        # @param TimeStamp: 事件的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeStamp: Integer
        # @param ProductId: 事件的产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param DeviceName: 事件的设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param EventId: 事件的标识符ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param Type: 事件的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Data: 事件的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String

        attr_accessor :TimeStamp, :ProductId, :DeviceName, :EventId, :Type, :Data
        
        def initialize(timestamp=nil, productid=nil, devicename=nil, eventid=nil, type=nil, data=nil)
          @TimeStamp = timestamp
          @ProductId = productid
          @DeviceName = devicename
          @EventId = eventid
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @TimeStamp = params['TimeStamp']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EventId = params['EventId']
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # GetDeviceList请求参数结构体
      class GetDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 需要查看设备列表的产品 ID
        # @type ProductId: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 10-100
        # @type Limit: Integer
        # @param FirmwareVersion: 设备固件版本号，若不带此参数会返回所有固件版本的设备。传"None-FirmwareVersion"查询无版本号的设备
        # @type FirmwareVersion: String
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :Offset, :Limit, :FirmwareVersion, :DeviceName
        
        def initialize(productid=nil, offset=nil, limit=nil, firmwareversion=nil, devicename=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
          @FirmwareVersion = firmwareversion
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FirmwareVersion = params['FirmwareVersion']
          @DeviceName = params['DeviceName']
        end
      end

      # GetDeviceList返回参数结构体
      class GetDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 返回的设备列表, 注意列表设备的 DevicePsk 为空, 要获取设备的 DevicePsk 请使用 DescribeDevice
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Devices: Array
        # @param Total: 产品下的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :Total, :RequestId
        
        def initialize(devices=nil, total=nil, requestid=nil)
          @Devices = devices
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              @Devices << DeviceInfo.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetLoRaGatewayList请求参数结构体
      class GetLoRaGatewayListRequest < TencentCloud::Common::AbstractModel
        # @param IsCommunity: 是否是社区网关
        # @type IsCommunity: Boolean
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制个数
        # @type Limit: Integer

        attr_accessor :IsCommunity, :Offset, :Limit
        
        def initialize(iscommunity=nil, offset=nil, limit=nil)
          @IsCommunity = iscommunity
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IsCommunity = params['IsCommunity']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetLoRaGatewayList返回参数结构体
      class GetLoRaGatewayListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回总数
        # @type Total: Integer
        # @param Gateways: 返回详情项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gateways: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Gateways, :RequestId
        
        def initialize(total=nil, gateways=nil, requestid=nil)
          @Total = total
          @Gateways = gateways
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Gateways'].nil?
            @Gateways = []
            params['Gateways'].each do |i|
              @Gateways << LoRaGatewayItem.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetProjectList请求参数结构体
      class GetProjectListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 个数限制
        # @type Limit: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :Offset, :Limit, :InstanceId
        
        def initialize(offset=nil, limit=nil, instanceid=nil)
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
        end
      end

      # GetProjectList返回参数结构体
      class GetProjectListResponse < TencentCloud::Common::AbstractModel
        # @param Projects: 项目列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Projects: Array
        # @param Total: 列表项个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Projects, :Total, :RequestId
        
        def initialize(projects=nil, total=nil, requestid=nil)
          @Projects = projects
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              @Projects << ProjectEntryEx.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetStudioProductList请求参数结构体
      class GetStudioProductListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DevStatus: 产品DevStatus
        # @type DevStatus: String
        # @param Offset: Offset
        # @type Offset: Integer
        # @param Limit: Limit
        # @type Limit: Integer

        attr_accessor :ProjectId, :DevStatus, :Offset, :Limit
        
        def initialize(projectid=nil, devstatus=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @DevStatus = devstatus
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DevStatus = params['DevStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetStudioProductList返回参数结构体
      class GetStudioProductListResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品列表
        # @type Products: Array
        # @param Total: 产品数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId
        
        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              @Products << ProductEntry.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetTopicRuleList请求参数结构体
      class GetTopicRuleListRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 请求的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer

        attr_accessor :PageNum, :PageSize
        
        def initialize(pagenum=nil, pagesize=nil)
          @PageNum = pagenum
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
        end
      end

      # GetTopicRuleList返回参数结构体
      class GetTopicRuleListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 规则总数量
        # @type TotalCnt: Integer
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :Rules, :RequestId
        
        def initialize(totalcnt=nil, rules=nil, requestid=nil)
          @TotalCnt = totalcnt
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              @Rules << TopicRuleInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListEventHistory请求参数结构体
      class ListEventHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Type: 搜索的事件类型：alert 表示告警，fault 表示故障，info 表示信息，为空则表示查询上述所有类型事件
        # @type Type: String
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 搜索上下文, 用作查询游标
        # @type Context: String
        # @param Size: 单次获取的历史数据项目的最大数量, 缺省10
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String

        attr_accessor :ProductId, :DeviceName, :Type, :StartTime, :EndTime, :Context, :Size, :EventId
        
        def initialize(productid=nil, devicename=nil, type=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
        end
      end

      # ListEventHistory返回参数结构体
      class ListEventHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Context: 搜索上下文, 用作查询游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Total: 搜索结果数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Listover: 搜索结果是否已经结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param EventHistory: 搜集结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventHistory: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Total, :Listover, :EventHistory, :RequestId
        
        def initialize(context=nil, total=nil, listover=nil, eventhistory=nil, requestid=nil)
          @Context = context
          @Total = total
          @Listover = listover
          @EventHistory = eventhistory
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Total = params['Total']
          @Listover = params['Listover']
          unless params['EventHistory'].nil?
            @EventHistory = []
            params['EventHistory'].each do |i|
              @EventHistory << EventHistoryItem.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # LoRa自定义频点信息
      class LoRaFrequencyEntry < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String
        # @param FreqName: 频点名称
        # @type FreqName: String
        # @param Description: 频点描述
        # @type Description: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行信道RX1
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行信道RX2
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行RX1信道
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行RX2信道
        # @type ChannelsJoinRX2: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer

        attr_accessor :FreqId, :FreqName, :Description, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2, :CreateTime
        
        def initialize(freqid=nil, freqname=nil, description=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil, createtime=nil)
          @FreqId = freqid
          @FreqName = freqname
          @Description = description
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
          @CreateTime = createtime
        end

        def deserialize(params)
          @FreqId = params['FreqId']
          @FreqName = params['FreqName']
          @Description = params['Description']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
          @CreateTime = params['CreateTime']
        end
      end

      # LoRa 网关信息
      class LoRaGatewayItem < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关Id
        # @type GatewayId: String
        # @param IsPublic: 是否是公开网关
        # @type IsPublic: Boolean
        # @param Description: 网关描述
        # @type Description: String
        # @param Name: 网关名称
        # @type Name: String
        # @param Position: 网关位置信息
        # @type Position: String
        # @param PositionDetails: 网关位置详情
        # @type PositionDetails: String
        # @param Location: LoRa 网关位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param UpdatedAt: 最后更新时间
        # @type UpdatedAt: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param LastSeenAt: 最后上报时间
        # @type LastSeenAt: String
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :GatewayId, :IsPublic, :Description, :Name, :Position, :PositionDetails, :Location, :UpdatedAt, :CreatedAt, :LastSeenAt, :FrequencyId
        
        def initialize(gatewayid=nil, ispublic=nil, description=nil, name=nil, position=nil, positiondetails=nil, location=nil, updatedat=nil, createdat=nil, lastseenat=nil, frequencyid=nil)
          @GatewayId = gatewayid
          @IsPublic = ispublic
          @Description = description
          @Name = name
          @Position = position
          @PositionDetails = positiondetails
          @Location = location
          @UpdatedAt = updatedat
          @CreatedAt = createdat
          @LastSeenAt = lastseenat
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @IsPublic = params['IsPublic']
          @Description = params['Description']
          @Name = params['Name']
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new.deserialize(params['Location'])
          end
          @UpdatedAt = params['UpdatedAt']
          @CreatedAt = params['CreatedAt']
          @LastSeenAt = params['LastSeenAt']
          @FrequencyId = params['FrequencyId']
        end
      end

      # 网关坐标
      class LoRaGatewayLocation < TencentCloud::Common::AbstractModel
        # @param Accuracy: 准确度
        # @type Accuracy: Float
        # @param Altitude: 海拔
        # @type Altitude: Float
        # @param Latitude: 纬度
        # @type Latitude: Float
        # @param Longitude: 精度
        # @type Longitude: Float

        attr_accessor :Accuracy, :Altitude, :Latitude, :Longitude
        
        def initialize(accuracy=nil, altitude=nil, latitude=nil, longitude=nil)
          @Accuracy = accuracy
          @Altitude = altitude
          @Latitude = latitude
          @Longitude = longitude
        end

        def deserialize(params)
          @Accuracy = params['Accuracy']
          @Altitude = params['Altitude']
          @Latitude = params['Latitude']
          @Longitude = params['Longitude']
        end
      end

      # ModifyLoRaFrequency请求参数结构体
      class ModifyLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String
        # @param FreqName: 频点名称
        # @type FreqName: String
        # @param Description: 频点描述
        # @type Description: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行信道RX1
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行信道RX2
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行信道RX1
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行信道RX2
        # @type ChannelsJoinRX2: Array

        attr_accessor :FreqId, :FreqName, :Description, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2
        
        def initialize(freqid=nil, freqname=nil, description=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil)
          @FreqId = freqid
          @FreqName = freqname
          @Description = description
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
        end

        def deserialize(params)
          @FreqId = params['FreqId']
          @FreqName = params['FreqName']
          @Description = params['Description']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
        end
      end

      # ModifyLoRaFrequency返回参数结构体
      class ModifyLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 频点信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoRaGateway请求参数结构体
      class ModifyLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param Description: 描述信息
        # @type Description: String
        # @param GatewayId: LoRa网关Id
        # @type GatewayId: String
        # @param Location: LoRa网关位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param Name: LoRa网关名称
        # @type Name: String
        # @param IsPublic: 是否公开可见
        # @type IsPublic: Boolean
        # @param Position: 位置信息
        # @type Position: String
        # @param PositionDetails: 位置详情
        # @type PositionDetails: String
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :Description, :GatewayId, :Location, :Name, :IsPublic, :Position, :PositionDetails, :FrequencyId
        
        def initialize(description=nil, gatewayid=nil, location=nil, name=nil, ispublic=nil, position=nil, positiondetails=nil, frequencyid=nil)
          @Description = description
          @GatewayId = gatewayid
          @Location = location
          @Name = name
          @IsPublic = ispublic
          @Position = position
          @PositionDetails = positiondetails
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @Description = params['Description']
          @GatewayId = params['GatewayId']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new.deserialize(params['Location'])
          end
          @Name = params['Name']
          @IsPublic = params['IsPublic']
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          @FrequencyId = params['FrequencyId']
        end
      end

      # ModifyLoRaGateway返回参数结构体
      class ModifyLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Gateway: 返回网关数据
        # @type Gateway: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateway, :RequestId
        
        def initialize(gateway=nil, requestid=nil)
          @Gateway = gateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateway'].nil?
            @Gateway = LoRaGatewayItem.new.deserialize(params['Gateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyModelDefinition请求参数结构体
      class ModifyModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelSchema: 数据模板定义
        # @type ModelSchema: String

        attr_accessor :ProductId, :ModelSchema
        
        def initialize(productid=nil, modelschema=nil)
          @ProductId = productid
          @ModelSchema = modelschema
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelSchema = params['ModelSchema']
        end
      end

      # ModifyModelDefinition返回参数结构体
      class ModifyModelDefinitionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc
        
        def initialize(projectid=nil, projectname=nil, projectdesc=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 项目详情
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId
        
        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntry.new.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyStudioProduct请求参数结构体
      class ModifyStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param ModuleId: 模型ID
        # @type ModuleId: Integer
        # @param EnableProductScript: 是否打开二进制转Json功能, 取值为字符串 true/false
        # @type EnableProductScript: String

        attr_accessor :ProductId, :ProductName, :ProductDesc, :ModuleId, :EnableProductScript
        
        def initialize(productid=nil, productname=nil, productdesc=nil, moduleid=nil, enableproductscript=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductDesc = productdesc
          @ModuleId = moduleid
          @EnableProductScript = enableproductscript
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductDesc = params['ProductDesc']
          @ModuleId = params['ModuleId']
          @EnableProductScript = params['EnableProductScript']
        end
      end

      # ModifyStudioProduct返回参数结构体
      class ModifyStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品描述
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopicRule请求参数结构体
      class ModifyTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 替换的规则包体
        # @type TopicRulePayload: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRulePayload`

        attr_accessor :RuleName, :TopicRulePayload
        
        def initialize(rulename=nil, topicrulepayload=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new.deserialize(params['TopicRulePayload'])
          end
        end
      end

      # ModifyTopicRule返回参数结构体
      class ModifyTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # 产品详情
      class ProductEntry < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param CategoryId: 产品分组模板ID
        # @type CategoryId: Integer
        # @param EncryptionType: 加密类型
        # @type EncryptionType: String
        # @param NetType: 连接类型
        # @type NetType: String
        # @param DataProtocol: 数据协议
        # @type DataProtocol: Integer
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param DevStatus: 状态
        # @type DevStatus: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Region: 区域
        # @type Region: String
        # @param ProductType: 产品类型
        # @type ProductType: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ModuleId: 产品ModuleId
        # @type ModuleId: Integer
        # @param EnableProductScript: 是否使用脚本进行二进制转json功能 可以取值 true / false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableProductScript: String

        attr_accessor :ProductId, :ProductName, :CategoryId, :EncryptionType, :NetType, :DataProtocol, :ProductDesc, :DevStatus, :CreateTime, :UpdateTime, :Region, :ProductType, :ProjectId, :ModuleId, :EnableProductScript
        
        def initialize(productid=nil, productname=nil, categoryid=nil, encryptiontype=nil, nettype=nil, dataprotocol=nil, productdesc=nil, devstatus=nil, createtime=nil, updatetime=nil, region=nil, producttype=nil, projectid=nil, moduleid=nil, enableproductscript=nil)
          @ProductId = productid
          @ProductName = productname
          @CategoryId = categoryid
          @EncryptionType = encryptiontype
          @NetType = nettype
          @DataProtocol = dataprotocol
          @ProductDesc = productdesc
          @DevStatus = devstatus
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Region = region
          @ProductType = producttype
          @ProjectId = projectid
          @ModuleId = moduleid
          @EnableProductScript = enableproductscript
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @CategoryId = params['CategoryId']
          @EncryptionType = params['EncryptionType']
          @NetType = params['NetType']
          @DataProtocol = params['DataProtocol']
          @ProductDesc = params['ProductDesc']
          @DevStatus = params['DevStatus']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Region = params['Region']
          @ProductType = params['ProductType']
          @ProjectId = params['ProjectId']
          @ModuleId = params['ModuleId']
          @EnableProductScript = params['EnableProductScript']
        end
      end

      # 产品模型定义
      class ProductModelDefinition < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelDefine: 模型定义
        # @type ModelDefine: String
        # @param UpdateTime: 更新时间，秒级时间戳
        # @type UpdateTime: Integer
        # @param CreateTime: 创建时间，秒级时间戳
        # @type CreateTime: Integer
        # @param CategoryModel: 产品所属分类的模型快照（产品创建时刻的）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryModel: String

        attr_accessor :ProductId, :ModelDefine, :UpdateTime, :CreateTime, :CategoryModel
        
        def initialize(productid=nil, modeldefine=nil, updatetime=nil, createtime=nil, categorymodel=nil)
          @ProductId = productid
          @ModelDefine = modeldefine
          @UpdateTime = updatetime
          @CreateTime = createtime
          @CategoryModel = categorymodel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelDefine = params['ModelDefine']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @CategoryModel = params['CategoryModel']
        end
      end

      # 项目详情
      class ProjectEntry < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param CreateTime: 创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，unix时间戳
        # @type UpdateTime: Integer

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc, :CreateTime, :UpdateTime
        
        def initialize(projectid=nil, projectname=nil, projectdesc=nil, createtime=nil, updatetime=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 项目详情
      class ProjectEntryEx < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param CreateTime: 项目创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 项目更新时间，unix时间戳
        # @type UpdateTime: Integer
        # @param ProductCount: 产品数量
        # @type ProductCount: Integer
        # @param NativeAppCount: NativeApp数量
        # @type NativeAppCount: Integer
        # @param WebAppCount: WebApp数量
        # @type WebAppCount: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc, :CreateTime, :UpdateTime, :ProductCount, :NativeAppCount, :WebAppCount, :InstanceId
        
        def initialize(projectid=nil, projectname=nil, projectdesc=nil, createtime=nil, updatetime=nil, productcount=nil, nativeappcount=nil, webappcount=nil, instanceid=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ProductCount = productcount
          @NativeAppCount = nativeappcount
          @WebAppCount = webappcount
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ProductCount = params['ProductCount']
          @NativeAppCount = params['NativeAppCount']
          @WebAppCount = params['WebAppCount']
          @InstanceId = params['InstanceId']
        end
      end

      # PublishMessage请求参数结构体
      class PublishMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Topic: 消息发往的主题
        # @type Topic: String
        # @param Payload: 云端下发到设备的控制报文
        # @type Payload: String
        # @param Qos: 消息服务质量等级，取值为0或1
        # @type Qos: Integer
        # @param PayloadEncoding: Payload的内容编码格式，取值为base64或空。base64表示云端将接收到的base64编码后的报文再转换成二进制报文下发至设备，为空表示不作转换，透传下发至设备
        # @type PayloadEncoding: String

        attr_accessor :ProductId, :DeviceName, :Topic, :Payload, :Qos, :PayloadEncoding
        
        def initialize(productid=nil, devicename=nil, topic=nil, payload=nil, qos=nil, payloadencoding=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Topic = topic
          @Payload = payload
          @Qos = qos
          @PayloadEncoding = payloadencoding
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Topic = params['Topic']
          @Payload = params['Payload']
          @Qos = params['Qos']
          @PayloadEncoding = params['PayloadEncoding']
        end
      end

      # PublishMessage返回参数结构体
      class PublishMessageResponse < TencentCloud::Common::AbstractModel
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

      # ReleaseStudioProduct请求参数结构体
      class ReleaseStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DevStatus: 产品DevStatus
        # @type DevStatus: String

        attr_accessor :ProductId, :DevStatus
        
        def initialize(productid=nil, devstatus=nil)
          @ProductId = productid
          @DevStatus = devstatus
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DevStatus = params['DevStatus']
        end
      end

      # ReleaseStudioProduct返回参数结构体
      class ReleaseStudioProductResponse < TencentCloud::Common::AbstractModel
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

      # SearchStudioProduct请求参数结构体
      class SearchStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Limit: 列表Limit
        # @type Limit: Integer
        # @param Offset: 列表Offset
        # @type Offset: Integer
        # @param DevStatus: 产品Status
        # @type DevStatus: String

        attr_accessor :ProjectId, :ProductName, :Limit, :Offset, :DevStatus
        
        def initialize(projectid=nil, productname=nil, limit=nil, offset=nil, devstatus=nil)
          @ProjectId = projectid
          @ProductName = productname
          @Limit = limit
          @Offset = offset
          @DevStatus = devstatus
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductName = params['ProductName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DevStatus = params['DevStatus']
        end
      end

      # SearchStudioProduct返回参数结构体
      class SearchStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品列表
        # @type Products: Array
        # @param Total: 产品数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId
        
        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              @Products << ProductEntry.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # SearchTopicRule请求参数结构体
      class SearchTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # SearchTopicRule返回参数结构体
      class SearchTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 搜索到的规则总数
        # @type TotalCnt: Integer
        # @param Rules: 规则信息列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :Rules, :RequestId
        
        def initialize(totalcnt=nil, rules=nil, requestid=nil)
          @TotalCnt = totalcnt
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              @Rules << TopicRuleInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TopicRule结构
      class TopicRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称。
        # @type RuleName: String
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Description: 规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Actions: 行为的JSON字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Actions: String
        # @param RuleDisabled: 是否禁用规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDisabled: Boolean

        attr_accessor :RuleName, :Sql, :Description, :Actions, :RuleDisabled
        
        def initialize(rulename=nil, sql=nil, description=nil, actions=nil, ruledisabled=nil)
          @RuleName = rulename
          @Sql = sql
          @Description = description
          @Actions = actions
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Sql = params['Sql']
          @Description = params['Description']
          @Actions = params['Actions']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # 规则信息
      class TopicRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Description: 规则描述
        # @type Description: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: Integer
        # @param RuleDisabled: 规则是否禁用
        # @type RuleDisabled: Boolean

        attr_accessor :RuleName, :Description, :CreatedAt, :RuleDisabled
        
        def initialize(rulename=nil, description=nil, createdat=nil, ruledisabled=nil)
          @RuleName = rulename
          @Description = description
          @CreatedAt = createdat
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          @CreatedAt = params['CreatedAt']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # TopicRulePayload结构
      class TopicRulePayload < TencentCloud::Common::AbstractModel
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Actions: 行为的JSON字符串，大部分种类举例如下：
        # [
        # {
        # "republish": {
        # "topic": "TEST/test"
        # }
        # },
        # {
        # "forward": {
        # "api": "http://test.com:8080"
        # }
        # },
        # {
        # "ckafka": {
        # "instance": {
        # "id": "ckafka-test",
        # "name": ""
        # },
        # "topic": {
        # "id": "topic-test",
        # "name": "test"
        # },
        # "region": "gz"
        # }
        # },
        # {
        # "cmqqueue": {
        # "queuename": "queue-test-TEST",
        # "region": "gz"
        # }
        # },
        # {
        # "mysql": {
        # "instanceid": "cdb-test",
        # "region": "gz",
        # "username": "test",
        # "userpwd": "*****",
        # "dbname": "d_mqtt",
        # "tablename": "t_test",
        # "fieldpairs": [
        # {
        # "field": "test",
        # "value": "test"
        # }
        # ],
        # "devicetype": "CUSTOM"
        # }
        # }
        # ]
        # @type Actions: String
        # @param Description: 规则描述
        # @type Description: String
        # @param RuleDisabled: 是否禁用规则
        # @type RuleDisabled: Boolean

        attr_accessor :Sql, :Actions, :Description, :RuleDisabled
        
        def initialize(sql=nil, actions=nil, description=nil, ruledisabled=nil)
          @Sql = sql
          @Actions = actions
          @Description = description
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @Sql = params['Sql']
          @Actions = params['Actions']
          @Description = params['Description']
          @RuleDisabled = params['RuleDisabled']
        end
      end

    end
  end
end

