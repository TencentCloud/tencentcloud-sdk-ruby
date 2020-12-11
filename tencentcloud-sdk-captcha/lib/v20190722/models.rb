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
          @OperDataLoadTimeUnitArray = params['OperDataLoadTimeUnitArray']
          @OperDataInterceptUnitArray = params['OperDataInterceptUnitArray']
          @OperDataTryTimesUnitArray = params['OperDataTryTimesUnitArray']
          @OperDataTryTimesDistributeUnitArray = params['OperDataTryTimesDistributeUnitArray']
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

      # 用户注册的APPID和应用名称对象
      class CaptchaUserAllAppId < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: 验证码应用ID
        # @type CaptchaAppId: Integer
        # @param AppName: 注册应用名称
        # @type AppName: String
        # @param TcAppId: 腾讯云APPID
        # @type TcAppId: Integer

        attr_accessor :CaptchaAppId, :AppName, :TcAppId
        
        def initialize(captchaappid=nil, appname=nil, tcappid=nil)
          @CaptchaAppId = captchaappid
          @AppName = appname
          @TcAppId = tcappid
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @AppName = params['AppName']
          @TcAppId = params['TcAppId']
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
        
        def initialize(captchaappid=nil, start=nil, end=nil, type=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @End = end
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
          @Data = params['Data']
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
        
        def initialize(captchaappid=nil, start=nil, end=nil)
          @CaptchaAppId = captchaappid
          @Start = start
          @End = end
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
            @Data = CaptchaOperDataRes.new.deserialize(params[Data])
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
        # @param UserIp: 用户操作来源的外网 IP
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
        # @param CaptchaCode: 1	OK	验证通过
        # 6	user code len error	验证码长度不匹配
        # 7	captcha no match	验证码答案不匹配/Randstr参数不匹配
        # 8	verify timeout	验证码签名超时
        # 9	Sequnce repeat	验证码签名重放
        # 10	Sequnce invalid	验证码签名序列
        # 11	Cookie invalid	验证码cooking信息不合法
        # 12	sig len error	签名长度错误
        # 13	verify ip no match	ip不匹配
        # 15	decrypt fail	验证码签名解密失败
        # 16	appid no match	验证码强校验appid错误
        # 17	cmd no much	验证码系统命令不匹配
        # 18	uin no match	号码不匹配
        # 19	seq redirect	重定向验证
        # 20	opt no vcode	操作使用pt免验证码校验错误
        # 21	diff	差别，验证错误
        # 22	captcha type not match	验证码类型与拉取时不一致
        # 23	verify type error	验证类型错误
        # 24	invalid pkg	非法请求包
        # 25	bad visitor	策略拦截
        # 26	system busy	系统内部错误
        # 100	param err	appsecretkey 参数校验错误
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
          @Data = params['Data']
          @CaptchaCode = params['CaptchaCode']
          @CaptchaMsg = params['CaptchaMsg']
          @RequestId = params['RequestId']
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

