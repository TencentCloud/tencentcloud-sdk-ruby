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
      # QueryActivityAntiRush请求参数结构体
      class QueryActivityAntiRushRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 账号类型
        # @type AccountType: String
        # @param Uid: uid值
        # @type Uid: String
        # @param UserIp: 用户的真实外网 IP。若填入非外网有效ip，会返回level=0的风控结果，risktype中会有205的风险码返回作为标识
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳。
        # @type PostTime: String
        # @param AppIdU: accountType 是QQ开放账号时，该参数必填，表示 QQ 开放平台分配给网站或应用的 AppID，用来唯一标识网站或应用。
        # @type AppIdU: String
        # @param NickName: 昵称，UTF-8 编码。
        # @type NickName: String
        # @param PhoneNumber: 手机号
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
        # @param WxToken: token
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
        # @param Uid: uid值
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

    end
  end
end

