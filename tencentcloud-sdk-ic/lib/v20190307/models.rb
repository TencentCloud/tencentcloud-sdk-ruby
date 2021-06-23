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
  module Ic
    module V20190307
      # 物联网卡应用信息详情
      class AppInfo < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: String
        # @param Appkey: 应用key
        # @type Appkey: String
        # @param CloudAppid: 用户appid
        # @type CloudAppid: String
        # @param Name: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 应用描述
        # @type Description: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param BizType: 应用类型
        # @type BizType: Integer
        # @param Uin: 用户Uin
        # @type Uin: String

        attr_accessor :Sdkappid, :Appkey, :CloudAppid, :Name, :Description, :CreatedTime, :BizType, :Uin
        
        def initialize(sdkappid=nil, appkey=nil, cloudappid=nil, name=nil, description=nil, createdtime=nil, biztype=nil, uin=nil)
          @Sdkappid = sdkappid
          @Appkey = appkey
          @CloudAppid = cloudappid
          @Name = name
          @Description = description
          @CreatedTime = createdtime
          @BizType = biztype
          @Uin = uin
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Appkey = params['Appkey']
          @CloudAppid = params['CloudAppid']
          @Name = params['Name']
          @Description = params['Description']
          @CreatedTime = params['CreatedTime']
          @BizType = params['BizType']
          @Uin = params['Uin']
        end
      end

      # 卡片详细信息
      class CardInfo < TencentCloud::Common::AbstractModel
        # @param Iccid: 卡片ID
        # @type Iccid: String
        # @param Msisdn: 卡电话号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msisdn: String
        # @param Imsi: 卡imsi
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Imsi: String
        # @param Imei: 卡imei
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Imei: String
        # @param Sdkappid: 应用ID
        # @type Sdkappid: String
        # @param Teleoperator: 运营商编号
        # @type Teleoperator: Integer
        # @param CardStatus: 卡片状态 1:未激活 2：激活 3：停卡 5：销卡
        # @type CardStatus: Integer
        # @param NetworkStatus: 网络状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkStatus: Integer
        # @param ActivitedTime: 激活时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivitedTime: String
        # @param Type: 资费类型，1 单卡，2 流量池
        # @type Type: Integer
        # @param ProductId: 套餐类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param PoolId: 流量池ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoolId: String
        # @param DataUsedInPeriod: 周期套餐流量使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUsedInPeriod: Float
        # @param DataTotalInPeriod: 周期套餐总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTotalInPeriod: Float
        # @param ProductExpiredTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductExpiredTime: String
        # @param Description: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param ModifiedTime: 修改时间
        # @type ModifiedTime: String
        # @param PreorderCnt: 套餐周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreorderCnt: Integer
        # @param IsActivated: 激活被回调标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsActivated: Integer
        # @param OrderId: 订单ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param AutoRenew: 是否自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenew: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param AllowArrears: 0 不需要开通达量不停卡 1 需要开通达量不停卡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowArrears: Integer
        # @param NeedSms: 是否开通短信0:未开短信 1:开通短信
        # @type NeedSms: Integer
        # @param Provider: 供应商
        # @type Provider: Integer
        # @param CertificationState: 实名认证 0:无 1:未实名 2:已实名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificationState: Integer

        attr_accessor :Iccid, :Msisdn, :Imsi, :Imei, :Sdkappid, :Teleoperator, :CardStatus, :NetworkStatus, :ActivitedTime, :Type, :ProductId, :PoolId, :DataUsedInPeriod, :DataTotalInPeriod, :ProductExpiredTime, :Description, :CreatedTime, :ModifiedTime, :PreorderCnt, :IsActivated, :OrderId, :AutoRenew, :Remark, :AllowArrears, :NeedSms, :Provider, :CertificationState
        
        def initialize(iccid=nil, msisdn=nil, imsi=nil, imei=nil, sdkappid=nil, teleoperator=nil, cardstatus=nil, networkstatus=nil, activitedtime=nil, type=nil, productid=nil, poolid=nil, datausedinperiod=nil, datatotalinperiod=nil, productexpiredtime=nil, description=nil, createdtime=nil, modifiedtime=nil, preordercnt=nil, isactivated=nil, orderid=nil, autorenew=nil, remark=nil, allowarrears=nil, needsms=nil, provider=nil, certificationstate=nil)
          @Iccid = iccid
          @Msisdn = msisdn
          @Imsi = imsi
          @Imei = imei
          @Sdkappid = sdkappid
          @Teleoperator = teleoperator
          @CardStatus = cardstatus
          @NetworkStatus = networkstatus
          @ActivitedTime = activitedtime
          @Type = type
          @ProductId = productid
          @PoolId = poolid
          @DataUsedInPeriod = datausedinperiod
          @DataTotalInPeriod = datatotalinperiod
          @ProductExpiredTime = productexpiredtime
          @Description = description
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @PreorderCnt = preordercnt
          @IsActivated = isactivated
          @OrderId = orderid
          @AutoRenew = autorenew
          @Remark = remark
          @AllowArrears = allowarrears
          @NeedSms = needsms
          @Provider = provider
          @CertificationState = certificationstate
        end

        def deserialize(params)
          @Iccid = params['Iccid']
          @Msisdn = params['Msisdn']
          @Imsi = params['Imsi']
          @Imei = params['Imei']
          @Sdkappid = params['Sdkappid']
          @Teleoperator = params['Teleoperator']
          @CardStatus = params['CardStatus']
          @NetworkStatus = params['NetworkStatus']
          @ActivitedTime = params['ActivitedTime']
          @Type = params['Type']
          @ProductId = params['ProductId']
          @PoolId = params['PoolId']
          @DataUsedInPeriod = params['DataUsedInPeriod']
          @DataTotalInPeriod = params['DataTotalInPeriod']
          @ProductExpiredTime = params['ProductExpiredTime']
          @Description = params['Description']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @PreorderCnt = params['PreorderCnt']
          @IsActivated = params['IsActivated']
          @OrderId = params['OrderId']
          @AutoRenew = params['AutoRenew']
          @Remark = params['Remark']
          @AllowArrears = params['AllowArrears']
          @NeedSms = params['NeedSms']
          @Provider = params['Provider']
          @CertificationState = params['CertificationState']
        end
      end

      # 卡片列表数据
      class CardList < TencentCloud::Common::AbstractModel
        # @param Total: 卡片总数
        # @type Total: String
        # @param List: 卡片列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List
        
        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cardinfo_tmp = CardInfo.new
              cardinfo_tmp.deserialize(i)
              @List << cardinfo_tmp
            end
          end
        end
      end

      # DescribeApp请求参数结构体
      class DescribeAppRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 物联卡应用ID
        # @type Sdkappid: Integer

        attr_accessor :Sdkappid
        
        def initialize(sdkappid=nil)
          @Sdkappid = sdkappid
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
        end
      end

      # DescribeApp返回参数结构体
      class DescribeAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: 应用信息详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ic.v20190307.models.AppInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AppInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCard请求参数结构体
      class DescribeCardRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: Integer
        # @param Iccid: 卡片ID
        # @type Iccid: String

        attr_accessor :Sdkappid, :Iccid
        
        def initialize(sdkappid=nil, iccid=nil)
          @Sdkappid = sdkappid
          @Iccid = iccid
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Iccid = params['Iccid']
        end
      end

      # DescribeCard返回参数结构体
      class DescribeCardResponse < TencentCloud::Common::AbstractModel
        # @param Data: 卡片详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ic.v20190307.models.CardInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CardInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCards请求参数结构体
      class DescribeCardsRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: String
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 列表限制
        # @type Limit: Integer

        attr_accessor :Sdkappid, :Offset, :Limit
        
        def initialize(sdkappid=nil, offset=nil, limit=nil)
          @Sdkappid = sdkappid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCards返回参数结构体
      class DescribeCardsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 卡片列表信息
        # @type Data: :class:`Tencentcloud::Ic.v20190307.models.CardList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CardList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserCardRemark请求参数结构体
      class ModifyUserCardRemarkRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: Integer
        # @param Iccid: 物联卡ICCID
        # @type Iccid: String
        # @param Remark: 备注信息，限50字
        # @type Remark: String

        attr_accessor :Sdkappid, :Iccid, :Remark
        
        def initialize(sdkappid=nil, iccid=nil, remark=nil)
          @Sdkappid = sdkappid
          @Iccid = iccid
          @Remark = remark
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Iccid = params['Iccid']
          @Remark = params['Remark']
        end
      end

      # ModifyUserCardRemark返回参数结构体
      class ModifyUserCardRemarkResponse < TencentCloud::Common::AbstractModel
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

      # RenewCards请求参数结构体
      class RenewCardsRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: Integer
        # @param Iccids: 续费的iccid
        # @type Iccids: Array
        # @param RenewNum: 续费的周期（单位：月）
        # @type RenewNum: Integer

        attr_accessor :Sdkappid, :Iccids, :RenewNum
        
        def initialize(sdkappid=nil, iccids=nil, renewnum=nil)
          @Sdkappid = sdkappid
          @Iccids = iccids
          @RenewNum = renewnum
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Iccids = params['Iccids']
          @RenewNum = params['RenewNum']
        end
      end

      # RenewCards返回参数结构体
      class RenewCardsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 续费成功的订单id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ic.v20190307.models.ResRenew`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ResRenew.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云api 卡片续费
      class ResRenew < TencentCloud::Common::AbstractModel
        # @param OrderIds: 每一张续费卡片的订单ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderIds: Array

        attr_accessor :OrderIds
        
        def initialize(orderids=nil)
          @OrderIds = orderids
        end

        def deserialize(params)
          @OrderIds = params['OrderIds']
        end
      end

      # SendMultiSms请求参数结构体
      class SendMultiSmsRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: String
        # @param Iccids: 卡片列表
        # @type Iccids: Array
        # @param Content: 短信内容 长度限制 70
        # @type Content: String

        attr_accessor :Sdkappid, :Iccids, :Content
        
        def initialize(sdkappid=nil, iccids=nil, content=nil)
          @Sdkappid = sdkappid
          @Iccids = iccids
          @Content = content
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Iccids = params['Iccids']
          @Content = params['Content']
        end
      end

      # SendMultiSms返回参数结构体
      class SendMultiSmsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 短信流水数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              smsret_tmp = SmsRet.new
              smsret_tmp.deserialize(i)
              @Data << smsret_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SendSms请求参数结构体
      class SendSmsRequest < TencentCloud::Common::AbstractModel
        # @param Sdkappid: 应用ID
        # @type Sdkappid: Integer
        # @param Iccid: 卡片ID
        # @type Iccid: String
        # @param Content: 短信内容长度70限制
        # @type Content: String

        attr_accessor :Sdkappid, :Iccid, :Content
        
        def initialize(sdkappid=nil, iccid=nil, content=nil)
          @Sdkappid = sdkappid
          @Iccid = iccid
          @Content = content
        end

        def deserialize(params)
          @Sdkappid = params['Sdkappid']
          @Iccid = params['Iccid']
          @Content = params['Content']
        end
      end

      # SendSms返回参数结构体
      class SendSmsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 短信流水信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ic.v20190307.models.SmsSid`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsSid.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 短信流水信息
      class SmsRet < TencentCloud::Common::AbstractModel
        # @param Code: 该iccid请求状态
        # @type Code: String
        # @param Msg: 短信发送返回信息
        # @type Msg: String
        # @param Iccid: 卡片ID
        # @type Iccid: String
        # @param Sid: 流水ID
        # @type Sid: String

        attr_accessor :Code, :Msg, :Iccid, :Sid
        
        def initialize(code=nil, msg=nil, iccid=nil, sid=nil)
          @Code = code
          @Msg = msg
          @Iccid = iccid
          @Sid = sid
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Iccid = params['Iccid']
          @Sid = params['Sid']
        end
      end

      # 短信流水信息
      class SmsSid < TencentCloud::Common::AbstractModel
        # @param Iccid: 卡片ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Iccid: String
        # @param Sid: 信息流水ID
        # @type Sid: String

        attr_accessor :Iccid, :Sid
        
        def initialize(iccid=nil, sid=nil)
          @Iccid = iccid
          @Sid = sid
        end

        def deserialize(params)
          @Iccid = params['Iccid']
          @Sid = params['Sid']
        end
      end

    end
  end
end

