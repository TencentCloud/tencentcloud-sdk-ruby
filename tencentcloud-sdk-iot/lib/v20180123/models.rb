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
  module Iot
    module V20180123
      # 规则引擎转发动作
      class Action < TencentCloud::Common::AbstractModel
        # @param Topic: 转发至topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: :class:`Tencentcloud::Iot.v20180123.models.TopicAction`
        # @param Service: 转发至第三发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: :class:`Tencentcloud::Iot.v20180123.models.ServiceAction`
        # @param Ckafka: 转发至第三发Ckafka
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ckafka: :class:`Tencentcloud::Iot.v20180123.models.CkafkaAction`

        attr_accessor :Topic, :Service, :Ckafka

        def initialize(topic=nil, service=nil, ckafka=nil)
          @Topic = topic
          @Service = service
          @Ckafka = ckafka
        end

        def deserialize(params)
          unless params['Topic'].nil?
            @Topic = TopicAction.new
            @Topic.deserialize(params['Topic'])
          end
          unless params['Service'].nil?
            @Service = ServiceAction.new
            @Service.deserialize(params['Service'])
          end
          unless params['Ckafka'].nil?
            @Ckafka = CkafkaAction.new
            @Ckafka.deserialize(params['Ckafka'])
          end
        end
      end

      # ActivateRule请求参数结构体
      class ActivateRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # ActivateRule返回参数结构体
      class ActivateRuleResponse < TencentCloud::Common::AbstractModel
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

      # AddDevice请求参数结构体
      class AddDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称，唯一标识某产品下的一个设备
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

      # AddDevice返回参数结构体
      class AddDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备信息
        # @type Device: :class:`Tencentcloud::Iot.v20180123.models.Device`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId

        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddProduct请求参数结构体
      class AddProductRequest < TencentCloud::Common::AbstractModel
        # @param Name: 产品名称，同一区域产品名称需唯一，支持中文、英文字母、中划线和下划线，长度不超过31个字符，中文占两个字符
        # @type Name: String
        # @param Description: 产品描述
        # @type Description: String
        # @param DataTemplate: 数据模版
        # @type DataTemplate: Array
        # @param DataProtocol: 产品版本（native表示基础版，template表示高级版，默认值为template）
        # @type DataProtocol: String
        # @param AuthType: 设备认证方式（1：动态令牌，2：签名直连鉴权）
        # @type AuthType: Integer
        # @param CommProtocol: 通信方式（other/wifi/cellular/nb-iot）
        # @type CommProtocol: String
        # @param DeviceType: 产品的设备类型（device: 直连设备；sub_device：子设备；gateway：网关设备）
        # @type DeviceType: String

        attr_accessor :Name, :Description, :DataTemplate, :DataProtocol, :AuthType, :CommProtocol, :DeviceType

        def initialize(name=nil, description=nil, datatemplate=nil, dataprotocol=nil, authtype=nil, commprotocol=nil, devicetype=nil)
          @Name = name
          @Description = description
          @DataTemplate = datatemplate
          @DataProtocol = dataprotocol
          @AuthType = authtype
          @CommProtocol = commprotocol
          @DeviceType = devicetype
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          unless params['DataTemplate'].nil?
            @DataTemplate = []
            params['DataTemplate'].each do |i|
              datatemplate_tmp = DataTemplate.new
              datatemplate_tmp.deserialize(i)
              @DataTemplate << datatemplate_tmp
            end
          end
          @DataProtocol = params['DataProtocol']
          @AuthType = params['AuthType']
          @CommProtocol = params['CommProtocol']
          @DeviceType = params['DeviceType']
        end
      end

      # AddProduct返回参数结构体
      class AddProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品信息
        # @type Product: :class:`Tencentcloud::Iot.v20180123.models.Product`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId

        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = Product.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddRule请求参数结构体
      class AddRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param Query: 查询
        # @type Query: :class:`Tencentcloud::Iot.v20180123.models.RuleQuery`
        # @param Actions: 转发动作列表
        # @type Actions: Array
        # @param DataType: 数据类型（0：文本，1：二进制）
        # @type DataType: Integer

        attr_accessor :Name, :Description, :Query, :Actions, :DataType

        def initialize(name=nil, description=nil, query=nil, actions=nil, datatype=nil)
          @Name = name
          @Description = description
          @Query = query
          @Actions = actions
          @DataType = datatype
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          unless params['Query'].nil?
            @Query = RuleQuery.new
            @Query.deserialize(params['Query'])
          end
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @Actions << action_tmp
            end
          end
          @DataType = params['DataType']
        end
      end

      # AddRule返回参数结构体
      class AddRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Iot.v20180123.models.Rule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = Rule.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddTopic请求参数结构体
      class AddTopicRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String

        attr_accessor :ProductId, :TopicName

        def initialize(productid=nil, topicname=nil)
          @ProductId = productid
          @TopicName = topicname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
        end
      end

      # AddTopic返回参数结构体
      class AddTopicResponse < TencentCloud::Common::AbstractModel
        # @param Topic: Topic信息
        # @type Topic: :class:`Tencentcloud::Iot.v20180123.models.Topic`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topic, :RequestId

        def initialize(topic=nil, requestid=nil)
          @Topic = topic
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topic'].nil?
            @Topic = Topic.new
            @Topic.deserialize(params['Topic'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AppAddUser请求参数结构体
      class AppAddUserRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 密码
        # @type Password: String

        attr_accessor :UserName, :Password

        def initialize(username=nil, password=nil)
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # AppAddUser返回参数结构体
      class AppAddUserResponse < TencentCloud::Common::AbstractModel
        # @param AppUser: 应用用户
        # @type AppUser: :class:`Tencentcloud::Iot.v20180123.models.AppUser`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppUser, :RequestId

        def initialize(appuser=nil, requestid=nil)
          @AppUser = appuser
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppUser'].nil?
            @AppUser = AppUser.new
            @AppUser.deserialize(params['AppUser'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AppDeleteDevice请求参数结构体
      class AppDeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :AccessToken, :ProductId, :DeviceName

        def initialize(accesstoken=nil, productid=nil, devicename=nil)
          @AccessToken = accesstoken
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # AppDeleteDevice返回参数结构体
      class AppDeleteDeviceResponse < TencentCloud::Common::AbstractModel
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

      # 绑定设备
      class AppDevice < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param ProductId: 所属产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AliasName: 别名
        # @type AliasName: String
        # @param Region: 地区
        # @type Region: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :DeviceId, :ProductId, :DeviceName, :AliasName, :Region, :CreateTime, :UpdateTime

        def initialize(deviceid=nil, productid=nil, devicename=nil, aliasname=nil, region=nil, createtime=nil, updatetime=nil)
          @DeviceId = deviceid
          @ProductId = productid
          @DeviceName = devicename
          @AliasName = aliasname
          @Region = region
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @AliasName = params['AliasName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 绑定设备详情
      class AppDeviceDetail < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param ProductId: 所属产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AliasName: 别名
        # @type AliasName: String
        # @param Region: 地区
        # @type Region: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param DeviceInfo: 设备信息（json）
        # @type DeviceInfo: String
        # @param DataTemplate: 数据模板
        # @type DataTemplate: Array

        attr_accessor :DeviceId, :ProductId, :DeviceName, :AliasName, :Region, :CreateTime, :UpdateTime, :DeviceInfo, :DataTemplate

        def initialize(deviceid=nil, productid=nil, devicename=nil, aliasname=nil, region=nil, createtime=nil, updatetime=nil, deviceinfo=nil, datatemplate=nil)
          @DeviceId = deviceid
          @ProductId = productid
          @DeviceName = devicename
          @AliasName = aliasname
          @Region = region
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DeviceInfo = deviceinfo
          @DataTemplate = datatemplate
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @AliasName = params['AliasName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DeviceInfo = params['DeviceInfo']
          unless params['DataTemplate'].nil?
            @DataTemplate = []
            params['DataTemplate'].each do |i|
              datatemplate_tmp = DataTemplate.new
              datatemplate_tmp.deserialize(i)
              @DataTemplate << datatemplate_tmp
            end
          end
        end
      end

      # AppGetDeviceData请求参数结构体
      class AppGetDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :AccessToken, :ProductId, :DeviceName

        def initialize(accesstoken=nil, productid=nil, devicename=nil)
          @AccessToken = accesstoken
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # AppGetDeviceData返回参数结构体
      class AppGetDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param DeviceData: 设备数据。
        # @type DeviceData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceData, :RequestId

        def initialize(devicedata=nil, requestid=nil)
          @DeviceData = devicedata
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceData = params['DeviceData']
          @RequestId = params['RequestId']
        end
      end

      # AppGetDevice请求参数结构体
      class AppGetDeviceRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :AccessToken, :ProductId, :DeviceName

        def initialize(accesstoken=nil, productid=nil, devicename=nil)
          @AccessToken = accesstoken
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # AppGetDevice返回参数结构体
      class AppGetDeviceResponse < TencentCloud::Common::AbstractModel
        # @param AppDevice: 绑定设备详情
        # @type AppDevice: :class:`Tencentcloud::Iot.v20180123.models.AppDeviceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppDevice, :RequestId

        def initialize(appdevice=nil, requestid=nil)
          @AppDevice = appdevice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppDevice'].nil?
            @AppDevice = AppDeviceDetail.new
            @AppDevice.deserialize(params['AppDevice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AppGetDeviceStatuses请求参数结构体
      class AppGetDeviceStatusesRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param DeviceIds: 设备Id列表（单次限制1000个设备）
        # @type DeviceIds: Array

        attr_accessor :AccessToken, :DeviceIds

        def initialize(accesstoken=nil, deviceids=nil)
          @AccessToken = accesstoken
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @DeviceIds = params['DeviceIds']
        end
      end

      # AppGetDeviceStatuses返回参数结构体
      class AppGetDeviceStatusesResponse < TencentCloud::Common::AbstractModel
        # @param DeviceStatuses: 设备状态
        # @type DeviceStatuses: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceStatuses, :RequestId

        def initialize(devicestatuses=nil, requestid=nil)
          @DeviceStatuses = devicestatuses
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceStatuses'].nil?
            @DeviceStatuses = []
            params['DeviceStatuses'].each do |i|
              devicestatus_tmp = DeviceStatus.new
              devicestatus_tmp.deserialize(i)
              @DeviceStatuses << devicestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AppGetDevices请求参数结构体
      class AppGetDevicesRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String

        attr_accessor :AccessToken

        def initialize(accesstoken=nil)
          @AccessToken = accesstoken
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
        end
      end

      # AppGetDevices返回参数结构体
      class AppGetDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 绑定设备列表
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :RequestId

        def initialize(devices=nil, requestid=nil)
          @Devices = devices
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              appdevice_tmp = AppDevice.new
              appdevice_tmp.deserialize(i)
              @Devices << appdevice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AppGetToken请求参数结构体
      class AppGetTokenRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 密码
        # @type Password: String
        # @param Expire: TTL
        # @type Expire: Integer

        attr_accessor :UserName, :Password, :Expire

        def initialize(username=nil, password=nil, expire=nil)
          @UserName = username
          @Password = password
          @Expire = expire
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
          @Expire = params['Expire']
        end
      end

      # AppGetToken返回参数结构体
      class AppGetTokenResponse < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessToken, :RequestId

        def initialize(accesstoken=nil, requestid=nil)
          @AccessToken = accesstoken
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @RequestId = params['RequestId']
        end
      end

      # AppGetUser请求参数结构体
      class AppGetUserRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String

        attr_accessor :AccessToken

        def initialize(accesstoken=nil)
          @AccessToken = accesstoken
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
        end
      end

      # AppGetUser返回参数结构体
      class AppGetUserResponse < TencentCloud::Common::AbstractModel
        # @param AppUser: 用户信息
        # @type AppUser: :class:`Tencentcloud::Iot.v20180123.models.AppUser`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppUser, :RequestId

        def initialize(appuser=nil, requestid=nil)
          @AppUser = appuser
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppUser'].nil?
            @AppUser = AppUser.new
            @AppUser.deserialize(params['AppUser'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AppIssueDeviceControl请求参数结构体
      class AppIssueDeviceControlRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ControlData: 控制数据（json）
        # @type ControlData: String
        # @param Metadata: 是否发送metadata字段
        # @type Metadata: Boolean

        attr_accessor :AccessToken, :ProductId, :DeviceName, :ControlData, :Metadata

        def initialize(accesstoken=nil, productid=nil, devicename=nil, controldata=nil, metadata=nil)
          @AccessToken = accesstoken
          @ProductId = productid
          @DeviceName = devicename
          @ControlData = controldata
          @Metadata = metadata
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ControlData = params['ControlData']
          @Metadata = params['Metadata']
        end
      end

      # AppIssueDeviceControl返回参数结构体
      class AppIssueDeviceControlResponse < TencentCloud::Common::AbstractModel
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

      # AppResetPassword请求参数结构体
      class AppResetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param OldPassword: 旧密码
        # @type OldPassword: String
        # @param NewPassword: 新密码
        # @type NewPassword: String

        attr_accessor :AccessToken, :OldPassword, :NewPassword

        def initialize(accesstoken=nil, oldpassword=nil, newpassword=nil)
          @AccessToken = accesstoken
          @OldPassword = oldpassword
          @NewPassword = newpassword
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @OldPassword = params['OldPassword']
          @NewPassword = params['NewPassword']
        end
      end

      # AppResetPassword返回参数结构体
      class AppResetPasswordResponse < TencentCloud::Common::AbstractModel
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

      # AppSecureAddDevice请求参数结构体
      class AppSecureAddDeviceRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param DeviceSignature: 设备签名
        # @type DeviceSignature: String

        attr_accessor :AccessToken, :DeviceSignature

        def initialize(accesstoken=nil, devicesignature=nil)
          @AccessToken = accesstoken
          @DeviceSignature = devicesignature
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @DeviceSignature = params['DeviceSignature']
        end
      end

      # AppSecureAddDevice返回参数结构体
      class AppSecureAddDeviceResponse < TencentCloud::Common::AbstractModel
        # @param AppDevice: 绑定设备信息
        # @type AppDevice: :class:`Tencentcloud::Iot.v20180123.models.AppDevice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppDevice, :RequestId

        def initialize(appdevice=nil, requestid=nil)
          @AppDevice = appdevice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppDevice'].nil?
            @AppDevice = AppDevice.new
            @AppDevice.deserialize(params['AppDevice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AppUpdateDevice请求参数结构体
      class AppUpdateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AliasName: 设备别名
        # @type AliasName: String

        attr_accessor :AccessToken, :ProductId, :DeviceName, :AliasName

        def initialize(accesstoken=nil, productid=nil, devicename=nil, aliasname=nil)
          @AccessToken = accesstoken
          @ProductId = productid
          @DeviceName = devicename
          @AliasName = aliasname
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @AliasName = params['AliasName']
        end
      end

      # AppUpdateDevice返回参数结构体
      class AppUpdateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param AppDevice: 设备信息
        # @type AppDevice: :class:`Tencentcloud::Iot.v20180123.models.AppDevice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppDevice, :RequestId

        def initialize(appdevice=nil, requestid=nil)
          @AppDevice = appdevice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppDevice'].nil?
            @AppDevice = AppDevice.new
            @AppDevice.deserialize(params['AppDevice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AppUpdateUser请求参数结构体
      class AppUpdateUserRequest < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问Token
        # @type AccessToken: String
        # @param NickName: 昵称
        # @type NickName: String

        attr_accessor :AccessToken, :NickName

        def initialize(accesstoken=nil, nickname=nil)
          @AccessToken = accesstoken
          @NickName = nickname
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @NickName = params['NickName']
        end
      end

      # AppUpdateUser返回参数结构体
      class AppUpdateUserResponse < TencentCloud::Common::AbstractModel
        # @param AppUser: 应用用户
        # @type AppUser: :class:`Tencentcloud::Iot.v20180123.models.AppUser`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppUser, :RequestId

        def initialize(appuser=nil, requestid=nil)
          @AppUser = appuser
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppUser'].nil?
            @AppUser = AppUser.new
            @AppUser.deserialize(params['AppUser'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 应用用户
      class AppUser < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用Id
        # @type ApplicationId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String

        attr_accessor :ApplicationId, :UserName, :NickName, :CreateTime, :UpdateTime

        def initialize(applicationid=nil, username=nil, nickname=nil, createtime=nil, updatetime=nil)
          @ApplicationId = applicationid
          @UserName = username
          @NickName = nickname
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @UserName = params['UserName']
          @NickName = params['NickName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # AssociateSubDeviceToGatewayProduct请求参数结构体
      class AssociateSubDeviceToGatewayProductRequest < TencentCloud::Common::AbstractModel
        # @param SubDeviceProductId: 子设备产品Id
        # @type SubDeviceProductId: String
        # @param GatewayProductId: 网关产品Id
        # @type GatewayProductId: String

        attr_accessor :SubDeviceProductId, :GatewayProductId

        def initialize(subdeviceproductid=nil, gatewayproductid=nil)
          @SubDeviceProductId = subdeviceproductid
          @GatewayProductId = gatewayproductid
        end

        def deserialize(params)
          @SubDeviceProductId = params['SubDeviceProductId']
          @GatewayProductId = params['GatewayProductId']
        end
      end

      # AssociateSubDeviceToGatewayProduct返回参数结构体
      class AssociateSubDeviceToGatewayProductResponse < TencentCloud::Common::AbstractModel
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

      # 布尔类型数据
      class BoolData < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Mode: 读写模式
        # @type Mode: String
        # @param Range: 取值列表
        # @type Range: Array

        attr_accessor :Name, :Desc, :Mode, :Range

        def initialize(name=nil, desc=nil, mode=nil, range=nil)
          @Name = name
          @Desc = desc
          @Mode = mode
          @Range = range
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Mode = params['Mode']
          @Range = params['Range']
        end
      end

      # 转发至Ckafka
      class CkafkaAction < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: topic名称
        # @type TopicName: String
        # @param Region: 地域
        # @type Region: String

        attr_accessor :InstanceId, :TopicName, :Region

        def initialize(instanceid=nil, topicname=nil, region=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @Region = params['Region']
        end
      end

      # 数据历史条目
      class DataHistoryEntry < TencentCloud::Common::AbstractModel
        # @param Id: 日志id
        # @type Id: String
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Data: 数据
        # @type Data: String

        attr_accessor :Id, :Timestamp, :DeviceName, :Data

        def initialize(id=nil, timestamp=nil, devicename=nil, data=nil)
          @Id = id
          @Timestamp = timestamp
          @DeviceName = devicename
          @Data = data
        end

        def deserialize(params)
          @Id = params['Id']
          @Timestamp = params['Timestamp']
          @DeviceName = params['DeviceName']
          @Data = params['Data']
        end
      end

      # 数据模版
      class DataTemplate < TencentCloud::Common::AbstractModel
        # @param Number: 数字类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Number: :class:`Tencentcloud::Iot.v20180123.models.NumberData`
        # @param String: 字符串类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type String: :class:`Tencentcloud::Iot.v20180123.models.StringData`
        # @param Enum: 枚举类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enum: :class:`Tencentcloud::Iot.v20180123.models.EnumData`
        # @param Bool: 布尔类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bool: :class:`Tencentcloud::Iot.v20180123.models.BoolData`

        attr_accessor :Number, :String, :Enum, :Bool

        def initialize(number=nil, string=nil, enum=nil, bool=nil)
          @Number = number
          @String = string
          @Enum = enum
          @Bool = bool
        end

        def deserialize(params)
          unless params['Number'].nil?
            @Number = NumberData.new
            @Number.deserialize(params['Number'])
          end
          unless params['String'].nil?
            @String = StringData.new
            @String.deserialize(params['String'])
          end
          unless params['Enum'].nil?
            @Enum = EnumData.new
            @Enum.deserialize(params['Enum'])
          end
          unless params['Bool'].nil?
            @Bool = BoolData.new
            @Bool.deserialize(params['Bool'])
          end
        end
      end

      # DeactivateRule请求参数结构体
      class DeactivateRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DeactivateRule返回参数结构体
      class DeactivateRuleResponse < TencentCloud::Common::AbstractModel
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

      # 设备日志条目
      class DebugLogEntry < TencentCloud::Common::AbstractModel
        # @param Id: 日志id
        # @type Id: String
        # @param Event: 行为（事件）
        # @type Event: String
        # @param LogType: shadow/action/mqtt, 分别表示：影子/规则引擎/上下线日志
        # @type LogType: String
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param Result: success/fail
        # @type Result: String
        # @param Data: 日志详细内容
        # @type Data: String
        # @param Topic: 数据来源topic
        # @type Topic: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :Id, :Event, :LogType, :Timestamp, :Result, :Data, :Topic, :DeviceName

        def initialize(id=nil, event=nil, logtype=nil, timestamp=nil, result=nil, data=nil, topic=nil, devicename=nil)
          @Id = id
          @Event = event
          @LogType = logtype
          @Timestamp = timestamp
          @Result = result
          @Data = data
          @Topic = topic
          @DeviceName = devicename
        end

        def deserialize(params)
          @Id = params['Id']
          @Event = params['Event']
          @LogType = params['LogType']
          @Timestamp = params['Timestamp']
          @Result = params['Result']
          @Data = params['Data']
          @Topic = params['Topic']
          @DeviceName = params['DeviceName']
        end
      end

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
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

      # DeleteProduct请求参数结构体
      class DeleteProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteProduct返回参数结构体
      class DeleteProductResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: TopicId
        # @type TopicId: String
        # @param ProductId: 产品Id
        # @type ProductId: String

        attr_accessor :TopicId, :ProductId

        def initialize(topicid=nil, productid=nil)
          @TopicId = topicid
          @ProductId = productid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @ProductId = params['ProductId']
        end
      end

      # DeleteTopic返回参数结构体
      class DeleteTopicResponse < TencentCloud::Common::AbstractModel
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

      # 设备
      class Device < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceSecret: 设备密钥
        # @type DeviceSecret: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param DeviceInfo: 设备信息（json）
        # @type DeviceInfo: String

        attr_accessor :ProductId, :DeviceName, :DeviceSecret, :UpdateTime, :CreateTime, :DeviceInfo

        def initialize(productid=nil, devicename=nil, devicesecret=nil, updatetime=nil, createtime=nil, deviceinfo=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceSecret = devicesecret
          @UpdateTime = updatetime
          @CreateTime = createtime
          @DeviceInfo = deviceinfo
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceSecret = params['DeviceSecret']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @DeviceInfo = params['DeviceInfo']
        end
      end

      # 设备条目
      class DeviceEntry < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceSecret: 设备密钥
        # @type DeviceSecret: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ProductId, :DeviceName, :DeviceSecret, :CreateTime

        def initialize(productid=nil, devicename=nil, devicesecret=nil, createtime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceSecret = devicesecret
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceSecret = params['DeviceSecret']
          @CreateTime = params['CreateTime']
        end
      end

      # 设备日志条目
      class DeviceLogEntry < TencentCloud::Common::AbstractModel
        # @param Id: 日志id
        # @type Id: String
        # @param Msg: 日志内容
        # @type Msg: String
        # @param Code: 状态码
        # @type Code: String
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Method: 设备动作
        # @type Method: String

        attr_accessor :Id, :Msg, :Code, :Timestamp, :DeviceName, :Method

        def initialize(id=nil, msg=nil, code=nil, timestamp=nil, devicename=nil, method=nil)
          @Id = id
          @Msg = msg
          @Code = code
          @Timestamp = timestamp
          @DeviceName = devicename
          @Method = method
        end

        def deserialize(params)
          @Id = params['Id']
          @Msg = params['Msg']
          @Code = params['Code']
          @Timestamp = params['Timestamp']
          @DeviceName = params['DeviceName']
          @Method = params['Method']
        end
      end

      # 设备签名
      class DeviceSignature < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceSignature: 设备签名
        # @type DeviceSignature: String

        attr_accessor :DeviceName, :DeviceSignature

        def initialize(devicename=nil, devicesignature=nil)
          @DeviceName = devicename
          @DeviceSignature = devicesignature
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @DeviceSignature = params['DeviceSignature']
        end
      end

      # 设备统计数据
      class DeviceStatData < TencentCloud::Common::AbstractModel
        # @param Datetime: 时间点
        # @type Datetime: String
        # @param DeviceOnline: 在线设备数
        # @type DeviceOnline: Integer
        # @param DeviceActive: 激活设备数
        # @type DeviceActive: Integer
        # @param DeviceTotal: 设备总数
        # @type DeviceTotal: Integer

        attr_accessor :Datetime, :DeviceOnline, :DeviceActive, :DeviceTotal

        def initialize(datetime=nil, deviceonline=nil, deviceactive=nil, devicetotal=nil)
          @Datetime = datetime
          @DeviceOnline = deviceonline
          @DeviceActive = deviceactive
          @DeviceTotal = devicetotal
        end

        def deserialize(params)
          @Datetime = params['Datetime']
          @DeviceOnline = params['DeviceOnline']
          @DeviceActive = params['DeviceActive']
          @DeviceTotal = params['DeviceTotal']
        end
      end

      # 设备状态
      class DeviceStatus < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Status: 设备状态（inactive, online, offline）
        # @type Status: String
        # @param FirstOnline: 首次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOnline: String
        # @param LastOnline: 最后上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOnline: String
        # @param OnlineTimes: 上线次数
        # @type OnlineTimes: Integer

        attr_accessor :DeviceName, :Status, :FirstOnline, :LastOnline, :OnlineTimes

        def initialize(devicename=nil, status=nil, firstonline=nil, lastonline=nil, onlinetimes=nil)
          @DeviceName = devicename
          @Status = status
          @FirstOnline = firstonline
          @LastOnline = lastonline
          @OnlineTimes = onlinetimes
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Status = params['Status']
          @FirstOnline = params['FirstOnline']
          @LastOnline = params['LastOnline']
          @OnlineTimes = params['OnlineTimes']
        end
      end

      # 枚举类型数据
      class EnumData < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Mode: 读写模式
        # @type Mode: String
        # @param Range: 取值列表
        # @type Range: Array

        attr_accessor :Name, :Desc, :Mode, :Range

        def initialize(name=nil, desc=nil, mode=nil, range=nil)
          @Name = name
          @Desc = desc
          @Mode = mode
          @Range = range
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Mode = params['Mode']
          @Range = params['Range']
        end
      end

      # GetDataHistory请求参数结构体
      class GetDataHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceNames: 设备名称列表，允许最多一次100台
        # @type DeviceNames: Array
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Size: 查询数据量
        # @type Size: Integer
        # @param Order: 时间排序（desc/asc）
        # @type Order: String
        # @param ScrollId: 查询游标
        # @type ScrollId: String

        attr_accessor :ProductId, :DeviceNames, :StartTime, :EndTime, :Size, :Order, :ScrollId

        def initialize(productid=nil, devicenames=nil, starttime=nil, endtime=nil, size=nil, order=nil, scrollid=nil)
          @ProductId = productid
          @DeviceNames = devicenames
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Order = order
          @ScrollId = scrollid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Order = params['Order']
          @ScrollId = params['ScrollId']
        end
      end

      # GetDataHistory返回参数结构体
      class GetDataHistoryResponse < TencentCloud::Common::AbstractModel
        # @param DataHistory: 数据历史
        # @type DataHistory: Array
        # @param ScrollId: 查询游标
        # @type ScrollId: String
        # @param ScrollTimeout: 查询游标超时
        # @type ScrollTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataHistory, :ScrollId, :ScrollTimeout, :RequestId

        def initialize(datahistory=nil, scrollid=nil, scrolltimeout=nil, requestid=nil)
          @DataHistory = datahistory
          @ScrollId = scrollid
          @ScrollTimeout = scrolltimeout
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataHistory'].nil?
            @DataHistory = []
            params['DataHistory'].each do |i|
              datahistoryentry_tmp = DataHistoryEntry.new
              datahistoryentry_tmp.deserialize(i)
              @DataHistory << datahistoryentry_tmp
            end
          end
          @ScrollId = params['ScrollId']
          @ScrollTimeout = params['ScrollTimeout']
          @RequestId = params['RequestId']
        end
      end

      # GetDebugLog请求参数结构体
      class GetDebugLogRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceNames: 设备名称列表，最大支持100台
        # @type DeviceNames: Array
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Size: 查询数据量
        # @type Size: Integer
        # @param Order: 时间排序（desc/asc）
        # @type Order: String
        # @param ScrollId: 查询游标
        # @type ScrollId: String
        # @param Type: 日志类型（shadow/action/mqtt）
        # @type Type: String

        attr_accessor :ProductId, :DeviceNames, :StartTime, :EndTime, :Size, :Order, :ScrollId, :Type

        def initialize(productid=nil, devicenames=nil, starttime=nil, endtime=nil, size=nil, order=nil, scrollid=nil, type=nil)
          @ProductId = productid
          @DeviceNames = devicenames
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Order = order
          @ScrollId = scrollid
          @Type = type
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Order = params['Order']
          @ScrollId = params['ScrollId']
          @Type = params['Type']
        end
      end

      # GetDebugLog返回参数结构体
      class GetDebugLogResponse < TencentCloud::Common::AbstractModel
        # @param DebugLog: 调试日志
        # @type DebugLog: Array
        # @param ScrollId: 查询游标
        # @type ScrollId: String
        # @param ScrollTimeout: 游标超时
        # @type ScrollTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DebugLog, :ScrollId, :ScrollTimeout, :RequestId

        def initialize(debuglog=nil, scrollid=nil, scrolltimeout=nil, requestid=nil)
          @DebugLog = debuglog
          @ScrollId = scrollid
          @ScrollTimeout = scrolltimeout
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DebugLog'].nil?
            @DebugLog = []
            params['DebugLog'].each do |i|
              debuglogentry_tmp = DebugLogEntry.new
              debuglogentry_tmp.deserialize(i)
              @DebugLog << debuglogentry_tmp
            end
          end
          @ScrollId = params['ScrollId']
          @ScrollTimeout = params['ScrollTimeout']
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceData请求参数结构体
      class GetDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
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

      # GetDeviceData返回参数结构体
      class GetDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param DeviceData: 设备数据
        # @type DeviceData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceData, :RequestId

        def initialize(devicedata=nil, requestid=nil)
          @DeviceData = devicedata
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceData = params['DeviceData']
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceLog请求参数结构体
      class GetDeviceLogRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceNames: 设备名称列表，最大支持100台
        # @type DeviceNames: Array
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Size: 查询数据量
        # @type Size: Integer
        # @param Order: 时间排序（desc/asc）
        # @type Order: String
        # @param ScrollId: 查询游标
        # @type ScrollId: String
        # @param Type: 日志类型（comm/status）
        # @type Type: String

        attr_accessor :ProductId, :DeviceNames, :StartTime, :EndTime, :Size, :Order, :ScrollId, :Type

        def initialize(productid=nil, devicenames=nil, starttime=nil, endtime=nil, size=nil, order=nil, scrollid=nil, type=nil)
          @ProductId = productid
          @DeviceNames = devicenames
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Order = order
          @ScrollId = scrollid
          @Type = type
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Order = params['Order']
          @ScrollId = params['ScrollId']
          @Type = params['Type']
        end
      end

      # GetDeviceLog返回参数结构体
      class GetDeviceLogResponse < TencentCloud::Common::AbstractModel
        # @param DeviceLog: 设备日志
        # @type DeviceLog: Array
        # @param ScrollId: 查询游标
        # @type ScrollId: String
        # @param ScrollTimeout: 游标超时
        # @type ScrollTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceLog, :ScrollId, :ScrollTimeout, :RequestId

        def initialize(devicelog=nil, scrollid=nil, scrolltimeout=nil, requestid=nil)
          @DeviceLog = devicelog
          @ScrollId = scrollid
          @ScrollTimeout = scrolltimeout
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceLog'].nil?
            @DeviceLog = []
            params['DeviceLog'].each do |i|
              devicelogentry_tmp = DeviceLogEntry.new
              devicelogentry_tmp.deserialize(i)
              @DeviceLog << devicelogentry_tmp
            end
          end
          @ScrollId = params['ScrollId']
          @ScrollTimeout = params['ScrollTimeout']
          @RequestId = params['RequestId']
        end
      end

      # GetDevice请求参数结构体
      class GetDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
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

      # GetDevice返回参数结构体
      class GetDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备信息
        # @type Device: :class:`Tencentcloud::Iot.v20180123.models.Device`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId

        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceSignatures请求参数结构体
      class GetDeviceSignaturesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceNames: 设备名称列表（单次限制1000个设备）
        # @type DeviceNames: Array
        # @param Expire: 过期时间
        # @type Expire: Integer

        attr_accessor :ProductId, :DeviceNames, :Expire

        def initialize(productid=nil, devicenames=nil, expire=nil)
          @ProductId = productid
          @DeviceNames = devicenames
          @Expire = expire
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @Expire = params['Expire']
        end
      end

      # GetDeviceSignatures返回参数结构体
      class GetDeviceSignaturesResponse < TencentCloud::Common::AbstractModel
        # @param DeviceSignatures: 设备绑定签名列表
        # @type DeviceSignatures: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceSignatures, :RequestId

        def initialize(devicesignatures=nil, requestid=nil)
          @DeviceSignatures = devicesignatures
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceSignatures'].nil?
            @DeviceSignatures = []
            params['DeviceSignatures'].each do |i|
              devicesignature_tmp = DeviceSignature.new
              devicesignature_tmp.deserialize(i)
              @DeviceSignatures << devicesignature_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceStatistics请求参数结构体
      class GetDeviceStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Products: 产品Id列表
        # @type Products: Array
        # @param StartDate: 开始日期
        # @type StartDate: String
        # @param EndDate: 结束日期
        # @type EndDate: String

        attr_accessor :Products, :StartDate, :EndDate

        def initialize(products=nil, startdate=nil, enddate=nil)
          @Products = products
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @Products = params['Products']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # GetDeviceStatistics返回参数结构体
      class GetDeviceStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param DeviceStatistics: 统计数据
        # @type DeviceStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceStatistics, :RequestId

        def initialize(devicestatistics=nil, requestid=nil)
          @DeviceStatistics = devicestatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceStatistics'].nil?
            @DeviceStatistics = []
            params['DeviceStatistics'].each do |i|
              devicestatdata_tmp = DeviceStatData.new
              devicestatdata_tmp.deserialize(i)
              @DeviceStatistics << devicestatdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceStatuses请求参数结构体
      class GetDeviceStatusesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceNames: 设备名称列表（单次限制1000个设备）
        # @type DeviceNames: Array

        attr_accessor :ProductId, :DeviceNames

        def initialize(productid=nil, devicenames=nil)
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # GetDeviceStatuses返回参数结构体
      class GetDeviceStatusesResponse < TencentCloud::Common::AbstractModel
        # @param DeviceStatuses: 设备状态列表
        # @type DeviceStatuses: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceStatuses, :RequestId

        def initialize(devicestatuses=nil, requestid=nil)
          @DeviceStatuses = devicestatuses
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceStatuses'].nil?
            @DeviceStatuses = []
            params['DeviceStatuses'].each do |i|
              devicestatus_tmp = DeviceStatus.new
              devicestatus_tmp.deserialize(i)
              @DeviceStatuses << devicestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDevices请求参数结构体
      class GetDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Length: 长度
        # @type Length: Integer
        # @param Keyword: 关键字查询
        # @type Keyword: String

        attr_accessor :ProductId, :Offset, :Length, :Keyword

        def initialize(productid=nil, offset=nil, length=nil, keyword=nil)
          @ProductId = productid
          @Offset = offset
          @Length = length
          @Keyword = keyword
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Length = params['Length']
          @Keyword = params['Keyword']
        end
      end

      # GetDevices返回参数结构体
      class GetDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 设备列表
        # @type Devices: Array
        # @param Total: 设备总数
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
              deviceentry_tmp = DeviceEntry.new
              deviceentry_tmp.deserialize(i)
              @Devices << deviceentry_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetProduct请求参数结构体
      class GetProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # GetProduct返回参数结构体
      class GetProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品信息
        # @type Product: :class:`Tencentcloud::Iot.v20180123.models.Product`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId

        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = Product.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetProducts请求参数结构体
      class GetProductsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Length: 长度
        # @type Length: Integer

        attr_accessor :Offset, :Length

        def initialize(offset=nil, length=nil)
          @Offset = offset
          @Length = length
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Length = params['Length']
        end
      end

      # GetProducts返回参数结构体
      class GetProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: Product列表
        # @type Products: Array
        # @param Total: Product总数
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
              productentry_tmp = ProductEntry.new
              productentry_tmp.deserialize(i)
              @Products << productentry_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetRule请求参数结构体
      class GetRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # GetRule返回参数结构体
      class GetRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Iot.v20180123.models.Rule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = Rule.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRules请求参数结构体
      class GetRulesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Length: 长度
        # @type Length: Integer

        attr_accessor :Offset, :Length

        def initialize(offset=nil, length=nil)
          @Offset = offset
          @Length = length
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Length = params['Length']
        end
      end

      # GetRules返回参数结构体
      class GetRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param Total: 规则总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :Total, :RequestId

        def initialize(rules=nil, total=nil, requestid=nil)
          @Rules = rules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Rules << rule_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetTopic请求参数结构体
      class GetTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicId: TopicId
        # @type TopicId: String
        # @param ProductId: 产品Id
        # @type ProductId: String

        attr_accessor :TopicId, :ProductId

        def initialize(topicid=nil, productid=nil)
          @TopicId = topicid
          @ProductId = productid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @ProductId = params['ProductId']
        end
      end

      # GetTopic返回参数结构体
      class GetTopicResponse < TencentCloud::Common::AbstractModel
        # @param Topic: Topic信息
        # @type Topic: :class:`Tencentcloud::Iot.v20180123.models.Topic`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topic, :RequestId

        def initialize(topic=nil, requestid=nil)
          @Topic = topic
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topic'].nil?
            @Topic = Topic.new
            @Topic.deserialize(params['Topic'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTopics请求参数结构体
      class GetTopicsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Length: 长度
        # @type Length: Integer

        attr_accessor :ProductId, :Offset, :Length

        def initialize(productid=nil, offset=nil, length=nil)
          @ProductId = productid
          @Offset = offset
          @Length = length
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Length = params['Length']
        end
      end

      # GetTopics返回参数结构体
      class GetTopicsResponse < TencentCloud::Common::AbstractModel
        # @param Topics: Topic列表
        # @type Topics: Array
        # @param Total: Topic总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topics, :Total, :RequestId

        def initialize(topics=nil, total=nil, requestid=nil)
          @Topics = topics
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              topic_tmp = Topic.new
              topic_tmp.deserialize(i)
              @Topics << topic_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # IssueDeviceControl请求参数结构体
      class IssueDeviceControlRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ControlData: 控制数据（json）
        # @type ControlData: String
        # @param Metadata: 是否发送metadata字段
        # @type Metadata: Boolean

        attr_accessor :ProductId, :DeviceName, :ControlData, :Metadata

        def initialize(productid=nil, devicename=nil, controldata=nil, metadata=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ControlData = controldata
          @Metadata = metadata
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ControlData = params['ControlData']
          @Metadata = params['Metadata']
        end
      end

      # IssueDeviceControl返回参数结构体
      class IssueDeviceControlResponse < TencentCloud::Common::AbstractModel
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

      # 数字类型数据
      class NumberData < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Mode: 读写模式
        # @type Mode: String
        # @param Range: 取值范围
        # @type Range: Array

        attr_accessor :Name, :Desc, :Mode, :Range

        def initialize(name=nil, desc=nil, mode=nil, range=nil)
          @Name = name
          @Desc = desc
          @Mode = mode
          @Range = range
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Mode = params['Mode']
          @Range = params['Range']
        end
      end

      # 产品
      class Product < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param ProductKey: 产品Key
        # @type ProductKey: String
        # @param AppId: AppId
        # @type AppId: Integer
        # @param Name: 产品名称
        # @type Name: String
        # @param Description: 产品描述
        # @type Description: String
        # @param Domain: 连接域名
        # @type Domain: String
        # @param Standard: 产品规格
        # @type Standard: Integer
        # @param AuthType: 鉴权类型（0：直连，1：Token）
        # @type AuthType: Integer
        # @param Deleted: 删除（0未删除）
        # @type Deleted: Integer
        # @param Message: 备注
        # @type Message: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param DataTemplate: 数据模版
        # @type DataTemplate: Array
        # @param DataProtocol: 数据协议（native/template）
        # @type DataProtocol: String
        # @param Username: 直连用户名
        # @type Username: String
        # @param Password: 直连密码
        # @type Password: String
        # @param CommProtocol: 通信方式
        # @type CommProtocol: String
        # @param Qps: qps
        # @type Qps: Integer
        # @param Region: 地域
        # @type Region: String
        # @param DeviceType: 产品的设备类型
        # @type DeviceType: String
        # @param AssociatedProducts: 关联的产品列表
        # @type AssociatedProducts: Array

        attr_accessor :ProductId, :ProductKey, :AppId, :Name, :Description, :Domain, :Standard, :AuthType, :Deleted, :Message, :CreateTime, :UpdateTime, :DataTemplate, :DataProtocol, :Username, :Password, :CommProtocol, :Qps, :Region, :DeviceType, :AssociatedProducts

        def initialize(productid=nil, productkey=nil, appid=nil, name=nil, description=nil, domain=nil, standard=nil, authtype=nil, deleted=nil, message=nil, createtime=nil, updatetime=nil, datatemplate=nil, dataprotocol=nil, username=nil, password=nil, commprotocol=nil, qps=nil, region=nil, devicetype=nil, associatedproducts=nil)
          @ProductId = productid
          @ProductKey = productkey
          @AppId = appid
          @Name = name
          @Description = description
          @Domain = domain
          @Standard = standard
          @AuthType = authtype
          @Deleted = deleted
          @Message = message
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DataTemplate = datatemplate
          @DataProtocol = dataprotocol
          @Username = username
          @Password = password
          @CommProtocol = commprotocol
          @Qps = qps
          @Region = region
          @DeviceType = devicetype
          @AssociatedProducts = associatedproducts
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductKey = params['ProductKey']
          @AppId = params['AppId']
          @Name = params['Name']
          @Description = params['Description']
          @Domain = params['Domain']
          @Standard = params['Standard']
          @AuthType = params['AuthType']
          @Deleted = params['Deleted']
          @Message = params['Message']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['DataTemplate'].nil?
            @DataTemplate = []
            params['DataTemplate'].each do |i|
              datatemplate_tmp = DataTemplate.new
              datatemplate_tmp.deserialize(i)
              @DataTemplate << datatemplate_tmp
            end
          end
          @DataProtocol = params['DataProtocol']
          @Username = params['Username']
          @Password = params['Password']
          @CommProtocol = params['CommProtocol']
          @Qps = params['Qps']
          @Region = params['Region']
          @DeviceType = params['DeviceType']
          @AssociatedProducts = params['AssociatedProducts']
        end
      end

      # 产品条目
      class ProductEntry < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param ProductKey: 产品Key
        # @type ProductKey: String
        # @param AppId: AppId
        # @type AppId: Integer
        # @param Name: 产品名称
        # @type Name: String
        # @param Description: 产品描述
        # @type Description: String
        # @param Domain: 连接域名
        # @type Domain: String
        # @param AuthType: 鉴权类型（0：直连，1：Token）
        # @type AuthType: Integer
        # @param DataProtocol: 数据协议（native/template）
        # @type DataProtocol: String
        # @param Deleted: 删除（0未删除）
        # @type Deleted: Integer
        # @param Message: 备注
        # @type Message: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param CommProtocol: 通信方式
        # @type CommProtocol: String
        # @param Region: 地域
        # @type Region: String
        # @param DeviceType: 设备类型
        # @type DeviceType: String

        attr_accessor :ProductId, :ProductKey, :AppId, :Name, :Description, :Domain, :AuthType, :DataProtocol, :Deleted, :Message, :CreateTime, :CommProtocol, :Region, :DeviceType

        def initialize(productid=nil, productkey=nil, appid=nil, name=nil, description=nil, domain=nil, authtype=nil, dataprotocol=nil, deleted=nil, message=nil, createtime=nil, commprotocol=nil, region=nil, devicetype=nil)
          @ProductId = productid
          @ProductKey = productkey
          @AppId = appid
          @Name = name
          @Description = description
          @Domain = domain
          @AuthType = authtype
          @DataProtocol = dataprotocol
          @Deleted = deleted
          @Message = message
          @CreateTime = createtime
          @CommProtocol = commprotocol
          @Region = region
          @DeviceType = devicetype
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductKey = params['ProductKey']
          @AppId = params['AppId']
          @Name = params['Name']
          @Description = params['Description']
          @Domain = params['Domain']
          @AuthType = params['AuthType']
          @DataProtocol = params['DataProtocol']
          @Deleted = params['Deleted']
          @Message = params['Message']
          @CreateTime = params['CreateTime']
          @CommProtocol = params['CommProtocol']
          @Region = params['Region']
          @DeviceType = params['DeviceType']
        end
      end

      # PublishMsg请求参数结构体
      class PublishMsgRequest < TencentCloud::Common::AbstractModel
        # @param Topic: Topic
        # @type Topic: String
        # @param Message: 消息内容
        # @type Message: String
        # @param Qos: Qos(目前QoS支持0与1)
        # @type Qos: Integer

        attr_accessor :Topic, :Message, :Qos

        def initialize(topic=nil, message=nil, qos=nil)
          @Topic = topic
          @Message = message
          @Qos = qos
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Message = params['Message']
          @Qos = params['Qos']
        end
      end

      # PublishMsg返回参数结构体
      class PublishMsgResponse < TencentCloud::Common::AbstractModel
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

      # ResetDevice请求参数结构体
      class ResetDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
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

      # ResetDevice返回参数结构体
      class ResetDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备信息
        # @type Device: :class:`Tencentcloud::Iot.v20180123.models.Device`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId

        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 规则
      class Rule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String
        # @param AppId: AppId
        # @type AppId: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param Query: 查询
        # @type Query: :class:`Tencentcloud::Iot.v20180123.models.RuleQuery`
        # @param Actions: 转发
        # @type Actions: Array
        # @param Active: 已启动
        # @type Active: Integer
        # @param Deleted: 已删除
        # @type Deleted: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param MsgOrder: 消息顺序
        # @type MsgOrder: Integer
        # @param DataType: 数据类型（0：文本，1：二进制）
        # @type DataType: Integer

        attr_accessor :RuleId, :AppId, :Name, :Description, :Query, :Actions, :Active, :Deleted, :CreateTime, :UpdateTime, :MsgOrder, :DataType

        def initialize(ruleid=nil, appid=nil, name=nil, description=nil, query=nil, actions=nil, active=nil, deleted=nil, createtime=nil, updatetime=nil, msgorder=nil, datatype=nil)
          @RuleId = ruleid
          @AppId = appid
          @Name = name
          @Description = description
          @Query = query
          @Actions = actions
          @Active = active
          @Deleted = deleted
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MsgOrder = msgorder
          @DataType = datatype
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AppId = params['AppId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Query'].nil?
            @Query = RuleQuery.new
            @Query.deserialize(params['Query'])
          end
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @Actions << action_tmp
            end
          end
          @Active = params['Active']
          @Deleted = params['Deleted']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @MsgOrder = params['MsgOrder']
          @DataType = params['DataType']
        end
      end

      # 查询
      class RuleQuery < TencentCloud::Common::AbstractModel
        # @param Field: 字段
        # @type Field: String
        # @param Condition: 过滤规则
        # @type Condition: String
        # @param Topic: Topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param ProductId: 产品Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String

        attr_accessor :Field, :Condition, :Topic, :ProductId

        def initialize(field=nil, condition=nil, topic=nil, productid=nil)
          @Field = field
          @Condition = condition
          @Topic = topic
          @ProductId = productid
        end

        def deserialize(params)
          @Field = params['Field']
          @Condition = params['Condition']
          @Topic = params['Topic']
          @ProductId = params['ProductId']
        end
      end

      # 转发到第三方http(s)服务
      class ServiceAction < TencentCloud::Common::AbstractModel
        # @param Url: 服务url地址
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 数字类型数据
      class StringData < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Mode: 读写模式
        # @type Mode: String
        # @param Range: 长度范围
        # @type Range: Array

        attr_accessor :Name, :Desc, :Mode, :Range

        def initialize(name=nil, desc=nil, mode=nil, range=nil)
          @Name = name
          @Desc = desc
          @Mode = mode
          @Range = range
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Mode = params['Mode']
          @Range = params['Range']
        end
      end

      # Topic
      class Topic < TencentCloud::Common::AbstractModel
        # @param TopicId: TopicId
        # @type TopicId: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param MsgLife: 消息最大生命周期
        # @type MsgLife: Integer
        # @param MsgSize: 消息最大大小
        # @type MsgSize: Integer
        # @param MsgCount: 消息最大数量
        # @type MsgCount: Integer
        # @param Deleted: 已删除
        # @type Deleted: Integer
        # @param Path: Topic完整路径
        # @type Path: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :TopicId, :TopicName, :ProductId, :MsgLife, :MsgSize, :MsgCount, :Deleted, :Path, :CreateTime, :UpdateTime

        def initialize(topicid=nil, topicname=nil, productid=nil, msglife=nil, msgsize=nil, msgcount=nil, deleted=nil, path=nil, createtime=nil, updatetime=nil)
          @TopicId = topicid
          @TopicName = topicname
          @ProductId = productid
          @MsgLife = msglife
          @MsgSize = msgsize
          @MsgCount = msgcount
          @Deleted = deleted
          @Path = path
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @ProductId = params['ProductId']
          @MsgLife = params['MsgLife']
          @MsgSize = params['MsgSize']
          @MsgCount = params['MsgCount']
          @Deleted = params['Deleted']
          @Path = params['Path']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 转发到topic动作
      class TopicAction < TencentCloud::Common::AbstractModel
        # @param Topic: 目标topic
        # @type Topic: String

        attr_accessor :Topic

        def initialize(topic=nil)
          @Topic = topic
        end

        def deserialize(params)
          @Topic = params['Topic']
        end
      end

      # UnassociateSubDeviceFromGatewayProduct请求参数结构体
      class UnassociateSubDeviceFromGatewayProductRequest < TencentCloud::Common::AbstractModel
        # @param SubDeviceProductId: 子设备产品Id
        # @type SubDeviceProductId: String
        # @param GatewayProductId: 网关设备产品Id
        # @type GatewayProductId: String

        attr_accessor :SubDeviceProductId, :GatewayProductId

        def initialize(subdeviceproductid=nil, gatewayproductid=nil)
          @SubDeviceProductId = subdeviceproductid
          @GatewayProductId = gatewayproductid
        end

        def deserialize(params)
          @SubDeviceProductId = params['SubDeviceProductId']
          @GatewayProductId = params['GatewayProductId']
        end
      end

      # UnassociateSubDeviceFromGatewayProduct返回参数结构体
      class UnassociateSubDeviceFromGatewayProductResponse < TencentCloud::Common::AbstractModel
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

      # UpdateProduct请求参数结构体
      class UpdateProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param Name: 产品名称
        # @type Name: String
        # @param Description: 产品描述
        # @type Description: String
        # @param DataTemplate: 数据模版
        # @type DataTemplate: Array

        attr_accessor :ProductId, :Name, :Description, :DataTemplate

        def initialize(productid=nil, name=nil, description=nil, datatemplate=nil)
          @ProductId = productid
          @Name = name
          @Description = description
          @DataTemplate = datatemplate
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['DataTemplate'].nil?
            @DataTemplate = []
            params['DataTemplate'].each do |i|
              datatemplate_tmp = DataTemplate.new
              datatemplate_tmp.deserialize(i)
              @DataTemplate << datatemplate_tmp
            end
          end
        end
      end

      # UpdateProduct返回参数结构体
      class UpdateProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 更新后的产品信息
        # @type Product: :class:`Tencentcloud::Iot.v20180123.models.Product`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId

        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = Product.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateRule请求参数结构体
      class UpdateRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param Query: 查询
        # @type Query: :class:`Tencentcloud::Iot.v20180123.models.RuleQuery`
        # @param Actions: 转发动作列表
        # @type Actions: Array
        # @param DataType: 数据类型（0：文本，1：二进制）
        # @type DataType: Integer

        attr_accessor :RuleId, :Name, :Description, :Query, :Actions, :DataType

        def initialize(ruleid=nil, name=nil, description=nil, query=nil, actions=nil, datatype=nil)
          @RuleId = ruleid
          @Name = name
          @Description = description
          @Query = query
          @Actions = actions
          @DataType = datatype
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Query'].nil?
            @Query = RuleQuery.new
            @Query.deserialize(params['Query'])
          end
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @Actions << action_tmp
            end
          end
          @DataType = params['DataType']
        end
      end

      # UpdateRule返回参数结构体
      class UpdateRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Iot.v20180123.models.Rule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = Rule.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

