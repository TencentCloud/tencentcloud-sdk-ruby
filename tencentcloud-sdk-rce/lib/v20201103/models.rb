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
  module Rce
    module V20201103
      # 账号信息。
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountType: 账号类型
        # @type AccountType: Integer
        # @param QQAccount: QQ账号信息，AccountType是1时，该字段必填。
        # @type QQAccount: :class:`Tencentcloud::Rce.v20201103.models.QQAccountInfo`
        # @param WeChatAccount: 微信账号信息，AccountType是2时，该字段必填。
        # @type WeChatAccount: :class:`Tencentcloud::Rce.v20201103.models.WeChatAccountInfo`
        # @param OtherAccount: 其它账号信息，AccountType是0、4、8或10004时，该字段必填。
        # @type OtherAccount: :class:`Tencentcloud::Rce.v20201103.models.OtherAccountInfo`

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
            @QQAccount = QQAccountInfo.new
            @QQAccount.deserialize(params['QQAccount'])
          end
          unless params['WeChatAccount'].nil?
            @WeChatAccount = WeChatAccountInfo.new
            @WeChatAccount.deserialize(params['WeChatAccount'])
          end
          unless params['OtherAccount'].nil?
            @OtherAccount = OtherAccountInfo.new
            @OtherAccount.deserialize(params['OtherAccount'])
          end
        end
      end

      # DescribeRiskAssessment请求参数结构体
      class DescribeRiskAssessmentRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRiskAssessment返回参数结构体
      class DescribeRiskAssessmentResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRiskModel请求参数结构体
      class DescribeRiskModelRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputDescribeRiskModelData`

        attr_accessor :BusinessSecurityData
        
        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputDescribeRiskModelData.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DescribeRiskModel返回参数结构体
      class DescribeRiskModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeRiskModel`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDescribeRiskModel.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskTrends请求参数结构体
      class DescribeRiskTrendsRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputFrontRisk`

        attr_accessor :BusinessSecurityData
        
        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputFrontRisk.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DescribeRiskTrends返回参数结构体
      class DescribeRiskTrendsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputFrontRiskData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputFrontRiskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 全栈式风控引擎入参
      class InputCryptoManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param IsAuthorized: 是否授权
        # @type IsAuthorized: String
        # @param CryptoType: 加密类型
        # @type CryptoType: String
        # @param CryptoContent: 加密内容
        # @type CryptoContent: String

        attr_accessor :IsAuthorized, :CryptoType, :CryptoContent
        
        def initialize(isauthorized=nil, cryptotype=nil, cryptocontent=nil)
          @IsAuthorized = isauthorized
          @CryptoType = cryptotype
          @CryptoContent = cryptocontent
        end

        def deserialize(params)
          @IsAuthorized = params['IsAuthorized']
          @CryptoType = params['CryptoType']
          @CryptoContent = params['CryptoContent']
        end
      end

      # 客户请求入参
      class InputDescribeRiskModelData < TencentCloud::Common::AbstractModel
        # @param UserData: 业务参数加密后的签名值
        # @type UserData: String
        # @param ApplyDate: 调用时间戳，精确到秒
        # @type ApplyDate: Integer
        # @param UserId: 客户业务侧标识用户的唯一ID
        # @type UserId: String

        attr_accessor :UserData, :ApplyDate, :UserId
        
        def initialize(userdata=nil, applydate=nil, userid=nil)
          @UserData = userdata
          @ApplyDate = applydate
          @UserId = userid
        end

        def deserialize(params)
          @UserData = params['UserData']
          @ApplyDate = params['ApplyDate']
          @UserId = params['UserId']
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

      # 风险趋势统计--入参
      class InputFrontRisk < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID
        # @type EventId: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Type: 趋势类型
        # @type Type: Integer
        # @param CurrentStartTime: 当前开始时间
        # @type CurrentStartTime: String
        # @param CurrentEndTime: 当前结束时间
        # @type CurrentEndTime: String

        attr_accessor :EventId, :StartTime, :EndTime, :Type, :CurrentStartTime, :CurrentEndTime
        
        def initialize(eventid=nil, starttime=nil, endtime=nil, type=nil, currentstarttime=nil, currentendtime=nil)
          @EventId = eventid
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @CurrentStartTime = currentstarttime
          @CurrentEndTime = currentendtime
        end

        def deserialize(params)
          @EventId = params['EventId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @CurrentStartTime = params['CurrentStartTime']
          @CurrentEndTime = params['CurrentEndTime']
        end
      end

      # 全栈式风控引擎入参
      class InputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Account: 账号信息。
        # @type Account: :class:`Tencentcloud::Rce.v20201103.models.AccountInfo`
        # @param SceneCode: 场景类型：场景SceneCode, 控制台上新建对应的场景并获取对应的值；
        # 例如：e_register_protection_1521184361
        # 控制台链接：https://console.cloud.tencent.com/rce/risk/sceneroot；
        # @type SceneCode: String
        # @param UserIp: 登录来源的外网IP
        # @type UserIp: String
        # @param PostTime: 时间戳
        # @type PostTime: Integer
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
        # @param VendorId: 手机制造商ID，如果手机注册，请带上此信息。
        # @type VendorId: String
        # @param DeviceType: 设备类型：
        # 1：Android
        # 2：IOS
        # @type DeviceType: Integer
        # @param Details: 详细信息
        # @type Details: Array
        # @param Sponsor: 可选填写。详情请跳转至SponsorInfo查看。
        # @type Sponsor: :class:`Tencentcloud::Rce.v20201103.models.SponsorInfo`
        # @param OnlineScam: 可选填写。详情请跳转至OnlineScamInfo查看。
        # @type OnlineScam: :class:`Tencentcloud::Rce.v20201103.models.OnlineScamInfo`

        attr_accessor :Account, :SceneCode, :UserIp, :PostTime, :UserId, :DeviceToken, :DeviceBusinessId, :BusinessId, :Nickname, :EmailAddress, :CheckDevice, :CookieHash, :Referer, :UserAgent, :XForwardedFor, :MacAddress, :VendorId, :DeviceType, :Details, :Sponsor, :OnlineScam
        
        def initialize(account=nil, scenecode=nil, userip=nil, posttime=nil, userid=nil, devicetoken=nil, devicebusinessid=nil, businessid=nil, nickname=nil, emailaddress=nil, checkdevice=nil, cookiehash=nil, referer=nil, useragent=nil, xforwardedfor=nil, macaddress=nil, vendorid=nil, devicetype=nil, details=nil, sponsor=nil, onlinescam=nil)
          @Account = account
          @SceneCode = scenecode
          @UserIp = userip
          @PostTime = posttime
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
          @VendorId = vendorid
          @DeviceType = devicetype
          @Details = details
          @Sponsor = sponsor
          @OnlineScam = onlinescam
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = AccountInfo.new
            @Account.deserialize(params['Account'])
          end
          @SceneCode = params['SceneCode']
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
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
          @VendorId = params['VendorId']
          @DeviceType = params['DeviceType']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              inputdetails_tmp = InputDetails.new
              inputdetails_tmp.deserialize(i)
              @Details << inputdetails_tmp
            end
          end
          unless params['Sponsor'].nil?
            @Sponsor = SponsorInfo.new
            @Sponsor.deserialize(params['Sponsor'])
          end
          unless params['OnlineScam'].nil?
            @OnlineScam = OnlineScamInfo.new
            @OnlineScam.deserialize(params['OnlineScam'])
          end
        end
      end

      # ManageMarketingRisk请求参数结构体
      class ManageMarketingRiskRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputManageMarketingRisk`
        # @param BusinessCryptoData: 业务入参
        # @type BusinessCryptoData: :class:`Tencentcloud::Rce.v20201103.models.InputCryptoManageMarketingRisk`

        attr_accessor :BusinessSecurityData, :BusinessCryptoData
        
        def initialize(businesssecuritydata=nil, businesscryptodata=nil)
          @BusinessSecurityData = businesssecuritydata
          @BusinessCryptoData = businesscryptodata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputManageMarketingRisk.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
          unless params['BusinessCryptoData'].nil?
            @BusinessCryptoData = InputCryptoManageMarketingRisk.new
            @BusinessCryptoData.deserialize(params['BusinessCryptoData'])
          end
        end
      end

      # ManageMarketingRisk返回参数结构体
      class ManageMarketingRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputManageMarketingRisk`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputManageMarketingRisk.new
            @Data.deserialize(params['Data'])
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
        # @param FraudType: 类型
        # @type FraudType: Integer
        # @param FraudAccount: 账号
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
        # @param AccountId: id
        # @type AccountId: String
        # @param MobilePhone: 手机号
        # @type MobilePhone: String
        # @param DeviceId: id
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

      # 业务出参
      class OutputDescribeRiskModel < TencentCloud::Common::AbstractModel
        # @param Code: 请求返回状态值，0为成功，别的结合Message查看
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: 请求返回信息
        # @type Message: String
        # @param Value: 请求返回结果
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeRiskModelValue`

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
            @Value = OutputDescribeRiskModelValue.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 风控建模服务出参对应值
      class OutputDescribeRiskModelValue < TencentCloud::Common::AbstractModel
        # @param ApplyScore: 模型分数值
        # @type ApplyScore: Float

        attr_accessor :ApplyScore
        
        def initialize(applyscore=nil)
          @ApplyScore = applyscore
        end

        def deserialize(params)
          @ApplyScore = params['ApplyScore']
        end
      end

      # 风险趋势统计出参，需要为数组
      class OutputFrontRisk < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              outputfrontriskvalue_tmp = OutputFrontRiskValue.new
              outputfrontriskvalue_tmp.deserialize(i)
              @Value << outputfrontriskvalue_tmp
            end
          end
        end
      end

      # 风险趋势统计--出参
      class OutputFrontRiskData < TencentCloud::Common::AbstractModel
        # @param Code: 返回码[0：成功；非0：标识失败错误码]。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: 出错消息[UTF-8编码]。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

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
            @Value = []
            params['Value'].each do |i|
              outputfrontrisk_tmp = OutputFrontRisk.new
              outputfrontrisk_tmp.deserialize(i)
              @Value << outputfrontrisk_tmp
            end
          end
        end
      end

      # 风险趋势统计--值
      class OutputFrontRiskValue < TencentCloud::Common::AbstractModel
        # @param Requests: 请求次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Requests: Integer
        # @param Index: 日期标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String

        attr_accessor :Requests, :Index
        
        def initialize(requests=nil, index=nil)
          @Requests = requests
          @Index = index
        end

        def deserialize(params)
          @Requests = params['Requests']
          @Index = params['Index']
        end
      end

      # 全栈式风控引擎出参
      class OutputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Code: 返回码。0表示成功，非0标识失败错误码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: UTF-8编码，出错消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 业务详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputManageMarketingRiskValue`
        # @param UUid: 控制台显示的req_id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UUid: String

        attr_accessor :Code, :Message, :Value, :UUid
        
        def initialize(code=nil, message=nil, value=nil, uuid=nil)
          @Code = code
          @Message = message
          @Value = value
          @UUid = uuid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputManageMarketingRiskValue.new
            @Value.deserialize(params['Value'])
          end
          @UUid = params['UUid']
        end
      end

      # 全栈式风控引擎出参值
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
        # 账号风险
        # 1 账号信用低,账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素
        # 11 疑似 低活跃账号,账号活跃度与正常用户有差异
        # 2 垃圾账号 疑似批量注册小号，近期存在严重违规或大量举报
        # 21 疑似小号 账号有疑似线上养号，小号等行为
        # 22 疑似违规账号 账号曾有违规行为、曾被举报过、曾因违规被处罚过等
        # 3 无效账号 送检账号参数无法成功解析，请检查微信 openid 是否有误/appid与QQopenid无法关联/微信openid权限是否有开通/手机号是否为中国大陆手机号；
        # 4 黑名单 该账号在业务侧有过拉黑记录
        # 5 白名单 业务自行有添加过白名单记录
        # 行为风险
        # 101 批量操作 存在 ip/设备/环境等因素的聚集性异常
        # 1011 疑似 IP 属性聚集，出现 IP 聚集
        # 1012 疑似 设备属性聚集 出现设备聚集
        # 102 自动机 疑似自动机批量请求
        # 103 恶意行为-网赚 疑似网赚
        # 104 微信登录态无效 检查 WeChatAccessToken 参数，是否已经失效；
        # 201 环境风险 环境异常 操作 ip/设备/环境存在异常。当前 ip 为非常用 ip 或恶意 ip 段
        # 2011 疑似 非常用IP 请求 当前请求 IP 非该账号常用 IP
        # 2012 疑似 IP 异常 使用 idc 机房 ip 或 使用代理 ip 或 使用恶意 ip 等
        # 205 非公网有效ip 传进来的 IP 地址为内网 ip 地址或者 ip 保留地址；
        # 设备风险
        # 206  设备异常 该设备存在异常的使用行为
        # 2061 疑似 非常用设备 当前请求的设备非该账号常用设备
        # 2062 疑似 虚拟设备 请求设备为模拟器、脚本、云设备等虚拟设备
        # 2063 疑似 群控设备 请求设备为猫池、手机墙等群控设备
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

      # 网赚防刷相关参数
      class SponsorInfo < TencentCloud::Common::AbstractModel
        # @param SponsorOpenId: OpenID
        # @type SponsorOpenId: String
        # @param SponsorDeviceNumber: 设备号
        # @type SponsorDeviceNumber: String
        # @param SponsorPhone: 手机号
        # @type SponsorPhone: String
        # @param SponsorIp: IP
        # @type SponsorIp: String
        # @param CampaignUrl: 链接
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
        # @param WeChatAccessToken: token
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

