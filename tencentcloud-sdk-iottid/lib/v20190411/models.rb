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
  module Iottid
    module V20190411
      # AuthTestTid请求参数结构体
      class AuthTestTidRequest < TencentCloud::Common::AbstractModel
        # @param Data: 设备端SDK填入测试TID参数后生成的加密数据串
        # @type Data: String

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # AuthTestTid返回参数结构体
      class AuthTestTidResponse < TencentCloud::Common::AbstractModel
        # @param Pass: 认证结果
        # @type Pass: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Pass, :RequestId

        def initialize(pass=nil, requestid=nil)
          @Pass = pass
          @RequestId = requestid
        end

        def deserialize(params)
          @Pass = params['Pass']
          @RequestId = params['RequestId']
        end
      end

      # BurnTidNotify请求参数结构体
      class BurnTidNotifyRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单编号
        # @type OrderId: String
        # @param Tid: TID编号
        # @type Tid: String

        attr_accessor :OrderId, :Tid

        def initialize(orderid=nil, tid=nil)
          @OrderId = orderid
          @Tid = tid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Tid = params['Tid']
        end
      end

      # BurnTidNotify返回参数结构体
      class BurnTidNotifyResponse < TencentCloud::Common::AbstractModel
        # @param Tid: 接收回执成功的TID
        # @type Tid: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tid, :RequestId

        def initialize(tid=nil, requestid=nil)
          @Tid = tid
          @RequestId = requestid
        end

        def deserialize(params)
          @Tid = params['Tid']
          @RequestId = params['RequestId']
        end
      end

      # DeliverTidNotify请求参数结构体
      class DeliverTidNotifyRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单编号
        # @type OrderId: String
        # @param Tid: TID编号
        # @type Tid: String

        attr_accessor :OrderId, :Tid

        def initialize(orderid=nil, tid=nil)
          @OrderId = orderid
          @Tid = tid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Tid = params['Tid']
        end
      end

      # DeliverTidNotify返回参数结构体
      class DeliverTidNotifyResponse < TencentCloud::Common::AbstractModel
        # @param RemaindCount: 剩余空发数量
        # @type RemaindCount: Integer
        # @param Tid: 已回执的TID编码
        # @type Tid: String
        # @param ProductKey: 产品公钥
        # @type ProductKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RemaindCount, :Tid, :ProductKey, :RequestId

        def initialize(remaindcount=nil, tid=nil, productkey=nil, requestid=nil)
          @RemaindCount = remaindcount
          @Tid = tid
          @ProductKey = productkey
          @RequestId = requestid
        end

        def deserialize(params)
          @RemaindCount = params['RemaindCount']
          @Tid = params['Tid']
          @ProductKey = params['ProductKey']
          @RequestId = params['RequestId']
        end
      end

      # DeliverTids请求参数结构体
      class DeliverTidsRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单ID
        # @type OrderId: String
        # @param Quantity: 数量，1~100
        # @type Quantity: Integer

        attr_accessor :OrderId, :Quantity

        def initialize(orderid=nil, quantity=nil)
          @OrderId = orderid
          @Quantity = quantity
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Quantity = params['Quantity']
        end
      end

      # DeliverTids返回参数结构体
      class DeliverTidsResponse < TencentCloud::Common::AbstractModel
        # @param TidSet: 空发的TID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TidSet: Array
        # @param ProductKey: 产品公钥
        # @type ProductKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TidSet, :ProductKey, :RequestId

        def initialize(tidset=nil, productkey=nil, requestid=nil)
          @TidSet = tidset
          @ProductKey = productkey
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TidSet'].nil?
            @TidSet = []
            params['TidSet'].each do |i|
              tidkeysinfo_tmp = TidKeysInfo.new
              tidkeysinfo_tmp.deserialize(i)
              @TidSet << tidkeysinfo_tmp
            end
          end
          @ProductKey = params['ProductKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailableLibCount请求参数结构体
      class DescribeAvailableLibCountRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单编号
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DescribeAvailableLibCount返回参数结构体
      class DescribeAvailableLibCountResponse < TencentCloud::Common::AbstractModel
        # @param Quantity: 可空发的白盒密钥数量
        # @type Quantity: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Quantity, :RequestId

        def initialize(quantity=nil, requestid=nil)
          @Quantity = quantity
          @RequestId = requestid
        end

        def deserialize(params)
          @Quantity = params['Quantity']
          @RequestId = params['RequestId']
        end
      end

      # DescribePermission请求参数结构体
      class DescribePermissionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePermission返回参数结构体
      class DescribePermissionResponse < TencentCloud::Common::AbstractModel
        # @param EnterpriseUser: 企业用户
        # @type EnterpriseUser: Boolean
        # @param DownloadPermission: 下载控制台权限
        # @type DownloadPermission: String
        # @param UsePermission: 使用控制台权限
        # @type UsePermission: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnterpriseUser, :DownloadPermission, :UsePermission, :RequestId

        def initialize(enterpriseuser=nil, downloadpermission=nil, usepermission=nil, requestid=nil)
          @EnterpriseUser = enterpriseuser
          @DownloadPermission = downloadpermission
          @UsePermission = usepermission
          @RequestId = requestid
        end

        def deserialize(params)
          @EnterpriseUser = params['EnterpriseUser']
          @DownloadPermission = params['DownloadPermission']
          @UsePermission = params['UsePermission']
          @RequestId = params['RequestId']
        end
      end

      # DownloadTids请求参数结构体
      class DownloadTidsRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单编号
        # @type OrderId: String
        # @param Quantity: 下载数量：1~10
        # @type Quantity: Integer

        attr_accessor :OrderId, :Quantity

        def initialize(orderid=nil, quantity=nil)
          @OrderId = orderid
          @Quantity = quantity
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Quantity = params['Quantity']
        end
      end

      # DownloadTids返回参数结构体
      class DownloadTidsResponse < TencentCloud::Common::AbstractModel
        # @param TidSet: 下载的TID信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TidSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TidSet, :RequestId

        def initialize(tidset=nil, requestid=nil)
          @TidSet = tidset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TidSet'].nil?
            @TidSet = []
            params['TidSet'].each do |i|
              tidkeysinfo_tmp = TidKeysInfo.new
              tidkeysinfo_tmp.deserialize(i)
              @TidSet << tidkeysinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 系统生成的TID和密钥信息
      class TidKeysInfo < TencentCloud::Common::AbstractModel
        # @param Tid: TID号码
        # @type Tid: String
        # @param PublicKey: 公钥
        # @type PublicKey: String
        # @param PrivateKey: 私钥
        # @type PrivateKey: String
        # @param Psk: 共享密钥
        # @type Psk: String
        # @param DownloadUrl: 软加固白盒密钥下载地址
        # @type DownloadUrl: String
        # @param DeviceCode: 软加固设备标识码
        # @type DeviceCode: String

        attr_accessor :Tid, :PublicKey, :PrivateKey, :Psk, :DownloadUrl, :DeviceCode

        def initialize(tid=nil, publickey=nil, privatekey=nil, psk=nil, downloadurl=nil, devicecode=nil)
          @Tid = tid
          @PublicKey = publickey
          @PrivateKey = privatekey
          @Psk = psk
          @DownloadUrl = downloadurl
          @DeviceCode = devicecode
        end

        def deserialize(params)
          @Tid = params['Tid']
          @PublicKey = params['PublicKey']
          @PrivateKey = params['PrivateKey']
          @Psk = params['Psk']
          @DownloadUrl = params['DownloadUrl']
          @DeviceCode = params['DeviceCode']
        end
      end

      # UploadDeviceUniqueCode请求参数结构体
      class UploadDeviceUniqueCodeRequest < TencentCloud::Common::AbstractModel
        # @param CodeSet: 硬件唯一标识码
        # @type CodeSet: Array
        # @param OrderId: 硬件标识码绑定的申请编号
        # @type OrderId: String

        attr_accessor :CodeSet, :OrderId

        def initialize(codeset=nil, orderid=nil)
          @CodeSet = codeset
          @OrderId = orderid
        end

        def deserialize(params)
          @CodeSet = params['CodeSet']
          @OrderId = params['OrderId']
        end
      end

      # UploadDeviceUniqueCode返回参数结构体
      class UploadDeviceUniqueCodeResponse < TencentCloud::Common::AbstractModel
        # @param Count: 本次已上传数量
        # @type Count: Integer
        # @param ExistedCodeSet: 重复的硬件唯一标识码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExistedCodeSet: Array
        # @param LeftQuantity: 剩余可上传数量
        # @type LeftQuantity: Integer
        # @param IllegalCodeSet: 错误的硬件唯一标识码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IllegalCodeSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :ExistedCodeSet, :LeftQuantity, :IllegalCodeSet, :RequestId

        def initialize(count=nil, existedcodeset=nil, leftquantity=nil, illegalcodeset=nil, requestid=nil)
          @Count = count
          @ExistedCodeSet = existedcodeset
          @LeftQuantity = leftquantity
          @IllegalCodeSet = illegalcodeset
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @ExistedCodeSet = params['ExistedCodeSet']
          @LeftQuantity = params['LeftQuantity']
          @IllegalCodeSet = params['IllegalCodeSet']
          @RequestId = params['RequestId']
        end
      end

      # VerifyChipBurnInfo请求参数结构体
      class VerifyChipBurnInfoRequest < TencentCloud::Common::AbstractModel
        # @param Data: 验证数据
        # @type Data: String

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # VerifyChipBurnInfo返回参数结构体
      class VerifyChipBurnInfoResponse < TencentCloud::Common::AbstractModel
        # @param Pass: 验证结果
        # @type Pass: Boolean
        # @param VerifiedTimes: 已验证次数
        # @type VerifiedTimes: Integer
        # @param LeftTimes: 剩余验证次数
        # @type LeftTimes: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Pass, :VerifiedTimes, :LeftTimes, :RequestId

        def initialize(pass=nil, verifiedtimes=nil, lefttimes=nil, requestid=nil)
          @Pass = pass
          @VerifiedTimes = verifiedtimes
          @LeftTimes = lefttimes
          @RequestId = requestid
        end

        def deserialize(params)
          @Pass = params['Pass']
          @VerifiedTimes = params['VerifiedTimes']
          @LeftTimes = params['LeftTimes']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

