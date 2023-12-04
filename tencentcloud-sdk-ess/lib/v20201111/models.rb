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
  module Ess
    module V20201111
      # 企业超管信息
      class Admin < TencentCloud::Common::AbstractModel
        # @param Name: 超管名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Mobile: 超管手机号，打码显示
        # 示例值：138****1569

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String

        attr_accessor :Name, :Mobile

        def initialize(name=nil, mobile=nil)
          @Name = name
          @Mobile = mobile
        end

        def deserialize(params)
          @Name = params['Name']
          @Mobile = params['Mobile']
        end
      end

      # 代理相关应用信息，如集团主企业代子企业操作
      class Agent < TencentCloud::Common::AbstractModel
        # @param AppId: 代理机构的应用编号,32位字符串，一般不用传
        # @type AppId: String
        # @param ProxyAppId: 被代理机构的应用号，一般不用传
        # @type ProxyAppId: String
        # @param ProxyOrganizationId: 被代理机构在电子签平台的机构编号，集团代理下场景必传
        # @type ProxyOrganizationId: String
        # @param ProxyOperator: 被代理机构的经办人，一般不用传
        # @type ProxyOperator: String

        attr_accessor :AppId, :ProxyAppId, :ProxyOrganizationId, :ProxyOperator
        extend Gem::Deprecate
        deprecate :AppId, :none, 2023, 12
        deprecate :AppId=, :none, 2023, 12
        deprecate :ProxyAppId, :none, 2023, 12
        deprecate :ProxyAppId=, :none, 2023, 12
        deprecate :ProxyOperator, :none, 2023, 12
        deprecate :ProxyOperator=, :none, 2023, 12

        def initialize(appid=nil, proxyappid=nil, proxyorganizationid=nil, proxyoperator=nil)
          @AppId = appid
          @ProxyAppId = proxyappid
          @ProxyOrganizationId = proxyorganizationid
          @ProxyOperator = proxyoperator
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProxyAppId = params['ProxyAppId']
          @ProxyOrganizationId = params['ProxyOrganizationId']
          @ProxyOperator = params['ProxyOperator']
        end
      end

      # 签署方在使用个人印章签署控件（SIGN_SIGNATURE） 时可使用的签署方式
      class ApproverComponentLimitType < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署方经办人在模板中配置的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。
        # @type RecipientId: String
        # @param Values: 签署方经办人控件类型是个人印章签署控件（SIGN_SIGNATURE） 时，可选的签名方式，可多选

        # 签名方式：
        # <ul>
        # <li>HANDWRITE-手写签名</li>
        # <li>ESIGN-个人印章类型</li>
        # <li>OCR_ESIGN-AI智能识别手写签名</li>
        # <li>SYSTEM_ESIGN-系统签名</li>
        # </ul>
        # @type Values: Array

        attr_accessor :RecipientId, :Values

        def initialize(recipientid=nil, values=nil)
          @RecipientId = recipientid
          @Values = values
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @Values = params['Values']
        end
      end

      # 合同参与者信息。
      class ApproverInfo < TencentCloud::Common::AbstractModel
        # @param ApproverType: 在指定签署方时，可选择企业B端或个人C端等不同的参与者类型，可选类型如下:
        # **0**：企业
        # **1**：个人
        # **3**：企业静默签署
        # 注：`类型为3（企业静默签署）时，此接口会默认完成该签署方的签署。静默签署仅进行盖章操作，不能自动签名。`
        # **7**: 个人自动签署，适用于个人自动签场景。
        # 注: `个人自动签场景为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type ApproverType: Integer
        # @param ApproverName: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        # @type ApproverName: String
        # @param ApproverMobile: 签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 请确认手机号所有方为此合同签署方。
        # @type ApproverMobile: String
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # 如果签署方是企业签署方(approverType = 0 或者 approverType = 3)， 则企业名称必填。
        # @type OrganizationName: String
        # @param SignComponents: 合同中的签署控件列表，列表中可支持下列多种签署控件,控件的详细定义参考开发者中心的Component结构体
        # <ul><li> 个人签名/印章</li>
        # <li> 企业印章</li>
        # <li> 骑缝章等签署控件</li></ul>
        # @type SignComponents: Array
        # @param ApproverIdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD 居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)</li>
        # <li>OTHER_CARD_TYPE 其他证件</li></ul>

        # 注: `其他证件类型为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 签署方经办人的证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type ApproverIdCardNumber: String
        # @param NotifyType: 通知签署方经办人的方式,  有以下途径:
        # <ul><li>  **sms**  :  (默认)短信</li>
        # <li>   **none**   : 不通知</li></ul>
        # @type NotifyType: String
        # @param ApproverRole: 收据场景设置签署人角色类型, 可以设置如下****类型****:
        # <ul><li> **1**  :收款人</li>
        # <li>   **2**   :开具人</li>
        # <li>   **3** :见证人</li></ul>
        # 注: `收据场景为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type ApproverRole: Integer
        # @param ApproverRoleName: 可以自定义签署人角色名：收款人、开具人、见证人等，长度不能超过20，只能由中文、字母、数字和下划线组成。

        # 注: `如果是用模板发起, 优先使用此处上传的, 如果不传则用模板的配置的`
        # @type ApproverRoleName: String
        # @param VerifyChannel: 签署意愿确认渠道，默认为WEIXINAPP:人脸识别

        # 注: 将要废弃, 用ApproverSignTypes签署人签署合同时的认证方式代替, 新客户可请用ApproverSignTypes来设置
        # @type VerifyChannel: Array
        # @param PreReadTime: 签署方在签署合同之前，需要强制阅读合同的时长，可指定为3秒至300秒之间的任意值。

        # 若未指定阅读时间，则会按照合同页数大小计算阅读时间，计算规则如下：
        # <ul><li>合同页数少于等于2页，阅读时间为3秒；</li>
        # <li>合同页数为3到5页，阅读时间为5秒；</li>
        # <li>合同页数大于等于6页，阅读时间为10秒。</li></ul>
        # @type PreReadTime: Integer
        # @param UserId: 签署人userId，仅支持本企业的员工userid， 可在控制台组织管理处获得

        # 注: `若传此字段 则以userid的信息为主，会覆盖传递过来的签署人基本信息， 包括姓名，手机号，证件类型等信息`
        # @type UserId: String
        # @param ApproverSource: 在企微场景下使用，需设置参数为**WEWORKAPP**，以表明合同来源于企微。
        # @type ApproverSource: String
        # @param CustomApproverTag: 在企业微信场景下，表明该合同流程为或签，其最大长度为64位字符串。
        # 所有参与或签的人员均需具备该标识。
        # 注意，在合同中，不同的或签参与人必须保证其CustomApproverTag唯一。
        # 如果或签签署人为本方企业微信参与人，则需要指定ApproverSource参数为WEWORKAPP。
        # @type CustomApproverTag: String
        # @param ApproverOption: 可以控制签署方在签署合同时能否进行某些操作，例如拒签、转交他人等。
        # 详细操作可以参考开发者中心的ApproverOption结构体。
        # @type ApproverOption: :class:`Tencentcloud::Ess.v20201111.models.ApproverOption`
        # @param ApproverVerifyTypes: 指定个人签署方查看合同的校验方式,可以传值如下:
        # <ul><li>  **1**   : （默认）人脸识别,人脸识别后才能合同内容</li>
        # <li>  **2**  : 手机号验证, 用户手机号和参与方手机号(ApproverMobile)相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        # </li></ul>
        # 注:
        # <ul><li>如果合同流程设置ApproverVerifyType查看合同的校验方式,    则忽略此签署人的查看合同的校验方式</li>
        # <li>此字段可传多个校验方式</li></ul>
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 您可以指定签署方签署合同的认证校验方式，可传递以下值：
        # <ul><li>**1**：人脸认证，需进行人脸识别成功后才能签署合同；</li>
        # <li>**2**：签署密码，需输入与用户在腾讯电子签设置的密码一致才能校验成功进行合同签署；</li>
        # <li>**3**：运营商三要素，需到运营商处比对手机号实名信息（名字、手机号、证件号）校验一致才能成功进行合同签署。</li></ul>

        # 注：
        # 1. 默认情况下，认证校验方式为人脸认证和签署密码两种形式
        # 2. 您可以传递多种值，表示可用多种认证校验方式
        # 3. 运营商三要素认证方式对手机号运营商及前缀有限制,可以参考[运营商支持列表类](https://qian.tencent.com/developers/company/mobile_support)得到具体的支持说明
        # @type ApproverSignTypes: Array
        # @param ApproverNeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li>**false**：（默认）不需要审批，直接签署。</li>
        # <li>**true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li>如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li>如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>

        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type ApproverNeedSignReview: Boolean
        # @param AddSignComponentsLimits: [用PDF文件创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowByFiles)时,如果设置了外层参数SignBeanTag=1(允许签署过程中添加签署控件),则可通过此参数明确规定合同所使用的签署控件类型（骑缝章、普通章法人章等）和具体的印章（印章ID）或签名方式。

        # 注：`限制印章控件或骑缝章控件情况下,仅本企业签署方可以指定具体印章（通过传递ComponentValue,支持多个），他方企业或个人只支持限制控件类型。`
        # @type AddSignComponentsLimits: Array
        # @param SignInstructionContent: 签署须知：支持传入富文本，最长字数：500个中文字符
        # @type SignInstructionContent: String

        attr_accessor :ApproverType, :ApproverName, :ApproverMobile, :OrganizationName, :SignComponents, :ApproverIdCardType, :ApproverIdCardNumber, :NotifyType, :ApproverRole, :ApproverRoleName, :VerifyChannel, :PreReadTime, :UserId, :ApproverSource, :CustomApproverTag, :ApproverOption, :ApproverVerifyTypes, :ApproverSignTypes, :ApproverNeedSignReview, :AddSignComponentsLimits, :SignInstructionContent

        def initialize(approvertype=nil, approvername=nil, approvermobile=nil, organizationname=nil, signcomponents=nil, approveridcardtype=nil, approveridcardnumber=nil, notifytype=nil, approverrole=nil, approverrolename=nil, verifychannel=nil, prereadtime=nil, userid=nil, approversource=nil, customapprovertag=nil, approveroption=nil, approververifytypes=nil, approversigntypes=nil, approverneedsignreview=nil, addsigncomponentslimits=nil, signinstructioncontent=nil)
          @ApproverType = approvertype
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @OrganizationName = organizationname
          @SignComponents = signcomponents
          @ApproverIdCardType = approveridcardtype
          @ApproverIdCardNumber = approveridcardnumber
          @NotifyType = notifytype
          @ApproverRole = approverrole
          @ApproverRoleName = approverrolename
          @VerifyChannel = verifychannel
          @PreReadTime = prereadtime
          @UserId = userid
          @ApproverSource = approversource
          @CustomApproverTag = customapprovertag
          @ApproverOption = approveroption
          @ApproverVerifyTypes = approververifytypes
          @ApproverSignTypes = approversigntypes
          @ApproverNeedSignReview = approverneedsignreview
          @AddSignComponentsLimits = addsigncomponentslimits
          @SignInstructionContent = signinstructioncontent
        end

        def deserialize(params)
          @ApproverType = params['ApproverType']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @OrganizationName = params['OrganizationName']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @ApproverIdCardType = params['ApproverIdCardType']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
          @NotifyType = params['NotifyType']
          @ApproverRole = params['ApproverRole']
          @ApproverRoleName = params['ApproverRoleName']
          @VerifyChannel = params['VerifyChannel']
          @PreReadTime = params['PreReadTime']
          @UserId = params['UserId']
          @ApproverSource = params['ApproverSource']
          @CustomApproverTag = params['CustomApproverTag']
          unless params['ApproverOption'].nil?
            @ApproverOption = ApproverOption.new
            @ApproverOption.deserialize(params['ApproverOption'])
          end
          @ApproverVerifyTypes = params['ApproverVerifyTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
          @ApproverNeedSignReview = params['ApproverNeedSignReview']
          unless params['AddSignComponentsLimits'].nil?
            @AddSignComponentsLimits = []
            params['AddSignComponentsLimits'].each do |i|
              componentlimit_tmp = ComponentLimit.new
              componentlimit_tmp.deserialize(i)
              @AddSignComponentsLimits << componentlimit_tmp
            end
          end
          @SignInstructionContent = params['SignInstructionContent']
        end
      end

      # 签署方信息，发起合同后可获取到对应的签署方信息，如角色ID，角色名称
      class ApproverItem < TencentCloud::Common::AbstractModel
        # @param SignId: 签署方唯一编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignId: String
        # @param RecipientId: 签署方角色编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientId: String
        # @param ApproverRoleName: 签署方角色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverRoleName: String

        attr_accessor :SignId, :RecipientId, :ApproverRoleName

        def initialize(signid=nil, recipientid=nil, approverrolename=nil)
          @SignId = signid
          @RecipientId = recipientid
          @ApproverRoleName = approverrolename
        end

        def deserialize(params)
          @SignId = params['SignId']
          @RecipientId = params['RecipientId']
          @ApproverRoleName = params['ApproverRoleName']
        end
      end

      # 签署人个性化能力信息
      class ApproverOption < TencentCloud::Common::AbstractModel
        # @param NoRefuse: 签署方是否可以拒签

        # <ul><li> **false** : ( 默认)可以拒签</li>
        # <li> **true** :不可以拒签</li></ul>
        # @type NoRefuse: Boolean
        # @param NoTransfer: 签署方是否可以转他人处理

        # <ul><li> **false** : ( 默认)可以转他人处理</li>
        # <li> **true** :不可以转他人处理</li></ul>
        # @type NoTransfer: Boolean
        # @param FillType: 签署人信息补充类型，默认无需补充。

        # <ul><li> **1** : ( 动态签署人（可发起合同后再补充签署人信息）注：`企业自动签不支持动态补充`</li>
        # </ul>
        # @type FillType: Integer
        # @param FlowReadLimit: 签署人阅读合同限制参数
        #  <br/>取值：
        # <ul>
        # <li> LimitReadTimeAndBottom，阅读合同必须限制阅读时长并且必须阅读到底</li>
        # <li> LimitReadTime，阅读合同仅限制阅读时长</li>
        # <li> LimitBottom，阅读合同仅限制必须阅读到底</li>
        # <li> NoReadTimeAndBottom，阅读合同不限制阅读时长且不限制阅读到底（白名单功能，请联系客户经理开白使用）</li>
        # </ul>
        # @type FlowReadLimit: String

        attr_accessor :NoRefuse, :NoTransfer, :FillType, :FlowReadLimit

        def initialize(norefuse=nil, notransfer=nil, filltype=nil, flowreadlimit=nil)
          @NoRefuse = norefuse
          @NoTransfer = notransfer
          @FillType = filltype
          @FlowReadLimit = flowreadlimit
        end

        def deserialize(params)
          @NoRefuse = params['NoRefuse']
          @NoTransfer = params['NoTransfer']
          @FillType = params['FillType']
          @FlowReadLimit = params['FlowReadLimit']
        end
      end

      # 指定签署人限制项
      class ApproverRestriction < TencentCloud::Common::AbstractModel
        # @param Name: 指定签署人名字
        # @type Name: String
        # @param Mobile: 指定签署人手机号，11位数字
        # @type Mobile: String
        # @param IdCardType: 指定签署人证件类型，ID_CARD-身份证
        # @type IdCardType: String
        # @param IdCardNumber: 指定签署人证件号码，字母大写
        # @type IdCardNumber: String

        attr_accessor :Name, :Mobile, :IdCardType, :IdCardNumber

        def initialize(name=nil, mobile=nil, idcardtype=nil, idcardnumber=nil)
          @Name = name
          @Mobile = mobile
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
        end

        def deserialize(params)
          @Name = params['Name']
          @Mobile = params['Mobile']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
        end
      end

      # 授权用户
      class AuthorizedUser < TencentCloud::Common::AbstractModel
        # @param UserId: 电子签系统中的用户id
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # 自动签开启、签署相关配置
      class AutoSignConfig < TencentCloud::Common::AbstractModel
        # @param UserInfo: 自动签开通个人用户信息, 包括名字,身份证等
        # @type UserInfo: :class:`Tencentcloud::Ess.v20201111.models.UserThreeFactor`
        # @param CertInfoCallback: 是否回调证书信息:
        # <ul><li>**false**: 不需要(默认)</li>
        # <li>**true**:需要</li></ul>
        # @type CertInfoCallback: Boolean
        # @param UserDefineSeal: 是否支持用户自定义签名印章:
        # <ul><li>**false**: 不能自己定义(默认)</li>
        # <li>**true**: 可以自己定义</li></ul>
        # @type UserDefineSeal: Boolean
        # @param SealImgCallback: 回调中是否需要自动签将要使用的印章(签名) 图片的 base64:
        # <ul><li>**false**: 不需要(默认)</li>
        # <li>**true**: 需要</li></ul>
        # @type SealImgCallback: Boolean
        # @param CallbackUrl: 执行结果的回调URL，该URL仅支持HTTP或HTTPS协议，建议采用HTTPS协议以保证数据传输的安全性。
        # 腾讯电子签服务器将通过POST方式，application/json格式通知执行结果，请确保外网可以正常访问该URL。
        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type CallbackUrl: String
        # @param VerifyChannels: 开通时候的身份验证方式, 取值为：
        # <ul><li>**WEIXINAPP** : 微信人脸识别</li>
        # <li>**INSIGHT** : 慧眼人脸认别</li>
        # <li>**TELECOM** : 运营商三要素验证</li></ul>
        # 注：
        # <ul><li>如果是小程序开通链接，支持传 WEIXINAPP / TELECOM。为空默认 WEIXINAPP</li>
        # <li>如果是 H5 开通链接，支持传 INSIGHT / TELECOM。为空默认 INSIGHT </li></ul>
        # @type VerifyChannels: Array
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。

        # <ul><li>**0**: (默认) 使用个人自动签账号许可进行开通，个人自动签账号许可有效期1年，注: `不可解绑释放更换他人`</li>
        # <li>**1**: 不绑定自动签账号许可开通，后续使用合同份额进行合同发起</li></ul>
        # @type LicenseType: Integer

        attr_accessor :UserInfo, :CertInfoCallback, :UserDefineSeal, :SealImgCallback, :CallbackUrl, :VerifyChannels, :LicenseType
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12

        def initialize(userinfo=nil, certinfocallback=nil, userdefineseal=nil, sealimgcallback=nil, callbackurl=nil, verifychannels=nil, licensetype=nil)
          @UserInfo = userinfo
          @CertInfoCallback = certinfocallback
          @UserDefineSeal = userdefineseal
          @SealImgCallback = sealimgcallback
          @CallbackUrl = callbackurl
          @VerifyChannels = verifychannels
          @LicenseType = licensetype
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @CertInfoCallback = params['CertInfoCallback']
          @UserDefineSeal = params['UserDefineSeal']
          @SealImgCallback = params['SealImgCallback']
          @CallbackUrl = params['CallbackUrl']
          @VerifyChannels = params['VerifyChannels']
          @LicenseType = params['LicenseType']
        end
      end

      # 用户计费使用情况详情
      class BillUsageDetail < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param OperatorName: 合同经办人名称
        # 如果有多个经办人用分号隔开。
        # @type OperatorName: String
        # @param CreateOrganizationName: 发起方组织机构名称
        # @type CreateOrganizationName: String
        # @param FlowName: 合同流程的名称。
        # @type FlowName: String
        # @param Status: 当前合同状态,如下是状态码对应的状态。
        # <ul>
        # <li>**0**: 还没有发起</li>
        # <li>**1**: 等待签署</li>
        # <li>**2**: 部分签署 </li>
        # <li>**3**: 拒签</li>
        # <li>**4**: 已签署 </li>
        # <li>**5**: 已过期 </li>
        # <li>**6**: 已撤销 </li>
        # <li>**7**: 还没有预发起</li>
        # <li>**8**: 等待填写</li>
        # <li>**9**: 部分填写 </li>
        # <li>**10**: 拒填</li>
        # <li>**11**: 已解除</li>
        # </ul>
        # @type Status: Integer
        # @param QuotaType: 查询的套餐类型
        # 对应关系如下:
        # <ul>
        # <li>**CloudEnterprise**: 企业版合同</li>
        # <li>**SingleSignature**: 单方签章</li>
        # <li>**CloudProve**: 签署报告</li>
        # <li>**CloudOnlineSign**: 腾讯会议在线签约</li>
        # <li>**ChannelWeCard**: 微工卡</li>
        # <li>**SignFlow**: 合同套餐</li>
        # <li>**SignFace**: 签署意愿（人脸识别）</li>
        # <li>**SignPassword**: 签署意愿（密码）</li>
        # <li>**SignSMS**: 签署意愿（短信）</li>
        # <li>**PersonalEssAuth**: 签署人实名（腾讯电子签认证）</li>
        # <li>**PersonalThirdAuth**: 签署人实名（信任第三方认证）</li>
        # <li>**OrgEssAuth**: 签署企业实名</li>
        # <li>**FlowNotify**: 短信通知</li>
        # <li>**AuthService**: 企业工商信息查询</li>
        # </ul>
        # @type QuotaType: String
        # @param UseCount: 合同使用量
        # 注: `如果消耗类型是撤销返还，此值为负值代表返还的合同数量`
        # @type UseCount: Integer
        # @param CostTime: 消耗的时间戳，格式为Unix标准时间戳（秒）。
        # @type CostTime: Integer
        # @param QuotaName: 消耗的套餐名称
        # @type QuotaName: String
        # @param CostType: 消耗类型
        # **1**.扣费
        # **2**.撤销返还
        # @type CostType: Integer
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :FlowId, :OperatorName, :CreateOrganizationName, :FlowName, :Status, :QuotaType, :UseCount, :CostTime, :QuotaName, :CostType, :Remark

        def initialize(flowid=nil, operatorname=nil, createorganizationname=nil, flowname=nil, status=nil, quotatype=nil, usecount=nil, costtime=nil, quotaname=nil, costtype=nil, remark=nil)
          @FlowId = flowid
          @OperatorName = operatorname
          @CreateOrganizationName = createorganizationname
          @FlowName = flowname
          @Status = status
          @QuotaType = quotatype
          @UseCount = usecount
          @CostTime = costtime
          @QuotaName = quotaname
          @CostType = costtype
          @Remark = remark
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @OperatorName = params['OperatorName']
          @CreateOrganizationName = params['CreateOrganizationName']
          @FlowName = params['FlowName']
          @Status = params['Status']
          @QuotaType = params['QuotaType']
          @UseCount = params['UseCount']
          @CostTime = params['CostTime']
          @QuotaName = params['QuotaName']
          @CostType = params['CostType']
          @Remark = params['Remark']
        end
      end

      # BindEmployeeUserIdWithClientOpenId请求参数结构体
      class BindEmployeeUserIdWithClientOpenIdRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)；或者通过<a href="https://qian.tencent.com/developers/companyApis/staffs/DescribeIntegrationEmployees" target="_blank">DescribeIntegrationEmployees</a>接口获取。
        # @type UserId: String
        # @param OpenId: 员工在贵司业务系统中的唯一身份标识，用于与腾讯电子签账号进行映射，确保在同一企业内不会出现重复。 该标识最大长度为64位字符串，仅支持包含26个英文字母和数字0-9的字符。
        # @type OpenId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :UserId, :OpenId, :Agent

        def initialize(operator=nil, userid=nil, openid=nil, agent=nil)
          @Operator = operator
          @UserId = userid
          @OpenId = openid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserId = params['UserId']
          @OpenId = params['OpenId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # BindEmployeeUserIdWithClientOpenId返回参数结构体
      class BindEmployeeUserIdWithClientOpenIdResponse < TencentCloud::Common::AbstractModel
        # @param Status: 绑定是否成功。
        # <ul><li>**0**：失败</li><li>**1**：成功</li></ul>
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 企业应用回调信息
      class CallbackInfo < TencentCloud::Common::AbstractModel
        # @param CallbackUrl: 回调url,。请确保回调地址能够接收并处理 HTTP POST 请求，并返回状态码 200 以表示处理正常。
        # @type CallbackUrl: String
        # @param Token: 回调加密key，已废弃
        # @type Token: String
        # @param CallbackKey: 回调加密key，用于回调消息加解密。
        # @type CallbackKey: String
        # @param CallbackToken: 回调验签token，用于回调通知校验。
        # @type CallbackToken: String

        attr_accessor :CallbackUrl, :Token, :CallbackKey, :CallbackToken
        extend Gem::Deprecate
        deprecate :Token, :none, 2023, 12
        deprecate :Token=, :none, 2023, 12

        def initialize(callbackurl=nil, token=nil, callbackkey=nil, callbacktoken=nil)
          @CallbackUrl = callbackurl
          @Token = token
          @CallbackKey = callbackkey
          @CallbackToken = callbacktoken
        end

        def deserialize(params)
          @CallbackUrl = params['CallbackUrl']
          @Token = params['Token']
          @CallbackKey = params['CallbackKey']
          @CallbackToken = params['CallbackToken']
        end
      end

      # 此结构体 (Caller) 用于描述调用方属性。
      class Caller < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用号
        # @type ApplicationId: String
        # @param OrganizationId: 主机构ID
        # @type OrganizationId: String
        # @param OperatorId: 经办人的用户ID，同UserId
        # @type OperatorId: String
        # @param SubOrganizationId: 下属机构ID
        # @type SubOrganizationId: String

        attr_accessor :ApplicationId, :OrganizationId, :OperatorId, :SubOrganizationId
        extend Gem::Deprecate
        deprecate :ApplicationId, :none, 2023, 12
        deprecate :ApplicationId=, :none, 2023, 12
        deprecate :OrganizationId, :none, 2023, 12
        deprecate :OrganizationId=, :none, 2023, 12
        deprecate :SubOrganizationId, :none, 2023, 12
        deprecate :SubOrganizationId=, :none, 2023, 12

        def initialize(applicationid=nil, organizationid=nil, operatorid=nil, suborganizationid=nil)
          @ApplicationId = applicationid
          @OrganizationId = organizationid
          @OperatorId = operatorid
          @SubOrganizationId = suborganizationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @OrganizationId = params['OrganizationId']
          @OperatorId = params['OperatorId']
          @SubOrganizationId = params['SubOrganizationId']
        end
      end

      # CancelFlow请求参数结构体
      class CancelFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID, 为32位字符串。

        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param CancelMessage: 撤销此合同流程的原因，最多支持200个字符长度。只能由中文、字母、数字、中文标点和英文标点组成（不支持表情）。
        # @type CancelMessage: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :CancelMessage, :Agent

        def initialize(operator=nil, flowid=nil, cancelmessage=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @CancelMessage = cancelmessage
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @CancelMessage = params['CancelMessage']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CancelFlow返回参数结构体
      class CancelFlowResponse < TencentCloud::Common::AbstractModel
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

      # CancelMultiFlowSignQRCode请求参数结构体
      class CancelMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param QrCodeId: 二维码ID，为32位字符串。
        # @type QrCodeId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :QrCodeId, :Agent

        def initialize(operator=nil, qrcodeid=nil, agent=nil)
          @Operator = operator
          @QrCodeId = qrcodeid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @QrCodeId = params['QrCodeId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CancelMultiFlowSignQRCode返回参数结构体
      class CancelMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
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

      # CancelUserAutoSignEnableUrl请求参数结构体
      class CancelUserAutoSignEnableUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 预撤销链接的用户信息，包含姓名、证件类型、证件号码等信息。
        # @type UserInfo: :class:`Tencentcloud::Ess.v20201111.models.UserThreeFactor`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :SceneKey, :UserInfo, :Agent

        def initialize(operator=nil, scenekey=nil, userinfo=nil, agent=nil)
          @Operator = operator
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CancelUserAutoSignEnableUrl返回参数结构体
      class CancelUserAutoSignEnableUrlResponse < TencentCloud::Common::AbstractModel
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

      # 抄送信息
      class CcInfo < TencentCloud::Common::AbstractModel
        # @param Mobile: 被抄送方手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 请确认手机号所有方为此业务通知方。
        # @type Mobile: String
        # @param Name: 被抄送方姓名。
        # 抄送方的姓名将用于身份认证，请确保填写的姓名为抄送方的真实姓名，而非昵称等代名。
        # @type Name: String
        # @param CcType: 被抄送方类型, 可设置以下类型:
        # <ul><li> **0** :个人抄送方</li>
        # <li> **1** :企业员工抄送方</li></ul>
        # @type CcType: Integer
        # @param CcPermission: 被抄送方权限, 可设置如下权限:
        # <ul><li> **0** :可查看合同内容</li>
        # <li> **1** :可查看合同内容也可下载原文</li></ul>
        # @type CcPermission: Integer
        # @param NotifyType: 通知签署方经办人的方式,  有以下途径:
        # <ul><li> **sms** :  (默认)短信</li>
        # <li> **none** : 不通知</li></ul>
        # @type NotifyType: String

        attr_accessor :Mobile, :Name, :CcType, :CcPermission, :NotifyType

        def initialize(mobile=nil, name=nil, cctype=nil, ccpermission=nil, notifytype=nil)
          @Mobile = mobile
          @Name = name
          @CcType = cctype
          @CcPermission = ccpermission
          @NotifyType = notifytype
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          @Name = params['Name']
          @CcType = params['CcType']
          @CcPermission = params['CcPermission']
          @NotifyType = params['NotifyType']
        end
      end

      # 此结构体 (Component) 用于描述控件属性。

      # 在通过文件发起合同时，对应的component有三种定位方式
      # 1. 绝对定位方式
      # 2. 表单域(FIELD)定位方式
      # 3. 关键字(KEYWORD)定位方式，使用关键字定位时，请确保PDF原始文件内是关键字以文字形式保存在PDF文件中，不支持对图片内文字进行关键字查找
      # 可以参考官网说明
      # https://cloud.tencent.com/document/product/1323/78346#component-.E4.B8.89.E7.A7.8D.E5.AE.9A.E4.BD.8D.E6.96.B9.E5.BC.8F.E8.AF.B4.E6.98.8E
      class Component < TencentCloud::Common::AbstractModel
        # @param ComponentType: 如果是Component填写控件类型，则可选的字段为：
        # TEXT - 普通文本控件，输入文本字符串；
        # MULTI_LINE_TEXT - 多行文本控件，输入文本字符串；
        # CHECK_BOX - 勾选框控件，若选中填写ComponentValue 填写 true或者 false 字符串；
        # FILL_IMAGE - 图片控件，ComponentValue 填写图片的资源 ID；
        # DYNAMIC_TABLE - 动态表格控件；
        # ATTACHMENT - 附件控件,ComponentValue 填写附件图片的资源 ID列表，以逗号分隔；
        # SELECTOR - 选择器控件，ComponentValue填写选择的字符串内容；
        # DATE - 日期控件；默认是格式化为xxxx年xx月xx日字符串；
        # DISTRICT - 省市区行政区控件，ComponentValue填写省市区行政区字符串内容；

        # 如果是SignComponent签署控件类型，则可选的字段为
        # SIGN_SEAL - 签署印章控件；
        # SIGN_DATE - 签署日期控件；
        # SIGN_SIGNATURE - 用户签名控件；
        # SIGN_PERSONAL_SEAL - 个人签署印章控件（使用文件发起暂不支持此类型）；
        # SIGN_PAGING_SEAL - 骑缝章；若文件发起，需要对应填充ComponentPosY、ComponentWidth、ComponentHeight
        # SIGN_OPINION - 签署意见控件，用户需要根据配置的签署意见内容，完成对意见内容的确认；
        # SIGN_LEGAL_PERSON_SEAL - 企业法定代表人控件。

        # 表单域的控件不能作为印章和签名控件
        # @type ComponentType: String
        # @param FileIndex: 控件所属文件的序号（取值为：0-N）。
        # 目前单文件的情况下，值是0
        # @type FileIndex: Integer
        # @param ComponentHeight: 参数控件高度，单位pt
        # @type ComponentHeight: Float
        # @param ComponentWidth: 参数控件宽度，单位pt
        # @type ComponentWidth: Float
        # @param ComponentPage: 参数控件所在页码，取值为：1-N
        # @type ComponentPage: Integer
        # @param ComponentPosX: 参数控件X位置，单位pt
        # @type ComponentPosX: Float
        # @param ComponentPosY: 参数控件Y位置，单位pt
        # @type ComponentPosY: Float
        # @param ComponentId: 控件唯一ID。
        # 或使用文件发起合同时用于GenerateMode==KEYWORD 指定关键字
        # @type ComponentId: String
        # @param ComponentName: 控件名。
        # 或使用文件发起合同时用于GenerateMode==FIELD 指定表单域名称
        # @type ComponentName: String
        # @param ComponentRequired: 是否必选，默认为false-非必选
        # @type ComponentRequired: Boolean
        # @param ComponentRecipientId: 控件关联的参与方ID，对应Recipient结构体中的RecipientId
        # @type ComponentRecipientId: String
        # @param ComponentExtra: 扩展参数：
        # 为JSON格式。
        # 不同类型的控件会有部分非通用参数

        # ComponentType为TEXT、MULTI_LINE_TEXT时，支持以下参数：
        # 1 Font：目前只支持黑体、宋体
        # 2 FontSize： 范围12-72
        # 3 FontAlign： Left/Right/Center，左对齐/居中/右对齐
        # 4 FontColor：字符串类型，格式为RGB颜色数字
        # 参数样例：{\"FontColor\":\"255,0,0\",\"FontSize\":12}

        # ComponentType为FILL_IMAGE时，支持以下参数：
        # NotMakeImageCenter：bool。是否设置图片居中。false：居中（默认）。 true: 不居中
        # FillMethod: int. 填充方式。0-铺满（默认）；1-等比例缩放

        # ComponentType为SIGN_SIGNATURE类型可以控制签署方式
        # {“ComponentTypeLimit”: [“xxx”]}
        # xxx可以为：
        # HANDWRITE – 手写签名
        # OCR_ESIGN -- AI智能识别手写签名
        # ESIGN -- 个人印章类型
        # SYSTEM_ESIGN -- 系统签名（该类型可以在用户签署时根据用户姓名一键生成一个签名来进行签署）
        # 如：{“ComponentTypeLimit”: [“SYSTEM_ESIGN”]}

        # ComponentType为SIGN_DATE时，支持以下参数：
        # 1 Font：字符串类型目前只支持"黑体"、"宋体"，如果不填默认为"黑体"
        # 2 FontSize： 数字类型，范围6-72，默认值为12
        # 3 FontAlign： 字符串类型，可取Left/Right/Center，对应左对齐/居中/右对齐
        # 4 Format： 字符串类型，日期格式，必须是以下五种之一 “yyyy m d”，”yyyy年m月d日”，”yyyy/m/d”，”yyyy-m-d”，”yyyy.m.d”。
        # 5 Gaps:： 字符串类型，仅在Format为“yyyy m d”时起作用，格式为用逗号分开的两个整数，例如”2,2”，两个数字分别是日期格式的前后两个空隙中的空格个数
        # 如果extra参数为空，默认为”yyyy年m月d日”格式的居中日期
        # 特别地，如果extra中Format字段为空或无法被识别，则extra参数会被当作默认值处理（Font，FontSize，Gaps和FontAlign都不会起效）
        # 参数样例： "ComponentExtra": "{"Format":“yyyy m d”,"FontSize":12,"Gaps":"2,2", "FontAlign":"Right"}"

        # ComponentType为SIGN_SEAL类型时，支持以下参数：
        # 1.PageRanges：PageRange的数组，通过PageRanges属性设置该印章在PDF所有页面上盖章（适用于标书在所有页面盖章的情况）
        # 参数样例： "ComponentExtra":"{"PageRange":[{"BeginPage":1,"EndPage":-1}]}"
        # @type ComponentExtra: String
        # @param IsFormType: 是否是表单域类型，默认false-不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFormType: Boolean
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # TEXT - 文本内容
        # MULTI_LINE_TEXT - 文本内容
        # CHECK_BOX - true/false
        # FILL_IMAGE、ATTACHMENT - 附件的FileId，需要通过UploadFiles接口上传获取
        # SELECTOR - 选项值
        # DYNAMIC_TABLE - 传入json格式的表格内容，具体见数据结构FlowInfo：https://cloud.tencent.com/document/api/1420/61525#FlowInfo
        # DATE - 默认是格式化为xxxx年xx月xx日
        # SIGN_SEAL - 印章ID，于控制台查询获取
        # SIGN_PAGING_SEAL - 可以指定印章ID，于控制台查询获取

        # 控件值约束说明：
        # 企业全称控件：
        #   约束：企业名称中文字符中文括号
        #   检查正则表达式：/^[\u3400-\u4dbf\u4e00-\u9fa5（）]+$/

        # 统一社会信用代码控件：
        #   检查正则表达式：/^[A-Z0-9]{1,18}$/

        # 法人名称控件：
        #   约束：最大50个字符，2到25个汉字或者1到50个字母
        #   检查正则表达式：/^([\u3400-\u4dbf\u4e00-\u9fa5.·]{2,25}|[a-zA-Z·,\s-]{1,50})$/

        # 签署意见控件：
        #   约束：签署意见最大长度为50字符

        # 签署人手机号控件：
        #   约束：国内手机号 13,14,15,16,17,18,19号段长度11位

        # 签署人身份证控件：
        #   约束：合法的身份证号码检查

        # 控件名称：
        #   约束：控件名称最大长度为20字符

        # 单行文本控件：
        #   约束：只允许输入中文，英文，数字，中英文标点符号

        # 多行文本控件：
        #   约束：只允许输入中文，英文，数字，中英文标点符号

        # 勾选框控件：
        #   约束：选择填字符串true，不选填字符串false

        # 选择器控件：
        #   约束：同单行文本控件约束，填写选择值中的字符串

        # 数字控件：
        #   约束：请输入有效的数字(可带小数点)
        #   检查正则表达式：/^(-|\+)?\d+(\.\d+)?$/

        # 日期控件：
        #   约束：格式：yyyy年mm月dd日

        # 附件控件：
        #   约束：JPG或PNG图片，上传数量限制，1到6个，最大6个附件

        # 图片控件：
        #   约束：JPG或PNG图片，填写上传的图片资源ID

        # 邮箱控件：
        #   约束：请输入有效的邮箱地址, w3c标准
        #   检查正则表达式：/^([A-Za-z0-9_\-.!#$%&])+@([A-Za-z0-9_\-.])+\.([A-Za-z]{2,4})$/
        #   参考：https://emailregex.com/

        # 地址控件：
        #   同单行文本控件约束

        # 省市区控件：
        #   同单行文本控件约束

        # 性别控件：
        #   同单行文本控件约束，填写选择值中的字符串

        # 学历控件：
        #   同单行文本控件约束，填写选择值中的字符串
        # @type ComponentValue: String
        # @param GenerateMode: 控件生成的方式：
        # NORMAL - 普通控件
        # FIELD - 表单域
        # KEYWORD - 关键字（设置关键字时，请确保PDF原始文件内是关键字以文字形式保存在PDF文件中，不支持对图片内文字进行关键字查找）
        # @type GenerateMode: String
        # @param ComponentDateFontSize: 日期签署控件的字号，默认为 12
        # @type ComponentDateFontSize: Integer
        # @param ChannelComponentId: 第三方应用集成平台模板控件 ID 标识
        # @type ChannelComponentId: String
        # @param OffsetX: 指定关键字时横坐标偏移量，单位pt
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetX: Float
        # @param OffsetY: 指定关键字时纵坐标偏移量，单位pt
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetY: Float
        # @param ChannelComponentSource: 第三方应用集成中子客企业控件来源。
        # 0-平台指定；
        # 1-用户自定义
        # @type ChannelComponentSource: Integer
        # @param KeywordOrder: 指定关键字排序规则，Positive-正序，Reverse-倒序。
        # 传入Positive时会根据关键字在PDF文件内的顺序进行排列。在指定KeywordIndexes时，0代表在PDF内查找内容时，查找到的第一个关键字。
        # 传入Reverse时会根据关键字在PDF文件内的反序进行排列。在指定KeywordIndexes时，0代表在PDF内查找内容时，查找到的最后一个关键字。
        # @type KeywordOrder: String
        # @param KeywordPage: 指定关键字页码。
        # 指定页码后，将只在指定的页码内查找关键字，非该页码的关键字将不会查询出来
        # @type KeywordPage: Integer
        # @param RelativeLocation: 关键字位置模式，
        # Middle-居中，
        # Below-正下方，
        # Right-正右方，
        # LowerRight-右上角，
        # UpperRight-右下角。
        # 示例：如果设置Middle的关键字盖章，则印章的中心会和关键字的中心重合，如果设置Below，则印章在关键字的正下方
        # @type RelativeLocation: String
        # @param KeywordIndexes: 关键字索引。
        # 如果一个关键字在PDF文件中存在多个，可以通过关键字索引指定使用第几个关键字作为最后的结果，可指定多个索引。
        # 示例：[0,2]，说明使用PDF文件内第1个和第3个关键字位置。
        # @type KeywordIndexes: Array
        # @param LockComponentValue: 是否锁定控件值不允许编辑（嵌入式发起使用）
        # <br/>默认false：不锁定控件值，允许在页面编辑控件值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockComponentValue: Boolean
        # @param ForbidMoveAndDelete: 是否禁止移动和删除控件
        # <br/>默认false，不禁止移动和删除控件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForbidMoveAndDelete: Boolean

        attr_accessor :ComponentType, :FileIndex, :ComponentHeight, :ComponentWidth, :ComponentPage, :ComponentPosX, :ComponentPosY, :ComponentId, :ComponentName, :ComponentRequired, :ComponentRecipientId, :ComponentExtra, :IsFormType, :ComponentValue, :GenerateMode, :ComponentDateFontSize, :ChannelComponentId, :OffsetX, :OffsetY, :ChannelComponentSource, :KeywordOrder, :KeywordPage, :RelativeLocation, :KeywordIndexes, :LockComponentValue, :ForbidMoveAndDelete

        def initialize(componenttype=nil, fileindex=nil, componentheight=nil, componentwidth=nil, componentpage=nil, componentposx=nil, componentposy=nil, componentid=nil, componentname=nil, componentrequired=nil, componentrecipientid=nil, componentextra=nil, isformtype=nil, componentvalue=nil, generatemode=nil, componentdatefontsize=nil, channelcomponentid=nil, offsetx=nil, offsety=nil, channelcomponentsource=nil, keywordorder=nil, keywordpage=nil, relativelocation=nil, keywordindexes=nil, lockcomponentvalue=nil, forbidmoveanddelete=nil)
          @ComponentType = componenttype
          @FileIndex = fileindex
          @ComponentHeight = componentheight
          @ComponentWidth = componentwidth
          @ComponentPage = componentpage
          @ComponentPosX = componentposx
          @ComponentPosY = componentposy
          @ComponentId = componentid
          @ComponentName = componentname
          @ComponentRequired = componentrequired
          @ComponentRecipientId = componentrecipientid
          @ComponentExtra = componentextra
          @IsFormType = isformtype
          @ComponentValue = componentvalue
          @GenerateMode = generatemode
          @ComponentDateFontSize = componentdatefontsize
          @ChannelComponentId = channelcomponentid
          @OffsetX = offsetx
          @OffsetY = offsety
          @ChannelComponentSource = channelcomponentsource
          @KeywordOrder = keywordorder
          @KeywordPage = keywordpage
          @RelativeLocation = relativelocation
          @KeywordIndexes = keywordindexes
          @LockComponentValue = lockcomponentvalue
          @ForbidMoveAndDelete = forbidmoveanddelete
        end

        def deserialize(params)
          @ComponentType = params['ComponentType']
          @FileIndex = params['FileIndex']
          @ComponentHeight = params['ComponentHeight']
          @ComponentWidth = params['ComponentWidth']
          @ComponentPage = params['ComponentPage']
          @ComponentPosX = params['ComponentPosX']
          @ComponentPosY = params['ComponentPosY']
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
          @ComponentRequired = params['ComponentRequired']
          @ComponentRecipientId = params['ComponentRecipientId']
          @ComponentExtra = params['ComponentExtra']
          @IsFormType = params['IsFormType']
          @ComponentValue = params['ComponentValue']
          @GenerateMode = params['GenerateMode']
          @ComponentDateFontSize = params['ComponentDateFontSize']
          @ChannelComponentId = params['ChannelComponentId']
          @OffsetX = params['OffsetX']
          @OffsetY = params['OffsetY']
          @ChannelComponentSource = params['ChannelComponentSource']
          @KeywordOrder = params['KeywordOrder']
          @KeywordPage = params['KeywordPage']
          @RelativeLocation = params['RelativeLocation']
          @KeywordIndexes = params['KeywordIndexes']
          @LockComponentValue = params['LockComponentValue']
          @ForbidMoveAndDelete = params['ForbidMoveAndDelete']
        end
      end

      # 签署控件的类型和范围限制条件，用于控制文件发起后签署人拖拽签署区时可使用的控件类型和具体的印章或签名方式。
      class ComponentLimit < TencentCloud::Common::AbstractModel
        # @param ComponentType: 控件类型，支持以下类型
        # <ul><li>SIGN_SEAL : 印章控件</li>
        # <li>SIGN_PAGING_SEAL : 骑缝章控件</li>
        # <li>SIGN_LEGAL_PERSON_SEAL : 企业法定代表人控件</li>
        # <li>SIGN_SIGNATURE : 用户签名控件</li></ul>
        # @type ComponentType: String
        # @param ComponentValue: 签署控件类型的值(可选)，用与限制签署时印章或者签名的选择范围

        # 1.当ComponentType 是 SIGN_SEAL 或者 SIGN_PAGING_SEAL 时可传入企业印章Id（支持多个）

        # 2.当ComponentType 是 SIGN_SIGNATURE 时可传入以下类型（支持多个）

        # <ul><li>HANDWRITE : 手写签名</li>
        # <li>OCR_ESIGN : OCR印章（智慧手写签名）</li>
        # <li>ESIGN : 个人印章</li>
        # <li>SYSTEM_ESIGN : 系统印章</li></ul>

        # 3.当ComponentType 是 SIGN_LEGAL_PERSON_SEAL 时无需传递此参数。
        # @type ComponentValue: Array

        attr_accessor :ComponentType, :ComponentValue

        def initialize(componenttype=nil, componentvalue=nil)
          @ComponentType = componenttype
          @ComponentValue = componentvalue
        end

        def deserialize(params)
          @ComponentType = params['ComponentType']
          @ComponentValue = params['ComponentValue']
        end
      end

      # CreateBatchCancelFlowUrl请求参数结构体
      class CreateBatchCancelFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # <br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 需要执行撤回的流程(合同)的编号列表，最多100个.
        # <br>列表中的流程(合同)编号不要重复.
        # @type FlowIds: Array
        # @param Agent: 代理企业和员工的信息。
        # <br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowIds, :Agent

        def initialize(operator=nil, flowids=nil, agent=nil)
          @Operator = operator
          @FlowIds = flowids
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowIds = params['FlowIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateBatchCancelFlowUrl返回参数结构体
      class CreateBatchCancelFlowUrlResponse < TencentCloud::Common::AbstractModel
        # @param BatchCancelFlowUrl: 批量撤回签署流程链接
        # @type BatchCancelFlowUrl: String
        # @param FailMessages: 签署流程撤回失败信息
        # 数组里边的错误原因与传进来的FlowIds一一对应,如果是空字符串则标识没有出错
        # @type FailMessages: Array
        # @param UrlExpireOn: 签署连接过期时间字符串：年月日-时分秒

        # 例如:2023-07-28 17:25:59
        # @type UrlExpireOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchCancelFlowUrl, :FailMessages, :UrlExpireOn, :RequestId

        def initialize(batchcancelflowurl=nil, failmessages=nil, urlexpireon=nil, requestid=nil)
          @BatchCancelFlowUrl = batchcancelflowurl
          @FailMessages = failmessages
          @UrlExpireOn = urlexpireon
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchCancelFlowUrl = params['BatchCancelFlowUrl']
          @FailMessages = params['FailMessages']
          @UrlExpireOn = params['UrlExpireOn']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchQuickSignUrl请求参数结构体
      class CreateBatchQuickSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param FlowIds: 批量签署的合同流程ID数组。
        # 注: `在调用此接口时，请确保合同流程均为本企业发起，且合同数量不超过100个。`
        # @type FlowIds: Array
        # @param FlowApproverInfo: 批量签署的流程签署人，其中姓名(ApproverName)、参与人类型(ApproverType)必传，手机号(ApproverMobile)和证件信息(ApproverIdCardType、ApproverIdCardNumber)可任选一种或全部传入。
        # 注:
        # `1. ApproverType目前只支持个人类型的签署人。`
        # `2. 签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。`
        # `3. 当需要通过短信验证码签署时，手机号ApproverMobile需要与发起合同时填写的用户手机号一致。`
        # @type FlowApproverInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowCreateApprover`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId(子企业的组织ID)为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，此链接及支持http://和https://，最大长度1000个字符。(建议https协议)
        # @type JumpUrl: String
        # @param SignatureTypes: 指定批量签署合同的签名类型，可传递以下值：
        # <ul><li>**0**：手写签名(默认)</li>
        # <li>**1**：OCR楷体</li></ul>
        # 注：
        # <ul><li>默认情况下，签名类型为手写签名</li>
        # <li>您可以传递多种值，表示可用多种签名类型。</li></ul>
        # @type SignatureTypes: Array
        # @param ApproverSignTypes: 指定批量签署合同的认证校验方式，可传递以下值：
        # <ul><li>**1**：人脸认证(默认)，需进行人脸识别成功后才能签署合同</li>
        # <li>**2**：密码认证(默认)，需输入与用户在腾讯电子签设置的密码一致才能校验成功进行合同签署</li>
        # <li>**3**：运营商三要素，需到运营商处比对手机号实名信息(名字、手机号、证件号)校验一致才能成功进行合同签署。</li></ul>
        # 注：
        # <ul><li>默认情况下，认证校验方式为人脸和密码认证</li>
        # <li>您可以传递多种值，表示可用多种认证校验方式。</li></ul>
        # @type ApproverSignTypes: Array

        attr_accessor :FlowIds, :FlowApproverInfo, :Agent, :Operator, :JumpUrl, :SignatureTypes, :ApproverSignTypes

        def initialize(flowids=nil, flowapproverinfo=nil, agent=nil, operator=nil, jumpurl=nil, signaturetypes=nil, approversigntypes=nil)
          @FlowIds = flowids
          @FlowApproverInfo = flowapproverinfo
          @Agent = agent
          @Operator = operator
          @JumpUrl = jumpurl
          @SignatureTypes = signaturetypes
          @ApproverSignTypes = approversigntypes
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          unless params['FlowApproverInfo'].nil?
            @FlowApproverInfo = FlowCreateApprover.new
            @FlowApproverInfo.deserialize(params['FlowApproverInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @JumpUrl = params['JumpUrl']
          @SignatureTypes = params['SignatureTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
        end
      end

      # CreateBatchQuickSignUrl返回参数结构体
      class CreateBatchQuickSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param FlowApproverUrlInfo: 签署人签署链接信息
        # @type FlowApproverUrlInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowApproverUrlInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowApproverUrlInfo, :RequestId

        def initialize(flowapproverurlinfo=nil, requestid=nil)
          @FlowApproverUrlInfo = flowapproverurlinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowApproverUrlInfo'].nil?
            @FlowApproverUrlInfo = FlowApproverUrlInfo.new
            @FlowApproverUrlInfo.deserialize(params['FlowApproverUrlInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchSignUrl请求参数结构体
      class CreateBatchSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Name: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。

        # 注：`请确保和合同中填入的一致`
        # @type Name: String
        # @param Mobile: 手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 请确认手机号所有方为此业务通知方。

        # 注：`请确保和合同中填入的一致,  若无法保持一致，请确保在发起和生成批量签署链接时传入相同的参与方证件信息`
        # @type Mobile: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>

        # 注：`请确保和合同中填入的一致`
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>

        # 注：`请确保和合同中填入的一致`
        # @type IdCardNumber: String
        # @param NotifyType: 通知用户方式：
        # <ul>
        # <li>**NONE** : 不通知（默认）</li>
        # <li>**SMS** : 短信通知（发送短信通知到Mobile参数所传的手机号）</li>
        # </ul>
        # @type NotifyType: String
        # @param FlowIds: 本次需要批量签署的合同流程ID列表。
        # 可以不传,  如不传则是发给对方的所有待签署合同流程。
        # @type FlowIds: Array
        # @param OrganizationName: 目标签署人的企业名称，签署人如果是企业员工身份，需要传此参数。

        # 注：
        # <ul>
        # <li>请确认该名称与企业营业执照中注册的名称一致。</li>
        # <li>如果名称中包含英文括号()，请使用中文括号（）代替。</li>
        # <li>请确保此企业已完成腾讯电子签企业认证。</li>
        # </ul>
        # @type OrganizationName: String
        # @param JumpToDetail: 是否直接跳转至合同内容页面进行签署
        # <ul>
        # <li>**false**: 会跳转至批量合同流程的列表,  点击需要批量签署合同后进入合同内容页面进行签署(默认)</li>
        # <li>**true**: 跳过合同流程列表, 直接进入合同内容页面进行签署</li>
        # </ul>
        # @type JumpToDetail: Boolean

        attr_accessor :Operator, :Name, :Mobile, :Agent, :IdCardType, :IdCardNumber, :NotifyType, :FlowIds, :OrganizationName, :JumpToDetail

        def initialize(operator=nil, name=nil, mobile=nil, agent=nil, idcardtype=nil, idcardnumber=nil, notifytype=nil, flowids=nil, organizationname=nil, jumptodetail=nil)
          @Operator = operator
          @Name = name
          @Mobile = mobile
          @Agent = agent
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @NotifyType = notifytype
          @FlowIds = flowids
          @OrganizationName = organizationname
          @JumpToDetail = jumptodetail
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Name = params['Name']
          @Mobile = params['Mobile']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @NotifyType = params['NotifyType']
          @FlowIds = params['FlowIds']
          @OrganizationName = params['OrganizationName']
          @JumpToDetail = params['JumpToDetail']
        end
      end

      # CreateBatchSignUrl返回参数结构体
      class CreateBatchSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 批量签署链接，以短链形式返回，短链的有效期参考回参中的 ExpiredTime。

        # 注: `非小程序和APP集成使用`
        # @type SignUrl: String
        # @param ExpiredTime: 链接过期时间以 Unix 时间戳格式表示，默认生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
        # @type ExpiredTime: Integer
        # @param MiniAppPath: 从客户小程序或者客户APP跳转至腾讯电子签小程序进行批量签署的跳转路径

        # 注: `小程序和APP集成使用`
        # @type MiniAppPath: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignUrl, :ExpiredTime, :MiniAppPath, :RequestId

        def initialize(signurl=nil, expiredtime=nil, miniapppath=nil, requestid=nil)
          @SignUrl = signurl
          @ExpiredTime = expiredtime
          @MiniAppPath = miniapppath
          @RequestId = requestid
        end

        def deserialize(params)
          @SignUrl = params['SignUrl']
          @ExpiredTime = params['ExpiredTime']
          @MiniAppPath = params['MiniAppPath']
          @RequestId = params['RequestId']
        end
      end

      # CreateConvertTaskApi请求参数结构体
      class CreateConvertTaskApiRequest < TencentCloud::Common::AbstractModel
        # @param ResourceType: 需要进行转换的资源文件类型
        # 支持的文件类型如下：
        # <ul><li>doc</li>
        # <li>docx</li>
        # <li>xls</li>
        # <li>xlsx</li>
        # <li>jpg</li>
        # <li>jpeg</li>
        # <li>png</li>
        # <li>html</li>
        # <li>bmp</li>
        # <li>txt</li></ul>
        # @type ResourceType: String
        # @param ResourceName: 需要进行转换操作的文件资源名称，带资源后缀名。

        # 注:  `资源名称长度限制为256个字符`
        # @type ResourceName: String
        # @param ResourceId: 需要进行转换操作的文件资源Id，通过<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/UploadFiles" target="_blank">UploadFiles</a>接口获取文件资源Id。

        # 注:  `目前，此接口仅支持单个文件进行转换。`
        # @type ResourceId: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :ResourceType, :ResourceName, :ResourceId, :Operator, :Agent, :Organization
        extend Gem::Deprecate
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

        def initialize(resourcetype=nil, resourcename=nil, resourceid=nil, operator=nil, agent=nil, organization=nil)
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @ResourceId = resourceid
          @Operator = operator
          @Agent = agent
          @Organization = organization
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @ResourceId = params['ResourceId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
        end
      end

      # CreateConvertTaskApi返回参数结构体
      class CreateConvertTaskApiResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 接口返回的文件转换任务Id，可以调用接口<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/GetTaskResultApi" target="_blank">查询转换任务状态</a>获取转换任务的状态和转换后的文件资源Id。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDocument请求参数结构体
      class CreateDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填。支持填入集团子公司经办人 userId代发合同。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 此接口的合同流程ID需要由[创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlow)接口创建得到。
        # @type FlowId: String
        # @param TemplateId: 用户配置的合同模板ID，会基于此模板创建合同文档，为32位字符串。
        # 可登录腾讯电子签控制台，在 "模板"->"模板中心"->"列表展示设置"选中模板 ID 中查看某个模板的TemplateId(在页面中展示为模板ID)。
        # @type TemplateId: String
        # @param FileNames: 文件名列表，单个文件名最大长度200个字符，暂时仅支持单文件发起。设置后流程对应的文件名称当前设置的值。
        # @type FileNames: Array
        # @param FormFields: 电子文档的填写控件的填充内容。具体方式可以参考[FormField](https://qian.tencent.com/developers/companyApis/dataTypes/#formfield)结构体的定义。
        # <ul>
        # <li>支持自动签传递印章，可通过指定自动签控件id，指定印章id来完成</li>
        # </ul>
        # @type FormFields: Array
        # @param NeedPreview: 是否为预览模式，取值如下：
        # <ul><li> **false**：非预览模式（默认），会产生合同流程并返回合同流程编号FlowId。</li>
        # <li> **true**：预览模式，不产生合同流程，不返回合同流程编号FlowId，而是返回预览链接PreviewUrl，有效期为300秒，用于查看真实发起后合同的样子。</li></ul>
        # 注: `当使用的模板中存在动态表格控件时，预览结果中没有动态表格的填写内容，动态表格合成完后会触发文档合成完成的回调通知`
        # @type NeedPreview: Boolean
        # @param PreviewType: 预览模式下产生的预览链接类型
        # <ul><li> **0** :(默认) 文件流 ,点开后下载预览的合同PDF文件 </li>
        # <li> **1** :H5链接 ,点开后在浏览器中展示合同的样子。</li></ul>
        # 注: `1.此参数在NeedPreview 为true时有效`
        # `2.动态表格控件不支持H5链接方式预览`
        # @type PreviewType: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ClientToken: 已废弃字段，客户端Token，保持接口幂等性,最大长度64个字符
        # @type ClientToken: String

        attr_accessor :Operator, :FlowId, :TemplateId, :FileNames, :FormFields, :NeedPreview, :PreviewType, :Agent, :ClientToken

        def initialize(operator=nil, flowid=nil, templateid=nil, filenames=nil, formfields=nil, needpreview=nil, previewtype=nil, agent=nil, clienttoken=nil)
          @Operator = operator
          @FlowId = flowid
          @TemplateId = templateid
          @FileNames = filenames
          @FormFields = formfields
          @NeedPreview = needpreview
          @PreviewType = previewtype
          @Agent = agent
          @ClientToken = clienttoken
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @TemplateId = params['TemplateId']
          @FileNames = params['FileNames']
          unless params['FormFields'].nil?
            @FormFields = []
            params['FormFields'].each do |i|
              formfield_tmp = FormField.new
              formfield_tmp.deserialize(i)
              @FormFields << formfield_tmp
            end
          end
          @NeedPreview = params['NeedPreview']
          @PreviewType = params['PreviewType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ClientToken = params['ClientToken']
        end
      end

      # CreateDocument返回参数结构体
      class CreateDocumentResponse < TencentCloud::Common::AbstractModel
        # @param DocumentId: 合同流程的底层电子文档ID，为32位字符串。

        # 注:
        # 后续需用同样的FlowId再次调用[发起签署流程](https://qian.tencent.com/developers/companyApis/startFlows/StartFlow)，合同才能进入签署环节
        # @type DocumentId: String
        # @param PreviewFileUrl: 合同预览链接URL。

        # 注: `1.如果是预览模式(即NeedPreview设置为true)时, 才会有此预览链接URL`
        # `2.当使用的模板中存在动态表格控件时，预览结果中没有动态表格的填写内容`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewFileUrl: String
        # @param Approvers: 签署方信息，如角色ID、角色名称等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocumentId, :PreviewFileUrl, :Approvers, :RequestId

        def initialize(documentid=nil, previewfileurl=nil, approvers=nil, requestid=nil)
          @DocumentId = documentid
          @PreviewFileUrl = previewfileurl
          @Approvers = approvers
          @RequestId = requestid
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
          @PreviewFileUrl = params['PreviewFileUrl']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              approveritem_tmp = ApproverItem.new
              approveritem_tmp.deserialize(i)
              @Approvers << approveritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateEmbedWebUrl请求参数结构体
      class CreateEmbedWebUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # <br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param EmbedType: WEB嵌入资源类型，支持以下类型
        # <ul><li>CREATE_SEAL: 生成创建印章的嵌入页面</li>
        # <li>CREATE_TEMPLATE：生成创建模板的嵌入页面</li>
        # <li>MODIFY_TEMPLATE：生成编辑模板的嵌入页面</li>
        # <li>PREVIEW_TEMPLATE：生成预览模板的嵌入页面</li>
        # <li>PREVIEW_SEAL_LIST：生成预览印章列表的嵌入页面</li>
        # <li>PREVIEW_SEAL_DETAIL：生成预览印章详情的嵌入页面</li>
        # <li>EXTEND_SERVICE：生成拓展服务的嵌入页面</li>
        # <li>PREVIEW_FLOW：生成预览合同的嵌入页面</li>
        # <li>PREVIEW_FLOW_DETAIL：生成查看合同详情的嵌入页面</li></ul>
        # @type EmbedType: String
        # @param BusinessId: WEB嵌入的业务资源ID
        # <ul><li>PREVIEW_SEAL_DETAIL，必填，取值为印章id</li>
        # <li>MODIFY_TEMPLATE，PREVIEW_TEMPLATE，必填，取值为模板id</li>
        # <li>PREVIEW_FLOW，PREVIEW_FLOW_DETAIL，必填，取值为合同id</li>
        # </ul>
        # @type BusinessId: String
        # @param Agent: 代理企业和员工的信息。
        # <br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Reviewer: 抄送方信息
        # @type Reviewer: :class:`Tencentcloud::Ess.v20201111.models.ReviewerInfo`
        # @param Option: 个性化参数，用于控制页面展示内容
        # @type Option: :class:`Tencentcloud::Ess.v20201111.models.EmbedUrlOption`
        # @param UserData: 用户自定义参数
        # <ul>
        # <li>目前仅支持EmbedType=CREATE_TEMPLATE时传入</li>
        # <li>指定后，创建，编辑，删除模版时，回调都会携带该userData</li>
        # <li>支持的格式：json字符串的BASE64编码字符串</li>
        # <li>示例：<ul>
        #                  <li>json字符串：{"ComeFrom":"xxx"}，BASE64编码：eyJDb21lRnJvbSI6Inh4eCJ9</li>
        #                  <li>eyJDb21lRnJvbSI6Inh4eCJ9，为符合要求的userData数据格式</li>
        # </ul>
        # </li>
        # </ul>
        # @type UserData: String

        attr_accessor :Operator, :EmbedType, :BusinessId, :Agent, :Reviewer, :Option, :UserData

        def initialize(operator=nil, embedtype=nil, businessid=nil, agent=nil, reviewer=nil, option=nil, userdata=nil)
          @Operator = operator
          @EmbedType = embedtype
          @BusinessId = businessid
          @Agent = agent
          @Reviewer = reviewer
          @Option = option
          @UserData = userdata
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @EmbedType = params['EmbedType']
          @BusinessId = params['BusinessId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Reviewer'].nil?
            @Reviewer = ReviewerInfo.new
            @Reviewer.deserialize(params['Reviewer'])
          end
          unless params['Option'].nil?
            @Option = EmbedUrlOption.new
            @Option.deserialize(params['Option'])
          end
          @UserData = params['UserData']
        end
      end

      # CreateEmbedWebUrl返回参数结构体
      class CreateEmbedWebUrlResponse < TencentCloud::Common::AbstractModel
        # @param WebUrl: 嵌入的web链接，有效期：5分钟
        # <br/>EmbedType=PREVIEW_CC_FLOW，该url为h5链接
        # @type WebUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebUrl, :RequestId

        def initialize(weburl=nil, requestid=nil)
          @WebUrl = weburl
          @RequestId = requestid
        end

        def deserialize(params)
          @WebUrl = params['WebUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateExtendedServiceAuthInfos请求参数结构体
      class CreateExtendedServiceAuthInfosRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserIds: 本企业员工的id，需要已实名，正常在职员工
        # @type UserIds: Array
        # @param ExtendServiceType: 取值
        # <ul><li>OPEN_SERVER_SIGN：企业自动签</li>
        # <li>BATCH_SIGN：批量签署</li>
        # </ul>
        # @type ExtendServiceType: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :UserIds, :ExtendServiceType, :Agent

        def initialize(operator=nil, userids=nil, extendservicetype=nil, agent=nil)
          @Operator = operator
          @UserIds = userids
          @ExtendServiceType = extendservicetype
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserIds = params['UserIds']
          @ExtendServiceType = params['ExtendServiceType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateExtendedServiceAuthInfos返回参数结构体
      class CreateExtendedServiceAuthInfosResponse < TencentCloud::Common::AbstractModel
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

      # CreateFlowApprovers请求参数结构体
      class CreateFlowApproversRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param Approvers: 补充企业签署人信息。

        # - 如果发起方指定的补充签署人是企业微信签署人（ApproverSource=WEWORKAPP），则需要提供企业微信UserId进行补充；

        # - 如果不指定，则使用姓名和手机号进行补充。
        # @type Approvers: Array
        # @param FillApproverType: 签署人信息补充方式

        # <ul><li>**0**: 添加或签人候选人，或签支持一个节点传多个签署人，不传值默认或签。
        # 注: `或签只支持企业签署方`</li>
        # <li>**1**: 表示往未指定签署人的节点，添加一个明确的签署人，支持企业或个人签署方。</li></ul>
        # @type FillApproverType: Integer
        # @param Initiator: 在可定制的企业微信通知中，发起人可以根据具体需求进行自定义设置。
        # @type Initiator: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :Approvers, :FillApproverType, :Initiator, :Agent

        def initialize(operator=nil, flowid=nil, approvers=nil, fillapprovertype=nil, initiator=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @Approvers = approvers
          @FillApproverType = fillapprovertype
          @Initiator = initiator
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              fillapproverinfo_tmp = FillApproverInfo.new
              fillapproverinfo_tmp.deserialize(i)
              @Approvers << fillapproverinfo_tmp
            end
          end
          @FillApproverType = params['FillApproverType']
          @Initiator = params['Initiator']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateFlowApprovers返回参数结构体
      class CreateFlowApproversResponse < TencentCloud::Common::AbstractModel
        # @param FillError: 批量补充签署人时，补充失败的报错说明

        # 注:`目前仅补充动态签署人时会返回补充失败的原因`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FillError: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FillError, :RequestId

        def initialize(fillerror=nil, requestid=nil)
          @FillError = fillerror
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FillError'].nil?
            @FillError = []
            params['FillError'].each do |i|
              fillerror_tmp = FillError.new
              fillerror_tmp.deserialize(i)
              @FillError << fillerror_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowByFiles请求参数结构体
      class CreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 支持填入集团子公司经办人 userId 代发合同。

        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。

        # 该名称还将用于合同签署完成后的下载文件名。
        # @type FlowName: String
        # @param Approvers: 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。

        # 如果合同流程是有序签署，Approvers列表中参与人的顺序就是默认的签署顺序，请确保列表中参与人的顺序符合实际签署顺序。
        # @type Approvers: Array
        # @param FileIds: 本合同流程需包含的PDF文件资源编号列表，通过[UploadFiles](https://qian.tencent.com/developers/companyApis/templatesAndFiles/UploadFiles)接口获取PDF文件资源编号。

        # 注:  `目前，此接口仅支持单个文件发起。`
        # @type FileIds: Array
        # @param FlowDescription: 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        # @type FlowDescription: String
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        # @type FlowType: String
        # @param Components: 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # <ul><li> 单行文本控件      </li>
        # <li> 多行文本控件      </li>
        # <li> 勾选框控件        </li>
        # <li> 数字控件          </li>
        # <li> 图片控件          </li>
        # <li> 动态表格等填写控件</li></ul>
        # @type Components: Array
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param CcNotifyType: 可以设置以下时间节点来给抄送人发送短信通知来查看合同内容：
        # <ul><li> **0**：合同发起时通知（默认值）</li>
        # <li> **1**：签署完成后通知</li></ul>
        # @type CcNotifyType: Integer
        # @param NeedPreview: 是否为预览模式，取值如下：
        # <ul><li> **false**：非预览模式（默认），会产生合同流程并返回合同流程编号FlowId。</li>
        # <li> **true**：预览模式，不产生合同流程，不返回合同流程编号FlowId，而是返回预览链接PreviewUrl，有效期为300秒，用于查看真实发起后合同的样子。</li></ul>
        # @type NeedPreview: Boolean
        # @param PreviewType: 预览模式下产生的预览链接类型
        # <ul><li> **0** :(默认) 文件流 ,点开后下载预览的合同PDF文件 </li>
        # <li> **1** :H5链接 ,点开后在浏览器中展示合同的样子</li></ul>
        # 注: `此参数在NeedPreview 为true时有效`
        # @type PreviewType: Integer
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type Deadline: Integer
        # @param RemindedOn: 合同到期提醒时间，为Unix标准时间戳（秒）格式，支持的范围是从发起时间开始到后10年内。

        # 到达提醒时间后，腾讯电子签会短信通知发起方企业合同提醒，可用于处理合同到期事务，如合同续签等事宜。
        # @type RemindedOn: Integer
        # @param Unordered: 合同流程的签署顺序类型：
        # <ul><li> **false**：(默认)有序签署, 本合同多个参与人需要依次签署 </li>
        # <li> **true**：无序签署, 本合同多个参与人没有先后签署限制</li></ul>
        # @type Unordered: Boolean
        # @param CustomShowMap: 您可以自定义腾讯电子签小程序合同列表页展示的合同内容模板，模板中支持以下变量：
        # <ul><li>{合同名称}   </li>
        # <li>{发起方企业} </li>
        # <li>{发起方姓名} </li>
        # <li>{签署方N企业}</li>
        # <li>{签署方N姓名}</li></ul>
        # 其中，N表示签署方的编号，从1开始，不能超过签署人的数量。

        # 例如，如果是腾讯公司张三发给李四名称为“租房合同”的合同，您可以将此字段设置为：`合同名称:{合同名称};发起方: {发起方企业}({发起方姓名});签署方:{签署方1姓名}`，则小程序中列表页展示此合同为以下样子

        # 合同名称：租房合同
        # 发起方：腾讯公司(张三)
        # 签署方：李四

        # @type CustomShowMap: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param UserData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 20480长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的[回调通知](https://qian.tencent.com/developers/company/callback_types_v2)模块。
        # @type UserData: String
        # @param ApproverVerifyType: 指定个人签署方查看合同的校验方式
        # <ul><li>   **VerifyCheck**  :（默认）人脸识别,人脸识别后才能合同内容 </li>
        # <li>   **MobileCheck**  :  手机号验证, 用户手机号和参与方手机号（ApproverMobile）相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）</li></ul>
        # @type ApproverVerifyType: String
        # @param SignBeanTag: 签署方签署控件（印章/签名等）的生成方式：
        # <ul><li> **0**：在合同流程发起时，由发起人指定签署方的签署控件的位置和数量。</li>
        # <li> **1**：签署方在签署时自行添加签署控件，可以拖动位置和控制数量。</li></ul>
        # @type SignBeanTag: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：处方单（医疗自动签）  </li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String

        attr_accessor :Operator, :FlowName, :Approvers, :FileIds, :FlowDescription, :FlowType, :Components, :CcInfos, :CcNotifyType, :NeedPreview, :PreviewType, :Deadline, :RemindedOn, :Unordered, :CustomShowMap, :NeedSignReview, :UserData, :ApproverVerifyType, :SignBeanTag, :Agent, :AutoSignScene

        def initialize(operator=nil, flowname=nil, approvers=nil, fileids=nil, flowdescription=nil, flowtype=nil, components=nil, ccinfos=nil, ccnotifytype=nil, needpreview=nil, previewtype=nil, deadline=nil, remindedon=nil, unordered=nil, customshowmap=nil, needsignreview=nil, userdata=nil, approververifytype=nil, signbeantag=nil, agent=nil, autosignscene=nil)
          @Operator = operator
          @FlowName = flowname
          @Approvers = approvers
          @FileIds = fileids
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @Components = components
          @CcInfos = ccinfos
          @CcNotifyType = ccnotifytype
          @NeedPreview = needpreview
          @PreviewType = previewtype
          @Deadline = deadline
          @RemindedOn = remindedon
          @Unordered = unordered
          @CustomShowMap = customshowmap
          @NeedSignReview = needsignreview
          @UserData = userdata
          @ApproverVerifyType = approververifytype
          @SignBeanTag = signbeantag
          @Agent = agent
          @AutoSignScene = autosignscene
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowName = params['FlowName']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              approverinfo_tmp = ApproverInfo.new
              approverinfo_tmp.deserialize(i)
              @Approvers << approverinfo_tmp
            end
          end
          @FileIds = params['FileIds']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
          @CcNotifyType = params['CcNotifyType']
          @NeedPreview = params['NeedPreview']
          @PreviewType = params['PreviewType']
          @Deadline = params['Deadline']
          @RemindedOn = params['RemindedOn']
          @Unordered = params['Unordered']
          @CustomShowMap = params['CustomShowMap']
          @NeedSignReview = params['NeedSignReview']
          @UserData = params['UserData']
          @ApproverVerifyType = params['ApproverVerifyType']
          @SignBeanTag = params['SignBeanTag']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @AutoSignScene = params['AutoSignScene']
        end
      end

      # CreateFlowByFiles返回参数结构体
      class CreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。

        # 注: 如果是预览模式(即NeedPreview设置为true)时, 此处不会有值返回。
        # @type FlowId: String
        # @param PreviewUrl: 合同预览链接URL。

        # 注：如果是预览模式(即NeedPreview设置为true)时, 才会有此预览链接URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param Approvers: 签署方信息，如角色ID、角色名称等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :PreviewUrl, :Approvers, :RequestId

        def initialize(flowid=nil, previewurl=nil, approvers=nil, requestid=nil)
          @FlowId = flowid
          @PreviewUrl = previewurl
          @Approvers = approvers
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @PreviewUrl = params['PreviewUrl']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              approveritem_tmp = ApproverItem.new
              approveritem_tmp.deserialize(i)
              @Approvers << approveritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowEvidenceReport请求参数结构体
      class CreateFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :Agent

        def initialize(operator=nil, flowid=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateFlowEvidenceReport返回参数结构体
      class CreateFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportId: 出证报告 ID，可用于<a href="https://qian.tencent.com/developers/companyApis/certificate/DescribeFlowEvidenceReport" target="_blank">获取出证报告任务执行结果</a>查询出证任务结果和出证PDF的下载URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param Status: 出证任务执行的状态, 状态含义如下：

        # <ul><li>**EvidenceStatusExecuting**：  出证任务在执行中</li>
        # <li>**EvidenceStatusSuccess**：  出证任务执行成功</li>
        # <li>**EvidenceStatusFailed** ： 出征任务执行失败</li></ul>
        # @type Status: String
        # @param ReportUrl: 此字段已经废除,不再使用.
        # 出证的PDF下载地址请调用DescribeChannelFlowEvidenceReport接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportId, :Status, :ReportUrl, :RequestId
        extend Gem::Deprecate
        deprecate :ReportUrl, :none, 2023, 12
        deprecate :ReportUrl=, :none, 2023, 12

        def initialize(reportid=nil, status=nil, reporturl=nil, requestid=nil)
          @ReportId = reportid
          @Status = status
          @ReportUrl = reporturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportId = params['ReportId']
          @Status = params['Status']
          @ReportUrl = params['ReportUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowGroupByFiles请求参数结构体
      class CreateFlowGroupByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowGroupName: 合同（流程）组名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowGroupName: String
        # @param FlowGroupInfos: 合同（流程）组的子合同信息，支持2-50个子合同
        # @type FlowGroupInfos: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FlowGroupOptions: 合同（流程）组的配置项信息。
        # 其中包括：
        # <ul>
        # <li>是否通知本企业签署方</li>
        # <li>是否通知其他签署方</li>
        # </ul>
        # @type FlowGroupOptions: :class:`Tencentcloud::Ess.v20201111.models.FlowGroupOptions`

        attr_accessor :Operator, :FlowGroupName, :FlowGroupInfos, :Agent, :FlowGroupOptions

        def initialize(operator=nil, flowgroupname=nil, flowgroupinfos=nil, agent=nil, flowgroupoptions=nil)
          @Operator = operator
          @FlowGroupName = flowgroupname
          @FlowGroupInfos = flowgroupinfos
          @Agent = agent
          @FlowGroupOptions = flowgroupoptions
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowGroupName = params['FlowGroupName']
          unless params['FlowGroupInfos'].nil?
            @FlowGroupInfos = []
            params['FlowGroupInfos'].each do |i|
              flowgroupinfo_tmp = FlowGroupInfo.new
              flowgroupinfo_tmp.deserialize(i)
              @FlowGroupInfos << flowgroupinfo_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['FlowGroupOptions'].nil?
            @FlowGroupOptions = FlowGroupOptions.new
            @FlowGroupOptions.deserialize(params['FlowGroupOptions'])
          end
        end
      end

      # CreateFlowGroupByFiles返回参数结构体
      class CreateFlowGroupByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowGroupId: 合同(流程)组的合同组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param FlowIds: 合同(流程)组中子合同列表.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowGroupId, :FlowIds, :RequestId

        def initialize(flowgroupid=nil, flowids=nil, requestid=nil)
          @FlowGroupId = flowgroupid
          @FlowIds = flowids
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowGroupId = params['FlowGroupId']
          @FlowIds = params['FlowIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowGroupByTemplates请求参数结构体
      class CreateFlowGroupByTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowGroupName: 合同（流程）组名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowGroupName: String
        # @param FlowGroupInfos: 合同（流程）组的子合同信息，支持2-50个子合同
        # @type FlowGroupInfos: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FlowGroupOptions: 合同（流程）组的配置项信息。
        # 其中包括：
        # <ul>
        # <li>是否通知本企业签署方</li>
        # <li>是否通知其他签署方</li>
        # </ul>
        # @type FlowGroupOptions: :class:`Tencentcloud::Ess.v20201111.models.FlowGroupOptions`

        attr_accessor :Operator, :FlowGroupName, :FlowGroupInfos, :Agent, :FlowGroupOptions

        def initialize(operator=nil, flowgroupname=nil, flowgroupinfos=nil, agent=nil, flowgroupoptions=nil)
          @Operator = operator
          @FlowGroupName = flowgroupname
          @FlowGroupInfos = flowgroupinfos
          @Agent = agent
          @FlowGroupOptions = flowgroupoptions
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowGroupName = params['FlowGroupName']
          unless params['FlowGroupInfos'].nil?
            @FlowGroupInfos = []
            params['FlowGroupInfos'].each do |i|
              flowgroupinfo_tmp = FlowGroupInfo.new
              flowgroupinfo_tmp.deserialize(i)
              @FlowGroupInfos << flowgroupinfo_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['FlowGroupOptions'].nil?
            @FlowGroupOptions = FlowGroupOptions.new
            @FlowGroupOptions.deserialize(params['FlowGroupOptions'])
          end
        end
      end

      # CreateFlowGroupByTemplates返回参数结构体
      class CreateFlowGroupByTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param FlowGroupId: 合同(流程)组的合同组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param FlowIds: 合同(流程)组中子合同列表.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowGroupId, :FlowIds, :RequestId

        def initialize(flowgroupid=nil, flowids=nil, requestid=nil)
          @FlowGroupId = flowgroupid
          @FlowIds = flowids
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowGroupId = params['FlowGroupId']
          @FlowIds = params['FlowIds']
          @RequestId = params['RequestId']
        end
      end

      # 创建合同个性化参数
      class CreateFlowOption < TencentCloud::Common::AbstractModel
        # @param CanEditFlow: 是否允许修改发起合同时确认弹窗的合同信息（合同名称、合同类型、签署截止时间），若不允许编辑，则表单字段将被禁止输入。
        # <br/>true：允许编辑<br/>false：不允许编辑（默认值）<br/>
        # @type CanEditFlow: Boolean
        # @param CanEditFormField: 是否允许编辑模板控件
        # <br/>true:允许编辑模板控件信息
        # <br/>false:不允许编辑模板控件信息（默认值）
        # <br/>
        # @type CanEditFormField: Boolean
        # @param HideShowFlowName: 发起页面隐藏合同名称展示
        # <br/>true:发起页面隐藏合同名称展示
        # <br/>false:发起页面不隐藏合同名称展示（默认值）
        # <br/>
        # @type HideShowFlowName: Boolean
        # @param HideShowFlowType: 发起页面隐藏合同类型展示
        # <br/>true:发起页面隐藏合同类型展示
        # <br/>false:发起页面不隐藏合同类型展示（默认值）
        # <br/>
        # @type HideShowFlowType: Boolean
        # @param HideShowDeadline: 发起页面隐藏合同截止日期展示
        # <br/>true:发起页面隐藏合同截止日期展示
        # <br/>false:发起页面不隐藏合同截止日期展示（默认值）
        # <br/>
        # @type HideShowDeadline: Boolean
        # @param CanSkipAddApprover: 发起页面允许跳过添加签署人环节
        # <br/>true:发起页面允许跳过添加签署人环节
        # <br/>false:发起页面不允许跳过添加签署人环节（默认值）
        # <br/>
        # @type CanSkipAddApprover: Boolean
        # @param SkipUploadFile: 文件发起页面跳过文件上传步骤
        # <br/>true:文件发起页面跳过文件上传步骤
        # <br/>false:文件发起页面不跳过文件上传步骤（默认值）
        # <br/>
        # @type SkipUploadFile: Boolean
        # @param ForbidEditFillComponent: 禁止编辑填写控件
        # <br/>true:禁止编辑填写控件
        # <br/>false:允许编辑填写控件（默认值）
        # <br/>
        # @type ForbidEditFillComponent: Boolean
        # @param CustomCreateFlowDescription: 定制化发起合同弹窗的描述信息，描述信息最长500字符
        # @type CustomCreateFlowDescription: String

        attr_accessor :CanEditFlow, :CanEditFormField, :HideShowFlowName, :HideShowFlowType, :HideShowDeadline, :CanSkipAddApprover, :SkipUploadFile, :ForbidEditFillComponent, :CustomCreateFlowDescription

        def initialize(caneditflow=nil, caneditformfield=nil, hideshowflowname=nil, hideshowflowtype=nil, hideshowdeadline=nil, canskipaddapprover=nil, skipuploadfile=nil, forbideditfillcomponent=nil, customcreateflowdescription=nil)
          @CanEditFlow = caneditflow
          @CanEditFormField = caneditformfield
          @HideShowFlowName = hideshowflowname
          @HideShowFlowType = hideshowflowtype
          @HideShowDeadline = hideshowdeadline
          @CanSkipAddApprover = canskipaddapprover
          @SkipUploadFile = skipuploadfile
          @ForbidEditFillComponent = forbideditfillcomponent
          @CustomCreateFlowDescription = customcreateflowdescription
        end

        def deserialize(params)
          @CanEditFlow = params['CanEditFlow']
          @CanEditFormField = params['CanEditFormField']
          @HideShowFlowName = params['HideShowFlowName']
          @HideShowFlowType = params['HideShowFlowType']
          @HideShowDeadline = params['HideShowDeadline']
          @CanSkipAddApprover = params['CanSkipAddApprover']
          @SkipUploadFile = params['SkipUploadFile']
          @ForbidEditFillComponent = params['ForbidEditFillComponent']
          @CustomCreateFlowDescription = params['CustomCreateFlowDescription']
        end
      end

      # CreateFlowReminds请求参数结构体
      class CreateFlowRemindsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 需执行催办的签署流程ID数组，最多包含100个。
        # @type FlowIds: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowIds, :Agent

        def initialize(operator=nil, flowids=nil, agent=nil)
          @Operator = operator
          @FlowIds = flowids
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowIds = params['FlowIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateFlowReminds返回参数结构体
      class CreateFlowRemindsResponse < TencentCloud::Common::AbstractModel
        # @param RemindFlowRecords: 合同催办结果的详细信息列表。
        # @type RemindFlowRecords: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RemindFlowRecords, :RequestId

        def initialize(remindflowrecords=nil, requestid=nil)
          @RemindFlowRecords = remindflowrecords
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RemindFlowRecords'].nil?
            @RemindFlowRecords = []
            params['RemindFlowRecords'].each do |i|
              remindflowrecords_tmp = RemindFlowRecords.new
              remindflowrecords_tmp.deserialize(i)
              @RemindFlowRecords << remindflowrecords_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFlow请求参数结构体
      class CreateFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 支持填入集团子公司经办人 userId 代发合同。

        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。

        # 该名称还将用于合同签署完成后的下载文件名。
        # @type FlowName: String
        # @param Approvers: 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。

        # 注:  `approver中的顺序需要和模板中的顺序保持一致， 否则会导致模板中配置的信息无效`
        # @type Approvers: Array
        # @param FlowDescription: 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        # @type FlowDescription: String
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        # @type FlowType: String
        # @param ClientToken: 已经废弃字段，客户端Token，保持接口幂等性,最大长度64个字符
        # @type ClientToken: String
        # @param DeadLine: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type DeadLine: Integer
        # @param RemindedOn: 合同到期提醒时间，为Unix标准时间戳（秒）格式，支持的范围是从发起时间开始到后10年内。

        # 到达提醒时间后，腾讯电子签会短信通知发起方企业合同提醒，可用于处理合同到期事务，如合同续签等事宜。
        # @type RemindedOn: Integer
        # @param UserData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 20480长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type UserData: String
        # @param Unordered: 合同流程的签署顺序类型：
        # <ul><li> **false**：(默认)有序签署, 本合同多个参与人需要依次签署 </li>
        # <li> **true**：无序签署, 本合同多个参与人没有先后签署限制</li></ul>
        # 注：`请和模板中的配置保持一致`
        # @type Unordered: Boolean
        # @param CustomShowMap: 您可以自定义腾讯电子签小程序合同列表页展示的合同内容模板，模板中支持以下变量：
        # <ul><li>{合同名称}   </li>
        # <li>{发起方企业} </li>
        # <li>{发起方姓名} </li>
        # <li>{签署方N企业}</li>
        # <li>{签署方N姓名}</li></ul>
        # 其中，N表示签署方的编号，从1开始，不能超过签署人的数量。

        # 例如，如果是腾讯公司张三发给李四名称为“租房合同”的合同，您可以将此字段设置为：`合同名称:{合同名称};发起方: {发起方企业}({发起方姓名});签署方:{签署方1姓名}`，则小程序中列表页展示此合同为以下样子

        # 合同名称：租房合同
        # 发起方：腾讯公司(张三)
        # 签署方：李四

        # @type CustomShowMap: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：处方单（医疗自动签）  </li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String
        # @param RelatedFlowId: 暂未开放
        # @type RelatedFlowId: String
        # @param CallbackUrl: 暂未开放
        # @type CallbackUrl: String

        attr_accessor :Operator, :FlowName, :Approvers, :FlowDescription, :FlowType, :ClientToken, :DeadLine, :RemindedOn, :UserData, :Unordered, :CustomShowMap, :NeedSignReview, :Agent, :CcInfos, :AutoSignScene, :RelatedFlowId, :CallbackUrl
        extend Gem::Deprecate
        deprecate :RelatedFlowId, :none, 2023, 12
        deprecate :RelatedFlowId=, :none, 2023, 12
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12

        def initialize(operator=nil, flowname=nil, approvers=nil, flowdescription=nil, flowtype=nil, clienttoken=nil, deadline=nil, remindedon=nil, userdata=nil, unordered=nil, customshowmap=nil, needsignreview=nil, agent=nil, ccinfos=nil, autosignscene=nil, relatedflowid=nil, callbackurl=nil)
          @Operator = operator
          @FlowName = flowname
          @Approvers = approvers
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @ClientToken = clienttoken
          @DeadLine = deadline
          @RemindedOn = remindedon
          @UserData = userdata
          @Unordered = unordered
          @CustomShowMap = customshowmap
          @NeedSignReview = needsignreview
          @Agent = agent
          @CcInfos = ccinfos
          @AutoSignScene = autosignscene
          @RelatedFlowId = relatedflowid
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowName = params['FlowName']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              flowcreateapprover_tmp = FlowCreateApprover.new
              flowcreateapprover_tmp.deserialize(i)
              @Approvers << flowcreateapprover_tmp
            end
          end
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @ClientToken = params['ClientToken']
          @DeadLine = params['DeadLine']
          @RemindedOn = params['RemindedOn']
          @UserData = params['UserData']
          @Unordered = params['Unordered']
          @CustomShowMap = params['CustomShowMap']
          @NeedSignReview = params['NeedSignReview']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
          @AutoSignScene = params['AutoSignScene']
          @RelatedFlowId = params['RelatedFlowId']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # CreateFlow返回参数结构体
      class CreateFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。

        # 注:
        # 此返回的合同流程ID，需再次调用<a href="https://qian.tencent.com/developers/companyApis/startFlows/CreateDocument" target="_blank">创建电子文档</a>和<a href="https://qian.tencent.com/developers/companyApis/startFlows/StartFlow" target="_blank">发起签署流程</a>接口将合同开始后，合同才能进入签署环节

        # @type FlowId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowSignReview请求参数结构体
      class CreateFlowSignReviewRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param ReviewType: 企业审核结果
        # <ul><li>PASS: 通过</li>
        # <li>REJECT: 拒绝</li></ul>
        # @type ReviewType: String
        # @param ReviewMessage: 审核结果原因，
        # 字符串长度不超过200
        # 当ReviewType 是拒绝（REJECT） 时此字段必填。
        # @type ReviewMessage: String
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param RecipientId: 审核签署节点人标识，
        # 用来标识审核的签署方。
        # 如果签署审核节点是个人， 此参数必填。
        # @type RecipientId: String
        # @param OperateType: 操作类型：（接口通过该字段区分不同的操作类型）

        # <ul><li>SignReview: 签署审核（默认）</li>
        # <li>CreateReview: 创建审核</li></ul>

        # 如果审核节点是个人，则操作类型只能为SignReview。
        # @type OperateType: String

        attr_accessor :Operator, :FlowId, :ReviewType, :ReviewMessage, :Agent, :RecipientId, :OperateType

        def initialize(operator=nil, flowid=nil, reviewtype=nil, reviewmessage=nil, agent=nil, recipientid=nil, operatetype=nil)
          @Operator = operator
          @FlowId = flowid
          @ReviewType = reviewtype
          @ReviewMessage = reviewmessage
          @Agent = agent
          @RecipientId = recipientid
          @OperateType = operatetype
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @ReviewType = params['ReviewType']
          @ReviewMessage = params['ReviewMessage']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @RecipientId = params['RecipientId']
          @OperateType = params['OperateType']
        end
      end

      # CreateFlowSignReview返回参数结构体
      class CreateFlowSignReviewResponse < TencentCloud::Common::AbstractModel
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

      # CreateFlowSignUrl请求参数结构体
      class CreateFlowSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param FlowApproverInfos: 流程签署人列表，其中结构体的ApproverName，ApproverMobile和ApproverType必传，其他可不传，

        # 注:
        # `1. ApproverType目前只支持个人类型的签署人。`
        # `2. 签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。`
        # @type FlowApproverInfos: Array
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 机构信息，暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，此链接及支持http://和https://，最大长度1000个字符。(建议https协议)
        # @type JumpUrl: String

        attr_accessor :FlowId, :FlowApproverInfos, :Operator, :Agent, :Organization, :JumpUrl
        extend Gem::Deprecate
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

        def initialize(flowid=nil, flowapproverinfos=nil, operator=nil, agent=nil, organization=nil, jumpurl=nil)
          @FlowId = flowid
          @FlowApproverInfos = flowapproverinfos
          @Operator = operator
          @Agent = agent
          @Organization = organization
          @JumpUrl = jumpurl
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['FlowApproverInfos'].nil?
            @FlowApproverInfos = []
            params['FlowApproverInfos'].each do |i|
              flowcreateapprover_tmp = FlowCreateApprover.new
              flowcreateapprover_tmp.deserialize(i)
              @FlowApproverInfos << flowcreateapprover_tmp
            end
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          @JumpUrl = params['JumpUrl']
        end
      end

      # CreateFlowSignUrl返回参数结构体
      class CreateFlowSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param FlowApproverUrlInfos: 签署人签署链接信息
        # @type FlowApproverUrlInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowApproverUrlInfos, :RequestId

        def initialize(flowapproverurlinfos=nil, requestid=nil)
          @FlowApproverUrlInfos = flowapproverurlinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowApproverUrlInfos'].nil?
            @FlowApproverUrlInfos = []
            params['FlowApproverUrlInfos'].each do |i|
              flowapproverurlinfo_tmp = FlowApproverUrlInfo.new
              flowapproverurlinfo_tmp.deserialize(i)
              @FlowApproverUrlInfos << flowapproverurlinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateIntegrationDepartment请求参数结构体
      class CreateIntegrationDepartmentRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得组织架构管理权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param DeptName: 部门名称，最大长度为50个字符。
        # @type DeptName: String
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ParentDeptId: 电子签父部门ID。
        # 注：`如果同时指定了ParentDeptId与ParentDeptOpenId参数，系统将优先使用ParentDeptId。当二者都未指定时，创建的新部门将自动填充至根节点部门下。`
        # @type ParentDeptId: String
        # @param ParentDeptOpenId: 第三方平台中父部门ID。
        # 注：`如果同时指定了ParentDeptId与ParentDeptOpenId参数，系统将优先使用ParentDeptId。当二者都未指定时，创建的新部门将自动填充至根节点部门下。`
        # @type ParentDeptOpenId: String
        # @param DeptOpenId: 客户系统部门ID，最大长度为64个字符。
        # @type DeptOpenId: String
        # @param OrderNo: 排序号，支持设置的数值范围为1~30000。同一父部门下，排序号越大，部门顺序越靠前。
        # @type OrderNo: Integer

        attr_accessor :Operator, :DeptName, :Agent, :ParentDeptId, :ParentDeptOpenId, :DeptOpenId, :OrderNo

        def initialize(operator=nil, deptname=nil, agent=nil, parentdeptid=nil, parentdeptopenid=nil, deptopenid=nil, orderno=nil)
          @Operator = operator
          @DeptName = deptname
          @Agent = agent
          @ParentDeptId = parentdeptid
          @ParentDeptOpenId = parentdeptopenid
          @DeptOpenId = deptopenid
          @OrderNo = orderno
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @DeptName = params['DeptName']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ParentDeptId = params['ParentDeptId']
          @ParentDeptOpenId = params['ParentDeptOpenId']
          @DeptOpenId = params['DeptOpenId']
          @OrderNo = params['OrderNo']
        end
      end

      # CreateIntegrationDepartment返回参数结构体
      class CreateIntegrationDepartmentResponse < TencentCloud::Common::AbstractModel
        # @param DeptId: 电子签部门ID。建议开发者保存此部门ID，方便后续查询或修改部门信息。
        # @type DeptId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeptId, :RequestId

        def initialize(deptid=nil, requestid=nil)
          @DeptId = deptid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeptId = params['DeptId']
          @RequestId = params['RequestId']
        end
      end

      # CreateIntegrationEmployees请求参数结构体
      class CreateIntegrationEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Employees: 待创建员工的信息，最多不超过20个。
        # 其中入参Mobile和DisplayName必填，OpenId、Email和Department.DepartmentId选填，其他字段暂不支持设置。
        # 在创建企微企业员工场景下，只需传入WeworkOpenId，无需再传其他信息。
        # @type Employees: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :Employees, :Agent

        def initialize(operator=nil, employees=nil, agent=nil)
          @Operator = operator
          @Employees = employees
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Employees'].nil?
            @Employees = []
            params['Employees'].each do |i|
              staff_tmp = Staff.new
              staff_tmp.deserialize(i)
              @Employees << staff_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateIntegrationEmployees返回参数结构体
      class CreateIntegrationEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param CreateEmployeeResult: 创建员工的结果。包含创建成功的数据与创建失败数据。
        # @type CreateEmployeeResult: :class:`Tencentcloud::Ess.v20201111.models.CreateStaffResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreateEmployeeResult, :RequestId

        def initialize(createemployeeresult=nil, requestid=nil)
          @CreateEmployeeResult = createemployeeresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CreateEmployeeResult'].nil?
            @CreateEmployeeResult = CreateStaffResult.new
            @CreateEmployeeResult.deserialize(params['CreateEmployeeResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateIntegrationRole请求参数结构体
      class CreateIntegrationRoleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 角色名称，最大长度为20个字符，仅限中文、字母、数字和下划线组成。
        # @type Name: String
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 支持填入集团子公司经办人 userId 代发合同。

        # 注: 在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Description: 角色描述，最大长度为50个字符
        # @type Description: String
        # @param IsGroupRole: 角色类型，0:saas角色，1:集团角色
        # 默认0，saas角色
        # @type IsGroupRole: Integer
        # @param PermissionGroups: 权限树
        # @type PermissionGroups: Array
        # @param SubOrganizationIds: 集团角色的话，需要传递集团子企业列表，如果是全选，则传1
        # @type SubOrganizationIds: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Name, :Operator, :Description, :IsGroupRole, :PermissionGroups, :SubOrganizationIds, :Agent

        def initialize(name=nil, operator=nil, description=nil, isgrouprole=nil, permissiongroups=nil, suborganizationids=nil, agent=nil)
          @Name = name
          @Operator = operator
          @Description = description
          @IsGroupRole = isgrouprole
          @PermissionGroups = permissiongroups
          @SubOrganizationIds = suborganizationids
          @Agent = agent
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Description = params['Description']
          @IsGroupRole = params['IsGroupRole']
          unless params['PermissionGroups'].nil?
            @PermissionGroups = []
            params['PermissionGroups'].each do |i|
              permissiongroup_tmp = PermissionGroup.new
              permissiongroup_tmp.deserialize(i)
              @PermissionGroups << permissiongroup_tmp
            end
          end
          @SubOrganizationIds = params['SubOrganizationIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateIntegrationRole返回参数结构体
      class CreateIntegrationRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId

        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateIntegrationUserRoles请求参数结构体
      class CreateIntegrationUserRolesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。 注: 在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserIds: 绑定角色的用户id列表，不能重复，不能大于 100 个
        # @type UserIds: Array
        # @param RoleIds: 绑定角色的角色id列表，不能重复，不能大于 100，可以通过DescribeIntegrationRoles接口获取角色信息
        # @type RoleIds: Array
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :UserIds, :RoleIds, :Agent

        def initialize(operator=nil, userids=nil, roleids=nil, agent=nil)
          @Operator = operator
          @UserIds = userids
          @RoleIds = roleids
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserIds = params['UserIds']
          @RoleIds = params['RoleIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateIntegrationUserRoles返回参数结构体
      class CreateIntegrationUserRolesResponse < TencentCloud::Common::AbstractModel
        # @param FailedCreateRoleData: 绑定角色失败列表信息
        # @type FailedCreateRoleData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedCreateRoleData, :RequestId

        def initialize(failedcreateroledata=nil, requestid=nil)
          @FailedCreateRoleData = failedcreateroledata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FailedCreateRoleData'].nil?
            @FailedCreateRoleData = []
            params['FailedCreateRoleData'].each do |i|
              failedcreateroledata_tmp = FailedCreateRoleData.new
              failedcreateroledata_tmp.deserialize(i)
              @FailedCreateRoleData << failedcreateroledata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateMultiFlowSignQRCode请求参数结构体
      class CreateMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TemplateId: 合同模板ID，为32位字符串。
        # 可登录腾讯电子签控制台，在 "模板"->"模板中心"->"列表展示设置"选中模板 ID 中查看某个模板的TemplateId(在页面中展示为模板ID)。
        # @type TemplateId: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # 该名称还将用于合同签署完成后的下载文件名。
        # @type FlowName: String
        # @param MaxFlowNum: 通过此二维码可发起的流程最大限额，如未明确指定，默认为5份。
        # 一旦发起流程数超越该限制，该二维码将自动失效。
        # @type MaxFlowNum: Integer
        # @param QrEffectiveDay: 二维码的有效期限，默认为7天，最高设定不得超过90天。
        # 一旦超过二维码的有效期限，该二维码将自动失效。
        # @type QrEffectiveDay: Integer
        # @param FlowEffectiveDay: 合同流程的签署有效期限，若未设定签署截止日期，则默认为自合同流程创建起的7天内截止。
        # 若在签署截止日期前未完成签署，合同状态将变更为已过期，从而导致合同无效。
        # 最长设定期限不得超过30天。
        # @type FlowEffectiveDay: Integer
        # @param Restrictions: 指定签署人信息。
        # 在指定签署人后，仅允许特定签署人通过扫描二维码进行签署。
        # @type Restrictions: Array
        # @param UserData: 调用方自定义的个性化字段(可自定义此字段的值)，并以base64方式编码，支持的最大数据大小为 20480长度。
        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。
        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type UserData: String
        # @param CallbackUrl: 已废弃，回调配置统一使用企业应用管理-应用集成-企业版应用中的配置
        # <br/> 通过一码多扫二维码发起的合同，回调消息可参考文档 https://qian.tencent.com/developers/company/callback_types_contracts_sign
        # <br/> 用户通过签署二维码发起合同时，因企业额度不足导致失败 会触发签署二维码相关回调,具体参考文档 https://qian.tencent.com/developers/company/callback_types_commons#%E7%AD%BE%E7%BD%B2%E4%BA%8C%E7%BB%B4%E7%A0%81%E7%9B%B8%E5%85%B3%E5%9B%9E%E8%B0%83
        # @type CallbackUrl: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ApproverRestrictions: 限制二维码用户条件（已弃用）
        # @type ApproverRestrictions: :class:`Tencentcloud::Ess.v20201111.models.ApproverRestriction`
        # @param ApproverComponentLimitTypes: 指定签署方在使用个人印章签署控件（SIGN_SIGNATURE） 时可使用的签署方式：自由书写、正楷临摹、系统签名、个人印章。
        # @type ApproverComponentLimitTypes: Array

        attr_accessor :Operator, :TemplateId, :FlowName, :MaxFlowNum, :QrEffectiveDay, :FlowEffectiveDay, :Restrictions, :UserData, :CallbackUrl, :Agent, :ApproverRestrictions, :ApproverComponentLimitTypes
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12
        deprecate :ApproverRestrictions, :none, 2023, 12
        deprecate :ApproverRestrictions=, :none, 2023, 12

        def initialize(operator=nil, templateid=nil, flowname=nil, maxflownum=nil, qreffectiveday=nil, floweffectiveday=nil, restrictions=nil, userdata=nil, callbackurl=nil, agent=nil, approverrestrictions=nil, approvercomponentlimittypes=nil)
          @Operator = operator
          @TemplateId = templateid
          @FlowName = flowname
          @MaxFlowNum = maxflownum
          @QrEffectiveDay = qreffectiveday
          @FlowEffectiveDay = floweffectiveday
          @Restrictions = restrictions
          @UserData = userdata
          @CallbackUrl = callbackurl
          @Agent = agent
          @ApproverRestrictions = approverrestrictions
          @ApproverComponentLimitTypes = approvercomponentlimittypes
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @TemplateId = params['TemplateId']
          @FlowName = params['FlowName']
          @MaxFlowNum = params['MaxFlowNum']
          @QrEffectiveDay = params['QrEffectiveDay']
          @FlowEffectiveDay = params['FlowEffectiveDay']
          unless params['Restrictions'].nil?
            @Restrictions = []
            params['Restrictions'].each do |i|
              approverrestriction_tmp = ApproverRestriction.new
              approverrestriction_tmp.deserialize(i)
              @Restrictions << approverrestriction_tmp
            end
          end
          @UserData = params['UserData']
          @CallbackUrl = params['CallbackUrl']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['ApproverRestrictions'].nil?
            @ApproverRestrictions = ApproverRestriction.new
            @ApproverRestrictions.deserialize(params['ApproverRestrictions'])
          end
          unless params['ApproverComponentLimitTypes'].nil?
            @ApproverComponentLimitTypes = []
            params['ApproverComponentLimitTypes'].each do |i|
              approvercomponentlimittype_tmp = ApproverComponentLimitType.new
              approvercomponentlimittype_tmp.deserialize(i)
              @ApproverComponentLimitTypes << approvercomponentlimittype_tmp
            end
          end
        end
      end

      # CreateMultiFlowSignQRCode返回参数结构体
      class CreateMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 签署二维码的基本信息，用于创建二维码，用户可扫描该二维码进行签署操作。
        # @type QrCode: :class:`Tencentcloud::Ess.v20201111.models.SignQrCode`
        # @param SignUrls: 流程签署二维码的签署信息，适用于客户系统整合二维码功能。通过链接，用户可直接访问电子签名小程序并签署合同。
        # @type SignUrls: :class:`Tencentcloud::Ess.v20201111.models.SignUrl`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QrCode, :SignUrls, :RequestId

        def initialize(qrcode=nil, signurls=nil, requestid=nil)
          @QrCode = qrcode
          @SignUrls = signurls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QrCode'].nil?
            @QrCode = SignQrCode.new
            @QrCode.deserialize(params['QrCode'])
          end
          unless params['SignUrls'].nil?
            @SignUrls = SignUrl.new
            @SignUrls.deserialize(params['SignUrls'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateOrganizationBatchSignUrl请求参数结构体
      class CreateOrganizationBatchSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 支持填入集团子公司经办人 userId 代发合同。

        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 请指定需执行批量签署的流程ID，数量范围为1-100。
        # 您可登录腾讯电子签控制台，浏览 "合同"->"合同中心" 以查阅某一合同的FlowId（在页面中显示为合同ID）。
        # 用户将利用链接对这些合同实施批量操作。
        # @type FlowIds: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param UserId: 员工在腾讯电子签平台的独特身份标识，为32位字符串。
        # 您可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查阅某位员工的UserId（在页面中显示为用户ID）。
        # UserId必须是传入合同（FlowId）中的签署人。
        # - 1. 若UserId为空，Name和Mobile 必须提供。
        # - 2. 若UserId 与 Name，Mobile均存在，将优先采用UserId对应的员工。
        # @type UserId: String
        # @param Name: 员工姓名，必须与手机号码一起使用。
        # 如果UserId为空，则此字段不能为空。同时，姓名和手机号码必须与传入合同（FlowId）中的签署人信息一致。
        # @type Name: String
        # @param Mobile: 员工手机号，必须与姓名一起使用。
        #  如果UserId为空，则此字段不能为空。同时，姓名和手机号码必须与传入合同（FlowId）中的签署人信息一致。
        # @type Mobile: String

        attr_accessor :Operator, :FlowIds, :Agent, :UserId, :Name, :Mobile

        def initialize(operator=nil, flowids=nil, agent=nil, userid=nil, name=nil, mobile=nil)
          @Operator = operator
          @FlowIds = flowids
          @Agent = agent
          @UserId = userid
          @Name = name
          @Mobile = mobile
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowIds = params['FlowIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @UserId = params['UserId']
          @Name = params['Name']
          @Mobile = params['Mobile']
        end
      end

      # CreateOrganizationBatchSignUrl返回参数结构体
      class CreateOrganizationBatchSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 批量签署入口链接，用户可使用这个链接跳转到控制台页面对合同进行签署操作。
        # @type SignUrl: String
        # @param ExpiredTime: 链接过期截止时间，格式为Unix标准时间戳（秒），默认为7天后截止。
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignUrl, :ExpiredTime, :RequestId

        def initialize(signurl=nil, expiredtime=nil, requestid=nil)
          @SignUrl = signurl
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SignUrl = params['SignUrl']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrganizationInfoChangeUrl请求参数结构体
      class CreateOrganizationInfoChangeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ChangeType: 企业信息变更类型，可选类型如下：
        # <ul><li>**1**：企业超管变更</li><li>**2**：企业基础信息变更</li></ul>
        # @type ChangeType: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :ChangeType, :Agent

        def initialize(operator=nil, changetype=nil, agent=nil)
          @Operator = operator
          @ChangeType = changetype
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ChangeType = params['ChangeType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateOrganizationInfoChangeUrl返回参数结构体
      class CreateOrganizationInfoChangeUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 创建的企业信息变更链接。
        # @type Url: String
        # @param ExpiredTime: 链接过期时间。链接7天有效。
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :ExpiredTime, :RequestId

        def initialize(url=nil, expiredtime=nil, requestid=nil)
          @Url = url
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # CreatePersonAuthCertificateImage请求参数结构体
      class CreatePersonAuthCertificateImageRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserName: 个人用户名称
        # @type UserName: String
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li> ID_CARD  : 居民身份证 (默认值)</li>
        # <li> HONGKONG_AND_MACAO  : 港澳居民来往内地通行证</li>
        # <li> HONGKONG_MACAO_AND_TAIWAN  : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>

        # 注: `不传默认为处方单场景，即E_PRESCRIPTION_AUTO_SIGN`
        # @type SceneKey: String

        attr_accessor :Operator, :UserName, :IdCardType, :IdCardNumber, :Agent, :SceneKey

        def initialize(operator=nil, username=nil, idcardtype=nil, idcardnumber=nil, agent=nil, scenekey=nil)
          @Operator = operator
          @UserName = username
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Agent = agent
          @SceneKey = scenekey
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserName = params['UserName']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SceneKey = params['SceneKey']
        end
      end

      # CreatePersonAuthCertificateImage返回参数结构体
      class CreatePersonAuthCertificateImageResponse < TencentCloud::Common::AbstractModel
        # @param AuthCertUrl: 个人用户认证证书图片下载URL，`有效期为5分钟`，超过有效期后将无法再下载。
        # @type AuthCertUrl: String
        # @param ImageCertId: 个人用户认证证书的编号, 为20位数字组成的字符串,  由腾讯电子签下发此编号 。
        # 该编号会合成到个人用户证书证明图片。

        # 注: `个人用户认证证书的编号和证明图片绑定, 获取新的证明图片编号会变动`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageCertId: String
        # @param SerialNumber: CA供应商下发给用户的证书编号，在证书到期后自动续期后此证书编号会发生变动，且不会合成到个人用户证书证明图片中。

        # 注意：`腾讯电子签接入多家CA供应商以提供容灾能力，不同CA下发的证书编号区别较大，但基本都是由数字和字母组成，长度在200以下。`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialNumber: String
        # @param ValidFrom: CA证书颁发时间，格式为Unix标准时间戳（秒）
        # 该时间格式化后会合成到个人用户证书证明图片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidFrom: Integer
        # @param ValidTo: CA证书有效截止时间，格式为Unix标准时间戳（秒）
        # 该时间格式化后会合成到个人用户证书证明图片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidTo: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthCertUrl, :ImageCertId, :SerialNumber, :ValidFrom, :ValidTo, :RequestId

        def initialize(authcerturl=nil, imagecertid=nil, serialnumber=nil, validfrom=nil, validto=nil, requestid=nil)
          @AuthCertUrl = authcerturl
          @ImageCertId = imagecertid
          @SerialNumber = serialnumber
          @ValidFrom = validfrom
          @ValidTo = validto
          @RequestId = requestid
        end

        def deserialize(params)
          @AuthCertUrl = params['AuthCertUrl']
          @ImageCertId = params['ImageCertId']
          @SerialNumber = params['SerialNumber']
          @ValidFrom = params['ValidFrom']
          @ValidTo = params['ValidTo']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrepareFlow请求参数结构体
      class CreatePrepareFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 支持填入集团子公司经办人 userId 代发合同。

        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ResourceId: 资源id，与ResourceType相对应，取值范围：
        # <ul>
        # <li>文件Id（通过UploadFiles获取文件资源Id）</li>
        # <li>模板Id</li>
        # </ul>
        # @type ResourceId: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param Unordered: 合同流程的签署顺序类型：
        # <ul><li> **false**：(默认)有序签署, 本合同多个参与人需要依次签署 </li>
        # <li> **true**：无序签署, 本合同多个参与人没有先后签署限制</li></ul>
        # @type Unordered: Boolean
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        # @type Deadline: Integer
        # @param UserFlowTypeId: 用户自定义合同类型Id

        # 该id为电子签企业内的合同类型id， 可以在控制台-合同-自定义合同类型处获取
        # 注: `该参数如果和FlowType同时传，以该参数优先生效`
        # @type UserFlowTypeId: String
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        # @type FlowType: String
        # @param Approvers: 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。

        # 如果合同流程是有序签署，Approvers列表中参与人的顺序就是默认的签署顺序，请确保列表中参与人的顺序符合实际签署顺序。
        # @type Approvers: Array
        # @param IntelligentStatus: 开启或者关闭智能添加填写区：
        # <ul><li> **OPEN**：开启（默认值）</li>
        # <li> **CLOSE**：关闭</li></ul>
        # @type IntelligentStatus: String
        # @param ResourceType: 资源类型，取值有：
        # <ul><li> **1**：模板</li>
        # <li> **2**：文件（默认值）</li></ul>
        # @type ResourceType: Integer
        # @param Components: 该字段已废弃，请使用InitiatorComponents
        # @type Components: :class:`Tencentcloud::Ess.v20201111.models.Component`
        # @param FlowOption: 发起合同个性化参数
        # 用于满足创建及页面操作过程中的个性化要求
        # 具体定制化内容详见数据接口说明
        # @type FlowOption: :class:`Tencentcloud::Ess.v20201111.models.CreateFlowOption`
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param NeedCreateReview: 发起方企业的签署人进行发起操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。

        # 若设置为true，发起审核结果需通过接口 CreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行发起操作，否则会阻塞其发起操作。

        # @type NeedCreateReview: Boolean
        # @param UserData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 20480长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type UserData: String
        # @param FlowId: 合同Id：用于通过一个已发起的合同快速生成一个发起流程web链接
        # 注: `该参数必须是一个待发起审核的合同id，并且还未审核通过`
        # @type FlowId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param InitiatorComponents: 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # @type InitiatorComponents: Array

        attr_accessor :Operator, :ResourceId, :FlowName, :Unordered, :Deadline, :UserFlowTypeId, :FlowType, :Approvers, :IntelligentStatus, :ResourceType, :Components, :FlowOption, :NeedSignReview, :NeedCreateReview, :UserData, :FlowId, :Agent, :InitiatorComponents

        def initialize(operator=nil, resourceid=nil, flowname=nil, unordered=nil, deadline=nil, userflowtypeid=nil, flowtype=nil, approvers=nil, intelligentstatus=nil, resourcetype=nil, components=nil, flowoption=nil, needsignreview=nil, needcreatereview=nil, userdata=nil, flowid=nil, agent=nil, initiatorcomponents=nil)
          @Operator = operator
          @ResourceId = resourceid
          @FlowName = flowname
          @Unordered = unordered
          @Deadline = deadline
          @UserFlowTypeId = userflowtypeid
          @FlowType = flowtype
          @Approvers = approvers
          @IntelligentStatus = intelligentstatus
          @ResourceType = resourcetype
          @Components = components
          @FlowOption = flowoption
          @NeedSignReview = needsignreview
          @NeedCreateReview = needcreatereview
          @UserData = userdata
          @FlowId = flowid
          @Agent = agent
          @InitiatorComponents = initiatorcomponents
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ResourceId = params['ResourceId']
          @FlowName = params['FlowName']
          @Unordered = params['Unordered']
          @Deadline = params['Deadline']
          @UserFlowTypeId = params['UserFlowTypeId']
          @FlowType = params['FlowType']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              flowcreateapprover_tmp = FlowCreateApprover.new
              flowcreateapprover_tmp.deserialize(i)
              @Approvers << flowcreateapprover_tmp
            end
          end
          @IntelligentStatus = params['IntelligentStatus']
          @ResourceType = params['ResourceType']
          unless params['Components'].nil?
            @Components = Component.new
            @Components.deserialize(params['Components'])
          end
          unless params['FlowOption'].nil?
            @FlowOption = CreateFlowOption.new
            @FlowOption.deserialize(params['FlowOption'])
          end
          @NeedSignReview = params['NeedSignReview']
          @NeedCreateReview = params['NeedCreateReview']
          @UserData = params['UserData']
          @FlowId = params['FlowId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['InitiatorComponents'].nil?
            @InitiatorComponents = []
            params['InitiatorComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @InitiatorComponents << component_tmp
            end
          end
        end
      end

      # CreatePrepareFlow返回参数结构体
      class CreatePrepareFlowResponse < TencentCloud::Common::AbstractModel
        # @param Url: 发起流程的web页面链接，有效期5分钟
        # @type Url: String
        # @param FlowId: 创建的合同id（还未实际发起），每次调用会生成新的id，用户可以记录此字段对应后续页面发起的合同，若在页面上未成功发起，则此字段无效。
        # @type FlowId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :FlowId, :RequestId

        def initialize(url=nil, flowid=nil, requestid=nil)
          @Url = url
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePreparedPersonalEsign请求参数结构体
      class CreatePreparedPersonalEsignRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 个人用户姓名
        # @type UserName: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param SealName: 印章名称，长度1-50个字。
        # @type SealName: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type IdCardType: String
        # @param SealImage: 印章图片的base64
        # 注：已废弃
        # 请先通过UploadFiles接口上传文件，获取 FileId
        # @type SealImage: String
        # @param SealImageCompress: 是否开启印章图片压缩处理，默认不开启，如需开启请设置为 true。当印章超过 2M 时建议开启，开启后图片的 hash 将发生变化。
        # @type SealImageCompress: Boolean
        # @param Mobile: 手机号码；当需要开通自动签时，该参数必传
        # @type Mobile: String
        # @param EnableAutoSign: 是否开通自动签，该功能需联系运营工作人员开通后使用
        # @type EnableAutoSign: Boolean
        # @param SealColor: 印章颜色（参数ProcessSeal=true时生效）
        # 默认值：BLACK黑色
        # 取值:
        # BLACK 黑色,
        # RED 红色,
        # BLUE 蓝色。
        # @type SealColor: String
        # @param ProcessSeal: 是否处理印章，默认不做印章处理。
        # 取值如下：
        # <ul>
        # <li>false：不做任何处理；</li>
        # <li>true：做透明化处理和颜色增强。</li>
        # </ul>
        # @type ProcessSeal: Boolean
        # @param FileId: 印章图片文件 id
        # 取值：
        # 填写的FileId通过UploadFiles接口上传文件获取。
        # @type FileId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。一旦绑定后，将扣减购买的个人自动签账号许可一次（1年有效期），不可解绑释放。不传默认为绑定自动签账号许可。 0-绑定个人自动签账号许可，开通后将扣减购买的个人自动签账号许可一次 1-不绑定，发起合同时将按标准合同套餐进行扣减
        # @type LicenseType: Integer
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>

        # 注: `不传默认为处方单场景，即E_PRESCRIPTION_AUTO_SIGN`
        # @type SceneKey: String

        attr_accessor :UserName, :IdCardNumber, :SealName, :Operator, :IdCardType, :SealImage, :SealImageCompress, :Mobile, :EnableAutoSign, :SealColor, :ProcessSeal, :FileId, :Agent, :LicenseType, :SceneKey
        extend Gem::Deprecate
        deprecate :SealImage, :none, 2023, 12
        deprecate :SealImage=, :none, 2023, 12

        def initialize(username=nil, idcardnumber=nil, sealname=nil, operator=nil, idcardtype=nil, sealimage=nil, sealimagecompress=nil, mobile=nil, enableautosign=nil, sealcolor=nil, processseal=nil, fileid=nil, agent=nil, licensetype=nil, scenekey=nil)
          @UserName = username
          @IdCardNumber = idcardnumber
          @SealName = sealname
          @Operator = operator
          @IdCardType = idcardtype
          @SealImage = sealimage
          @SealImageCompress = sealimagecompress
          @Mobile = mobile
          @EnableAutoSign = enableautosign
          @SealColor = sealcolor
          @ProcessSeal = processseal
          @FileId = fileid
          @Agent = agent
          @LicenseType = licensetype
          @SceneKey = scenekey
        end

        def deserialize(params)
          @UserName = params['UserName']
          @IdCardNumber = params['IdCardNumber']
          @SealName = params['SealName']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @IdCardType = params['IdCardType']
          @SealImage = params['SealImage']
          @SealImageCompress = params['SealImageCompress']
          @Mobile = params['Mobile']
          @EnableAutoSign = params['EnableAutoSign']
          @SealColor = params['SealColor']
          @ProcessSeal = params['ProcessSeal']
          @FileId = params['FileId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @LicenseType = params['LicenseType']
          @SceneKey = params['SceneKey']
        end
      end

      # CreatePreparedPersonalEsign返回参数结构体
      class CreatePreparedPersonalEsignResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 导入生成的印章ID，为32位字符串。
        # 建议开发者保存此印章ID，开头实名认证后，通过此 ID查询导入的印章。
        # @type SealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SealId, :RequestId

        def initialize(sealid=nil, requestid=nil)
          @SealId = sealid
          @RequestId = requestid
        end

        def deserialize(params)
          @SealId = params['SealId']
          @RequestId = params['RequestId']
        end
      end

      # CreateReleaseFlow请求参数结构体
      class CreateReleaseFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param NeedRelievedFlowId: 待解除的签署流程编号（即原签署流程的编号）。
        # @type NeedRelievedFlowId: String
        # @param ReliveInfo: 解除协议内容, 包括解除理由等信息。
        # @type ReliveInfo: :class:`Tencentcloud::Ess.v20201111.models.RelieveInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ReleasedApprovers: 替换解除协议的签署人， 如不指定替换签署人,  则使用原流程的签署人。 <br/>
        # 如需更换原合同中的企业端签署人，可通过指定该签署人的RecipientId编号更换此企业端签署人。(可通过接口<a href="https://qian.tencent.com/developers/companyApis/queryFlows/DescribeFlowInfo/">DescribeFlowInfo</a>查询签署人的RecipientId编号)<br/>

        # 注意：
        # `只能更换自己企业的签署人,  不支持更换个人类型或者其他企业的签署人。`
        # `可以不指定替换签署人, 使用原流程的签署人 `
        # @type ReleasedApprovers: Array
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的7天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type Deadline: Integer
        # @param UserData: 调用方自定义的个性化字段，该字段的值可以是字符串JSON或其他字符串形式，客户可以根据自身需求自定义数据格式并在需要时进行解析。该字段的信息将以Base64编码的形式传输，支持的最大数据大小为20480长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。

        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type UserData: String

        attr_accessor :Operator, :NeedRelievedFlowId, :ReliveInfo, :Agent, :ReleasedApprovers, :Deadline, :UserData

        def initialize(operator=nil, needrelievedflowid=nil, reliveinfo=nil, agent=nil, releasedapprovers=nil, deadline=nil, userdata=nil)
          @Operator = operator
          @NeedRelievedFlowId = needrelievedflowid
          @ReliveInfo = reliveinfo
          @Agent = agent
          @ReleasedApprovers = releasedapprovers
          @Deadline = deadline
          @UserData = userdata
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @NeedRelievedFlowId = params['NeedRelievedFlowId']
          unless params['ReliveInfo'].nil?
            @ReliveInfo = RelieveInfo.new
            @ReliveInfo.deserialize(params['ReliveInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['ReleasedApprovers'].nil?
            @ReleasedApprovers = []
            params['ReleasedApprovers'].each do |i|
              releasedapprover_tmp = ReleasedApprover.new
              releasedapprover_tmp.deserialize(i)
              @ReleasedApprovers << releasedapprover_tmp
            end
          end
          @Deadline = params['Deadline']
          @UserData = params['UserData']
        end
      end

      # CreateReleaseFlow返回参数结构体
      class CreateReleaseFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 解除协议流程编号
        # `注意：这里的流程编号对应的合同是本次发起的解除协议。`
        # @type FlowId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSchemeUrl请求参数结构体
      class CreateSchemeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息, userId 必填。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param OrganizationName: 合同流程签署方的组织机构名称。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # @type OrganizationName: String
        # @param Name: 合同流程里边签署方经办人的姓名。
        # @type Name: String
        # @param Mobile: 合同流程里边签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # @type Mobile: String
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成(如存在X，请大写)。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母(但“I”、“O”除外)，后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param EndPoint: 要跳转的链接类型

        # <ul><li> **HTTP**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型  ，此时返回长链 (默认类型)</li>
        # <li>**HTTP_SHORT_URL**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型，此时返回短链</li>
        # <li>**APP**： 第三方APP或小程序跳转电子签小程序的path,  APP或者小程序跳转适合此类型</li></ul>
        # @type EndPoint: String
        # @param FlowId: 合同流程ID
        # 注: `如果准备跳转到合同流程签署的详情页面(即PathType=1时)必传,   跳转其他页面可不传`
        # @type FlowId: String
        # @param FlowGroupId: 合同流程组的组ID, 在合同流程组场景下，生成合同流程组的签署链接时需要赋值
        # @type FlowGroupId: String
        # @param PathType: 要跳转到的页面类型

        # <ul><li> **0** : 腾讯电子签小程序个人首页 (默认)</li>
        # <li> **1** : 腾讯电子签小程序流程合同的详情页 (即合同签署页面)</li>
        # <li> **2** : 腾讯电子签小程序合同列表页</li><li> **3** : 腾讯电子签小程序合同封面页
        # 注：`生成动态签署人补充链接时，必须指定为封面页`</li></ul>
        # @type PathType: Integer
        # @param AutoJumpBack: 签署完成后是否自动回跳
        # <ul><li>**false**：否, 签署完成不会自动跳转回来(默认)</li><li>**true**：是, 签署完成会自动跳转回来</li></ul>
        # 注:  ` 该参数只针对"APP" 类型的签署链接有效`
        # @type AutoJumpBack: Boolean
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Hides: 生成的签署链接在签署页面隐藏的按钮列表，可设置如下：

        # <ul><li> **0** :合同签署页面更多操作按钮</li>
        # <li> **1** :合同签署页面更多操作的拒绝签署按钮</li>
        # <li> **2** :合同签署页面更多操作的转他人处理按钮</li>
        # <li> **3** :签署成功页的查看详情按钮</li></ul>

        # 注:  `字段为数组, 可以传值隐藏多个按钮`
        # @type Hides: Array
        # @param RecipientId: 签署节点ID，用于生成动态签署人链接完成领取。

        # 注：`生成动态签署人补充链接时必传。`
        # @type RecipientId: String

        attr_accessor :Operator, :OrganizationName, :Name, :Mobile, :IdCardType, :IdCardNumber, :EndPoint, :FlowId, :FlowGroupId, :PathType, :AutoJumpBack, :Agent, :Hides, :RecipientId

        def initialize(operator=nil, organizationname=nil, name=nil, mobile=nil, idcardtype=nil, idcardnumber=nil, endpoint=nil, flowid=nil, flowgroupid=nil, pathtype=nil, autojumpback=nil, agent=nil, hides=nil, recipientid=nil)
          @Operator = operator
          @OrganizationName = organizationname
          @Name = name
          @Mobile = mobile
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @EndPoint = endpoint
          @FlowId = flowid
          @FlowGroupId = flowgroupid
          @PathType = pathtype
          @AutoJumpBack = autojumpback
          @Agent = agent
          @Hides = hides
          @RecipientId = recipientid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @OrganizationName = params['OrganizationName']
          @Name = params['Name']
          @Mobile = params['Mobile']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @EndPoint = params['EndPoint']
          @FlowId = params['FlowId']
          @FlowGroupId = params['FlowGroupId']
          @PathType = params['PathType']
          @AutoJumpBack = params['AutoJumpBack']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Hides = params['Hides']
          @RecipientId = params['RecipientId']
        end
      end

      # CreateSchemeUrl返回参数结构体
      class CreateSchemeUrlResponse < TencentCloud::Common::AbstractModel
        # @param SchemeUrl: 腾讯电子签小程序的签署链接。

        # <ul><li>如果EndPoint是**APP**，得到的链接类似于`pages/guide?from=default&where=mini&id=yDwJSUUirqauh***7jNSxwdirTSGuH&to=CONTRACT_DETAIL&name=&phone=&shortKey=yDw***k1xFc5`, 用法可以参加接口描述中的"跳转到小程序的实现"</li>
        # <li>如果EndPoint是**HTTP**，得到的链接类似于 `https://res.ess.tencent.cn/cdn/h5-activity/jump-mp.html?where=mini&from=SFY&id=yDwfEUUw**4rV6Avz&to=MVP_CONTRACT_COVER&name=%E9%83%**5%86%9B`，点击后会跳转到腾讯电子签小程序进行签署</li>
        # <li>如果EndPoint是**HTTP_SHORT_URL**，得到的链接类似于 `https://essurl.cn/2n**42Nd`，点击后会跳转到腾讯电子签小程序进行签署</li></ul>
        # @type SchemeUrl: String
        # @param SchemeQrcodeUrl: 二维码，在生成动态签署人跳转封面页链接时返回
        # @type SchemeQrcodeUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SchemeUrl, :SchemeQrcodeUrl, :RequestId

        def initialize(schemeurl=nil, schemeqrcodeurl=nil, requestid=nil)
          @SchemeUrl = schemeurl
          @SchemeQrcodeUrl = schemeqrcodeurl
          @RequestId = requestid
        end

        def deserialize(params)
          @SchemeUrl = params['SchemeUrl']
          @SchemeQrcodeUrl = params['SchemeQrcodeUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateSealPolicy请求参数结构体
      class CreateSealPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Users: 用户在电子文件签署平台标识信息，具体参考UserInfo结构体。可跟下面的UserIds可叠加起作用
        # @type Users: Array
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # 可登录腾讯电子签控制台，在 "印章"->"印章中心"选择查看的印章，在"印章详情" 中查看某个印章的SealId(在页面中展示为印章ID)。
        # @type SealId: String
        # @param Expired: 授权有效期。时间戳秒级
        # @type Expired: Integer
        # @param UserIds: 需要授权的用户UserId集合。跟上面的SealId参数配合使用。选填，跟上面的Users同时起作用
        # @type UserIds: Array
        # @param Policy: 印章授权内容
        # @type Policy: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :Users, :SealId, :Expired, :UserIds, :Policy, :Agent

        def initialize(operator=nil, users=nil, sealid=nil, expired=nil, userids=nil, policy=nil, agent=nil)
          @Operator = operator
          @Users = users
          @SealId = sealid
          @Expired = expired
          @UserIds = userids
          @Policy = policy
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
          @SealId = params['SealId']
          @Expired = params['Expired']
          @UserIds = params['UserIds']
          @Policy = params['Policy']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateSealPolicy返回参数结构体
      class CreateSealPolicyResponse < TencentCloud::Common::AbstractModel
        # @param UserIds: 最终授权成功的用户ID，在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # @type UserIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserIds, :RequestId

        def initialize(userids=nil, requestid=nil)
          @UserIds = userids
          @RequestId = requestid
        end

        def deserialize(params)
          @UserIds = params['UserIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSeal请求参数结构体
      class CreateSealRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SealName: 电子印章名字，1-50个中文字符
        # 注:`同一企业下电子印章名字不能相同`
        # @type SealName: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param GenerateSource: 电子印章生成方式
        # <ul>
        # <li><strong>空值</strong>:(默认)使用上传的图片生成印章, 此时需要上传SealImage图片</li>
        # <li><strong>SealGenerateSourceSystem</strong>: 系统生成印章, 无需上传SealImage图片</li>
        # </ul>
        # @type GenerateSource: String
        # @param SealType: 电子印章类型 , 可选类型如下:
        # <ul><li>**OFFICIAL**: (默认)公章</li>
        # <li>**CONTRACT**: 合同专用章;</li>
        # <li>**FINANCE**: 财务专用章;</li>
        # <li>**PERSONNEL**: 人事专用章</li>
        # </ul>
        # 注: `同企业下只能有一个公章, 重复创建会报错`
        # @type SealType: String
        # @param FileName: 电子印章图片文件名称，1-50个中文字符。
        # @type FileName: String
        # @param Image: 电子印章图片base64编码，大小不超过10M（原始图片不超过5M），只支持PNG或JPG图片格式

        # 注: `通过图片创建的电子印章，需电子签平台人工审核`

        # @type Image: String
        # @param Width: 电子印章宽度,单位px
        # 参数不再启用，系统会设置印章大小为标准尺寸。
        # @type Width: Integer
        # @param Height: 电子印章高度,单位px
        # 参数不再启用，系统会设置印章大小为标准尺寸。
        # @type Height: Integer
        # @param Color: 电子印章印章颜色(默认红色RED),RED-红色

        # 系统目前只支持红色印章创建。
        # @type Color: String
        # @param SealHorizontalText: 企业印章横向文字，最多可填15个汉字  (若超过印章最大宽度，优先压缩字间距，其次缩小字号)
        # 横向文字的位置如下图中的"印章横向文字在这里"

        # ![image](https://dyn.ess.tencent.cn/guide/capi/CreateSealByImage2.png)
        # @type SealHorizontalText: String
        # @param SealChordText: 暂时不支持下弦文字设置
        # @type SealChordText: String
        # @param SealCentralType: 系统生成的印章只支持STAR
        # @type SealCentralType: String
        # @param FileToken: 通过文件上传时，服务端生成的电子印章上传图片的token
        # @type FileToken: String
        # @param SealStyle: 印章样式, 可以选择的样式如下:
        # <ul><li>**circle**:(默认)圆形印章</li>
        # <li>**ellipse**:椭圆印章</li></ul>
        # @type SealStyle: String
        # @param SealSize: 印章尺寸取值描述, 可以选择的尺寸如下:
        # <ul><li> **42_42**: 圆形企业公章直径42mm, 当SealStyle是圆形的时候才有效</li>
        # <li> **40_40**: 圆形企业印章直径40mm, 当SealStyle是圆形的时候才有效</li>
        # <li> **45_30**: 椭圆形印章45mm x 30mm, 当SealStyle是椭圆的时候才有效</li></ul>
        # @type SealSize: String

        attr_accessor :Operator, :SealName, :Agent, :GenerateSource, :SealType, :FileName, :Image, :Width, :Height, :Color, :SealHorizontalText, :SealChordText, :SealCentralType, :FileToken, :SealStyle, :SealSize

        def initialize(operator=nil, sealname=nil, agent=nil, generatesource=nil, sealtype=nil, filename=nil, image=nil, width=nil, height=nil, color=nil, sealhorizontaltext=nil, sealchordtext=nil, sealcentraltype=nil, filetoken=nil, sealstyle=nil, sealsize=nil)
          @Operator = operator
          @SealName = sealname
          @Agent = agent
          @GenerateSource = generatesource
          @SealType = sealtype
          @FileName = filename
          @Image = image
          @Width = width
          @Height = height
          @Color = color
          @SealHorizontalText = sealhorizontaltext
          @SealChordText = sealchordtext
          @SealCentralType = sealcentraltype
          @FileToken = filetoken
          @SealStyle = sealstyle
          @SealSize = sealsize
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SealName = params['SealName']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @GenerateSource = params['GenerateSource']
          @SealType = params['SealType']
          @FileName = params['FileName']
          @Image = params['Image']
          @Width = params['Width']
          @Height = params['Height']
          @Color = params['Color']
          @SealHorizontalText = params['SealHorizontalText']
          @SealChordText = params['SealChordText']
          @SealCentralType = params['SealCentralType']
          @FileToken = params['FileToken']
          @SealStyle = params['SealStyle']
          @SealSize = params['SealSize']
        end
      end

      # CreateSeal返回参数结构体
      class CreateSealResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # 可登录腾讯电子签控制台，在 "印章"->"印章中心"选择查看的印章，在"印章详情" 中查看某个印章的SealId(在页面中展示为印章ID)。
        # @type SealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SealId, :RequestId

        def initialize(sealid=nil, requestid=nil)
          @SealId = sealid
          @RequestId = requestid
        end

        def deserialize(params)
          @SealId = params['SealId']
          @RequestId = params['RequestId']
        end
      end

      # 创建员工的结果
      class CreateStaffResult < TencentCloud::Common::AbstractModel
        # @param SuccessEmployeeData: 创建员工的成功列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessEmployeeData: Array
        # @param FailedEmployeeData: 创建员工的失败列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedEmployeeData: Array

        attr_accessor :SuccessEmployeeData, :FailedEmployeeData

        def initialize(successemployeedata=nil, failedemployeedata=nil)
          @SuccessEmployeeData = successemployeedata
          @FailedEmployeeData = failedemployeedata
        end

        def deserialize(params)
          unless params['SuccessEmployeeData'].nil?
            @SuccessEmployeeData = []
            params['SuccessEmployeeData'].each do |i|
              successcreatestaffdata_tmp = SuccessCreateStaffData.new
              successcreatestaffdata_tmp.deserialize(i)
              @SuccessEmployeeData << successcreatestaffdata_tmp
            end
          end
          unless params['FailedEmployeeData'].nil?
            @FailedEmployeeData = []
            params['FailedEmployeeData'].each do |i|
              failedcreatestaffdata_tmp = FailedCreateStaffData.new
              failedcreatestaffdata_tmp.deserialize(i)
              @FailedEmployeeData << failedcreatestaffdata_tmp
            end
          end
        end
      end

      # CreateUserAutoSignEnableUrl请求参数结构体
      class CreateUserAutoSignEnableUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param AutoSignConfig: 自动签开通配置信息, 包括开通的人员的信息等
        # @type AutoSignConfig: :class:`Tencentcloud::Ess.v20201111.models.AutoSignConfig`
        # @param UrlType: 生成的链接类型：
        # <ul><li> 不传(即为空值) 则会生成小程序端开通链接(默认)</li>
        # <li> **H5SIGN** : 生成H5端开通链接</li></ul>
        # @type UrlType: String
        # @param NotifyType: 是否通知开通方，通知类型:
        # <ul><li>默认不设置为不通知开通方</li>
        # <li>**SMS** :  短信通知 ,如果需要短信通知则NotifyAddress填写对方的手机号</li></ul>
        # @type NotifyType: String
        # @param NotifyAddress: 如果通知类型NotifyType选择为SMS，则此处为手机号, 其他通知类型不需要设置此项
        # @type NotifyAddress: String
        # @param ExpiredTime: 链接的过期时间，格式为Unix时间戳，不能早于当前时间，且最大为当前时间往后30天。`如果不传，默认过期时间为当前时间往后7天。`
        # @type ExpiredTime: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :SceneKey, :AutoSignConfig, :UrlType, :NotifyType, :NotifyAddress, :ExpiredTime, :Agent

        def initialize(operator=nil, scenekey=nil, autosignconfig=nil, urltype=nil, notifytype=nil, notifyaddress=nil, expiredtime=nil, agent=nil)
          @Operator = operator
          @SceneKey = scenekey
          @AutoSignConfig = autosignconfig
          @UrlType = urltype
          @NotifyType = notifytype
          @NotifyAddress = notifyaddress
          @ExpiredTime = expiredtime
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SceneKey = params['SceneKey']
          unless params['AutoSignConfig'].nil?
            @AutoSignConfig = AutoSignConfig.new
            @AutoSignConfig.deserialize(params['AutoSignConfig'])
          end
          @UrlType = params['UrlType']
          @NotifyType = params['NotifyType']
          @NotifyAddress = params['NotifyAddress']
          @ExpiredTime = params['ExpiredTime']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateUserAutoSignEnableUrl返回参数结构体
      class CreateUserAutoSignEnableUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 个人用户自动签的开通链接, 短链形式。过期时间受 `ExpiredTime` 参数控制。
        # @type Url: String
        # @param AppId: 腾讯电子签小程序的 AppID，用于其他小程序/APP等应用跳转至腾讯电子签小程序使用

        # 注: `如果获取的是H5链接, 则不会返回此值`
        # @type AppId: String
        # @param AppOriginalId: 腾讯电子签小程序的原始 Id,  ，用于其他小程序/APP等应用跳转至腾讯电子签小程序使用

        # 注: `如果获取的是H5链接, 则不会返回此值`
        # @type AppOriginalId: String
        # @param Path: 腾讯电子签小程序的跳转路径，用于其他小程序/APP等应用跳转至腾讯电子签小程序使用

        # 注: `如果获取的是H5链接, 则不会返回此值`
        # @type Path: String
        # @param QrCode: base64 格式的跳转二维码图片，可通过微信扫描后跳转到腾讯电子签小程序的开通界面。

        # 注: `如果获取的是H5链接, 则不会返回此二维码图片`
        # @type QrCode: String
        # @param UrlType: 返回的链接类型
        # <ul><li> 空: 默认小程序端链接</li>
        # <li> **H5SIGN** : h5端链接</li></ul>
        # @type UrlType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :AppId, :AppOriginalId, :Path, :QrCode, :UrlType, :RequestId

        def initialize(url=nil, appid=nil, apporiginalid=nil, path=nil, qrcode=nil, urltype=nil, requestid=nil)
          @Url = url
          @AppId = appid
          @AppOriginalId = apporiginalid
          @Path = path
          @QrCode = qrcode
          @UrlType = urltype
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @AppId = params['AppId']
          @AppOriginalId = params['AppOriginalId']
          @Path = params['Path']
          @QrCode = params['QrCode']
          @UrlType = params['UrlType']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserAutoSignSealUrl请求参数结构体
      class CreateUserAutoSignSealUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 自动签开通个人用户信息, 包括名字,身份证等。
        # @type UserInfo: :class:`Tencentcloud::Ess.v20201111.models.UserThreeFactor`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ExpiredTime: 链接的过期时间，格式为Unix时间戳，不能早于当前时间，且最大为当前时间往后30天。`如果不传，默认过期时间为当前时间往后7天。`
        # @type ExpiredTime: Integer

        attr_accessor :Operator, :SceneKey, :UserInfo, :Agent, :ExpiredTime

        def initialize(operator=nil, scenekey=nil, userinfo=nil, agent=nil, expiredtime=nil)
          @Operator = operator
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Agent = agent
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # CreateUserAutoSignSealUrl返回参数结构体
      class CreateUserAutoSignSealUrlResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 腾讯电子签小程序的AppId，用于其他小程序/APP等应用跳转至腾讯电子签小程序使用。
        # @type AppId: String
        # @param AppOriginalId: 腾讯电子签小程序的原始Id，用于其他小程序/APP等应用跳转至腾讯电子签小程序使用。
        # @type AppOriginalId: String
        # @param Url: 个人用户自动签的开通链接, 短链形式。过期时间受 `ExpiredTime` 参数控制。
        # @type Url: String
        # @param Path: 腾讯电子签小程序的跳转路径，用于其他小程序/APP等应用跳转至腾讯电子签小程序使用。
        # @type Path: String
        # @param QrCode: base64格式的跳转二维码图片，可通过微信扫描后跳转到腾讯电子签小程序的开通界面。
        # @type QrCode: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :AppOriginalId, :Url, :Path, :QrCode, :RequestId

        def initialize(appid=nil, apporiginalid=nil, url=nil, path=nil, qrcode=nil, requestid=nil)
          @AppId = appid
          @AppOriginalId = apporiginalid
          @Url = url
          @Path = path
          @QrCode = qrcode
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppOriginalId = params['AppOriginalId']
          @Url = params['Url']
          @Path = params['Path']
          @QrCode = params['QrCode']
          @RequestId = params['RequestId']
        end
      end

      # CreateWebThemeConfig请求参数结构体
      class CreateWebThemeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ThemeType: 主题类型，取值如下：
        # <ul><li> **EMBED_WEB_THEME**：嵌入式主题（默认），web页面嵌入的主题风格配置</li>
        # </ul>
        # @type ThemeType: String
        # @param WebThemeConfig: 电子签logo是否展示，主体颜色等配置项
        # @type WebThemeConfig: :class:`Tencentcloud::Ess.v20201111.models.WebThemeConfig`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :ThemeType, :WebThemeConfig, :Agent

        def initialize(operator=nil, themetype=nil, webthemeconfig=nil, agent=nil)
          @Operator = operator
          @ThemeType = themetype
          @WebThemeConfig = webthemeconfig
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ThemeType = params['ThemeType']
          unless params['WebThemeConfig'].nil?
            @WebThemeConfig = WebThemeConfig.new
            @WebThemeConfig.deserialize(params['WebThemeConfig'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateWebThemeConfig返回参数结构体
      class CreateWebThemeConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteExtendedServiceAuthInfos请求参数结构体
      class DeleteExtendedServiceAuthInfosRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserIds: 本企业员工的id，需要已实名，正常在职员工
        # @type UserIds: Array
        # @param ExtendServiceType: 取值如下所示：
        # <ul><li>OPEN_SERVER_SIGN：企业自动签</li>
        # <li>BATCH_SIGN：批量签署</li>
        # </ul>
        # @type ExtendServiceType: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :UserIds, :ExtendServiceType, :Agent

        def initialize(operator=nil, userids=nil, extendservicetype=nil, agent=nil)
          @Operator = operator
          @UserIds = userids
          @ExtendServiceType = extendservicetype
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserIds = params['UserIds']
          @ExtendServiceType = params['ExtendServiceType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DeleteExtendedServiceAuthInfos返回参数结构体
      class DeleteExtendedServiceAuthInfosResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIntegrationDepartment请求参数结构体
      class DeleteIntegrationDepartmentRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得组织架构管理权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param DeptId: 电子签中的部门ID，通过<a href="https://qian.tencent.com/developers/companyApis/organizations/DescribeIntegrationDepartments" target="_blank">DescribeIntegrationDepartments</a>接口可获得。
        # @type DeptId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ReceiveDeptId: 交接部门ID。
        # 待删除部门中的合同、印章和模板数据，将会被交接至该部门ID下；若未填写则交接至公司根部门。
        # @type ReceiveDeptId: String

        attr_accessor :Operator, :DeptId, :Agent, :ReceiveDeptId

        def initialize(operator=nil, deptid=nil, agent=nil, receivedeptid=nil)
          @Operator = operator
          @DeptId = deptid
          @Agent = agent
          @ReceiveDeptId = receivedeptid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @DeptId = params['DeptId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ReceiveDeptId = params['ReceiveDeptId']
        end
      end

      # DeleteIntegrationDepartment返回参数结构体
      class DeleteIntegrationDepartmentResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIntegrationEmployees请求参数结构体
      class DeleteIntegrationEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Employees: 待移除员工的信息。应符合以下规则：
        # <ul><li>UserId和OpenId不可同时为空。</li>
        # <li>若需要进行离职交接，交接人信息ReceiveUserId和ReceiveOpenId不可同时为空。否则视为不进行离职交接。</li></ul>
        # @type Employees: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :Employees, :Agent

        def initialize(operator=nil, employees=nil, agent=nil)
          @Operator = operator
          @Employees = employees
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Employees'].nil?
            @Employees = []
            params['Employees'].each do |i|
              staff_tmp = Staff.new
              staff_tmp.deserialize(i)
              @Employees << staff_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DeleteIntegrationEmployees返回参数结构体
      class DeleteIntegrationEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param DeleteEmployeeResult: 员工删除结果。包含成功数据与失败数据。
        # <ul><li>**成功数据**：展示员工姓名、手机号与电子签平台UserId</li>
        # <li>**失败数据**：展示员工电子签平台UserId、第三方平台OpenId和失败原因</li></ul>
        # @type DeleteEmployeeResult: :class:`Tencentcloud::Ess.v20201111.models.DeleteStaffsResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteEmployeeResult, :RequestId

        def initialize(deleteemployeeresult=nil, requestid=nil)
          @DeleteEmployeeResult = deleteemployeeresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteEmployeeResult'].nil?
            @DeleteEmployeeResult = DeleteStaffsResult.new
            @DeleteEmployeeResult.deserialize(params['DeleteEmployeeResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteIntegrationRoleUsers请求参数结构体
      class DeleteIntegrationRoleUsersRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。 注: 在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param RoleId: 角色id，可以通过DescribeIntegrationRoles接口获取角色信息
        # @type RoleId: String
        # @param Users: 用户信息,最多 200 个用户，并且 UserId 和 OpenId 二选一，其他字段不需要传
        # @type Users: Array
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :RoleId, :Users, :Agent

        def initialize(operator=nil, roleid=nil, users=nil, agent=nil)
          @Operator = operator
          @RoleId = roleid
          @Users = users
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @RoleId = params['RoleId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DeleteIntegrationRoleUsers返回参数结构体
      class DeleteIntegrationRoleUsersResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId

        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSealPolicies请求参数结构体
      class DeleteSealPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param PolicyIds: 印章授权编码数组。这个参数跟下面的SealId其中一个必填，另外一个可选填
        # @type PolicyIds: Array
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # 可登录腾讯电子签控制台，在 "印章"->"印章中心"选择查看的印章，在"印章详情" 中查看某个印章的SealId(在页面中展示为印章ID)。
        # 注：印章ID。这个参数跟上面的PolicyIds其中一个必填，另外一个可选填。
        # @type SealId: String
        # @param UserIds: 待授权的员工ID，员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # @type UserIds: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :PolicyIds, :SealId, :UserIds, :Agent

        def initialize(operator=nil, policyids=nil, sealid=nil, userids=nil, agent=nil)
          @Operator = operator
          @PolicyIds = policyids
          @SealId = sealid
          @UserIds = userids
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @PolicyIds = params['PolicyIds']
          @SealId = params['SealId']
          @UserIds = params['UserIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DeleteSealPolicies返回参数结构体
      class DeleteSealPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # 删除员工结果
      class DeleteStaffsResult < TencentCloud::Common::AbstractModel
        # @param SuccessEmployeeData: 删除员工的成功数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessEmployeeData: Array
        # @param FailedEmployeeData: 删除员工的失败数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedEmployeeData: Array

        attr_accessor :SuccessEmployeeData, :FailedEmployeeData

        def initialize(successemployeedata=nil, failedemployeedata=nil)
          @SuccessEmployeeData = successemployeedata
          @FailedEmployeeData = failedemployeedata
        end

        def deserialize(params)
          unless params['SuccessEmployeeData'].nil?
            @SuccessEmployeeData = []
            params['SuccessEmployeeData'].each do |i|
              successdeletestaffdata_tmp = SuccessDeleteStaffData.new
              successdeletestaffdata_tmp.deserialize(i)
              @SuccessEmployeeData << successdeletestaffdata_tmp
            end
          end
          unless params['FailedEmployeeData'].nil?
            @FailedEmployeeData = []
            params['FailedEmployeeData'].each do |i|
              faileddeletestaffdata_tmp = FailedDeleteStaffData.new
              faileddeletestaffdata_tmp.deserialize(i)
              @FailedEmployeeData << faileddeletestaffdata_tmp
            end
          end
        end
      end

      # 集成版员工部门信息。
      class Department < TencentCloud::Common::AbstractModel
        # @param DepartmentId: 部门ID。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称。
        # @type DepartmentName: String

        attr_accessor :DepartmentId, :DepartmentName

        def initialize(departmentid=nil, departmentname=nil)
          @DepartmentId = departmentid
          @DepartmentName = departmentname
        end

        def deserialize(params)
          @DepartmentId = params['DepartmentId']
          @DepartmentName = params['DepartmentName']
        end
      end

      # DescribeBillUsageDetail请求参数结构体
      class DescribeBillUsageDetailRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间字符串，格式为yyyymmdd,时间跨度不能大于31天
        # @type StartTime: String
        # @param EndTime: 查询结束时间字符串，格式为yyyymmdd,时间跨度不能大于31天
        # @type EndTime: String
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页，页码从 0 开始，即首页为 0
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，如果不传默认为 50，单页最大支持 50。
        # @type Limit: Integer
        # @param QuotaType: 查询的套餐类型 （选填 ）不传则查询所有套餐；
        # 目前支持:
        # <ul>
        # <li>**CloudEnterprise**: 企业版合同</li>
        # <li>**SingleSignature**: 单方签章</li>
        # <li>**CloudProve**: 签署报告</li>
        # <li>**CloudOnlineSign**: 腾讯会议在线签约</li>
        # <li>**ChannelWeCard**: 微工卡</li>
        # <li>**SignFlow**: 合同套餐</li>
        # <li>**SignFace**: 签署意愿（人脸识别）</li>
        # <li>**SignPassword**: 签署意愿（密码）</li>
        # <li>**SignSMS**: 签署意愿（短信）</li>
        # <li>**PersonalEssAuth**: 签署人实名（腾讯电子签认证）</li>
        # <li>**PersonalThirdAuth**: 签署人实名（信任第三方认证）</li>
        # <li>**OrgEssAuth**: 签署企业实名</li>
        # <li>**FlowNotify**: 短信通知</li>
        # <li>**AuthService**: 企业工商信息查询</li>
        # </ul>
        # @type QuotaType: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :StartTime, :EndTime, :Offset, :Limit, :QuotaType, :Agent

        def initialize(starttime=nil, endtime=nil, offset=nil, limit=nil, quotatype=nil, agent=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @QuotaType = quotatype
          @Agent = agent
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QuotaType = params['QuotaType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeBillUsageDetail返回参数结构体
      class DescribeBillUsageDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Details: 消耗详情
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Details, :RequestId

        def initialize(total=nil, details=nil, requestid=nil)
          @Total = total
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              billusagedetail_tmp = BillUsageDetail.new
              billusagedetail_tmp.deserialize(i)
              @Details << billusagedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtendedServiceAuthInfos请求参数结构体
      class DescribeExtendedServiceAuthInfosRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ExtendServiceType: 要查询的扩展服务类型。
        # 默认为空，即查询当前支持的所有扩展服务信息。
        # 若需查询单个扩展服务的开通情况，请传递相应的值，如下所示：
        # <ul><li>OPEN_SERVER_SIGN：企业静默签署</li>
        # <li>OVERSEA_SIGN：企业与港澳台居民签署合同</li>
        # <li>MOBILE_CHECK_APPROVER：使用手机号验证签署方身份</li>
        # <li>PAGING_SEAL：骑缝章</li>
        # <li>BATCH_SIGN：批量签署</li>
        # <li>AGE_LIMIT_EXPANSION：拓宽签署方年龄限制</li></ul>
        # @type ExtendServiceType: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :ExtendServiceType, :Agent

        def initialize(operator=nil, extendservicetype=nil, agent=nil)
          @Operator = operator
          @ExtendServiceType = extendservicetype
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ExtendServiceType = params['ExtendServiceType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeExtendedServiceAuthInfos返回参数结构体
      class DescribeExtendedServiceAuthInfosResponse < TencentCloud::Common::AbstractModel
        # @param AuthInfoList: 服务开通和授权的信息列表，根据查询类型返回所有支持的扩展服务开通和授权状况，或者返回特定扩展服务的开通和授权状况。
        # @type AuthInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthInfoList, :RequestId

        def initialize(authinfolist=nil, requestid=nil)
          @AuthInfoList = authinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuthInfoList'].nil?
            @AuthInfoList = []
            params['AuthInfoList'].each do |i|
              extendauthinfo_tmp = ExtendAuthInfo.new
              extendauthinfo_tmp.deserialize(i)
              @AuthInfoList << extendauthinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileUrls请求参数结构体
      class DescribeFileUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param BusinessType: 文件对应的业务类型，目前支持：
        # <ul>
        # <li>**FLOW ** : 如需下载合同文件请选择此项</li>
        # <li>**TEMPLATE ** : 如需下载模板文件请选择此项</li>
        # <li>**DOCUMENT  **: 如需下载文档文件请选择此项</li>
        # <li>**SEAL  **: 如需下载印章图片请选择此项</li>
        # </ul>
        # @type BusinessType: String
        # @param BusinessIds: 业务编号的数组，取值如下：
        # <ul>
        # <li>流程编号</li>
        # <li>模板编号</li>
        # <li>文档编号</li>
        # <li>印章编号</li>
        # <li>如需下载合同文件请传入FlowId，最大支持20个资源</li>
        # </ul>
        # @type BusinessIds: Array
        # @param FileName: 下载后的文件命名，只有FileType为zip的时候生效
        # @type FileName: String
        # @param FileType: 要下载的文件类型，取值如下：
        # <ul>
        # <li>JPG</li>
        # <li>PDF</li>
        # <li>ZIP</li>
        # </ul>
        # @type FileType: String
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页，页码从 0 开始，即首页为 0，最大 1000。
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，如果不传默认为 20，单页最大支持 100。
        # @type Limit: Integer
        # @param UrlTtl: 下载url过期时间，单位秒。0: 按默认值5分钟，允许范围：1s~24x60x60s(1天)
        # @type UrlTtl: Integer
        # @param CcToken: 暂不开放
        # @type CcToken: String
        # @param Scene: 暂不开放
        # @type Scene: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :BusinessType, :BusinessIds, :FileName, :FileType, :Offset, :Limit, :UrlTtl, :CcToken, :Scene, :Agent
        extend Gem::Deprecate
        deprecate :CcToken, :none, 2023, 12
        deprecate :CcToken=, :none, 2023, 12
        deprecate :Scene, :none, 2023, 12
        deprecate :Scene=, :none, 2023, 12

        def initialize(operator=nil, businesstype=nil, businessids=nil, filename=nil, filetype=nil, offset=nil, limit=nil, urlttl=nil, cctoken=nil, scene=nil, agent=nil)
          @Operator = operator
          @BusinessType = businesstype
          @BusinessIds = businessids
          @FileName = filename
          @FileType = filetype
          @Offset = offset
          @Limit = limit
          @UrlTtl = urlttl
          @CcToken = cctoken
          @Scene = scene
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @BusinessType = params['BusinessType']
          @BusinessIds = params['BusinessIds']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UrlTtl = params['UrlTtl']
          @CcToken = params['CcToken']
          @Scene = params['Scene']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeFileUrls返回参数结构体
      class DescribeFileUrlsResponse < TencentCloud::Common::AbstractModel
        # @param FileUrls: 文件URL信息；
        # 链接不是永久链接,  过期时间受UrlTtl入参的影响,  默认有效期5分钟后,  到期后链接失效。
        # @type FileUrls: Array
        # @param TotalCount: URL数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileUrls, :TotalCount, :RequestId

        def initialize(fileurls=nil, totalcount=nil, requestid=nil)
          @FileUrls = fileurls
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileUrls'].nil?
            @FileUrls = []
            params['FileUrls'].each do |i|
              fileurl_tmp = FileUrl.new
              fileurl_tmp.deserialize(i)
              @FileUrls << fileurl_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowBriefs请求参数结构体
      class DescribeFlowBriefsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 查询的合同流程ID列表最多支持100个流程ID。
        # 如果某个合同流程ID不存在，系统会跳过此ID的查询，继续查询剩余存在的合同流程。

        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowIds: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowIds, :Agent

        def initialize(operator=nil, flowids=nil, agent=nil)
          @Operator = operator
          @FlowIds = flowids
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowIds = params['FlowIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeFlowBriefs返回参数结构体
      class DescribeFlowBriefsResponse < TencentCloud::Common::AbstractModel
        # @param FlowBriefs: 合同流程基础信息列表，包含流程的名称、状态、创建日期等基本信息。
        # 注：`与入参 FlowIds 的顺序可能存在不一致的情况。`
        # @type FlowBriefs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowBriefs, :RequestId

        def initialize(flowbriefs=nil, requestid=nil)
          @FlowBriefs = flowbriefs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowBriefs'].nil?
            @FlowBriefs = []
            params['FlowBriefs'].each do |i|
              flowbrief_tmp = FlowBrief.new
              flowbrief_tmp.deserialize(i)
              @FlowBriefs << flowbrief_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowComponents请求参数结构体
      class DescribeFlowComponentsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :Agent

        def initialize(operator=nil, flowid=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeFlowComponents返回参数结构体
      class DescribeFlowComponentsResponse < TencentCloud::Common::AbstractModel
        # @param RecipientComponentInfos: 合同流程关联的填写控件信息，按照参与方进行分类返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientComponentInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecipientComponentInfos, :RequestId

        def initialize(recipientcomponentinfos=nil, requestid=nil)
          @RecipientComponentInfos = recipientcomponentinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecipientComponentInfos'].nil?
            @RecipientComponentInfos = []
            params['RecipientComponentInfos'].each do |i|
              recipientcomponentinfo_tmp = RecipientComponentInfo.new
              recipientcomponentinfo_tmp.deserialize(i)
              @RecipientComponentInfos << recipientcomponentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowEvidenceReport请求参数结构体
      class DescribeFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ReportId: 签署报告编号, 由<a href="https://qian.tencent.com/developers/companyApis/certificate/CreateFlowEvidenceReport" target="_blank">提交申请出证报告任务</a>产生
        # @type ReportId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :ReportId, :Agent

        def initialize(operator=nil, reportid=nil, agent=nil)
          @Operator = operator
          @ReportId = reportid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ReportId = params['ReportId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeFlowEvidenceReport返回参数结构体
      class DescribeFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 出证报告PDF的下载 URL，`有效期为5分钟`，超过有效期后将无法再下载。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param Status: 出证任务执行的状态, 状态含义如下：

        # <ul><li>**EvidenceStatusExecuting**：  出证任务在执行中</li>
        # <li>**EvidenceStatusSuccess**：  出证任务执行成功</li>
        # <li>**EvidenceStatusFailed** ： 出征任务执行失败</li></ul>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportUrl, :Status, :RequestId

        def initialize(reporturl=nil, status=nil, requestid=nil)
          @ReportUrl = reporturl
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportUrl = params['ReportUrl']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowInfo请求参数结构体
      class DescribeFlowInfoRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 需要查询的流程ID列表，最多可传入100个ID。
        # 如果要查询合同组的信息，则不需要传入此参数，只需传入 FlowGroupId 参数即可。
        # @type FlowIds: Array
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FlowGroupId: 需要查询的流程组ID，如果传入此参数，则会忽略 FlowIds 参数。该合同组由<a href="https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowGroupByFiles" target="_blank">通过多文件创建合同组签署流程</a>等接口创建。
        # @type FlowGroupId: String

        attr_accessor :Operator, :FlowIds, :Agent, :FlowGroupId

        def initialize(operator=nil, flowids=nil, agent=nil, flowgroupid=nil)
          @Operator = operator
          @FlowIds = flowids
          @Agent = agent
          @FlowGroupId = flowgroupid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowIds = params['FlowIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowGroupId = params['FlowGroupId']
        end
      end

      # DescribeFlowInfo返回参数结构体
      class DescribeFlowInfoResponse < TencentCloud::Common::AbstractModel
        # @param FlowDetailInfos: 合同流程的详细信息。
        # 如果查询的是合同组信息，则返回的是组内所有子合同流程的详细信息。
        # @type FlowDetailInfos: Array
        # @param FlowGroupId: 合同组ID，只有在查询合同组信息时才会返回。
        # @type FlowGroupId: String
        # @param FlowGroupName: 合同组名称，只有在查询合同组信息时才会返回。
        # @type FlowGroupName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowDetailInfos, :FlowGroupId, :FlowGroupName, :RequestId

        def initialize(flowdetailinfos=nil, flowgroupid=nil, flowgroupname=nil, requestid=nil)
          @FlowDetailInfos = flowdetailinfos
          @FlowGroupId = flowgroupid
          @FlowGroupName = flowgroupname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowDetailInfos'].nil?
            @FlowDetailInfos = []
            params['FlowDetailInfos'].each do |i|
              flowdetailinfo_tmp = FlowDetailInfo.new
              flowdetailinfo_tmp.deserialize(i)
              @FlowDetailInfos << flowdetailinfo_tmp
            end
          end
          @FlowGroupId = params['FlowGroupId']
          @FlowGroupName = params['FlowGroupName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowTemplates请求参数结构体
      class DescribeFlowTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ContentType: 查询内容控制

        # <ul><li>**0**：模板列表及详情（默认）</li>
        # <li>**1**：仅模板列表</li></ul>
        # @type ContentType: Integer
        # @param Filters: 搜索条件，本字段用于指定模板Id进行查询。
        # Key：template-id Values：需要查询的模板Id列表
        # @type Filters: Array
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用。

        # 注：`1.offset从0开始，即第一页为0。`
        # `2.默认从第一页返回。`
        # @type Offset: Integer
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用。

        # 注：`1.默认值为20，单页做大值为200。`
        # @type Limit: Integer
        # @param ApplicationId: 指定查询的应用号，指定后查询该应用号下的模板列表。

        # 注：`1.ApplicationId为空时，查询所有应用下的模板列表。`
        # @type ApplicationId: String
        # @param IsChannel: 默认为false，查询SaaS模板库列表；
        # 为true，查询第三方应用集成平台企业模板库管理列表
        # @type IsChannel: Boolean
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`
        # @param GenerateSource: 暂未开放
        # @type GenerateSource: Integer
        # @param WithPreviewUrl: 是否获取模板预览链接
        # @type WithPreviewUrl: Boolean

        attr_accessor :Operator, :Agent, :ContentType, :Filters, :Offset, :Limit, :ApplicationId, :IsChannel, :Organization, :GenerateSource, :WithPreviewUrl
        extend Gem::Deprecate
        deprecate :IsChannel, :none, 2023, 12
        deprecate :IsChannel=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12
        deprecate :GenerateSource, :none, 2023, 12
        deprecate :GenerateSource=, :none, 2023, 12

        def initialize(operator=nil, agent=nil, contenttype=nil, filters=nil, offset=nil, limit=nil, applicationid=nil, ischannel=nil, organization=nil, generatesource=nil, withpreviewurl=nil)
          @Operator = operator
          @Agent = agent
          @ContentType = contenttype
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @ApplicationId = applicationid
          @IsChannel = ischannel
          @Organization = organization
          @GenerateSource = generatesource
          @WithPreviewUrl = withpreviewurl
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ContentType = params['ContentType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationId = params['ApplicationId']
          @IsChannel = params['IsChannel']
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          @GenerateSource = params['GenerateSource']
          @WithPreviewUrl = params['WithPreviewUrl']
        end
      end

      # DescribeFlowTemplates返回参数结构体
      class DescribeFlowTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板详情列表数据
        # @type Templates: Array
        # @param TotalCount: 查询到的模板总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :TotalCount, :RequestId

        def initialize(templates=nil, totalcount=nil, requestid=nil)
          @Templates = templates
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              templateinfo_tmp = TemplateInfo.new
              templateinfo_tmp.deserialize(i)
              @Templates << templateinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationDepartments请求参数结构体
      class DescribeIntegrationDepartmentsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得组织架构管理权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param QueryType: 查询类型，支持以下类型：
        # <ul><li>**0**：查询单个部门节点列表，不包含子节点部门信息</li>
        # <li>**1**：查询单个部门节点级一级子节点部门信息列表</li></ul>
        # @type QueryType: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param DeptId: 查询的部门ID。
        # 注：`如果同时指定了DeptId与DeptOpenId参数，系统将优先使用DeptId参数进行查询。当二者都未指定时，系统将返回根节点部门数据。`
        # @type DeptId: String
        # @param DeptOpenId: 查询的客户系统部门ID。
        # 注：`如果同时指定了DeptId与DeptOpenId参数，系统将优先使用DeptId参数进行查询。当二者都未指定时，系统将返回根节点部门数据。`
        # @type DeptOpenId: String

        attr_accessor :Operator, :QueryType, :Agent, :DeptId, :DeptOpenId

        def initialize(operator=nil, querytype=nil, agent=nil, deptid=nil, deptopenid=nil)
          @Operator = operator
          @QueryType = querytype
          @Agent = agent
          @DeptId = deptid
          @DeptOpenId = deptopenid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @QueryType = params['QueryType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @DeptId = params['DeptId']
          @DeptOpenId = params['DeptOpenId']
        end
      end

      # DescribeIntegrationDepartments返回参数结构体
      class DescribeIntegrationDepartmentsResponse < TencentCloud::Common::AbstractModel
        # @param Departments: 部门信息列表。部门信息根据部门排序号OrderNo降序排列，根据部门创建时间升序排列。
        # @type Departments: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Departments, :RequestId

        def initialize(departments=nil, requestid=nil)
          @Departments = departments
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Departments'].nil?
            @Departments = []
            params['Departments'].each do |i|
              integrationdepartment_tmp = IntegrationDepartment.new
              integrationdepartment_tmp.deserialize(i)
              @Departments << integrationdepartment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationEmployees请求参数结构体
      class DescribeIntegrationEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 20。
        # @type Limit: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Filters: 查询的关键字段，支持Key-Values查询。可选键值如下：
        # <ul>
        #   <li>Key:**"Status"**，根据实名状态查询员工，Values可选：
        #     <ul><li>**["IsVerified"]**：查询已实名的员工</li><li>**["NotVerified"]**：查询未实名的员工</li></ul></li>
        #   <li>Key:**"DepartmentId"**，根据部门ID查询部门下的员工，Values为指定的部门ID：**["DepartmentId"]**</li>
        #   <li>Key:**"UserId"**，根据用户ID查询员工，Values为指定的用户ID：**["UserId"]**</li>
        #   <li>Key:**"UserWeWorkOpenId"**，根据用户企微账号ID查询员工，Values为指定用户的企微账号ID：**["UserWeWorkOpenId"]**</li>
        #   <li>Key:**"StaffOpenId"**，根据第三方系统用户OpenId查询员工，Values为第三方系统用户OpenId列表：**["OpenId1","OpenId2",...]**</li>
        #   <li>Key:**"RoleId"**，根据电子签角色ID查询员工，Values为指定的角色ID，满足其中任意一个角色即可：**["RoleId1","RoleId2",...]**</li>
        # </ul>
        # @type Filters: Array
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页。页码从 0 开始，即首页为 0，最大20000。
        # @type Offset: Integer

        attr_accessor :Operator, :Limit, :Agent, :Filters, :Offset

        def initialize(operator=nil, limit=nil, agent=nil, filters=nil, offset=nil)
          @Operator = operator
          @Limit = limit
          @Agent = agent
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Limit = params['Limit']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # DescribeIntegrationEmployees返回参数结构体
      class DescribeIntegrationEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param Employees: 员工信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Employees: Array
        # @param Offset: 指定分页返回第几页的数据。页码从 0 开始，即首页为 0，最大20000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 20。
        # @type Limit: Integer
        # @param TotalCount: 符合条件的员工数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Employees, :Offset, :Limit, :TotalCount, :RequestId

        def initialize(employees=nil, offset=nil, limit=nil, totalcount=nil, requestid=nil)
          @Employees = employees
          @Offset = offset
          @Limit = limit
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Employees'].nil?
            @Employees = []
            params['Employees'].each do |i|
              staff_tmp = Staff.new
              staff_tmp.deserialize(i)
              @Employees << staff_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIntegrationRoles请求参数结构体
      class DescribeIntegrationRolesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 200。
        # @type Limit: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Filters: 查询的关键字段，支持Key-Value单值查询。可选键值对如下：
        # <ul>
        #   <li>Key:"RoleType"，查询角色类型，Values可选：
        #     <ul><li>**"1"**：查询系统角色</li><li>**"2"**：查询自定义角色</li></ul>
        #   </li><li>Key:"RoleStatus"，查询角色状态，Values可选：
        #     <ul><li>**"1"**：查询启用角色</li><li>**"2"**：查询禁用角色</li></ul>
        #   </li><li>Key:"IsGroupRole"，是否查询集团角色，Values可选：
        #     <ul><li>**"0"**：查询非集团角色</li><li>**"1"**：查询集团角色</li></ul>
        #   </li><li>Key:"IsReturnPermissionGroup"，是否返回角色对应权限树，Values可选：
        #     <ul><li>**"0"**：接口不返回角色对应的权限树字段</li><li>**"1"**：接口返回角色对应的权限树字段</li></ul>
        #   </li>
        # </ul>
        # @type Filters: Array
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页。页码从 0 开始，即首页为 0，最大2000。
        # @type Offset: Integer

        attr_accessor :Operator, :Limit, :Agent, :Filters, :Offset

        def initialize(operator=nil, limit=nil, agent=nil, filters=nil, offset=nil)
          @Operator = operator
          @Limit = limit
          @Agent = agent
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Limit = params['Limit']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # DescribeIntegrationRoles返回参数结构体
      class DescribeIntegrationRolesResponse < TencentCloud::Common::AbstractModel
        # @param Offset: 指定分页返回的页码。页码从0开始，最大为2000。
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 200。
        # @type Limit: Integer
        # @param TotalCount: 符合查询条件的总角色数。
        # @type TotalCount: Integer
        # @param IntegrateRoles: 企业角色信息列表。
        # @type IntegrateRoles: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Offset, :Limit, :TotalCount, :IntegrateRoles, :RequestId

        def initialize(offset=nil, limit=nil, totalcount=nil, integrateroles=nil, requestid=nil)
          @Offset = offset
          @Limit = limit
          @TotalCount = totalcount
          @IntegrateRoles = integrateroles
          @RequestId = requestid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TotalCount = params['TotalCount']
          unless params['IntegrateRoles'].nil?
            @IntegrateRoles = []
            params['IntegrateRoles'].each do |i|
              integraterole_tmp = IntegrateRole.new
              integraterole_tmp.deserialize(i)
              @IntegrateRoles << integraterole_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationGroupOrganizations请求参数结构体
      class DescribeOrganizationGroupOrganizationsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息,userId必填。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Limit: 指定分页每页返回的数据条数，单页最大1000
        # @type Limit: Integer
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页，页码从 0 开始，即首页为 0
        # @type Offset: Integer
        # @param Name: 查询成员企业的企业名，模糊匹配
        # @type Name: String
        # @param Status: 成员企业加入集团的当前状态
        # <ul><li> **1**：待授权</li>
        # <li> **2**：已授权待激活</li>
        # <li> **3**：拒绝授权</li>
        # <li> **4**：已解除</li>
        # <li> **5**：已加入</li>
        # </ul>
        # @type Status: Integer
        # @param Export: 是否导出当前成员企业数据
        # <ul><li> **false**：不导出（默认值）</li>
        # <li> **true**：导出</li></ul>
        # @type Export: Boolean
        # @param Id: 成员企业机构 ID，32 位字符串，在PC控制台 集团管理可获取
        # @type Id: String

        attr_accessor :Operator, :Limit, :Offset, :Name, :Status, :Export, :Id

        def initialize(operator=nil, limit=nil, offset=nil, name=nil, status=nil, export=nil, id=nil)
          @Operator = operator
          @Limit = limit
          @Offset = offset
          @Name = name
          @Status = status
          @Export = export
          @Id = id
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Name = params['Name']
          @Status = params['Status']
          @Export = params['Export']
          @Id = params['Id']
        end
      end

      # DescribeOrganizationGroupOrganizations返回参数结构体
      class DescribeOrganizationGroupOrganizationsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件的资源实例总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param JoinedTotal: 已授权待激活的子企业总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinedTotal: Integer
        # @param ActivedTotal: 已加入的企业数量(废弃,请使用ActivatedTotal)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivedTotal: Integer
        # @param ExportUrl: 如果入参Export为 true 时使用，表示导出Excel的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExportUrl: String
        # @param List: 成员企业信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param ActivatedTotal: 已加入的子企业总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivatedTotal: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :JoinedTotal, :ActivedTotal, :ExportUrl, :List, :ActivatedTotal, :RequestId
        extend Gem::Deprecate
        deprecate :ActivedTotal, :none, 2023, 12
        deprecate :ActivedTotal=, :none, 2023, 12

        def initialize(total=nil, joinedtotal=nil, activedtotal=nil, exporturl=nil, list=nil, activatedtotal=nil, requestid=nil)
          @Total = total
          @JoinedTotal = joinedtotal
          @ActivedTotal = activedtotal
          @ExportUrl = exporturl
          @List = list
          @ActivatedTotal = activatedtotal
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @JoinedTotal = params['JoinedTotal']
          @ActivedTotal = params['ActivedTotal']
          @ExportUrl = params['ExportUrl']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              grouporganization_tmp = GroupOrganization.new
              grouporganization_tmp.deserialize(i)
              @List << grouporganization_tmp
            end
          end
          @ActivatedTotal = params['ActivatedTotal']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationSeals请求参数结构体
      class DescribeOrganizationSealsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Limit: 指定分页每页返回的数据条数，如果不传默认为 20，单页最大支持 200。
        # @type Limit: Integer
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页，页码从 0 开始，即首页为 0，最大 20000。
        # @type Offset: Integer
        # @param InfoType: 查询信息类型，取值如下：
        # <ul>
        # <li>0不返回授权用户</li>
        # <li>1返回授权用户信息</li>
        # </ul>
        # @type InfoType: Integer
        # @param SealId: 印章id（没有输入返回所有）
        # @type SealId: String
        # @param SealTypes: 印章类型列表（都是组织机构印章）。
        # 为空时查询所有类型的印章。
        # 目前支持以下类型：
        # <ul>
        # <li>OFFICIAL：企业公章；</li>
        # <li>CONTRACT：合同专用章；</li>
        # <li>ORGANIZATION_SEAL：企业印章(图片上传创建)；</li>
        # <li>LEGAL_PERSON_SEAL：法定代表人章</li>
        # </ul>
        # @type SealTypes: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param SealStatuses: 查询的印章状态列表。
        # <ul>
        # <li>空，只查询启用状态的印章；</li>
        # <li>ALL，查询所有状态的印章；</li>
        # <li>CHECKING，查询待审核的印章；</li>
        # <li>SUCCESS，查询启用状态的印章；</li>
        # <li>FAIL，查询印章审核拒绝的印章；</li>
        # <li>DISABLE，查询已停用的印章；</li>
        # <li>STOPPED，查询已终止的印章；</li>
        # <li>VOID，查询已作废的印章；</li>
        # <li>INVALID，查询已失效的印章；</li>
        # </ul>
        # @type SealStatuses: Array

        attr_accessor :Operator, :Limit, :Offset, :InfoType, :SealId, :SealTypes, :Agent, :SealStatuses

        def initialize(operator=nil, limit=nil, offset=nil, infotype=nil, sealid=nil, sealtypes=nil, agent=nil, sealstatuses=nil)
          @Operator = operator
          @Limit = limit
          @Offset = offset
          @InfoType = infotype
          @SealId = sealid
          @SealTypes = sealtypes
          @Agent = agent
          @SealStatuses = sealstatuses
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InfoType = params['InfoType']
          @SealId = params['SealId']
          @SealTypes = params['SealTypes']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SealStatuses = params['SealStatuses']
        end
      end

      # DescribeOrganizationSeals返回参数结构体
      class DescribeOrganizationSealsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 在设置了SealId时返回0或1，没有设置时返回公司的总印章数量，可能比返回的印章数组数量多
        # @type TotalCount: Integer
        # @param Seals: 查询到的印章结果数组
        # @type Seals: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Seals, :RequestId

        def initialize(totalcount=nil, seals=nil, requestid=nil)
          @TotalCount = totalcount
          @Seals = seals
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Seals'].nil?
            @Seals = []
            params['Seals'].each do |i|
              occupiedseal_tmp = OccupiedSeal.new
              occupiedseal_tmp.deserialize(i)
              @Seals << occupiedseal_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonCertificate请求参数结构体
      class DescribePersonCertificateRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserInfo: 个人用户的三要素信息：
        # <ul><li>姓名</li>
        # <li>证件号</li>
        # <li>证件类型</li></ul>
        # @type UserInfo: :class:`Tencentcloud::Ess.v20201111.models.UserThreeFactor`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param SceneKey: 证书使用场景，可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String

        attr_accessor :Operator, :UserInfo, :Agent, :SceneKey

        def initialize(operator=nil, userinfo=nil, agent=nil, scenekey=nil)
          @Operator = operator
          @UserInfo = userinfo
          @Agent = agent
          @SceneKey = scenekey
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SceneKey = params['SceneKey']
        end
      end

      # DescribePersonCertificate返回参数结构体
      class DescribePersonCertificateResponse < TencentCloud::Common::AbstractModel
        # @param Cert: 证书的Base64
        # @type Cert: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cert, :RequestId

        def initialize(cert=nil, requestid=nil)
          @Cert = cert
          @RequestId = requestid
        end

        def deserialize(params)
          @Cert = params['Cert']
          @RequestId = params['RequestId']
        end
      end

      # DescribeThirdPartyAuthCode请求参数结构体
      class DescribeThirdPartyAuthCodeRequest < TencentCloud::Common::AbstractModel
        # @param AuthCode: 腾讯电子签小程序跳转客户企业小程序时携带的授权查看码，AuthCode由腾讯电子签小程序生成。
        # @type AuthCode: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :AuthCode, :Operator, :Agent

        def initialize(authcode=nil, operator=nil, agent=nil)
          @AuthCode = authcode
          @Operator = operator
          @Agent = agent
        end

        def deserialize(params)
          @AuthCode = params['AuthCode']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeThirdPartyAuthCode返回参数结构体
      class DescribeThirdPartyAuthCodeResponse < TencentCloud::Common::AbstractModel
        # @param VerifyStatus: AuthCode 中对应个人用户是否实名
        # <ul>
        # <li> **VERIFIED** : 此个人已实名</li>
        # <li> **UNVERIFIED**: 此个人未实名</li></ul>
        # @type VerifyStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VerifyStatus, :RequestId

        def initialize(verifystatus=nil, requestid=nil)
          @VerifyStatus = verifystatus
          @RequestId = requestid
        end

        def deserialize(params)
          @VerifyStatus = params['VerifyStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserAutoSignStatus请求参数结构体
      class DescribeUserAutoSignStatusRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 要查询状态的用户信息, 包括名字,身份证等
        # @type UserInfo: :class:`Tencentcloud::Ess.v20201111.models.UserThreeFactor`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :SceneKey, :UserInfo, :Agent

        def initialize(operator=nil, scenekey=nil, userinfo=nil, agent=nil)
          @Operator = operator
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeUserAutoSignStatus返回参数结构体
      class DescribeUserAutoSignStatusResponse < TencentCloud::Common::AbstractModel
        # @param IsOpen: 查询用户是否已开通自动签
        # @type IsOpen: Boolean
        # @param LicenseFrom: 自动签许可生效时间。当且仅当已通过许可开通自动签时有值。

        # 值为unix时间戳,单位为秒。
        # @type LicenseFrom: Integer
        # @param LicenseTo: 自动签许可到期时间。当且仅当已通过许可开通自动签时有值。

        # 值为unix时间戳,单位为秒。
        # @type LicenseTo: Integer
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。

        # <ul><li>**0**: 使用个人自动签账号许可进行开通，个人自动签账号许可有效期1年，注: `不可解绑释放更换他人`</li></ul>
        # @type LicenseType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsOpen, :LicenseFrom, :LicenseTo, :LicenseType, :RequestId

        def initialize(isopen=nil, licensefrom=nil, licenseto=nil, licensetype=nil, requestid=nil)
          @IsOpen = isopen
          @LicenseFrom = licensefrom
          @LicenseTo = licenseto
          @LicenseType = licensetype
          @RequestId = requestid
        end

        def deserialize(params)
          @IsOpen = params['IsOpen']
          @LicenseFrom = params['LicenseFrom']
          @LicenseTo = params['LicenseTo']
          @LicenseType = params['LicenseType']
          @RequestId = params['RequestId']
        end
      end

      # DisableUserAutoSign请求参数结构体
      class DisableUserAutoSignRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 需要关闭自动签的个人的信息，如姓名，证件信息等。
        # @type UserInfo: :class:`Tencentcloud::Ess.v20201111.models.UserThreeFactor`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :SceneKey, :UserInfo, :Agent

        def initialize(operator=nil, scenekey=nil, userinfo=nil, agent=nil)
          @Operator = operator
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DisableUserAutoSign返回参数结构体
      class DisableUserAutoSignResponse < TencentCloud::Common::AbstractModel
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

      # 个性化参数
      class EmbedUrlOption < TencentCloud::Common::AbstractModel
        # @param ShowFlowDetailComponent: 合同详情预览，允许展示控件信息
        # <br/>true：允许在合同详情页展示控件
        # <br/>false：不允许在合同详情页展示控件
        # <br/>默认false，合同详情页不展示控件
        # @type ShowFlowDetailComponent: Boolean
        # @param ShowTemplateComponent: 模板预览，允许展示模板控件信息
        # <br/>true：允许在模板预览页展示控件
        # <br/>false：不允许在模板预览页展示控件
        # <br/>默认false，模板预览页不展示控件
        # @type ShowTemplateComponent: Boolean

        attr_accessor :ShowFlowDetailComponent, :ShowTemplateComponent

        def initialize(showflowdetailcomponent=nil, showtemplatecomponent=nil)
          @ShowFlowDetailComponent = showflowdetailcomponent
          @ShowTemplateComponent = showtemplatecomponent
        end

        def deserialize(params)
          @ShowFlowDetailComponent = params['ShowFlowDetailComponent']
          @ShowTemplateComponent = params['ShowTemplateComponent']
        end
      end

      # 扩展服务开通和授权的详细信息
      class ExtendAuthInfo < TencentCloud::Common::AbstractModel
        # @param Type: 扩展服务的类型，可能是以下值：
        # <ul><li>OPEN_SERVER_SIGN：企业静默签署</li>
        # <li>OVERSEA_SIGN：企业与港澳台居民签署合同</li>
        # <li>MOBILE_CHECK_APPROVER：使用手机号验证签署方身份</li>
        # <li>PAGING_SEAL：骑缝章</li>
        # <li>BATCH_SIGN：批量签署</li></ul>
        # @type Type: String
        # @param Name: 扩展服务的名称
        # @type Name: String
        # @param Status: 扩展服务的开通状态：
        # ENABLE：开通
        # DISABLE：未开通
        # @type Status: String
        # @param OperatorUserId: 操作扩展服务的操作人UserId，员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUserId: String
        # @param OperateOn: 扩展服务的操作时间，格式为Unix标准时间戳（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateOn: Integer
        # @param HasAuthUserList: 该扩展服务若可以授权，此参数对应授权人员的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasAuthUserList: Array

        attr_accessor :Type, :Name, :Status, :OperatorUserId, :OperateOn, :HasAuthUserList

        def initialize(type=nil, name=nil, status=nil, operatoruserid=nil, operateon=nil, hasauthuserlist=nil)
          @Type = type
          @Name = name
          @Status = status
          @OperatorUserId = operatoruserid
          @OperateOn = operateon
          @HasAuthUserList = hasauthuserlist
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @Status = params['Status']
          @OperatorUserId = params['OperatorUserId']
          @OperateOn = params['OperateOn']
          unless params['HasAuthUserList'].nil?
            @HasAuthUserList = []
            params['HasAuthUserList'].each do |i|
              hasauthuser_tmp = HasAuthUser.new
              hasauthuser_tmp.deserialize(i)
              @HasAuthUserList << hasauthuser_tmp
            end
          end
        end
      end

      # 绑定角色失败信息
      class FailedCreateRoleData < TencentCloud::Common::AbstractModel
        # @param UserId: 用户userId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RoleIds: 角色id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleIds: Array

        attr_accessor :UserId, :RoleIds

        def initialize(userid=nil, roleids=nil)
          @UserId = userid
          @RoleIds = roleids
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RoleIds = params['RoleIds']
        end
      end

      # 创建员工的失败数据
      class FailedCreateStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 员工名
        # @type DisplayName: String
        # @param Mobile: 员工手机号
        # @type Mobile: String
        # @param WeworkOpenId: 传入的企微账号id
        # @type WeworkOpenId: String
        # @param Reason: 失败原因
        # @type Reason: String

        attr_accessor :DisplayName, :Mobile, :WeworkOpenId, :Reason

        def initialize(displayname=nil, mobile=nil, weworkopenid=nil, reason=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @WeworkOpenId = weworkopenid
          @Reason = reason
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @WeworkOpenId = params['WeworkOpenId']
          @Reason = params['Reason']
        end
      end

      # 删除员工失败数据
      class FailedDeleteStaffData < TencentCloud::Common::AbstractModel
        # @param UserId: 员工在电子签的userId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param OpenId: 员工在第三方平台的openId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param Reason: 失败原因
        # @type Reason: String

        attr_accessor :UserId, :OpenId, :Reason

        def initialize(userid=nil, openid=nil, reason=nil)
          @UserId = userid
          @OpenId = openid
          @Reason = reason
        end

        def deserialize(params)
          @UserId = params['UserId']
          @OpenId = params['OpenId']
          @Reason = params['Reason']
        end
      end

      # 更新员工信息失败返回的数据信息
      class FailedUpdateStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 用户传入的名称
        # @type DisplayName: String
        # @param Mobile: 用户传入的手机号，明文展示
        # @type Mobile: String
        # @param Reason: 失败原因
        # @type Reason: String
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # @type UserId: String
        # @param OpenId: 员工在第三方平台的openId
        # @type OpenId: String

        attr_accessor :DisplayName, :Mobile, :Reason, :UserId, :OpenId

        def initialize(displayname=nil, mobile=nil, reason=nil, userid=nil, openid=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @Reason = reason
          @UserId = userid
          @OpenId = openid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @Reason = params['Reason']
          @UserId = params['UserId']
          @OpenId = params['OpenId']
        end
      end

      # 模板中文件的信息结构
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 文件ID
        # @type FileId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小，单位为Byte
        # @type FileSize: Integer
        # @param CreatedOn: 文件上传时间，格式为Unix标准时间戳（秒）
        # @type CreatedOn: Integer

        attr_accessor :FileId, :FileName, :FileSize, :CreatedOn

        def initialize(fileid=nil, filename=nil, filesize=nil, createdon=nil)
          @FileId = fileid
          @FileName = filename
          @FileSize = filesize
          @CreatedOn = createdon
        end

        def deserialize(params)
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @CreatedOn = params['CreatedOn']
        end
      end

      # 下载文件的URL信息
      class FileUrl < TencentCloud::Common::AbstractModel
        # @param Url: 下载文件的URL，有效期为输入的UrlTtl，默认5分钟
        # @type Url: String
        # @param Option: 下载文件的附加信息。如果是pdf文件，会返回pdf文件每页的有效高宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Option: String

        attr_accessor :Url, :Option

        def initialize(url=nil, option=nil)
          @Url = url
          @Option = option
        end

        def deserialize(params)
          @Url = params['Url']
          @Option = params['Option']
        end
      end

      # 补充签署人信息
      # - RecipientId 必须指定
      # -  通过企业微信自定义账号ID补充签署人时，ApproverSource 和 CustomUserId 必填，ApproverSource取值：WEWORKAPP
      # - 通过二要素（姓名/手机号）补充签署人时，ApproverName 和 ApproverMobile 必填，ApproverSource设置为空
      class FillApproverInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署方经办人在模板中配置的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。
        # 模板发起合同时，该参数为必填项。
        # 文件发起合同是，该参数无需传值。
        # 如果开发者后序用合同模板发起合同，建议保存此值，在用合同模板发起合同中需此值绑定对应的签署经办人 。
        # @type RecipientId: String
        # @param ApproverSource: 签署人来源
        # WEWORKAPP: 企业微信
        # <br/>仅【企微或签】时指定WEWORKAPP
        # @type ApproverSource: String
        # @param CustomUserId: 企业微信UserId
        # <br/>当ApproverSource为WEWORKAPP的企微或签场景下，必须指企业自有应用获取企业微信的UserId
        # @type CustomUserId: String
        # @param ApproverName: 补充企业签署人员工姓名
        # @type ApproverName: String
        # @param ApproverMobile: 补充企业签署人员工手机号
        # @type ApproverMobile: String
        # @param OrganizationName: 补充企业动态签署人时，需要指定对应企业名称
        # @type OrganizationName: String

        attr_accessor :RecipientId, :ApproverSource, :CustomUserId, :ApproverName, :ApproverMobile, :OrganizationName

        def initialize(recipientid=nil, approversource=nil, customuserid=nil, approvername=nil, approvermobile=nil, organizationname=nil)
          @RecipientId = recipientid
          @ApproverSource = approversource
          @CustomUserId = customuserid
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @OrganizationName = organizationname
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @ApproverSource = params['ApproverSource']
          @CustomUserId = params['CustomUserId']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @OrganizationName = params['OrganizationName']
        end
      end

      # 批量补充签署人时，补充失败的报错说明
      class FillError < TencentCloud::Common::AbstractModel
        # @param RecipientId: 为签署方经办人在签署合同中的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。与入参中补充的签署人角色ID对应，批量补充部分失败返回对应的错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientId: String
        # @param ErrMessage: 补充失败错误说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String

        attr_accessor :RecipientId, :ErrMessage

        def initialize(recipientid=nil, errmessage=nil)
          @RecipientId = recipientid
          @ErrMessage = errmessage
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @ErrMessage = params['ErrMessage']
        end
      end

      # 文档内的填充控件返回结构体，返回控件的基本信息和填写内容值
      class FilledComponent < TencentCloud::Common::AbstractModel
        # @param ComponentId: 控件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentId: String
        # @param ComponentName: 控件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentName: String
        # @param ComponentFillStatus: 控件填写状态；0-未填写；1-已填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentFillStatus: String
        # @param ComponentValue: 控件填写内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentValue: String
        # @param ComponentRecipientId: 控件所属参与方Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentRecipientId: String
        # @param ImageUrl: 图片填充控件下载链接，如果是图片填充控件时，这里返回图片的下载链接。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String

        attr_accessor :ComponentId, :ComponentName, :ComponentFillStatus, :ComponentValue, :ComponentRecipientId, :ImageUrl

        def initialize(componentid=nil, componentname=nil, componentfillstatus=nil, componentvalue=nil, componentrecipientid=nil, imageurl=nil)
          @ComponentId = componentid
          @ComponentName = componentname
          @ComponentFillStatus = componentfillstatus
          @ComponentValue = componentvalue
          @ComponentRecipientId = componentrecipientid
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
          @ComponentFillStatus = params['ComponentFillStatus']
          @ComponentValue = params['ComponentValue']
          @ComponentRecipientId = params['ComponentRecipientId']
          @ImageUrl = params['ImageUrl']
        end
      end

      # 查询过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Key: 查询过滤条件的Key
        # @type Key: String
        # @param Values: 查询过滤条件的Value列表
        # @type Values: Array

        attr_accessor :Key, :Values

        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 签署人详情信息
      class FlowApproverDetail < TencentCloud::Common::AbstractModel
        # @param ApproveMessage: 签署时的相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMessage: String
        # @param ApproveName: 签署方姓名
        # @type ApproveName: String
        # @param ApproveStatus: 签署方的签署状态
        # 0：还没有发起
        # 1：流程中 没有开始处理
        # 2：待签署
        # 3：已签署
        # 4：已拒绝
        # 5：已过期
        # 6：已撤销
        # 7：还没有预发起
        # 8：待填写
        # 9：因为各种原因而终止
        # 10：填写完成
        # 15：已解除
        # 19：转他人处理
        # @type ApproveStatus: Integer
        # @param ReceiptId: 模板配置中的参与方ID,与控件绑定
        # @type ReceiptId: String
        # @param CustomUserId: 客户自定义的用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomUserId: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param SignOrder: 签署顺序，如果是有序签署，签署顺序从小到大
        # @type SignOrder: Integer
        # @param ApproveTime: 签署人签署时间，时间戳，单位秒
        # @type ApproveTime: Integer
        # @param ApproveType: 签署方类型，ORGANIZATION-企业员工，PERSON-个人，ENTERPRISESERVER-企业静默签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveType: String
        # @param ApproverSource: 签署方侧用户来源，如WEWORKAPP-企业微信等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverSource: String
        # @param CustomApproverTag: 客户自定义签署方标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomApproverTag: String
        # @param OrganizationId: 签署方企业Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationId: String
        # @param OrganizationName: 签署方企业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String
        # @param SignId: 签署参与人在本流程中的编号ID（每个流程不同），可用此ID来定位签署参与人在本流程的签署节点，也可用于后续创建签署链接等操作。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignId: String
        # @param ApproverRoleName: 自定义签署人角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverRoleName: String

        attr_accessor :ApproveMessage, :ApproveName, :ApproveStatus, :ReceiptId, :CustomUserId, :Mobile, :SignOrder, :ApproveTime, :ApproveType, :ApproverSource, :CustomApproverTag, :OrganizationId, :OrganizationName, :SignId, :ApproverRoleName

        def initialize(approvemessage=nil, approvename=nil, approvestatus=nil, receiptid=nil, customuserid=nil, mobile=nil, signorder=nil, approvetime=nil, approvetype=nil, approversource=nil, customapprovertag=nil, organizationid=nil, organizationname=nil, signid=nil, approverrolename=nil)
          @ApproveMessage = approvemessage
          @ApproveName = approvename
          @ApproveStatus = approvestatus
          @ReceiptId = receiptid
          @CustomUserId = customuserid
          @Mobile = mobile
          @SignOrder = signorder
          @ApproveTime = approvetime
          @ApproveType = approvetype
          @ApproverSource = approversource
          @CustomApproverTag = customapprovertag
          @OrganizationId = organizationid
          @OrganizationName = organizationname
          @SignId = signid
          @ApproverRoleName = approverrolename
        end

        def deserialize(params)
          @ApproveMessage = params['ApproveMessage']
          @ApproveName = params['ApproveName']
          @ApproveStatus = params['ApproveStatus']
          @ReceiptId = params['ReceiptId']
          @CustomUserId = params['CustomUserId']
          @Mobile = params['Mobile']
          @SignOrder = params['SignOrder']
          @ApproveTime = params['ApproveTime']
          @ApproveType = params['ApproveType']
          @ApproverSource = params['ApproverSource']
          @CustomApproverTag = params['CustomApproverTag']
          @OrganizationId = params['OrganizationId']
          @OrganizationName = params['OrganizationName']
          @SignId = params['SignId']
          @ApproverRoleName = params['ApproverRoleName']
        end
      end

      # 签署链接信息。
      class FlowApproverUrlInfo < TencentCloud::Common::AbstractModel
        # @param SignUrl: 签署短链接。</br>
        # 注意:
        # - 该链接有效期为**30分钟**，同时需要注意保密，不要外泄给无关用户。
        # - 该链接不支持小程序嵌入，仅支持**移动端浏览器**打开。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignUrl: String
        # @param ApproverType: 签署人类型。
        # - **1**: 个人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverType: Integer
        # @param ApproverName: 签署人姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverName: String
        # @param ApproverMobile: 签署人手机号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverMobile: String
        # @param LongUrl: 签署长链接。</br>
        # 注意:
        # - 该链接有效期为**30分钟**，同时需要注意保密，不要外泄给无关用户。
        # - 该链接不支持小程序嵌入，仅支持**移动端浏览器**打开。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongUrl: String

        attr_accessor :SignUrl, :ApproverType, :ApproverName, :ApproverMobile, :LongUrl

        def initialize(signurl=nil, approvertype=nil, approvername=nil, approvermobile=nil, longurl=nil)
          @SignUrl = signurl
          @ApproverType = approvertype
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @LongUrl = longurl
        end

        def deserialize(params)
          @SignUrl = params['SignUrl']
          @ApproverType = params['ApproverType']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @LongUrl = params['LongUrl']
        end
      end

      # 合同流程的基础信息
      class FlowBrief < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param FlowName: 合同流程的名称。
        # @type FlowName: String
        # @param FlowDescription: 合同流程描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowDescription: String
        # @param FlowType: 合同流程的类别分类（如销售合同/入职合同等）。
        # @type FlowType: String
        # @param FlowStatus: 合同流程当前的签署状态, 会存在下列的状态值
        # <ul><li> **0** : 未开启流程(合同中不存在填写环节)</li>
        # <li> **1** : 待签署</li>
        # <li> **2** : 部分签署</li>
        # <li> **3** : 已拒签</li>
        # <li> **4** : 已签署</li>
        # <li> **5** : 已过期</li>
        # <li> **6** : 已撤销</li>
        # <li> **7** : 未开启流程(合同中存在填写环节)</li>
        # <li> **8** : 等待填写</li>
        # <li> **9** : 部分填写</li>
        # <li> **10** : 已拒填</li>
        # <li> **21** : 已解除</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowStatus: Integer
        # @param CreatedOn: 合同流程创建时间，格式为Unix标准时间戳（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: Integer
        # @param FlowMessage: 当合同流程状态为已拒签（即 FlowStatus=3）或已撤销（即 FlowStatus=6）时，此字段 FlowMessage 为拒签或撤销原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMessage: String
        # @param Creator:  合同流程发起方的员工编号, 即员工在腾讯电子签平台的唯一身份标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deadline: Integer

        attr_accessor :FlowId, :FlowName, :FlowDescription, :FlowType, :FlowStatus, :CreatedOn, :FlowMessage, :Creator, :Deadline

        def initialize(flowid=nil, flowname=nil, flowdescription=nil, flowtype=nil, flowstatus=nil, createdon=nil, flowmessage=nil, creator=nil, deadline=nil)
          @FlowId = flowid
          @FlowName = flowname
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @CreatedOn = createdon
          @FlowMessage = flowmessage
          @Creator = creator
          @Deadline = deadline
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @FlowName = params['FlowName']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @FlowStatus = params['FlowStatus']
          @CreatedOn = params['CreatedOn']
          @FlowMessage = params['FlowMessage']
          @Creator = params['Creator']
          @Deadline = params['Deadline']
        end
      end

      # 创建流程的签署方信息
      class FlowCreateApprover < TencentCloud::Common::AbstractModel
        # @param ApproverType: 在指定签署方时，可选择企业B端或个人C端等不同的参与者类型，可选类型如下:
        # 0：企业
        # 1：个人
        # 3：企业静默签署
        # 注：类型为3（企业静默签署）时，此接口会默认完成该签署方的签署。静默签署仅进行盖章操作，不能自动签名。
        # 7: 个人自动签署，适用于个人自动签场景。
        # 注: 个人自动签场景为白名单功能，使用前请联系对接的客户经理沟通。
        # @type ApproverType: Integer
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。

        # 注: `当approverType=0(企业签署方) 或 approverType=3(企业静默签署)时，必须指定`

        # @type OrganizationName: String
        # @param ApproverName: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。

        # 在未指定签署人电子签UserId情况下，为必填参数
        # @type ApproverName: String
        # @param ApproverMobile: 签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 请确认手机号所有方为此合同签署方。

        # 在未指定签署人电子签UserId情况下，为必填参数
        # @type ApproverMobile: String
        # @param ApproverIdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type ApproverIdCardNumber: String
        # @param RecipientId: 签署方经办人在模板中配置的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。
        # 模板发起合同时，该参数为必填项。
        # 文件发起合同时，该参数无需传值。
        # 如果开发者后续用合同模板发起合同，建议保存此值，在用合同模板发起合同中需此值绑定对应的签署经办人 。
        # @type RecipientId: String
        # @param VerifyChannel: 签署意愿确认渠道，默认为WEIXINAPP:人脸识别

        # 注: 将要废弃, 用ApproverSignTypes签署人签署合同时的认证方式代替, 新客户可请用ApproverSignTypes来设置
        # @type VerifyChannel: Array
        # @param NotifyType: 通知签署方经办人的方式,  有以下途径:
        # <ul><li>  **sms**  :  (默认)短信</li>
        # <li>   **none**   : 不通知</li></ul>

        # 注: `发起方也是签署方时不给此签署方发送短信`
        # @type NotifyType: String
        # @param IsFullText: 合同强制需要阅读全文，无需传此参数
        # @type IsFullText: Boolean
        # @param PreReadTime: 合同的强制预览时间：3~300s，未指定则按合同页数计算
        # @type PreReadTime: Integer
        # @param UserId: 签署人userId，仅支持本企业的员工userid， 可在控制台组织管理处获得

        # 注: `若传此字段 则以userid的信息为主，会覆盖传递过来的签署人基本信息， 包括姓名，手机号，证件类型等信息`
        # @type UserId: String
        # @param Required: 字段已经废弃，当前只支持true，默认为true
        # @type Required: Boolean
        # @param ApproverSource: 在企微场景下使用，需设置参数为**WEWORKAPP**，以表明合同来源于企微。
        # @type ApproverSource: String
        # @param CustomApproverTag: 在企业微信场景下，表明该合同流程为或签，其最大长度为64位字符串。
        # 所有参与或签的人员均需具备该标识。
        # 注意，在合同中，不同的或签参与人必须保证其CustomApproverTag唯一。
        # 如果或签签署人为本方企业微信参与人，则需要指定ApproverSource参数为WEWORKAPP。
        # @type CustomApproverTag: String
        # @param RegisterInfo: 已经废弃, 快速注册相关信息
        # @type RegisterInfo: :class:`Tencentcloud::Ess.v20201111.models.RegisterInfo`
        # @param ApproverOption: 签署人个性化能力值，如是否可以转发他人处理、是否可以拒签、是否为动态补充签署人等功能开关。
        # @type ApproverOption: :class:`Tencentcloud::Ess.v20201111.models.ApproverOption`
        # @param JumpUrl: 签署完前端跳转的url，暂未使用
        # @type JumpUrl: String
        # @param SignId: 签署ID
        # - 发起流程时系统自动补充
        # - 创建签署链接时，可以通过查询详情接口获得签署人的SignId，然后可传入此值为该签署人创建签署链接，无需再传姓名、手机号、证件号等其他信息
        # @type SignId: String
        # @param ApproverNeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li>**false**：（默认）不需要审批，直接签署。</li>
        # <li>**true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li>如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li>如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>

        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type ApproverNeedSignReview: Boolean
        # @param SignComponents: 签署人签署控件， 此参数仅针对文件发起（CreateFlowByFiles）生效

        # 合同中的签署控件列表，列表中可支持下列多种签署控件,控件的详细定义参考开发者中心的Component结构体
        # <ul><li> 个人签名/印章</li>
        # <li> 企业印章</li>
        # <li> 骑缝章等签署控件</li></ul>

        # `此参数仅针对文件发起设置生效,模板发起合同签署流程, 请以模板配置为主`
        # @type SignComponents: Array
        # @param Components: 签署人填写控件 此参数仅针对文件发起（CreateFlowByFiles）生效

        # 合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # <ul><li>单行文本控件</li>
        # <li>多行文本控件</li>
        # <li>勾选框控件</li>
        # <li>数字控件</li>
        # <li>图片控件</li>
        # <li>动态表格等填写控件</li></ul>

        # `此参数仅针对文件发起设置生效,模板发起合同签署流程, 请以模板配置为主`
        # @type Components: Array
        # @param ComponentLimitType: 签署方控件类型为 SIGN_SIGNATURE时，可以指定签署方签名方式
        # 	HANDWRITE – 手写签名
        # 	OCR_ESIGN -- AI智能识别手写签名
        # 	ESIGN -- 个人印章类型
        # 	SYSTEM_ESIGN -- 系统签名（该类型可以在用户签署时根据用户姓名一键生成一个签名来进行签署）
        # @type ComponentLimitType: Array
        # @param ApproverVerifyTypes: 指定个人签署方查看合同的校验方式,可以传值如下:
        # <ul><li>  **1**   : （默认）人脸识别,人脸识别后才能合同内容</li>
        # <li>  **2**  : 手机号验证, 用户手机号和参与方手机号(ApproverMobile)相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        # </li></ul>
        # 注:
        # <ul><li>如果合同流程设置ApproverVerifyType查看合同的校验方式,    则忽略此签署人的查看合同的校验方式</li>
        # <li>此字段可传多个校验方式</li></ul>

        # `此参数仅针对文件发起设置生效,模板发起合同签署流程, 请以模板配置为主`

        # .
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 您可以指定签署方签署合同的认证校验方式，可传递以下值：
        # <ul><li>**1**：人脸认证，需进行人脸识别成功后才能签署合同；</li>
        # <li>**2**：签署密码，需输入与用户在腾讯电子签设置的密码一致才能校验成功进行合同签署；</li>
        # <li>**3**：运营商三要素，需到运营商处比对手机号实名信息（名字、手机号、证件号）校验一致才能成功进行合同签署。</li></ul>
        # 注：
        # <ul><li>默认情况下，认证校验方式为人脸认证和签署密码两种形式；</li>
        # <li>您可以传递多种值，表示可用多种认证校验方式。</li></ul>

        # 注:
        # `此参数仅针对文件发起设置生效,模板发起合同签署流程, 请以模板配置为主`
        # @type ApproverSignTypes: Array

        attr_accessor :ApproverType, :OrganizationName, :ApproverName, :ApproverMobile, :ApproverIdCardType, :ApproverIdCardNumber, :RecipientId, :VerifyChannel, :NotifyType, :IsFullText, :PreReadTime, :UserId, :Required, :ApproverSource, :CustomApproverTag, :RegisterInfo, :ApproverOption, :JumpUrl, :SignId, :ApproverNeedSignReview, :SignComponents, :Components, :ComponentLimitType, :ApproverVerifyTypes, :ApproverSignTypes
        extend Gem::Deprecate
        deprecate :JumpUrl, :none, 2023, 12
        deprecate :JumpUrl=, :none, 2023, 12

        def initialize(approvertype=nil, organizationname=nil, approvername=nil, approvermobile=nil, approveridcardtype=nil, approveridcardnumber=nil, recipientid=nil, verifychannel=nil, notifytype=nil, isfulltext=nil, prereadtime=nil, userid=nil, required=nil, approversource=nil, customapprovertag=nil, registerinfo=nil, approveroption=nil, jumpurl=nil, signid=nil, approverneedsignreview=nil, signcomponents=nil, components=nil, componentlimittype=nil, approververifytypes=nil, approversigntypes=nil)
          @ApproverType = approvertype
          @OrganizationName = organizationname
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @ApproverIdCardType = approveridcardtype
          @ApproverIdCardNumber = approveridcardnumber
          @RecipientId = recipientid
          @VerifyChannel = verifychannel
          @NotifyType = notifytype
          @IsFullText = isfulltext
          @PreReadTime = prereadtime
          @UserId = userid
          @Required = required
          @ApproverSource = approversource
          @CustomApproverTag = customapprovertag
          @RegisterInfo = registerinfo
          @ApproverOption = approveroption
          @JumpUrl = jumpurl
          @SignId = signid
          @ApproverNeedSignReview = approverneedsignreview
          @SignComponents = signcomponents
          @Components = components
          @ComponentLimitType = componentlimittype
          @ApproverVerifyTypes = approververifytypes
          @ApproverSignTypes = approversigntypes
        end

        def deserialize(params)
          @ApproverType = params['ApproverType']
          @OrganizationName = params['OrganizationName']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @ApproverIdCardType = params['ApproverIdCardType']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
          @RecipientId = params['RecipientId']
          @VerifyChannel = params['VerifyChannel']
          @NotifyType = params['NotifyType']
          @IsFullText = params['IsFullText']
          @PreReadTime = params['PreReadTime']
          @UserId = params['UserId']
          @Required = params['Required']
          @ApproverSource = params['ApproverSource']
          @CustomApproverTag = params['CustomApproverTag']
          unless params['RegisterInfo'].nil?
            @RegisterInfo = RegisterInfo.new
            @RegisterInfo.deserialize(params['RegisterInfo'])
          end
          unless params['ApproverOption'].nil?
            @ApproverOption = ApproverOption.new
            @ApproverOption.deserialize(params['ApproverOption'])
          end
          @JumpUrl = params['JumpUrl']
          @SignId = params['SignId']
          @ApproverNeedSignReview = params['ApproverNeedSignReview']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @ComponentLimitType = params['ComponentLimitType']
          @ApproverVerifyTypes = params['ApproverVerifyTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
        end
      end

      # 此结构体(FlowDetailInfo)描述的是合同(流程)的详细信息
      class FlowDetailInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param FlowType: 合同流程的类别分类（如销售合同/入职合同等）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowType: String
        # @param FlowStatus: 合同流程当前的签署状态, 会存在下列的状态值 <ul><li> **0** : 未开启流程(合同中不存在填写环节)</li> <li> **1** : 待签署</li> <li> **2** : 部分签署</li> <li> **3** : 已拒签</li> <li> **4** : 已签署</li> <li> **5** : 已过期</li> <li> **6** : 已撤销</li> <li> **7** : 未开启流程(合同中存在填写环节)</li> <li> **8** : 等待填写</li> <li> **9** : 部分填写</li> <li> **10** : 已拒填</li> <li> **21** : 已解除</li></ul>
        # @type FlowStatus: Integer
        # @param FlowMessage: 当合同流程状态为已拒签（即 FlowStatus=3）或已撤销（即 FlowStatus=6）时，此字段 FlowMessage 为拒签或撤销原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMessage: String
        # @param FlowDescription: 合同流程描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowDescription: String
        # @param CreatedOn: 合同流程的创建时间戳，格式为Unix标准时间戳（秒）。
        # @type CreatedOn: Integer
        # @param FlowApproverInfos: 合同流程的签署方数组
        # @type FlowApproverInfos: Array
        # @param CcInfos: 合同流程的关注方信息数组
        # @type CcInfos: Array
        # @param Creator: 合同流程发起方的员工编号, 即员工在腾讯电子签平台的唯一身份标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String

        attr_accessor :FlowId, :FlowName, :FlowType, :FlowStatus, :FlowMessage, :FlowDescription, :CreatedOn, :FlowApproverInfos, :CcInfos, :Creator

        def initialize(flowid=nil, flowname=nil, flowtype=nil, flowstatus=nil, flowmessage=nil, flowdescription=nil, createdon=nil, flowapproverinfos=nil, ccinfos=nil, creator=nil)
          @FlowId = flowid
          @FlowName = flowname
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @FlowMessage = flowmessage
          @FlowDescription = flowdescription
          @CreatedOn = createdon
          @FlowApproverInfos = flowapproverinfos
          @CcInfos = ccinfos
          @Creator = creator
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @FlowName = params['FlowName']
          @FlowType = params['FlowType']
          @FlowStatus = params['FlowStatus']
          @FlowMessage = params['FlowMessage']
          @FlowDescription = params['FlowDescription']
          @CreatedOn = params['CreatedOn']
          unless params['FlowApproverInfos'].nil?
            @FlowApproverInfos = []
            params['FlowApproverInfos'].each do |i|
              flowapproverdetail_tmp = FlowApproverDetail.new
              flowapproverdetail_tmp.deserialize(i)
              @FlowApproverInfos << flowapproverdetail_tmp
            end
          end
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              flowapproverdetail_tmp = FlowApproverDetail.new
              flowapproverdetail_tmp.deserialize(i)
              @CcInfos << flowapproverdetail_tmp
            end
          end
          @Creator = params['Creator']
        end
      end

      # 此结构体(FlowGroupInfo)描述的是合同组(流程组)的单个合同(流程)信息
      class FlowGroupInfo < TencentCloud::Common::AbstractModel
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # 该名称还将用于合同签署完成后的下载文件名。
        # @type FlowName: String
        # @param Approvers: 签署流程参与者信息，最大限制50方
        # 注意 approver中的顺序需要和模板中的顺序保持一致， 否则会导致模板中配置的信息无效。
        # @type Approvers: Array
        # @param FileIds: 文件资源ID，通过多文件上传[UploadFiles](https://qian.tencent.com/developers/companyApis/templatesAndFiles/UploadFiles)接口获得，为32位字符串。
        # 建议开发者保存此资源ID，后续创建合同或创建合同流程需此资源ID。
        # @type FileIds: Array
        # @param TemplateId: 合同模板ID，为32位字符串。
        # 建议开发者保存此模板ID，后续用此模板发起合同流程需要此参数。
        # 可登录腾讯电子签控制台，在 "模板"->"模板中心"->"列表展示设置"选中模板 ID 中查看某个模板的TemplateId(在页面中展示为模板ID)。
        # @type TemplateId: String
        # @param FlowType: 签署流程的类型(如销售合同/入职合同等)，最大长度200个字符
        # 示例值：劳务合同
        # @type FlowType: String
        # @param FlowDescription: 签署流程描述,最大长度1000个字符
        # @type FlowDescription: String
        # @param Deadline: 签署流程的签署截止时间。

        # 值为unix时间戳,精确到秒,不传默认为当前时间一年后
        # 示例值：1604912664
        # @type Deadline: Integer
        # @param CallbackUrl: 合同（流程）的回调地址
        # @type CallbackUrl: String
        # @param UserData: 调用方自定义的个性化字段(可自定义此字段的值)，并以base64方式编码，支持的最大数据大小为 20480长度。
        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。
        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type UserData: String
        # @param Unordered: 发送类型：
        # true：无序签
        # false：有序签
        # 注：默认为false（有序签），请和模板中的配置保持一致
        # 示例值：true
        # @type Unordered: Boolean
        # @param Components: 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # <ul><li>单行文本控件</li>
        # <li>多行文本控件</li>
        # <li>勾选框控件</li>
        # <li>数字控件</li>
        # <li>图片控件</li>
        # <li>动态表格等填写控件</li></ul>
        # @type Components: Array
        # @param NeedSignReview: 发起方企业的签署人进行签署操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。
        # 若设置为true，审核结果需通过接口 [CreateFlowSignReview](https://qian.tencent.com/developers/companyApis/operateFlows/CreateFlowSignReview) 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。

        # 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        # 示例值：true
        # @type NeedSignReview: Boolean
        # @param AutoSignScene: 个人自动签场景。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        # 示例值：E_PRESCRIPTION_AUTO_SIGN
        # @type AutoSignScene: String

        attr_accessor :FlowName, :Approvers, :FileIds, :TemplateId, :FlowType, :FlowDescription, :Deadline, :CallbackUrl, :UserData, :Unordered, :Components, :NeedSignReview, :AutoSignScene
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12

        def initialize(flowname=nil, approvers=nil, fileids=nil, templateid=nil, flowtype=nil, flowdescription=nil, deadline=nil, callbackurl=nil, userdata=nil, unordered=nil, components=nil, needsignreview=nil, autosignscene=nil)
          @FlowName = flowname
          @Approvers = approvers
          @FileIds = fileids
          @TemplateId = templateid
          @FlowType = flowtype
          @FlowDescription = flowdescription
          @Deadline = deadline
          @CallbackUrl = callbackurl
          @UserData = userdata
          @Unordered = unordered
          @Components = components
          @NeedSignReview = needsignreview
          @AutoSignScene = autosignscene
        end

        def deserialize(params)
          @FlowName = params['FlowName']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              approverinfo_tmp = ApproverInfo.new
              approverinfo_tmp.deserialize(i)
              @Approvers << approverinfo_tmp
            end
          end
          @FileIds = params['FileIds']
          @TemplateId = params['TemplateId']
          @FlowType = params['FlowType']
          @FlowDescription = params['FlowDescription']
          @Deadline = params['Deadline']
          @CallbackUrl = params['CallbackUrl']
          @UserData = params['UserData']
          @Unordered = params['Unordered']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @NeedSignReview = params['NeedSignReview']
          @AutoSignScene = params['AutoSignScene']
        end
      end

      # 此结构体(FlowGroupOptions)描述的是合同组的个性化配置，支持控制是否发送短信、未实名个人签署方查看合同组时是否需要实名认证（仅在合同组文件发起配置时生效）
      class FlowGroupOptions < TencentCloud::Common::AbstractModel
        # @param ApproverVerifyType: 签署人校验方式,支持以下类型
        # <ul><li>VerifyCheck : 人脸识别 (默认值)</li>
        # <li>MobileCheck : 手机号验证</li></ul>
        # 参数说明：此参数仅在合同组文件发起有效，可选人脸识别或手机号验证两种方式，若选择后者，未实名个人签署方在签署合同时，无需经过实名认证和意愿确认两次人脸识别，该能力仅适用于个人签署方。
        # @type ApproverVerifyType: String
        # @param SelfOrganizationApproverNotifyType: 发起合同（流程）组本方企业经办人通知方式
        # 签署通知类型，支持以下类型
        # <ul><li>sms : 短信 (默认值)</li><li>none : 不通知</li></ul>
        # @type SelfOrganizationApproverNotifyType: String
        # @param OtherApproverNotifyType: 发起合同（流程）组他方经办人通知方式
        # 签署通知类型，支持以下类型
        # <ul><li>sms : 短信 (默认值)</li><li>none : 不通知</li></ul>
        # @type OtherApproverNotifyType: String

        attr_accessor :ApproverVerifyType, :SelfOrganizationApproverNotifyType, :OtherApproverNotifyType

        def initialize(approververifytype=nil, selforganizationapprovernotifytype=nil, otherapprovernotifytype=nil)
          @ApproverVerifyType = approververifytype
          @SelfOrganizationApproverNotifyType = selforganizationapprovernotifytype
          @OtherApproverNotifyType = otherapprovernotifytype
        end

        def deserialize(params)
          @ApproverVerifyType = params['ApproverVerifyType']
          @SelfOrganizationApproverNotifyType = params['SelfOrganizationApproverNotifyType']
          @OtherApproverNotifyType = params['OtherApproverNotifyType']
        end
      end

      # 电子文档的控件填充信息。按照控件类型进行相应的填充。

      # 当控件的 ComponentType=‘SIGN_SEAL'时，FormField.ComponentValue填入印章id。

      # * 可用于指定自动签模版未设置自动签印章时，可由接口传入自动签印章
      # * 若指定的控件上已设置ComponentValue，那以已经设置的ComponentValue为准

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "sealId（印章id）"
      # }
      # ```

      # 当控件的 ComponentType='TEXT'时，FormField.ComponentValue填入文本内容

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "文本内容"
      # }
      # ```

      # 当控件的 ComponentType='MULTI_LINE_TEXT'时，FormField.ComponentValue填入文本内容，支持自动换行。

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "多行文本内容"
      # }
      # ```

      # 当控件的 ComponentType='CHECK_BOX'时，FormField.ComponentValue填入true或false文本

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "true"
      # }
      # ```

      # 当控件的 ComponentType='FILL_IMAGE'时，FormField.ComponentValue填入图片的资源ID

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "yDwhsxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      # }
      # ```

      # 当控件的 ComponentType='ATTACHMENT'时，FormField.ComponentValue填入附件图片的资源ID列表，以逗号分隔，单个附件控件最多支持6个资源ID；

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "yDwhsxxxxxxxxxxxxxxxxxxxxxxxxxx1,yDwhsxxxxxxxxxxxxxxxxxxxxxxxxxx2,yDwhsxxxxxxxxxxxxxxxxxxxxxxxxxx3"
      # }
      # ```

      # 当控件的 ComponentType='SELECTOR'时，FormField.ComponentValue填入选择的选项内容；

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "选择的内容"
      # }
      # ```

      # 当控件的 ComponentType='DATE'时，FormField.ComponentValue填入日期内容；

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "2023年01月01日"
      # }
      # ```

      # 当控件的 ComponentType='DISTRICT'时，FormField.ComponentValue填入省市区内容；

      # ```
      # FormField输入示例：
      # {
      #     "ComponentId": "componentId1",
      #     "ComponentValue": "广东省深圳市福田区"
      # }
      # ```

      # 【数据表格传参说明】
      # 当控件的 ComponentType='DYNAMIC_TABLE'时，FormField.ComponentValue需要传递json格式的字符串参数，用于确定表头&填充数据表格（支持内容的单元格合并）
      # 输入示例1：

      # ```
      # {
      #     "headers":[
      #         {
      #             "content":"head1"
      #         },
      #         {
      #             "content":"head2"
      #         },
      #         {
      #             "content":"head3"
      #         }
      #     ],
      #     "rowCount":3,
      #     "body":{
      #         "cells":[
      #             {
      #                 "rowStart":1,
      #                 "rowEnd":1,
      #                 "columnStart":1,
      #                 "columnEnd":1,
      #                 "content":"123"
      #             },
      #             {
      #                 "rowStart":2,
      #                 "rowEnd":3,
      #                 "columnStart":1,
      #                 "columnEnd":2,
      #                 "content":"456"
      #             },
      #             {
      #                 "rowStart":3,
      #                 "rowEnd":3,
      #                 "columnStart":3,
      #                 "columnEnd":3,
      #                 "content":"789"
      #             }
      #         ]
      #     }
      # }
      # ```

      # 输入示例2（表格表头宽度比例配置）：

      # ```
      # {
      #     "headers":[
      #         {
      #             "content":"head1",
      #             "widthPercent": 30
      #         },
      #         {
      #             "content":"head2",
      #             "widthPercent": 30
      #         },
      #         {
      #             "content":"head3",
      #             "widthPercent": 40
      #         }
      #     ],
      #     "rowCount":3,
      #     "body":{
      #         "cells":[
      #             {
      #                 "rowStart":1,
      #                 "rowEnd":1,
      #                 "columnStart":1,
      #                 "columnEnd":1,
      #                 "content":"123"
      #             },
      #             {
      #                 "rowStart":2,
      #                 "rowEnd":3,
      #                 "columnStart":1,
      #                 "columnEnd":2,
      #                 "content":"456"
      #             },
      #             {
      #                 "rowStart":3,
      #                 "rowEnd":3,
      #                 "columnStart":3,
      #                 "columnEnd":3,
      #                 "content":"789"
      #             }
      #         ]
      #     }
      # }
      # ```

      # 输入示例3（表格设置字体加粗颜色）：

      # ```
      # {
      #     "headers":[
      #         {
      #             "content":"head1"
      #         },
      #         {
      #             "content":"head2"
      #         },
      #         {
      #             "content":"head3"
      #         }
      #     ],
      #     "rowCount":3,
      #     "body":{
      #         "cells":[
      #             {
      #                 "rowStart":1,
      #                 "rowEnd":1,
      #                 "columnStart":1,
      #                 "columnEnd":1,
      #                 "content":"123",
      #                 "style": "{\"color\": \"#b50000\", \"fontSize\": 12,\"bold\": true,\"align\": \"CENTER\"}"
      #             },
      #             {
      #                 "rowStart":2,
      #                 "rowEnd":3,
      #                 "columnStart":1,
      #                 "columnEnd":2,
      #                 "content":"456",
      #                 "style": "{\"color\": \"#b50000\", \"fontSize\": 12,\"bold\": true,\"align\": \"LEFT\"}"
      #             },
      #             {
      #                 "rowStart":3,
      #                 "rowEnd":3,
      #                 "columnStart":3,
      #                 "columnEnd":3,
      #                 "content":"789",
      #                 "style": "{\"color\": \"#b500bf\", \"fontSize\": 12,\"bold\": false,\"align\": \"RIGHT\"}"
      #             }
      #         ]
      #     }
      # }

      # ```

      # 表格参数说明

      # | 名称                | 类型    | 描述                                              |
      # | ------------------- | ------- | ------------------------------------------------- |
      # | headers             | Array   | 表头：不超过10列，不支持单元格合并，字数不超过100 |
      # | rowCount            | Integer | 表格内容最大行数                                  |
      # | cells.N.rowStart    | Integer | 单元格坐标：行起始index                           |
      # | cells.N.rowEnd      | Integer | 单元格坐标：行结束index                           |
      # | cells.N.columnStart | Integer | 单元格坐标：列起始index                           |
      # | cells.N.columnEnd   | Integer | 单元格坐标：列结束index                           |
      # | cells.N.content     | String  | 单元格内容，字数不超过100                         |
      # | cells.N.style         | String  | 单元格字体风格配置 ，风格配置的json字符串  如： {"font":"黑体","fontSize":12,"color":"FFFFFF","bold":true,"align":"CENTER"}      |

      # 表格参数headers说明
      # widthPercent Integer 表头单元格列占总表头的比例，例如1：30表示 此列占表头的30%，不填写时列宽度平均拆分；例如2：总2列，某一列填写40，剩余列可以为空，按照60计算。；例如3：总3列，某一列填写30，剩余2列可以为空，分别为(100-30)/2=35

      # content String 表头单元格内容，字数不超过100


      # style String 为字体风格设置 风格支持： font : 目前支持 黑体、宋体; fontSize： 6-72; color：000000-FFFFFF  字符串形如：  "FFFFFF"; bold ： 是否加粗， true ： 加粗 false： 不加粗; align: 对其方式， 支持 LEFT / RIGHT / CENTER
      class FormField < TencentCloud::Common::AbstractModel
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # TEXT - 文本内容
        # MULTI_LINE_TEXT - 文本内容
        # CHECK_BOX - true/false
        # FILL_IMAGE、ATTACHMENT - 附件的FileId，需要通过UploadFiles接口上传获取
        # SELECTOR - 选项值
        # DYNAMIC_TABLE - 传入json格式的表格内容，具体见数据结构FlowInfo：https://cloud.tencent.com/document/api/1420/61525#FlowInfo
        # @type ComponentValue: String
        # @param ComponentId: 控件id，和ComponentName选择一项传入即可
        # @type ComponentId: String
        # @param ComponentName: 控件名字，最大长度不超过30字符，和ComponentId选择一项传入即可
        # @type ComponentName: String

        attr_accessor :ComponentValue, :ComponentId, :ComponentName

        def initialize(componentvalue=nil, componentid=nil, componentname=nil)
          @ComponentValue = componentvalue
          @ComponentId = componentid
          @ComponentName = componentname
        end

        def deserialize(params)
          @ComponentValue = params['ComponentValue']
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
        end
      end

      # GetTaskResultApi请求参数结构体
      class GetTaskResultApiRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 转换任务Id，通过接口<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/CreateConvertTaskApi" target="_blank">创建文件转换任务接口</a>或<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/CreateMergeFileTask" target="_blank">创建多文件转换任务接口</a>
        # 得到的转换任务id
        # @type TaskId: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :TaskId, :Operator, :Agent, :Organization
        extend Gem::Deprecate
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

        def initialize(taskid=nil, operator=nil, agent=nil, organization=nil)
          @TaskId = taskid
          @Operator = operator
          @Agent = agent
          @Organization = organization
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
        end
      end

      # GetTaskResultApi返回参数结构体
      class GetTaskResultApiResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param TaskStatus: 任务状态，需要关注的状态
        # <ul><li>**0**  :NeedTranform   - 任务已提交</li>
        # <li>**4**  :Processing     - 文档转换中</li>
        # <li>**8**  :TaskEnd        - 任务处理完成</li>
        # <li>**-2** :DownloadFailed - 下载失败</li>
        # <li>**-6** :ProcessFailed  - 转换失败</li>
        # <li>**-13**:ProcessTimeout - 转换文件超时</li></ul>
        # @type TaskStatus: Integer
        # @param TaskMessage: 状态描述，需要关注的状态
        # <ul><li> **NeedTranform** : 任务已提交</li>
        # <li> **Processing** : 文档转换中</li>
        # <li> **TaskEnd** : 任务处理完成</li>
        # <li> **DownloadFailed** : 下载失败</li>
        # <li> **ProcessFailed** : 转换失败</li>
        # <li> **ProcessTimeout** : 转换文件超时</li></ul>
        # @type TaskMessage: String
        # @param ResourceId: 资源Id，也是FileId，用于文件发起时使用
        # @type ResourceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :TaskMessage, :ResourceId, :RequestId

        def initialize(taskid=nil, taskstatus=nil, taskmessage=nil, resourceid=nil, requestid=nil)
          @TaskId = taskid
          @TaskStatus = taskstatus
          @TaskMessage = taskmessage
          @ResourceId = resourceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskStatus = params['TaskStatus']
          @TaskMessage = params['TaskMessage']
          @ResourceId = params['ResourceId']
          @RequestId = params['RequestId']
        end
      end

      # 成员企业信息
      class GroupOrganization < TencentCloud::Common::AbstractModel
        # @param Name: 成员企业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Alias: 成员企业别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param OrganizationId: 成员企业id，为 32 位字符串，可在电子签PC 控制台，企业设置->企业电子签账号 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationId: String
        # @param UpdateTime: 记录更新时间， unix时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Status: 成员企业加入集团的当前状态
        # <ul><li> **1**：待授权</li>
        # <li> **2**：已授权待激活</li>
        # <li> **3**：拒绝授权</li>
        # <li> **4**：已解除</li>
        # <li> **5**：已加入</li>
        # </ul>

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsMainOrganization: 是否为集团主企业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMainOrganization: Boolean
        # @param IdCardNumber: 企业社会信用代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardNumber: String
        # @param AdminInfo: 企业超管信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminInfo: :class:`Tencentcloud::Ess.v20201111.models.Admin`
        # @param License: 企业许可证Id，此字段暂时不需要关注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type License: String
        # @param LicenseExpireTime: 企业许可证过期时间，unix时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseExpireTime: Integer
        # @param JoinTime: 成员企业加入集团时间，unix时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinTime: Integer
        # @param FlowEngineEnable: 是否使用自建审批流引擎（即不是企微审批流引擎）
        # <ul><li> **true**：是</li>
        # <li> **false**：否</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowEngineEnable: Boolean

        attr_accessor :Name, :Alias, :OrganizationId, :UpdateTime, :Status, :IsMainOrganization, :IdCardNumber, :AdminInfo, :License, :LicenseExpireTime, :JoinTime, :FlowEngineEnable

        def initialize(name=nil, _alias=nil, organizationid=nil, updatetime=nil, status=nil, ismainorganization=nil, idcardnumber=nil, admininfo=nil, license=nil, licenseexpiretime=nil, jointime=nil, flowengineenable=nil)
          @Name = name
          @Alias = _alias
          @OrganizationId = organizationid
          @UpdateTime = updatetime
          @Status = status
          @IsMainOrganization = ismainorganization
          @IdCardNumber = idcardnumber
          @AdminInfo = admininfo
          @License = license
          @LicenseExpireTime = licenseexpiretime
          @JoinTime = jointime
          @FlowEngineEnable = flowengineenable
        end

        def deserialize(params)
          @Name = params['Name']
          @Alias = params['Alias']
          @OrganizationId = params['OrganizationId']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @IsMainOrganization = params['IsMainOrganization']
          @IdCardNumber = params['IdCardNumber']
          unless params['AdminInfo'].nil?
            @AdminInfo = Admin.new
            @AdminInfo.deserialize(params['AdminInfo'])
          end
          @License = params['License']
          @LicenseExpireTime = params['LicenseExpireTime']
          @JoinTime = params['JoinTime']
          @FlowEngineEnable = params['FlowEngineEnable']
        end
      end

      # 被授权的用户信息
      class HasAuthUser < TencentCloud::Common::AbstractModel
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param BelongTo: 当前员工的归属情况，可能值是：
        # MainOrg：在集团企业的场景下，返回此值代表是归属主企业
        # CurrentOrg：在普通企业场景下返回此值；或者在集团企业的场景下，返回此值代表归属子企业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongTo: String
        # @param MainOrganizationId: 集团主企业id，当前企业为集团子企业时，该字段有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainOrganizationId: String

        attr_accessor :UserId, :BelongTo, :MainOrganizationId

        def initialize(userid=nil, belongto=nil, mainorganizationid=nil)
          @UserId = userid
          @BelongTo = belongto
          @MainOrganizationId = mainorganizationid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @BelongTo = params['BelongTo']
          @MainOrganizationId = params['MainOrganizationId']
        end
      end

      # 企业角色数据信息
      class IntegrateRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RoleName: 角色名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param RoleStatus: 角色状态，1-启用，2-禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleStatus: Integer
        # @param IsGroupRole: 是否是集团角色，true-是，false-否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGroupRole: Boolean
        # @param SubOrgIdList: 管辖的子企业列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubOrgIdList: Array
        # @param PermissionGroups: 权限树
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionGroups: Array

        attr_accessor :RoleId, :RoleName, :RoleStatus, :IsGroupRole, :SubOrgIdList, :PermissionGroups

        def initialize(roleid=nil, rolename=nil, rolestatus=nil, isgrouprole=nil, suborgidlist=nil, permissiongroups=nil)
          @RoleId = roleid
          @RoleName = rolename
          @RoleStatus = rolestatus
          @IsGroupRole = isgrouprole
          @SubOrgIdList = suborgidlist
          @PermissionGroups = permissiongroups
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @RoleStatus = params['RoleStatus']
          @IsGroupRole = params['IsGroupRole']
          @SubOrgIdList = params['SubOrgIdList']
          unless params['PermissionGroups'].nil?
            @PermissionGroups = []
            params['PermissionGroups'].each do |i|
              permissiongroup_tmp = PermissionGroup.new
              permissiongroup_tmp.deserialize(i)
              @PermissionGroups << permissiongroup_tmp
            end
          end
        end
      end

      # 部门信息
      class IntegrationDepartment < TencentCloud::Common::AbstractModel
        # @param DeptId: 部门ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeptId: String
        # @param DeptName: 部门名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeptName: String
        # @param ParentDeptId: 父部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentDeptId: String
        # @param DeptOpenId: 客户系统部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeptOpenId: String
        # @param OrderNo: 序列号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: Integer

        attr_accessor :DeptId, :DeptName, :ParentDeptId, :DeptOpenId, :OrderNo

        def initialize(deptid=nil, deptname=nil, parentdeptid=nil, deptopenid=nil, orderno=nil)
          @DeptId = deptid
          @DeptName = deptname
          @ParentDeptId = parentdeptid
          @DeptOpenId = deptopenid
          @OrderNo = orderno
        end

        def deserialize(params)
          @DeptId = params['DeptId']
          @DeptName = params['DeptName']
          @ParentDeptId = params['ParentDeptId']
          @DeptOpenId = params['DeptOpenId']
          @OrderNo = params['OrderNo']
        end
      end

      # ModifyApplicationCallbackInfo请求参数结构体
      class ModifyApplicationCallbackInfoRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param OperateType: 操作类型：
        # 1-新增
        # 2-删除
        # @type OperateType: Integer
        # @param CallbackInfo: 企业应用回调信息
        # @type CallbackInfo: :class:`Tencentcloud::Ess.v20201111.models.CallbackInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :OperateType, :CallbackInfo, :Agent

        def initialize(operator=nil, operatetype=nil, callbackinfo=nil, agent=nil)
          @Operator = operator
          @OperateType = operatetype
          @CallbackInfo = callbackinfo
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @OperateType = params['OperateType']
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new
            @CallbackInfo.deserialize(params['CallbackInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # ModifyApplicationCallbackInfo返回参数结构体
      class ModifyApplicationCallbackInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIntegrationDepartment请求参数结构体
      class ModifyIntegrationDepartmentRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得组织架构管理权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param DeptId: 电子签部门ID，通过<a href="https://qian.tencent.com/developers/companyApis/organizations/DescribeIntegrationDepartments" target="_blank">DescribeIntegrationDepartments</a>接口获得。
        # @type DeptId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ParentDeptId: 电子签父部门ID，通过<a href="https://qian.tencent.com/developers/companyApis/organizations/DescribeIntegrationDepartments" target="_blank">DescribeIntegrationDepartments</a>接口获得。
        # @type ParentDeptId: String
        # @param DeptName: 部门名称，最大长度为50个字符。
        # @type DeptName: String
        # @param DeptOpenId: 客户系统部门ID，最大长度为64个字符。
        # @type DeptOpenId: String
        # @param OrderNo: 排序号，支持设置的数值范围为1~30000。同一父部门下，排序号越大，部门顺序越靠前。
        # @type OrderNo: Integer

        attr_accessor :Operator, :DeptId, :Agent, :ParentDeptId, :DeptName, :DeptOpenId, :OrderNo

        def initialize(operator=nil, deptid=nil, agent=nil, parentdeptid=nil, deptname=nil, deptopenid=nil, orderno=nil)
          @Operator = operator
          @DeptId = deptid
          @Agent = agent
          @ParentDeptId = parentdeptid
          @DeptName = deptname
          @DeptOpenId = deptopenid
          @OrderNo = orderno
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @DeptId = params['DeptId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ParentDeptId = params['ParentDeptId']
          @DeptName = params['DeptName']
          @DeptOpenId = params['DeptOpenId']
          @OrderNo = params['OrderNo']
        end
      end

      # ModifyIntegrationDepartment返回参数结构体
      class ModifyIntegrationDepartmentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIntegrationRole请求参数结构体
      class ModifyIntegrationRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色Id，可通过接口 DescribeIntegrationRoles 查询获取
        # @type RoleId: String
        # @param Name: 角色名称，最大长度为20个字符，仅限中文、字母、数字和下划线组成。
        # @type Name: String
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。
        # 支持填入集团子公司经办人 userId 代发合同。

        # 注: 在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Description: 角色描述，最大长度为50个字符
        # @type Description: String
        # @param PermissionGroups: 权限树
        # @type PermissionGroups: Array
        # @param SubOrganizationIds: 集团角色的话，需要传递集团子企业列表，如果是全选，则传1
        # @type SubOrganizationIds: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :RoleId, :Name, :Operator, :Description, :PermissionGroups, :SubOrganizationIds, :Agent

        def initialize(roleid=nil, name=nil, operator=nil, description=nil, permissiongroups=nil, suborganizationids=nil, agent=nil)
          @RoleId = roleid
          @Name = name
          @Operator = operator
          @Description = description
          @PermissionGroups = permissiongroups
          @SubOrganizationIds = suborganizationids
          @Agent = agent
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @Name = params['Name']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Description = params['Description']
          unless params['PermissionGroups'].nil?
            @PermissionGroups = []
            params['PermissionGroups'].each do |i|
              permissiongroup_tmp = PermissionGroup.new
              permissiongroup_tmp.deserialize(i)
              @PermissionGroups << permissiongroup_tmp
            end
          end
          @SubOrganizationIds = params['SubOrganizationIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # ModifyIntegrationRole返回参数结构体
      class ModifyIntegrationRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId

        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # 持有的电子印章信息
      class OccupiedSeal < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章编号
        # @type SealId: String
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param CreateOn: 电子印章授权时间戳，单位秒
        # @type CreateOn: Integer
        # @param Creator: 电子印章授权人的UserId
        # @type Creator: String
        # @param SealPolicyId: 电子印章策略Id
        # @type SealPolicyId: String
        # @param SealStatus: 印章状态，有以下六种：CHECKING（审核中）SUCCESS（已启用）FAIL（审核拒绝）CHECKING-SADM（待超管审核）DISABLE（已停用）STOPPED（已终止）
        # @type SealStatus: String
        # @param FailReason: 审核失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param Url: 印章图片url，5分钟内有效
        # @type Url: String
        # @param SealType: 印章类型,OFFICIAL-企业公章, CONTRACT-合同专用章,ORGANIZATIONSEAL-企业印章(本地上传印章类型),LEGAL_PERSON_SEAL-法人印章
        # @type SealType: String
        # @param IsAllTime: 用印申请是否为永久授权，true-是，false-否
        # @type IsAllTime: Boolean
        # @param AuthorizedUsers: 授权人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizedUsers: Array

        attr_accessor :SealId, :SealName, :CreateOn, :Creator, :SealPolicyId, :SealStatus, :FailReason, :Url, :SealType, :IsAllTime, :AuthorizedUsers

        def initialize(sealid=nil, sealname=nil, createon=nil, creator=nil, sealpolicyid=nil, sealstatus=nil, failreason=nil, url=nil, sealtype=nil, isalltime=nil, authorizedusers=nil)
          @SealId = sealid
          @SealName = sealname
          @CreateOn = createon
          @Creator = creator
          @SealPolicyId = sealpolicyid
          @SealStatus = sealstatus
          @FailReason = failreason
          @Url = url
          @SealType = sealtype
          @IsAllTime = isalltime
          @AuthorizedUsers = authorizedusers
        end

        def deserialize(params)
          @SealId = params['SealId']
          @SealName = params['SealName']
          @CreateOn = params['CreateOn']
          @Creator = params['Creator']
          @SealPolicyId = params['SealPolicyId']
          @SealStatus = params['SealStatus']
          @FailReason = params['FailReason']
          @Url = params['Url']
          @SealType = params['SealType']
          @IsAllTime = params['IsAllTime']
          unless params['AuthorizedUsers'].nil?
            @AuthorizedUsers = []
            params['AuthorizedUsers'].each do |i|
              authorizeduser_tmp = AuthorizedUser.new
              authorizeduser_tmp.deserialize(i)
              @AuthorizedUsers << authorizeduser_tmp
            end
          end
        end
      end

      # 机构信息
      class OrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 机构在平台的编号，内部字段，暂未开放
        # @type OrganizationId: String
        # @param Channel: 用户渠道，内部字段，暂未开放
        # @type Channel: String
        # @param OrganizationOpenId: 用户在渠道的机构编号，内部字段，暂未开放
        # @type OrganizationOpenId: String
        # @param ClientIp: 用户真实的IP，内部字段，暂未开放
        # @type ClientIp: String
        # @param ProxyIp: 机构的代理IP，内部字段，暂未开放
        # @type ProxyIp: String

        attr_accessor :OrganizationId, :Channel, :OrganizationOpenId, :ClientIp, :ProxyIp
        extend Gem::Deprecate
        deprecate :OrganizationId, :none, 2023, 12
        deprecate :OrganizationId=, :none, 2023, 12
        deprecate :Channel, :none, 2023, 12
        deprecate :Channel=, :none, 2023, 12
        deprecate :OrganizationOpenId, :none, 2023, 12
        deprecate :OrganizationOpenId=, :none, 2023, 12
        deprecate :ClientIp, :none, 2023, 12
        deprecate :ClientIp=, :none, 2023, 12
        deprecate :ProxyIp, :none, 2023, 12
        deprecate :ProxyIp=, :none, 2023, 12

        def initialize(organizationid=nil, channel=nil, organizationopenid=nil, clientip=nil, proxyip=nil)
          @OrganizationId = organizationid
          @Channel = channel
          @OrganizationOpenId = organizationopenid
          @ClientIp = clientip
          @ProxyIp = proxyip
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @Channel = params['Channel']
          @OrganizationOpenId = params['OrganizationOpenId']
          @ClientIp = params['ClientIp']
          @ProxyIp = params['ProxyIp']
        end
      end

      # 合同文件验签单个结果结构体
      class PdfVerifyResult < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验签结果。0-签名域未签名；1-验签成功； 3-验签失败；4-未找到签名域：文件内没有签名域；5-签名值格式不正确。
        # @type VerifyResult: Integer
        # @param SignPlatform: 签署平台
        # 如果文件是在腾讯电子签平台签署，则为**腾讯电子签**，
        # 如果文件不在腾讯电子签平台签署，则为**其他平台**。
        # @type SignPlatform: String
        # @param SignerName: 申请证书的主体的名字

        # 如果是在腾讯电子签平台签署, 则对应的主体的名字个数如下
        # **企业**:  ESS@企业名称@编码
        # **个人**: ESS@个人姓名@证件号@808854

        # 如果在其他平台签署的, 主体的名字参考其他平台的说明
        # @type SignerName: String
        # @param SignTime: 签署时间的Unix时间戳，单位毫秒
        # @type SignTime: Integer
        # @param SignAlgorithm: 证书签名算法,  如SHA1withRSA等算法
        # @type SignAlgorithm: String
        # @param CertSn: CA供应商下发给用户的证书编号

        # 注意：`腾讯电子签接入多家CA供应商以提供容灾能力，不同CA下发的证书编号区别较大，但基本都是由数字和字母组成，长度在200以下`。
        # @type CertSn: String
        # @param CertNotBefore: 证书起始时间的Unix时间戳，单位毫秒
        # @type CertNotBefore: Integer
        # @param CertNotAfter: 证书过期时间的时间戳，单位毫秒
        # @type CertNotAfter: Integer
        # @param ComponentPosX: 签名域横坐标，单位px
        # @type ComponentPosX: Float
        # @param ComponentPosY: 签名域纵坐标，单位px
        # @type ComponentPosY: Float
        # @param ComponentWidth: 签名域宽度，单位px
        # @type ComponentWidth: Float
        # @param ComponentHeight: 签名域高度，单位px
        # @type ComponentHeight: Float
        # @param ComponentPage: 签名域所在页码，1～N
        # @type ComponentPage: Integer

        attr_accessor :VerifyResult, :SignPlatform, :SignerName, :SignTime, :SignAlgorithm, :CertSn, :CertNotBefore, :CertNotAfter, :ComponentPosX, :ComponentPosY, :ComponentWidth, :ComponentHeight, :ComponentPage

        def initialize(verifyresult=nil, signplatform=nil, signername=nil, signtime=nil, signalgorithm=nil, certsn=nil, certnotbefore=nil, certnotafter=nil, componentposx=nil, componentposy=nil, componentwidth=nil, componentheight=nil, componentpage=nil)
          @VerifyResult = verifyresult
          @SignPlatform = signplatform
          @SignerName = signername
          @SignTime = signtime
          @SignAlgorithm = signalgorithm
          @CertSn = certsn
          @CertNotBefore = certnotbefore
          @CertNotAfter = certnotafter
          @ComponentPosX = componentposx
          @ComponentPosY = componentposy
          @ComponentWidth = componentwidth
          @ComponentHeight = componentheight
          @ComponentPage = componentpage
        end

        def deserialize(params)
          @VerifyResult = params['VerifyResult']
          @SignPlatform = params['SignPlatform']
          @SignerName = params['SignerName']
          @SignTime = params['SignTime']
          @SignAlgorithm = params['SignAlgorithm']
          @CertSn = params['CertSn']
          @CertNotBefore = params['CertNotBefore']
          @CertNotAfter = params['CertNotAfter']
          @ComponentPosX = params['ComponentPosX']
          @ComponentPosY = params['ComponentPosY']
          @ComponentWidth = params['ComponentWidth']
          @ComponentHeight = params['ComponentHeight']
          @ComponentPage = params['ComponentPage']
        end
      end

      # 权限树节点权限
      class Permission < TencentCloud::Common::AbstractModel
        # @param Name: 权限名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Key: 权限key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Type: 权限类型 1前端，2后端
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Hide: 是否隐藏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hide: Integer
        # @param DataLabel: 数据权限标签 1:表示根节点，2:表示叶子结点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataLabel: Integer
        # @param DataType: 数据权限独有，1:关联其他模块鉴权，2:表示关联自己模块鉴权
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataType: Integer
        # @param DataRange: 数据权限独有，表示数据范围，1：全公司，2:部门及下级部门，3:自己
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataRange: Integer
        # @param DataTo: 关联权限, 表示这个功能权限要受哪个数据权限管控
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTo: String
        # @param ParentKey: 父级权限key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentKey: String
        # @param IsChecked: 是否选中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsChecked: Boolean
        # @param Children: 子权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array

        attr_accessor :Name, :Key, :Type, :Hide, :DataLabel, :DataType, :DataRange, :DataTo, :ParentKey, :IsChecked, :Children

        def initialize(name=nil, key=nil, type=nil, hide=nil, datalabel=nil, datatype=nil, datarange=nil, datato=nil, parentkey=nil, ischecked=nil, children=nil)
          @Name = name
          @Key = key
          @Type = type
          @Hide = hide
          @DataLabel = datalabel
          @DataType = datatype
          @DataRange = datarange
          @DataTo = datato
          @ParentKey = parentkey
          @IsChecked = ischecked
          @Children = children
        end

        def deserialize(params)
          @Name = params['Name']
          @Key = params['Key']
          @Type = params['Type']
          @Hide = params['Hide']
          @DataLabel = params['DataLabel']
          @DataType = params['DataType']
          @DataRange = params['DataRange']
          @DataTo = params['DataTo']
          @ParentKey = params['ParentKey']
          @IsChecked = params['IsChecked']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              permission_tmp = Permission.new
              permission_tmp.deserialize(i)
              @Children << permission_tmp
            end
          end
        end
      end

      # 权限树中的权限组
      class PermissionGroup < TencentCloud::Common::AbstractModel
        # @param GroupName: 权限组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param GroupKey: 权限组key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupKey: String
        # @param Hide: 是否隐藏分组，0否1是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hide: Integer
        # @param Permissions: 权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: Array

        attr_accessor :GroupName, :GroupKey, :Hide, :Permissions

        def initialize(groupname=nil, groupkey=nil, hide=nil, permissions=nil)
          @GroupName = groupname
          @GroupKey = groupkey
          @Hide = hide
          @Permissions = permissions
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupKey = params['GroupKey']
          @Hide = params['Hide']
          unless params['Permissions'].nil?
            @Permissions = []
            params['Permissions'].each do |i|
              permission_tmp = Permission.new
              permission_tmp.deserialize(i)
              @Permissions << permission_tmp
            end
          end
        end
      end

      # 流程中参与方的信息结构
      class Recipient < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署参与者ID，唯一标识
        # @type RecipientId: String
        # @param RecipientType: 参与者类型。
        # 默认为空。
        # ENTERPRISE-企业；
        # INDIVIDUAL-个人；
        # PROMOTER-发起方
        # @type RecipientType: String
        # @param Description: 描述信息
        # @type Description: String
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param RequireValidation: 是否需要验证，
        # 默认为false-不需要验证
        # @type RequireValidation: Boolean
        # @param RequireSign: 是否需要签署，
        # 默认为true-需要签署
        # @type RequireSign: Boolean
        # @param RoutingOrder: 此参与方添加的顺序，从0～N
        # @type RoutingOrder: Integer
        # @param RequireDelivery: 是否需要发送，
        # 默认为true-需要发送
        # @type RequireDelivery: Boolean
        # @param Email: 邮箱地址
        # @type Email: String
        # @param Mobile: 电话号码
        # @type Mobile: String
        # @param UserId: 关联的用户ID，电子签系统的用户ID
        # @type UserId: String
        # @param DeliveryMethod: 发送方式，默认为EMAIL。
        # EMAIL-邮件；
        # MOBILE-手机短信；
        # WECHAT-微信通知
        # @type DeliveryMethod: String
        # @param RecipientExtra: 参与方的一些附属信息，json格式
        # @type RecipientExtra: String

        attr_accessor :RecipientId, :RecipientType, :Description, :RoleName, :RequireValidation, :RequireSign, :RoutingOrder, :RequireDelivery, :Email, :Mobile, :UserId, :DeliveryMethod, :RecipientExtra

        def initialize(recipientid=nil, recipienttype=nil, description=nil, rolename=nil, requirevalidation=nil, requiresign=nil, routingorder=nil, requiredelivery=nil, email=nil, mobile=nil, userid=nil, deliverymethod=nil, recipientextra=nil)
          @RecipientId = recipientid
          @RecipientType = recipienttype
          @Description = description
          @RoleName = rolename
          @RequireValidation = requirevalidation
          @RequireSign = requiresign
          @RoutingOrder = routingorder
          @RequireDelivery = requiredelivery
          @Email = email
          @Mobile = mobile
          @UserId = userid
          @DeliveryMethod = deliverymethod
          @RecipientExtra = recipientextra
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @RecipientType = params['RecipientType']
          @Description = params['Description']
          @RoleName = params['RoleName']
          @RequireValidation = params['RequireValidation']
          @RequireSign = params['RequireSign']
          @RoutingOrder = params['RoutingOrder']
          @RequireDelivery = params['RequireDelivery']
          @Email = params['Email']
          @Mobile = params['Mobile']
          @UserId = params['UserId']
          @DeliveryMethod = params['DeliveryMethod']
          @RecipientExtra = params['RecipientExtra']
        end
      end

      # 参与方填写控件信息
      class RecipientComponentInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 参与方Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientId: String
        # @param RecipientFillStatus: 参与方填写状态
        # <ul><li>0-未填写</li>
        # <li>1-已填写</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientFillStatus: String
        # @param IsPromoter: 是否为发起方
        # <ul><li>true-发起方</li>
        # <li>false-参与方</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPromoter: Boolean
        # @param Components: 填写控件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array

        attr_accessor :RecipientId, :RecipientFillStatus, :IsPromoter, :Components

        def initialize(recipientid=nil, recipientfillstatus=nil, ispromoter=nil, components=nil)
          @RecipientId = recipientid
          @RecipientFillStatus = recipientfillstatus
          @IsPromoter = ispromoter
          @Components = components
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @RecipientFillStatus = params['RecipientFillStatus']
          @IsPromoter = params['IsPromoter']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              filledcomponent_tmp = FilledComponent.new
              filledcomponent_tmp.deserialize(i)
              @Components << filledcomponent_tmp
            end
          end
        end
      end

      # 发起流程快速注册相关信息
      class RegisterInfo < TencentCloud::Common::AbstractModel
        # @param LegalName: 法人姓名
        # @type LegalName: String
        # @param Uscc: 社会统一信用代码
        # @type Uscc: String
        # @param UnifiedSocialCreditCode: 社会统一信用代码
        # @type UnifiedSocialCreditCode: String

        attr_accessor :LegalName, :Uscc, :UnifiedSocialCreditCode
        extend Gem::Deprecate
        deprecate :Uscc, :none, 2023, 12
        deprecate :Uscc=, :none, 2023, 12

        def initialize(legalname=nil, uscc=nil, unifiedsocialcreditcode=nil)
          @LegalName = legalname
          @Uscc = uscc
          @UnifiedSocialCreditCode = unifiedsocialcreditcode
        end

        def deserialize(params)
          @LegalName = params['LegalName']
          @Uscc = params['Uscc']
          @UnifiedSocialCreditCode = params['UnifiedSocialCreditCode']
        end
      end

      # 解除协议的签署人，如不指定，默认使用原流程中的签署人。<br/>
      # `注意：不支持更换C端（个人身份类型）签署人，如果原流程中含有C端签署人，默认使用原流程中的该C端签署人。`<br/>
      # `注意：目前不支持替换C端（个人身份类型）签署人，但是可以指定C端签署人的签署方自定义控件别名，具体见参数ApproverSignRole描述。`<br/>
      # `注意：当指定C端签署人的签署方自定义控件别名不空时，除RelievedApproverReceiptId参数外，可以只参数ApproverSignRole。`<br/>
      class ReleasedApprover < TencentCloud::Common::AbstractModel
        # @param Name: 签署人姓名，最大长度50个字。
        # @type Name: String
        # @param Mobile: 签署人手机号。
        # @type Mobile: String
        # @param RelievedApproverReceiptId: 要更换的原合同参与人RecipientId编号。(可通过接口<a href="https://qian.tencent.com/developers/companyApis/queryFlows/DescribeFlowInfo/">DescribeFlowInfo</a>查询签署人的RecipientId编号)<br/>
        # @type RelievedApproverReceiptId: String
        # @param ApproverType: 指定签署人类型，目前仅支持
        # <ul><li> **ORGANIZATION**：企业（默认值）</li>
        # <li> **ENTERPRISESERVER**：企业静默签</li></ul>
        # @type ApproverType: String
        # @param ApproverSignComponentType: 签署控件类型，支持自定义企业签署方的签署控件类型
        # <ul><li> **SIGN_SEAL**：默认为印章控件类型（默认值）</li>
        # <li> **SIGN_SIGNATURE**：手写签名控件类型</li></ul>
        # @type ApproverSignComponentType: String
        # @param ApproverSignRole: 参与方在合同中的角色是按照创建合同的时候来排序的，解除协议默认会将第一个参与人叫`甲方`,第二个叫`乙方`,  第三个叫`丙方`，以此类推。

        # 如果需改动此参与人的角色名字，可用此字段指定，由汉字,英文字符,数字组成，最大20个字。
        # @type ApproverSignRole: String

        attr_accessor :Name, :Mobile, :RelievedApproverReceiptId, :ApproverType, :ApproverSignComponentType, :ApproverSignRole

        def initialize(name=nil, mobile=nil, relievedapproverreceiptid=nil, approvertype=nil, approversigncomponenttype=nil, approversignrole=nil)
          @Name = name
          @Mobile = mobile
          @RelievedApproverReceiptId = relievedapproverreceiptid
          @ApproverType = approvertype
          @ApproverSignComponentType = approversigncomponenttype
          @ApproverSignRole = approversignrole
        end

        def deserialize(params)
          @Name = params['Name']
          @Mobile = params['Mobile']
          @RelievedApproverReceiptId = params['RelievedApproverReceiptId']
          @ApproverType = params['ApproverType']
          @ApproverSignComponentType = params['ApproverSignComponentType']
          @ApproverSignRole = params['ApproverSignRole']
        end
      end

      # 解除协议文档中内容信息，包括但不限于：解除理由、解除后仍然有效的条款-保留条款、原合同事项处理-费用结算、原合同事项处理-其他事项、其他约定等。
      class RelieveInfo < TencentCloud::Common::AbstractModel
        # @param Reason: 解除理由，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type Reason: String
        # @param RemainInForceItem: 解除后仍然有效的条款，保留条款，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type RemainInForceItem: String
        # @param OriginalExpenseSettlement: 原合同事项处理-费用结算，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type OriginalExpenseSettlement: String
        # @param OriginalOtherSettlement: 原合同事项处理-其他事项，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type OriginalOtherSettlement: String
        # @param OtherDeals: 其他约定，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type OtherDeals: String

        attr_accessor :Reason, :RemainInForceItem, :OriginalExpenseSettlement, :OriginalOtherSettlement, :OtherDeals

        def initialize(reason=nil, remaininforceitem=nil, originalexpensesettlement=nil, originalothersettlement=nil, otherdeals=nil)
          @Reason = reason
          @RemainInForceItem = remaininforceitem
          @OriginalExpenseSettlement = originalexpensesettlement
          @OriginalOtherSettlement = originalothersettlement
          @OtherDeals = otherdeals
        end

        def deserialize(params)
          @Reason = params['Reason']
          @RemainInForceItem = params['RemainInForceItem']
          @OriginalExpenseSettlement = params['OriginalExpenseSettlement']
          @OriginalOtherSettlement = params['OriginalOtherSettlement']
          @OtherDeals = params['OtherDeals']
        end
      end

      # 催办接口返回的详细信息。
      class RemindFlowRecords < TencentCloud::Common::AbstractModel
        # @param CanRemind: 合同流程是否可以催办：
        # true - 可以，false - 不可以。
        # 若无法催办，将返回RemindMessage以解释原因。
        # @type CanRemind: Boolean
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param RemindMessage: 在合同流程无法催办的情况下，系统将返回RemindMessage以阐述原因。
        # @type RemindMessage: String

        attr_accessor :CanRemind, :FlowId, :RemindMessage

        def initialize(canremind=nil, flowid=nil, remindmessage=nil)
          @CanRemind = canremind
          @FlowId = flowid
          @RemindMessage = remindmessage
        end

        def deserialize(params)
          @CanRemind = params['CanRemind']
          @FlowId = params['FlowId']
          @RemindMessage = params['RemindMessage']
        end
      end

      # 关注方信息
      class ReviewerInfo < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param Mobile: 手机号
        # @type Mobile: String

        attr_accessor :Name, :Mobile

        def initialize(name=nil, mobile=nil)
          @Name = name
          @Mobile = mobile
        end

        def deserialize(params)
          @Name = params['Name']
          @Mobile = params['Mobile']
        end
      end

      # 模板中指定的印章信息
      class SealInfo < TencentCloud::Common::AbstractModel
        # @param SealId: 印章ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SealId: String
        # @param SealType: 印章类型。LEGAL_PERSON_SEAL: 法定代表人章；
        # ORGANIZATIONSEAL：企业印章；
        # OFFICIAL：企业公章；
        # CONTRACT：合同专用章
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SealType: String
        # @param SealName: 印章名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SealName: String

        attr_accessor :SealId, :SealType, :SealName

        def initialize(sealid=nil, sealtype=nil, sealname=nil)
          @SealId = sealid
          @SealType = sealtype
          @SealName = sealname
        end

        def deserialize(params)
          @SealId = params['SealId']
          @SealType = params['SealType']
          @SealName = params['SealName']
        end
      end

      # 签署二维码的基本信息，用于创建二维码，用户可扫描该二维码进行签署操作。
      class SignQrCode < TencentCloud::Common::AbstractModel
        # @param QrCodeId: 二维码ID，为32位字符串。
        # @type QrCodeId: String
        # @param QrCodeUrl: 二维码URL，可通过转换二维码的工具或代码组件将此URL转化为二维码，以便用户扫描进行流程签署。
        # @type QrCodeUrl: String
        # @param ExpiredTime: 二维码的有截止时间，格式为Unix标准时间戳（秒）。
        # 一旦超过二维码的有效期限，该二维码将自动失效。
        # @type ExpiredTime: Integer

        attr_accessor :QrCodeId, :QrCodeUrl, :ExpiredTime

        def initialize(qrcodeid=nil, qrcodeurl=nil, expiredtime=nil)
          @QrCodeId = qrcodeid
          @QrCodeUrl = qrcodeurl
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @QrCodeId = params['QrCodeId']
          @QrCodeUrl = params['QrCodeUrl']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # 流程签署二维码的签署信息，适用于客户系统整合二维码功能。
      # 通过链接，用户可直接访问电子签名小程序并签署合同。
      class SignUrl < TencentCloud::Common::AbstractModel
        # @param AppSignUrl: 跳转至电子签名小程序签署的链接地址。
        # 适用于客户端APP及小程序直接唤起电子签名小程序。
        # @type AppSignUrl: String
        # @param EffectiveTime: 签署链接有效时间，格式类似"2022-08-05 15:55:01"
        # @type EffectiveTime: String
        # @param HttpSignUrl: 跳转至电子签名小程序签署的链接地址，格式类似于https://essurl.cn/xxx。
        # 打开此链接将会展示H5中间页面，随后唤起电子签名小程序以进行合同签署。
        # @type HttpSignUrl: String

        attr_accessor :AppSignUrl, :EffectiveTime, :HttpSignUrl

        def initialize(appsignurl=nil, effectivetime=nil, httpsignurl=nil)
          @AppSignUrl = appsignurl
          @EffectiveTime = effectivetime
          @HttpSignUrl = httpsignurl
        end

        def deserialize(params)
          @AppSignUrl = params['AppSignUrl']
          @EffectiveTime = params['EffectiveTime']
          @HttpSignUrl = params['HttpSignUrl']
        end
      end

      # 企业员工信息。
      class Staff < TencentCloud::Common::AbstractModel
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 注：`创建和更新场景无需填写。`
        # @type UserId: String
        # @param DisplayName: 显示的用户名/昵称。
        # @type DisplayName: String
        # @param Mobile: 用户手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # @type Mobile: String
        # @param Email: 用户邮箱。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param OpenId: 用户在第三方平台ID。
        # 注：`如需在此接口提醒员工实名，该参数不传。`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param Roles: 员工角色信息。
        # 注：`创建和更新场景无需填写。`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Roles: Array
        # @param Department: 员工部门信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Department: :class:`Tencentcloud::Ess.v20201111.models.Department`
        # @param Verified: 员工是否实名。
        # 注：`创建和更新场景无需填写。`
        # @type Verified: Boolean
        # @param CreatedOn: 员工创建时间戳，单位秒。
        # 注：`创建和更新场景无需填写。`
        # @type CreatedOn: Integer
        # @param VerifiedOn: 员工实名时间戳，单位秒。
        # 注：`创建和更新场景无需填写。`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifiedOn: Integer
        # @param QuiteJob: 员工是否离职：
        # <ul><li>**0**：未离职</li><li>**1**：离职</li></ul>
        # 注：`创建和更新场景无需填写。`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuiteJob: Integer
        # @param ReceiveUserId: 员工离职交接人用户ID。
        # 注：`创建和更新场景无需填写。`
        # @type ReceiveUserId: String
        # @param ReceiveOpenId: 员工离职交接人用户OpenId。
        # 注：`创建和更新场景无需填写。`
        # @type ReceiveOpenId: String
        # @param WeworkOpenId: 企业微信用户账号ID。
        # 注：`仅企微类型的企业创建员工接口支持该字段。`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeworkOpenId: String

        attr_accessor :UserId, :DisplayName, :Mobile, :Email, :OpenId, :Roles, :Department, :Verified, :CreatedOn, :VerifiedOn, :QuiteJob, :ReceiveUserId, :ReceiveOpenId, :WeworkOpenId

        def initialize(userid=nil, displayname=nil, mobile=nil, email=nil, openid=nil, roles=nil, department=nil, verified=nil, createdon=nil, verifiedon=nil, quitejob=nil, receiveuserid=nil, receiveopenid=nil, weworkopenid=nil)
          @UserId = userid
          @DisplayName = displayname
          @Mobile = mobile
          @Email = email
          @OpenId = openid
          @Roles = roles
          @Department = department
          @Verified = verified
          @CreatedOn = createdon
          @VerifiedOn = verifiedon
          @QuiteJob = quitejob
          @ReceiveUserId = receiveuserid
          @ReceiveOpenId = receiveopenid
          @WeworkOpenId = weworkopenid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @OpenId = params['OpenId']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              staffrole_tmp = StaffRole.new
              staffrole_tmp.deserialize(i)
              @Roles << staffrole_tmp
            end
          end
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
          @Verified = params['Verified']
          @CreatedOn = params['CreatedOn']
          @VerifiedOn = params['VerifiedOn']
          @QuiteJob = params['QuiteJob']
          @ReceiveUserId = params['ReceiveUserId']
          @ReceiveOpenId = params['ReceiveOpenId']
          @WeworkOpenId = params['WeworkOpenId']
        end
      end

      # 集成版企业角色信息。
      class StaffRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RoleName: 角色名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String

        attr_accessor :RoleId, :RoleName

        def initialize(roleid=nil, rolename=nil)
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # StartFlow请求参数结构体
      class StartFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 此处需要传入[创建签署流程接口](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlow)得到的FlowId。
        # @type FlowId: String
        # @param ClientToken: 客户端Token，保持接口幂等性,最大长度64个字符
        # @type ClientToken: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param CcNotifyType: 若在创建签署流程时指定了关注人CcInfos，此参数可设定向关注人发送短信通知的类型：
        # <ul><li> **0** :合同发起时通知通知对方来查看合同（默认）</li>
        # <li> **1** : 签署完成后通知对方来查看合同</li></ul>
        # @type CcNotifyType: Integer

        attr_accessor :Operator, :FlowId, :ClientToken, :Agent, :CcNotifyType
        extend Gem::Deprecate
        deprecate :ClientToken, :none, 2023, 12
        deprecate :ClientToken=, :none, 2023, 12

        def initialize(operator=nil, flowid=nil, clienttoken=nil, agent=nil, ccnotifytype=nil)
          @Operator = operator
          @FlowId = flowid
          @ClientToken = clienttoken
          @Agent = agent
          @CcNotifyType = ccnotifytype
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @ClientToken = params['ClientToken']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @CcNotifyType = params['CcNotifyType']
        end
      end

      # StartFlow返回参数结构体
      class StartFlowResponse < TencentCloud::Common::AbstractModel
        # @param Status: 发起成功后返回的状态，根据合同流程的不同，返回不同状态：
        # <ul><li> **START** : 发起成功, 合同进入签署环节</li>
        # <li> **REVIEW** : 提交审核成功, 合同需要发起审核, 发起方企业通过接口审核通过后合同才进入签署环境  `白名单功能，使用前请联系对接的客户经理沟通。`</li>
        # <li> **EXECUTING** : 已提交发起任务且PDF合同正在合成中, 等PDF合同合成成功后进入签署环节</li></ul>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 创建员工的成功数据
      class SuccessCreateStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 员工名
        # @type DisplayName: String
        # @param Mobile: 员工手机号
        # @type Mobile: String
        # @param UserId: 员工在电子签平台的id
        # @type UserId: String
        # @param Note: 提示，当创建已存在未实名用户时，该字段有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param WeworkOpenId: 传入的企微账号id
        # @type WeworkOpenId: String

        attr_accessor :DisplayName, :Mobile, :UserId, :Note, :WeworkOpenId

        def initialize(displayname=nil, mobile=nil, userid=nil, note=nil, weworkopenid=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @UserId = userid
          @Note = note
          @WeworkOpenId = weworkopenid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @UserId = params['UserId']
          @Note = params['Note']
          @WeworkOpenId = params['WeworkOpenId']
        end
      end

      # 删除员工的成功数据
      class SuccessDeleteStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 员工名
        # @type DisplayName: String
        # @param Mobile: 员工手机号
        # @type Mobile: String
        # @param UserId: 员工在电子签平台的id
        # @type UserId: String

        attr_accessor :DisplayName, :Mobile, :UserId

        def initialize(displayname=nil, mobile=nil, userid=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @UserId = userid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @UserId = params['UserId']
        end
      end

      # 更新员工信息成功返回的数据信息
      class SuccessUpdateStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 传入的用户名称
        # @type DisplayName: String
        # @param Mobile: 传入的手机号，没有打码
        # @type Mobile: String
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # @type UserId: String

        attr_accessor :DisplayName, :Mobile, :UserId

        def initialize(displayname=nil, mobile=nil, userid=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @UserId = userid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @UserId = params['UserId']
        end
      end

      # 此结构体 (TemplateInfo) 用于描述模板的信息。

      # > **模板组成**
      # >
      # >  一个模板通常会包含以下结构信息
      # >- 模板基本信息
      # >- 发起方参与信息Promoter、签署参与方 Recipients，后者会在模板发起合同时用于指定参与方
      # >- 填写控件 Components
      # >- 签署控件 SignComponents
      # >- 生成模板的文件基础信息 FileInfos
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID，模板的唯一标识
        # @type TemplateId: String
        # @param TemplateName: 模板名
        # @type TemplateName: String
        # @param Description: 模板描述信息
        # @type Description: String
        # @param DocumentResourceIds: 模板关联的资源ID列表
        # @type DocumentResourceIds: Array
        # @param FileInfos: 生成模板的文件基础信息
        # @type FileInfos: Array
        # @param AttachmentResourceIds: 附件关联的资源ID
        # @type AttachmentResourceIds: Array
        # @param SignOrder: 签署顺序
        # 无序 -1
        # 有序为序列数字 0,1,2
        # @type SignOrder: Array
        # @param Recipients: 模板中的签署参与方列表
        # @type Recipients: Array
        # @param Components: 模板的填充控件列表
        # @type Components: Array
        # @param SignComponents: 模板中的签署控件列表
        # @type SignComponents: Array
        # @param Status: 模板状态
        # -1:不可用
        # 0:草稿态
        # 1:正式态，可以正常使用
        # @type Status: Integer
        # @param Creator: 模板的创建者信息，电子签系统用户ID
        # @type Creator: String
        # @param CreatedOn: 模板创建的时间戳，格式为Unix标准时间戳（秒）
        # @type CreatedOn: Integer
        # @param Promoter: 发起方参与信息Promoter
        # @type Promoter: :class:`Tencentcloud::Ess.v20201111.models.Recipient`
        # @param TemplateType: 模板类型：
        # 1  静默签,
        # 3  普通模板
        # @type TemplateType: Integer
        # @param Available: 模板可用状态：
        # 1 启用（默认）
        # 2 停用
        # @type Available: Integer
        # @param OrganizationId: 创建模板的企业ID，电子签的机构ID
        # @type OrganizationId: String
        # @param PreviewUrl: 模板预览链接，有效时间5分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param TemplateVersion: 模板版本。默认为空时，全数字字符，初始版本为yyyyMMdd001。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateVersion: String
        # @param Published: 模板是否已发布：
        # true-已发布
        # false-未发布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Published: Boolean
        # @param ShareTemplateId: 分享来源的模板ID。用在集团账号子企业模板里
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareTemplateId: String
        # @param TemplateSeals: 模板内部指定的印章列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateSeals: Array
        # @param Seals: 模板内部指定的印章列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seals: Array

        attr_accessor :TemplateId, :TemplateName, :Description, :DocumentResourceIds, :FileInfos, :AttachmentResourceIds, :SignOrder, :Recipients, :Components, :SignComponents, :Status, :Creator, :CreatedOn, :Promoter, :TemplateType, :Available, :OrganizationId, :PreviewUrl, :TemplateVersion, :Published, :ShareTemplateId, :TemplateSeals, :Seals
        extend Gem::Deprecate
        deprecate :Seals, :none, 2023, 12
        deprecate :Seals=, :none, 2023, 12

        def initialize(templateid=nil, templatename=nil, description=nil, documentresourceids=nil, fileinfos=nil, attachmentresourceids=nil, signorder=nil, recipients=nil, components=nil, signcomponents=nil, status=nil, creator=nil, createdon=nil, promoter=nil, templatetype=nil, available=nil, organizationid=nil, previewurl=nil, templateversion=nil, published=nil, sharetemplateid=nil, templateseals=nil, seals=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @DocumentResourceIds = documentresourceids
          @FileInfos = fileinfos
          @AttachmentResourceIds = attachmentresourceids
          @SignOrder = signorder
          @Recipients = recipients
          @Components = components
          @SignComponents = signcomponents
          @Status = status
          @Creator = creator
          @CreatedOn = createdon
          @Promoter = promoter
          @TemplateType = templatetype
          @Available = available
          @OrganizationId = organizationid
          @PreviewUrl = previewurl
          @TemplateVersion = templateversion
          @Published = published
          @ShareTemplateId = sharetemplateid
          @TemplateSeals = templateseals
          @Seals = seals
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @DocumentResourceIds = params['DocumentResourceIds']
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileInfos << fileinfo_tmp
            end
          end
          @AttachmentResourceIds = params['AttachmentResourceIds']
          @SignOrder = params['SignOrder']
          unless params['Recipients'].nil?
            @Recipients = []
            params['Recipients'].each do |i|
              recipient_tmp = Recipient.new
              recipient_tmp.deserialize(i)
              @Recipients << recipient_tmp
            end
          end
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @Status = params['Status']
          @Creator = params['Creator']
          @CreatedOn = params['CreatedOn']
          unless params['Promoter'].nil?
            @Promoter = Recipient.new
            @Promoter.deserialize(params['Promoter'])
          end
          @TemplateType = params['TemplateType']
          @Available = params['Available']
          @OrganizationId = params['OrganizationId']
          @PreviewUrl = params['PreviewUrl']
          @TemplateVersion = params['TemplateVersion']
          @Published = params['Published']
          @ShareTemplateId = params['ShareTemplateId']
          unless params['TemplateSeals'].nil?
            @TemplateSeals = []
            params['TemplateSeals'].each do |i|
              sealinfo_tmp = SealInfo.new
              sealinfo_tmp.deserialize(i)
              @TemplateSeals << sealinfo_tmp
            end
          end
          unless params['Seals'].nil?
            @Seals = []
            params['Seals'].each do |i|
              sealinfo_tmp = SealInfo.new
              sealinfo_tmp.deserialize(i)
              @Seals << sealinfo_tmp
            end
          end
        end
      end

      # UnbindEmployeeUserIdWithClientOpenId请求参数结构体
      class UnbindEmployeeUserIdWithClientOpenIdRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # @type UserId: String
        # @param OpenId: 员工在贵司业务系统中的唯一身份标识，用于与腾讯电子签账号进行映射，确保在同一企业内不会出现重复。
        # 该标识最大长度为64位字符串，仅支持包含26个英文字母和数字0-9的字符。
        # @type OpenId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :UserId, :OpenId, :Agent

        def initialize(operator=nil, userid=nil, openid=nil, agent=nil)
          @Operator = operator
          @UserId = userid
          @OpenId = openid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserId = params['UserId']
          @OpenId = params['OpenId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # UnbindEmployeeUserIdWithClientOpenId返回参数结构体
      class UnbindEmployeeUserIdWithClientOpenIdResponse < TencentCloud::Common::AbstractModel
        # @param Status: 解绑是否成功。
        # <ul><li> **0**：失败 </li>
        # <li> **1**：成功 </li></ul>
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # UpdateIntegrationEmployees请求参数结构体
      class UpdateIntegrationEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息,UserId必填。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Employees: 员工信息，不超过100个。
        # 根据UserId或OpenId更新员工，必填一个，优先UserId。
        # 可更新Mobile、DisplayName、Email和Department.DepartmentId字段，其他字段暂不支持
        # @type Employees: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :Employees, :Agent

        def initialize(operator=nil, employees=nil, agent=nil)
          @Operator = operator
          @Employees = employees
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Employees'].nil?
            @Employees = []
            params['Employees'].each do |i|
              staff_tmp = Staff.new
              staff_tmp.deserialize(i)
              @Employees << staff_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # UpdateIntegrationEmployees返回参数结构体
      class UpdateIntegrationEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessEmployeeData: 更新成功的用户列表
        # @type SuccessEmployeeData: Array
        # @param FailedEmployeeData: 更新失败的用户列表
        # @type FailedEmployeeData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessEmployeeData, :FailedEmployeeData, :RequestId

        def initialize(successemployeedata=nil, failedemployeedata=nil, requestid=nil)
          @SuccessEmployeeData = successemployeedata
          @FailedEmployeeData = failedemployeedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SuccessEmployeeData'].nil?
            @SuccessEmployeeData = []
            params['SuccessEmployeeData'].each do |i|
              successupdatestaffdata_tmp = SuccessUpdateStaffData.new
              successupdatestaffdata_tmp.deserialize(i)
              @SuccessEmployeeData << successupdatestaffdata_tmp
            end
          end
          unless params['FailedEmployeeData'].nil?
            @FailedEmployeeData = []
            params['FailedEmployeeData'].each do |i|
              failedupdatestaffdata_tmp = FailedUpdateStaffData.new
              failedupdatestaffdata_tmp.deserialize(i)
              @FailedEmployeeData << failedupdatestaffdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 此结构体 (UploadFile) 用于描述多文件上传的文件信息。
      class UploadFile < TencentCloud::Common::AbstractModel
        # @param FileBody: Base64编码后的文件内容
        # @type FileBody: String
        # @param FileName: 文件名，最大长度不超过200字符
        # @type FileName: String

        attr_accessor :FileBody, :FileName

        def initialize(filebody=nil, filename=nil)
          @FileBody = filebody
          @FileName = filename
        end

        def deserialize(params)
          @FileBody = params['FileBody']
          @FileName = params['FileName']
        end
      end

      # UploadFiles请求参数结构体
      class UploadFilesRequest < TencentCloud::Common::AbstractModel
        # @param BusinessType: 文件对应业务类型,可以选择的类型如下
        # <ul><li> **TEMPLATE** : 此上传的文件用户生成合同模板，文件类型支持.pdf/.doc/.docx/.html格式，如果非pdf文件需要通过<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/CreateConvertTaskApi" target="_blank">创建文件转换任务</a>转换后才能使用</li>
        # <li> **DOCUMENT** : 此文件用来发起合同流程，文件类型支持.pdf/.doc/.docx/.jpg/.png/.xls.xlsx/.html，如果非pdf文件需要通过<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/CreateConvertTaskApi" target="_blank">创建文件转换任务</a>转换后才能使用</li>
        # <li> **DOCUMENT** : 此文件用于合同图片控件的填充，文件类型支持.jpg/.png</li>
        # <li> **SEAL** : 此文件用于印章的生成，文件类型支持.jpg/.jpeg/.png</li></ul>
        # @type BusinessType: String
        # @param Caller: 执行本接口操作的员工信息。其中OperatorId为必填字段，即用户的UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Caller: :class:`Tencentcloud::Ess.v20201111.models.Caller`
        # @param FileInfos: 上传文件内容数组，最多支持上传20个文件。
        # @type FileInfos: Array
        # @param FileType: 文件类型， 默认通过文件内容和文件后缀一起解析得到文件类型，调用接口时可以显示的指定上传文件的类型。
        # 可支持的指定类型如下:
        # <ul><li>pdf</li>
        # <li>doc</li>
        # <li>docx</li>
        # <li>xls</li>
        # <li>xlsx</li>
        # <li>html</li>
        # <li>jpg</li>
        # <li>jpeg</li>
        # <li>png</li></ul>
        # 如：pdf 表示上传的文件 张三入职合同.pdf的文件类型是 pdf
        # @type FileType: String
        # @param CoverRect: 此参数仅对上传的PDF文件有效。其主要作用是确定是否将PDF中的灰色矩阵置为白色。
        # <ul><li>**true**：将灰色矩阵置为白色。</li>
        # <li>**false**：无需处理，不会将灰色矩阵置为白色（默认）。</li></ul>

        # 注: `该参数仅在关键字定位时，需要去除关键字所在的灰框场景下使用。`
        # @type CoverRect: Boolean
        # @param CustomIds: 用户自定义ID数组，与上传文件一一对应

        # 注: `历史遗留问题，已经废弃，调用接口时不用赋值`
        # @type CustomIds: Array
        # @param FileUrls: 不再使用，上传文件链接数组，最多支持20个URL
        # @type FileUrls: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :BusinessType, :Caller, :FileInfos, :FileType, :CoverRect, :CustomIds, :FileUrls, :Agent
        extend Gem::Deprecate
        deprecate :FileUrls, :none, 2023, 12
        deprecate :FileUrls=, :none, 2023, 12

        def initialize(businesstype=nil, caller=nil, fileinfos=nil, filetype=nil, coverrect=nil, customids=nil, fileurls=nil, agent=nil)
          @BusinessType = businesstype
          @Caller = caller
          @FileInfos = fileinfos
          @FileType = filetype
          @CoverRect = coverrect
          @CustomIds = customids
          @FileUrls = fileurls
          @Agent = agent
        end

        def deserialize(params)
          @BusinessType = params['BusinessType']
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              uploadfile_tmp = UploadFile.new
              uploadfile_tmp.deserialize(i)
              @FileInfos << uploadfile_tmp
            end
          end
          @FileType = params['FileType']
          @CoverRect = params['CoverRect']
          @CustomIds = params['CustomIds']
          @FileUrls = params['FileUrls']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # UploadFiles返回参数结构体
      class UploadFilesResponse < TencentCloud::Common::AbstractModel
        # @param FileIds: 文件资源ID数组，每个文件资源ID为32位字符串。
        # 建议开发者保存此资源ID，后续创建合同或创建合同流程需此资源ID。
        # @type FileIds: Array
        # @param TotalCount: 上传成功文件数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileIds, :TotalCount, :RequestId

        def initialize(fileids=nil, totalcount=nil, requestid=nil)
          @FileIds = fileids
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户在平台的编号
        # @type UserId: String
        # @param Channel: 用户的来源渠道，一般不用传，特定场景根据接口说明传值
        # @type Channel: String
        # @param OpenId: 用户在渠道的编号，一般不用传，特定场景根据接口说明传值
        # @type OpenId: String
        # @param ClientIp: 用户真实IP，内部字段，暂未开放
        # @type ClientIp: String
        # @param ProxyIp: 用户代理IP，内部字段，暂未开放
        # @type ProxyIp: String

        attr_accessor :UserId, :Channel, :OpenId, :ClientIp, :ProxyIp
        extend Gem::Deprecate
        deprecate :Channel, :none, 2023, 12
        deprecate :Channel=, :none, 2023, 12
        deprecate :OpenId, :none, 2023, 12
        deprecate :OpenId=, :none, 2023, 12
        deprecate :ClientIp, :none, 2023, 12
        deprecate :ClientIp=, :none, 2023, 12
        deprecate :ProxyIp, :none, 2023, 12
        deprecate :ProxyIp=, :none, 2023, 12

        def initialize(userid=nil, channel=nil, openid=nil, clientip=nil, proxyip=nil)
          @UserId = userid
          @Channel = channel
          @OpenId = openid
          @ClientIp = clientip
          @ProxyIp = proxyip
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Channel = params['Channel']
          @OpenId = params['OpenId']
          @ClientIp = params['ClientIp']
          @ProxyIp = params['ProxyIp']
        end
      end

      # 用户的三要素：姓名，证件号，证件类型
      class UserThreeFactor < TencentCloud::Common::AbstractModel
        # @param Name: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        # @type Name: String
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String

        attr_accessor :Name, :IdCardType, :IdCardNumber

        def initialize(name=nil, idcardtype=nil, idcardnumber=nil)
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
        end

        def deserialize(params)
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
        end
      end

      # VerifyPdf请求参数结构体
      class VerifyPdfRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :FlowId, :Operator, :Agent

        def initialize(flowid=nil, operator=nil, agent=nil)
          @FlowId = flowid
          @Operator = operator
          @Agent = agent
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # VerifyPdf返回参数结构体
      class VerifyPdfResponse < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验签结果代码，代码的含义如下：

        # <ul><li>**1**：文件未被篡改，全部签名在腾讯电子签完成。</li>
        # <li>**2**：文件未被篡改，部分签名在腾讯电子签完成。</li>
        # <li>**3**：文件被篡改。</li>
        # <li>**4**：异常：文件内没有签名域。</li>
        # <li>**5**：异常：文件签名格式错误。</li></ul>
        # @type VerifyResult: Integer
        # @param PdfVerifyResults: 验签结果详情，每个签名域对应的验签结果。状态值如下
        # <ul><li> **1** :验签成功，在电子签签署</li>
        # <li> **2** :验签成功，在其他平台签署</li>
        # <li> **3** :验签失败</li>
        # <li> **4** :pdf文件没有签名域</li>
        # <li> **5** :文件签名格式错误</li></ul>
        # @type PdfVerifyResults: Array
        # @param VerifySerialNo: 验签序列号, 为11为数组组成的字符串
        # @type VerifySerialNo: String
        # @param PdfResourceMd5: 合同文件MD5哈希值
        # @type PdfResourceMd5: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VerifyResult, :PdfVerifyResults, :VerifySerialNo, :PdfResourceMd5, :RequestId

        def initialize(verifyresult=nil, pdfverifyresults=nil, verifyserialno=nil, pdfresourcemd5=nil, requestid=nil)
          @VerifyResult = verifyresult
          @PdfVerifyResults = pdfverifyresults
          @VerifySerialNo = verifyserialno
          @PdfResourceMd5 = pdfresourcemd5
          @RequestId = requestid
        end

        def deserialize(params)
          @VerifyResult = params['VerifyResult']
          unless params['PdfVerifyResults'].nil?
            @PdfVerifyResults = []
            params['PdfVerifyResults'].each do |i|
              pdfverifyresult_tmp = PdfVerifyResult.new
              pdfverifyresult_tmp.deserialize(i)
              @PdfVerifyResults << pdfverifyresult_tmp
            end
          end
          @VerifySerialNo = params['VerifySerialNo']
          @PdfResourceMd5 = params['PdfResourceMd5']
          @RequestId = params['RequestId']
        end
      end

      # 页面主题配置
      class WebThemeConfig < TencentCloud::Common::AbstractModel
        # @param DisplaySignBrandLogo: 是否显示页面底部电子签logo，取值如下：
        # <ul><li> **true**：页面底部显示电子签logo</li>
        # <li> **false**：页面底部不显示电子签logo（默认）</li></ul>
        # @type DisplaySignBrandLogo: Boolean
        # @param WebEmbedThemeColor: 主题颜色：
        # 支持十六进制颜色值以及RGB格式颜色值，例如：#D54941，rgb(213, 73, 65)
        # <br/>
        # @type WebEmbedThemeColor: String

        attr_accessor :DisplaySignBrandLogo, :WebEmbedThemeColor

        def initialize(displaysignbrandlogo=nil, webembedthemecolor=nil)
          @DisplaySignBrandLogo = displaysignbrandlogo
          @WebEmbedThemeColor = webembedthemecolor
        end

        def deserialize(params)
          @DisplaySignBrandLogo = params['DisplaySignBrandLogo']
          @WebEmbedThemeColor = params['WebEmbedThemeColor']
        end
      end

    end
  end
end

