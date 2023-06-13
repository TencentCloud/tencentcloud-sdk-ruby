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
  module Lp
    module V20200224
      # QueryLoginProtection请求参数结构体
      class QueryLoginProtectionRequest < TencentCloud::Common::AbstractModel
        # @param LoginIp: 登录来源的外网 IP。
        # @type LoginIp: String
        # @param Uid: 用户 ID 不同的 accountType 对应不同的用户 ID。如果是 QQ，则填入对应的 openid，微信用户则填入对应的 openid/unionid，手机号则填入对应真实用户手机号（如13123456789）。
        # @type Uid: String
        # @param LoginTime: 登录时间戳，单位：秒。
        # @type LoginTime: String
        # @param AccountType: 用户账号类型（QQ 开放帐号、微信开放账号需要 提交工单 由腾讯云进行资格审核）：
        # 1：QQ 开放帐号。
        # 2：微信开放账号。
        # 4：手机号。
        # 0：其他。
        # 10004：手机号 MD5。
        # @type AccountType: String
        # @param AppIdU: accountType 是 QQ 或微信开放账号时，该参数必填，表示 QQ 或微信分配给网站或应用的 AppID，用来唯一标识网站或应用。
        # @type AppIdU: String
        # @param AssociateAccount: accountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号 ID。
        # @type AssociateAccount: String
        # @param NickName: 昵称，UTF-8 编码。
        # @type NickName: String
        # @param PhoneNumber: 手机号：国家代码-手机号， 如0086-15912345687（0086前不需要+号）。
        # @type PhoneNumber: String
        # @param EmailAddress: 用户邮箱地址（非系统自动生成）。
        # @type EmailAddress: String
        # @param RegisterTime: 注册来源的外网 IP。
        # @type RegisterTime: String
        # @param Address: 地址。
        # @type Address: String
        # @param CookieHash: 用户 HTTP 请求中的 cookie 进行2次 hash 的值，只要保证相同 cookie 的 hash 值一致即可。
        # @type CookieHash: String
        # @param LoginSource: 登录来源：
        # 0：其他
        # 1：PC 网页
        # 2：移动页面
        # 3：App
        # 4：微信公众号
        # @type LoginSource: String
        # @param LoginType: 登录方式：
        # 0：其他
        # 1：手动帐号密码输入
        # 2：动态短信密码登录
        # 3：二维码扫描登录
        # @type LoginType: String
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
        # @param Result: 注册结果：
        # 0：失败
        # 1：成功
        # @type Result: String
        # @param Reason: 失败原因：
        # 0：其他
        # 1：参数错误
        # 2：帐号冲突
        # 3：验证错误
        # @type Reason: String
        # @param LoginSpend: 登录耗时，单位：秒。
        # @type LoginSpend: String
        # @param MacAddress: MAC 地址或设备唯一标识。
        # @type MacAddress: String
        # @param VendorId: 手机制造商 ID，如果手机注册，请带上此信息。
        # @type VendorId: String
        # @param AppVersion: App 客户端版本。
        # @type AppVersion: String
        # @param Imei: 手机设备号。
        # @type Imei: String
        # @param BusinessId: 业务 ID 网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据。
        # @type BusinessId: String
        # @param WxSubType: 1：微信公众号
        # 2：微信小程序
        # @type WxSubType: String
        # @param RandNum: Token 签名随机数，微信小程序必填，建议16个字符。
        # @type RandNum: String
        # @param WxToken: 如果是微信小程序，该字段为以 ssesion_key 为 key 去签名随机数radnNum得到的值（hmac_sha256 签名算法）。
        # 如果是微信公众号或第三方登录，则为授权的 access_token（注意：不是普通 access_token，具体看 微信官方文档）。
        # @type WxToken: String

        attr_accessor :LoginIp, :Uid, :LoginTime, :AccountType, :AppIdU, :AssociateAccount, :NickName, :PhoneNumber, :EmailAddress, :RegisterTime, :Address, :CookieHash, :LoginSource, :LoginType, :Referer, :JumpUrl, :UserAgent, :XForwardedFor, :MouseClickCount, :KeyboardClickCount, :Result, :Reason, :LoginSpend, :MacAddress, :VendorId, :AppVersion, :Imei, :BusinessId, :WxSubType, :RandNum, :WxToken

        def initialize(loginip=nil, uid=nil, logintime=nil, accounttype=nil, appidu=nil, associateaccount=nil, nickname=nil, phonenumber=nil, emailaddress=nil, registertime=nil, address=nil, cookiehash=nil, loginsource=nil, logintype=nil, referer=nil, jumpurl=nil, useragent=nil, xforwardedfor=nil, mouseclickcount=nil, keyboardclickcount=nil, result=nil, reason=nil, loginspend=nil, macaddress=nil, vendorid=nil, appversion=nil, imei=nil, businessid=nil, wxsubtype=nil, randnum=nil, wxtoken=nil)
          @LoginIp = loginip
          @Uid = uid
          @LoginTime = logintime
          @AccountType = accounttype
          @AppIdU = appidu
          @AssociateAccount = associateaccount
          @NickName = nickname
          @PhoneNumber = phonenumber
          @EmailAddress = emailaddress
          @RegisterTime = registertime
          @Address = address
          @CookieHash = cookiehash
          @LoginSource = loginsource
          @LoginType = logintype
          @Referer = referer
          @JumpUrl = jumpurl
          @UserAgent = useragent
          @XForwardedFor = xforwardedfor
          @MouseClickCount = mouseclickcount
          @KeyboardClickCount = keyboardclickcount
          @Result = result
          @Reason = reason
          @LoginSpend = loginspend
          @MacAddress = macaddress
          @VendorId = vendorid
          @AppVersion = appversion
          @Imei = imei
          @BusinessId = businessid
          @WxSubType = wxsubtype
          @RandNum = randnum
          @WxToken = wxtoken
        end

        def deserialize(params)
          @LoginIp = params['LoginIp']
          @Uid = params['Uid']
          @LoginTime = params['LoginTime']
          @AccountType = params['AccountType']
          @AppIdU = params['AppIdU']
          @AssociateAccount = params['AssociateAccount']
          @NickName = params['NickName']
          @PhoneNumber = params['PhoneNumber']
          @EmailAddress = params['EmailAddress']
          @RegisterTime = params['RegisterTime']
          @Address = params['Address']
          @CookieHash = params['CookieHash']
          @LoginSource = params['LoginSource']
          @LoginType = params['LoginType']
          @Referer = params['Referer']
          @JumpUrl = params['JumpUrl']
          @UserAgent = params['UserAgent']
          @XForwardedFor = params['XForwardedFor']
          @MouseClickCount = params['MouseClickCount']
          @KeyboardClickCount = params['KeyboardClickCount']
          @Result = params['Result']
          @Reason = params['Reason']
          @LoginSpend = params['LoginSpend']
          @MacAddress = params['MacAddress']
          @VendorId = params['VendorId']
          @AppVersion = params['AppVersion']
          @Imei = params['Imei']
          @BusinessId = params['BusinessId']
          @WxSubType = params['WxSubType']
          @RandNum = params['RandNum']
          @WxToken = params['WxToken']
        end
      end

      # QueryLoginProtection返回参数结构体
      class QueryLoginProtectionResponse < TencentCloud::Common::AbstractModel
        # @param CodeDesc: AssociateAccount

        # accountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号 ID。
        # LoginTime

        # 操作时间。
        # Uid

        # 用户 ID 不同的 accountType 对应不同的用户 ID。如果是 QQ，则填入对应的 openid，微信用户则填入对应的 openid/unionid，手机号则填入对应真实用户手机号（如13123456789）。
        # LoginIp

        # 登录 IP。
        # Level

        # 0：表示无恶意。
        # 1 - 4：恶意等级由低到高。
        # RiskType

        # 风险类型。
        # 出参不用填"Req业务侧错误码。成功时返回 Success，错误时返回具体业务错误原因。uestId"等公共出参， 详细解释>>>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeDesc: String
        # @param AssociateAccount: accountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateAccount: String
        # @param LoginTime: 操作时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTime: String
        # @param Uid: 用户 ID 不同的 accountType 对应不同的用户 ID。如果是 QQ，则填入对应的 openid，微信用户则填入对应的 openid/unionid，手机号则填入对应真实用户手机号（如13123456789）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uid: String
        # @param LoginIp: 登录 IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginIp: String
        # @param Level: 0：表示无恶意。
        # 1 - 4：恶意等级由低到高。
        # @type Level: Integer
        # @param RiskType: 风险类型。
        # @type RiskType: Array
        # @param RootId: accountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeDesc, :AssociateAccount, :LoginTime, :Uid, :LoginIp, :Level, :RiskType, :RootId, :RequestId

        def initialize(codedesc=nil, associateaccount=nil, logintime=nil, uid=nil, loginip=nil, level=nil, risktype=nil, rootid=nil, requestid=nil)
          @CodeDesc = codedesc
          @AssociateAccount = associateaccount
          @LoginTime = logintime
          @Uid = uid
          @LoginIp = loginip
          @Level = level
          @RiskType = risktype
          @RootId = rootid
          @RequestId = requestid
        end

        def deserialize(params)
          @CodeDesc = params['CodeDesc']
          @AssociateAccount = params['AssociateAccount']
          @LoginTime = params['LoginTime']
          @Uid = params['Uid']
          @LoginIp = params['LoginIp']
          @Level = params['Level']
          @RiskType = params['RiskType']
          @RootId = params['RootId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

