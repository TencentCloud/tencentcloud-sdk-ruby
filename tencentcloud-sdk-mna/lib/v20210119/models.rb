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
  module Mna
    module V20210119
      # 接口能力扩展，用于填充电信的加速Token，并为未来参数提供兼容空间
      class Capacity < TencentCloud::Common::AbstractModel
        # @param CTCCToken: 电信鉴权的Token。要加速的电信手机终端访问 http://qos.189.cn/qos-api/getToken?appid=TencentCloud 页面，获取返回结果中result的值
        # @type CTCCToken: String
        # @param Province: 终端所处在的省份，建议不填写由服务端自动获取，若需填写请填写带有省、市、自治区、特别行政区等后缀的省份中文全称
        # @type Province: String

        attr_accessor :CTCCToken, :Province
        
        def initialize(ctcctoken=nil, province=nil)
          @CTCCToken = ctcctoken
          @Province = province
        end

        def deserialize(params)
          @CTCCToken = params['CTCCToken']
          @Province = params['Province']
        end
      end

      # CreateQos请求参数结构体
      class CreateQosRequest < TencentCloud::Common::AbstractModel
        # @param SrcAddressInfo: 加速业务源地址信息，SrcIpv6和（SrcIpv4+SrcPublicIpv4）二选一，目前Ipv6不可用，全部填写以Ipv4参数为准。
        # @type SrcAddressInfo: :class:`Tencentcloud::Mna.v20210119.models.SrcAddressInfo`
        # @param DestAddressInfo: 加速业务目标地址信息
        # @type DestAddressInfo: :class:`Tencentcloud::Mna.v20210119.models.DestAddressInfo`
        # @param QosMenu: 加速套餐
        # T100K：上/下行保障 100kbps
        # T200K：上/下行保障 200kbps
        # T400K：上/下行保障 400kbps
        # BD1M：下行带宽保障1Mbps
        # BD2M：下行带宽保障2Mbps
        # BD4M：下行带宽保障4Mbps
        # BU1M：上行带宽保障1Mbps
        # BU2M：上行带宽保障2Mbps
        # BU4M：上行带宽保障4Mbps
        # @type QosMenu: String
        # @param DeviceInfo: 申请加速的设备信息，包括运营商，操作系统，设备唯一标识等。
        # @type DeviceInfo: :class:`Tencentcloud::Mna.v20210119.models.DeviceInfo`
        # @param Duration: 期望加速时长（单位分钟），默认值30分钟
        # @type Duration: Integer
        # @param Capacity: 接口能力扩展，如果是电信用户，必须填充CTCC Token字段
        # @type Capacity: :class:`Tencentcloud::Mna.v20210119.models.Capacity`
        # @param TemplateId: 应用模板ID
        # @type TemplateId: String

        attr_accessor :SrcAddressInfo, :DestAddressInfo, :QosMenu, :DeviceInfo, :Duration, :Capacity, :TemplateId
        
        def initialize(srcaddressinfo=nil, destaddressinfo=nil, qosmenu=nil, deviceinfo=nil, duration=nil, capacity=nil, templateid=nil)
          @SrcAddressInfo = srcaddressinfo
          @DestAddressInfo = destaddressinfo
          @QosMenu = qosmenu
          @DeviceInfo = deviceinfo
          @Duration = duration
          @Capacity = capacity
          @TemplateId = templateid
        end

        def deserialize(params)
          unless params['SrcAddressInfo'].nil?
            @SrcAddressInfo = SrcAddressInfo.new
            @SrcAddressInfo.deserialize(params['SrcAddressInfo'])
          end
          unless params['DestAddressInfo'].nil?
            @DestAddressInfo = DestAddressInfo.new
            @DestAddressInfo.deserialize(params['DestAddressInfo'])
          end
          @QosMenu = params['QosMenu']
          unless params['DeviceInfo'].nil?
            @DeviceInfo = DeviceInfo.new
            @DeviceInfo.deserialize(params['DeviceInfo'])
          end
          @Duration = params['Duration']
          unless params['Capacity'].nil?
            @Capacity = Capacity.new
            @Capacity.deserialize(params['Capacity'])
          end
          @TemplateId = params['TemplateId']
        end
      end

      # CreateQos返回参数结构体
      class CreateQosResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 单次加速唯一 Id
        # @type SessionId: String
        # @param Duration: 当前加速剩余时长（单位秒）
        # @type Duration: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :Duration, :RequestId
        
        def initialize(sessionid=nil, duration=nil, requestid=nil)
          @SessionId = sessionid
          @Duration = duration
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Duration = params['Duration']
          @RequestId = params['RequestId']
        end
      end

      # DeleteQos请求参数结构体
      class DeleteQosRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 单次加速唯一 Id
        # @type SessionId: String

        attr_accessor :SessionId
        
        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # DeleteQos返回参数结构体
      class DeleteQosResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 单次加速唯一 Id
        # @type SessionId: String
        # @param Duration: 本次加速会话持续时间（单位秒）
        # @type Duration: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :Duration, :RequestId
        
        def initialize(sessionid=nil, duration=nil, requestid=nil)
          @SessionId = sessionid
          @Duration = duration
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Duration = params['Duration']
          @RequestId = params['RequestId']
        end
      end

      # 移动网络加速目标地址结构体
      class DestAddressInfo < TencentCloud::Common::AbstractModel
        # @param DestIp: 加速业务目标 ip 地址数组
        # @type DestIp: Array

        attr_accessor :DestIp
        
        def initialize(destip=nil)
          @DestIp = destip
        end

        def deserialize(params)
          @DestIp = params['DestIp']
        end
      end

      # 设备信息结构体
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param Vendor: 运营商
        # 1：移动
        # 2：电信
        # 3：联通
        # 4：广电
        # 99：其他
        # @type Vendor: Integer
        # @param OS: 设备操作系统：
        # 1：Android
        # 2： IOS
        # 99：其他
        # @type OS: Integer
        # @param DeviceId: 设备唯一标识
        # IOS 填写 IDFV
        # Android 填写 IMEI
        # @type DeviceId: String
        # @param PhoneNum: 用户手机号码
        # @type PhoneNum: String
        # @param Wireless: 无线信息
        # 1：4G
        # 2：5G
        # 3：WIFI
        # 99：其他
        # @type Wireless: Integer

        attr_accessor :Vendor, :OS, :DeviceId, :PhoneNum, :Wireless
        
        def initialize(vendor=nil, os=nil, deviceid=nil, phonenum=nil, wireless=nil)
          @Vendor = vendor
          @OS = os
          @DeviceId = deviceid
          @PhoneNum = phonenum
          @Wireless = wireless
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @OS = params['OS']
          @DeviceId = params['DeviceId']
          @PhoneNum = params['PhoneNum']
          @Wireless = params['Wireless']
        end
      end

      # 移动网络加速源地址结构体
      class SrcAddressInfo < TencentCloud::Common::AbstractModel
        # @param SrcIpv4: 用户私网 ipv4 地址
        # @type SrcIpv4: String
        # @param SrcPublicIpv4: 用户公网 ipv4 地址
        # @type SrcPublicIpv4: String
        # @param SrcIpv6: 用户 ipv6 地址
        # @type SrcIpv6: String

        attr_accessor :SrcIpv4, :SrcPublicIpv4, :SrcIpv6
        
        def initialize(srcipv4=nil, srcpublicipv4=nil, srcipv6=nil)
          @SrcIpv4 = srcipv4
          @SrcPublicIpv4 = srcpublicipv4
          @SrcIpv6 = srcipv6
        end

        def deserialize(params)
          @SrcIpv4 = params['SrcIpv4']
          @SrcPublicIpv4 = params['SrcPublicIpv4']
          @SrcIpv6 = params['SrcIpv6']
        end
      end

    end
  end
end

