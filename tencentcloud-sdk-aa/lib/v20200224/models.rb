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
  module Aa
    module V20200224
      # 账号信息。
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountType: 用户账号类型（默认开通 QQ 开放账号、手机号，手机 MD5 账号类型查询。如需使用微信开放账号，则需要 提交工单 由腾讯云进行资格审核，审核通过后方可正常使用微信开放账号）：
        # 1：QQ开放账号。
        # 2：微信开放账号。
        # 4：手机号（暂仅支持国内手机号）。
        # 8：设备号（imei/imeiMD5/idfa/idfaMd5）。
        # 0：其他。
        # 10004：手机号MD5（标准中国大陆手机号11位，MD5后取32位小写值）
        # @type AccountType: Integer
        # @param QQAccount: QQ账号信息，AccountType是1时，该字段必填。
        # @type QQAccount: :class:`Tencentcloud::Aa.v20200224.models.QQAccountInfo`
        # @param WeChatAccount: 微信账号信息，AccountType是2时，该字段必填。
        # @type WeChatAccount: :class:`Tencentcloud::Aa.v20200224.models.WeChatAccountInfo`
        # @param OtherAccount: 其它账号信息，AccountType是0、4、8或10004时，该字段必填。
        # @type OtherAccount: :class:`Tencentcloud::Aa.v20200224.models.OtherAccountInfo`

        attr_accessor :AccountType, :QQAccount, :WeChatAccount, :OtherAccount
        
        def initialize(accounttype=nil, qqaccount=nil, wechataccount=nil, otheraccount=nil)
          @AccountType = accounttype
          @QQAccount = qqaccount
          @WeChatAccount = wechataccount
          @OtherAccount = otheraccount
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          unless params['QQAccount'].nil?
            @QQAccount = QQAccountInfo.new.deserialize(params[QQAccount])
          end
          unless params['WeChatAccount'].nil?
            @WeChatAccount = WeChatAccountInfo.new.deserialize(params[WeChatAccount])
          end
          unless params['OtherAccount'].nil?
            @OtherAccount = OtherAccountInfo.new.deserialize(params[OtherAccount])
          end
        end
      end

      # 网赚防刷相关参数
      class CrowdAntiRushInfo < TencentCloud::Common::AbstractModel
        # @param SponsorOpenId: 助力场景建议填写：活动发起人微信OpenID。
        # @type SponsorOpenId: String
        # @param SponsorDeviceNumber: 助力场景建议填写：发起人设备号。
        # @type SponsorDeviceNumber: String
        # @param SponsorPhone: 助力场景建议填写：发起人手机号。
        # @type SponsorPhone: String
        # @param SponsorIp: 助力场景建议填写：发起人IP。
        # @type SponsorIp: String
        # @param CampaignUrl: 助力场景建议填写：活动链接。
        # @type CampaignUrl: String

        attr_accessor :SponsorOpenId, :SponsorDeviceNumber, :SponsorPhone, :SponsorIp, :CampaignUrl
        
        def initialize(sponsoropenid=nil, sponsordevicenumber=nil, sponsorphone=nil, sponsorip=nil, campaignurl=nil)
          @SponsorOpenId = sponsoropenid
          @SponsorDeviceNumber = sponsordevicenumber
          @SponsorPhone = sponsorphone
          @SponsorIp = sponsorip
          @CampaignUrl = campaignurl
        end

        def deserialize(params)
          @SponsorOpenId = params['SponsorOpenId']
          @SponsorDeviceNumber = params['SponsorDeviceNumber']
          @SponsorPhone = params['SponsorPhone']
          @SponsorIp = params['SponsorIp']
          @CampaignUrl = params['CampaignUrl']
        end
      end

      # 活动防刷高级版业务入参。
      class InputActivityAntiRushAdvanced < TencentCloud::Common::AbstractModel
        # @param Account: 账号信息。
        # @type Account: :class:`Tencentcloud::Aa.v20200224.models.AccountInfo`
        # @param UserIp: 用户IP（外网有效IP地址）。
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳，单位秒（格林威治时间精确到秒，如1501590972）。
        # @type PostTime: Integer
        # @param Sponsor: 可选填写。详情请跳转至SponsorInfo查看。
        # @type Sponsor: :class:`Tencentcloud::Aa.v20200224.models.SponsorInfo`
        # @param OnlineScam: 可选填写。详情请跳转至OnlineScamInfo查看。
        # @type OnlineScam: :class:`Tencentcloud::Aa.v20200224.models.OnlineScamInfo`
        # @param BusinessId: 业务ID。网站或应用在多个业务中使用此服务，通过此ID区分统计数据。
        # @type BusinessId: Integer
        # @param Nickname: 昵称，UTF-8 编码。
        # @type Nickname: String
        # @param EmailAddress: 用户邮箱地址（非系统自动生成）。
        # @type EmailAddress: String
        # @param CheckDevice: 是否识别设备异常：
        # 0：不识别。
        # 1：识别。
        # @type CheckDevice: Integer
        # @param CookieHash: 用户HTTP请求中的Cookie进行2次hash的值，只要保证相同Cookie的hash值一致即可。
        # @type CookieHash: String
        # @param Referer: 用户HTTP请求的Referer值。
        # @type Referer: String
        # @param UserAgent: 用户HTTP请求的User-Agent值。
        # @type UserAgent: String
        # @param XForwardedFor: 用户HTTP请求的X-Forwarded-For值。
        # @type XForwardedFor: String
        # @param MacAddress: MAC地址或设备唯一标识。
        # @type MacAddress: String
        # @param VendorId: 手机制造商ID，如果手机注册，请带上此信息。
        # @type VendorId: String

        attr_accessor :Account, :UserIp, :PostTime, :Sponsor, :OnlineScam, :BusinessId, :Nickname, :EmailAddress, :CheckDevice, :CookieHash, :Referer, :UserAgent, :XForwardedFor, :MacAddress, :VendorId
        
        def initialize(account=nil, userip=nil, posttime=nil, sponsor=nil, onlinescam=nil, businessid=nil, nickname=nil, emailaddress=nil, checkdevice=nil, cookiehash=nil, referer=nil, useragent=nil, xforwardedfor=nil, macaddress=nil, vendorid=nil)
          @Account = account
          @UserIp = userip
          @PostTime = posttime
          @Sponsor = sponsor
          @OnlineScam = onlinescam
          @BusinessId = businessid
          @Nickname = nickname
          @EmailAddress = emailaddress
          @CheckDevice = checkdevice
          @CookieHash = cookiehash
          @Referer = referer
          @UserAgent = useragent
          @XForwardedFor = xforwardedfor
          @MacAddress = macaddress
          @VendorId = vendorid
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = AccountInfo.new.deserialize(params[Account])
          end
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
          unless params['Sponsor'].nil?
            @Sponsor = SponsorInfo.new.deserialize(params[Sponsor])
          end
          unless params['OnlineScam'].nil?
            @OnlineScam = OnlineScamInfo.new.deserialize(params[OnlineScam])
          end
          @BusinessId = params['BusinessId']
          @Nickname = params['Nickname']
          @EmailAddress = params['EmailAddress']
          @CheckDevice = params['CheckDevice']
          @CookieHash = params['CookieHash']
          @Referer = params['Referer']
          @UserAgent = params['UserAgent']
          @XForwardedFor = params['XForwardedFor']
          @MacAddress = params['MacAddress']
          @VendorId = params['VendorId']
        end
      end

      # 入参的详细参数信息
      class InputDetails < TencentCloud::Common::AbstractModel
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param FieldValue: 字段值
        # @type FieldValue: String

        attr_accessor :FieldName, :FieldValue
        
        def initialize(fieldname=nil, fieldvalue=nil)
          @FieldName = fieldname
          @FieldValue = fieldvalue
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @FieldValue = params['FieldValue']
        end
      end

      # 营销风控入参
      class InputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Account: 账号信息。
        # @type Account: :class:`Tencentcloud::Aa.v20200224.models.AccountInfo`
        # @param UserIp: 登录来源的外网IP
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳，单位秒（格林威治时间精确到秒，如1501590972）。
        # @type PostTime: Integer
        # @param SceneType: 场景类型。(后续不再支持，请使用SceneCode字段)
        # 1：活动防刷
        # 2：登录保护
        # 3：注册保护
        # 4：活动防刷高级版（网赚）
        # @type SceneType: Integer
        # @param UserId: 用户唯一标识。
        # @type UserId: String
        # @param DeviceToken: 设备指纹token。
        # @type DeviceToken: String
        # @param DeviceBusinessId: 设备指纹BusinessId
        # @type DeviceBusinessId: Integer
        # @param BusinessId: 业务ID。网站或应用在多个业务中使用此服务，通过此ID区分统计数据。
        # @type BusinessId: Integer
        # @param Nickname: 昵称，UTF-8 编码。
        # @type Nickname: String
        # @param EmailAddress: 用户邮箱地址（非系统自动生成）。
        # @type EmailAddress: String
        # @param CheckDevice: 是否识别设备异常：
        # 0：不识别。
        # 1：识别。
        # @type CheckDevice: Integer
        # @param CookieHash: 用户HTTP请求中的Cookie进行2次hash的值，只要保证相同Cookie的hash值一致即可。
        # @type CookieHash: String
        # @param Referer: 用户HTTP请求的Referer值。
        # @type Referer: String
        # @param UserAgent: 用户HTTP请求的User-Agent值。
        # @type UserAgent: String
        # @param XForwardedFor: 用户HTTP请求的X-Forwarded-For值。
        # @type XForwardedFor: String
        # @param MacAddress: MAC地址或设备唯一标识。
        # @type MacAddress: String
        # @param CrowdAntiRush: 网赚防刷相关信息。SceneType为4时填写。
        # @type CrowdAntiRush: :class:`Tencentcloud::Aa.v20200224.models.CrowdAntiRushInfo`
        # @param SceneCode: 场景Code，控制台上获取
        # @type SceneCode: String
        # @param Details: 详细信息
        # @type Details: Array
        # @param DeviceType: 设备类型：
        # 1：Android
        # 2：IOS
        # @type DeviceType: Integer

        attr_accessor :Account, :UserIp, :PostTime, :SceneType, :UserId, :DeviceToken, :DeviceBusinessId, :BusinessId, :Nickname, :EmailAddress, :CheckDevice, :CookieHash, :Referer, :UserAgent, :XForwardedFor, :MacAddress, :CrowdAntiRush, :SceneCode, :Details, :DeviceType
        
        def initialize(account=nil, userip=nil, posttime=nil, scenetype=nil, userid=nil, devicetoken=nil, devicebusinessid=nil, businessid=nil, nickname=nil, emailaddress=nil, checkdevice=nil, cookiehash=nil, referer=nil, useragent=nil, xforwardedfor=nil, macaddress=nil, crowdantirush=nil, scenecode=nil, details=nil, devicetype=nil)
          @Account = account
          @UserIp = userip
          @PostTime = posttime
          @SceneType = scenetype
          @UserId = userid
          @DeviceToken = devicetoken
          @DeviceBusinessId = devicebusinessid
          @BusinessId = businessid
          @Nickname = nickname
          @EmailAddress = emailaddress
          @CheckDevice = checkdevice
          @CookieHash = cookiehash
          @Referer = referer
          @UserAgent = useragent
          @XForwardedFor = xforwardedfor
          @MacAddress = macaddress
          @CrowdAntiRush = crowdantirush
          @SceneCode = scenecode
          @Details = details
          @DeviceType = devicetype
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = AccountInfo.new.deserialize(params[Account])
          end
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
          @SceneType = params['SceneType']
          @UserId = params['UserId']
          @DeviceToken = params['DeviceToken']
          @DeviceBusinessId = params['DeviceBusinessId']
          @BusinessId = params['BusinessId']
          @Nickname = params['Nickname']
          @EmailAddress = params['EmailAddress']
          @CheckDevice = params['CheckDevice']
          @CookieHash = params['CookieHash']
          @Referer = params['Referer']
          @UserAgent = params['UserAgent']
          @XForwardedFor = params['XForwardedFor']
          @MacAddress = params['MacAddress']
          unless params['CrowdAntiRush'].nil?
            @CrowdAntiRush = CrowdAntiRushInfo.new.deserialize(params[CrowdAntiRush])
          end
          @SceneCode = params['SceneCode']
          @Details = params['Details']
          @DeviceType = params['DeviceType']
        end
      end

      # ManageMarketingRisk请求参数结构体
      class ManageMarketingRiskRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Aa.v20200224.models.InputManageMarketingRisk`

        attr_accessor :BusinessSecurityData
        
        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputManageMarketingRisk.new.deserialize(params[BusinessSecurityData])
          end
        end
      end

      # ManageMarketingRisk返回参数结构体
      class ManageMarketingRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Aa.v20200224.models.OutputManageMarketingRisk`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputManageMarketingRisk.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # 诈骗信息。
      class OnlineScamInfo < TencentCloud::Common::AbstractModel
        # @param ContentLabel: 内容标签。
        # @type ContentLabel: String
        # @param ContentRiskLevel: 内容风险等级：
        # 0：正常。
        # 1：可疑。
        # @type ContentRiskLevel: Integer
        # @param ContentType: 内容产生形式：
        # 0：对话。
        # 1：广播。
        # @type ContentType: Integer
        # @param FraudType: 诈骗账号类型：
        # 1：11位手机号。
        # 2：QQ账号。
        # @type FraudType: Integer
        # @param FraudAccount: 诈骗账号，手机号或QQ账号。
        # @type FraudAccount: String

        attr_accessor :ContentLabel, :ContentRiskLevel, :ContentType, :FraudType, :FraudAccount
        
        def initialize(contentlabel=nil, contentrisklevel=nil, contenttype=nil, fraudtype=nil, fraudaccount=nil)
          @ContentLabel = contentlabel
          @ContentRiskLevel = contentrisklevel
          @ContentType = contenttype
          @FraudType = fraudtype
          @FraudAccount = fraudaccount
        end

        def deserialize(params)
          @ContentLabel = params['ContentLabel']
          @ContentRiskLevel = params['ContentRiskLevel']
          @ContentType = params['ContentType']
          @FraudType = params['FraudType']
          @FraudAccount = params['FraudAccount']
        end
      end

      # 其它账号信息。
      class OtherAccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountId: 其它账号信息：
        # AccountType是4时，填入真实的手机号（如13123456789）。
        # AccountType是8时，支持 imei、idfa、imeiMD5、idfaMD5 入参。
        # AccountType是0时，填入账号信息。
        # AccountType是10004时，填入手机号的MD5值。
        # 注：imeiMd5 加密方式为：imei 明文小写后，进行 MD5 加密，加密后取小写值。IdfaMd5 加密方式为：idfa 明文大写后，进行 MD5 加密，加密后取小写值。
        # @type AccountId: String
        # @param MobilePhone: 手机号，若 AccountType 是4（手机号）、或10004（手机号 MD5），则无需重复填写，否则填入对应的手机号（如13123456789）。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号。若 AccountType 是8（设备号），则无需重复填写，否则填入对应的设备号。
        # @type DeviceId: String

        attr_accessor :AccountId, :MobilePhone, :DeviceId
        
        def initialize(accountid=nil, mobilephone=nil, deviceid=nil)
          @AccountId = accountid
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

      # 活动防刷高级版业务出参。
      class OutputActivityAntiRushAdvanced < TencentCloud::Common::AbstractModel
        # @param Code: 返回码。0表示成功，非0标识失败错误码。
        # @type Code: Integer
        # @param Message: UTF-8编码，出错消息。
        # @type Message: String
        # @param Value: 服务调用结果。
        # @type Value: :class:`Tencentcloud::Aa.v20200224.models.OutputActivityAntiRushAdvancedValue`

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputActivityAntiRushAdvancedValue.new.deserialize(params[Value])
          end
        end
      end

      # 活动防刷高级版业务出参。
      class OutputActivityAntiRushAdvancedValue < TencentCloud::Common::AbstractModel
        # @param UserId: 账号ID。对应输入参数：
        # AccountType是1时，对应QQ的OpenID。
        # AccountType是2时，对应微信的OpenID/UnionID。
        # AccountType是4时，对应手机号。
        # AccountType是8时，对应imei、idfa、imeiMD5或者idfaMD5。
        # AccountType是0时，对应账号信息。
        # AccountType是10004时，对应手机号的MD5。
        # @type UserId: String
        # @param PostTime: 操作时间戳，单位秒（对应输入参数）。
        # @type PostTime: Integer
        # @param AssociateAccount: AccountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号ID（对应输入参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateAccount: String
        # @param UserIp: 操作来源的外网IP（对应输入参数）。
        # @type UserIp: String
        # @param Level: 风险值：
        # 0：表示无恶意。
        # 1～4：恶意等级由低到高。
        # @type Level: Integer
        # @param RiskType: 风险类型，详情请参见下文RiskType详细说明。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskType: Array

        attr_accessor :UserId, :PostTime, :AssociateAccount, :UserIp, :Level, :RiskType
        
        def initialize(userid=nil, posttime=nil, associateaccount=nil, userip=nil, level=nil, risktype=nil)
          @UserId = userid
          @PostTime = posttime
          @AssociateAccount = associateaccount
          @UserIp = userip
          @Level = level
          @RiskType = risktype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PostTime = params['PostTime']
          @AssociateAccount = params['AssociateAccount']
          @UserIp = params['UserIp']
          @Level = params['Level']
          @RiskType = params['RiskType']
        end
      end

      # 影响风控出参
      class OutputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Code: 返回码。0表示成功，非0标识失败错误码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: UTF-8编码，出错消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 业务详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Aa.v20200224.models.OutputManageMarketingRiskValue`

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputManageMarketingRiskValue.new.deserialize(params[Value])
          end
        end
      end

      # 营销风控出参值
      class OutputManageMarketingRiskValue < TencentCloud::Common::AbstractModel
        # @param UserId: 账号ID。对应输入参数：
        # AccountType是1时，对应QQ的OpenID。
        # AccountType是2时，对应微信的OpenID/UnionID。
        # AccountType是4时，对应手机号。
        # AccountType是8时，对应imei、idfa、imeiMD5或者idfaMD5。
        # AccountType是0时，对应账号信息。
        # AccountType是10004时，对应手机号的MD5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param PostTime: 操作时间戳，单位秒（对应输入参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostTime: Integer
        # @param AssociateAccount: 对应输入参数，AccountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateAccount: String
        # @param UserIp: 操作来源的外网IP（对应输入参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIp: String
        # @param RiskLevel: 风险值
        # pass : 无恶意
        # review：需要人工审核
        # reject：拒绝，高风险恶意
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RiskType: 风险类型，请参考官网风险类型
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

      # QQ账号信息。
      class QQAccountInfo < TencentCloud::Common::AbstractModel
        # @param QQOpenId: QQ的OpenID。
        # @type QQOpenId: String
        # @param AppIdUser: QQ分配给网站或应用的AppId，用来唯一标识网站或应用。
        # @type AppIdUser: String
        # @param AssociateAccount: 用于标识QQ用户登录后所关联业务自身的账号ID。
        # @type AssociateAccount: String
        # @param MobilePhone: 账号绑定的手机号。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号。
        # @type DeviceId: String

        attr_accessor :QQOpenId, :AppIdUser, :AssociateAccount, :MobilePhone, :DeviceId
        
        def initialize(qqopenid=nil, appiduser=nil, associateaccount=nil, mobilephone=nil, deviceid=nil)
          @QQOpenId = qqopenid
          @AppIdUser = appiduser
          @AssociateAccount = associateaccount
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @QQOpenId = params['QQOpenId']
          @AppIdUser = params['AppIdUser']
          @AssociateAccount = params['AssociateAccount']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

      # QueryActivityAntiRushAdvanced请求参数结构体
      class QueryActivityAntiRushAdvancedRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Aa.v20200224.models.InputActivityAntiRushAdvanced`

        attr_accessor :BusinessSecurityData
        
        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputActivityAntiRushAdvanced.new.deserialize(params[BusinessSecurityData])
          end
        end
      end

      # QueryActivityAntiRushAdvanced返回参数结构体
      class QueryActivityAntiRushAdvancedResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果信息
        # @type Data: :class:`Tencentcloud::Aa.v20200224.models.OutputActivityAntiRushAdvanced`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputActivityAntiRushAdvanced.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryActivityAntiRush请求参数结构体
      class QueryActivityAntiRushRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 用户账号类型（默认开通 QQ 开放账号、手机号，手机 MD5 账号类型查询。如需使用微信开放账号，则需要 提交工单 由腾讯云进行资格审核，审核通过后方可正常使用微信开放账号）：
        # 1：QQ 开放帐号。
        # 2：微信开放账号。
        # 4：手机号。
        # 0：其他。
        # 10004：手机号 MD5。
        # @type AccountType: String
        # @param Uid: 用户 ID 不同的 accountType 对应不同的用户 ID。如果是 QQ，则填入对应的 openid，微信用户则填入对应的 openid/unionid，手机号则填入对应真实用户手机号（如13123456789）。
        # @type Uid: String
        # @param UserIp: 用户的真实外网 IP。若填入非外网有效ip，会返回level=0的风控结果，risktype中会有205的风险码返回作为标识
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳。
        # @type PostTime: String
        # @param AppIdU: accountType 是QQ开放账号时，该参数必填，表示 QQ 开放平台分配给网站或应用的 AppID，用来唯一标识网站或应用。
        # @type AppIdU: String
        # @param NickName: 昵称，UTF-8 编码。
        # @type NickName: String
        # @param PhoneNumber: 手机号。若 accountType 选4（手机号）、或10004（手机号 MD5），则无需重复填写。否则填入对应的手机号（如15912345687）。accountType为1或2时，该字段支持MD5值；
        # @type PhoneNumber: String
        # @param EmailAddress: 用户邮箱地址。
        # @type EmailAddress: String
        # @param RegisterTime: 注册时间戳。
        # @type RegisterTime: String
        # @param RegisterIp: 注册来源的外网 IP。
        # @type RegisterIp: String
        # @param CookieHash: 用户 HTTP 请求中的 cookie 进行2次 hash 的值，只要保证相同 cookie 的 hash 值一致即可。
        # @type CookieHash: String
        # @param Address: 地址。
        # @type Address: String
        # @param LoginSource: 登录来源：
        # 0：其他。
        # 1：PC 网页。
        # 2：移动页面。
        # 3：App。
        # 4：微信公众号。
        # @type LoginSource: String
        # @param LoginType: 登录方式：
        # 0：其他。
        # 1：手动账号密码输入。
        # 2：动态短信密码登录。
        # 3：二维码扫描登录。
        # @type LoginType: String
        # @param LoginSpend: 登录耗时，单位：秒。
        # @type LoginSpend: String
        # @param RootId: 用户操作的目的 ID，如点赞等，该字段就是被点赞的消息 ID，如果是投票，则为被投号码的 ID。
        # @type RootId: String
        # @param Referer: 用户 HTTP 请求的 referer 值。
        # @type Referer: String
        # @param JumpUrl: 登录成功后跳转页面。
        # @type JumpUrl: String
        # @param UserAgent: 用户 HTTP 请求的 userAgent。
        # @type UserAgent: String
        # @param XForwardedFor: 用户 HTTP 请求中的 x_forward_for。
        # @type XForwardedFor: String
        # @param MouseClickCount: 用户操作过程中鼠标单击次数。
        # @type MouseClickCount: String
        # @param KeyboardClickCount: 用户操作过程中键盘单击次数。
        # @type KeyboardClickCount: String
        # @param MacAddress: MAC 地址或设备唯一标识。
        # @type MacAddress: String
        # @param VendorId: 手机制造商 ID，如果手机注册，请带上此信息。
        # @type VendorId: String
        # @param Imei: 手机设备号。支持以下格式：
        # 1.imei明文
        # 2.idfa明文,
        # 3.imei小写后MD5值小写
        # 4.idfa大写后MD5值小写
        # @type Imei: String
        # @param AppVersion: App 客户端版本。
        # @type AppVersion: String
        # @param BusinessId: 业务 ID 网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据。
        # @type BusinessId: String
        # @param WxSubType: 1：微信公众号。
        # 2：微信小程序。
        # @type WxSubType: String
        # @param RandNum: Token 签名随机数，WxSubType为微信小程序时必填，建议16个字符。
        # @type RandNum: String
        # @param WxToken: 如果 accountType为2而且wxSubType有填，该字段必选，否则不需要填写；
        # 如果是微信小程序（WxSubType=2），该字段为以ssesion_key为key去签名随机数radnNum得到的值（ hmac_sha256签名算法）；如果是微信公众号或第三方登录，则为授权的access_token（网页版本的access_Token,而且获取token的scope字段必需填写snsapi_userinfo；）
        # @type WxToken: String
        # @param CheckDevice: 是否识别设备异常：
        # 0：不识别。
        # 1：识别。
        # @type CheckDevice: String

        attr_accessor :AccountType, :Uid, :UserIp, :PostTime, :AppIdU, :NickName, :PhoneNumber, :EmailAddress, :RegisterTime, :RegisterIp, :CookieHash, :Address, :LoginSource, :LoginType, :LoginSpend, :RootId, :Referer, :JumpUrl, :UserAgent, :XForwardedFor, :MouseClickCount, :KeyboardClickCount, :MacAddress, :VendorId, :Imei, :AppVersion, :BusinessId, :WxSubType, :RandNum, :WxToken, :CheckDevice
        
        def initialize(accounttype=nil, uid=nil, userip=nil, posttime=nil, appidu=nil, nickname=nil, phonenumber=nil, emailaddress=nil, registertime=nil, registerip=nil, cookiehash=nil, address=nil, loginsource=nil, logintype=nil, loginspend=nil, rootid=nil, referer=nil, jumpurl=nil, useragent=nil, xforwardedfor=nil, mouseclickcount=nil, keyboardclickcount=nil, macaddress=nil, vendorid=nil, imei=nil, appversion=nil, businessid=nil, wxsubtype=nil, randnum=nil, wxtoken=nil, checkdevice=nil)
          @AccountType = accounttype
          @Uid = uid
          @UserIp = userip
          @PostTime = posttime
          @AppIdU = appidu
          @NickName = nickname
          @PhoneNumber = phonenumber
          @EmailAddress = emailaddress
          @RegisterTime = registertime
          @RegisterIp = registerip
          @CookieHash = cookiehash
          @Address = address
          @LoginSource = loginsource
          @LoginType = logintype
          @LoginSpend = loginspend
          @RootId = rootid
          @Referer = referer
          @JumpUrl = jumpurl
          @UserAgent = useragent
          @XForwardedFor = xforwardedfor
          @MouseClickCount = mouseclickcount
          @KeyboardClickCount = keyboardclickcount
          @MacAddress = macaddress
          @VendorId = vendorid
          @Imei = imei
          @AppVersion = appversion
          @BusinessId = businessid
          @WxSubType = wxsubtype
          @RandNum = randnum
          @WxToken = wxtoken
          @CheckDevice = checkdevice
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Uid = params['Uid']
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
          @AppIdU = params['AppIdU']
          @NickName = params['NickName']
          @PhoneNumber = params['PhoneNumber']
          @EmailAddress = params['EmailAddress']
          @RegisterTime = params['RegisterTime']
          @RegisterIp = params['RegisterIp']
          @CookieHash = params['CookieHash']
          @Address = params['Address']
          @LoginSource = params['LoginSource']
          @LoginType = params['LoginType']
          @LoginSpend = params['LoginSpend']
          @RootId = params['RootId']
          @Referer = params['Referer']
          @JumpUrl = params['JumpUrl']
          @UserAgent = params['UserAgent']
          @XForwardedFor = params['XForwardedFor']
          @MouseClickCount = params['MouseClickCount']
          @KeyboardClickCount = params['KeyboardClickCount']
          @MacAddress = params['MacAddress']
          @VendorId = params['VendorId']
          @Imei = params['Imei']
          @AppVersion = params['AppVersion']
          @BusinessId = params['BusinessId']
          @WxSubType = params['WxSubType']
          @RandNum = params['RandNum']
          @WxToken = params['WxToken']
          @CheckDevice = params['CheckDevice']
        end
      end

      # QueryActivityAntiRush返回参数结构体
      class QueryActivityAntiRushResponse < TencentCloud::Common::AbstractModel
        # @param PostTime: 操作时间戳，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostTime: String
        # @param UserIp: 用户操作的真实外网 IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIp: String
        # @param Level: 0：表示无恶意。
        # 1 - 4：恶意等级由低到高。
        # @type Level: Integer
        # @param RiskType: 风险类型。

        # 账号风险：

        # 1，账号信用低，账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素；
        # 2，垃圾账号，疑似批量注册小号，近期存在严重违规或大量举报；
        # 3，无效账号，送检账号参数无法成功解析，请检查微信openid是否有误 ，QQopenid是否与appidU对应，手机号是否有误。
        # 4，黑名单，该账号在业务侧有过拉黑记录
        # 5，白名单，该账号在业务侧有过加白名单记录

        # 行为风险：
        # 101，批量操作，存在ip/设备/环境等因素的聚集性异常；
        # 102，自动机，疑似自动机批量请求；
        # 104，微信登录态无效，检查wxToken参数，是否已经失效；

        # 环境风险：
        # 201，环境异常，操作ip/设备/环境存在异常。当前ip为非常用ip或恶意ip段；
        # 205，非公网有效ip，传进来的IP地址为内网ip地址或者ip保留地址；
        # 206，设备异常，该设备存在异常的使用行为
        # @type RiskType: Array
        # @param AssociateAccount: accountType是QQ或微信开放账号时，用于标识QQ或微信用户登录后关联业务自身的账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateAccount: String
        # @param Uid: 用户ID
        # accountType不同对应不同的用户ID。如果是QQ或微信用户则填入对应的openId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uid: String
        # @param RootId: 用户操作的目的ID
        # 比如：点赞，该字段就是被点 赞的消息 id，如果是投票，就是被投号码的 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootId: String
        # @param CodeDesc: 业务侧错误码。成功时返回Success，错误时返回具体业务错误原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeDesc: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PostTime, :UserIp, :Level, :RiskType, :AssociateAccount, :Uid, :RootId, :CodeDesc, :RequestId
        
        def initialize(posttime=nil, userip=nil, level=nil, risktype=nil, associateaccount=nil, uid=nil, rootid=nil, codedesc=nil, requestid=nil)
          @PostTime = posttime
          @UserIp = userip
          @Level = level
          @RiskType = risktype
          @AssociateAccount = associateaccount
          @Uid = uid
          @RootId = rootid
          @CodeDesc = codedesc
          @RequestId = requestid
        end

        def deserialize(params)
          @PostTime = params['PostTime']
          @UserIp = params['UserIp']
          @Level = params['Level']
          @RiskType = params['RiskType']
          @AssociateAccount = params['AssociateAccount']
          @Uid = params['Uid']
          @RootId = params['RootId']
          @CodeDesc = params['CodeDesc']
          @RequestId = params['RequestId']
        end
      end

      # 助力场景信息
      class SponsorInfo < TencentCloud::Common::AbstractModel
        # @param SponsorOpenId: 助力场景建议填写：活动发起人微信OpenID。
        # @type SponsorOpenId: String
        # @param SponsorDeviceId: 助力场景建议填写：发起人设备号。
        # @type SponsorDeviceId: String
        # @param SponsorPhone: 助力场景建议填写：发起人手机号。
        # @type SponsorPhone: String
        # @param SponsorIp: 助力场景建议填写：发起人IP。
        # @type SponsorIp: String
        # @param CampaignUrl: 助力场景建议填写：活动链接。
        # @type CampaignUrl: String

        attr_accessor :SponsorOpenId, :SponsorDeviceId, :SponsorPhone, :SponsorIp, :CampaignUrl
        
        def initialize(sponsoropenid=nil, sponsordeviceid=nil, sponsorphone=nil, sponsorip=nil, campaignurl=nil)
          @SponsorOpenId = sponsoropenid
          @SponsorDeviceId = sponsordeviceid
          @SponsorPhone = sponsorphone
          @SponsorIp = sponsorip
          @CampaignUrl = campaignurl
        end

        def deserialize(params)
          @SponsorOpenId = params['SponsorOpenId']
          @SponsorDeviceId = params['SponsorDeviceId']
          @SponsorPhone = params['SponsorPhone']
          @SponsorIp = params['SponsorIp']
          @CampaignUrl = params['CampaignUrl']
        end
      end

      # 微信账号信息。
      class WeChatAccountInfo < TencentCloud::Common::AbstractModel
        # @param WeChatOpenId: 微信的OpenID/UnionID 。
        # @type WeChatOpenId: String
        # @param WeChatSubType: 微信开放账号类型：
        # 1：微信公众号/微信第三方登录。
        # 2：微信小程序。
        # @type WeChatSubType: Integer
        # @param RandStr: 随机串。如果WeChatSubType是2，该字段必填。Token签名随机数，建议16个字符。
        # @type RandStr: String
        # @param WeChatAccessToken: 如果WeChatSubType是1，填入授权的access_token（注意：不是普通access_token，详情请参阅官方说明文档。获取网页版本的access_token时，scope字段必需填写snsapi_userinfo。
        # 如果WeChatSubType是2，填入以session_key为密钥签名随机数RandStr（hmac_sha256签名算法）得到的字符串。
        # @type WeChatAccessToken: String
        # @param AssociateAccount: 用于标识微信用户登录后所关联业务自身的账号ID。
        # @type AssociateAccount: String
        # @param MobilePhone: 账号绑定的手机号。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号。
        # @type DeviceId: String

        attr_accessor :WeChatOpenId, :WeChatSubType, :RandStr, :WeChatAccessToken, :AssociateAccount, :MobilePhone, :DeviceId
        
        def initialize(wechatopenid=nil, wechatsubtype=nil, randstr=nil, wechataccesstoken=nil, associateaccount=nil, mobilephone=nil, deviceid=nil)
          @WeChatOpenId = wechatopenid
          @WeChatSubType = wechatsubtype
          @RandStr = randstr
          @WeChatAccessToken = wechataccesstoken
          @AssociateAccount = associateaccount
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @WeChatOpenId = params['WeChatOpenId']
          @WeChatSubType = params['WeChatSubType']
          @RandStr = params['RandStr']
          @WeChatAccessToken = params['WeChatAccessToken']
          @AssociateAccount = params['AssociateAccount']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

    end
  end
end

