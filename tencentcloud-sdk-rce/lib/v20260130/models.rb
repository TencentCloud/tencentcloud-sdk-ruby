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
  module Rce
    module V20260130
      # 参加营销活动事件详情
      class AddPromotionEvent < TencentCloud::Common::AbstractModel
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param Coupon: <p>营销活动关联的优惠券</p>
        # @type Coupon: :class:`Tencentcloud::Rce.v20260130.models.Coupon`
        # @param Point: <p>营销活动关联的积分活动</p>
        # @type Point: :class:`Tencentcloud::Rce.v20260130.models.CreditPoint`
        # @param Result: <p>参加营销活动结果</p>
        # @type Result: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PromotionId, :PromotionName, :Description, :InviterUserId, :Coupon, :Point, :Result, :Cust

        def initialize(promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, coupon=nil, point=nil, result=nil, cust=nil)
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @Coupon = coupon
          @Point = point
          @Result = result
          @Cust = cust
        end

        def deserialize(params)
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          unless params['Coupon'].nil?
            @Coupon = Coupon.new
            @Coupon.deserialize(params['Coupon'])
          end
          unless params['Point'].nil?
            @Point = CreditPoint.new
            @Point.deserialize(params['Point'])
          end
          unless params['Result'].nil?
            @Result = Result.new
            @Result.deserialize(params['Result'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 地址
      class Address < TencentCloud::Common::AbstractModel
        # @param Country: <p>国家</p><p>参数格式：符合ISO 3166标准</p>
        # @type Country: String
        # @param Region: <p>省份</p>
        # @type Region: String
        # @param City: <p>城市</p>
        # @type City: String
        # @param District: <p>地区</p>
        # @type District: String
        # @param Detail: <p>详细地址</p>
        # @type Detail: String
        # @param ZipCode: <p>邮政编码</p>
        # @type ZipCode: String

        attr_accessor :Country, :Region, :City, :District, :Detail, :ZipCode

        def initialize(country=nil, region=nil, city=nil, district=nil, detail=nil, zipcode=nil)
          @Country = country
          @Region = region
          @City = city
          @District = district
          @Detail = detail
          @ZipCode = zipcode
        end

        def deserialize(params)
          @Country = params['Country']
          @Region = params['Region']
          @City = params['City']
          @District = params['District']
          @Detail = params['Detail']
          @ZipCode = params['ZipCode']
        end
      end

      # 金额
      class Amount < TencentCloud::Common::AbstractModel
        # @param Currency: <p>原始货币类型</p><p>参数格式：符合ISO 4217标准</p>
        # @type Currency: String
        # @param OriginalAmount: <p>原始金额</p>
        # @type OriginalAmount: Float
        # @param ExchangeRateUSD: <p>当前币种对美金的汇率</p>
        # @type ExchangeRateUSD: Float
        # @param ExchangeRateCNY: <p>当前币种对人民币的汇率</p>
        # @type ExchangeRateCNY: Float

        attr_accessor :Currency, :OriginalAmount, :ExchangeRateUSD, :ExchangeRateCNY

        def initialize(currency=nil, originalamount=nil, exchangerateusd=nil, exchangeratecny=nil)
          @Currency = currency
          @OriginalAmount = originalamount
          @ExchangeRateUSD = exchangerateusd
          @ExchangeRateCNY = exchangeratecny
        end

        def deserialize(params)
          @Currency = params['Currency']
          @OriginalAmount = params['OriginalAmount']
          @ExchangeRateUSD = params['ExchangeRateUSD']
          @ExchangeRateCNY = params['ExchangeRateCNY']
        end
      end

      # 应用程序信息
      class App < TencentCloud::Common::AbstractModel
        # @param OS: <p>应用程序运行的移动设备的操作系统类型</p>
        # @type OS: String
        # @param OSVersion: <p>应用程序运行的移动设备的操作系统版本</p>
        # @type OSVersion: String
        # @param DeviceManufacturer: <p>应用程序运行的移动设备的生产厂商</p>
        # @type DeviceManufacturer: String
        # @param DeviceModel: <p>应用程序运行的移动设备的型号</p>
        # @type DeviceModel: String
        # @param DeviceId: <p>应用程序运行的移动设备的唯一ID，对于iOS为IFV标识，对于Android为Android ID</p>
        # @type DeviceId: String
        # @param AppName: <p>应用程序名称</p>
        # @type AppName: String
        # @param AppVersion: <p>应用程序版本</p>
        # @type AppVersion: String
        # @param ClientLanguage: <p>应用程序提供的语言</p>
        # @type ClientLanguage: String

        attr_accessor :OS, :OSVersion, :DeviceManufacturer, :DeviceModel, :DeviceId, :AppName, :AppVersion, :ClientLanguage

        def initialize(os=nil, osversion=nil, devicemanufacturer=nil, devicemodel=nil, deviceid=nil, appname=nil, appversion=nil, clientlanguage=nil)
          @OS = os
          @OSVersion = osversion
          @DeviceManufacturer = devicemanufacturer
          @DeviceModel = devicemodel
          @DeviceId = deviceid
          @AppName = appname
          @AppVersion = appversion
          @ClientLanguage = clientlanguage
        end

        def deserialize(params)
          @OS = params['OS']
          @OSVersion = params['OSVersion']
          @DeviceManufacturer = params['DeviceManufacturer']
          @DeviceModel = params['DeviceModel']
          @DeviceId = params['DeviceId']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @ClientLanguage = params['ClientLanguage']
        end
      end

      # AssessDeviceRiskPremiumPro请求参数结构体
      class AssessDeviceRiskPremiumProRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: <p>用户设备指纹token标识，在您的网站或者应用程序中集成设备指纹的SDK后获取</p>
        # @type DeviceToken: String
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String

        attr_accessor :DeviceToken, :UserIp

        def initialize(devicetoken=nil, userip=nil)
          @DeviceToken = devicetoken
          @UserIp = userip
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @UserIp = params['UserIp']
        end
      end

      # AssessDeviceRiskPremiumPro返回参数结构体
      class AssessDeviceRiskPremiumProResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>设备风险评估高级版返回结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessDeviceRiskPremiumRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessDeviceRiskPremiumRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备风险评估高级版返回结果
      class AssessDeviceRiskPremiumRsp < TencentCloud::Common::AbstractModel
        # @param Decision: <p>决策信息</p>
        # @type Decision: :class:`Tencentcloud::Rce.v20260130.models.Decision`
        # @param Score: <p>设备风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Device: <p>设备基础信息</p>
        # @type Device: :class:`Tencentcloud::Rce.v20260130.models.Device`
        # @param Environment: <p>IP环境基础信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environment: :class:`Tencentcloud::Rce.v20260130.models.Environment`

        attr_accessor :Decision, :Score, :Device, :Environment

        def initialize(decision=nil, score=nil, device=nil, environment=nil)
          @Decision = decision
          @Score = score
          @Device = device
          @Environment = environment
        end

        def deserialize(params)
          unless params['Decision'].nil?
            @Decision = Decision.new
            @Decision.deserialize(params['Decision'])
          end
          unless params['Score'].nil?
            @Score = DataScore.new
            @Score.deserialize(params['Score'])
          end
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
        end
      end

      # AssessDeviceRiskPro请求参数结构体
      class AssessDeviceRiskProRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: <p>用户设备指纹token标识，在您的网站或者应用程序中集成设备指纹的SDK后获取</p>
        # @type DeviceToken: String
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String

        attr_accessor :DeviceToken, :UserIp

        def initialize(devicetoken=nil, userip=nil)
          @DeviceToken = devicetoken
          @UserIp = userip
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @UserIp = params['UserIp']
        end
      end

      # AssessDeviceRiskPro返回参数结构体
      class AssessDeviceRiskProResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>设备风险评估基础版返回结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessDeviceRiskRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessDeviceRiskRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备风险评估基础版返回结果
      class AssessDeviceRiskRsp < TencentCloud::Common::AbstractModel
        # @param Score: <p>设备风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Device: <p>设备基础信息</p>
        # @type Device: :class:`Tencentcloud::Rce.v20260130.models.Device`
        # @param Environment: <p>IP环境基础信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environment: :class:`Tencentcloud::Rce.v20260130.models.Environment`

        attr_accessor :Score, :Device, :Environment

        def initialize(score=nil, device=nil, environment=nil)
          @Score = score
          @Device = device
          @Environment = environment
        end

        def deserialize(params)
          unless params['Score'].nil?
            @Score = DataScore.new
            @Score.deserialize(params['Score'])
          end
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
        end
      end

      # AssessEnvironmentRisk请求参数结构体
      class AssessEnvironmentRiskRequest < TencentCloud::Common::AbstractModel
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String

        attr_accessor :UserIp

        def initialize(userip=nil)
          @UserIp = userip
        end

        def deserialize(params)
          @UserIp = params['UserIp']
        end
      end

      # AssessEnvironmentRisk返回参数结构体
      class AssessEnvironmentRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>环境风险评估返回结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessEnvironmentRiskRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessEnvironmentRiskRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 环境风险评估返回结果
      class AssessEnvironmentRiskRsp < TencentCloud::Common::AbstractModel
        # @param Score: <p>IP环境风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Environment: <p>IP环境基础信息</p>
        # @type Environment: :class:`Tencentcloud::Rce.v20260130.models.Environment`

        attr_accessor :Score, :Environment

        def initialize(score=nil, environment=nil)
          @Score = score
          @Environment = environment
        end

        def deserialize(params)
          unless params['Score'].nil?
            @Score = DataScore.new
            @Score.deserialize(params['Score'])
          end
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
        end
      end

      # AssessRisk请求参数结构体
      class AssessRiskRequest < TencentCloud::Common::AbstractModel
        # @param EventCode: <p>事件码。用于指定业务接入的场景节点。</p><p> 账号保护产品下的标准事件包含：</p><ul><li> login： 登录<p></p></li> <li>register： 注册 </li><li>sms： 短信 </li><li>logout： 登出 </li><li>modify_account： 修改账号 </li><li>modify_password： 修改密码 </li><li>security_verification： 安全验证</li></ul><p>交易保护产品下的标准事件包含：</p><ul><li>create_order： 创建订单 </li><li>transaction： 交易支付 </li><li>charge_back： 拒付</li></ul><p>营销保护产品下的标准事件包含：</p><ul><li>add_promotion： 参加营销活动 </li><li>redeem： 兑奖 </li><li>withdraw： 提现 </li><li>cust_event： 自定义事件，cust_xxx </li><li>scan_code： 扫码 </li><li>lucky_draw： 抽奖 </li><li>task： 做任务 </li><li>invitation： 邀请 </li><li>claim_red_packet： 领红包 </li><li>browse： 浏览</li></ul><p>自定义事件可与RCE约定后进行风险评估</p>
        # @type EventCode: String
        # @param EventTime: <p>事件的发生时间</p><p>参数格式：符合ISO 8601标准的带UTC时区的毫秒级时间</p>
        # @type EventTime: String
        # @param SessionId: <p>用户当前会话 ID， 用于关联用户登录前后的动作，如果没有传UserId，则SessionId必传，如缺失则可填充空字符串</p>
        # @type SessionId: String
        # @param DeviceToken: <p>用户设备指纹token标识，在您的网站或者应用程序中集成设备指纹的SDK后获取</p>
        # @type DeviceToken: String
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String
        # @param EventDetail: <p>事件详情，根据您输入的事件码传入对应的事件信息</p>
        # @type EventDetail: :class:`Tencentcloud::Rce.v20260130.models.EventDetail`
        # @param UserId: <p>用户在您系统中的唯一ID</p>
        # @type UserId: String
        # @param UserEmail: <p>用户邮箱</p>
        # @type UserEmail: String
        # @param UserPhone: <p>用户提供的联系方式</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type UserPhone: String
        # @param Browser: <p>web浏览器相关信息，若您已集成我们的设备指纹SDK，则无需传入此字段</p>
        # @type Browser: :class:`Tencentcloud::Rce.v20260130.models.Browser`
        # @param App: <p>应用程序、操作系统和移动设备详细信息，若您已集成我们的设备指纹SDK，则无需传入此字段</p>
        # @type App: :class:`Tencentcloud::Rce.v20260130.models.App`
        # @param DataAuthorization: <p>数据授权信息，境内地域必填</p>
        # @type DataAuthorization: :class:`Tencentcloud::Rce.v20260130.models.DataAuthorization`
        # @param UserPhoneEncrypt: <p>手机号码加密方式，境内地域必填</p><p>枚举值：</p><ul><li>md5： md5加密</li><li>plain： 明文</li></ul>
        # @type UserPhoneEncrypt: String
        # @param WeChatOpenId: <p>微信开放账号</p>
        # @type WeChatOpenId: String
        # @param QQOpenId: <p>QQ开放账号</p>
        # @type QQOpenId: String
        # @param QQAppId: <p>QQ应用ID，当传入QQ开放账号时，该字段必填，QQ分配给网站或应用的AppId，用来唯一标识网站或应用</p>
        # @type QQAppId: String

        attr_accessor :EventCode, :EventTime, :SessionId, :DeviceToken, :UserIp, :EventDetail, :UserId, :UserEmail, :UserPhone, :Browser, :App, :DataAuthorization, :UserPhoneEncrypt, :WeChatOpenId, :QQOpenId, :QQAppId

        def initialize(eventcode=nil, eventtime=nil, sessionid=nil, devicetoken=nil, userip=nil, eventdetail=nil, userid=nil, useremail=nil, userphone=nil, browser=nil, app=nil, dataauthorization=nil, userphoneencrypt=nil, wechatopenid=nil, qqopenid=nil, qqappid=nil)
          @EventCode = eventcode
          @EventTime = eventtime
          @SessionId = sessionid
          @DeviceToken = devicetoken
          @UserIp = userip
          @EventDetail = eventdetail
          @UserId = userid
          @UserEmail = useremail
          @UserPhone = userphone
          @Browser = browser
          @App = app
          @DataAuthorization = dataauthorization
          @UserPhoneEncrypt = userphoneencrypt
          @WeChatOpenId = wechatopenid
          @QQOpenId = qqopenid
          @QQAppId = qqappid
        end

        def deserialize(params)
          @EventCode = params['EventCode']
          @EventTime = params['EventTime']
          @SessionId = params['SessionId']
          @DeviceToken = params['DeviceToken']
          @UserIp = params['UserIp']
          unless params['EventDetail'].nil?
            @EventDetail = EventDetail.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @UserId = params['UserId']
          @UserEmail = params['UserEmail']
          @UserPhone = params['UserPhone']
          unless params['Browser'].nil?
            @Browser = Browser.new
            @Browser.deserialize(params['Browser'])
          end
          unless params['App'].nil?
            @App = App.new
            @App.deserialize(params['App'])
          end
          unless params['DataAuthorization'].nil?
            @DataAuthorization = DataAuthorization.new
            @DataAuthorization.deserialize(params['DataAuthorization'])
          end
          @UserPhoneEncrypt = params['UserPhoneEncrypt']
          @WeChatOpenId = params['WeChatOpenId']
          @QQOpenId = params['QQOpenId']
          @QQAppId = params['QQAppId']
        end
      end

      # AssessRisk返回参数结构体
      class AssessRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>事件风险评估结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessRiskRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessRiskRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 事件风险评估返回结果
      class AssessRiskRsp < TencentCloud::Common::AbstractModel
        # @param Decision: <p>决策信息</p>
        # @type Decision: :class:`Tencentcloud::Rce.v20260130.models.Decision`
        # @param Score: <p>风险分，根据您开启的产品服务计算的评分结果</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.Score`
        # @param ExtraInfo: <p>扩展信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: Array

        attr_accessor :Decision, :Score, :ExtraInfo

        def initialize(decision=nil, score=nil, extrainfo=nil)
          @Decision = decision
          @Score = score
          @ExtraInfo = extrainfo
        end

        def deserialize(params)
          unless params['Decision'].nil?
            @Decision = Decision.new
            @Decision.deserialize(params['Decision'])
          end
          unless params['Score'].nil?
            @Score = Score.new
            @Score.deserialize(params['Score'])
          end
          unless params['ExtraInfo'].nil?
            @ExtraInfo = []
            params['ExtraInfo'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @ExtraInfo << cust_tmp
            end
          end
        end
      end

      # 账单信息
      class Billing < TencentCloud::Common::AbstractModel
        # @param Address: <p>账单地址</p>
        # @type Address: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param Phone: <p>账单联系电话</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type Phone: String
        # @param Email: <p>账单邮箱</p>
        # @type Email: String
        # @param Recipient: <p>账单接收人姓名</p>
        # @type Recipient: String

        attr_accessor :Address, :Phone, :Email, :Recipient

        def initialize(address=nil, phone=nil, email=nil, recipient=nil)
          @Address = address
          @Phone = phone
          @Email = email
          @Recipient = recipient
        end

        def deserialize(params)
          unless params['Address'].nil?
            @Address = Address.new
            @Address.deserialize(params['Address'])
          end
          @Phone = params['Phone']
          @Email = params['Email']
          @Recipient = params['Recipient']
        end
      end

      # 浏览事件详情
      class BrowseEvent < TencentCloud::Common::AbstractModel
        # @param PageType: <p>当前浏览网页的类型，例如主页、搜索页等</p>
        # @type PageType: String
        # @param PageUrl: <p>当前浏览的网页URL</p>
        # @type PageUrl: String
        # @param Duration: <p>浏览耗时</p><p>单位：毫秒</p>
        # @type Duration: Integer
        # @param ContentType: <p>网页内容类型，例如广告、视频、文章等</p>
        # @type ContentType: String
        # @param ContentId: <p>网页内容ID</p>
        # @type ContentId: String
        # @param ReferPageType: <p>上一个网页的类型，例如主页、搜索页等</p>
        # @type ReferPageType: String
        # @param ReferPageUrl: <p>上一个网页URL</p>
        # @type ReferPageUrl: String
        # @param GuestId: <p>游客账号ID</p>
        # @type GuestId: String
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PageType, :PageUrl, :Duration, :ContentType, :ContentId, :ReferPageType, :ReferPageUrl, :GuestId, :Cust

        def initialize(pagetype=nil, pageurl=nil, duration=nil, contenttype=nil, contentid=nil, referpagetype=nil, referpageurl=nil, guestid=nil, cust=nil)
          @PageType = pagetype
          @PageUrl = pageurl
          @Duration = duration
          @ContentType = contenttype
          @ContentId = contentid
          @ReferPageType = referpagetype
          @ReferPageUrl = referpageurl
          @GuestId = guestid
          @Cust = cust
        end

        def deserialize(params)
          @PageType = params['PageType']
          @PageUrl = params['PageUrl']
          @Duration = params['Duration']
          @ContentType = params['ContentType']
          @ContentId = params['ContentId']
          @ReferPageType = params['ReferPageType']
          @ReferPageUrl = params['ReferPageUrl']
          @GuestId = params['GuestId']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 浏览器信息
      class Browser < TencentCloud::Common::AbstractModel
        # @param UserAgent: <p>与网站交互的浏览器的用户代理</p>
        # @type UserAgent: String
        # @param AcceptLanguage: <p>浏览器支持的用户请求语言</p><p>参数格式：符合ISO 3166标准</p>
        # @type AcceptLanguage: String
        # @param ContentLanguage: <p>浏览器当前网站内容的语言</p><p>参数格式：符合ISO 3166标准</p>
        # @type ContentLanguage: String

        attr_accessor :UserAgent, :AcceptLanguage, :ContentLanguage

        def initialize(useragent=nil, acceptlanguage=nil, contentlanguage=nil)
          @UserAgent = useragent
          @AcceptLanguage = acceptlanguage
          @ContentLanguage = contentlanguage
        end

        def deserialize(params)
          @UserAgent = params['UserAgent']
          @AcceptLanguage = params['AcceptLanguage']
          @ContentLanguage = params['ContentLanguage']
        end
      end

      # 银行卡
      class Card < TencentCloud::Common::AbstractModel
        # @param CardBin: <p>发卡行识别码卡号前6位</p><p>参数格式：符合ISO 13616-1标准</p>
        # @type CardBin: String
        # @param LastFourDigits: <p>发卡行识别码卡号后4位</p><p>参数格式：符合ISO 13616-1标准</p>
        # @type LastFourDigits: String
        # @param Country: <p>发行国家</p>
        # @type Country: String
        # @param Bank: <p>发行银行</p>
        # @type Bank: String
        # @param Type: <p>支付卡类型</p><p>枚举值：</p><ul><li>credit： 信用卡</li><li>debit： 借记卡</li><li>charge： 签账卡</li></ul>
        # @type Type: String
        # @param Brand: <p>支付卡品牌</p>
        # @type Brand: String
        # @param Level: <p>支付卡等级</p>
        # @type Level: String
        # @param HolderName: <p>持有者姓名</p>
        # @type HolderName: String
        # @param ExpireTime: <p>过期日期</p><p>参数格式：YYYY-MM-DD</p>
        # @type ExpireTime: String

        attr_accessor :CardBin, :LastFourDigits, :Country, :Bank, :Type, :Brand, :Level, :HolderName, :ExpireTime

        def initialize(cardbin=nil, lastfourdigits=nil, country=nil, bank=nil, type=nil, brand=nil, level=nil, holdername=nil, expiretime=nil)
          @CardBin = cardbin
          @LastFourDigits = lastfourdigits
          @Country = country
          @Bank = bank
          @Type = type
          @Brand = brand
          @Level = level
          @HolderName = holdername
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @CardBin = params['CardBin']
          @LastFourDigits = params['LastFourDigits']
          @Country = params['Country']
          @Bank = params['Bank']
          @Type = params['Type']
          @Brand = params['Brand']
          @Level = params['Level']
          @HolderName = params['HolderName']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 拒付事件详情
      class ChargeBackEvent < TencentCloud::Common::AbstractModel
        # @param TransactionId: <p>交易ID</p>
        # @type TransactionId: String
        # @param OrderId: <p>订单 ID，当一笔交易关联多个订单（合并支付）时请输入所有订单ID</p>
        # @type OrderId: Array
        # @param ChargeBackCode: <p>拒付理由码，参考各卡组织定义的拒付码，例如：10.1、13.1、 4870、4871等</p>
        # @type ChargeBackCode: String
        # @param ChargeBackReason: <p>拒付原因，参考各卡组织定义的拒付原因，例如：未收到商品、欺诈等</p>
        # @type ChargeBackReason: String
        # @param ChargeBackProcess: <p>拒付申诉阶段</p><p>枚举值：</p><ul><li>need_response： 需要商家回应</li><li>information_supplied： 商家已提供信息</li><li>chargeback_reversed： 拒付已撤销</li><li>chargeback_sustained： 拒付已成立</li></ul>
        # @type ChargeBackProcess: String
        # @param ChargeBackAmount: <p>拒付金额</p>
        # @type ChargeBackAmount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :TransactionId, :OrderId, :ChargeBackCode, :ChargeBackReason, :ChargeBackProcess, :ChargeBackAmount, :Cust

        def initialize(transactionid=nil, orderid=nil, chargebackcode=nil, chargebackreason=nil, chargebackprocess=nil, chargebackamount=nil, cust=nil)
          @TransactionId = transactionid
          @OrderId = orderid
          @ChargeBackCode = chargebackcode
          @ChargeBackReason = chargebackreason
          @ChargeBackProcess = chargebackprocess
          @ChargeBackAmount = chargebackamount
          @Cust = cust
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @OrderId = params['OrderId']
          @ChargeBackCode = params['ChargeBackCode']
          @ChargeBackReason = params['ChargeBackReason']
          @ChargeBackProcess = params['ChargeBackProcess']
          unless params['ChargeBackAmount'].nil?
            @ChargeBackAmount = Amount.new
            @ChargeBackAmount.deserialize(params['ChargeBackAmount'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 领红包事件详情
      class ClaimRedPacketEvent < TencentCloud::Common::AbstractModel
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param RedPacketId: <p>红包ID</p>
        # @type RedPacketId: String
        # @param RedPacketType: <p>红包类型，如手气红包、口令红包、均分红包等</p>
        # @type RedPacketType: String
        # @param RedPacketAmount: <p>红包金额</p>
        # @type RedPacketAmount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PromotionId, :PromotionName, :Description, :InviterUserId, :RedPacketId, :RedPacketType, :RedPacketAmount, :Cust

        def initialize(promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, redpacketid=nil, redpackettype=nil, redpacketamount=nil, cust=nil)
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @RedPacketId = redpacketid
          @RedPacketType = redpackettype
          @RedPacketAmount = redpacketamount
          @Cust = cust
        end

        def deserialize(params)
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          @RedPacketId = params['RedPacketId']
          @RedPacketType = params['RedPacketType']
          unless params['RedPacketAmount'].nil?
            @RedPacketAmount = Amount.new
            @RedPacketAmount.deserialize(params['RedPacketAmount'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 优惠券
      class Coupon < TencentCloud::Common::AbstractModel
        # @param CouponId: <p>优惠券ID</p>
        # @type CouponId: String
        # @param CouponName: <p>优惠券名称</p>
        # @type CouponName: String
        # @param StartTime: <p>优惠券开始时间</p><p>参数格式：符合ISO 8601标准的带UTC时区的毫秒级时间</p>
        # @type StartTime: String
        # @param ExpireTime: <p>优惠券过期时间</p><p>参数格式：符合ISO 8601标准的带UTC时区的毫秒级时间</p>
        # @type ExpireTime: String
        # @param PercentageRate: <p>折扣百分比，如果折扣为 10%，则发送“0.1”</p>
        # @type PercentageRate: Float
        # @param DiscountAmount: <p>折扣金额</p>
        # @type DiscountAmount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param Threshold: <p>优惠券门槛</p>
        # @type Threshold: Float

        attr_accessor :CouponId, :CouponName, :StartTime, :ExpireTime, :PercentageRate, :DiscountAmount, :Threshold

        def initialize(couponid=nil, couponname=nil, starttime=nil, expiretime=nil, percentagerate=nil, discountamount=nil, threshold=nil)
          @CouponId = couponid
          @CouponName = couponname
          @StartTime = starttime
          @ExpireTime = expiretime
          @PercentageRate = percentagerate
          @DiscountAmount = discountamount
          @Threshold = threshold
        end

        def deserialize(params)
          @CouponId = params['CouponId']
          @CouponName = params['CouponName']
          @StartTime = params['StartTime']
          @ExpireTime = params['ExpireTime']
          @PercentageRate = params['PercentageRate']
          unless params['DiscountAmount'].nil?
            @DiscountAmount = Amount.new
            @DiscountAmount.deserialize(params['DiscountAmount'])
          end
          @Threshold = params['Threshold']
        end
      end

      # 创建订单事件详情
      class CreateOrderEvent < TencentCloud::Common::AbstractModel
        # @param OrderId: <p>订单ID</p>
        # @type OrderId: String
        # @param Amount: <p>订单金额</p>
        # @type Amount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param Merchant: <p>商家信息</p>
        # @type Merchant: :class:`Tencentcloud::Rce.v20260130.models.Merchant`
        # @param Billing: <p>账单信息</p>
        # @type Billing: :class:`Tencentcloud::Rce.v20260130.models.Billing`
        # @param Items: <p>商品信息</p>
        # @type Items: Array
        # @param Delivery: <p>物流信息</p>
        # @type Delivery: :class:`Tencentcloud::Rce.v20260130.models.Delivery`
        # @param Promotions: <p>营销活动信息</p>
        # @type Promotions: Array
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :OrderId, :Amount, :Merchant, :Billing, :Items, :Delivery, :Promotions, :Cust

        def initialize(orderid=nil, amount=nil, merchant=nil, billing=nil, items=nil, delivery=nil, promotions=nil, cust=nil)
          @OrderId = orderid
          @Amount = amount
          @Merchant = merchant
          @Billing = billing
          @Items = items
          @Delivery = delivery
          @Promotions = promotions
          @Cust = cust
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          unless params['Amount'].nil?
            @Amount = Amount.new
            @Amount.deserialize(params['Amount'])
          end
          unless params['Merchant'].nil?
            @Merchant = Merchant.new
            @Merchant.deserialize(params['Merchant'])
          end
          unless params['Billing'].nil?
            @Billing = Billing.new
            @Billing.deserialize(params['Billing'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
          unless params['Delivery'].nil?
            @Delivery = Delivery.new
            @Delivery.deserialize(params['Delivery'])
          end
          unless params['Promotions'].nil?
            @Promotions = []
            params['Promotions'].each do |i|
              promotion_tmp = Promotion.new
              promotion_tmp.deserialize(i)
              @Promotions << promotion_tmp
            end
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 账号积分
      class CreditPoint < TencentCloud::Common::AbstractModel
        # @param Point: <p>积分分值</p>
        # @type Point: Float
        # @param PointType: <p>积分类型</p>
        # @type PointType: String

        attr_accessor :Point, :PointType

        def initialize(point=nil, pointtype=nil)
          @Point = point
          @PointType = pointtype
        end

        def deserialize(params)
          @Point = params['Point']
          @PointType = params['PointType']
        end
      end

      # 与RCE约定的定制化参数，K:V 格式的对象数组
      class Cust < TencentCloud::Common::AbstractModel
        # @param Key: <p>标识符</p>
        # @type Key: String
        # @param Value: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 自定义事件
      class CustEvent < TencentCloud::Common::AbstractModel
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :Cust

        def initialize(cust=nil)
          @Cust = cust
        end

        def deserialize(params)
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 数据授权信息
      class DataAuthorization < TencentCloud::Common::AbstractModel
        # @param DataProviderName: <p>数据委托方，客户主体名称</p>
        # @type DataProviderName: String
        # @param DataRecipientName: <p>数据受托方，腾讯云主体名称，固定填：腾讯云计算（北京）有限责任公司</p>
        # @type DataRecipientName: String
        # @param UserDataType: <p>客户请求RCE所提供的用户数据类型，支持多选</p><p>枚举值：</p><ul><li>1： 手机号</li><li>2： 微信开放账号</li><li>3： QQ开放账号</li><li>4： IP地址</li><li>5： URL网址</li><li>999： 其他</li></ul>
        # @type UserDataType: Array
        # @param IsAuthorized: <p>客户是否已按合规指南要求获取用户授权，同意客户委托腾讯云处理入参信息</p><p>枚举值：</p><ul><li>true： 已授权</li><li>false： 未授权</li></ul>
        # @type IsAuthorized: Boolean
        # @param IsOrderHanding: <p>客户是否已按合规指南要求获取用户授权，同意腾讯云结合客户提供的信息，对已合法收集的用户数据进行必要处理得出服务结果，并返回给客户</p><p>枚举值：</p><ul><li>true： 已授权</li><li>false： 未授权</li></ul>
        # @type IsOrderHanding: Boolean
        # @param AuthorizationDeadline: <p>客户获得的用户授权期限Unix时间戳（单位秒），不填默认无固定期限</p>
        # @type AuthorizationDeadline: Integer
        # @param PrivacyPolicyLink: <p>客户获得用户授权所依赖的协议地址</p>
        # @type PrivacyPolicyLink: String

        attr_accessor :DataProviderName, :DataRecipientName, :UserDataType, :IsAuthorized, :IsOrderHanding, :AuthorizationDeadline, :PrivacyPolicyLink

        def initialize(dataprovidername=nil, datarecipientname=nil, userdatatype=nil, isauthorized=nil, isorderhanding=nil, authorizationdeadline=nil, privacypolicylink=nil)
          @DataProviderName = dataprovidername
          @DataRecipientName = datarecipientname
          @UserDataType = userdatatype
          @IsAuthorized = isauthorized
          @IsOrderHanding = isorderhanding
          @AuthorizationDeadline = authorizationdeadline
          @PrivacyPolicyLink = privacypolicylink
        end

        def deserialize(params)
          @DataProviderName = params['DataProviderName']
          @DataRecipientName = params['DataRecipientName']
          @UserDataType = params['UserDataType']
          @IsAuthorized = params['IsAuthorized']
          @IsOrderHanding = params['IsOrderHanding']
          @AuthorizationDeadline = params['AuthorizationDeadline']
          @PrivacyPolicyLink = params['PrivacyPolicyLink']
        end
      end

      # 风险分信息
      class DataScore < TencentCloud::Common::AbstractModel
        # @param RiskLevel: <p>风险等级</p>
        # @type RiskLevel: Integer
        # @param RiskLabels: <p>风险标签</p>
        # @type RiskLabels: Array
        # @param RiskScore: <p>综合风险分数。</p><p>取值范围：[1, 1000]</p><p>数值越大，风险越大。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskScore: Integer

        attr_accessor :RiskLevel, :RiskLabels, :RiskScore

        def initialize(risklevel=nil, risklabels=nil, riskscore=nil)
          @RiskLevel = risklevel
          @RiskLabels = risklabels
          @RiskScore = riskscore
        end

        def deserialize(params)
          @RiskLevel = params['RiskLevel']
          unless params['RiskLabels'].nil?
            @RiskLabels = []
            params['RiskLabels'].each do |i|
              risklabel_tmp = RiskLabel.new
              risklabel_tmp.deserialize(i)
              @RiskLabels << risklabel_tmp
            end
          end
          @RiskScore = params['RiskScore']
        end
      end

      # 决策信息
      class Decision < TencentCloud::Common::AbstractModel
        # @param DecisionResult: <p>决策结果</p><ul><li>pass：通过</li><li>review：复审</li><li>reject：拒绝</li></ul>
        # @type DecisionResult: String
        # @param Disposition: <p>命中策略后的决策动作，可在控制台配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disposition: String

        attr_accessor :DecisionResult, :Disposition

        def initialize(decisionresult=nil, disposition=nil)
          @DecisionResult = decisionresult
          @Disposition = disposition
        end

        def deserialize(params)
          @DecisionResult = params['DecisionResult']
          @Disposition = params['Disposition']
        end
      end

      # 物流信息
      class Delivery < TencentCloud::Common::AbstractModel
        # @param DeliveryMethod: <p>物流方式</p><ul><li>physical：物理投送</li><li>electonic：电子投送</li></ul>
        # @type DeliveryMethod: String
        # @param DeliveryAmount: <p>物流费用</p>
        # @type DeliveryAmount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param DeliveryAddress: <p>收货地址</p>
        # @type DeliveryAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param ConsigneePhone: <p>收货人电话</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type ConsigneePhone: String
        # @param ConsigneeEmail: <p>收货人邮箱</p>
        # @type ConsigneeEmail: String
        # @param ConsigneeName: <p>收货人姓名</p>
        # @type ConsigneeName: String
        # @param Expedited: <p>是否加急</p>
        # @type Expedited: Boolean
        # @param DeliveryCarrier: <p>物流厂商，一般是物流的公司</p>
        # @type DeliveryCarrier: String
        # @param DeliveryTracking: <p>物流追踪单号</p>
        # @type DeliveryTracking: String

        attr_accessor :DeliveryMethod, :DeliveryAmount, :DeliveryAddress, :ConsigneePhone, :ConsigneeEmail, :ConsigneeName, :Expedited, :DeliveryCarrier, :DeliveryTracking

        def initialize(deliverymethod=nil, deliveryamount=nil, deliveryaddress=nil, consigneephone=nil, consigneeemail=nil, consigneename=nil, expedited=nil, deliverycarrier=nil, deliverytracking=nil)
          @DeliveryMethod = deliverymethod
          @DeliveryAmount = deliveryamount
          @DeliveryAddress = deliveryaddress
          @ConsigneePhone = consigneephone
          @ConsigneeEmail = consigneeemail
          @ConsigneeName = consigneename
          @Expedited = expedited
          @DeliveryCarrier = deliverycarrier
          @DeliveryTracking = deliverytracking
        end

        def deserialize(params)
          @DeliveryMethod = params['DeliveryMethod']
          unless params['DeliveryAmount'].nil?
            @DeliveryAmount = Amount.new
            @DeliveryAmount.deserialize(params['DeliveryAmount'])
          end
          unless params['DeliveryAddress'].nil?
            @DeliveryAddress = Address.new
            @DeliveryAddress.deserialize(params['DeliveryAddress'])
          end
          @ConsigneePhone = params['ConsigneePhone']
          @ConsigneeEmail = params['ConsigneeEmail']
          @ConsigneeName = params['ConsigneeName']
          @Expedited = params['Expedited']
          @DeliveryCarrier = params['DeliveryCarrier']
          @DeliveryTracking = params['DeliveryTracking']
        end
      end

      # 设备基础信息
      class Device < TencentCloud::Common::AbstractModel
        # @param DeviceId: <p>设备ID</p>
        # @type DeviceId: String
        # @param AppVersion: <p>App版本信息</p>
        # @type AppVersion: String
        # @param Brand: <p>品牌</p>
        # @type Brand: String
        # @param ClientIp: <p>客户端IP</p>
        # @type ClientIp: String
        # @param Model: <p>机型</p>
        # @type Model: String
        # @param NetworkType: <p>网络类型</p>
        # @type NetworkType: String
        # @param PackageName: <p>应用包名</p>
        # @type PackageName: String
        # @param Platform: <p>平台</p><p>枚举值：</p><ul><li>2： Android</li><li>3： IOS</li><li>4： H5</li><li>5： 微信小程序</li></ul>
        # @type Platform: String
        # @param SystemVersion: <p>系统版本</p>
        # @type SystemVersion: String
        # @param SdkBuildVersion: <p>SDK版本</p>
        # @type SdkBuildVersion: String
        # @param SignToken: <p>验签token，验签功能启用请联系我们。</p>
        # @type SignToken: String
        # @param TokenTime: <p>token生成时间戳，毫秒级。</p>
        # @type TokenTime: String
        # @param PrivacyBrowser: <p>隐私浏览器类型，当检测到隐私浏览器时返回，仅H5。</p>
        # @type PrivacyBrowser: String

        attr_accessor :DeviceId, :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildVersion, :SignToken, :TokenTime, :PrivacyBrowser

        def initialize(deviceid=nil, appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildversion=nil, signtoken=nil, tokentime=nil, privacybrowser=nil)
          @DeviceId = deviceid
          @AppVersion = appversion
          @Brand = brand
          @ClientIp = clientip
          @Model = model
          @NetworkType = networktype
          @PackageName = packagename
          @Platform = platform
          @SystemVersion = systemversion
          @SdkBuildVersion = sdkbuildversion
          @SignToken = signtoken
          @TokenTime = tokentime
          @PrivacyBrowser = privacybrowser
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @AppVersion = params['AppVersion']
          @Brand = params['Brand']
          @ClientIp = params['ClientIp']
          @Model = params['Model']
          @NetworkType = params['NetworkType']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @SystemVersion = params['SystemVersion']
          @SdkBuildVersion = params['SdkBuildVersion']
          @SignToken = params['SignToken']
          @TokenTime = params['TokenTime']
          @PrivacyBrowser = params['PrivacyBrowser']
        end
      end

      # 数字订单
      class DigitalOrder < TencentCloud::Common::AbstractModel
        # @param DigitalAsset: <p>数字资产</p>
        # @type DigitalAsset: String
        # @param AssetType: <p>数字资产类型</p><p>枚举值：</p><ul><li>coin： 代币</li><li>commodity： 大宗商品</li><li>crypto： 加密货币</li><li>fiat： 法币</li><li>token： 通证</li><li>stock： 股票</li><li>bond： 债券</li></ul>
        # @type AssetType: String
        # @param OrderType: <p>订单类型</p><p>枚举值：</p><ul><li>limit： 限价单</li><li>market： 市价单</li><li>stop_limit： 止损限价单</li><li>stop_loss： 止损单</li><li>take_profit： 止盈单</li><li>take_profit_limit： 止盈限价单</li></ul>
        # @type OrderType: String
        # @param Volume: <p>数字资产的数量</p>
        # @type Volume: Float

        attr_accessor :DigitalAsset, :AssetType, :OrderType, :Volume

        def initialize(digitalasset=nil, assettype=nil, ordertype=nil, volume=nil)
          @DigitalAsset = digitalasset
          @AssetType = assettype
          @OrderType = ordertype
          @Volume = volume
        end

        def deserialize(params)
          @DigitalAsset = params['DigitalAsset']
          @AssetType = params['AssetType']
          @OrderType = params['OrderType']
          @Volume = params['Volume']
        end
      end

      # 环境基础信息
      class Environment < TencentCloud::Common::AbstractModel
        # @param Location: <p>IP地理位置信息</p>
        # @type Location: :class:`Tencentcloud::Rce.v20260130.models.IPLocation`
        # @param Network: <p>IP基础网络信息</p>
        # @type Network: :class:`Tencentcloud::Rce.v20260130.models.IPNetwork`

        attr_accessor :Location, :Network

        def initialize(location=nil, network=nil)
          @Location = location
          @Network = network
        end

        def deserialize(params)
          unless params['Location'].nil?
            @Location = IPLocation.new
            @Location.deserialize(params['Location'])
          end
          unless params['Network'].nil?
            @Network = IPNetwork.new
            @Network.deserialize(params['Network'])
          end
        end
      end

      # 事件详情
      class EventDetail < TencentCloud::Common::AbstractModel
        # @param Login: <p>登录</p>
        # @type Login: :class:`Tencentcloud::Rce.v20260130.models.LoginEvent`
        # @param Register: <p>注册（变更用户信息）</p>
        # @type Register: :class:`Tencentcloud::Rce.v20260130.models.RegisterEvent`
        # @param CreateOrder: <p>创建订单</p>
        # @type CreateOrder: :class:`Tencentcloud::Rce.v20260130.models.CreateOrderEvent`
        # @param Transaction: <p>交易支付</p>
        # @type Transaction: :class:`Tencentcloud::Rce.v20260130.models.TransactionEvent`
        # @param Sms: <p>短信</p>
        # @type Sms: :class:`Tencentcloud::Rce.v20260130.models.SMSEvent`
        # @param ChargeBack: <p>拒付</p>
        # @type ChargeBack: :class:`Tencentcloud::Rce.v20260130.models.ChargeBackEvent`
        # @param Logout: <p>登出</p>
        # @type Logout: :class:`Tencentcloud::Rce.v20260130.models.LogoutEvent`
        # @param ModifyAccount: <p>修改账号</p>
        # @type ModifyAccount: :class:`Tencentcloud::Rce.v20260130.models.ModifyAccountEvent`
        # @param ModifyPassword: <p>修改密码</p>
        # @type ModifyPassword: :class:`Tencentcloud::Rce.v20260130.models.ModifyPasswordEvent`
        # @param SecurityVerification: <p>安全验证</p>
        # @type SecurityVerification: :class:`Tencentcloud::Rce.v20260130.models.SecurityVerificationEvent`
        # @param AddPromotion: <p>参加营销活动</p>
        # @type AddPromotion: :class:`Tencentcloud::Rce.v20260130.models.AddPromotionEvent`
        # @param Redeem: <p>兑奖</p>
        # @type Redeem: :class:`Tencentcloud::Rce.v20260130.models.RedeemEvent`
        # @param Withdraw: <p>提现</p>
        # @type Withdraw: :class:`Tencentcloud::Rce.v20260130.models.WithdrawEvent`
        # @param CustEvent: <p>自定义事件</p>
        # @type CustEvent: :class:`Tencentcloud::Rce.v20260130.models.CustEvent`
        # @param ScanCode: <p>扫码</p>
        # @type ScanCode: :class:`Tencentcloud::Rce.v20260130.models.ScanCodeEvent`
        # @param LuckyDraw: <p>抽奖</p>
        # @type LuckyDraw: :class:`Tencentcloud::Rce.v20260130.models.LuckyDrawEvent`
        # @param Task: <p>做任务</p>
        # @type Task: :class:`Tencentcloud::Rce.v20260130.models.TaskEvent`
        # @param Invitation: <p>邀请</p>
        # @type Invitation: :class:`Tencentcloud::Rce.v20260130.models.InvitationEvent`
        # @param ClaimRedPacket: <p>领红包</p>
        # @type ClaimRedPacket: :class:`Tencentcloud::Rce.v20260130.models.ClaimRedPacketEvent`
        # @param Browse: <p>浏览</p>
        # @type Browse: :class:`Tencentcloud::Rce.v20260130.models.BrowseEvent`

        attr_accessor :Login, :Register, :CreateOrder, :Transaction, :Sms, :ChargeBack, :Logout, :ModifyAccount, :ModifyPassword, :SecurityVerification, :AddPromotion, :Redeem, :Withdraw, :CustEvent, :ScanCode, :LuckyDraw, :Task, :Invitation, :ClaimRedPacket, :Browse

        def initialize(login=nil, register=nil, createorder=nil, transaction=nil, sms=nil, chargeback=nil, logout=nil, modifyaccount=nil, modifypassword=nil, securityverification=nil, addpromotion=nil, redeem=nil, withdraw=nil, custevent=nil, scancode=nil, luckydraw=nil, task=nil, invitation=nil, claimredpacket=nil, browse=nil)
          @Login = login
          @Register = register
          @CreateOrder = createorder
          @Transaction = transaction
          @Sms = sms
          @ChargeBack = chargeback
          @Logout = logout
          @ModifyAccount = modifyaccount
          @ModifyPassword = modifypassword
          @SecurityVerification = securityverification
          @AddPromotion = addpromotion
          @Redeem = redeem
          @Withdraw = withdraw
          @CustEvent = custevent
          @ScanCode = scancode
          @LuckyDraw = luckydraw
          @Task = task
          @Invitation = invitation
          @ClaimRedPacket = claimredpacket
          @Browse = browse
        end

        def deserialize(params)
          unless params['Login'].nil?
            @Login = LoginEvent.new
            @Login.deserialize(params['Login'])
          end
          unless params['Register'].nil?
            @Register = RegisterEvent.new
            @Register.deserialize(params['Register'])
          end
          unless params['CreateOrder'].nil?
            @CreateOrder = CreateOrderEvent.new
            @CreateOrder.deserialize(params['CreateOrder'])
          end
          unless params['Transaction'].nil?
            @Transaction = TransactionEvent.new
            @Transaction.deserialize(params['Transaction'])
          end
          unless params['Sms'].nil?
            @Sms = SMSEvent.new
            @Sms.deserialize(params['Sms'])
          end
          unless params['ChargeBack'].nil?
            @ChargeBack = ChargeBackEvent.new
            @ChargeBack.deserialize(params['ChargeBack'])
          end
          unless params['Logout'].nil?
            @Logout = LogoutEvent.new
            @Logout.deserialize(params['Logout'])
          end
          unless params['ModifyAccount'].nil?
            @ModifyAccount = ModifyAccountEvent.new
            @ModifyAccount.deserialize(params['ModifyAccount'])
          end
          unless params['ModifyPassword'].nil?
            @ModifyPassword = ModifyPasswordEvent.new
            @ModifyPassword.deserialize(params['ModifyPassword'])
          end
          unless params['SecurityVerification'].nil?
            @SecurityVerification = SecurityVerificationEvent.new
            @SecurityVerification.deserialize(params['SecurityVerification'])
          end
          unless params['AddPromotion'].nil?
            @AddPromotion = AddPromotionEvent.new
            @AddPromotion.deserialize(params['AddPromotion'])
          end
          unless params['Redeem'].nil?
            @Redeem = RedeemEvent.new
            @Redeem.deserialize(params['Redeem'])
          end
          unless params['Withdraw'].nil?
            @Withdraw = WithdrawEvent.new
            @Withdraw.deserialize(params['Withdraw'])
          end
          unless params['CustEvent'].nil?
            @CustEvent = CustEvent.new
            @CustEvent.deserialize(params['CustEvent'])
          end
          unless params['ScanCode'].nil?
            @ScanCode = ScanCodeEvent.new
            @ScanCode.deserialize(params['ScanCode'])
          end
          unless params['LuckyDraw'].nil?
            @LuckyDraw = LuckyDrawEvent.new
            @LuckyDraw.deserialize(params['LuckyDraw'])
          end
          unless params['Task'].nil?
            @Task = TaskEvent.new
            @Task.deserialize(params['Task'])
          end
          unless params['Invitation'].nil?
            @Invitation = InvitationEvent.new
            @Invitation.deserialize(params['Invitation'])
          end
          unless params['ClaimRedPacket'].nil?
            @ClaimRedPacket = ClaimRedPacketEvent.new
            @ClaimRedPacket.deserialize(params['ClaimRedPacket'])
          end
          unless params['Browse'].nil?
            @Browse = BrowseEvent.new
            @Browse.deserialize(params['Browse'])
          end
        end
      end

      # IP地理位置信息
      class IPLocation < TencentCloud::Common::AbstractModel
        # @param Country: <p>IP地址所属国家</p>
        # @type Country: String
        # @param Region: <p>IP地址所属省份</p>
        # @type Region: String
        # @param City: <p>IP地址所属城市</p>
        # @type City: String
        # @param District: <p>IP地址所属地区</p>
        # @type District: String
        # @param Longitude: <p>IP地址的经度</p>
        # @type Longitude: String
        # @param Latitude: <p>IP地址的纬度</p>
        # @type Latitude: String
        # @param Timezone: <p>IP地址所属时区</p>
        # @type Timezone: String
        # @param ZipCode: <p>IP地址的邮政编码</p>
        # @type ZipCode: String

        attr_accessor :Country, :Region, :City, :District, :Longitude, :Latitude, :Timezone, :ZipCode

        def initialize(country=nil, region=nil, city=nil, district=nil, longitude=nil, latitude=nil, timezone=nil, zipcode=nil)
          @Country = country
          @Region = region
          @City = city
          @District = district
          @Longitude = longitude
          @Latitude = latitude
          @Timezone = timezone
          @ZipCode = zipcode
        end

        def deserialize(params)
          @Country = params['Country']
          @Region = params['Region']
          @City = params['City']
          @District = params['District']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @Timezone = params['Timezone']
          @ZipCode = params['ZipCode']
        end
      end

      # IP基础网络信息
      class IPNetwork < TencentCloud::Common::AbstractModel
        # @param ISP: <p>互联网服务提供商</p>
        # @type ISP: String
        # @param ASN: <p>自治系统号</p>
        # @type ASN: String
        # @param Organization: <p>IP注册组织名称</p>
        # @type Organization: String
        # @param IsReserved: <p>是否保留IP</p>
        # @type IsReserved: Boolean
        # @param IsGateway: <p>是否网关IP</p>
        # @type IsGateway: Boolean
        # @param IsAnycast: <p>是否任播网络</p>
        # @type IsAnycast: Boolean
        # @param IsMobile: <p>是否移动网络</p>
        # @type IsMobile: Boolean
        # @param IsDynamic: <p>是否动态IP</p>
        # @type IsDynamic: Boolean
        # @param IsEgress: <p>是否网络出口</p>
        # @type IsEgress: Boolean
        # @param IsDNS: <p>是否域名解析</p>
        # @type IsDNS: Boolean
        # @param IsEducation: <p>是否教育机构</p>
        # @type IsEducation: Boolean
        # @param IsInstitution: <p>是否组织机构</p>
        # @type IsInstitution: Boolean
        # @param IsCompany: <p>是否企业专线</p>
        # @type IsCompany: Boolean
        # @param IsResidence: <p>是否家用宽带</p>
        # @type IsResidence: Boolean
        # @param IsCloudService: <p>是否云服务</p>
        # @type IsCloudService: Boolean
        # @param IsInfrastructure: <p>是否基础设施</p>
        # @type IsInfrastructure: Boolean
        # @param IsMXServer: <p>是否邮箱服务</p>
        # @type IsMXServer: Boolean

        attr_accessor :ISP, :ASN, :Organization, :IsReserved, :IsGateway, :IsAnycast, :IsMobile, :IsDynamic, :IsEgress, :IsDNS, :IsEducation, :IsInstitution, :IsCompany, :IsResidence, :IsCloudService, :IsInfrastructure, :IsMXServer

        def initialize(isp=nil, asn=nil, organization=nil, isreserved=nil, isgateway=nil, isanycast=nil, ismobile=nil, isdynamic=nil, isegress=nil, isdns=nil, iseducation=nil, isinstitution=nil, iscompany=nil, isresidence=nil, iscloudservice=nil, isinfrastructure=nil, ismxserver=nil)
          @ISP = isp
          @ASN = asn
          @Organization = organization
          @IsReserved = isreserved
          @IsGateway = isgateway
          @IsAnycast = isanycast
          @IsMobile = ismobile
          @IsDynamic = isdynamic
          @IsEgress = isegress
          @IsDNS = isdns
          @IsEducation = iseducation
          @IsInstitution = isinstitution
          @IsCompany = iscompany
          @IsResidence = isresidence
          @IsCloudService = iscloudservice
          @IsInfrastructure = isinfrastructure
          @IsMXServer = ismxserver
        end

        def deserialize(params)
          @ISP = params['ISP']
          @ASN = params['ASN']
          @Organization = params['Organization']
          @IsReserved = params['IsReserved']
          @IsGateway = params['IsGateway']
          @IsAnycast = params['IsAnycast']
          @IsMobile = params['IsMobile']
          @IsDynamic = params['IsDynamic']
          @IsEgress = params['IsEgress']
          @IsDNS = params['IsDNS']
          @IsEducation = params['IsEducation']
          @IsInstitution = params['IsInstitution']
          @IsCompany = params['IsCompany']
          @IsResidence = params['IsResidence']
          @IsCloudService = params['IsCloudService']
          @IsInfrastructure = params['IsInfrastructure']
          @IsMXServer = params['IsMXServer']
        end
      end

      # 邀请事件详情
      class InvitationEvent < TencentCloud::Common::AbstractModel
        # @param InviteeUserId: <p>受邀请人ID</p>
        # @type InviteeUserId: String
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviteePhone: <p>受邀请人电话号码</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type InviteePhone: String
        # @param InvitationCode: <p>邀请码</p>
        # @type InvitationCode: String
        # @param InvitationUrl: <p>邀请链接</p>
        # @type InvitationUrl: String
        # @param InvitationChannel: <p>邀请渠道，如微信、抖音、小红书等</p>
        # @type InvitationChannel: String
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :InviteeUserId, :PromotionId, :PromotionName, :Description, :InviteePhone, :InvitationCode, :InvitationUrl, :InvitationChannel, :Cust

        def initialize(inviteeuserid=nil, promotionid=nil, promotionname=nil, description=nil, inviteephone=nil, invitationcode=nil, invitationurl=nil, invitationchannel=nil, cust=nil)
          @InviteeUserId = inviteeuserid
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviteePhone = inviteephone
          @InvitationCode = invitationcode
          @InvitationUrl = invitationurl
          @InvitationChannel = invitationchannel
          @Cust = cust
        end

        def deserialize(params)
          @InviteeUserId = params['InviteeUserId']
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviteePhone = params['InviteePhone']
          @InvitationCode = params['InvitationCode']
          @InvitationUrl = params['InvitationUrl']
          @InvitationChannel = params['InvitationChannel']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 邀请人信息
      class Inviter < TencentCloud::Common::AbstractModel
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param InviterPhone: <p>邀请人电话号码</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type InviterPhone: String
        # @param InviteCode: <p>邀请码</p>
        # @type InviteCode: String
        # @param InviteChannel: <p>邀请渠道</p>
        # @type InviteChannel: String

        attr_accessor :InviterUserId, :InviterPhone, :InviteCode, :InviteChannel

        def initialize(inviteruserid=nil, inviterphone=nil, invitecode=nil, invitechannel=nil)
          @InviterUserId = inviteruserid
          @InviterPhone = inviterphone
          @InviteCode = invitecode
          @InviteChannel = invitechannel
        end

        def deserialize(params)
          @InviterUserId = params['InviterUserId']
          @InviterPhone = params['InviterPhone']
          @InviteCode = params['InviteCode']
          @InviteChannel = params['InviteChannel']
        end
      end

      # 商品信息
      class Item < TencentCloud::Common::AbstractModel
        # @param ItemId: <p>商品ID</p>
        # @type ItemId: String
        # @param ItemName: <p>商品名称</p>
        # @type ItemName: String
        # @param Category: <p>商品类别</p>
        # @type Category: String
        # @param Price: <p>商品单价</p>
        # @type Price: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param UPC: <p>如果商品有UPC码（Universal Product Code），请提供</p>
        # @type UPC: String
        # @param EAN: <p>如果商品有EAN码（European Article Number），请提供</p>
        # @type EAN: String
        # @param SKU: <p>如果商品有SKU码（Stock Keeping Unit），请提供</p>
        # @type SKU: String
        # @param ISBN: <p>如果商品有ISBN码（International Standard Book Number ），请提供</p>
        # @type ISBN: String
        # @param Brand: <p>商品品牌</p>
        # @type Brand: String
        # @param Quantity: <p>商品数量</p>
        # @type Quantity: Integer
        # @param Manufacturer: <p>生产厂商</p>
        # @type Manufacturer: String
        # @param Tags: <p>商品标签</p>
        # @type Tags: String

        attr_accessor :ItemId, :ItemName, :Category, :Price, :UPC, :EAN, :SKU, :ISBN, :Brand, :Quantity, :Manufacturer, :Tags

        def initialize(itemid=nil, itemname=nil, category=nil, price=nil, upc=nil, ean=nil, sku=nil, isbn=nil, brand=nil, quantity=nil, manufacturer=nil, tags=nil)
          @ItemId = itemid
          @ItemName = itemname
          @Category = category
          @Price = price
          @UPC = upc
          @EAN = ean
          @SKU = sku
          @ISBN = isbn
          @Brand = brand
          @Quantity = quantity
          @Manufacturer = manufacturer
          @Tags = tags
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemName = params['ItemName']
          @Category = params['Category']
          unless params['Price'].nil?
            @Price = Amount.new
            @Price.deserialize(params['Price'])
          end
          @UPC = params['UPC']
          @EAN = params['EAN']
          @SKU = params['SKU']
          @ISBN = params['ISBN']
          @Brand = params['Brand']
          @Quantity = params['Quantity']
          @Manufacturer = params['Manufacturer']
          @Tags = params['Tags']
        end
      end

      # 登录事件详情
      class LoginEvent < TencentCloud::Common::AbstractModel
        # @param UserInfo: <p>用户基础信息</p>
        # @type UserInfo: :class:`Tencentcloud::Rce.v20260130.models.User`
        # @param UserLoginName: <p>用户登录时输入的用户名</p>
        # @type UserLoginName: String
        # @param LoginResult: <p>登录结果</p>
        # @type LoginResult: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :UserInfo, :UserLoginName, :LoginResult, :Cust

        def initialize(userinfo=nil, userloginname=nil, loginresult=nil, cust=nil)
          @UserInfo = userinfo
          @UserLoginName = userloginname
          @LoginResult = loginresult
          @Cust = cust
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = User.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @UserLoginName = params['UserLoginName']
          unless params['LoginResult'].nil?
            @LoginResult = Result.new
            @LoginResult.deserialize(params['LoginResult'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 登出事件详情
      class LogoutEvent < TencentCloud::Common::AbstractModel
        # @param UserInfo: <p>用户基础信息</p>
        # @type UserInfo: :class:`Tencentcloud::Rce.v20260130.models.User`
        # @param UserLoginName: <p>用户登录时输入的用户名</p>
        # @type UserLoginName: String
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :UserInfo, :UserLoginName, :Cust

        def initialize(userinfo=nil, userloginname=nil, cust=nil)
          @UserInfo = userinfo
          @UserLoginName = userloginname
          @Cust = cust
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = User.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @UserLoginName = params['UserLoginName']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 抽奖事件详情
      class LuckyDrawEvent < TencentCloud::Common::AbstractModel
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param LuckyDrawCount: <p>抽奖次数</p><p>单位：次数</p>
        # @type LuckyDrawCount: Integer
        # @param LuckyDrawType: <p>抽奖类型</p>
        # @type LuckyDrawType: String
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PromotionId, :PromotionName, :Description, :InviterUserId, :LuckyDrawCount, :LuckyDrawType, :Cust

        def initialize(promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, luckydrawcount=nil, luckydrawtype=nil, cust=nil)
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @LuckyDrawCount = luckydrawcount
          @LuckyDrawType = luckydrawtype
          @Cust = cust
        end

        def deserialize(params)
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          @LuckyDrawCount = params['LuckyDrawCount']
          @LuckyDrawType = params['LuckyDrawType']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 商家信息
      class Merchant < TencentCloud::Common::AbstractModel
        # @param MerchantId: <p>商家ID</p>
        # @type MerchantId: String
        # @param Name: <p>商家名称</p>
        # @type Name: String
        # @param RegisterTime: <p>商家的注册时间</p><p>参数格式：符合ISO 8601标准的带UTC时区的毫秒级时间</p>
        # @type RegisterTime: String
        # @param Category: <p>商家类别代码</p><p>参数格式：符合ISO 18245标准的4位编号</p>
        # @type Category: String
        # @param Phone: <p>商家电话</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type Phone: String
        # @param Email: <p>商家邮件</p>
        # @type Email: String
        # @param URL: <p>商家店铺网址</p>
        # @type URL: String
        # @param Address: <p>商家地址</p>
        # @type Address: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param Level: <p>商家等级</p>
        # @type Level: String
        # @param BusinessType: <p>经营类型</p><p>枚举值：</p><ul><li>person： 个人</li><li>company： 企业</li></ul>
        # @type BusinessType: String
        # @param GoodsQuantity: <p>商家在售商品数量</p>
        # @type GoodsQuantity: Integer
        # @param HistoricSalesQuantity: <p>商家历史销售数量</p>
        # @type HistoricSalesQuantity: Integer
        # @param HistoricSalesAmount: <p>商家历史销售总额</p>
        # @type HistoricSalesAmount: :class:`Tencentcloud::Rce.v20260130.models.Amount`

        attr_accessor :MerchantId, :Name, :RegisterTime, :Category, :Phone, :Email, :URL, :Address, :Level, :BusinessType, :GoodsQuantity, :HistoricSalesQuantity, :HistoricSalesAmount

        def initialize(merchantid=nil, name=nil, registertime=nil, category=nil, phone=nil, email=nil, url=nil, address=nil, level=nil, businesstype=nil, goodsquantity=nil, historicsalesquantity=nil, historicsalesamount=nil)
          @MerchantId = merchantid
          @Name = name
          @RegisterTime = registertime
          @Category = category
          @Phone = phone
          @Email = email
          @URL = url
          @Address = address
          @Level = level
          @BusinessType = businesstype
          @GoodsQuantity = goodsquantity
          @HistoricSalesQuantity = historicsalesquantity
          @HistoricSalesAmount = historicsalesamount
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @Name = params['Name']
          @RegisterTime = params['RegisterTime']
          @Category = params['Category']
          @Phone = params['Phone']
          @Email = params['Email']
          @URL = params['URL']
          unless params['Address'].nil?
            @Address = Address.new
            @Address.deserialize(params['Address'])
          end
          @Level = params['Level']
          @BusinessType = params['BusinessType']
          @GoodsQuantity = params['GoodsQuantity']
          @HistoricSalesQuantity = params['HistoricSalesQuantity']
          unless params['HistoricSalesAmount'].nil?
            @HistoricSalesAmount = Amount.new
            @HistoricSalesAmount.deserialize(params['HistoricSalesAmount'])
          end
        end
      end

      # 修改账号事件详情
      class ModifyAccountEvent < TencentCloud::Common::AbstractModel
        # @param UserInfo: <p>用户基础信息</p>
        # @type UserInfo: :class:`Tencentcloud::Rce.v20260130.models.User`
        # @param Person: <p>用户填写的个人信息</p>
        # @type Person: :class:`Tencentcloud::Rce.v20260130.models.Person`
        # @param BillingAddress: <p>用户填写的账单地址</p>
        # @type BillingAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param DeliveryAddress: <p>用户填写的收货地址</p>
        # @type DeliveryAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :UserInfo, :Person, :BillingAddress, :DeliveryAddress, :Cust

        def initialize(userinfo=nil, person=nil, billingaddress=nil, deliveryaddress=nil, cust=nil)
          @UserInfo = userinfo
          @Person = person
          @BillingAddress = billingaddress
          @DeliveryAddress = deliveryaddress
          @Cust = cust
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = User.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Person'].nil?
            @Person = Person.new
            @Person.deserialize(params['Person'])
          end
          unless params['BillingAddress'].nil?
            @BillingAddress = Address.new
            @BillingAddress.deserialize(params['BillingAddress'])
          end
          unless params['DeliveryAddress'].nil?
            @DeliveryAddress = Address.new
            @DeliveryAddress.deserialize(params['DeliveryAddress'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 修改密码事件详情
      class ModifyPasswordEvent < TencentCloud::Common::AbstractModel
        # @param Reason: <p>修改原因</p><p>枚举值：</p><ul><li>user_modify： 用户主动修改</li><li>forgot_password： 忘记密码</li><li>forced_reset： 系统强制重置</li></ul>
        # @type Reason: String
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :Reason, :Cust

        def initialize(reason=nil, cust=nil)
          @Reason = reason
          @Cust = cust
        end

        def deserialize(params)
          @Reason = params['Reason']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 订单信息
      class Order < TencentCloud::Common::AbstractModel
        # @param OrderId: <p>订单ID</p>
        # @type OrderId: String
        # @param Amount: <p>订单金额</p>
        # @type Amount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param Items: <p>商品信息</p>
        # @type Items: Array
        # @param Delivery: <p>物流信息</p>
        # @type Delivery: :class:`Tencentcloud::Rce.v20260130.models.Delivery`

        attr_accessor :OrderId, :Amount, :Items, :Delivery

        def initialize(orderid=nil, amount=nil, items=nil, delivery=nil)
          @OrderId = orderid
          @Amount = amount
          @Items = items
          @Delivery = delivery
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          unless params['Amount'].nil?
            @Amount = Amount.new
            @Amount.deserialize(params['Amount'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
          unless params['Delivery'].nil?
            @Delivery = Delivery.new
            @Delivery.deserialize(params['Delivery'])
          end
        end
      end

      # 支付方式，支持多种支付方式
      class PaymentMethod < TencentCloud::Common::AbstractModel
        # @param PaymentType: <p>支付方式</p><p>枚举值：</p><ul><li>cash： 现金</li><li>check： 支票</li><li>credit_card： 信用卡</li><li>debit_card： 借记卡</li><li>crypto_currency： 加密货币</li><li>digital_wallet： 数字钱包</li><li>gift_card： 礼品卡</li><li>points： 积分</li><li>in_app_purchase： APP内购买</li><li>electronic_fund_transfer： 电子资金转账</li><li>financing： 融资</li><li>invoice： 发票</li><li>prepaid_card： 预付卡</li><li>sepa_credit： SEPA信用转账</li></ul>
        # @type PaymentType: String
        # @param PaymentChannel: <p>支付渠道</p>
        # @type PaymentChannel: String
        # @param Card: <p>银行卡信息，当用支付方式是credit_card、debit_card时必填</p>
        # @type Card: :class:`Tencentcloud::Rce.v20260130.models.Card`
        # @param SEPADirectDebitMandate: <p>SEPA直接借记授权</p><p>枚举值：</p><ul><li>true： 是</li><li>false： 否</li></ul>
        # @type SEPADirectDebitMandate: Boolean
        # @param DigitalWallet: <p>数字钱包</p>
        # @type DigitalWallet: :class:`Tencentcloud::Rce.v20260130.models.Wallet`

        attr_accessor :PaymentType, :PaymentChannel, :Card, :SEPADirectDebitMandate, :DigitalWallet

        def initialize(paymenttype=nil, paymentchannel=nil, card=nil, sepadirectdebitmandate=nil, digitalwallet=nil)
          @PaymentType = paymenttype
          @PaymentChannel = paymentchannel
          @Card = card
          @SEPADirectDebitMandate = sepadirectdebitmandate
          @DigitalWallet = digitalwallet
        end

        def deserialize(params)
          @PaymentType = params['PaymentType']
          @PaymentChannel = params['PaymentChannel']
          unless params['Card'].nil?
            @Card = Card.new
            @Card.deserialize(params['Card'])
          end
          @SEPADirectDebitMandate = params['SEPADirectDebitMandate']
          unless params['DigitalWallet'].nil?
            @DigitalWallet = Wallet.new
            @DigitalWallet.deserialize(params['DigitalWallet'])
          end
        end
      end

      # 支付结果
      class PaymentResult < TencentCloud::Common::AbstractModel
        # @param Status: <p>支付状态</p><p>枚举值：</p><ul><li>success： 成功</li><li>failure： 失败</li></ul>
        # @type Status: String
        # @param FailureReason: <p>支付失败原因</p>
        # @type FailureReason: String
        # @param ThreeDomainSecure: <p>是否使用3DS，枚举值：</p><ul><li>是：true</li><li>否：false</li></ul>
        # @type ThreeDomainSecure: Boolean
        # @param ECICode: <p>ECI返回码</p>
        # @type ECICode: String
        # @param AVSCode: <p>AVS响应结果（地址验证）</p>
        # @type AVSCode: String
        # @param CVCCode: <p>CVC验证结果（交易真实性验证）</p>
        # @type CVCCode: String

        attr_accessor :Status, :FailureReason, :ThreeDomainSecure, :ECICode, :AVSCode, :CVCCode

        def initialize(status=nil, failurereason=nil, threedomainsecure=nil, ecicode=nil, avscode=nil, cvccode=nil)
          @Status = status
          @FailureReason = failurereason
          @ThreeDomainSecure = threedomainsecure
          @ECICode = ecicode
          @AVSCode = avscode
          @CVCCode = cvccode
        end

        def deserialize(params)
          @Status = params['Status']
          @FailureReason = params['FailureReason']
          @ThreeDomainSecure = params['ThreeDomainSecure']
          @ECICode = params['ECICode']
          @AVSCode = params['AVSCode']
          @CVCCode = params['CVCCode']
        end
      end

      # 个人信息
      class Person < TencentCloud::Common::AbstractModel
        # @param Name: <p>姓名全称</p>
        # @type Name: String
        # @param Gender: <p>性别</p>
        # @type Gender: String
        # @param Birthday: <p>出生日期</p><p>参数格式：YYYY-MM-DD</p>
        # @type Birthday: String
        # @param Degree: <p>学历</p>
        # @type Degree: String
        # @param Occupation: <p>职业</p>
        # @type Occupation: String

        attr_accessor :Name, :Gender, :Birthday, :Degree, :Occupation

        def initialize(name=nil, gender=nil, birthday=nil, degree=nil, occupation=nil)
          @Name = name
          @Gender = gender
          @Birthday = birthday
          @Degree = degree
          @Occupation = occupation
        end

        def deserialize(params)
          @Name = params['Name']
          @Gender = params['Gender']
          @Birthday = params['Birthday']
          @Degree = params['Degree']
          @Occupation = params['Occupation']
        end
      end

      # 营销活动
      class Promotion < TencentCloud::Common::AbstractModel
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param Coupon: <p>优惠券</p>
        # @type Coupon: :class:`Tencentcloud::Rce.v20260130.models.Coupon`
        # @param CreditPoint: <p>积分</p>
        # @type CreditPoint: :class:`Tencentcloud::Rce.v20260130.models.CreditPoint`

        attr_accessor :PromotionId, :PromotionName, :Description, :InviterUserId, :Coupon, :CreditPoint

        def initialize(promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, coupon=nil, creditpoint=nil)
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @Coupon = coupon
          @CreditPoint = creditpoint
        end

        def deserialize(params)
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          unless params['Coupon'].nil?
            @Coupon = Coupon.new
            @Coupon.deserialize(params['Coupon'])
          end
          unless params['CreditPoint'].nil?
            @CreditPoint = CreditPoint.new
            @CreditPoint.deserialize(params['CreditPoint'])
          end
        end
      end

      # 营销活动码
      class PromotionCode < TencentCloud::Common::AbstractModel
        # @param Id: <p>活动码ID</p>
        # @type Id: String
        # @param Type: <p>活动码类型，例如：qrcode-二维码、barcode-条形码、miniprogram_code-小程序码</p>
        # @type Type: String
        # @param ImageLink: <p>活动码图片URL或链接</p>
        # @type ImageLink: String
        # @param Address: <p>营销活动码使用地址</p>
        # @type Address: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param Items: <p>营销活动码关联的商品</p>
        # @type Items: Array

        attr_accessor :Id, :Type, :ImageLink, :Address, :Items

        def initialize(id=nil, type=nil, imagelink=nil, address=nil, items=nil)
          @Id = id
          @Type = type
          @ImageLink = imagelink
          @Address = address
          @Items = items
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @ImageLink = params['ImageLink']
          unless params['Address'].nil?
            @Address = Address.new
            @Address.deserialize(params['Address'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
        end
      end

      # 兑奖事件详情
      class RedeemEvent < TencentCloud::Common::AbstractModel
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param Order: <p>兑奖关联的订单信息</p>
        # @type Order: :class:`Tencentcloud::Rce.v20260130.models.Order`
        # @param Result: <p>兑奖结果</p>
        # @type Result: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PromotionId, :PromotionName, :Description, :InviterUserId, :Order, :Result, :Cust

        def initialize(promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, order=nil, result=nil, cust=nil)
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @Order = order
          @Result = result
          @Cust = cust
        end

        def deserialize(params)
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          unless params['Order'].nil?
            @Order = Order.new
            @Order.deserialize(params['Order'])
          end
          unless params['Result'].nil?
            @Result = Result.new
            @Result.deserialize(params['Result'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 注册事件详情
      class RegisterEvent < TencentCloud::Common::AbstractModel
        # @param RegisterResult: <p>注册结果</p>
        # @type RegisterResult: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param UserInfo: <p>用户基础信息</p>
        # @type UserInfo: :class:`Tencentcloud::Rce.v20260130.models.User`
        # @param Person: <p>用户注册时填写的个人信息</p>
        # @type Person: :class:`Tencentcloud::Rce.v20260130.models.Person`
        # @param BillingAddress: <p>用户注册时填写的账单地址</p>
        # @type BillingAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param DeliveryAddress: <p>用户注册时填写的收货地址</p>
        # @type DeliveryAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param Inviter: <p>邀请人信息</p>
        # @type Inviter: :class:`Tencentcloud::Rce.v20260130.models.Inviter`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :RegisterResult, :UserInfo, :Person, :BillingAddress, :DeliveryAddress, :Inviter, :Cust

        def initialize(registerresult=nil, userinfo=nil, person=nil, billingaddress=nil, deliveryaddress=nil, inviter=nil, cust=nil)
          @RegisterResult = registerresult
          @UserInfo = userinfo
          @Person = person
          @BillingAddress = billingaddress
          @DeliveryAddress = deliveryaddress
          @Inviter = inviter
          @Cust = cust
        end

        def deserialize(params)
          unless params['RegisterResult'].nil?
            @RegisterResult = Result.new
            @RegisterResult.deserialize(params['RegisterResult'])
          end
          unless params['UserInfo'].nil?
            @UserInfo = User.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Person'].nil?
            @Person = Person.new
            @Person.deserialize(params['Person'])
          end
          unless params['BillingAddress'].nil?
            @BillingAddress = Address.new
            @BillingAddress.deserialize(params['BillingAddress'])
          end
          unless params['DeliveryAddress'].nil?
            @DeliveryAddress = Address.new
            @DeliveryAddress.deserialize(params['DeliveryAddress'])
          end
          unless params['Inviter'].nil?
            @Inviter = Inviter.new
            @Inviter.deserialize(params['Inviter'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # ReportEvent请求参数结构体
      class ReportEventRequest < TencentCloud::Common::AbstractModel
        # @param EventCode: <p>事件码。用于指定业务接入的场景节点。</p><p> 账号保护产品下的标准事件包含：</p><ul><li> login： 登录<p></p></li> <li>register： 注册 </li><li>sms： 短信 </li><li>logout： 登出 </li><li>modify_account： 修改账号 </li><li>modify_password： 修改密码 </li><li>security_verification： 安全验证</li></ul><p>交易保护产品下的标准事件包含：</p><ul><li>create_order： 创建订单 </li><li>transaction： 交易支付 </li><li>charge_back： 拒付</li></ul><p>营销保护产品下的标准事件包含：</p><ul><li>add_promotion： 参加营销活动 </li><li>redeem： 兑奖 </li><li>withdraw： 提现 </li><li>cust_event： 自定义事件，cust_xxx </li><li>scan_code： 扫码 </li><li>lucky_draw： 抽奖 </li><li>task： 做任务 </li><li>invitation： 邀请 </li><li>claim_red_packet： 领红包 </li><li>browse： 浏览</li></ul><p>自定义事件可与RCE约定后进行风险评估</p>
        # @type EventCode: String
        # @param EventTime: <p>事件的发生时间</p><p>参数格式：符合ISO 8601标准的带UTC时区的毫秒级时间</p>
        # @type EventTime: String
        # @param SessionId: <p>用户当前会话 ID， 用于关联用户登录前后的动作，如果没有传UserId，则SessionId必传，如缺失则可填充空字符串</p>
        # @type SessionId: String
        # @param DeviceToken: <p>用户设备指纹token标识，在您的网站或者应用程序中集成设备指纹的SDK后获取</p>
        # @type DeviceToken: String
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String
        # @param EventDetail: <p>事件详情，根据您输入的事件码传入对应的事件信息</p>
        # @type EventDetail: :class:`Tencentcloud::Rce.v20260130.models.EventDetail`
        # @param UserId: <p>用户在您系统中的唯一ID</p>
        # @type UserId: String
        # @param UserEmail: <p>用户邮箱</p>
        # @type UserEmail: String
        # @param UserPhone: <p>用户提供的联系方式</p><p>参数格式：符合E.164标准的带“+”、地区编码和号码的格式</p>
        # @type UserPhone: String
        # @param Browser: <p>web浏览器相关信息，若您已集成我们的设备指纹SDK，则无需传入此字段</p>
        # @type Browser: :class:`Tencentcloud::Rce.v20260130.models.Browser`
        # @param App: <p>应用程序、操作系统和移动设备详细信息，若您已集成我们的设备指纹SDK，则无需传入此字段</p>
        # @type App: :class:`Tencentcloud::Rce.v20260130.models.App`
        # @param DataAuthorization: <p>数据授权信息，境内地域必填</p>
        # @type DataAuthorization: :class:`Tencentcloud::Rce.v20260130.models.DataAuthorization`
        # @param UserPhoneEncrypt: <p>手机号码加密方式，境内地域必填</p><p>枚举值：</p><ul><li>md5： md5加密</li><li>plain： 明文</li></ul>
        # @type UserPhoneEncrypt: String
        # @param WeChatOpenId: <p>微信开放账号</p>
        # @type WeChatOpenId: String
        # @param QQOpenId: <p>QQ开放账号</p>
        # @type QQOpenId: String
        # @param QQAppId: <p>QQ应用ID，当传入QQ开放账号时，该字段必填，QQ分配给网站或应用的AppId，用来唯一标识网站或应用</p>
        # @type QQAppId: String

        attr_accessor :EventCode, :EventTime, :SessionId, :DeviceToken, :UserIp, :EventDetail, :UserId, :UserEmail, :UserPhone, :Browser, :App, :DataAuthorization, :UserPhoneEncrypt, :WeChatOpenId, :QQOpenId, :QQAppId

        def initialize(eventcode=nil, eventtime=nil, sessionid=nil, devicetoken=nil, userip=nil, eventdetail=nil, userid=nil, useremail=nil, userphone=nil, browser=nil, app=nil, dataauthorization=nil, userphoneencrypt=nil, wechatopenid=nil, qqopenid=nil, qqappid=nil)
          @EventCode = eventcode
          @EventTime = eventtime
          @SessionId = sessionid
          @DeviceToken = devicetoken
          @UserIp = userip
          @EventDetail = eventdetail
          @UserId = userid
          @UserEmail = useremail
          @UserPhone = userphone
          @Browser = browser
          @App = app
          @DataAuthorization = dataauthorization
          @UserPhoneEncrypt = userphoneencrypt
          @WeChatOpenId = wechatopenid
          @QQOpenId = qqopenid
          @QQAppId = qqappid
        end

        def deserialize(params)
          @EventCode = params['EventCode']
          @EventTime = params['EventTime']
          @SessionId = params['SessionId']
          @DeviceToken = params['DeviceToken']
          @UserIp = params['UserIp']
          unless params['EventDetail'].nil?
            @EventDetail = EventDetail.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @UserId = params['UserId']
          @UserEmail = params['UserEmail']
          @UserPhone = params['UserPhone']
          unless params['Browser'].nil?
            @Browser = Browser.new
            @Browser.deserialize(params['Browser'])
          end
          unless params['App'].nil?
            @App = App.new
            @App.deserialize(params['App'])
          end
          unless params['DataAuthorization'].nil?
            @DataAuthorization = DataAuthorization.new
            @DataAuthorization.deserialize(params['DataAuthorization'])
          end
          @UserPhoneEncrypt = params['UserPhoneEncrypt']
          @WeChatOpenId = params['WeChatOpenId']
          @QQOpenId = params['QQOpenId']
          @QQAppId = params['QQAppId']
        end
      end

      # ReportEvent返回参数结构体
      class ReportEventResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 事件结果
      class Result < TencentCloud::Common::AbstractModel
        # @param Status: <p>实际是否完成状态</p><p>枚举值：</p><ul><li>success： 成功</li><li>failure： 失败</li></ul>
        # @type Status: String
        # @param FailureReason: <p>失败原因</p>
        # @type FailureReason: String

        attr_accessor :Status, :FailureReason

        def initialize(status=nil, failurereason=nil)
          @Status = status
          @FailureReason = failurereason
        end

        def deserialize(params)
          @Status = params['Status']
          @FailureReason = params['FailureReason']
        end
      end

      # 风险标签
      class RiskLabel < TencentCloud::Common::AbstractModel
        # @param Id: <p>风险ID</p>
        # @type Id: String
        # @param Reason: <p>风险描述</p>
        # @type Reason: String

        attr_accessor :Id, :Reason

        def initialize(id=nil, reason=nil)
          @Id = id
          @Reason = reason
        end

        def deserialize(params)
          @Id = params['Id']
          @Reason = params['Reason']
        end
      end

      # 短信事件详情
      class SMSEvent < TencentCloud::Common::AbstractModel
        # @param UserInfo: <p>用户基础信息</p>
        # @type UserInfo: :class:`Tencentcloud::Rce.v20260130.models.User`
        # @param SMSId: <p>本次短信发送标识 ID</p>
        # @type SMSId: String
        # @param ReceivedTime: <p>用户实际完成验证码时间</p><p>参数格式：符合ISO 8601标准的带UTC时区的毫秒级时间</p>
        # @type ReceivedTime: String
        # @param Action: <p>记录用户收到短信的动作</p><ul><li>no_action：用户无动作</li><li>safe：用户确认本人操作</li><li>compromised：用户反馈为第三方操作</li></ul>
        # @type Action: String
        # @param SMSResult: <p>短信回执结果</p>
        # @type SMSResult: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :UserInfo, :SMSId, :ReceivedTime, :Action, :SMSResult, :Cust

        def initialize(userinfo=nil, smsid=nil, receivedtime=nil, action=nil, smsresult=nil, cust=nil)
          @UserInfo = userinfo
          @SMSId = smsid
          @ReceivedTime = receivedtime
          @Action = action
          @SMSResult = smsresult
          @Cust = cust
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = User.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @SMSId = params['SMSId']
          @ReceivedTime = params['ReceivedTime']
          @Action = params['Action']
          unless params['SMSResult'].nil?
            @SMSResult = Result.new
            @SMSResult.deserialize(params['SMSResult'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 扫码事件详情
      class ScanCodeEvent < TencentCloud::Common::AbstractModel
        # @param PromotionCode: <p>营销活动码</p>
        # @type PromotionCode: :class:`Tencentcloud::Rce.v20260130.models.PromotionCode`
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组， 示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PromotionCode, :PromotionId, :PromotionName, :Description, :InviterUserId, :Cust

        def initialize(promotioncode=nil, promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, cust=nil)
          @PromotionCode = promotioncode
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @Cust = cust
        end

        def deserialize(params)
          unless params['PromotionCode'].nil?
            @PromotionCode = PromotionCode.new
            @PromotionCode.deserialize(params['PromotionCode'])
          end
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 风险分
      class Score < TencentCloud::Common::AbstractModel
        # @param RiskScore: <p>风险分值，范围[1, 1000]，分值越大，风险越高</p>
        # @type RiskScore: Integer
        # @param RiskLabels: <p>风险标签</p>
        # @type RiskLabels: Array

        attr_accessor :RiskScore, :RiskLabels

        def initialize(riskscore=nil, risklabels=nil)
          @RiskScore = riskscore
          @RiskLabels = risklabels
        end

        def deserialize(params)
          @RiskScore = params['RiskScore']
          unless params['RiskLabels'].nil?
            @RiskLabels = []
            params['RiskLabels'].each do |i|
              risklabel_tmp = RiskLabel.new
              risklabel_tmp.deserialize(i)
              @RiskLabels << risklabel_tmp
            end
          end
        end
      end

      # 安全验证事件详情
      class SecurityVerificationEvent < TencentCloud::Common::AbstractModel
        # @param VerificationEvent: <p>安全验证所处的事件类型</p><p>枚举值：</p><ul><li>register： 注册</li><li>login： 登录</li><li>modify_account： 修改账号</li><li>modify_password： 修改密码</li><li>create_order： 创建订单</li><li>transaction： 交易支付</li><li>modify_order： 修改订单</li><li>withdraw： 提现</li><li>add_promotion： 参加营销活动</li><li>redeem： 兑奖</li></ul>
        # @type VerificationEvent: String
        # @param VerificationType: <p>安全验证类型，sms-短信、phone_call-电话、email-邮件、captcha-验证码、shared_knowledge-共享知识、face-人脸、fingerprint-指纹等</p>
        # @type VerificationType: String
        # @param VerificationContent: <p>安全验证的内容，例如：用于验证的电话号码、邮件、验证码或者问题，当安全验证类型是sms、phone_call、email、captcha、shared_knowledge时输入</p>
        # @type VerificationContent: String
        # @param VerificationResult: <p>安全验证结果</p>
        # @type VerificationResult: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :VerificationEvent, :VerificationType, :VerificationContent, :VerificationResult, :Cust

        def initialize(verificationevent=nil, verificationtype=nil, verificationcontent=nil, verificationresult=nil, cust=nil)
          @VerificationEvent = verificationevent
          @VerificationType = verificationtype
          @VerificationContent = verificationcontent
          @VerificationResult = verificationresult
          @Cust = cust
        end

        def deserialize(params)
          @VerificationEvent = params['VerificationEvent']
          @VerificationType = params['VerificationType']
          @VerificationContent = params['VerificationContent']
          unless params['VerificationResult'].nil?
            @VerificationResult = Result.new
            @VerificationResult.deserialize(params['VerificationResult'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 做任务事件详情
      class TaskEvent < TencentCloud::Common::AbstractModel
        # @param PromotionId: <p>营销活动ID</p>
        # @type PromotionId: String
        # @param PromotionName: <p>营销活动名称</p>
        # @type PromotionName: String
        # @param Description: <p>营销活动描述</p>
        # @type Description: String
        # @param InviterUserId: <p>邀请人ID</p>
        # @type InviterUserId: String
        # @param TaskId: <p>任务ID</p>
        # @type TaskId: String
        # @param TaskName: <p>任务名称</p>
        # @type TaskName: String
        # @param TaskType: <p>任务类型，如签到打卡、观看广告、累计步数等</p>
        # @type TaskType: String
        # @param TaskCostTime: <p>任务完成耗时</p><p>单位：毫秒</p>
        # @type TaskCostTime: Integer
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :PromotionId, :PromotionName, :Description, :InviterUserId, :TaskId, :TaskName, :TaskType, :TaskCostTime, :Cust

        def initialize(promotionid=nil, promotionname=nil, description=nil, inviteruserid=nil, taskid=nil, taskname=nil, tasktype=nil, taskcosttime=nil, cust=nil)
          @PromotionId = promotionid
          @PromotionName = promotionname
          @Description = description
          @InviterUserId = inviteruserid
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @TaskCostTime = taskcosttime
          @Cust = cust
        end

        def deserialize(params)
          @PromotionId = params['PromotionId']
          @PromotionName = params['PromotionName']
          @Description = params['Description']
          @InviterUserId = params['InviterUserId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @TaskCostTime = params['TaskCostTime']
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 交易事件详情
      class TransactionEvent < TencentCloud::Common::AbstractModel
        # @param TransactionId: <p>交易唯一标识</p>
        # @type TransactionId: String
        # @param OrderId: <p>您系统中的订单 ID，当一笔交易关联多个订单（合并支付）时请输入所有订单ID</p>
        # @type OrderId: Array
        # @param PaymentAmount: <p>交易金额</p>
        # @type PaymentAmount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param PaymentMethod: <p>支付方式，支持多种支付方式</p>
        # @type PaymentMethod: :class:`Tencentcloud::Rce.v20260130.models.PaymentMethod`
        # @param TransactionType: <p>交易类型</p><p>枚举值：</p><ul><li>sale： 一次性完成授权与扣款（最常见）</li><li>authorize： 仅授权（冻结金额）</li><li>capture： 执行扣款（在授权后）</li><li>void： 取消待处理的授权或扣款</li><li>refund： 退款（部分或全部）</li><li>deposit： 向账户存款</li><li>withdrawal： 从账户提现</li><li>transfer： 账户间转账</li><li>buy： 购买资产（如加密货币）</li><li>sell： 出售资产</li><li>send： 发送资金/资产（如跨钱包转账）</li><li>receive： 接收资金/资产</li></ul><p>默认值：sale</p>
        # @type TransactionType: String
        # @param Billing: <p>账单信息</p>
        # @type Billing: :class:`Tencentcloud::Rce.v20260130.models.Billing`
        # @param Delivery: <p>物流信息</p>
        # @type Delivery: :class:`Tencentcloud::Rce.v20260130.models.Delivery`
        # @param Merchant: <p>商家信息</p>
        # @type Merchant: :class:`Tencentcloud::Rce.v20260130.models.Merchant`
        # @param PaymentResult: <p>支付结果</p>
        # @type PaymentResult: :class:`Tencentcloud::Rce.v20260130.models.PaymentResult`
        # @param TransferRecipientUserId: <p>接收方的用户ID，适用于 transfer 交易类型</p>
        # @type TransferRecipientUserId: String
        # @param TransferSentAddress: <p>发送方的物理地址，适用于 transfer 交易类型</p>
        # @type TransferSentAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param TransferReceivedAddress: <p>接收方的物理地址，适用于 transfer 交易类型</p>
        # @type TransferReceivedAddress: :class:`Tencentcloud::Rce.v20260130.models.Address`
        # @param DigitalOrders: <p>数字订单列表</p>
        # @type DigitalOrders: Array
        # @param ReceiverWallet: <p>接收加密货币的钱包</p>
        # @type ReceiverWallet: :class:`Tencentcloud::Rce.v20260130.models.Wallet`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :TransactionId, :OrderId, :PaymentAmount, :PaymentMethod, :TransactionType, :Billing, :Delivery, :Merchant, :PaymentResult, :TransferRecipientUserId, :TransferSentAddress, :TransferReceivedAddress, :DigitalOrders, :ReceiverWallet, :Cust

        def initialize(transactionid=nil, orderid=nil, paymentamount=nil, paymentmethod=nil, transactiontype=nil, billing=nil, delivery=nil, merchant=nil, paymentresult=nil, transferrecipientuserid=nil, transfersentaddress=nil, transferreceivedaddress=nil, digitalorders=nil, receiverwallet=nil, cust=nil)
          @TransactionId = transactionid
          @OrderId = orderid
          @PaymentAmount = paymentamount
          @PaymentMethod = paymentmethod
          @TransactionType = transactiontype
          @Billing = billing
          @Delivery = delivery
          @Merchant = merchant
          @PaymentResult = paymentresult
          @TransferRecipientUserId = transferrecipientuserid
          @TransferSentAddress = transfersentaddress
          @TransferReceivedAddress = transferreceivedaddress
          @DigitalOrders = digitalorders
          @ReceiverWallet = receiverwallet
          @Cust = cust
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @OrderId = params['OrderId']
          unless params['PaymentAmount'].nil?
            @PaymentAmount = Amount.new
            @PaymentAmount.deserialize(params['PaymentAmount'])
          end
          unless params['PaymentMethod'].nil?
            @PaymentMethod = PaymentMethod.new
            @PaymentMethod.deserialize(params['PaymentMethod'])
          end
          @TransactionType = params['TransactionType']
          unless params['Billing'].nil?
            @Billing = Billing.new
            @Billing.deserialize(params['Billing'])
          end
          unless params['Delivery'].nil?
            @Delivery = Delivery.new
            @Delivery.deserialize(params['Delivery'])
          end
          unless params['Merchant'].nil?
            @Merchant = Merchant.new
            @Merchant.deserialize(params['Merchant'])
          end
          unless params['PaymentResult'].nil?
            @PaymentResult = PaymentResult.new
            @PaymentResult.deserialize(params['PaymentResult'])
          end
          @TransferRecipientUserId = params['TransferRecipientUserId']
          unless params['TransferSentAddress'].nil?
            @TransferSentAddress = Address.new
            @TransferSentAddress.deserialize(params['TransferSentAddress'])
          end
          unless params['TransferReceivedAddress'].nil?
            @TransferReceivedAddress = Address.new
            @TransferReceivedAddress.deserialize(params['TransferReceivedAddress'])
          end
          unless params['DigitalOrders'].nil?
            @DigitalOrders = []
            params['DigitalOrders'].each do |i|
              digitalorder_tmp = DigitalOrder.new
              digitalorder_tmp.deserialize(i)
              @DigitalOrders << digitalorder_tmp
            end
          end
          unless params['ReceiverWallet'].nil?
            @ReceiverWallet = Wallet.new
            @ReceiverWallet.deserialize(params['ReceiverWallet'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

      # 账号信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserLevel: <p>用户等级</p>
        # @type UserLevel: String
        # @param UserPoint: <p>用户积分</p>
        # @type UserPoint: :class:`Tencentcloud::Rce.v20260130.models.CreditPoint`
        # @param UserType: <p>用户类型</p>
        # @type UserType: String

        attr_accessor :UserLevel, :UserPoint, :UserType

        def initialize(userlevel=nil, userpoint=nil, usertype=nil)
          @UserLevel = userlevel
          @UserPoint = userpoint
          @UserType = usertype
        end

        def deserialize(params)
          @UserLevel = params['UserLevel']
          unless params['UserPoint'].nil?
            @UserPoint = CreditPoint.new
            @UserPoint.deserialize(params['UserPoint'])
          end
          @UserType = params['UserType']
        end
      end

      # 数字钱包
      class Wallet < TencentCloud::Common::AbstractModel
        # @param WalletType: <p>钱包类型</p><p>枚举值：</p><ul><li>crypto： 加密货币</li><li>digital： 数字货币</li><li>fiat： 法币</li></ul>
        # @type WalletType: String
        # @param WalletAddress: <p>钱包地址，通常为钱包的唯一标识</p>
        # @type WalletAddress: String
        # @param WalletHolderName: <p>钱包归属人姓名</p>
        # @type WalletHolderName: String
        # @param WalletProvider: <p>钱包供应商，wechat、alipay、paypal等</p>
        # @type WalletProvider: String

        attr_accessor :WalletType, :WalletAddress, :WalletHolderName, :WalletProvider

        def initialize(wallettype=nil, walletaddress=nil, walletholdername=nil, walletprovider=nil)
          @WalletType = wallettype
          @WalletAddress = walletaddress
          @WalletHolderName = walletholdername
          @WalletProvider = walletprovider
        end

        def deserialize(params)
          @WalletType = params['WalletType']
          @WalletAddress = params['WalletAddress']
          @WalletHolderName = params['WalletHolderName']
          @WalletProvider = params['WalletProvider']
        end
      end

      # 提现事件详情
      class WithdrawEvent < TencentCloud::Common::AbstractModel
        # @param Amount: <p>提现金额</p>
        # @type Amount: :class:`Tencentcloud::Rce.v20260130.models.Amount`
        # @param Method: <p>提现方式</p><p>枚举值：</p><ul><li>card： 银行卡</li><li>wallet： 电子钱包</li></ul>
        # @type Method: String
        # @param Card: <p>提现银行卡，当提现方式是card时必填</p>
        # @type Card: :class:`Tencentcloud::Rce.v20260130.models.Card`
        # @param Wallet: <p>提现数字钱包，当提现方式是wallet时必填</p>
        # @type Wallet: :class:`Tencentcloud::Rce.v20260130.models.Wallet`
        # @param Result: <p>提现结果</p>
        # @type Result: :class:`Tencentcloud::Rce.v20260130.models.Result`
        # @param Cust: <p>与RCE约定的定制化信息，为K:V 格式的对象数组，示例：[{&quot;Key&quot;: &quot;ApproverName&quot;, &quot;Value&quot;: &quot;bob&quot;},{&quot;Key&quot;:&quot;ApproverPhone&quot;,&quot;Value&quot;: &quot;+86131****5678&quot;}]</p>
        # @type Cust: Array

        attr_accessor :Amount, :Method, :Card, :Wallet, :Result, :Cust

        def initialize(amount=nil, method=nil, card=nil, wallet=nil, result=nil, cust=nil)
          @Amount = amount
          @Method = method
          @Card = card
          @Wallet = wallet
          @Result = result
          @Cust = cust
        end

        def deserialize(params)
          unless params['Amount'].nil?
            @Amount = Amount.new
            @Amount.deserialize(params['Amount'])
          end
          @Method = params['Method']
          unless params['Card'].nil?
            @Card = Card.new
            @Card.deserialize(params['Card'])
          end
          unless params['Wallet'].nil?
            @Wallet = Wallet.new
            @Wallet.deserialize(params['Wallet'])
          end
          unless params['Result'].nil?
            @Result = Result.new
            @Result.deserialize(params['Result'])
          end
          unless params['Cust'].nil?
            @Cust = []
            params['Cust'].each do |i|
              cust_tmp = Cust.new
              cust_tmp.deserialize(i)
              @Cust << cust_tmp
            end
          end
        end
      end

    end
  end
end

