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
  module Captcha
    module V20190722
      # DescribeCaptchaOperData方法 拦截情况type = 2 返回的数据结构
      class CaptchaOperDataInterceptUnit < TencentCloud::Common::AbstractModel
        # @param DateKey: 时间
        # @type DateKey: String
        # @param AllStopCnt: 停止验证数量
        # @type AllStopCnt: Float
        # @param PicStopCnt: 图片停止加载数量
        # @type PicStopCnt: Float
        # @param StrategyStopCnt: 策略拦截数量
        # @type StrategyStopCnt: Float

        attr_accessor :DateKey, :AllStopCnt, :PicStopCnt, :StrategyStopCnt
        
        def initialize(datekey=nil, allstopcnt=nil, picstopcnt=nil, strategystopcnt=nil)
          @DateKey = datekey
          @AllStopCnt = allstopcnt
          @PicStopCnt = picstopcnt
          @StrategyStopCnt = strategystopcnt
        end

        def deserialize(params)
          @DateKey = params['DateKey']
          @AllStopCnt = params['AllStopCnt']
          @PicStopCnt = params['PicStopCnt']
          @StrategyStopCnt = params['StrategyStopCnt']
        end
      end

      # 操作数据查询方法DescribeCaptchaOperData 的返回结果，安全验证码加载耗时type = 1
      class CaptchaOperDataLoadTimeUnit < TencentCloud::Common::AbstractModel
        # @param DateKey: 时间
        # @type DateKey: String
        # @param MarketLoadTime: Market加载时间
        # @type MarketLoadTime: Float
        # @param AppIdLoadTime: AppId加载时间
        # @type AppIdLoadTime: Float

        attr_accessor :DateKey, :MarketLoadTime, :AppIdLoadTime
        
        def initialize(datekey=nil, marketloadtime=nil, appidloadtime=nil)
          @DateKey = datekey
          @MarketLoadTime = marketloadtime
          @AppIdLoadTime = appidloadtime
        end

        def deserialize(params)
          @DateKey = params['DateKey']
          @MarketLoadTime = params['MarketLoadTime']
          @AppIdLoadTime = params['AppIdLoadTime']
        end
      end

      # DescribeCaptchaOperData 接口 返回数据类型集合
      class CaptchaOperDataRes < TencentCloud::Common::AbstractModel
        # @param OperDataLoadTimeUnitArray: 验证码加载耗时数据返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperDataLoadTimeUnitArray: Array
        # @param OperDataInterceptUnitArray: 验证码拦截情况数据返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperDataInterceptUnitArray: Array
        # @param OperDataTryTimesUnitArray: 验证码尝试次数数据返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperDataTryTimesUnitArray: Array
        # @param OperDataTryTimesDistributeUnitArray: 验证码尝试次数分布数据返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperDataTryTimesDistributeUnitArray: Array

        attr_accessor :OperDataLoadTimeUnitArray, :OperDataInterceptUnitArray, :OperDataTryTimesUnitArray, :OperDataTryTimesDistributeUnitArray
        
        def initialize(operdataloadtimeunitarray=nil, operdatainterceptunitarray=nil, operdatatrytimesunitarray=nil, operdatatrytimesdistributeunitarray=nil)
          @OperDataLoadTimeUnitArray = operdataloadtimeunitarray
          @OperDataInterceptUnitArray = operdatainterceptunitarray
          @OperDataTryTimesUnitArray = operdatatrytimesunitarray
          @OperDataTryTimesDistributeUnitArray = operdatatrytimesdistributeunitarray
        end

        def deserialize(params)
          unless params['OperDataLoadTimeUnitArray'].nil?
            @OperDataLoadTimeUnitArray = []
            params['OperDataLoadTimeUnitArray'].each do |i|
              captchaoperdataloadtimeunit_tmp = CaptchaOperDataLoadTimeUnit.new
              captchaoperdataloadtimeunit_tmp.deserialize(i)
              @OperDataLoadTimeUnitArray << captchaoperdataloadtimeunit_tmp
            end
          end
          unless params['OperDataInterceptUnitArray'].nil?
            @OperDataInterceptUnitArray = []
            params['OperDataInterceptUnitArray'].each do |i|
              captchaoperdatainterceptunit_tmp = CaptchaOperDataInterceptUnit.new
              captchaoperdatainterceptunit_tmp.deserialize(i)
              @OperDataInterceptUnitArray << captchaoperdatainterceptunit_tmp
            end
          end
          unless params['OperDataTryTimesUnitArray'].nil?
            @OperDataTryTimesUnitArray = []
            params['OperDataTryTimesUnitArray'].each do |i|
              captchaoperdatatrytimesunit_tmp = CaptchaOperDataTryTimesUnit.new
              captchaoperdatatrytimesunit_tmp.deserialize(i)
              @OperDataTryTimesUnitArray << captchaoperdatatrytimesunit_tmp
            end
          end
          unless params['OperDataTryTimesDistributeUnitArray'].nil?
            @OperDataTryTimesDistributeUnitArray = []
            params['OperDataTryTimesDistributeUnitArray'].each do |i|
              captchaoperdatatrytimesdistributeunit_tmp = CaptchaOperDataTryTimesDistributeUnit.new
              captchaoperdatatrytimesdistributeunit_tmp.deserialize(i)
              @OperDataTryTimesDistributeUnitArray << captchaoperdatatrytimesdistributeunit_tmp
            end
          end
        end
      end

      # DescribeCaptchaOperData方法 尝试次数分布 type = 4
      class CaptchaOperDataTryTimesDistributeUnit < TencentCloud::Common::AbstractModel
        # @param TryCount: 尝试次数
        # @type TryCount: Integer
        # @param UserCount: 用户请求数量
        # @type UserCount: Integer

        attr_accessor :TryCount, :UserCount
        
        def initialize(trycount=nil, usercount=nil)
          @TryCount = trycount
          @UserCount = usercount
        end

        def deserialize(params)
          @TryCount = params['TryCount']
          @UserCount = params['UserCount']
        end
      end

      # DescribeCaptchaOperData操作数据查询尝试次数 type = 3
      class CaptchaOperDataTryTimesUnit < TencentCloud::Common::AbstractModel
        # @param DateKey: 时间
        # @type DateKey: String
        # @param CntPerPass: 平均尝试次数
        # @type CntPerPass: Array
        # @param MarketCntPerPass: market平均尝试次数
        # @type MarketCntPerPass: Float

        attr_accessor :DateKey, :CntPerPass, :MarketCntPerPass
        
        def initialize(datekey=nil, cntperpass=nil, marketcntperpass=nil)
          @DateKey = datekey
          @CntPerPass = cntperpass
          @MarketCntPerPass = marketcntperpass
        end

        def deserialize(params)
          @DateKey = params['DateKey']
          @CntPerPass = params['CntPerPass']
          @MarketCntPerPass = params['MarketCntPerPass']
        end
      end

      # 该类型为DescribeCaptchaData 方法返回数据类型
      class CaptchaQueryData < TencentCloud::Common::AbstractModel
        # @param Cnt: 数量
        # @type Cnt: Integer
        # @param Date: 时间
        # @type Date: String

        attr_accessor :Cnt, :Date
        
        def initialize(cnt=nil, date=nil)
          @Cnt = cnt
          @Date = date
        end

        def deserialize(params)
          @Cnt = params['Cnt']
          @Date = params['Date']
        end
      end

      # DescribeCaptchaTicketData 接口 返回数据类型集合
      class CaptchaTicketDataRes < TencentCloud::Common::AbstractModel
        # @param TicketAmountArray: 票据验证总量返回
        # @type TicketAmountArray: Array
        # @param TicketThroughArray: 票据验证通过量返回
        # @type TicketThroughArray: Array
        # @param TicketInterceptArray: 票据验证拦截量返回
        # @type TicketInterceptArray: Array

        attr_accessor :TicketAmountArray, :TicketThroughArray, :TicketInterceptArray
        
        def initialize(ticketamountarray=nil, ticketthrougharray=nil, ticketinterceptarray=nil)
          @TicketAmountArray = ticketamountarray
          @TicketThroughArray = ticketthrougharray
          @TicketInterceptArray = ticketinterceptarray
        end

        def deserialize(params)
          unless params['TicketAmountArray'].nil?
            @TicketAmountArray = []
            params['TicketAmountArray'].each do |i|
              ticketamountunit_tmp = TicketAmountUnit.new
              ticketamountunit_tmp.deserialize(i)
              @TicketAmountArray << ticketamountunit_tmp
            end
          end
          unless params['TicketThroughArray'].nil?
            @TicketThroughArray = []
            params['TicketThroughArray'].each do |i|
              ticketthroughunit_tmp = TicketThroughUnit.new
              ticketthroughunit_tmp.deserialize(i)
              @TicketThroughArray << ticketthroughunit_tmp
            end
          end
          unless params['TicketInterceptArray'].nil?
            @TicketInterceptArray = []
            params['TicketInterceptArray'].each do |i|
              ticketinterceptunit_tmp = TicketInterceptUnit.new
              ticketinterceptunit_tmp.deserialize(i)
              @TicketInterceptArray << ticketinterceptunit_tmp
            end
          end
        end
      end

      # 用户注册的APPID和应用名称对象
      class CaptchaUserAllAppId < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param AppName: 注册应用名称
        # @type AppName: String
        # @param TcAppId: 腾讯云APPID
        # @type TcAppId: Integer
        # @param ChannelInfo: 渠道信息
        # @type ChannelInfo: String

        attr_accessor :CaptchaAppId, :AppName, :TcAppId, :ChannelInfo
        
        def initialize(captchaappid=nil, appname=nil, tcappid=nil, channelinfo=nil)
          @CaptchaAppId = captchaappid
          @AppName = appname
          @TcAppId = tcappid
          @ChannelInfo = channelinfo
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @AppName = params['AppName']
          @TcAppId = params['TcAppId']
          @ChannelInfo = params['ChannelInfo']
        end
      end

      # DescribeCaptchaAppIdInfo请求参数结构体
      class DescribeCaptchaAppIdInfoRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用注册APPID
        # @type CaptchaAppId: Integer

        attr_accessor :CaptchaAppId
        
        def initialize(captchaappid=nil)
          @CaptchaAppId = captchaappid
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
        end
      end

      # DescribeCaptchaAppIdInfo返回参数结构体
      class DescribeCaptchaAppIdInfoResponse < TencentCloud::Common::AbstractModel
        # @param SchemeColor: 界面风格
        # @type SchemeColor: String
        # @param Language: 语言
        # @type Language: Integer
        # @param SceneType: 场景
        # @type SceneType: Integer
        # @param EvilInterceptGrade: 防控风险等级
        # @type EvilInterceptGrade: Integer
        # @param SmartVerify: 智能验证
        # @type SmartVerify: Integer
        # @param SmartEngine: 智能引擎
        # @type SmartEngine: Integer
        # @param CapType: 验证码类型
        # @type CapType: Integer
        # @param AppName: 应用名称
        # @type AppName: String
        # @param DomainLimit: 域名限制
        # @type DomainLimit: String
        # @param MailAlarm: 邮件告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MailAlarm: Array
        # @param TrafficThreshold: 流量控制
        # @type TrafficThreshold: Integer
        # @param EncryptKey: 加密key
        # @type EncryptKey: String
        # @param TopFullScreen: 是否全屏
        # @type TopFullScreen: Integer
        # @param CaptchaCode: 成功返回0 其它失败
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 返回操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SchemeColor, :Language, :SceneType, :EvilInterceptGrade, :SmartVerify, :SmartEngine, :CapType, :AppName, :DomainLimit, :MailAlarm, :TrafficThreshold, :EncryptKey, :TopFullScreen, :CaptchaCode, :CaptchaMsg, :RequestId
        
        def initialize(schemecolor=nil, language=nil, scenetype=nil, evilinterceptgrade=nil, smartverify=nil, smartengine=nil, captype=nil, appname=nil, domainlimit=nil, mailalarm=nil, trafficthreshold=nil, encryptkey=nil, topfullscreen=nil, captchacode=nil, captchamsg=nil, requestid=nil)
          @SchemeColor = schemecolor
          @Language = language
          @SceneType = scenetype
          @EvilInterceptGrade = evilinterceptgrade
          @SmartVerify = smartverify
          @SmartEngine = smartengine
          @CapType = captype
          @AppName = appname
          @DomainLimit = domainlimit
          @MailAlarm = mailalarm
          @TrafficThreshold = trafficthreshold
          @EncryptKey = encryptkey
          @TopFullScreen = topfullscreen
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @RequestId = requestid
        end

        def deserialize(params)
          @SchemeColor = params['SchemeColor']
          @Language = params['Language']
          @SceneType = params['SceneType']
          @EvilInterceptGrade = params['EvilInterceptGrade']
          @SmartVerify = params['SmartVerify']
          @SmartEngine = params['SmartEngine']
          @CapType = params['CapType']
          @AppName = params['AppName']
          @DomainLimit = params['DomainLimit']
          @MailAlarm = params['MailAlarm']
          @TrafficThreshold = params['TrafficThreshold']
          @EncryptKey = params['EncryptKey']
          @TopFullScreen = params['TopFullScreen']
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaData请求参数结构体
      class DescribeCaptchaDataRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间
        # @type Start: Integer
        # @param End: 查询结束时间
        # @type End: Integer
        # @param Type: 查询类型
        # @type Type: Integer

        attr_accessor :CaptchaAppId, :Start, :End, :Type
        
        def initialize(captchaappid=nil, start=nil, _end=nil, type=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @End = _end
          @Type = type
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
          @End = params['End']
          @Type = params['Type']
        end
      end

      # DescribeCaptchaData返回参数结构体
      class DescribeCaptchaDataResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 返回码 0 成功 其它失败
        # @type CaptchaCode: Integer
        # @param Data: 数据数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param CaptchaMsg: 返回信息描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :Data, :CaptchaMsg, :RequestId
        
        def initialize(captchacode=nil, data=nil, captchamsg=nil, requestid=nil)
          @CaptchaCode = captchacode
          @Data = data
          @CaptchaMsg = captchamsg
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              captchaquerydata_tmp = CaptchaQueryData.new
              captchaquerydata_tmp.deserialize(i)
              @Data << captchaquerydata_tmp
            end
          end
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaDataSum请求参数结构体
      class DescribeCaptchaDataSumRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间
        # @type Start: Integer
        # @param End: 查询结束时间
        # @type End: Integer

        attr_accessor :CaptchaAppId, :Start, :End
        
        def initialize(captchaappid=nil, start=nil, _end=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
          @End = params['End']
        end
      end

      # DescribeCaptchaDataSum返回参数结构体
      class DescribeCaptchaDataSumResponse < TencentCloud::Common::AbstractModel
        # @param GetSum: 请求总量
        # @type GetSum: Integer
        # @param VfySuccSum: 请求验证成功量
        # @type VfySuccSum: Integer
        # @param VfySum: 请求验证量
        # @type VfySum: Integer
        # @param AttackSum: 拦截攻击量
        # @type AttackSum: Integer
        # @param CaptchaMsg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param CaptchaCode: 成功返回0  其它失败
        # @type CaptchaCode: Integer
        # @param CheckTicketSum: 票据校验量
        # @type CheckTicketSum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GetSum, :VfySuccSum, :VfySum, :AttackSum, :CaptchaMsg, :CaptchaCode, :CheckTicketSum, :RequestId
        
        def initialize(getsum=nil, vfysuccsum=nil, vfysum=nil, attacksum=nil, captchamsg=nil, captchacode=nil, checkticketsum=nil, requestid=nil)
          @GetSum = getsum
          @VfySuccSum = vfysuccsum
          @VfySum = vfysum
          @AttackSum = attacksum
          @CaptchaMsg = captchamsg
          @CaptchaCode = captchacode
          @CheckTicketSum = checkticketsum
          @RequestId = requestid
        end

        def deserialize(params)
          @GetSum = params['GetSum']
          @VfySuccSum = params['VfySuccSum']
          @VfySum = params['VfySum']
          @AttackSum = params['AttackSum']
          @CaptchaMsg = params['CaptchaMsg']
          @CaptchaCode = params['CaptchaCode']
          @CheckTicketSum = params['CheckTicketSum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaMiniData请求参数结构体
      class DescribeCaptchaMiniDataRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间 例如：2019112900
        # @type Start: Integer
        # @param End: 查询结束时间 例如：2019112902
        # @type End: Integer
        # @param Type: 查询类型 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）
        # @type Type: Integer

        attr_accessor :CaptchaAppId, :Start, :End, :Type
        
        def initialize(captchaappid=nil, start=nil, _end=nil, type=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @End = _end
          @Type = type
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
          @End = params['End']
          @Type = params['Type']
        end
      end

      # DescribeCaptchaMiniData返回参数结构体
      class DescribeCaptchaMiniDataResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 返回码 0 成功 其它失败
        # @type CaptchaCode: Integer
        # @param Data: 数据数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param CaptchaMsg: 返回信息描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :Data, :CaptchaMsg, :RequestId
        
        def initialize(captchacode=nil, data=nil, captchamsg=nil, requestid=nil)
          @CaptchaCode = captchacode
          @Data = data
          @CaptchaMsg = captchamsg
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              captchaquerydata_tmp = CaptchaQueryData.new
              captchaquerydata_tmp.deserialize(i)
              @Data << captchaquerydata_tmp
            end
          end
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaMiniDataSum请求参数结构体
      class DescribeCaptchaMiniDataSumRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间
        # @type Start: Integer
        # @param End: 查询结束时间
        # @type End: Integer

        attr_accessor :CaptchaAppId, :Start, :End
        
        def initialize(captchaappid=nil, start=nil, _end=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
          @End = params['End']
        end
      end

      # DescribeCaptchaMiniDataSum返回参数结构体
      class DescribeCaptchaMiniDataSumResponse < TencentCloud::Common::AbstractModel
        # @param GetSum: 请求总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GetSum: Integer
        # @param VfySuccSum: 请求验证成功量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VfySuccSum: Integer
        # @param VfySum: 请求验证量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VfySum: Integer
        # @param AttackSum: 拦截攻击量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackSum: Integer
        # @param CaptchaMsg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param CaptchaCode: 成功返回0  其它失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaCode: Integer
        # @param CheckTicketSum: 票据校验总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckTicketSum: Integer
        # @param TicketThroughputSum: 票据验证通过量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TicketThroughputSum: Integer
        # @param TicketInterceptSum: 票据验证拦截量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TicketInterceptSum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GetSum, :VfySuccSum, :VfySum, :AttackSum, :CaptchaMsg, :CaptchaCode, :CheckTicketSum, :TicketThroughputSum, :TicketInterceptSum, :RequestId
        
        def initialize(getsum=nil, vfysuccsum=nil, vfysum=nil, attacksum=nil, captchamsg=nil, captchacode=nil, checkticketsum=nil, ticketthroughputsum=nil, ticketinterceptsum=nil, requestid=nil)
          @GetSum = getsum
          @VfySuccSum = vfysuccsum
          @VfySum = vfysum
          @AttackSum = attacksum
          @CaptchaMsg = captchamsg
          @CaptchaCode = captchacode
          @CheckTicketSum = checkticketsum
          @TicketThroughputSum = ticketthroughputsum
          @TicketInterceptSum = ticketinterceptsum
          @RequestId = requestid
        end

        def deserialize(params)
          @GetSum = params['GetSum']
          @VfySuccSum = params['VfySuccSum']
          @VfySum = params['VfySum']
          @AttackSum = params['AttackSum']
          @CaptchaMsg = params['CaptchaMsg']
          @CaptchaCode = params['CaptchaCode']
          @CheckTicketSum = params['CheckTicketSum']
          @TicketThroughputSum = params['TicketThroughputSum']
          @TicketInterceptSum = params['TicketInterceptSum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaMiniOperData请求参数结构体
      class DescribeCaptchaMiniOperDataRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间
        # @type Start: Integer
        # @param Type: 查询类型
        # @type Type: Integer

        attr_accessor :CaptchaAppId, :Start, :Type
        
        def initialize(captchaappid=nil, start=nil, type=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @Type = type
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
          @Type = params['Type']
        end
      end

      # DescribeCaptchaMiniOperData返回参数结构体
      class DescribeCaptchaMiniOperDataResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 成功返回 0 其它失败
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param Data: 用户操作数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Captcha.v20190722.models.CaptchaOperDataRes`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :Data, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, data=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          unless params['Data'].nil?
            @Data = CaptchaOperDataRes.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaMiniResult请求参数结构体
      class DescribeCaptchaMiniResultRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaType: 固定填值：9（滑块验证码）
        # @type CaptchaType: Integer
        # @param Ticket: 验证码返回给用户的票据
        # @type Ticket: String
        # @param UserIp: 透传业务侧获取到的验证码使用者的IP
        # @type UserIp: String
        # @param CaptchaAppId: 验证码应用APPID
        # @type CaptchaAppId: Integer
        # @param AppSecretKey: 用于服务器端校验验证码票据的验证密钥，请妥善保密，请勿泄露给第三方
        # @type AppSecretKey: String
        # @param BusinessId: 业务 ID，网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据
        # @type BusinessId: Integer
        # @param SceneId: 场景 ID，网站或应用的业务下有多个场景使用此服务，通过此 ID 区分统计数据
        # @type SceneId: Integer
        # @param MacAddress: mac 地址或设备唯一标识
        # @type MacAddress: String
        # @param Imei: 手机设备号
        # @type Imei: String

        attr_accessor :CaptchaType, :Ticket, :UserIp, :CaptchaAppId, :AppSecretKey, :BusinessId, :SceneId, :MacAddress, :Imei
        
        def initialize(captchatype=nil, ticket=nil, userip=nil, captchaappid=nil, appsecretkey=nil, businessid=nil, sceneid=nil, macaddress=nil, imei=nil)
          @CaptchaType = captchatype
          @Ticket = ticket
          @UserIp = userip
          @CaptchaAppId = captchaappid
          @AppSecretKey = appsecretkey
          @BusinessId = businessid
          @SceneId = sceneid
          @MacAddress = macaddress
          @Imei = imei
        end

        def deserialize(params)
          @CaptchaType = params['CaptchaType']
          @Ticket = params['Ticket']
          @UserIp = params['UserIp']
          @CaptchaAppId = params['CaptchaAppId']
          @AppSecretKey = params['AppSecretKey']
          @BusinessId = params['BusinessId']
          @SceneId = params['SceneId']
          @MacAddress = params['MacAddress']
          @Imei = params['Imei']
        end
      end

      # DescribeCaptchaMiniResult返回参数结构体
      class DescribeCaptchaMiniResultResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 1       ticket verification succeeded     票据验证成功
        # 7       CaptchaAppId does not match     票据与验证码应用APPID不匹配
        # 8       ticket expired     票据超时
        # 10     ticket format error     票据格式不正确
        # 15     ticket decryption failed     票据解密失败
        # 16     CaptchaAppId wrong format     检查验证码应用APPID错误
        # 21     ticket error     票据验证错误
        # 26     system internal error     系统内部错误
        # 100   param err     参数校验错误
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 状态描述及验证错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaMiniRiskResult请求参数结构体
      class DescribeCaptchaMiniRiskResultRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaType: 固定填值：9（滑块验证码）
        # @type CaptchaType: Integer
        # @param Ticket: 验证码返回给用户的票据
        # @type Ticket: String
        # @param UserIp: 用户操作来源的外网 IP
        # @type UserIp: String
        # @param CaptchaAppId: 验证码应用APPID
        # @type CaptchaAppId: Integer
        # @param AppSecretKey: 用于服务器端校验验证码票据的验证密钥，请妥善保密，请勿泄露给第三方
        # @type AppSecretKey: String
        # @param BusinessId: 业务 ID，网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据
        # @type BusinessId: Integer
        # @param SceneId: 场景 ID，网站或应用的业务下有多个场景使用此服务，通过此 ID 区分统计数据
        # @type SceneId: Integer
        # @param MacAddress: mac 地址或设备唯一标识
        # @type MacAddress: String
        # @param Imei: 手机设备号
        # @type Imei: String
        # @param SceneCode: 验证场景：1 活动防刷场景，2 登录保护场景，3 注册保护场景。根据需求选择场景参数。
        # @type SceneCode: Integer
        # @param WeChatOpenId: 用户操作来源的微信开放账号
        # @type WeChatOpenId: String

        attr_accessor :CaptchaType, :Ticket, :UserIp, :CaptchaAppId, :AppSecretKey, :BusinessId, :SceneId, :MacAddress, :Imei, :SceneCode, :WeChatOpenId
        
        def initialize(captchatype=nil, ticket=nil, userip=nil, captchaappid=nil, appsecretkey=nil, businessid=nil, sceneid=nil, macaddress=nil, imei=nil, scenecode=nil, wechatopenid=nil)
          @CaptchaType = captchatype
          @Ticket = ticket
          @UserIp = userip
          @CaptchaAppId = captchaappid
          @AppSecretKey = appsecretkey
          @BusinessId = businessid
          @SceneId = sceneid
          @MacAddress = macaddress
          @Imei = imei
          @SceneCode = scenecode
          @WeChatOpenId = wechatopenid
        end

        def deserialize(params)
          @CaptchaType = params['CaptchaType']
          @Ticket = params['Ticket']
          @UserIp = params['UserIp']
          @CaptchaAppId = params['CaptchaAppId']
          @AppSecretKey = params['AppSecretKey']
          @BusinessId = params['BusinessId']
          @SceneId = params['SceneId']
          @MacAddress = params['MacAddress']
          @Imei = params['Imei']
          @SceneCode = params['SceneCode']
          @WeChatOpenId = params['WeChatOpenId']
        end
      end

      # DescribeCaptchaMiniRiskResult返回参数结构体
      class DescribeCaptchaMiniRiskResultResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 1 ticket verification succeeded 票据验证成功
        # 7 CaptchaAppId does not match 票据与验证码应用APPID不匹配
        # 8 ticket expired 票据超时
        # 10 ticket format error 票据格式不正确
        # 15 ticket decryption failed 票据解密失败
        # 16 CaptchaAppId wrong format 检查验证码应用APPID错误
        # 21 ticket error 票据验证错误
        # 25 bad visitor 策略拦截
        # 26 system internal error 系统内部错误
        # 100 param err 参数校验错误
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 状态描述及验证错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param ManageMarketingRiskValue: 拦截策略返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManageMarketingRiskValue: :class:`Tencentcloud::Captcha.v20190722.models.OutputManageMarketingRiskValue`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :ManageMarketingRiskValue, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, managemarketingriskvalue=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @ManageMarketingRiskValue = managemarketingriskvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          unless params['ManageMarketingRiskValue'].nil?
            @ManageMarketingRiskValue = OutputManageMarketingRiskValue.new
            @ManageMarketingRiskValue.deserialize(params['ManageMarketingRiskValue'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaOperData请求参数结构体
      class DescribeCaptchaOperDataRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间
        # @type Start: Integer
        # @param Type: 查询类型
        # @type Type: Integer

        attr_accessor :CaptchaAppId, :Start, :Type
        
        def initialize(captchaappid=nil, start=nil, type=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @Type = type
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
          @Type = params['Type']
        end
      end

      # DescribeCaptchaOperData返回参数结构体
      class DescribeCaptchaOperDataResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 成功返回 0 其它失败
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param Data: 用户操作数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Captcha.v20190722.models.CaptchaOperDataRes`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :Data, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, data=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          unless params['Data'].nil?
            @Data = CaptchaOperDataRes.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaResult请求参数结构体
      class DescribeCaptchaResultRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaType: 固定填值：9。可在控制台配置不同验证码类型。
        # @type CaptchaType: Integer
        # @param Ticket: 前端回调函数返回的用户验证票据
        # @type Ticket: String
        # @param UserIp: 透传业务侧获取到的验证码使用者的IP
        # @type UserIp: String
        # @param Randstr: 前端回调函数返回的随机字符串
        # @type Randstr: String
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param AppSecretKey: 用于服务器端校验验证码票据的验证密钥，请妥善保密，请勿泄露给第三方
        # @type AppSecretKey: String
        # @param BusinessId: 业务 ID，网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据
        # @type BusinessId: Integer
        # @param SceneId: 场景 ID，网站或应用的业务下有多个场景使用此服务，通过此 ID 区分统计数据
        # @type SceneId: Integer
        # @param MacAddress: mac 地址或设备唯一标识
        # @type MacAddress: String
        # @param Imei: 手机设备号
        # @type Imei: String
        # @param NeedGetCaptchaTime: 是否返回前端获取验证码时间，取值1：需要返回
        # @type NeedGetCaptchaTime: Integer

        attr_accessor :CaptchaType, :Ticket, :UserIp, :Randstr, :CaptchaAppId, :AppSecretKey, :BusinessId, :SceneId, :MacAddress, :Imei, :NeedGetCaptchaTime
        
        def initialize(captchatype=nil, ticket=nil, userip=nil, randstr=nil, captchaappid=nil, appsecretkey=nil, businessid=nil, sceneid=nil, macaddress=nil, imei=nil, needgetcaptchatime=nil)
          @CaptchaType = captchatype
          @Ticket = ticket
          @UserIp = userip
          @Randstr = randstr
          @CaptchaAppId = captchaappid
          @AppSecretKey = appsecretkey
          @BusinessId = businessid
          @SceneId = sceneid
          @MacAddress = macaddress
          @Imei = imei
          @NeedGetCaptchaTime = needgetcaptchatime
        end

        def deserialize(params)
          @CaptchaType = params['CaptchaType']
          @Ticket = params['Ticket']
          @UserIp = params['UserIp']
          @Randstr = params['Randstr']
          @CaptchaAppId = params['CaptchaAppId']
          @AppSecretKey = params['AppSecretKey']
          @BusinessId = params['BusinessId']
          @SceneId = params['SceneId']
          @MacAddress = params['MacAddress']
          @Imei = params['Imei']
          @NeedGetCaptchaTime = params['NeedGetCaptchaTime']
        end
      end

      # DescribeCaptchaResult返回参数结构体
      class DescribeCaptchaResultResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 1 OK 验证通过
        # 6 user code len error 验证码长度不匹配，请检查请求是否带Randstr参数，Randstr参数大小写是否有误
        # 7 captcha no match 验证码答案不匹配/Randstr参数不匹配，请重新生成Randstr、Ticket进行校验
        # 8 verify timeout 验证码签名超时，票据已过期，请重新生成Randstr、Ticket票进行校验
        # 9 Sequnce repeat 验证码签名重放，票据重复使用，请重新生成Randstr、Ticket进行校验
        # 10 Sequnce invalid 验证码签名序列
        # 11 Cookie invalid 验证码cookie信息不合法，非法请求，可能存在不规范接入
        # 12 sig len error 签名长度错误
        # 13 verify ip no match ip不匹配，非法请求，可能存在不规范接入
        # 15 decrypt fail 验证码签名解密失败，票据校验失败，请检查Ticket票据是否与前端返回Ticket一致
        # 16 appid no match 验证码强校验appid错误，请检查CaptchaAppId是否为控制台基础配置界面系统分配的APPID
        # 17 cmd no much 验证码系统命令不匹配
        # 18 uin no match 号码不匹配
        # 19 seq redirect 重定向验证
        # 20 opt no vcode 操作使用pt免验证码校验错误
        # 21 diff 差别，验证错误
        # 22 captcha type not match 验证码类型与拉取时不一致
        # 23 verify type error 验证类型错误
        # 24 invalid pkg 非法请求包
        # 25 bad visitor 策略拦截
        # 26 system busy 系统内部错误
        # 100 param err appsecretkey 参数校验错误，请检查AppSecretKey是否与控制台基础配置界面系统分配的APPID、AppSecretKey相对应
        # 104 Ticket Reuse 票据重复使用，同个票据验证多次，请重新生成Randstr、Ticket进行校验
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 状态描述及验证错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param EvilLevel: [0,100]，恶意等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilLevel: Integer
        # @param GetCaptchaTime: 前端获取验证码时间，时间戳格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GetCaptchaTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :EvilLevel, :GetCaptchaTime, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, evillevel=nil, getcaptchatime=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @EvilLevel = evillevel
          @GetCaptchaTime = getcaptchatime
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          @EvilLevel = params['EvilLevel']
          @GetCaptchaTime = params['GetCaptchaTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaTicketData请求参数结构体
      class DescribeCaptchaTicketDataRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param Start: 查询开始时间 例如：20200909
        # @type Start: Integer

        attr_accessor :CaptchaAppId, :Start
        
        def initialize(captchaappid=nil, start=nil)
          @CaptchaAppId = captchaappid
          @Start = start
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @Start = params['Start']
        end
      end

      # DescribeCaptchaTicketData返回参数结构体
      class DescribeCaptchaTicketDataResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 成功返回 0 其它失败
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param Data: 验证码票据信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Captcha.v20190722.models.CaptchaTicketDataRes`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :Data, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, data=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          unless params['Data'].nil?
            @Data = CaptchaTicketDataRes.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCaptchaUserAllAppId请求参数结构体
      class DescribeCaptchaUserAllAppIdRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCaptchaUserAllAppId返回参数结构体
      class DescribeCaptchaUserAllAppIdResponse < TencentCloud::Common::AbstractModel
        # @param Data: 用户注册的所有Appid和应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param CaptchaCode: 成功返回 0  其它失败
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 返回操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :CaptchaCode, :CaptchaMsg, :RequestId
        
        def initialize(data=nil, captchacode=nil, captchamsg=nil, requestid=nil)
          @Data = data
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              captchauserallappid_tmp = CaptchaUserAllAppId.new
              captchauserallappid_tmp.deserialize(i)
              @Data << captchauserallappid_tmp
            end
          end
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
        end
      end

      # 拦截策略返回信息
      class OutputManageMarketingRiskValue < TencentCloud::Common::AbstractModel
        # @param UserId: 账号 ID。对应输入参数： AccountType 是 1 时，对应 QQ 的 OpenID。
        # AccountType 是 2 时，对应微信的 OpenID/UnionID。
        # AccountType 是 4 时，对应手机号。
        # AccountType 是 8 时，对应 imei、idfa、imeiMD5 或者 idfaMD5。
        # AccountType 是 0 时，对应账号信息。
        # AccountType 是 10004 时，对应手机号的 MD5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param PostTime: 操作时间戳，单位秒（对应输入参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostTime: Integer
        # @param AssociateAccount: 对应输入参数，AccountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录 后关联业务自身的账号 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateAccount: String
        # @param UserIp: 业务详情。 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIp: String
        # @param RiskLevel: 风险值 pass : 无恶意
        # review：需要人工审核
        # reject：拒绝，高风险恶意
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RiskType: 风险类型，请查看下面详细说明 注意：此字段可能返回 null，表示取不到有效值。
        # 账号风险
        #         账号信用低	1	账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素
        # 	疑似 低活跃账号	11	账号活跃度与正常用户有差异
        # 	垃圾账号	2	疑似批量注册小号，近期存在严重违规或大量举报
        # 	疑似小号	21	账号有疑似线上养号，小号等行为
        # 	疑似 违规账号	22	账号曾有违规行为、曾被举报过、曾因违规被处罚过等
        # 	无效账号	3	送检账号参数无法成功解析，请检查微信 openid 是否有
        # 	黑名单	4	该账号在业务侧有过拉黑记录
        # 	白名单 	5	业务自行有添加过白名单记录
        # 行为风险
        #         批量操作	101	存在 ip/设备/环境等因素的聚集性异常
        # 	疑似 IP 属性聚集 	1011	出现 IP 聚集
        # 	疑似 设备属性聚集 	1012	出现设备聚集
        # 	自动机 	103	疑似自动机批量请求
        # 	微信登录态无效 	104	检查 wxtoken 参数，是否已经失效
        # 环境风险
        #         环境异常 	201	操作 ip/设备/环境存在异常。当前 ip 为非常用 ip 或恶意 ip 段
        # 	疑似 非常用IP请求 	2011	当前请求 IP 非该账号常用 IP
        # 	疑似 IP 异常 	2012	使用 idc 机房 ip 或 使用代理 ip 或 使用恶意 ip
        # 	非公网有效 ip 	205	传进来的 IP 地址为内网 ip 地址或者 ip 保留地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskType: Array

        attr_accessor :UserId, :PostTime, :AssociateAccount, :UserIp, :RiskLevel, :RiskType
        
        def initialize(userid=nil, posttime=nil, associateaccount=nil, userip=nil, risklevel=nil, risktype=nil)
          @UserId = userid
          @PostTime = posttime
          @AssociateAccount = associateaccount
          @UserIp = userip
          @RiskLevel = risklevel
          @RiskType = risktype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PostTime = params['PostTime']
          @AssociateAccount = params['AssociateAccount']
          @UserIp = params['UserIp']
          @RiskLevel = params['RiskLevel']
          @RiskType = params['RiskType']
        end
      end

      # DescribeCaptchaTicketData 返回的数据结构
      class TicketAmountUnit < TencentCloud::Common::AbstractModel
        # @param DateKey: 时间
        # @type DateKey: String
        # @param Amount: 票据验证总量
        # @type Amount: Integer

        attr_accessor :DateKey, :Amount
        
        def initialize(datekey=nil, amount=nil)
          @DateKey = datekey
          @Amount = amount
        end

        def deserialize(params)
          @DateKey = params['DateKey']
          @Amount = params['Amount']
        end
      end

      # DescribeCaptchaTicketData 返回的数据结构
      class TicketInterceptUnit < TencentCloud::Common::AbstractModel
        # @param DateKey: 时间
        # @type DateKey: String
        # @param Intercept: 票据验证拦截量
        # @type Intercept: Integer

        attr_accessor :DateKey, :Intercept
        
        def initialize(datekey=nil, intercept=nil)
          @DateKey = datekey
          @Intercept = intercept
        end

        def deserialize(params)
          @DateKey = params['DateKey']
          @Intercept = params['Intercept']
        end
      end

      # DescribeCaptchaTicketData 返回的数据结构
      class TicketThroughUnit < TencentCloud::Common::AbstractModel
        # @param DateKey: 时间
        # @type DateKey: String
        # @param Through: 票据验证的通过量
        # @type Through: Integer

        attr_accessor :DateKey, :Through
        
        def initialize(datekey=nil, through=nil)
          @DateKey = datekey
          @Through = through
        end

        def deserialize(params)
          @DateKey = params['DateKey']
          @Through = params['Through']
        end
      end

      # UpdateCaptchaAppIdInfo请求参数结构体
      class UpdateCaptchaAppIdInfoRequest < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param AppName: 应用名
        # @type AppName: String
        # @param DomainLimit: 域名限制
        # @type DomainLimit: String
        # @param SceneType: 场景类型
        # @type SceneType: Integer
        # @param CapType: 验证码类型
        # @type CapType: Integer
        # @param EvilInterceptGrade: 风险级别
        # @type EvilInterceptGrade: Integer
        # @param SmartVerify: 智能检测
        # @type SmartVerify: Integer
        # @param SmartEngine: 开启智能引擎
        # @type SmartEngine: Integer
        # @param SchemeColor: web风格
        # @type SchemeColor: String
        # @param CaptchaLanguage: 语言
        # @type CaptchaLanguage: Integer
        # @param MailAlarm: 告警邮箱
        # @type MailAlarm: String
        # @param TopFullScreen: 是否全屏
        # @type TopFullScreen: Integer
        # @param TrafficThreshold: 流量限制
        # @type TrafficThreshold: Integer

        attr_accessor :CaptchaAppId, :AppName, :DomainLimit, :SceneType, :CapType, :EvilInterceptGrade, :SmartVerify, :SmartEngine, :SchemeColor, :CaptchaLanguage, :MailAlarm, :TopFullScreen, :TrafficThreshold
        
        def initialize(captchaappid=nil, appname=nil, domainlimit=nil, scenetype=nil, captype=nil, evilinterceptgrade=nil, smartverify=nil, smartengine=nil, schemecolor=nil, captchalanguage=nil, mailalarm=nil, topfullscreen=nil, trafficthreshold=nil)
          @CaptchaAppId = captchaappid
          @AppName = appname
          @DomainLimit = domainlimit
          @SceneType = scenetype
          @CapType = captype
          @EvilInterceptGrade = evilinterceptgrade
          @SmartVerify = smartverify
          @SmartEngine = smartengine
          @SchemeColor = schemecolor
          @CaptchaLanguage = captchalanguage
          @MailAlarm = mailalarm
          @TopFullScreen = topfullscreen
          @TrafficThreshold = trafficthreshold
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @AppName = params['AppName']
          @DomainLimit = params['DomainLimit']
          @SceneType = params['SceneType']
          @CapType = params['CapType']
          @EvilInterceptGrade = params['EvilInterceptGrade']
          @SmartVerify = params['SmartVerify']
          @SmartEngine = params['SmartEngine']
          @SchemeColor = params['SchemeColor']
          @CaptchaLanguage = params['CaptchaLanguage']
          @MailAlarm = params['MailAlarm']
          @TopFullScreen = params['TopFullScreen']
          @TrafficThreshold = params['TrafficThreshold']
        end
      end

      # UpdateCaptchaAppIdInfo返回参数结构体
      class UpdateCaptchaAppIdInfoResponse < TencentCloud::Common::AbstractModel
        # @param CaptchaCode: 返回码 0 成功，其它失败
        # @type CaptchaCode: Integer
        # @param CaptchaMsg: 返回操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaptchaMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaptchaCode, :CaptchaMsg, :RequestId
        
        def initialize(captchacode=nil, captchamsg=nil, requestid=nil)
          @CaptchaCode = captchacode
          @CaptchaMsg = captchamsg
          @RequestId = requestid
        end

        def deserialize(params)
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

