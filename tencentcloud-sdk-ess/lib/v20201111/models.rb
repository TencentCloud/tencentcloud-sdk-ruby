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
        # @type Name: String
        # @param Mobile: 超管手机号，打码显示
        # 示例值：138****1569
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
        deprecate :AppId, :none, 2025, 5
        deprecate :AppId=, :none, 2025, 5
        deprecate :ProxyAppId, :none, 2025, 5
        deprecate :ProxyAppId=, :none, 2025, 5
        deprecate :ProxyOperator, :none, 2025, 5
        deprecate :ProxyOperator=, :none, 2025, 5

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
        # @param SignComponents: 【在用文件发起合同场景下才有效，模板发起场景下需要在模板中配置】合同中的该名签署方的签署控件列表，列表中可支持下列多种签署控件,控件的详细定义参考开发者中心的Component结构体
        # <ul><li> 个人签名/印章</li>
        # <li> 企业印章</li>
        # <li> 骑缝章等签署控件</li></ul>
        # @type SignComponents: Array
        # @param ApproverIdCardType: 签署方经办人的证件类型，支持以下类型，样式可以参考<a href="https://qian.tencent.com/developers/partner/id_card_support/" target="_blank">常见个人证件类型介绍</a>
        # <ul><li>ID_CARD 中国大陆居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)</li>
        # <li>OTHER_CARD_TYPE 其他证件</li></ul>




        # 注:
        # 1. <b>其他证件类型为白名单功能</b>，使用前请联系对接的客户经理沟通。
        # 2. 港澳居民来往内地通行证 和  港澳台居民居住证 类型的签署人<b>至少要过一次大陆的海关</b>才能使用。
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 签署方经办人的证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type ApproverIdCardNumber: String
        # @param NotifyType: 通知签署方经办人的方式,  有以下途径:
        # <ul><li>  **sms**  :  (默认)短信</li>
        # <li>   **none**   : 不通知</li></ul>

        # 注意：
        # `如果使用的是通过文件发起合同（CreateFlowByFiles），NotifyType必须 是 sms 才会发送短信`
        # @type NotifyType: String
        # @param ApproverRole: 收据场景设置签署人角色类型, 可以设置如下<b>类型</b>:
        # <ul><li> **1**  :收款人</li>
        # <li>   **2**   :开具人</li>
        # <li>   **3** :见证人</li></ul>
        # 注: `收据场景为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type ApproverRole: Integer
        # @param ApproverRoleName: 可以自定义签署人角色名：收款人、开具人、见证人等，长度不能超过20，只能由中文、字母、数字和下划线组成。

        # 注: `如果是用模板发起, 优先使用此处上传的, 如果不传则用模板的配置的`
        # @type ApproverRoleName: String
        # @param VerifyChannel: <font color="red">【已不再使用】</font>签署意愿确认渠道，默认为WEIXINAPP:人脸识别

        # 注: 该字段已不再使用, 请用ApproverSignTypes签署人签署合同时的认证方式代替, 新客户可请用ApproverSignTypes来设置
        # @type VerifyChannel: Array
        # @param PreReadTime: 签署方在签署合同之前，需要强制阅读合同的时长，可指定为3秒至300秒之间的任意值。

        # 若未指定阅读时间，则会按照合同页数大小计算阅读时间，计算规则如下：
        # <ul><li>合同页数少于等于2页，阅读时间为3秒；</li>
        # <li>合同页数为3到5页，阅读时间为5秒；</li>
        # <li>合同页数大于等于6页，阅读时间为10秒。</li></ul>
        # @type PreReadTime: Integer
        # @param UserId: 签署人userId，仅支持本企业的员工userid， 可在控制台组织管理处获得

        # 注：
        # 如果传进来的<font color="red">UserId已经实名， 则忽略ApproverName，ApproverIdCardType，ApproverIdCardNumber，ApproverMobile这四个入参</font>（会用此UserId实名的身份证和登录的手机号覆盖）
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
        # @param ApproverVerifyTypes: 【在用文件发起合同场景下才有效，模板发起场景下需要在模板中配置】指定个人签署方查看合同的校验方式,可以传值如下:
        # <ul><li>  **1**   : （默认）人脸识别,人脸识别后才能合同内容</li>
        # <li>  **2**  : 手机号验证, 用户手机号和参与方手机号(ApproverMobile)相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        # </li></ul>
        # 注:
        # <ul><li>如果合同流程设置ApproverVerifyType查看合同的校验方式,    则忽略此签署人的查看合同的校验方式</li>
        # <li>此字段可传多个校验方式</li></ul>

        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 【在用文件发起合同场景下才有效，模板发起场景下需要在模板中配置】您可以指定签署方签署合同的认证校验方式，可传递以下值：
        # <ul><li>**1**：人脸认证，需进行人脸识别成功后才能签署合同；</li>
        # <li>**2**：签署密码，需输入与用户在腾讯电子签设置的密码一致才能校验成功进行合同签署；</li>
        # <li>**3**：运营商三要素，需到运营商处比对手机号实名信息（名字、手机号、证件号）校验一致才能成功进行合同签署。（如果是港澳台客户，建议不要选择这个）</li>
        # <li>**5**：设备指纹识别，需要对比手机机主预留的指纹信息，校验一致才能成功进行合同签署。（iOS系统暂不支持该校验方式）</li>
        # <li>**6**：设备面容识别，需要对比手机机主预留的人脸信息，校验一致才能成功进行合同签署。（Android系统暂不支持该校验方式）</li></ul>


        # 默认为：
        # 1(人脸认证 ),2(签署密码),3(运营商三要素),5(设备指纹识别),6(设备面容识别)

        # 注：
        # 1. 用<font color='red'>模板创建合同场景</font>, 签署人的认证方式需要在配置模板的时候指定, <font color='red'>在创建合同重新指定无效</font>
        # 2. 运营商三要素认证方式对手机号运营商及前缀有限制,可以参考[运营商支持列表类](https://qian.tencent.com/developers/company/mobile_support)得到具体的支持说明
        # 3. 校验方式不允许只包含<font color='red'>设备指纹识别</font>和<font color='red'>设备面容识别</font>，至少需要再增加一种其他校验方式。
        # 4. <font color='red'>设备指纹识别</font>和<font color='red'>设备面容识别</font>只支持小程序使用，其他端暂不支持。
        # @type ApproverSignTypes: Array
        # @param ApproverNeedSignReview: 此签署人（员工或者个人）签署前，是否需要发起方企业审批，取值如下：
        # <ul><li>**false**：（默认）不需要审批，直接签署。</li>
        # <li>**true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li>如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li>如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>

        # 注：`此功能可用于与发起方企业内部的审批流程进行关联，支持手动、静默签署合同`

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/b14d5188ed0229d1401e74a9a49cab6d.png)
        # @type ApproverNeedSignReview: Boolean
        # @param AddSignComponentsLimits: 【在用文件发起合同场景下才有效】在调用[用PDF文件创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowByFiles)创建合同时,如果设置了外层参数SignBeanTag=1(允许签署过程中添加签署控件),则可通过此参数明确规定合同所使用的签署控件类型（骑缝章、普通章法人章等）和具体的印章（印章ID或者印章类型）或签名方式。

        # 注：`限制印章控件或骑缝章控件情况下,仅本企业签署方可以指定具体印章（通过传递ComponentValue,支持多个），他方企业或个人只支持限制控件类型。`
        # @type AddSignComponentsLimits: Array
        # @param SignInstructionContent: 签署须知：支持传入富文本，最长字数：500个中文字符
        # @type SignInstructionContent: String
        # @param Deadline: 签署人的签署截止时间，格式为Unix标准时间戳（秒）

        # 注: `若不设置此参数，则默认使用合同的截止时间，此参数暂不支持合同组子合同`
        # @type Deadline: Integer
        # @param Components: 【在用文件发起合同场景下才有效，模板发起场景下需要在模板中配置】签署人在合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # <ul><li>单行文本控件</li>
        # <li>多行文本控件</li>
        # <li>勾选框控件</li>
        # <li>数字控件</li>
        # <li>图片控件</li>
        # </ul>

        # 具体使用说明可参考[为签署方指定填写控件](https://qian.tencent.cn/developers/company/createFlowByFiles/#指定签署方填写控件)

        # 注：`此参数仅在通过文件发起合同或者合同组时生效`
        # @type Components: Array
        # @param SignEndpoints: 进入签署流程的限制，目前支持以下选项：
        # <ul><li> <b>空值（默认）</b> :无限制，可在任何场景进入签署流程。</li><li> <b>link</b> :选择此选项后，将无法通过控制台或电子签小程序列表进入填写或签署操作，仅可预览合同。填写或签署流程只能通过短信或发起方提供的专用链接进行。</li></ul>
        # @type SignEndpoints: Array

        attr_accessor :ApproverType, :ApproverName, :ApproverMobile, :OrganizationName, :SignComponents, :ApproverIdCardType, :ApproverIdCardNumber, :NotifyType, :ApproverRole, :ApproverRoleName, :VerifyChannel, :PreReadTime, :UserId, :ApproverSource, :CustomApproverTag, :ApproverOption, :ApproverVerifyTypes, :ApproverSignTypes, :ApproverNeedSignReview, :AddSignComponentsLimits, :SignInstructionContent, :Deadline, :Components, :SignEndpoints

        def initialize(approvertype=nil, approvername=nil, approvermobile=nil, organizationname=nil, signcomponents=nil, approveridcardtype=nil, approveridcardnumber=nil, notifytype=nil, approverrole=nil, approverrolename=nil, verifychannel=nil, prereadtime=nil, userid=nil, approversource=nil, customapprovertag=nil, approveroption=nil, approververifytypes=nil, approversigntypes=nil, approverneedsignreview=nil, addsigncomponentslimits=nil, signinstructioncontent=nil, deadline=nil, components=nil, signendpoints=nil)
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
          @Deadline = deadline
          @Components = components
          @SignEndpoints = signendpoints
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
          @Deadline = params['Deadline']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @SignEndpoints = params['SignEndpoints']
        end
      end

      # 签署方信息，发起合同后可获取到对应的签署方信息，如角色ID，角色名称
      class ApproverItem < TencentCloud::Common::AbstractModel
        # @param SignId: 签署方唯一编号
        # @type SignId: String
        # @param RecipientId: 签署方角色编号
        # @type RecipientId: String
        # @param ApproverRoleName: 签署方角色名称
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
        # @param CanEditApprover: 允许编辑签署人信息（嵌入式使用） 默认true-可以编辑 false-不可以编辑
        # @type CanEditApprover: Boolean
        # @param FillType: 签署人信息补充类型，默认无需补充。

        # <ul><li> **1** :  动态签署人（可发起合同后再补充签署人信息）注：`企业自动签不支持动态补充`</li></ul>

        # 注：
        # `使用动态签署人能力前，需登陆腾讯电子签控制台打开服务开关`
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
        # @param ForbidAddSignDate: 禁止在签署过程中添加签署日期控件
        #  <br/>前置条件：文件发起合同时，指定SignBeanTag=1（可以在签署过程中添加签署控件）：
        # <ul>
        # <li> 默认值：false，在开启：签署过程中添加签署控件时，添加签署控件会默认自带签署日期控件</li>
        # <li> 可选值：true，在开启：签署过程中添加签署控件时，添加签署控件不会自带签署日期控件</li>
        # </ul>
        # @type ForbidAddSignDate: Boolean

        attr_accessor :NoRefuse, :NoTransfer, :CanEditApprover, :FillType, :FlowReadLimit, :ForbidAddSignDate

        def initialize(norefuse=nil, notransfer=nil, caneditapprover=nil, filltype=nil, flowreadlimit=nil, forbidaddsigndate=nil)
          @NoRefuse = norefuse
          @NoTransfer = notransfer
          @CanEditApprover = caneditapprover
          @FillType = filltype
          @FlowReadLimit = flowreadlimit
          @ForbidAddSignDate = forbidaddsigndate
        end

        def deserialize(params)
          @NoRefuse = params['NoRefuse']
          @NoTransfer = params['NoTransfer']
          @CanEditApprover = params['CanEditApprover']
          @FillType = params['FillType']
          @FlowReadLimit = params['FlowReadLimit']
          @ForbidAddSignDate = params['ForbidAddSignDate']
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

      # 动态签署2.0合同参与人信息
      class ArchiveDynamicApproverData < TencentCloud::Common::AbstractModel
        # @param SignId: 签署方唯一编号，一个全局唯一的标识符，不同的流程不会出现冲突。

        # 可以使用签署方的唯一编号来生成签署链接（也可以通过RecipientId来生成签署链接）。
        # @type SignId: String
        # @param RecipientId: 签署方角色编号，签署方角色编号是用于区分同一个流程中不同签署方的唯一标识。不同的流程会出现同样的签署方角色编号。

        # 填写控件和签署控件都与特定的角色编号关联。
        # @type RecipientId: String

        attr_accessor :SignId, :RecipientId

        def initialize(signid=nil, recipientid=nil)
          @SignId = signid
          @RecipientId = recipientid
        end

        def deserialize(params)
          @SignId = params['SignId']
          @RecipientId = params['RecipientId']
        end
      end

      # ArchiveDynamicFlow请求参数结构体
      class ArchiveDynamicFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID, 为32位字符串。

        # 可登录腾讯电子签控制台，[点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)
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

      # ArchiveDynamicFlow返回参数结构体
      class ArchiveDynamicFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID
        # @type FlowId: String
        # @param Approvers: 动态签署人的参与人信息
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :Approvers, :RequestId

        def initialize(flowid=nil, approvers=nil, requestid=nil)
          @FlowId = flowid
          @Approvers = approvers
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              archivedynamicapproverdata_tmp = ArchiveDynamicApproverData.new
              archivedynamicapproverdata_tmp.deserialize(i)
              @Approvers << archivedynamicapproverdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 企业扩展服务授权列表详情
      class AuthInfoDetail < TencentCloud::Common::AbstractModel
        # @param Type: 扩展服务类型，和入参一致
        # @type Type: String
        # @param Name: 扩展服务名称
        # @type Name: String
        # @param HasAuthUserList: 授权员工列表
        # @type HasAuthUserList: Array
        # @param HasAuthOrganizationList: 授权企业列表（企业自动签时，该字段有值）
        # @type HasAuthOrganizationList: Array
        # @param AuthUserTotal: 授权员工列表总数
        # @type AuthUserTotal: Integer
        # @param AuthOrganizationTotal: 授权企业列表总数
        # @type AuthOrganizationTotal: Integer

        attr_accessor :Type, :Name, :HasAuthUserList, :HasAuthOrganizationList, :AuthUserTotal, :AuthOrganizationTotal

        def initialize(type=nil, name=nil, hasauthuserlist=nil, hasauthorganizationlist=nil, authusertotal=nil, authorganizationtotal=nil)
          @Type = type
          @Name = name
          @HasAuthUserList = hasauthuserlist
          @HasAuthOrganizationList = hasauthorganizationlist
          @AuthUserTotal = authusertotal
          @AuthOrganizationTotal = authorganizationtotal
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          unless params['HasAuthUserList'].nil?
            @HasAuthUserList = []
            params['HasAuthUserList'].each do |i|
              hasauthuser_tmp = HasAuthUser.new
              hasauthuser_tmp.deserialize(i)
              @HasAuthUserList << hasauthuser_tmp
            end
          end
          unless params['HasAuthOrganizationList'].nil?
            @HasAuthOrganizationList = []
            params['HasAuthOrganizationList'].each do |i|
              hasauthorganization_tmp = HasAuthOrganization.new
              hasauthorganization_tmp.deserialize(i)
              @HasAuthOrganizationList << hasauthorganization_tmp
            end
          end
          @AuthUserTotal = params['AuthUserTotal']
          @AuthOrganizationTotal = params['AuthOrganizationTotal']
        end
      end

      # 企业认证信息
      class AuthRecord < TencentCloud::Common::AbstractModel
        # @param OperatorName: 经办人姓名。
        # @type OperatorName: String
        # @param OperatorMobile: 经办人手机号。
        # @type OperatorMobile: String
        # @param AuthType: 认证授权方式：
        # <ul><li> **0**：未选择授权方式（默认值）</li>
        # <li> **1**：上传授权书</li>
        # <li> **2**：法人授权</li>
        # <li> **3**：法人认证</li></ul>
        # @type AuthType: Integer
        # @param AuditStatus: 企业认证授权书审核状态：
        # <ul><li> **0**：未提交授权书（默认值）</li>
        # <li> **1**：审核通过</li>
        # <li> **2**：审核驳回</li>
        # <li> **3**：审核中</li>
        # <li> **4**：AI识别中</li>
        # <li> **5**：客户确认AI信息</li></ul>
        # @type AuditStatus: Integer

        attr_accessor :OperatorName, :OperatorMobile, :AuthType, :AuditStatus

        def initialize(operatorname=nil, operatormobile=nil, authtype=nil, auditstatus=nil)
          @OperatorName = operatorname
          @OperatorMobile = operatormobile
          @AuthType = authtype
          @AuditStatus = auditstatus
        end

        def deserialize(params)
          @OperatorName = params['OperatorName']
          @OperatorMobile = params['OperatorMobile']
          @AuthType = params['AuthType']
          @AuditStatus = params['AuditStatus']
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
        # @param LicenseType: 设置用户自动签合同的扣费方式。

        # <ul><li><b>1</b>: (默认)使用合同份额进行扣减</li></ul>
        # @type LicenseType: Integer
        # @param JumpUrl: 开通成功后前端页面跳转的url，此字段的用法场景请联系客户经理确认。

        # 注：`仅支持H5开通场景`, `跳转链接仅支持 https:// , qianapp:// 开头`

        # 跳转场景：
        # <ul><li>**贵方H5 -> 腾讯电子签H5 -> 贵方H5** : JumpUrl格式: https://YOUR_CUSTOM_URL/xxxx，只需满足 https:// 开头的正确且合规的网址即可。</li>
        # <li>**贵方原生App -> 腾讯电子签H5 -> 贵方原生App** : JumpUrl格式: qianapp://YOUR_CUSTOM_URL，只需满足 qianapp:// 开头的URL即可。`APP实现方，需要拦截Webview地址跳转，发现url是qianapp:// 开头时跳转到原生页面。`APP拦截地址跳转可参考：<a href='https://stackoverflow.com/questions/41693263/android-webview-err-unknown-url-scheme'>Android</a>，<a href='https://razorpay.com/docs/payments/payment-gateway/web-integration/standard/webview/upi-intent-ios/'>IOS</a> </li></ul>

        # 成功结果返回：
        # 若贵方需要在跳转回时通过链接query参数提示开通成功，JumpUrl中的query应携带如下参数：`appendResult=qian`。这样腾讯电子签H5会在跳转回的url后面会添加query参数提示贵方签署成功，例如： qianapp://YOUR_CUSTOM_URL?action=sign&result=success&from=tencent_ess
        # @type JumpUrl: String

        attr_accessor :UserInfo, :CertInfoCallback, :UserDefineSeal, :SealImgCallback, :CallbackUrl, :VerifyChannels, :LicenseType, :JumpUrl
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2025, 5
        deprecate :CallbackUrl=, :none, 2025, 5

        def initialize(userinfo=nil, certinfocallback=nil, userdefineseal=nil, sealimgcallback=nil, callbackurl=nil, verifychannels=nil, licensetype=nil, jumpurl=nil)
          @UserInfo = userinfo
          @CertInfoCallback = certinfocallback
          @UserDefineSeal = userdefineseal
          @SealImgCallback = sealimgcallback
          @CallbackUrl = callbackurl
          @VerifyChannels = verifychannels
          @LicenseType = licensetype
          @JumpUrl = jumpurl
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
          @JumpUrl = params['JumpUrl']
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
        # <li>**10**: 拒签</li>
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

        # 通过<a href="https://qian.tencent.com/developers/companyApis/staffs/DescribeIntegrationEmployees" target="_blank">DescribeIntegrationEmployees</a>接口获取，也可登录腾讯电子签控制台查看
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/97cfffabb0caa61df16999cd395d7850.png)
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        deprecate :Token, :none, 2025, 5
        deprecate :Token=, :none, 2025, 5

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
        deprecate :ApplicationId, :none, 2025, 5
        deprecate :ApplicationId=, :none, 2025, 5
        deprecate :OrganizationId, :none, 2025, 5
        deprecate :OrganizationId=, :none, 2025, 5
        deprecate :SubOrganizationId, :none, 2025, 5
        deprecate :SubOrganizationId=, :none, 2025, 5

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

      # 撤销失败的流程信息
      class CancelFailureFlow < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param Reason: 撤销失败原因
        # @type Reason: String

        attr_accessor :FlowId, :Reason

        def initialize(flowid=nil, reason=nil)
          @FlowId = flowid
          @Reason = reason
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @Reason = params['Reason']
        end
      end

      # CancelFlow请求参数结构体
      class CancelFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID, 为32位字符串。

        # 可登录腾讯电子签控制台，[点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)
        # @type FlowId: String
        # @param CancelMessage: 撤销此合同流程的**撤销理由**，最多支持200个字符长度。只能由中文、字母、数字、中文标点和英文标点组成（不支持表情）。

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/f16cf37dbb3a09d6569877f093b92204/channel_ChannelCancelFlow.png)
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

      # CancelMultiFlowSignQRCode请求参数结构体
      class CancelMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param QrCodeId: 需要取消的签署码ID，为32位字符串。由[创建一码多签签署码](https://qian.tencent.com/developers/companyApis/startFlows/CreateMultiFlowSignQRCode/)返回
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
      # 1. 绝对定位方式 （可以通过 [PDF坐标计算助手](https://qian.tencent.com/developers/tools/template-editor)计算控件的坐标）
      # 2. 表单域(FIELD)定位方式
      # 3. 关键字(KEYWORD)定位方式，使用关键字定位时，请确保PDF原始文件内是关键字以文字形式保存在PDF文件中，不支持对图片内文字进行关键字查找
      class Component < TencentCloud::Common::AbstractModel
        # @param ComponentType: **如果是Component填写控件类型，则可选的字段为**：

        # <ul><li> <b>TEXT</b> : 普通文本控件，输入文本字符串；</li>
        # <li> <b>MULTI_LINE_TEXT</b> : 多行文本控件，输入文本字符串；</li>
        # <li> <b>CHECK_BOX</b> : 勾选框控件，若选中填写ComponentValue 填写 true或者 false 字符串；</li>
        # <li> <b>FILL_IMAGE</b> : 图片控件，ComponentValue 填写图片的资源 ID；</li>
        # <li> <b>DYNAMIC_TABLE</b> : 动态表格控件；</li>
        # <li> <b>ATTACHMENT</b> : 附件控件,ComponentValue 填写附件图片的资源 ID列表，以逗号分隔；</li>
        # <li> <b>SELECTOR</b> : 选择器控件，ComponentValue填写选择的字符串内容；</li>
        # <li> <b>DATE</b> : 日期控件；默认是格式化为xxxx年xx月xx日字符串；</li>
        # <li> <b>WATERMARK</b> : 水印控件；只能分配给发起方，必须设置ComponentExtra；</li>
        # <li> <b>DISTRICT</b> : 省市区行政区控件，ComponentValue填写省市区行政区字符串内容；</li></ul>

        # **如果是SignComponent签署控件类型，
        # 需要根据签署人的类型可选的字段为**
        # * 企业方
        # <ul><li> <b>SIGN_SEAL</b> : 签署印章控件；</li>
        # <li> <b>SIGN_DATE</b> : 签署日期控件；</li>
        # <li> <b>SIGN_SIGNATURE</b> : 用户签名控件；</li>
        # <li> <b>SIGN_PAGING_SEAL</b> : 骑缝章；若文件发起，需要对应填充ComponentPosY、ComponentWidth、ComponentHeight</li>
        # <li> <b>SIGN_OPINION</b> : 签署意见控件，用户需要根据配置的签署意见内容，完成对意见内容的确认；</li>
        # <li> <b>SIGN_VIRTUAL_COMBINATION</b> : 签批控件。内部最多组合4个特定控件（SIGN_SIGNATURE，SIGN_DATA,SIGN_MULTI_LINE_TEXT,SIGN_SELECTOR），本身不填充任何文字内容</li>
        # <li> <b>SIGN_MULTI_LINE_TEXT</b> : 多行文本，<font color="red">仅可用在签批控件内部作为组合控件，单独无法使用</font>，常用作批注附言</li>
        # <li> <b>SIGN_SELECTOR</b> : 选择器，<font color="red">仅可用在签批控件内部作为组合控件，单独无法使用</font>，常用作审批意见的选择</li>
        # <li> <b>SIGN_LEGAL_PERSON_SEAL</b> : 企业法定代表人控件。</li></ul>

        # * 个人方
        # <ul><li> <b>SIGN_DATE</b> : 签署日期控件；</li>
        # <li> <b>SIGN_SIGNATURE</b> : 用户签名控件；</li>
        # <li> <b>SIGN_VIRTUAL_COMBINATION</b> : 签批控件。内部最多组合4个特定控件（SIGN_SIGNATURE，SIGN_DATA,SIGN_MULTI_LINE_TEXT,SIGN_SELECTOR），本身不填充任何文字内容</li>
        # <li> <b>SIGN_MULTI_LINE_TEXT</b> : 多行文本，<font color="red">仅可用在签批控件内部作为组合控件，单独无法使用</font>，常用作批注附言</li>
        # <li> <b>SIGN_SELECTOR</b> : 选择器，<font color="red">仅可用在签批控件内部作为组合控件，单独无法使用</font>，常用作审批意见的选择</li>
        # <li> <b>SIGN_OPINION</b> : 签署意见控件，用户需要根据配置的签署意见内容，完成对意见内容的确认；</li></ul>

        # 注：` 表单域的控件不能作为印章和签名控件`
        # @type ComponentType: String
        # @param ComponentHeight: **在绝对定位方式和关键字定位方式下**，指定控件的高度， 控件高度是指控件在PDF文件中的高度，单位为pt（点）。
        # @type ComponentHeight: Float
        # @param ComponentWidth: **在绝对定位方式和关键字定位方式下**，指定控件宽度，控件宽度是指控件在PDF文件中的宽度，单位为pt（点）。
        # @type ComponentWidth: Float
        # @param ComponentPage: **在绝对定位方式方式下**，指定控件所在PDF文件上的页码
        # **在使用文件发起的情况下**，绝对定位方式的填写控件和签署控件支持使用负数来指定控件在PDF文件上的页码，使用负数时，页码从最后一页开始。例如：ComponentPage设置为-1，即代表在PDF文件的最后一页，以此类推。

        # 注：
        # 1. 页码编号是从<font color="red">1</font>开始编号的。
        # 2.  <font color="red">页面编号不能超过PDF文件的页码总数</font>。如果指定的页码超过了PDF文件的页码总数，在填写和签署时会出现错误，导致无法正常进行操作。
        # @type ComponentPage: Integer
        # @param ComponentPosX: **在绝对定位方式下**，可以指定控件横向位置的位置，单位为pt（点）。
        # @type ComponentPosX: Float
        # @param ComponentPosY: **在绝对定位方式下**，可以指定控件纵向位置的位置，单位为pt（点）。
        # @type ComponentPosY: Float
        # @param FileIndex: <font color="red">【暂未使用】</font>控件所属文件的序号（取值为：0-N）。 目前单文件的情况下，值一直为0
        # @type FileIndex: Integer
        # @param GenerateMode: 控件生成的方式：
        # <ul><li> <b>NORMAL</b> : 绝对定位控件</li>
        # <li> <b>FIELD</b> : 表单域</li>
        # <li> <b>KEYWORD</b> : 关键字（设置关键字时，请确保PDF原始文件内是关键字以文字形式保存在PDF文件中，不支持对图片内文字进行关键字查找）</li></ul>
        # @type GenerateMode: String
        # @param ComponentId: 控件唯一ID。

        # **在绝对定位方式方式下**，ComponentId为控件的ID，长度不能超过30，只能由中文、字母、数字和下划线组成，可以在后续的操作中使用该名称来引用控件。

        # **在关键字定位方式下**，ComponentId不仅为控件的ID，也是关键字整词。此方式下可以通过"^"来决定是否使用关键字整词匹配能力。

        # 例：

        # - 如传入的关键字<font color="red">"^甲方签署^"</font >，则会在PDF文件中有且仅有"甲方签署"关键字的地方（<font color="red">前后不能有其他字符</font >）进行对应操作。
        # - 如传入的关键字为<font color="red">"甲方签署</font >"，则PDF文件中每个出现关键字的位置（<font color="red">前后可以有其他字符</font >）都会执行相应操作。


        # 注：`控件ID可以在一个PDF中不可重复`

        # <a href="https://qcloudimg.tencent-cloud.cn/raw/93178569d07b4d7dbbe0967ae679e35c.png" target="_blank">点击查看ComponentId在模板编辑页面的位置</a>
        # @type ComponentId: String
        # @param ComponentName: **在绝对定位方式方式下**，ComponentName为控件名，长度不能超过20，只能由中文、字母、数字和下划线组成，可以在后续的操作中使用该名称来引用控件。

        # **在表单域定位方式下**，ComponentName不仅为控件名，也是表单域名称。

        # 注：`控件名可以在一个PDF中可以重复`

        # <a href="https://qcloudimg.tencent-cloud.cn/raw/93178569d07b4d7dbbe0967ae679e35c.png" target="_blank">点击查看ComponentName在模板页面的位置</a>
        # @type ComponentName: String
        # @param ComponentRequired: 如果是<b>填写控件</b>，ComponentRequired表示在填写页面此控件是否必填
        # <ul><li>false（默认）：可以不填写</li>
        # <li>true ：必须填写此填写控件</li></ul>
        # 如果是<b>签署控件</b>，签批控件中签署意见等可以不填写， 其他签署控件不受此字段影响
        # @type ComponentRequired: Boolean
        # @param ComponentRecipientId: **在通过接口拉取控件信息场景下**，为出参参数，此控件归属的参与方的角色ID角色（即RecipientId），**发起合同时候不要填写此字段留空即可**
        # @type ComponentRecipientId: String
        # @param ComponentExtra: **在所有的定位方式下**，控件的扩展参数，为<font color="red">JSON格式</font>，不同类型的控件会有部分非通用参数。

        # <font color="red">ComponentType为TEXT、MULTI_LINE_TEXT时</font>，支持以下参数：
        # <ul><li> <b>Font</b>：目前只支持黑体、宋体、仿宋</li>
        # <li> <b>FontSize</b>： 范围6 :72</li>
        # <li> <b>FontAlign</b>： Left/Right/Center，左对齐/居中/右对齐</li>
        # <li> <b>FontColor</b>：字符串类型，格式为RGB颜色数字</li></ul>
        # <b>参数样例</b>：`{"FontColor":"255,0,0","FontSize":12}`

        # <font color="red">ComponentType为DATE时</font>，支持以下参数：
        # <ul><li> <b>Font</b>：目前只支持黑体、宋体、仿宋</li>
        # <li> <b>FontSize</b>： 范围6 :72</li></ul>
        # <b>参数样例</b>：`{"FontColor":"255,0,0","FontSize":12}`

        # <font color="red">ComponentType为WATERMARK时</font>，支持以下参数：
        # <ul><li> <b>Font</b>：目前只支持黑体、宋体、仿宋</li>
        # <li> <b>FontSize</b>： 范围6 :24</li>
        # <li> <b>Opacity</b>： 透明度，范围0 :1</li>
        # <li> <b>Density</b>： 水印样式，1-宽松，2-标准（默认值），3-密集，</li>
        # <li> <b>SubType</b>： 水印类型：CUSTOM_WATERMARK-自定义内容，PERSON_INFO_WATERMARK-访问者信息</li></ul>
        # <b>参数样例</b>：`"{\"Font\":\"黑体\",\"FontSize\":20,\"Opacity\":0.1,\"Density\":2,\"SubType\":\"PERSON_INFO_WATERMARK\"}"`

        # <font color="red">ComponentType为FILL_IMAGE时</font>，支持以下参数：
        # <ul><li> <b>NotMakeImageCenter</b>：bool。是否设置图片居中。false：居中（默认）。 true : 不居中</li>
        # <li> <b>FillMethod</b> : int. 填充方式。0-铺满（默认）；1-等比例缩放</li></ul>

        # <font color="red">ComponentType为SIGN_SIGNATURE类型时</font>，可以通过**ComponentTypeLimit**参数控制签名方式
        # <ul><li> <b>HANDWRITE</b> :  需要实时手写的手写签名</li>
        # <li> <b>HANDWRITTEN_ESIGN</b> : 长效手写签名， 是使用保存到个人中心的印章列表的手写签名(并且包含HANDWRITE)</li>
        # <li> <b>OCR_ESIGN</b> : AI智能识别手写签名</li>
        # <li> <b>ESIGN</b> : 个人印章类型</li>
        # <li> <b>SYSTEM_ESIGN</b> : 系统签名（该类型可以在用户签署时根据用户姓名一键生成一个签名来进行签署）</li>
        # <li> <b>IMG_ESIGN</b> : 图片印章(该类型支持用户在签署将上传的PNG格式的图片作为签名)</li></ul>
        # <b>参考样例</b>：`{"ComponentTypeLimit": ["SYSTEM_ESIGN"]}`
        # 印章的对应关系参考下图
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/ee0498856c060c065628a0c5ba780d6b.jpg)<br><br>

        # <font color="red">ComponentType为SIGN_SEAL 或者 SIGN_PAGING_SEAL类型时</font>，可以通过**ComponentTypeLimit**参数控制签署方签署时要使用的印章类型，支持指定以下印章类型
        # <ul><li> <b>OFFICIAL</b> :  企业公章</li>
        # <li> <b>CONTRACT</b> : 合同专用章</li>
        # <li> <b>FINANCE</b> : 财务专用章</li>
        # <li> <b>PERSONNEL</b> : 人事专用章</li>
        # <li> <b>OTHER</b> : 其他</li>
        # </ul>
        # <b>参考样例</b>：`{\"ComponentTypeLimit\":[\"PERSONNEL\",\"FINANCE\"]}` 表示改印章签署区,客户需使用人事专用章或财务专用章盖章签署。<br><br>

        # <font color="red">ComponentType为SIGN_DATE时</font>，支持以下参数：
        # <ul><li> <b>Font</b> :字符串类型目前只支持"黑体"、"宋体"、"仿宋"，如果不填默认为"黑体"</li>
        # <li> <b>FontSize</b> : 数字类型，范围6-72，默认值为12</li>
        # <li> <b>FontAlign</b> : 字符串类型，可取Left/Right/Center，对应左对齐/居中/右对齐</li>
        # <li> <b>Format</b> : 字符串类型，日期格式，必须是以下五种之一 “yyyy m d”，”yyyy年m月d日”，”yyyy/m/d”，”yyyy-m-d”，”yyyy.m.d”。</li>
        # <li> <b>Gaps</b> : 字符串类型，仅在Format为“yyyy m d”时起作用，格式为用逗号分开的两个整数，例如”2,2”，两个数字分别是日期格式的前后两个空隙中的空格个数</li></ul>
        # 如果extra参数为空，默认为”yyyy年m月d日”格式的居中日期
        # 特别地，如果extra中Format字段为空或无法被识别，则extra参数会被当作默认值处理（Font，FontSize，Gaps和FontAlign都不会起效）
        # <b>参数样例</b>： ` "{"Format":"yyyy m d","FontSize":12,"Gaps":"2,2", "FontAlign":"Right"}"`

        # <font color="red">ComponentType为SIGN_SEAL、SIGN_SIGNATURE类型时</font>，支持以下参数：
        # <ul><li> <b>PageRanges</b> :PageRange的数组，通过PageRanges属性设置该印章在PDF所有页面上盖章（适用于标书在所有页面盖章的情况）</li></ul>
        # <b>参数样例</b>：` "{"PageRanges":[{"BeginPage":1,"EndPage":-1}]}"`

        # <font color="red">签署印章透明度功能设置，</font>当ComponentType为SIGN_SIGNATURE、SIGN_SEAL、SIGN_PAGING_SEAL、SIGN_LEGAL_PERSON_SEAL时，可以通过以下参数设置签署印章的透明度：
        # <ul><li> <b>Opacity</b>：印章透明度，支持范围：0.6-1，0.7表示70%的透明度，1表示无透明度</li></ul>
        # <b>参数样例</b>：`{"Opacity":0.7}`

        # <font color="red">签署印章大小功能设置，</font>当ComponentType为SIGN_SEAL、SIGN_PAGING_SEAL、SIGN_LEGAL_PERSON_SEAL时，可以通过以下参数设置签署时按照实际印章的大小进行签署，如果印章没有设置大小，那么默认会是4.2cm的印章大小：
        # <ul><li> <b>UseSealSize</b>：使用印章设置的大小盖章，true表示使用印章设置的大小盖章，false表示使用签署控件的大小进行盖章；不传则为false</li></ul>
        # <b>参数样例</b>：`{"UseSealSize":true}`

        # <font color="red">关键字模式下支持关键字找不到的情况下不进行报错的设置</font>
        # <ul><li> <b>IgnoreKeywordError</b> :1-关键字查找不到时不进行报错</li></ul>
        # 场景说明：如果使用关键字进行定位，但是指定的PDF文件中又没有设置的关键字时，发起合同会进行关键字是否存在的校验，如果关键字不存在，会进行报错返回。如果不希望进行报错，可以设置"IgnoreKeywordError"来忽略错误。请注意，如果关键字签署控件对应的签署方在整个PDF文件中一个签署控件都没有，还是会触发报错逻辑。
        # <b>参数样例</b>：` "{"IgnoreKeywordError":1}"`

        # <font color="red">ComponentType为SIGN_VIRTUAL_COMBINATION时</font>，支持以下参数：
        # <ul>
        # <li><b>Children:</b> 绝对定位模式下，用来指定此签批控件的组合子控件 </li>
        # <b>参数样例</b>：<br>`{"Children":["ComponentId_29","ComponentId_27","ComponentId_28","ComponentId_30"]}`
        # <li><b>ChildrenComponents:</b> 关键字定位模式下，用来指定此签批控件的组合子控件 </li>
        # ChildrenComponent结构体定义:
        # <table border="1">     <thead>         <tr>             <th>字段名称</th>             <th>类型</th>             <th>描述</th>         </tr>     </thead>     <tbody>         <tr>             <td>ComponentType</td>             <td>string</td>             <td>子控件类型-可选值:SIGN_SIGNATURE,SIGN_DATE,SIGN_SELECTOR,SIGN_MULTI_LINE_TEXT</td>         </tr>         <tr>             <td>ComponentName</td>             <td>string</td>             <td>子控件名称</td>         </tr>         <tr>             <td>Placeholder</td>             <td>string</td>             <td>子控件提示语</td>         </tr>         <tr>             <td>ComponentOffsetX</td>             <td>float</td>             <td>控件偏移位置X（相对于父控件（签批控件的ComponentX））</td>         </tr>         <tr>             <td>ComponentOffsetY</td>             <td>float</td>             <td>控件偏移位置Y 相对于父控件（签批控件的ComponentY））</td>         </tr>         <tr>             <td>ComponentWidth</td>             <td>float</td>             <td>控件宽</td>         </tr>         <tr>             <td>ComponentHeight</td>             <td>float</td>             <td>控件高</td>         </tr>         <tr>             <td>ComponentExtra</td>             <td>string</td>             <td>控件的附属信息，根据ComponentType设置</td>         </tr>     </tbody> </table>
        # <b>参数样例</b>：

        # 输入:
        # <pre>
        # {
        #     ChildrenComponents: [
        #         {
        #             ComponentType: SIGN_SIGNATURE,
        #             ComponentName: 个人签名,
        #             Placeholder: 请签名,
        #             ComponentOffsetX: 10,
        #             ComponentOffsetY: 30,
        #             ComponentWidth: 119,
        #             ComponentHeight: 43,
        #             ComponentExtra: {\ComponentTypeLimit\:[\SYSTEM_ESIGN\]}
        #         },
        #         {
        #             ComponentType: SIGN_SELECTOR,
        #             ComponentName: 是否同意此协议,
        #             Placeholder: ,
        #             ComponentOffsetX: 50,
        #             ComponentOffsetY: 130,
        #             ComponentWidth: 120,
        #             ComponentHeight: 43,
        #             ComponentExtra: {\Values\:[\同意\,\不同意\,\再想想\],\FontSize\:12,\FontAlign\:\Left\,\Font\:\黑体\,\MultiSelect\:false}
        #         },
        #         {
        #             ComponentType: SIGN_MULTI_LINE_TEXT,
        #             ComponentName: 批注附言,
        #             Placeholder: ,
        #             ComponentOffsetX: 150,
        #             ComponentOffsetY: 300,
        #             ComponentWidth: 200,
        #             ComponentHeight: 86,
        #             ComponentExtra:
        #         }
        #     ]
        # }
        # </pre>
        # </ul>

        # @type ComponentExtra: String
        # @param IsFormType: **在通过接口拉取控件信息场景下**，为出参参数，此控件是否通过表单域定位方式生成，默认false-不是，**发起合同时候不要填写此字段留空即可**
        # @type IsFormType: Boolean
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # <ul><li> <b>TEXT</b> : 文本内容</li>
        # <li> <b>MULTI_LINE_TEXT</b> : 文本内容，可以用  \n 来控制换行位置 </li>
        # <li> <b>CHECK_BOX</b> : true/false</li>
        # <li> <b>FILL_IMAGE、ATTACHMENT</b> : 附件的FileId，需要通过UploadFiles接口上传获取</li>
        # <li> <b>SELECTOR</b> : 选项值</li>
        # <li> <b>DYNAMIC_TABLE</b>  - 传入json格式的表格内容，详见说明：[数据表格](https://qian.tencent.com/developers/company/dynamic_table)</li>
        # <li> <b>DATE</b> : 格式化为：xxxx年xx月xx日（例如2024年05年28日）</li>
        # <li> <b>SIGN_SEAL</b> : 印章ID，于控制台查询获取， [点击查看在控制台上位置](https://qcloudimg.tencent-cloud.cn/raw/f7b0f2ea4a534aada4b893dbf9671eae.png)</li>
        # <li> <b>SIGN_PAGING_SEAL</b> : 可以指定印章ID，于控制台查询获取， [点击查看在控制台上位置](https://qcloudimg.tencent-cloud.cn/raw/f7b0f2ea4a534aada4b893dbf9671eae.png)</li></ul>


        # <b>控件值约束说明</b>：
        # <table> <thead> <tr> <th>特殊控件</th> <th>填写约束</th> </tr> </thead> <tbody> <tr> <td>企业全称控件</td> <td>企业名称中文字符中文括号</td> </tr> <tr> <td>统一社会信用代码控件</td> <td>企业注册的统一社会信用代码</td> </tr> <tr> <td>法人名称控件</td> <td>最大50个字符，2到25个汉字或者1到50个字母</td> </tr> <tr> <td>签署意见控件</td> <td>签署意见最大长度为50字符</td> </tr> <tr> <td>签署人手机号控件</td> <td>国内手机号 13,14,15,16,17,18,19号段长度11位</td> </tr> <tr> <td>签署人身份证控件</td> <td>合法的身份证号码检查</td> </tr> <tr> <td>控件名称</td> <td>控件名称最大长度为20字符，不支持表情</td> </tr> <tr> <td>单行文本控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>多行文本控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>勾选框控件</td> <td>选择填字符串true，不选填字符串false</td> </tr> <tr> <td>选择器控件</td> <td>同单行文本控件约束，填写选择值中的字符串</td> </tr> <tr> <td>数字控件</td> <td>请输入有效的数字(可带小数点)</td> </tr> <tr> <td>日期控件</td> <td>格式：yyyy年mm月dd日</td> </tr> <tr> <td>附件控件</td> <td>JPG或PNG图片，上传数量限制，1到6个，最大6个附件，填写上传的资源ID</td> </tr> <tr> <td>图片控件</td> <td>JPG或PNG图片，填写上传的图片资源ID</td> </tr> <tr> <td>邮箱控件</td> <td>有效的邮箱地址, w3c标准</td> </tr> <tr> <td>地址控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>省市区控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>性别控件</td> <td>选择值中的字符串</td> </tr> <tr> <td>学历控件</td> <td>选择值中的字符串</td> </tr> <tr> <td>水印控件</td> <td>水印控件设置为CUSTOM_WATERMARK类型时的水印内容</td> </tr> </tbody> </table>
        # 注：   `部分特殊控件需要在控制台配置模板形式创建`
        # @type ComponentValue: String
        # @param OffsetX: **如果控件是关键字定位方式**，可以对关键字定位出来的区域进行横坐标方向的调整，单位为pt（点）。例如，如果关键字定位出来的区域偏左或偏右，可以通过调整横坐标方向的参数来使控件位置更加准确。
        # 注意： `向左调整设置为负数， 向右调整设置成正数`
        # @type OffsetX: Float
        # @param OffsetY: **如果控件是关键字定位方式**，可以对关键字定位出来的区域进行纵坐标方向的调整，单位为pt（点）。例如，如果关键字定位出来的区域偏上或偏下，可以通过调整纵坐标方向的参数来使控件位置更加准确。
        # 注意： `向上调整设置为负数， 向下调整设置成正数`
        # @type OffsetY: Float
        # @param KeywordOrder: **如果控件是关键字定位方式**，指定关键字排序规则时，可以选择Positive或Reverse两种排序方式。
        # <ul><li> <b>Positive</b> :表示正序，即根据关键字在PDF文件内的顺序进行排列</li>
        # <li> <b>Reverse</b> :表示倒序，即根据关键字在PDF文件内的反序进行排列</li></ul>

        # 在指定KeywordIndexes时，如果使用Positive排序方式，0代表在PDF内查找内容时，查找到的第一个关键字；如果使用Reverse排序方式，0代表在PDF内查找内容时，查找到的最后一个关键字。
        # @type KeywordOrder: String
        # @param KeywordPage: **如果控件是关键字定位方式**，在KeywordPage中指定关键字页码时，将只会在该页码中查找关键字，非该页码的关键字将不会查询出来。如果不设置查找所有页面中的关键字。
        # @type KeywordPage: Integer
        # @param RelativeLocation: **如果控件是关键字定位方式**，关键字生成的区域的对齐方式， 可以设置下面的值
        # <ul><li> <b>Middle</b> :居中</li>
        # <li> <b>Below</b> :正下方</li>
        # <li> <b>Right</b> :正右方</li>
        # <li> <b>LowerRight</b> :右下角</li>
        # <li> <b>UpperRight</b> :右上角。</li></ul>
        # 示例：如果设置Middle的关键字盖章，则印章的中心会和关键字的中心重合，如果设置Below，则印章在关键字的正下方
        # @type RelativeLocation: String
        # @param KeywordIndexes: **如果控件是关键字定位方式**，关键字索引是指在PDF文件中存在多个相同的关键字时，通过索引指定使用哪一个关键字作为最后的结果。可以通过指定多个索引来同时使用多个关键字。例如，[0,2]表示使用PDF文件内第1个和第3个关键字位置作为最后的结果。

        # 注意：关键字索引是从0开始计数的
        # @type KeywordIndexes: Array
        # @param LockComponentValue: **web嵌入发起合同场景下**， 是否锁定填写和签署控件值不允许嵌入页面进行编辑
        # <ul><li>false（默认）：不锁定控件值，允许在页面编辑控件值</li>
        # <li>true：锁定控件值，在页面编辑控件值</li></ul>
        # @type LockComponentValue: Boolean
        # @param ForbidMoveAndDelete: **web嵌入发起合同场景下**，是否禁止移动和删除填写和签署控件
        # <ul><li> <b>false（默认）</b> :不禁止移动和删除控件</li>
        # <li> <b>true</b> : 可以移动和删除控件</li></ul>
        # @type ForbidMoveAndDelete: Boolean
        # @param ComponentDateFontSize: <font color="red">【暂未使用】</font>日期签署控件的字号，默认为 12
        # @type ComponentDateFontSize: Integer
        # @param ChannelComponentId: <font color="red">【暂未使用】</font>第三方应用集成平台模板控件 ID 标识
        # @type ChannelComponentId: String
        # @param ChannelComponentSource: <font color="red">【暂未使用】</font>第三方应用集成中子客企业控件来源。
        # <ul><li> <b>0</b> :平台指定；</li>
        # <li> <b>1</b> :用户自定义</li></ul>
        # @type ChannelComponentSource: Integer

        attr_accessor :ComponentType, :ComponentHeight, :ComponentWidth, :ComponentPage, :ComponentPosX, :ComponentPosY, :FileIndex, :GenerateMode, :ComponentId, :ComponentName, :ComponentRequired, :ComponentRecipientId, :ComponentExtra, :IsFormType, :ComponentValue, :OffsetX, :OffsetY, :KeywordOrder, :KeywordPage, :RelativeLocation, :KeywordIndexes, :LockComponentValue, :ForbidMoveAndDelete, :ComponentDateFontSize, :ChannelComponentId, :ChannelComponentSource

        def initialize(componenttype=nil, componentheight=nil, componentwidth=nil, componentpage=nil, componentposx=nil, componentposy=nil, fileindex=nil, generatemode=nil, componentid=nil, componentname=nil, componentrequired=nil, componentrecipientid=nil, componentextra=nil, isformtype=nil, componentvalue=nil, offsetx=nil, offsety=nil, keywordorder=nil, keywordpage=nil, relativelocation=nil, keywordindexes=nil, lockcomponentvalue=nil, forbidmoveanddelete=nil, componentdatefontsize=nil, channelcomponentid=nil, channelcomponentsource=nil)
          @ComponentType = componenttype
          @ComponentHeight = componentheight
          @ComponentWidth = componentwidth
          @ComponentPage = componentpage
          @ComponentPosX = componentposx
          @ComponentPosY = componentposy
          @FileIndex = fileindex
          @GenerateMode = generatemode
          @ComponentId = componentid
          @ComponentName = componentname
          @ComponentRequired = componentrequired
          @ComponentRecipientId = componentrecipientid
          @ComponentExtra = componentextra
          @IsFormType = isformtype
          @ComponentValue = componentvalue
          @OffsetX = offsetx
          @OffsetY = offsety
          @KeywordOrder = keywordorder
          @KeywordPage = keywordpage
          @RelativeLocation = relativelocation
          @KeywordIndexes = keywordindexes
          @LockComponentValue = lockcomponentvalue
          @ForbidMoveAndDelete = forbidmoveanddelete
          @ComponentDateFontSize = componentdatefontsize
          @ChannelComponentId = channelcomponentid
          @ChannelComponentSource = channelcomponentsource
        end

        def deserialize(params)
          @ComponentType = params['ComponentType']
          @ComponentHeight = params['ComponentHeight']
          @ComponentWidth = params['ComponentWidth']
          @ComponentPage = params['ComponentPage']
          @ComponentPosX = params['ComponentPosX']
          @ComponentPosY = params['ComponentPosY']
          @FileIndex = params['FileIndex']
          @GenerateMode = params['GenerateMode']
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
          @ComponentRequired = params['ComponentRequired']
          @ComponentRecipientId = params['ComponentRecipientId']
          @ComponentExtra = params['ComponentExtra']
          @IsFormType = params['IsFormType']
          @ComponentValue = params['ComponentValue']
          @OffsetX = params['OffsetX']
          @OffsetY = params['OffsetY']
          @KeywordOrder = params['KeywordOrder']
          @KeywordPage = params['KeywordPage']
          @RelativeLocation = params['RelativeLocation']
          @KeywordIndexes = params['KeywordIndexes']
          @LockComponentValue = params['LockComponentValue']
          @ForbidMoveAndDelete = params['ForbidMoveAndDelete']
          @ComponentDateFontSize = params['ComponentDateFontSize']
          @ChannelComponentId = params['ChannelComponentId']
          @ChannelComponentSource = params['ChannelComponentSource']
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

        # 1.当ComponentType 是 SIGN_SEAL 或者 SIGN_PAGING_SEAL 时可传入企业印章Id（支持多个）或者以下印章类型

        # <ul><li> <b>OFFICIAL</b> :  企业公章</li>
        # <li> <b>CONTRACT</b> : 合同专用章</li>
        # <li> <b>FINANCE</b> : 财务专用章</li>
        # <li> <b>PERSONNEL</b> : 人事专用章</li>
        # <li> <b>OTHER</b> : 其他</li>
        # </ul>

        # **注：`限制印章控件或骑缝章控件情况下,仅本企业签署方可以指定具体印章（通过传递ComponentValue,支持多个),他方企业签署人只能限制类型.若同时指定了印章类型和印章Id,以印章Id为主,印章类型会被忽略`**


        # 2.当ComponentType 是 SIGN_SIGNATURE 时可传入以下类型（支持多个）

        # <ul><li>HANDWRITE : 需要实时手写的手写签名</li>
        # <li>HANDWRITTEN_ESIGN : 长效手写签名， 是使用保存到个人中心的印章列表的手写签名(并且包含HANDWRITE)</li>
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
        # 列表中的流程(合同)编号不要重复.
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
        # @type UrlExpireOn: String
        # @param TaskId: 批量撤销任务编号，为32位字符串，可用于[查询批量撤销签署流程任务结果](https://qian.tencent.com/developers/companyApis/operateFlows/CreateBatchCancelFlowUrl) 或关联[批量撤销任务结果回调](https://qian.tencent.com/developers/company/callback_types_contracts_sign#%E4%B9%9D-%E6%89%B9%E9%87%8F%E6%92%A4%E9%94%80%E7%BB%93%E6%9E%9C%E5%9B%9E%E8%B0%83)
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchCancelFlowUrl, :FailMessages, :UrlExpireOn, :TaskId, :RequestId

        def initialize(batchcancelflowurl=nil, failmessages=nil, urlexpireon=nil, taskid=nil, requestid=nil)
          @BatchCancelFlowUrl = batchcancelflowurl
          @FailMessages = failmessages
          @UrlExpireOn = urlexpireon
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchCancelFlowUrl = params['BatchCancelFlowUrl']
          @FailMessages = params['FailMessages']
          @UrlExpireOn = params['UrlExpireOn']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchInitOrganizationUrl请求参数结构体
      class CreateBatchInitOrganizationUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param OperateTypes: 初始化操作类型
        # <ul>
        # <li>CREATE_SEAL : 创建印章</li>
        # <li>AUTH_JOIN_ORGANIZATION_GROUP : 加入集团企业</li>
        # <li>OPEN_AUTO_SIGN :开通企业自动签署</li>
        # <li>PARTNER_AUTO_SIGN_AUTH :合作方企业授权自动签</li>
        # </ul>
        # @type OperateTypes: Array
        # @param OrganizationIds: 批量操作的企业Id列表，最大支持50个
        # @type OrganizationIds: Array
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param AuthorizedOrganizationId: 被授权的合作方企业在电子签的企业电子签账号，当操作类型包含 PARTNER_AUTO_SIGN_AUTH （合作方企业授权自动签）时必传。

        # 企业电子签账号可在[电子签的网页端](https://qian.tencent.com/console/company-settings/company-center) ，于企业设置-企业信息菜单栏下复制获取。

        # ![企业电子签账号](https://qcloudimg.tencent-cloud.cn/raw/4e6b30ee92f00671f7f1c5bd127c27db.png)
        # @type AuthorizedOrganizationId: String

        attr_accessor :Operator, :OperateTypes, :OrganizationIds, :Agent, :AuthorizedOrganizationId

        def initialize(operator=nil, operatetypes=nil, organizationids=nil, agent=nil, authorizedorganizationid=nil)
          @Operator = operator
          @OperateTypes = operatetypes
          @OrganizationIds = organizationids
          @Agent = agent
          @AuthorizedOrganizationId = authorizedorganizationid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @OperateTypes = params['OperateTypes']
          @OrganizationIds = params['OrganizationIds']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @AuthorizedOrganizationId = params['AuthorizedOrganizationId']
        end
      end

      # CreateBatchInitOrganizationUrl返回参数结构体
      class CreateBatchInitOrganizationUrlResponse < TencentCloud::Common::AbstractModel
        # @param MiniAppPath: 小程序路径
        # @type MiniAppPath: String
        # @param OperateLongUrl: 操作长链
        # @type OperateLongUrl: String
        # @param OperateShortUrl: 操作短链
        # @type OperateShortUrl: String
        # @param QRCodeUrl: 操作二维码
        # @type QRCodeUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MiniAppPath, :OperateLongUrl, :OperateShortUrl, :QRCodeUrl, :RequestId

        def initialize(miniapppath=nil, operatelongurl=nil, operateshorturl=nil, qrcodeurl=nil, requestid=nil)
          @MiniAppPath = miniapppath
          @OperateLongUrl = operatelongurl
          @OperateShortUrl = operateshorturl
          @QRCodeUrl = qrcodeurl
          @RequestId = requestid
        end

        def deserialize(params)
          @MiniAppPath = params['MiniAppPath']
          @OperateLongUrl = params['OperateLongUrl']
          @OperateShortUrl = params['OperateShortUrl']
          @QRCodeUrl = params['QRCodeUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchOrganizationAuthorizationUrl请求参数结构体
      class CreateBatchOrganizationAuthorizationUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param AdminName: 组织机构超管姓名。 在注册流程中，必须是超管本人进行操作。
        # 此参数需要跟[创建企业批量认证链接](https://qian.tencent.com/developers/companyApis/organizations/CreateBatchOrganizationRegistrationTasks)中 AdminName 保持一致。
        # @type AdminName: String
        # @param AdminMobile: 组织机构超管手机号。 在注册流程中，必须是超管本人进行操作。此参数需要跟[创建企业批量认证链接](https://qian.tencent.com/developers/companyApis/organizations/CreateBatchOrganizationRegistrationTasks)中 Admin Mobile保持一致。
        # @type AdminMobile: String
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param SubTaskIds: 企业批量认证链接的子任务 SubTaskId，该 SubTaskId 是通过接口 查询企业批量认证链接 DescribeBatchOrganizationRegistrationUrls 获得。此参数需与超管个人三要素（AdminName，AdminMobile，AdminIdCardNumber）配合使用。若 SubTaskId 不属于传入的超级管理员，将进行筛选。
        # @type SubTaskIds: Array
        # @param AdminIdCardType: 组织机构超管证件类型支持以下类型
        # - ID_CARD : 中国大陆居民身份证 (默认值)
        # -  HONGKONG_AND_MACAO : 中国港澳居民来往内地通行证
        # - HONGKONG_MACAO_AND_TAIWAN : 中国港澳台居民居住证(格式同中国大陆居民身份证)
        # 此参数需要跟[创建企业批量认证链接](https://qian.tencent.com/developers/companyApis/organizations/CreateBatchOrganizationRegistrationTasks)中 AdminIdCardType保持一致。
        # @type AdminIdCardType: String
        # @param AdminIdCardNumber: 组织机构超管证件号。 在注册流程中，必须是超管本人进行操作。此参数需要跟[创建企业批量认证链接](https://qian.tencent.com/developers/companyApis/organizations/CreateBatchOrganizationRegistrationTasks)中 AdminIdCardNumber保持一致。
        # @type AdminIdCardNumber: String
        # @param Endpoint: 要跳转的链接类型<ul><li> **HTTP**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型  ，此时返回长链 (默认类型)</li><li>**HTTP_SHORT_URL**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型，此时返回短链</li><li>**APP**： 第三方APP或小程序跳转电子签小程序的path,  APP或者小程序跳转适合此类型</li><li>**QR_CODE**： 跳转电子签小程序的http_url的二维码形式,  可以在页面展示适合此类型</li></ul>
        # @type Endpoint: String

        attr_accessor :Operator, :AdminName, :AdminMobile, :Agent, :SubTaskIds, :AdminIdCardType, :AdminIdCardNumber, :Endpoint

        def initialize(operator=nil, adminname=nil, adminmobile=nil, agent=nil, subtaskids=nil, adminidcardtype=nil, adminidcardnumber=nil, endpoint=nil)
          @Operator = operator
          @AdminName = adminname
          @AdminMobile = adminmobile
          @Agent = agent
          @SubTaskIds = subtaskids
          @AdminIdCardType = adminidcardtype
          @AdminIdCardNumber = adminidcardnumber
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @AdminName = params['AdminName']
          @AdminMobile = params['AdminMobile']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SubTaskIds = params['SubTaskIds']
          @AdminIdCardType = params['AdminIdCardType']
          @AdminIdCardNumber = params['AdminIdCardNumber']
          @Endpoint = params['Endpoint']
        end
      end

      # CreateBatchOrganizationAuthorizationUrl返回参数结构体
      class CreateBatchOrganizationAuthorizationUrlResponse < TencentCloud::Common::AbstractModel
        # @param AuthUrl: 批量企业注册链接-单链接包含多条认证流，根据Endpoint的不同设置，返回不同的链接地址。失效时间：7天
        # 跳转链接, 链接的有效期根据企业,员工状态和终端等有区别, 可以参考下表
        # <table> <thead> <tr> <th>Endpoint</th> <th>示例</th> <th>链接有效期限</th> </tr> </thead>  <tbody>
        #  <tr> <td>HTTP</td> <td>https://res.ess.tencent.cn/cdn/h5-activity-dev/jump-mp.html?to=AUTHORIZATION_ENTERPRISE_FOR_BATCH_SUBMIT&shortKey=yDCHHURDfBxSB2rj2Bfa</td> <td>7天</td> </tr>
        # <tr> <td>HTTP_SHORT_URL</td> <td>https://test.essurl.cn/8gDKUBAWK8</td> <td>7天</td> </tr>
        # <tr> <td>APP</td> <td>pages/guide/index?to=AUTHORIZATION_ENTERPRISE_FOR_BATCH_SUBMIT&shortKey=yDCHpURDfR6iEkdpsDde</td> <td>7天</td> </tr><tr> <td>QR_CODE</td> <td>https://dyn.test.ess.tencent.cn/imgs/qrcode_urls/authorization_enterprise_for_batch_submit/yDCHHUUckpbdauq9UEjnoFDCCumAMmv1.png</td> <td>7天</td> </tr> </tbody> </table>
        # 注：
        # `1.创建的链接应避免被转义，如：&被转义为\u0026；如使用Postman请求后，请选择响应类型为 JSON，否则链接将被转义`
        # @type AuthUrl: String
        # @param ErrorMessages: 认证流认证失败信息
        # @type ErrorMessages: Array
        # @param ExpireTime: 链接过期时间，为 7 天后，创建时间，格式为Unix标准时间戳（秒）。
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthUrl, :ErrorMessages, :ExpireTime, :RequestId

        def initialize(authurl=nil, errormessages=nil, expiretime=nil, requestid=nil)
          @AuthUrl = authurl
          @ErrorMessages = errormessages
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @AuthUrl = params['AuthUrl']
          @ErrorMessages = params['ErrorMessages']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchOrganizationRegistrationTasks请求参数结构体
      class CreateBatchOrganizationRegistrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param RegistrationOrganizations: 组织机构注册信息。
        # 一次最多支持10条认证流
        # @type RegistrationOrganizations: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Endpoint: 要生成链接的类型, 可以选择的值如下:

        # <ul>
        # <li>(默认)PC: 生成PC端的链接</li>
        # <li>SHORT_URL: H5跳转到电子签小程序链接的短链形式, 一般用于发送短信中带的链接, 打开后进入腾讯电子签小程序</li>
        # <li>APP：生成小程序跳转链接</li>
        # <li>H5：生成H5跳转长链接</li>
        # <li>SHORT_H5：生成H5跳转短链</li>
        # </ul>
        # @type Endpoint: String

        attr_accessor :Operator, :RegistrationOrganizations, :Agent, :Endpoint

        def initialize(operator=nil, registrationorganizations=nil, agent=nil, endpoint=nil)
          @Operator = operator
          @RegistrationOrganizations = registrationorganizations
          @Agent = agent
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['RegistrationOrganizations'].nil?
            @RegistrationOrganizations = []
            params['RegistrationOrganizations'].each do |i|
              registrationorganizationinfo_tmp = RegistrationOrganizationInfo.new
              registrationorganizationinfo_tmp.deserialize(i)
              @RegistrationOrganizations << registrationorganizationinfo_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Endpoint = params['Endpoint']
        end
      end

      # CreateBatchOrganizationRegistrationTasks返回参数结构体
      class CreateBatchOrganizationRegistrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 生成注册链接的任务Id，
        # 根据这个id， 调用DescribeBatchOrganizationRegistrationUrls 获取生成的链接，进入认证流程
        # @type TaskId: String
        # @param ErrorMessages: 批量生成企业认证链接的详细错误信息，
        # 顺序与输入参数保持一致。
        # 若企业认证均成功生成，则不返回错误信息；
        # 若存在任何错误，则返回具体的错误描述。
        # @type ErrorMessages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ErrorMessages, :RequestId

        def initialize(taskid=nil, errormessages=nil, requestid=nil)
          @TaskId = taskid
          @ErrorMessages = errormessages
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ErrorMessages = params['ErrorMessages']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchQuickSignUrl请求参数结构体
      class CreateBatchQuickSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param FlowApproverInfo: 批量签署的流程签署人，其中姓名(ApproverName)、参与人类型(ApproverType)必传，手机号(ApproverMobile)和证件信息(ApproverIdCardType、ApproverIdCardNumber)可任选一种或全部传入。
        # <ul>
        # <li>若为个人参与方：ApproverType=1</li>
        # <li>若为企业参与方：ApproverType=0。同时 OrganizationName 参数需传入参与方企业名称。 </li>
        # </ul>
        # 注:
        # `1. 暂不支持签署人拖动签署控件功能，以及签批控件。`
        # `2. 当需要通过短信验证码签署时，手机号ApproverMobile需要与发起合同时填写的用户手机号一致。`
        # @type FlowApproverInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowCreateApprover`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId(子企业的组织ID)为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 批量签署的合同流程ID数组。
        # 注: `在调用此接口时，请确保合同流程均为本企业发起，且合同数量不超过100个。`
        # @type FlowIds: Array
        # @param FlowGroupId: 合同组编号
        # 注：`该参数和合同流程ID数组必须二选一`
        # @type FlowGroupId: String
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，此链接及支持http://和https://，最大长度1000个字符。(建议https协议)
        # @type JumpUrl: String
        # @param SignatureTypes: 指定批量签署合同的签名类型，可传递以下值：
        # <ul><li>**0**：手写签名(默认)</li>
        # <li>**1**：OCR楷体</li>
        # <li>**2**：姓名印章</li>
        # <li>**3**：图片印章</li>
        # <li>**4**：系统签名</li></ul>
        # 注：
        # <ul><li>默认情况下，签名类型为手写签名</li>
        # <li>您可以传递多种值，表示可用多种签名类型。</li>
        # <li>该参数会覆盖您合同中的签名类型，若您在发起合同时限定了签名类型(赋值签名类型给ComponentTypeLimit)，请将这些签名类型赋予此参数</li>
        # <li>若签署方为企业员工，此参数无效，签名方式将以合同中为准。</li>
        # </ul>
        # @type SignatureTypes: Array
        # @param ApproverSignTypes: 指定批量签署合同的认证校验方式，可传递以下值：
        # <ul><li>**1**：人脸认证(默认)，需进行人脸识别成功后才能签署合同</li>
        # <li>**2**：密码认证(默认)，需输入与用户在腾讯电子签设置的密码一致才能校验成功进行合同签署</li>
        # <li>**3**：运营商三要素，需到运营商处比对手机号实名信息(名字、手机号、证件号)校验一致才能成功进行合同签署。</li></ul>
        # 注：
        # <ul><li>默认情况下，认证校验方式为人脸和密码认证</li>
        # <li>您可以传递多种值，表示可用多种认证校验方式。</li></ul>
        # @type ApproverSignTypes: Array
        # @param SignTypeSelector: 生成H5签署链接时，您可以指定签署方签署合同的认证校验方式的选择模式，可传递一下值：
        # <ul><li>**0**：签署方自行选择，签署方可以从预先指定的认证方式中自由选择；</li>
        # <li>**1**：自动按顺序首位推荐，签署方无需选择，系统会优先推荐使用第一种认证方式。</li></ul>
        # 注：
        # `不指定该值时，默认为签署方自行选择。`
        # @type SignTypeSelector: Integer
        # @param FlowBatchUrlInfo: 批量签署合同相关信息，指定合同和签署方的信息，用于补充动态签署人。

        # 注: `若签署方为企业员工，暂不支持通过H5端进行动态签署人的补充`
        # @type FlowBatchUrlInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowBatchUrlInfo`
        # @param Intention: <b>只有在生成H5签署链接的情形下</b>（ 如调用<a href="https://qian.tencent.com/developers/partnerApis/operateFlows/ChannelCreateFlowSignUrl" target="_blank">获取H5签署链接</a>、<a href="https://qian.tencent.com/developers/partnerApis/operateFlows/ChannelCreateBatchQuickSignUrl" target="_blank">获取H5批量签署链接</a>等接口），该配置才会生效。  您可以指定H5签署视频核身的意图配置，选择问答模式或点头模式的语音文本。

        #  注意：
        # 1. 视频认证为<b>白名单功能，使用前请联系对接的客户经理沟通</b>。
        # 2. 使用视频认证时，<b>生成H5签署链接的时候必须将签署认证方式指定为人脸</b>（即ApproverSignTypes设置成人脸签署）。
        # 3. 签署完成后，可以通过<a href="https://qian.tencent.com/developers/partnerApis/flows/ChannelDescribeSignFaceVideo" target="_blank">查询签署认证人脸视频</a>获取到当时的视频。
        # @type Intention: :class:`Tencentcloud::Ess.v20201111.models.Intention`
        # @param CacheApproverInfo: 缓存签署人信息。在H5签署链接动态领取场景，首次填写后，选择缓存签署人信息，在下次签署人点击领取链接时，会自动将个人信息（姓名、身份证号、手机号）填入，否则需要每次手动填写。

        # 注: `若参与方为企业员工时，暂不支持对参与方信息进行缓存`
        # @type CacheApproverInfo: Boolean
        # @param CanBatchReject: 是否允许此链接中签署方批量拒签。
        #  <ul><li>false (默认): 不允许批量拒签</li> <li>true : 允许批量拒签。</li></ul>

        # 注：`合同组暂不支持批量拒签功能。`
        # @type CanBatchReject: Boolean
        # @param PresetApproverInfo: 	 预设的动态签署方的补充信息，仅匹配对应信息的签署方才能领取合同。暂时仅对个人参与方生效。
        # @type PresetApproverInfo: :class:`Tencentcloud::Ess.v20201111.models.PresetApproverInfo`

        attr_accessor :FlowApproverInfo, :Agent, :Operator, :FlowIds, :FlowGroupId, :JumpUrl, :SignatureTypes, :ApproverSignTypes, :SignTypeSelector, :FlowBatchUrlInfo, :Intention, :CacheApproverInfo, :CanBatchReject, :PresetApproverInfo

        def initialize(flowapproverinfo=nil, agent=nil, operator=nil, flowids=nil, flowgroupid=nil, jumpurl=nil, signaturetypes=nil, approversigntypes=nil, signtypeselector=nil, flowbatchurlinfo=nil, intention=nil, cacheapproverinfo=nil, canbatchreject=nil, presetapproverinfo=nil)
          @FlowApproverInfo = flowapproverinfo
          @Agent = agent
          @Operator = operator
          @FlowIds = flowids
          @FlowGroupId = flowgroupid
          @JumpUrl = jumpurl
          @SignatureTypes = signaturetypes
          @ApproverSignTypes = approversigntypes
          @SignTypeSelector = signtypeselector
          @FlowBatchUrlInfo = flowbatchurlinfo
          @Intention = intention
          @CacheApproverInfo = cacheapproverinfo
          @CanBatchReject = canbatchreject
          @PresetApproverInfo = presetapproverinfo
        end

        def deserialize(params)
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
          @FlowIds = params['FlowIds']
          @FlowGroupId = params['FlowGroupId']
          @JumpUrl = params['JumpUrl']
          @SignatureTypes = params['SignatureTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
          @SignTypeSelector = params['SignTypeSelector']
          unless params['FlowBatchUrlInfo'].nil?
            @FlowBatchUrlInfo = FlowBatchUrlInfo.new
            @FlowBatchUrlInfo.deserialize(params['FlowBatchUrlInfo'])
          end
          unless params['Intention'].nil?
            @Intention = Intention.new
            @Intention.deserialize(params['Intention'])
          end
          @CacheApproverInfo = params['CacheApproverInfo']
          @CanBatchReject = params['CanBatchReject']
          unless params['PresetApproverInfo'].nil?
            @PresetApproverInfo = PresetApproverInfo.new
            @PresetApproverInfo.deserialize(params['PresetApproverInfo'])
          end
        end
      end

      # CreateBatchQuickSignUrl返回参数结构体
      class CreateBatchQuickSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param FlowApproverUrlInfo: 签署人签署链接信息
        # @type FlowApproverUrlInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowApproverUrlInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

        # 注：
        # <ul>
        # <li>请确保和合同中填入的一致。</li>
        # <li>在动态签署人补充链接场景中，可以通过传入这个值，对补充的个人参与方信息进行限制。仅匹配传入姓名的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方。</li>
        # </ul>
        # @type Name: String
        # @param Mobile: 手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 请确认手机号所有方为此业务通知方。

        # 注：
        # <ul>
        # <li>请确保和合同中填入的一致,  若无法保持一致，请确保在发起和生成批量签署链接时传入相同的参与方证件信息。</li><li>在生成动态签署人补充链接场景中，可以通过传入此值，对补充的个人参与方信息进行限制。仅匹配传入手机号的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方。 </li>
        # </ul>
        # @type Mobile: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 中国大陆居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>

        # 注：
        # 1. `请确保和合同中填入的一致`。
        # 2. `在生成动态签署人补充链接场景中，可以通过传入此值，对补充的个人参与方信息进行限制。仅匹配传入证件类型的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方，且需要和证件号参数一同传递，不能单独进行限制。`
        # @type IdCardType: String
        # @param SignatureTypes: 指定批量签署合同的签名类型，可传递以下值：<ul><li>**0**：手写签名</li><li>**1**：OCR楷体</li><li>**2**：姓名印章</li><li>**3**：图片印章</li><li>**4**：系统签名</li><li>**5**：长效手写签名（包含手写签名）</li></ul>注：<ul><li>不传值的情况则计算所有合同中个人签署区的签名类型，规则如下：<ul><li>1.如果所有合同中所有的个人签署区方式包含多种则是手写</li><li>2.如果所有合同中所有个人签名区签名类型仅为一种则就是那一种签名方式（例如合同1有多个签署区都是指定OCR楷体，合同2中也是多个签署区都是指定OCR楷体...则使用OCR楷体）</li></ul></li><li>该参数会覆盖您合同中的签名类型，若您在发起合同时限定了签名类型(赋值签名类型给ComponentTypeLimit)，请将这些签名类型赋予此参数</li><li>若签署方为企业员工，此参数无效，签名方式将以合同中为准。</li></ul>
        # @type SignatureTypes: Array
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>

        # 注：
        # 1. `请确保和合同中填入的一致`。
        # 2. `在生成动态签署人补充链接场景中，可以通过传入此值，对补充的个人参与方信息进行限制。仅匹配传入证件号的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方。`
        # @type IdCardNumber: String
        # @param NotifyType: 通知用户方式：
        # <ul>
        # <li>**NONE** : 不通知（默认）</li>
        # <li>**SMS** : 短信通知（发送短信通知到Mobile参数所传的手机号）</li>
        # </ul>
        # @type NotifyType: String
        # @param FlowIds: 批量签署的合同流程ID数组。
        # 注: `在调用此接口时，请确保合同流程均为本企业发起，且合同数量不超过100个。`
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
        # @param FlowBatchUrlInfo: 批量签署合同相关信息，指定合同和签署方的信息，用于补充动态签署人。
        # @type FlowBatchUrlInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowBatchUrlInfo`
        # @param AutoJumpBack: 签署完成后是否自动回跳
        # <ul><li>false：否, 签署完成不会自动跳转回来(默认)</li><li>true：是, 签署完成会自动跳转回来</li></ul>

        # 注:
        # 1. 该参数<font color="red">只针对APP类型（电子签小程序跳转贵方小程序）场景</font> 的签署链接有效
        # 2. <font color="red">手机应用APP 或 微信小程序需要监控界面的返回走后序逻辑</font>, 微信小程序的文档可以参考[这个](https://developers.weixin.qq.com/miniprogram/dev/reference/api/App.html#onShow-Object-object)
        # 3. <font color="red">电子签小程序跳转贵方APP，不支持自动跳转，必需用户手动点击完成按钮（微信的限制）</font>
        # @type AutoJumpBack: Boolean
        # @param UrlUseEnv: <font color="red">仅公众号 H5 跳转电子签小程序时</font>，如需签署完成的“返回应用”功能，在获取签署链接接口的 UrlUseEnv 参数需设置为 **WeChatOfficialAccounts**，小程序签署成功的结果页面中才会出现“返回应用”按钮。在用户点击“返回应用”按钮之后，会返回到公众号 H5。

        # 参考 [公众号 H5 跳转电子签小程序](https://qian.tencent.com/developers/company/openwxminiprogram/#23-%E5%85%AC%E4%BC%97%E5%8F%B7-h5-%E4%B8%AD%E8%B7%B3%E8%BD%AC)。
        # @type UrlUseEnv: String
        # @param CanBatchReject: 是否允许此链接中签署方批量拒签。 <ul><li>false (默认): 不允许批量拒签</li> <li>true : 允许批量拒签。</li></ul>
        # 注：`1. 合同组暂不支持批量拒签功能。2. 如果是链接直接跳转至详情页（JumpToDetail参数为true），也不支持批量拒签功能`
        # @type CanBatchReject: Boolean

        attr_accessor :Operator, :Name, :Mobile, :Agent, :IdCardType, :SignatureTypes, :IdCardNumber, :NotifyType, :FlowIds, :OrganizationName, :JumpToDetail, :FlowBatchUrlInfo, :AutoJumpBack, :UrlUseEnv, :CanBatchReject

        def initialize(operator=nil, name=nil, mobile=nil, agent=nil, idcardtype=nil, signaturetypes=nil, idcardnumber=nil, notifytype=nil, flowids=nil, organizationname=nil, jumptodetail=nil, flowbatchurlinfo=nil, autojumpback=nil, urluseenv=nil, canbatchreject=nil)
          @Operator = operator
          @Name = name
          @Mobile = mobile
          @Agent = agent
          @IdCardType = idcardtype
          @SignatureTypes = signaturetypes
          @IdCardNumber = idcardnumber
          @NotifyType = notifytype
          @FlowIds = flowids
          @OrganizationName = organizationname
          @JumpToDetail = jumptodetail
          @FlowBatchUrlInfo = flowbatchurlinfo
          @AutoJumpBack = autojumpback
          @UrlUseEnv = urluseenv
          @CanBatchReject = canbatchreject
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
          @SignatureTypes = params['SignatureTypes']
          @IdCardNumber = params['IdCardNumber']
          @NotifyType = params['NotifyType']
          @FlowIds = params['FlowIds']
          @OrganizationName = params['OrganizationName']
          @JumpToDetail = params['JumpToDetail']
          unless params['FlowBatchUrlInfo'].nil?
            @FlowBatchUrlInfo = FlowBatchUrlInfo.new
            @FlowBatchUrlInfo.deserialize(params['FlowBatchUrlInfo'])
          end
          @AutoJumpBack = params['AutoJumpBack']
          @UrlUseEnv = params['UrlUseEnv']
          @CanBatchReject = params['CanBatchReject']
        end
      end

      # CreateBatchSignUrl返回参数结构体
      class CreateBatchSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 批量签署链接，以短链形式返回，短链的有效期参考回参中的 ExpiredTime。

        # 注:
        # 1. 非小程序和APP集成使用
        # 2. <font color="red">生成的链路后面不能再增加参数</font>（会出现覆盖链接中已有参数导致错误）
        # @type SignUrl: String
        # @param ExpiredTime: 链接过期时间以 Unix 时间戳格式表示，默认生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
        # @type ExpiredTime: Integer
        # @param MiniAppPath: 从客户小程序或者客户APP跳转至腾讯电子签小程序进行批量签署的跳转路径

        # 注:
        # 1. 小程序和APP集成使用
        # 2. <font color="red">生成的链路后面不能再增加参数</font>（会出现覆盖链接中已有参数导致错误）
        # @type MiniAppPath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :ResourceType, :ResourceName, :ResourceId, :Operator, :Agent, :Organization
        extend Gem::Deprecate
        deprecate :Organization, :none, 2025, 5
        deprecate :Organization=, :none, 2025, 5

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Operator: 本合同的发起人，<a href="https://qcloudimg.tencent-cloud.cn/raw/f850cfbe163a1cb38439a9f551c2505c.png" target="_blank">点击查看合同发起人展示的位置</a>

        # 注：支持填入集团子公司经办人 userId代发合同。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TemplateId: 用户配置的合同模板ID，会基于此模板创建合同文档，为32位字符串。

        # [点击查看模板Id在控制台上的位置](https://qcloudimg.tencent-cloud.cn/raw/253071cc2f7becb063c7cf71b37b7861.png)
        # @type TemplateId: String
        # @param FlowId: 合同流程ID，为32位字符串。
        # 此接口的合同流程ID需要由[创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlow)接口创建得到。
        # @type FlowId: String
        # @param FileNames: 文件名列表，单个文件名最大长度200个字符，暂时仅支持单文件发起。设置后流程对应的文件名称当前设置的值。
        # @type FileNames: Array
        # @param FormFields: 电子文档的填写控件的填充内容。具体方式可以参考[FormField](https://qian.tencent.com/developers/companyApis/dataTypes/#formfield)结构体的定义。
        # <ul>
        # <li>支持自动签传递印章，可通过指定自动签控件id，指定印章id来完成</li>
        # <li>附件控件支持传入图片、文件资源id，并将内容合成到合同文件中。支持的文件类型有doc、docx、xls、xlsx、html、jpg、jpeg、png、bmp、txt、pdf。需要注意如果传入的资源类型都是图片类型，图片资源会放置在合同文件的末尾，如果传入的资源有非图片类型资源，会将资源放置在附件控件所在页面的下一页。</li>
        # </ul>
        # 注：只有在控制台编辑模板时，<font color="red">归属给发起方</font>的填写控件（如下图）才能在创建文档的时候进行内容填充。
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/a54a76a58c454593d06d8e9883ecc9b3.png)
        # @type FormFields: Array
        # @param NeedPreview: 是否为预览模式，取值如下：
        # <ul><li> **false**：非预览模式（默认），会产生合同流程并返回合同流程编号FlowId。</li>
        # <li> **true**：预览模式，不产生合同流程，不返回合同流程编号FlowId，而是返回预览链接PreviewUrl，有效期为300秒，用于查看真实发起后合同的样子。 <font color="red">注意： 以预览模式创建的合同仅供查看，因此参与方无法进行签署操作</font> </li></ul>
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
        # @param ClientToken: 该字段已不再使用
        # @type ClientToken: String

        attr_accessor :Operator, :TemplateId, :FlowId, :FileNames, :FormFields, :NeedPreview, :PreviewType, :Agent, :ClientToken

        def initialize(operator=nil, templateid=nil, flowid=nil, filenames=nil, formfields=nil, needpreview=nil, previewtype=nil, agent=nil, clienttoken=nil)
          @Operator = operator
          @TemplateId = templateid
          @FlowId = flowid
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
          @TemplateId = params['TemplateId']
          @FlowId = params['FlowId']
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
        # `2.当使用的模板中存在动态表格控件时，预览结果中没有动态表格的填写内容,完整的预览链接需通过[合同文档合成完成回调](https://qian.tencent.com/developers/company/callback_types_contracts_sign/#%E4%B9%9D-%E5%90%88%E5%90%8C%E6%96%87%E6%A1%A3%E5%90%88%E6%88%90%E5%AE%8C%E6%88%90%E5%9B%9E%E8%B0%83)获取。
        # @type PreviewFileUrl: String
        # @param Approvers: 签署方信息，如角色ID、角色名称等
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateDynamicFlowApprover请求参数结构体
      class CreateDynamicFlowApproverRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。支持填入集团子公司经办人 userId 代发合同。注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串
        # @type FlowId: String
        # @param Approvers: 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。如果合同流程是有序签署，Approvers列表中参与人的顺序就是默认的签署顺序，请确保列表中参与人的顺序符合实际签署顺序。
        # @type Approvers: Array
        # @param Agent: 代理企业和员工的信息。在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：<ul><li> **E_PRESCRIPTION_AUTO_SIGN**：电子处方单（医疗自动签）  </li><li> **OTHER** :  通用场景</li></ul>注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String

        attr_accessor :Operator, :FlowId, :Approvers, :Agent, :AutoSignScene

        def initialize(operator=nil, flowid=nil, approvers=nil, agent=nil, autosignscene=nil)
          @Operator = operator
          @FlowId = flowid
          @Approvers = approvers
          @Agent = agent
          @AutoSignScene = autosignscene
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
              approverinfo_tmp = ApproverInfo.new
              approverinfo_tmp.deserialize(i)
              @Approvers << approverinfo_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @AutoSignScene = params['AutoSignScene']
        end
      end

      # CreateDynamicFlowApprover返回参数结构体
      class CreateDynamicFlowApproverResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串
        # @type FlowId: String
        # @param DynamicFlowApproverList: 补充动态合同签署人的结果数组
        # @type DynamicFlowApproverList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DynamicFlowApproverList, :RequestId

        def initialize(flowid=nil, dynamicflowapproverlist=nil, requestid=nil)
          @FlowId = flowid
          @DynamicFlowApproverList = dynamicflowapproverlist
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['DynamicFlowApproverList'].nil?
            @DynamicFlowApproverList = []
            params['DynamicFlowApproverList'].each do |i|
              dynamicflowapproverresult_tmp = DynamicFlowApproverResult.new
              dynamicflowapproverresult_tmp.deserialize(i)
              @DynamicFlowApproverList << dynamicflowapproverresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateEmbedWebUrl请求参数结构体
      class CreateEmbedWebUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # <br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param EmbedType: WEB嵌入资源类型，支持以下类型
        # <ul><li>CREATE_SEAL: 生成创建印章的嵌入页面</li>
        # <li>CREATE_TEMPLATE：生成创建模板的嵌入页面</li>
        # <li>MODIFY_TEMPLATE：生成编辑模板的嵌入页面</li>
        # <li>CREATE_CONTRACT_DRAFT_COOPEDIT：生成创建起草合同的嵌入页面</li>
        # <li>PREVIEW_TEMPLATE：生成预览模板的嵌入页面</li>
        # <li>PREVIEW_SEAL_LIST：生成预览印章列表的嵌入页面</li>
        # <li>PREVIEW_SEAL_DETAIL：生成预览印章详情的嵌入页面</li>
        # <li>EXTEND_SERVICE：生成拓展服务的嵌入页面</li>
        # <li>PREVIEW_FLOW：生成预览合同的嵌入页面（支持移动端）</li>
        # <li>PREVIEW_FLOW_DETAIL：生成查看合同详情的嵌入页面（仅支持PC端）</li></ul>

        # 注意：
        # 不同的嵌入类型，操作人需要的权限项不同（权限配置可参考[权限配置](https://qian.tencent.com/document/61355)）。
        # <table  border="1">
        # <thead>
        # <tr><th>EmbedType</th><th>权限</th></tr>
        # </thead>
        # <tbody>
        # <tr><th>CREATE_SEAL</th><th>印章管理-添加印章</th></tr>
        # <tr><th>CREATE_TEMPLATE</th><th>模板管理-创建模板</th></tr>
        # <tr><th>MODIFY_TEMPLATE</th><th>模板管理-编辑模板</th></tr>
        # <tr><th>CREATE_CONTRACT_DRAFT_COOPEDIT</th><th>合同管理-起草合同</th></tr>
        # <tr><th>PREVIEW_TEMPLATE</th><th>拥有下面三种权限的一种就行</br>
        # 模板管理-查询模板（本企业全部模板）</br>
        # 模板管理-查询模板（本部门全部模板）</br>
        # 模板管理-查询模板（本人创建模板）</th></tr>
        # <tr><th>PREVIEW_SEAL_LIST</th><th>印章管理</th></tr>
        # <tr><th>PREVIEW_SEAL_DETAIL</th><th>印章管理</th></tr>
        # <tr><th>EXTEND_SERVICE</th><th>无要求</th></tr>
        # <tr><th>PREVIEW_FLOW</th><th>是否是当前合同的参与方，或者发起方企业的法人、超管、合同管理员</th></tr>
        # <tr><th>PREVIEW_FLOW_DETAIL</th><th>是否是当前合同的参与方，或者发起方企业的法人、超管、合同管理员</th></tr>
        # </tbody>
        # </table>
        # @type EmbedType: String
        # @param BusinessId: WEB嵌入的业务资源ID

        # 当EmbedType取值
        # <ul>
        # <li>为PREVIEW_SEAL_DETAIL，必填，取值为印章id。</li>
        # <li>为CREATE_TEMPLATE，非必填，取值为资源id。*资源Id获取可使用接口[上传文件](https://qian.tencent.com/developers/companyApis/templatesAndFiles/UploadFiles)*</li>
        # <li>为MODIFY_TEMPLATE，PREVIEW_TEMPLATE，必填，取值为模板id。</li>
        # <li>为CREATE_CONTRACT_DRAFT_COOPEDIT，非必填，取值为资源 id。*资源Id获取可使用接口[上传文件](https://qian.tencent.com/developers/companyApis/templatesAndFiles/UploadFiles)*</li>
        # <li>为PREVIEW_FLOW，PREVIEW_FLOW_DETAIL，必填，取值为合同id。</li>
        # </ul>

        # 注意：
        #  1. CREATE_TEMPLATE中的BusinessId仅支持PDF文件类型， 如果您的文件不是PDF， 请使用接口[创建文件转换任务
        # ](https://qian.tencent.com/developers/companyApis/templatesAndFiles/CreateConvertTaskApi) 和[查询转换任务状态](https://qian.tencent.com/developers/companyApis/templatesAndFiles/GetTaskResultApi) 来进行转换成PDF资源。
        #  2. CREATE_CONTRACT_DRAFT_COOPEDIT中的BusinessId仅支持DOC 和 DOCX 的文件，并且大小不能超过 10M。
        # @type BusinessId: String
        # @param Agent: 代理企业和员工的信息。
        # <br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Reviewer: 抄送方信息
        # @type Reviewer: :class:`Tencentcloud::Ess.v20201111.models.ReviewerInfo`
        # @param Option: 个性化参数，用于控制页面展示内容
        # @type Option: :class:`Tencentcloud::Ess.v20201111.models.EmbedUrlOption`
        # @param UserData: <ul> <li>目前仅支持EmbedType=CREATE_TEMPLATE时传入</li> <li>指定后，创建，编辑，删除模板时，回调都会携带该userData</li> <li>支持的格式：json字符串的BASE64编码字符串</li> <li>示例：<ul>                  <li>json字符串：{"ComeFrom":"xxx"}，BASE64编码：eyJDb21lRnJvbSI6Inh4eCJ9</li>                  <li>eyJDb21lRnJvbSI6Inh4eCJ9，为符合要求的userData数据格式</li> </ul> </li> </ul>
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
        # 链接仅能使用一次
        # 建议：每次都用接口生成链接，保证链接的有效性
        # <br/>EmbedType=PREVIEW_CC_FLOW，该url为h5链接
        # @type WebUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateEmployeeChangeUrl请求参数结构体
      class CreateEmployeeChangeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 代理企业和员工的信息。<br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Operator: 执行本接口操作的员工信息。<br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserId: 待修改的员工UserId
        # @type UserId: String
        # @param NewMobile: 待修改的员工手机号
        # @type NewMobile: String

        attr_accessor :Agent, :Operator, :UserId, :NewMobile

        def initialize(agent=nil, operator=nil, userid=nil, newmobile=nil)
          @Agent = agent
          @Operator = operator
          @UserId = userid
          @NewMobile = newmobile
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @UserId = params['UserId']
          @NewMobile = params['NewMobile']
        end
      end

      # CreateEmployeeChangeUrl返回参数结构体
      class CreateEmployeeChangeUrlResponse < TencentCloud::Common::AbstractModel
        # @param MiniAppPath: 修改员工信息的小程序链接<br>跳转到腾讯电子签小程序的实现可以参考微信的官方文档:<a href="https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/launchApp.html" target="_blank">开放能力/打开 App</a>
        # @type MiniAppPath: String
        # @param ExpireTime: 链接过期时间以 Unix 时间戳格式表示，从生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。

        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MiniAppPath, :ExpireTime, :RequestId

        def initialize(miniapppath=nil, expiretime=nil, requestid=nil)
          @MiniAppPath = miniapppath
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @MiniAppPath = params['MiniAppPath']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateEmployeeQualificationSealQrCode请求参数结构体
      class CreateEmployeeQualificationSealQrCodeRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。 支持填入集团子公司经办人 userId 代发合同。  注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param HintText: 提示信息，扫码后此信息会展示给扫描用户，用来提示用户授权操作的目的，会在授权界面下面的位置展示。

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/8436ffd78c20605e6b133ff4bc4d2ac7.png)
        # @type HintText: String

        attr_accessor :Operator, :Agent, :HintText

        def initialize(operator=nil, agent=nil, hinttext=nil)
          @Operator = operator
          @Agent = agent
          @HintText = hinttext
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
          @HintText = params['HintText']
        end
      end

      # CreateEmployeeQualificationSealQrCode返回参数结构体
      class CreateEmployeeQualificationSealQrCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrcodeBase64: 二维码图片的Base64  注:  `此二维码的有效时间为7天，过期后需要重新生成新的二维码图片`
        # @type QrcodeBase64: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QrcodeBase64, :RequestId

        def initialize(qrcodebase64=nil, requestid=nil)
          @QrcodeBase64 = qrcodebase64
          @RequestId = requestid
        end

        def deserialize(params)
          @QrcodeBase64 = params['QrcodeBase64']
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

      # CreateFileCounterSign请求参数结构体
      class CreateFileCounterSignRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 需要加签的文件Id。

        # 注: `暂时只支持pdf类型的文件`
        # @type FileId: String
        # @param Operator: 执行本接口操作的员工信息。注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param SyncMode: 是否使用同步模式。
        # <ul><li><b>false</b>:异步模式，返回taskId。需要使用taskId轮询结果查询接口。</li>
        # <li><b>true</b>: 同步模式，此接口将直接返回taskId和ResultFileId(加签后文件id)。</li></ul>
        # 注：
        # 1. 当加签文件较大的时候，建议使用异步接口进行操作。否则文件加签时间过长会导致接口超时。
        # @type SyncMode: Boolean

        attr_accessor :FileId, :Operator, :Agent, :SyncMode

        def initialize(fileid=nil, operator=nil, agent=nil, syncmode=nil)
          @FileId = fileid
          @Operator = operator
          @Agent = agent
          @SyncMode = syncmode
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SyncMode = params['SyncMode']
        end
      end

      # CreateFileCounterSign返回参数结构体
      class CreateFileCounterSignResponse < TencentCloud::Common::AbstractModel
        # @param Status: 加签任务的状态。

        # <ul>
        # <li><b>PROCESSING</b>: 任务正在执行中。</li>
        # <li><b>FINISHED</b>: 已执行成功</li>
        # </ul>
        # @type Status: String
        # @param ResultFileId: 加签完成后新的文件Id
        # @type ResultFileId: String
        # @param TaskId: 异步模式下用于轮询状态的任务Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ResultFileId, :TaskId, :RequestId

        def initialize(status=nil, resultfileid=nil, taskid=nil, requestid=nil)
          @Status = status
          @ResultFileId = resultfileid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ResultFileId = params['ResultFileId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowApprovers请求参数结构体
      class CreateFlowApproversRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Approvers: 补充签署环节签署候选人信息。

        # 注：` 如果发起方指定的补充签署人是企业微信签署人（ApproverSource=WEWORKAPP），则需要提供企业微信UserId进行补充； 如果不指定，则使用姓名和手机号进行补充。`
        # @type Approvers: Array
        # @param FlowId: 合同流程ID，为32位字符串。
        # - 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # - 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # - <font color="red">不建议继续使用</font>，请使用<a href="https://qian.tencent.com/developers/companyApis/dataTypes/#fillapproverinfo/" target="_blank">补充签署人结构体</a>中的FlowId来指定需要补充的合同id
        # @type FlowId: String
        # @param FillApproverType: 签署人信息补充方式

        # <ul><li>**0**: <font color="red">或签合同</font>添加签署候选人，或签支持一个节点传多个签署人，不传值默认或签。
        # 注: `或签只支持企业签署方`</li>
        # <li>**1**: <font color="red">动态签署人合同</font>的添加签署候选人，支持企业或个人签署方。</li></ul>
        # @type FillApproverType: Integer
        # @param Initiator: 在可定制的企业微信通知中，发起人可以根据具体需求进行自定义设置。
        # @type Initiator: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FlowGroupId: 合同流程组的组ID, 在合同流程组场景下，生成合同流程组的签署链接时需要赋值
        # @type FlowGroupId: String

        attr_accessor :Operator, :Approvers, :FlowId, :FillApproverType, :Initiator, :Agent, :FlowGroupId

        def initialize(operator=nil, approvers=nil, flowid=nil, fillapprovertype=nil, initiator=nil, agent=nil, flowgroupid=nil)
          @Operator = operator
          @Approvers = approvers
          @FlowId = flowid
          @FillApproverType = fillapprovertype
          @Initiator = initiator
          @Agent = agent
          @FlowGroupId = flowgroupid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              fillapproverinfo_tmp = FillApproverInfo.new
              fillapproverinfo_tmp.deserialize(i)
              @Approvers << fillapproverinfo_tmp
            end
          end
          @FlowId = params['FlowId']
          @FillApproverType = params['FillApproverType']
          @Initiator = params['Initiator']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowGroupId = params['FlowGroupId']
        end
      end

      # CreateFlowApprovers返回参数结构体
      class CreateFlowApproversResponse < TencentCloud::Common::AbstractModel
        # @param FillError: 批量补充签署人时，补充失败的报错说明

        # 注:`目前仅补充动态签署人时会返回补充失败的原因`
        # @type FillError: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateFlowBlockchainEvidenceUrl请求参数结构体
      class CreateFlowBlockchainEvidenceUrlRequest < TencentCloud::Common::AbstractModel
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
        # @param ExpiredOn: 链接/二维码的有效截止时间，格式为unix时间戳。最长不超过 2099年12月31日（4102415999）。
        # 默认值为有效期为当前时间后7天。
        # @type ExpiredOn: Integer

        attr_accessor :Operator, :FlowId, :Agent, :ExpiredOn

        def initialize(operator=nil, flowid=nil, agent=nil, expiredon=nil)
          @Operator = operator
          @FlowId = flowid
          @Agent = agent
          @ExpiredOn = expiredon
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
          @ExpiredOn = params['ExpiredOn']
        end
      end

      # CreateFlowBlockchainEvidenceUrl返回参数结构体
      class CreateFlowBlockchainEvidenceUrlResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 二维码图片下载链接，下载链接有效时间5分钟，请尽快下载保存。
        # @type QrCode: String
        # @param Url: 查看短链，可直接点击短链查看证书。
        # @type Url: String
        # @param ExpiredOn: 二维码和短链的过期时间戳，过期时间默认为生成链接后7天。
        # @type ExpiredOn: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QrCode, :Url, :ExpiredOn, :RequestId

        def initialize(qrcode=nil, url=nil, expiredon=nil, requestid=nil)
          @QrCode = qrcode
          @Url = url
          @ExpiredOn = expiredon
          @RequestId = requestid
        end

        def deserialize(params)
          @QrCode = params['QrCode']
          @Url = params['Url']
          @ExpiredOn = params['ExpiredOn']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowByFiles请求参数结构体
      class CreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 本合同的发起人  <a href="https://qcloudimg.tencent-cloud.cn/raw/f850cfbe163a1cb38439a9f551c2505c.png" target="_blank">点击查看合同发起人展示的位置</a>

        # 注： 支持填入集团子公司经办人 userId 代发合同。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 自定义的合同流程的名称，长度不能超过200个字符，只能由中文汉字、中文标点、英文字母、阿拉伯数字、空格、小括号、中括号、中划线、下划线以及（,）、（;）、（.）、(&)、（+）组成。

        # 该名称还将用于合同签署完成后文件下载的默认文件名称。
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
        # 如果用户已经在控制台创建了自定义合同类型，可以将这里的类型名称传入。 如果没有创建，我们会自动给发起方公司创建此自定义合同类型。
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/36582cea03ae6a2559894844942b5d5c.png)
        # @type FlowType: String
        # @param Components: 发起的时候合成到PDF上的填写控件（需要提供填写控件的内容）
        # <ul><li> 单行文本控件      </li>
        # <li> 多行文本控件      </li>
        # <li> 勾选框控件        </li>
        # <li> 数字控件          </li>
        # <li> 图片控件          </li>
        # <li> 水印控件等          </li>
        # </ul>
        # @type Components: Array
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。

        # <b>注</b>
        # 1. 抄送人名单中可以包括自然人以及本企业的员工。
        # 2. 请确保抄送人列表中的成员不与任何签署人重复。
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
        # @param Unordered: 合同流程的签署顺序类型：
        # <ul><li> **false**：(默认)有序签署, 本合同多个参与人需要依次签署 </li>
        # <li> **true**：无序签署, 本合同多个参与人没有先后签署限制</li></ul>
        # @type Unordered: Boolean
        # @param UserData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 20480长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的[回调通知](https://qian.tencent.com/developers/company/callback_types_v2)模块。
        # @type UserData: String
        # @param RemindedOn: 合同到期提醒时间，为Unix标准时间戳（秒）格式，支持的范围是从发起时间开始到后10年内。

        # 到达提醒时间后，腾讯电子签会短信通知发起方企业合同提醒，可用于处理合同到期事务，如合同续签等事宜。
        # @type RemindedOn: Integer
        # @param ApproverVerifyType: 指定个人签署方查看合同的校验方式
        # <ul><li>   **VerifyCheck**  :（默认）人脸识别,人脸识别后才能合同内容 </li>
        # <li>   **MobileCheck**  :  手机号验证, 用户手机号和参与方手机号（ApproverMobile）相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）</li></ul>
        # @type ApproverVerifyType: String
        # @param SignBeanTag: 签署方签署控件（印章/签名等）的生成方式：
        # <ul><li> **0**：在合同流程发起时，由发起人指定签署方的签署控件的位置和数量。</li>
        # <li> **1**：签署方在签署时自行添加签署控件，可以拖动位置和控制数量。</li></ul>

        # 注：签署方在签署时自行添加签署控件仅支持电子签小程序或web控制台签署，不支持H5
        # @type SignBeanTag: Integer
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


        # ![image](https://qcloudimg.tencent-cloud.cn/raw/628f0928cac15d2e3bfa6088f53f5998.png)

        # @type CustomShowMap: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：电子处方单（医疗自动签）  </li><li> **OTHER** :  通用场景</li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param FlowDisplayType: 在短信通知、填写、签署流程中，若标题、按钮、合同详情等地方存在“合同”字样时，可根据此配置指定文案，可选文案如下：  <ul><li> <b>0</b> :合同（默认值）</li> <li> <b>1</b> :文件</li> <li> <b>2</b> :协议</li><li> <b>3</b> :文书</li></ul>效果如下:![FlowDisplayType](https://qcloudimg.tencent-cloud.cn/raw/e4a2c4d638717cc901d3dbd5137c9bbc.png)
        # @type FlowDisplayType: Integer
        # @param OpenDynamicSignFlow: 是否开启动态签署合同：
        # <ul><li> **true**：开启动态签署合同，可在签署过程中追加签署人（必须满足：1，发起方企业开启了模块化计费能力；2，发起方企业在企业应用管理中开启了动态签署人2.0能力）    。</li>
        # <li> **false**：不开启动态签署合同。</li></ul>
        # @type OpenDynamicSignFlow: Boolean

        attr_accessor :Operator, :FlowName, :Approvers, :FileIds, :FlowDescription, :FlowType, :Components, :CcInfos, :CcNotifyType, :NeedPreview, :PreviewType, :Deadline, :Unordered, :UserData, :RemindedOn, :ApproverVerifyType, :SignBeanTag, :CustomShowMap, :Agent, :AutoSignScene, :NeedSignReview, :FlowDisplayType, :OpenDynamicSignFlow

        def initialize(operator=nil, flowname=nil, approvers=nil, fileids=nil, flowdescription=nil, flowtype=nil, components=nil, ccinfos=nil, ccnotifytype=nil, needpreview=nil, previewtype=nil, deadline=nil, unordered=nil, userdata=nil, remindedon=nil, approververifytype=nil, signbeantag=nil, customshowmap=nil, agent=nil, autosignscene=nil, needsignreview=nil, flowdisplaytype=nil, opendynamicsignflow=nil)
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
          @Unordered = unordered
          @UserData = userdata
          @RemindedOn = remindedon
          @ApproverVerifyType = approververifytype
          @SignBeanTag = signbeantag
          @CustomShowMap = customshowmap
          @Agent = agent
          @AutoSignScene = autosignscene
          @NeedSignReview = needsignreview
          @FlowDisplayType = flowdisplaytype
          @OpenDynamicSignFlow = opendynamicsignflow
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
          @Unordered = params['Unordered']
          @UserData = params['UserData']
          @RemindedOn = params['RemindedOn']
          @ApproverVerifyType = params['ApproverVerifyType']
          @SignBeanTag = params['SignBeanTag']
          @CustomShowMap = params['CustomShowMap']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @AutoSignScene = params['AutoSignScene']
          @NeedSignReview = params['NeedSignReview']
          @FlowDisplayType = params['FlowDisplayType']
          @OpenDynamicSignFlow = params['OpenDynamicSignFlow']
        end
      end

      # CreateFlowByFiles返回参数结构体
      class CreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。

        # 注: 如果是预览模式(即NeedPreview设置为true)时, 此处不会有值返回。

        # [点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)
        # @type FlowId: String
        # @param PreviewUrl: 合同预览链接URL。

        # 注：如果是预览模式(即NeedPreview设置为true)时, 才会有此预览链接URL
        # @type PreviewUrl: String
        # @param Approvers: 签署方信息，如角色ID、角色名称等
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ReportType: 指定申请的报告类型，可选类型如下：
        # <ul><li> **0** :合同签署报告（默认）</li>
        # <li> **1** :公证处核验报告</li></ul>
        # @type ReportType: Integer
        # @param HybridEvidenceFlowFile: 混合云模式获取合同文件合并出证，默认：不同意。注：此参数需要联系腾讯电子签运营进行开通后生效
        # @type HybridEvidenceFlowFile: Boolean

        attr_accessor :Operator, :FlowId, :Agent, :ReportType, :HybridEvidenceFlowFile

        def initialize(operator=nil, flowid=nil, agent=nil, reporttype=nil, hybridevidenceflowfile=nil)
          @Operator = operator
          @FlowId = flowid
          @Agent = agent
          @ReportType = reporttype
          @HybridEvidenceFlowFile = hybridevidenceflowfile
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
          @ReportType = params['ReportType']
          @HybridEvidenceFlowFile = params['HybridEvidenceFlowFile']
        end
      end

      # CreateFlowEvidenceReport返回参数结构体
      class CreateFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportId: 出证报告 ID，可用于<a href="https://qian.tencent.com/developers/companyApis/certificate/DescribeFlowEvidenceReport" target="_blank">获取出证报告任务执行结果</a>查询出证任务结果和出证PDF的下载URL
        # @type ReportId: String
        # @param Status: 出证任务执行的状态, 状态含义如下：

        # <ul><li>**EvidenceStatusExecuting**：  出证任务在执行中</li>
        # <li>**EvidenceStatusSuccess**：  出证任务执行成功</li>
        # <li>**EvidenceStatusFailed** ： 出证任务执行失败</li></ul>
        # @type Status: String
        # @param ReportUrl: 此字段已经废除,不再使用.
        # 出证的PDF下载地址请调用DescribeChannelFlowEvidenceReport接口获取
        # @type ReportUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportId, :Status, :ReportUrl, :RequestId
        extend Gem::Deprecate
        deprecate :ReportUrl, :none, 2025, 5
        deprecate :ReportUrl=, :none, 2025, 5

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

      # CreateFlowForwards请求参数结构体
      class CreateFlowForwardsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TargetUserId: 合同对应参与方需要修改的目标经办人。其UserId可在企业控制台中组织管理里面找到。或者使用获取员工信息接口得到。

        # 注意：`需要保证目标经办人已经加入企业且已实名`
        # @type TargetUserId: String
        # @param FlowForwardInfos: 企业签署方的合同及对应签署方
        # @type FlowForwardInfos: Array
        # @param Agent: 代理企业和员工的信息。在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :TargetUserId, :FlowForwardInfos, :Agent

        def initialize(operator=nil, targetuserid=nil, flowforwardinfos=nil, agent=nil)
          @Operator = operator
          @TargetUserId = targetuserid
          @FlowForwardInfos = flowforwardinfos
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @TargetUserId = params['TargetUserId']
          unless params['FlowForwardInfos'].nil?
            @FlowForwardInfos = []
            params['FlowForwardInfos'].each do |i|
              flowforwardinfo_tmp = FlowForwardInfo.new
              flowforwardinfo_tmp.deserialize(i)
              @FlowForwardInfos << flowforwardinfo_tmp
            end
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateFlowForwards返回参数结构体
      class CreateFlowForwardsResponse < TencentCloud::Common::AbstractModel
        # @param FailedFlows: 失败的合同id以及错误详情
        # @type FailedFlows: Array
        # @param SuccessFlows: 成功的合同id
        # @type SuccessFlows: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedFlows, :SuccessFlows, :RequestId

        def initialize(failedflows=nil, successflows=nil, requestid=nil)
          @FailedFlows = failedflows
          @SuccessFlows = successflows
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FailedFlows'].nil?
            @FailedFlows = []
            params['FailedFlows'].each do |i|
              flowforwardresult_tmp = FlowForwardResult.new
              flowforwardresult_tmp.deserialize(i)
              @FailedFlows << flowforwardresult_tmp
            end
          end
          @SuccessFlows = params['SuccessFlows']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowGroupByFiles请求参数结构体
      class CreateFlowGroupByFilesRequest < TencentCloud::Common::AbstractModel
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

      # CreateFlowGroupByFiles返回参数结构体
      class CreateFlowGroupByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowGroupId: 合同(流程)组的合同组Id
        # @type FlowGroupId: String
        # @param FlowIds: 合同(流程)组中子合同列表.
        # @type FlowIds: Array
        # @param Approvers: 合同组签署方信息。
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowGroupId, :FlowIds, :Approvers, :RequestId

        def initialize(flowgroupid=nil, flowids=nil, approvers=nil, requestid=nil)
          @FlowGroupId = flowgroupid
          @FlowIds = flowids
          @Approvers = approvers
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowGroupId = params['FlowGroupId']
          @FlowIds = params['FlowIds']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              flowgroupapprovers_tmp = FlowGroupApprovers.new
              flowgroupapprovers_tmp.deserialize(i)
              @Approvers << flowgroupapprovers_tmp
            end
          end
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
        # @type FlowGroupId: String
        # @param FlowIds: 合同(流程)组中子合同列表.
        # @type FlowIds: Array
        # @param Approvers: 合同组签署人信息。
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowGroupId, :FlowIds, :Approvers, :RequestId

        def initialize(flowgroupid=nil, flowids=nil, approvers=nil, requestid=nil)
          @FlowGroupId = flowgroupid
          @FlowIds = flowids
          @Approvers = approvers
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowGroupId = params['FlowGroupId']
          @FlowIds = params['FlowIds']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              flowgroupapprovers_tmp = FlowGroupApprovers.new
              flowgroupapprovers_tmp.deserialize(i)
              @Approvers << flowgroupapprovers_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowGroupSignReview请求参数结构体
      class CreateFlowGroupSignReviewRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowGroupId: 合同(流程)组的合同组Id，为32位字符串，通过接口[通过多文件创建合同组签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowGroupByFiles) 或[通过多模板创建合同组签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowGroupByTemplates)创建合同组签署流程时返回。
        # @type FlowGroupId: String
        # @param ReviewType: 提交的审核结果，审核结果有下面三种情况
        # <ul><li><b>PASS</b>: 审核通过，合同流程可以继续执行签署等操作</li>
        # <li><b>REJECT</b>: 审核拒绝，合同流程不会变动</li>
        # <li><b>SIGN_REJECT</b>:拒签，合同流程直接结束，合同状态变为**合同拒签**</li></ul>
        # @type ReviewType: String
        # @param ApproverInfo: 需要进行签署审核的签署人的个人信息或企业信息，签署方的匹配方式按照以下规则:

        # 个人：二选一（选择其中任意信息组合即可）
        # <ul><li>姓名+证件类型+证件号</li>
        # <li>姓名+手机号</li></ul>

        # 企业：二选一  （选择其中任意信息组合即可）
        # <ul><li>企业名+姓名+证件类型+证件号</li>
        # <li>企业名+姓名+手机号</li></ul>
        # @type ApproverInfo: :class:`Tencentcloud::Ess.v20201111.models.NeedReviewApproverInfo`
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ReviewMessage: 审核不通过的原因，该字段的字符串长度不超过200个字符。

        # 注：`当审核类型（ReviewType）为审核拒绝（REJECT）或拒签（SIGN_REJECT）时，审核结果原因字段必须填写`
        # @type ReviewMessage: String

        attr_accessor :Operator, :FlowGroupId, :ReviewType, :ApproverInfo, :Agent, :ReviewMessage

        def initialize(operator=nil, flowgroupid=nil, reviewtype=nil, approverinfo=nil, agent=nil, reviewmessage=nil)
          @Operator = operator
          @FlowGroupId = flowgroupid
          @ReviewType = reviewtype
          @ApproverInfo = approverinfo
          @Agent = agent
          @ReviewMessage = reviewmessage
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowGroupId = params['FlowGroupId']
          @ReviewType = params['ReviewType']
          unless params['ApproverInfo'].nil?
            @ApproverInfo = NeedReviewApproverInfo.new
            @ApproverInfo.deserialize(params['ApproverInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ReviewMessage = params['ReviewMessage']
        end
      end

      # CreateFlowGroupSignReview返回参数结构体
      class CreateFlowGroupSignReviewResponse < TencentCloud::Common::AbstractModel
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
        # @param ForbidAddApprover:  禁止添加签署方，若为true则在发起流程的可嵌入页面隐藏“添加签署人按钮”
        # @type ForbidAddApprover: Boolean
        # @param ForbidEditApprover: 是否可以编辑签署人包括新增，修改，删除
        # <ul><li>（默认） false -可以编辑签署人</li> <li> true - 禁止编辑签署人</li></ul>

        # 注意：如果设置参数为  true， 则 参数签署人 [FlowApproverList](https://qian.tencent.com/developers/partnerApis/embedPages/ChannelCreatePrepareFlow) 不能为空
        # @type ForbidEditApprover: Boolean
        # @param ForbidEditFlowProperties:   禁止设置设置签署流程属性 (顺序、合同签署认证方式等)，若为true则在发起流程的可嵌入页面隐藏签署流程设置面板
        # @type ForbidEditFlowProperties: Boolean
        # @param HideComponentTypes: 在发起流程的可嵌入页面要隐藏的控件列表，和 ShowComponentTypes 参数 只能二选一使用，具体的控件类型如下
        # <ul><li>SIGN_SIGNATURE : 个人签名/印章</li>
        # <li>SIGN_SEAL : 企业印章</li>
        # <li>SIGN_PAGING_SEAL : 骑缝章</li>
        # <li>SIGN_LEGAL_PERSON_SEAL : 法定代表人章</li>
        # <li>SIGN_APPROVE : 签批</li>
        # <li>SIGN_OPINION : 签署意见</li>
        # <li>BUSI-FULL-NAME  : 企业全称</li>
        # <li>BUSI-CREDIT-CODE : 统一社会信用代码</li>
        # <li>BUSI-LEGAL-NAME : 法人/经营者姓名</li>
        # <li>PERSONAL-NAME : 签署人姓名</li>
        # <li>PERSONAL-MOBILE : 签署人手机号</li>
        # <li>PERSONAL-IDCARD-TYPE : 签署人证件类型</li>
        # <li>PERSONAL-IDCARD : 签署人证件号</li>
        # <li>TEXT : 单行文本</li>
        # <li>MULTI_LINE_TEXT : 多行文本</li>
        # <li>CHECK_BOX : 勾选框</li>
        # <li>SELECTOR : 选择器</li>
        # <li>DIGIT : 数字</li>
        # <li>DATE : 日期</li>
        # <li>FILL_IMAGE : 图片</li>
        # <li>ATTACHMENT : 附件</li>
        # <li>EMAIL : 邮箱</li>
        # <li>LOCATION : 地址</li>
        # <li>EDUCATION : 学历</li>
        # <li>GENDER : 性别</li>
        # <li>DISTRICT : 省市区</li></ul>
        # @type HideComponentTypes: Array
        # @param ShowComponentTypes: 在发起流程的可嵌入页面要显示的控件列表，和 HideComponentTypes 参数 只能二选一使用，具体的控件类型如下
        # <ul><li>SIGN_SIGNATURE : 个人签名/印章</li>
        # <li>SIGN_SEAL : 企业印章</li>
        # <li>SIGN_PAGING_SEAL : 骑缝章</li>
        # <li>SIGN_LEGAL_PERSON_SEAL : 法定代表人章</li>
        # <li>SIGN_APPROVE : 签批</li>
        # <li>SIGN_OPINION : 签署意见</li>
        # <li>BUSI-FULL-NAME  : 企业全称</li>
        # <li>BUSI-CREDIT-CODE : 统一社会信用代码</li>
        # <li>BUSI-LEGAL-NAME : 法人/经营者姓名</li>
        # <li>PERSONAL-NAME : 签署人姓名</li>
        # <li>PERSONAL-MOBILE : 签署人手机号</li>
        # <li>PERSONAL-IDCARD-TYPE : 签署人证件类型</li>
        # <li>PERSONAL-IDCARD : 签署人证件号</li>
        # <li>TEXT : 单行文本</li>
        # <li>MULTI_LINE_TEXT : 多行文本</li>
        # <li>CHECK_BOX : 勾选框</li>
        # <li>SELECTOR : 选择器</li>
        # <li>DIGIT : 数字</li>
        # <li>DATE : 日期</li>
        # <li>FILL_IMAGE : 图片</li>
        # <li>ATTACHMENT : 附件</li>
        # <li>EMAIL : 邮箱</li>
        # <li>LOCATION : 地址</li>
        # <li>EDUCATION : 学历</li>
        # <li>GENDER : 性别</li>
        # <li>DISTRICT : 省市区</li></ul>
        # @type ShowComponentTypes: Array
        # @param ResultPageConfig: 发起流程的可嵌入页面结果页配置
        # @type ResultPageConfig: Array
        # @param SignComponentConfig: 签署控件的配置信息，用在嵌入式发起的页面配置，包括
        #  - 签署控件 是否默认展示日期.
        # @type SignComponentConfig: :class:`Tencentcloud::Ess.v20201111.models.SignComponentConfig`
        # @param ForbidEditWatermark: 是否禁止编辑（展示）水印控件属性
        # <ul><li>（默认） false -否</li> <li> true - 禁止编辑</li></ul>
        # @type ForbidEditWatermark: Boolean

        attr_accessor :CanEditFlow, :CanEditFormField, :HideShowFlowName, :HideShowFlowType, :HideShowDeadline, :CanSkipAddApprover, :SkipUploadFile, :ForbidEditFillComponent, :CustomCreateFlowDescription, :ForbidAddApprover, :ForbidEditApprover, :ForbidEditFlowProperties, :HideComponentTypes, :ShowComponentTypes, :ResultPageConfig, :SignComponentConfig, :ForbidEditWatermark

        def initialize(caneditflow=nil, caneditformfield=nil, hideshowflowname=nil, hideshowflowtype=nil, hideshowdeadline=nil, canskipaddapprover=nil, skipuploadfile=nil, forbideditfillcomponent=nil, customcreateflowdescription=nil, forbidaddapprover=nil, forbideditapprover=nil, forbideditflowproperties=nil, hidecomponenttypes=nil, showcomponenttypes=nil, resultpageconfig=nil, signcomponentconfig=nil, forbideditwatermark=nil)
          @CanEditFlow = caneditflow
          @CanEditFormField = caneditformfield
          @HideShowFlowName = hideshowflowname
          @HideShowFlowType = hideshowflowtype
          @HideShowDeadline = hideshowdeadline
          @CanSkipAddApprover = canskipaddapprover
          @SkipUploadFile = skipuploadfile
          @ForbidEditFillComponent = forbideditfillcomponent
          @CustomCreateFlowDescription = customcreateflowdescription
          @ForbidAddApprover = forbidaddapprover
          @ForbidEditApprover = forbideditapprover
          @ForbidEditFlowProperties = forbideditflowproperties
          @HideComponentTypes = hidecomponenttypes
          @ShowComponentTypes = showcomponenttypes
          @ResultPageConfig = resultpageconfig
          @SignComponentConfig = signcomponentconfig
          @ForbidEditWatermark = forbideditwatermark
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
          @ForbidAddApprover = params['ForbidAddApprover']
          @ForbidEditApprover = params['ForbidEditApprover']
          @ForbidEditFlowProperties = params['ForbidEditFlowProperties']
          @HideComponentTypes = params['HideComponentTypes']
          @ShowComponentTypes = params['ShowComponentTypes']
          unless params['ResultPageConfig'].nil?
            @ResultPageConfig = []
            params['ResultPageConfig'].each do |i|
              createresultpageconfig_tmp = CreateResultPageConfig.new
              createresultpageconfig_tmp.deserialize(i)
              @ResultPageConfig << createresultpageconfig_tmp
            end
          end
          unless params['SignComponentConfig'].nil?
            @SignComponentConfig = SignComponentConfig.new
            @SignComponentConfig.deserialize(params['SignComponentConfig'])
          end
          @ForbidEditWatermark = params['ForbidEditWatermark']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Operator: 本合同的发起人，<a href="https://qcloudimg.tencent-cloud.cn/raw/f850cfbe163a1cb38439a9f551c2505c.png" target="_blank">点击查看合同发起人展示的位置</a>

        # 注： 支持填入集团子公司经办人 userId 代发合同。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 自定义的合同流程的名称，长度不能超过200个字符，只能由中文汉字、中文标点、英文字母、阿拉伯数字、空格、小括号、中括号、中划线、下划线以及（,）、（;）、（.）、(&)、（+）组成。

        # 该名称还将用于合同签署完成后文件下载的默认文件名称。
        # @type FlowName: String
        # @param Approvers: 合同流程的参与方列表，最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的ApproverInfo结构体。

        # 注:
        # <font color="red" > <b> 在发起流程时，需要保证 approver 中的顺序与模板定义顺序一致，否则会发起失败。
        # 例如，如果模板中定义的第一个参与人是个人用户，第二个参与人是企业员工，则在 approver 中传参时，第一个也必须是个人用户，第二个参与人必须是企业员工。</b></font>

        # [点击查看模板参与人顺序定义位置](https://qcloudimg.tencent-cloud.cn/raw/d14457b48cc66b29262ccb9d7b3ed556.png)
        # @type Approvers: Array
        # @param FlowDescription: 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        # @type FlowDescription: String
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        # 此合同类型需要跟模板配置的合同类型保持一致。
        # @type FlowType: String
        # @param ClientToken: 该字段已不再使用
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
        # @param CustomShowMap: 您可以自定义**腾讯电子签小程序合同列表页**展示的合同内容模板，模板中支持以下变量：
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

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/628f0928cac15d2e3bfa6088f53f5998.png)

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

        # <b>注</b>
        # 1. 抄送人名单中可以包括自然人以及本企业的员工。
        # 2. 请确保抄送人列表中的成员不与任何签署人重复。
        # @type CcInfos: Array
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：电子处方单（医疗自动签）  </li><li> **OTHER** :  通用场景</li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String
        # @param RelatedFlowId: 暂未开放
        # @type RelatedFlowId: String
        # @param CallbackUrl: 暂未开放
        # @type CallbackUrl: String
        # @param FlowDisplayType: 在短信通知、填写、签署流程中，若标题、按钮、合同详情等地方存在“合同”字样时，可根据此配置指定文案，可选文案如下：
        #  <ul><li> <b>0</b> :合同（默认值）</li> <li> <b>1</b> :文件</li> <li> <b>2</b> :协议</li><li> <b>3</b> :文书</li></ul>

        # 效果如下:
        # ![FlowDisplayType](https://qcloudimg.tencent-cloud.cn/raw/e4a2c4d638717cc901d3dbd5137c9bbc.png)
        # @type FlowDisplayType: Integer

        attr_accessor :Operator, :FlowName, :Approvers, :FlowDescription, :FlowType, :ClientToken, :DeadLine, :RemindedOn, :UserData, :Unordered, :CustomShowMap, :NeedSignReview, :Agent, :CcInfos, :AutoSignScene, :RelatedFlowId, :CallbackUrl, :FlowDisplayType
        extend Gem::Deprecate
        deprecate :RelatedFlowId, :none, 2025, 5
        deprecate :RelatedFlowId=, :none, 2025, 5
        deprecate :CallbackUrl, :none, 2025, 5
        deprecate :CallbackUrl=, :none, 2025, 5

        def initialize(operator=nil, flowname=nil, approvers=nil, flowdescription=nil, flowtype=nil, clienttoken=nil, deadline=nil, remindedon=nil, userdata=nil, unordered=nil, customshowmap=nil, needsignreview=nil, agent=nil, ccinfos=nil, autosignscene=nil, relatedflowid=nil, callbackurl=nil, flowdisplaytype=nil)
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
          @FlowDisplayType = flowdisplaytype
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
          @FlowDisplayType = params['FlowDisplayType']
        end
      end

      # CreateFlow返回参数结构体
      class CreateFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。

        # 注:
        # 此返回的合同流程ID，需再次调用<a href="https://qian.tencent.com/developers/companyApis/startFlows/CreateDocument" target="_blank">创建电子文档</a>和<a href="https://qian.tencent.com/developers/companyApis/startFlows/StartFlow" target="_blank">发起签署流程</a>接口将合同开始后，合同才能进入签署环节，[点击查看FlowId在控制台中的位置（只在进入签署环节后有效）](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)

        # @type FlowId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # <ul><li>建议开发者妥善保存此流程ID，以便于顺利进行后续操作。</li>
        # <li>可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。</li></ul>
        # @type FlowId: String
        # @param ReviewType: 企业内部审核结果
        # <ul><li>PASS: 审核通过</li>
        # <li>REJECT: 审核拒绝</li>
        # <li>SIGN_REJECT:拒签(流程结束)</li></ul>
        # @type ReviewType: String
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param RecipientId: 审核节点的签署人标志，用于指定当前审核的签署方
        # <ul><li>**如果签署审核节点是个人， 此参数必填**。</li></ul>
        # @type RecipientId: String
        # @param OperateType: 操作类型：（接口通过该字段区分不同的操作类型）

        # <ul><li>SignReview: 签署审核（默认）</li>
        # <li>CreateReview: 创建审核</li></ul>

        # 如果审核节点是个人，则操作类型只能为SignReview。
        # @type OperateType: String
        # @param ReviewMessage: 审核结果原因
        # <ul><li>字符串长度不超过200</li>
        # <li>当ReviewType 是拒绝（REJECT） 时此字段必填。</li>
        # <li>当ReviewType 是拒绝（SIGN_REJECT） 时此字段必填。</li></ul>

        # @type ReviewMessage: String

        attr_accessor :Operator, :FlowId, :ReviewType, :Agent, :RecipientId, :OperateType, :ReviewMessage

        def initialize(operator=nil, flowid=nil, reviewtype=nil, agent=nil, recipientid=nil, operatetype=nil, reviewmessage=nil)
          @Operator = operator
          @FlowId = flowid
          @ReviewType = reviewtype
          @Agent = agent
          @RecipientId = recipientid
          @OperateType = operatetype
          @ReviewMessage = reviewmessage
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @ReviewType = params['ReviewType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @RecipientId = params['RecipientId']
          @OperateType = params['OperateType']
          @ReviewMessage = params['ReviewMessage']
        end
      end

      # CreateFlowSignReview返回参数结构体
      class CreateFlowSignReviewResponse < TencentCloud::Common::AbstractModel
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

      # CreateFlowSignUrl请求参数结构体
      class CreateFlowSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID为32位字符串。

        # 您可以登录腾讯电子签控制台，在 "合同" -> "合同中心" 中查看某个合同的FlowId（在页面中展示为合同ID）。[点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)。
        # @type FlowId: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FlowApproverInfos: 流程签署人列表中，结构体的ApproverName、ApproverMobile和ApproverType为必传字段。如果是企业签署人，还需传递OrganizationName。

        # 此结构体和CreateFlow发起接口参与方结构体复用，除了上述参数外，可传递的参数有：
        # 1. RecipientId: 发起合同会返回，可以直接用于指定需要生成链接的签署方。
        # 2. ApproverSignTypes: 指定签署方签署时候的认证方式，仅此链接生效。
        # 3. SignTypeSelector: 可以指定签署方签署合同的认证校验方式的选择模式。
        # 4. Intention: 指定H5签署视频核身的意图配置，仅视频签署需要使用。

        # 注：
        # 1. 签署人<b>只能使用手写签名、时间类型、印章类型、签批类型的签署控件和内容填写控件</b>，其他类型的签署控件暂时不支持。
        # 2. 生成发起方预览链接时，该字段（FlowApproverInfos）可以传空或者不传。

        # @type FlowApproverInfos: Array
        # @param Organization: 机构信息，暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，最大长度1000个字符。链接类型请参考 <a href="https://qian.tencent.com/developers/company/openqianh5" target="_blank">跳转电子签H5</a>
        # @type JumpUrl: String
        # @param UrlType: 链接类型支持以下指定类型：

        # <ul><li><b>0</b>: 签署链接（默认值），进入后可以填写或签署合同。</li><li><b>1 </b>: 预览链接，进入后可以预览合同当前的样子。</li></ul>

        # 注：

        # 1. 当指定链接类型为1时，链接为预览链接，打开链接后无法进行签署操作，仅支持预览和查看当前合同状态。
        # 2. 如需生成发起方预览链接，则签署方信息应传空，即FlowApproverInfos传空或者不传。
        # @type UrlType: Integer

        attr_accessor :FlowId, :Operator, :Agent, :FlowApproverInfos, :Organization, :JumpUrl, :UrlType
        extend Gem::Deprecate
        deprecate :Organization, :none, 2025, 5
        deprecate :Organization=, :none, 2025, 5

        def initialize(flowid=nil, operator=nil, agent=nil, flowapproverinfos=nil, organization=nil, jumpurl=nil, urltype=nil)
          @FlowId = flowid
          @Operator = operator
          @Agent = agent
          @FlowApproverInfos = flowapproverinfos
          @Organization = organization
          @JumpUrl = jumpurl
          @UrlType = urltype
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
          unless params['FlowApproverInfos'].nil?
            @FlowApproverInfos = []
            params['FlowApproverInfos'].each do |i|
              flowcreateapprover_tmp = FlowCreateApprover.new
              flowcreateapprover_tmp.deserialize(i)
              @FlowApproverInfos << flowcreateapprover_tmp
            end
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          @JumpUrl = params['JumpUrl']
          @UrlType = params['UrlType']
        end
      end

      # CreateFlowSignUrl返回参数结构体
      class CreateFlowSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param FlowApproverUrlInfos: 签署人签署链接信息
        # @type FlowApproverUrlInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Employees: 待创建员工的信息最多不超过20个。

        # **1. 在创建企业微信员工的场景下** :  只需传入下面的参数，其他信息不支持设置。
        # <table> <thead> <tr> <th>参数</th> <th>是否必填</th> <th>含义</th> </tr> </thead> <tbody> <tr> <td>WeworkOpenId</td> <td>是</td> <td>企业微信用户账号ID</td> </tr> </tbody> </table>

        # **2. 在其他场景下** :   只需传入下面的参数，其他信息不支持设置。
        # <table> <thead> <tr> <th>参数</th> <th>是否必填</th> <th>含义</th> </tr> </thead> <tbody> <tr> <td>DisplayName</td> <td>是</td> <td>用户的真实名字</td> </tr> <tr> <td>Mobile</td> <td>是</td> <td>用户手机号码</td> </tr> <tr> <td>OpenId</td> <td>否</td> <td>用户的自定义ID</td> </tr> <tr> <td>Email</td> <td>否</td> <td>用户的邮箱</td> </tr> <tr> <td>Department.DepartmentId</td> <td>否</td> <td>用户加入后的部门ID</td> </tr> </tbody> </table>


        # 注: `每个手机号每天最多使用3次`
        # @type Employees: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param InvitationNotifyType: 员工邀请方式
        # 可通过以下途径进行设置：
        # <ul><li>**SMS（默认）**：邀请将通过短信或企业微信消息发送。若场景非企业微信，则采用企业微信消息；其他情境下则使用短信通知。短信内含链接，点击后将进入微信小程序进行认证并加入企业的流程。</li><li>**H5**：将生成H5链接，用户点击链接后可进入H5页面进行认证并加入企业的流程。</li><li>**NONE**：系统会根据Endpoint生成签署链接，业务方需获取链接并通知客户。</li></ul>
        # @type InvitationNotifyType: String
        # @param JumpUrl: 回跳地址，为认证成功后页面进行回跳的URL，请确保回跳地址的可用性。

        # 注：`只有在员工邀请方式（InvitationNotifyType参数）为H5场景下才生效， 其他方式下设置无效。`
        # @type JumpUrl: String
        # @param Endpoint: 要跳转的链接类型<ul><li> **HTTP**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型  ，此时返回长链 (默认类型)</li><li>**HTTP_SHORT_URL**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型，此时返回短链</li><li>**APP**： 第三方APP或小程序跳转电子签小程序的path,  APP或者小程序跳转适合此类型</li><li>**H5**： 第三方移动端浏览器进行嵌入，不支持小程序嵌入，过期时间一个月</li></ul>注意：InvitationNotifyType 和 Endpoint 的关系图<table><tbody><tr><td>通知类型（InvitationNotifyType）</td><td>Endpoint</td></tr><tr><td>SMS（默认）</td><td>不需要传递，会将 Endpoint 默认设置为HTTP_SHORT_URL</td></tr><tr><td>H5</td><td>不需要传递，会将 Endpoint 默认设置为 H5</td></tr><tr><td>NONE</td><td>所有 Endpoint 都支持（HTTP_URL/HTTP_SHORT_URL/H5/APP）默认为HTTP_SHORT_URL</td></tr></tbody></table>
        # @type Endpoint: String

        attr_accessor :Operator, :Employees, :Agent, :InvitationNotifyType, :JumpUrl, :Endpoint

        def initialize(operator=nil, employees=nil, agent=nil, invitationnotifytype=nil, jumpurl=nil, endpoint=nil)
          @Operator = operator
          @Employees = employees
          @Agent = agent
          @InvitationNotifyType = invitationnotifytype
          @JumpUrl = jumpurl
          @Endpoint = endpoint
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
          @InvitationNotifyType = params['InvitationNotifyType']
          @JumpUrl = params['JumpUrl']
          @Endpoint = params['Endpoint']
        end
      end

      # CreateIntegrationEmployees返回参数结构体
      class CreateIntegrationEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param CreateEmployeeResult: 创建员工的结果。包含创建成功的数据与创建失败数据。
        # @type CreateEmployeeResult: :class:`Tencentcloud::Ess.v20201111.models.CreateStaffResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateIntegrationSubOrganizationActiveRecord请求参数结构体
      class CreateIntegrationSubOrganizationActiveRecordRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。 支持填入集团子公司经办人 userId 代发合同。  注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SubOrganizationIds: 待激活成员企业ID集合
        # @type SubOrganizationIds: Array

        attr_accessor :Operator, :SubOrganizationIds

        def initialize(operator=nil, suborganizationids=nil)
          @Operator = operator
          @SubOrganizationIds = suborganizationids
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @SubOrganizationIds = params['SubOrganizationIds']
        end
      end

      # CreateIntegrationSubOrganizationActiveRecord返回参数结构体
      class CreateIntegrationSubOrganizationActiveRecordResponse < TencentCloud::Common::AbstractModel
        # @param FailedSubOrganizationIds: 激活失败的成员企业ID集合
        # @type FailedSubOrganizationIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedSubOrganizationIds, :RequestId

        def initialize(failedsuborganizationids=nil, requestid=nil)
          @FailedSubOrganizationIds = failedsuborganizationids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedSubOrganizationIds = params['FailedSubOrganizationIds']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateLegalSealQrCode请求参数结构体
      class CreateLegalSealQrCodeRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 机构信息，暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :Operator, :Agent, :Organization
        extend Gem::Deprecate
        deprecate :Organization, :none, 2025, 5
        deprecate :Organization=, :none, 2025, 5

        def initialize(operator=nil, agent=nil, organization=nil)
          @Operator = operator
          @Agent = agent
          @Organization = organization
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
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
        end
      end

      # CreateLegalSealQrCode返回参数结构体
      class CreateLegalSealQrCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrcodeBase64: 二维码图片base64值，二维码有效期7天（604800秒）

        # 二维码图片的样式如下图：
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/7ec2478761158a35a9c623882839a5df.png)
        # @type QrcodeBase64: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QrcodeBase64, :RequestId

        def initialize(qrcodebase64=nil, requestid=nil)
          @QrcodeBase64 = qrcodebase64
          @RequestId = requestid
        end

        def deserialize(params)
          @QrcodeBase64 = params['QrcodeBase64']
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
        # @param ForbidPersonalMultipleSign: 禁止个人用户重复签署，默认不禁止，即同一用户可多次扫码签署多份合同。若要求同一用户仅能扫码签署一份合同，请传入true。
        # @type ForbidPersonalMultipleSign: Boolean
        # @param FlowNameAppendScannerInfo: 合同流程名称是否应包含扫码签署人的信息，且遵循特定格式（flowname-姓名-手机号后四位）。
        # 例如，通过参数FlowName设定的扫码发起合同名称为“员工入职合同”，当扫码人张三（手机号18800009527）扫码签署时，合同名称将自动生成为“员工入职合同-张三-9527”。
        # @type FlowNameAppendScannerInfo: Boolean

        attr_accessor :Operator, :TemplateId, :FlowName, :MaxFlowNum, :QrEffectiveDay, :FlowEffectiveDay, :Restrictions, :UserData, :CallbackUrl, :Agent, :ApproverRestrictions, :ApproverComponentLimitTypes, :ForbidPersonalMultipleSign, :FlowNameAppendScannerInfo
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2025, 5
        deprecate :CallbackUrl=, :none, 2025, 5
        deprecate :ApproverRestrictions, :none, 2025, 5
        deprecate :ApproverRestrictions=, :none, 2025, 5

        def initialize(operator=nil, templateid=nil, flowname=nil, maxflownum=nil, qreffectiveday=nil, floweffectiveday=nil, restrictions=nil, userdata=nil, callbackurl=nil, agent=nil, approverrestrictions=nil, approvercomponentlimittypes=nil, forbidpersonalmultiplesign=nil, flownameappendscannerinfo=nil)
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
          @ForbidPersonalMultipleSign = forbidpersonalmultiplesign
          @FlowNameAppendScannerInfo = flownameappendscannerinfo
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
          @ForbidPersonalMultipleSign = params['ForbidPersonalMultipleSign']
          @FlowNameAppendScannerInfo = params['FlowNameAppendScannerInfo']
        end
      end

      # CreateMultiFlowSignQRCode返回参数结构体
      class CreateMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 一码多签签署码的基本信息，用户可扫描该二维码进行签署操作。
        # @type QrCode: :class:`Tencentcloud::Ess.v20201111.models.SignQrCode`
        # @param SignUrls: 一码多签签署码的链接信息，适用于客户系统整合二维码功能。通过链接，用户可直接访问电子签名小程序并签署合同。
        # @type SignUrls: :class:`Tencentcloud::Ess.v20201111.models.SignUrl`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateOrganizationAuthFile请求参数结构体
      class CreateOrganizationAuthFileRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationCommonInfo: 企业授权书信息参数， 需要自行保证这些参数跟营业执照中的信息一致。
        # @type OrganizationCommonInfo: :class:`Tencentcloud::Ess.v20201111.models.OrganizationCommonInfo`
        # @param Agent: 代理企业和员工的信息。<br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Operator: 执行本接口操作的员工信息。<br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Type: 授权书类型：
        # - 0: 企业认证超管授权书
        # - 1: 超管变更授权书
        # - 2: 企业注销授权书
        # @type Type: Integer

        attr_accessor :OrganizationCommonInfo, :Agent, :Operator, :Type

        def initialize(organizationcommoninfo=nil, agent=nil, operator=nil, type=nil)
          @OrganizationCommonInfo = organizationcommoninfo
          @Agent = agent
          @Operator = operator
          @Type = type
        end

        def deserialize(params)
          unless params['OrganizationCommonInfo'].nil?
            @OrganizationCommonInfo = OrganizationCommonInfo.new
            @OrganizationCommonInfo.deserialize(params['OrganizationCommonInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Type = params['Type']
        end
      end

      # CreateOrganizationAuthFile返回参数结构体
      class CreateOrganizationAuthFileResponse < TencentCloud::Common::AbstractModel
        # @param FileUrl: 授权书链接，有效期5分钟。
        # @type FileUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileUrl, :RequestId

        def initialize(fileurl=nil, requestid=nil)
          @FileUrl = fileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrganizationAuthUrl请求参数结构体
      class CreateOrganizationAuthUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param AuthorizationTypes: 指定授权方式 支持多选:

        # <ul>
        # <li><strong>1</strong>:上传授权书方式</li>
        # <li><strong>2</strong>: 法人授权方式</li>
        # <li><strong>3</strong>: 法人身份认证方式</li>
        # </ul>
        # @type AuthorizationTypes: Array
        # @param OrganizationName: 认证企业名称，请确认该名称与企业营业执照中注册的名称一致。

        # 注：

        # 1. `如果名称中包含英文括号()，请使用中文括号（）代替。`

        # 2. `EndPointType=“H5”或者"SHORT_H5"时，该参数必填`
        # @type OrganizationName: String
        # @param UniformSocialCreditCode: 企业统一社会信用代码
        # @type UniformSocialCreditCode: String
        # @param LegalName: 企业法人的姓名
        # @type LegalName: String
        # @param AutoJumpUrl: 认证完成跳回的链接，最长500个字符
        # @type AutoJumpUrl: String
        # @param OrganizationAddress: 营业执照企业地址
        # @type OrganizationAddress: String
        # @param AdminName: 认证人姓名
        # @type AdminName: String
        # @param AdminMobile: 认证人手机号
        # @type AdminMobile: String
        # @param AdminIdCardNumber: 认证人身份证号
        # @type AdminIdCardNumber: String
        # @param AdminIdCardType: 认证人证件类型， 支持以下类型
        # <ul><li><b>ID_CARD</b> : 中国大陆居民身份证  (默认值)</li>
        # <li><b>HONGKONG_AND_MACAO</b>  : 中国港澳居民来往内地通行证</li>
        # <li><b>HONGKONG_MACAO_AND_TAIWAN</b>  : 中国港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>
        # @type AdminIdCardType: String
        # @param UniformSocialCreditCodeSame: 对方打开链接认证时，对方填写的营业执照的社会信用代码是否与接口上传上来的要保持一致。<ul><li><b>false（默认值）</b>：关闭状态，实际认证时允许与接口传递的信息存在不一致。</li><li><b>true</b>：启用状态，实际认证时必须与接口传递的信息完全相符。</li></ul>
        # @type UniformSocialCreditCodeSame: Boolean
        # @param LegalNameSame: 对方打开链接认证时，法人姓名是否要与接口传递上来的保持一致。<ul><li><b>false（默认值）</b>：关闭状态，实际认证时允许与接口传递的信息存在不一致。</li><li><b>true</b>：启用状态，实际认证时必须与接口传递的信息完全相符。</li></ul>

        # p.s. 仅在法人姓名不为空时有效
        # @type LegalNameSame: Boolean
        # @param AdminNameSame: 对方打开链接认证时，认证人姓名是否要与接口传递上来的保持一致。<ul><li><b>false（默认值）</b>：关闭状态，实际认证时允许与接口传递的信息存在不一致。</li><li><b>true</b>：启用状态，实际认证时必须与接口传递的信息完全相符。</li></ul>

        # p.s. 仅在认证人姓名不为空时有效
        # @type AdminNameSame: Boolean
        # @param AdminIdCardNumberSame: 对方打开链接认证时，认证人居民身份证件号是否要与接口传递上来的保持一致。<ul><li><b>false（默认值）</b>：关闭状态，实际认证时允许与接口传递的信息存在不一致。</li><li><b>true</b>：启用状态，实际认证时必须与接口传递的信息完全相符。</li></ul>

        # p.s. 仅在认证人身份证号不为空时有效
        # @type AdminIdCardNumberSame: Boolean
        # @param AdminMobileSame: 对方打开链接认证时，认证人手机号是否要与接口传递上来的保持一致。<ul>
        # <li><b>false（默认值）</b>：关闭状态，实际认证时允许与接口传递的信息存在不一致。</li>
        # <li><b>true</b>：启用状态，实际认证时必须与接口传递的信息完全相符。</li>
        # </ul>

        # p.s. 仅在认证人手机号不为空时有效
        # @type AdminMobileSame: Boolean
        # @param OrganizationNameSame: 对方打开链接认证时，企业名称是否要与接口传递上来的保持一致。<ul><li><b>false（默认值）</b>：关闭状态，实际认证时允许与接口传递的信息存在不一致。</li><li><b>true</b>：启用状态，实际认证时必须与接口传递的信息完全相符。</li></ul>


        # p.s. 仅在企业名称不为空时有效
        # @type OrganizationNameSame: Boolean
        # @param BusinessLicense: 营业执照正面照（支持PNG或JPG格式）需以base64格式提供，且文件大小不得超过5MB。
        # @type BusinessLicense: String
        # @param Endpoint: 跳转链接类型：

        # <ul>
        # <li><b>PC</b>：适用于PC端的认证链接</li>
        # <li><b>APP</b>：用于全屏或半屏跳转的小程序链接</li>
        # <li><b>SHORT_URL</b>：跳转小程序的链接的短链形式</li>
        # <li><b>H5</b>：适用于H5页面的认证链接</li>
        # <li><b>SHORT_H5</b>：H5认证链接的短链形式</li>
        # </ul>
        # @type Endpoint: String
        # @param Initialization: 指定企业初始化引导，现在可以配置如下的选项：

        # <b>1</b>: 启用此选项后，在企业认证的最终步骤将添加创建印章的引导。如下图的位置
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/88e0b45095a5c589de8995462ad755dc.jpg)
        # @type Initialization: Array
        # @param PowerOfAttorneys: 授权书(PNG或JPG或PDF) base64格式, 大小不超过8M 。
        # 授权书可以通过接口[生成企业授权书](https://qian.tencent.com/developers/companyApis/organizations/CreateOrganizationAuthFile) 来获得。
        # p.s. 如果上传授权书 ，需遵循以下条件
        # 1.  超管的信息（超管姓名，超管手机号）必须为必填参数。
        # 2.  认证方式AuthorizationTypes必须只能是上传授权书方式
        # @type PowerOfAttorneys: Array

        attr_accessor :Operator, :AuthorizationTypes, :OrganizationName, :UniformSocialCreditCode, :LegalName, :AutoJumpUrl, :OrganizationAddress, :AdminName, :AdminMobile, :AdminIdCardNumber, :AdminIdCardType, :UniformSocialCreditCodeSame, :LegalNameSame, :AdminNameSame, :AdminIdCardNumberSame, :AdminMobileSame, :OrganizationNameSame, :BusinessLicense, :Endpoint, :Initialization, :PowerOfAttorneys

        def initialize(operator=nil, authorizationtypes=nil, organizationname=nil, uniformsocialcreditcode=nil, legalname=nil, autojumpurl=nil, organizationaddress=nil, adminname=nil, adminmobile=nil, adminidcardnumber=nil, adminidcardtype=nil, uniformsocialcreditcodesame=nil, legalnamesame=nil, adminnamesame=nil, adminidcardnumbersame=nil, adminmobilesame=nil, organizationnamesame=nil, businesslicense=nil, endpoint=nil, initialization=nil, powerofattorneys=nil)
          @Operator = operator
          @AuthorizationTypes = authorizationtypes
          @OrganizationName = organizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalName = legalname
          @AutoJumpUrl = autojumpurl
          @OrganizationAddress = organizationaddress
          @AdminName = adminname
          @AdminMobile = adminmobile
          @AdminIdCardNumber = adminidcardnumber
          @AdminIdCardType = adminidcardtype
          @UniformSocialCreditCodeSame = uniformsocialcreditcodesame
          @LegalNameSame = legalnamesame
          @AdminNameSame = adminnamesame
          @AdminIdCardNumberSame = adminidcardnumbersame
          @AdminMobileSame = adminmobilesame
          @OrganizationNameSame = organizationnamesame
          @BusinessLicense = businesslicense
          @Endpoint = endpoint
          @Initialization = initialization
          @PowerOfAttorneys = powerofattorneys
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @AuthorizationTypes = params['AuthorizationTypes']
          @OrganizationName = params['OrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalName = params['LegalName']
          @AutoJumpUrl = params['AutoJumpUrl']
          @OrganizationAddress = params['OrganizationAddress']
          @AdminName = params['AdminName']
          @AdminMobile = params['AdminMobile']
          @AdminIdCardNumber = params['AdminIdCardNumber']
          @AdminIdCardType = params['AdminIdCardType']
          @UniformSocialCreditCodeSame = params['UniformSocialCreditCodeSame']
          @LegalNameSame = params['LegalNameSame']
          @AdminNameSame = params['AdminNameSame']
          @AdminIdCardNumberSame = params['AdminIdCardNumberSame']
          @AdminMobileSame = params['AdminMobileSame']
          @OrganizationNameSame = params['OrganizationNameSame']
          @BusinessLicense = params['BusinessLicense']
          @Endpoint = params['Endpoint']
          @Initialization = params['Initialization']
          @PowerOfAttorneys = params['PowerOfAttorneys']
        end
      end

      # CreateOrganizationAuthUrl返回参数结构体
      class CreateOrganizationAuthUrlResponse < TencentCloud::Common::AbstractModel
        # @param AuthUrl: 生成的认证链接。

        # 注： `链接有效期统一30天`
        # @type AuthUrl: String
        # @param ExpiredTime: 链接过期时间，格式为Unix标准时间戳（秒）
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthUrl, :ExpiredTime, :RequestId

        def initialize(authurl=nil, expiredtime=nil, requestid=nil)
          @AuthUrl = authurl
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @AuthUrl = params['AuthUrl']
          @ExpiredTime = params['ExpiredTime']
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

        # <ul>
        # <li>1. 若UserId为空，Name和Mobile 必须提供。</li>
        # <li>2. 若UserId 与 Name，Mobile均存在，将优先采用UserId对应的员工。</li>
        # </ul>
        # @type UserId: String
        # @param Name: 员工姓名，必须与手机号码一起使用。
        # 如果UserId为空，则此字段不能为空。同时，姓名和手机号码必须与传入合同（FlowId）中的签署人信息一致。
        # @type Name: String
        # @param Mobile: 员工手机号，必须与姓名一起使用。
        #  如果UserId为空，则此字段不能为空。同时，姓名和手机号码必须与传入合同（FlowId）中的签署人信息一致。
        # @type Mobile: String
        # @param RecipientIds: 为签署方经办人在签署合同中的参与方ID，必须与参数FlowIds数组一一对应。
        # 您可以通过查询合同接口（DescribeFlowInfo）查询此参数。
        # 若传了此参数，则可以不传 UserId, Name, Mobile等参数
        # @type RecipientIds: Array
        # @param FlowGroupId: 合同组Id，传入此参数则可以不传FlowIds
        # @type FlowGroupId: String

        attr_accessor :Operator, :FlowIds, :Agent, :UserId, :Name, :Mobile, :RecipientIds, :FlowGroupId

        def initialize(operator=nil, flowids=nil, agent=nil, userid=nil, name=nil, mobile=nil, recipientids=nil, flowgroupid=nil)
          @Operator = operator
          @FlowIds = flowids
          @Agent = agent
          @UserId = userid
          @Name = name
          @Mobile = mobile
          @RecipientIds = recipientids
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
          @UserId = params['UserId']
          @Name = params['Name']
          @Mobile = params['Mobile']
          @RecipientIds = params['RecipientIds']
          @FlowGroupId = params['FlowGroupId']
        end
      end

      # CreateOrganizationBatchSignUrl返回参数结构体
      class CreateOrganizationBatchSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 批量签署入口链接，用户可使用这个链接跳转到控制台页面对合同进行签署操作。
        # @type SignUrl: String
        # @param ExpiredTime: 链接过期截止时间，格式为Unix标准时间戳（秒），默认为7天后截止。
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateOrganizationGroupInvitationLink请求参数结构体
      class CreateOrganizationGroupInvitationLinkRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。 支持填入集团子公司经办人 userId 代发合同。  注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ExpireTime: 到期时间（以秒为单位的时间戳），其上限为30天的有效期限。
        # @type ExpireTime: Integer

        attr_accessor :Operator, :ExpireTime

        def initialize(operator=nil, expiretime=nil)
          @Operator = operator
          @ExpireTime = expiretime
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ExpireTime = params['ExpireTime']
        end
      end

      # CreateOrganizationGroupInvitationLink返回参数结构体
      class CreateOrganizationGroupInvitationLinkResponse < TencentCloud::Common::AbstractModel
        # @param Link: 加入集团二维码链接，子企业的管理员可以直接扫码进入。
        # 注意:1. 该链接有效期时间为ExpireTime，同时需要注意保密，不要外泄给无关用户。2. 该链接不支持小程序嵌入，仅支持<b>移动端浏览器</b>打开。3. <font color="red">生成的链路后面不能再增加参数</font>（会出现覆盖链接中已有参数导致错误）
        # @type Link: String
        # @param ExpireTime: 到期时间（以秒为单位的时间戳）
        # @type ExpireTime: Integer
        # @param JumpUrl: 加入集团短链接。
        # 注意:
        # 1. 该链接有效期时间为ExpireTime，同时需要注意保密，不要外泄给无关用户。
        # 2. 该链接不支持小程序嵌入，仅支持<b>移动端浏览器</b>打开。
        # 3. <font color="red">生成的链路后面不能再增加参数</font>（会出现覆盖链接中已有参数导致错误）
        # @type JumpUrl: String
        # @param MiniAppPath: 腾讯电子签小程序加入集团链接。

        # <li>小程序和APP集成使用</li>
        # <li>得到的链接类似于`pages/guide?shortKey=yDw***k1xFc5`, 用法可以参考：<a href="https://qian.tencent.com/developers/company/openwxminiprogram" target="_blank">跳转电子签小程序</a></li>


        # 注： <font color="red">生成的链路后面不能再增加参数</font>
        # @type MiniAppPath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Link, :ExpireTime, :JumpUrl, :MiniAppPath, :RequestId

        def initialize(link=nil, expiretime=nil, jumpurl=nil, miniapppath=nil, requestid=nil)
          @Link = link
          @ExpireTime = expiretime
          @JumpUrl = jumpurl
          @MiniAppPath = miniapppath
          @RequestId = requestid
        end

        def deserialize(params)
          @Link = params['Link']
          @ExpireTime = params['ExpireTime']
          @JumpUrl = params['JumpUrl']
          @MiniAppPath = params['MiniAppPath']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreatePartnerAutoSignAuthUrl请求参数结构体
      class CreatePartnerAutoSignAuthUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 代理企业和员工的信息。<br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Operator: 执行本接口操作的员工信息。<br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param AuthorizedOrganizationId: 被授企业id/授权方企业id（即OrganizationId），和AuthorizedOrganizationName二选一传入
        # @type AuthorizedOrganizationId: String
        # @param AuthorizedOrganizationName: 被授企业名称/授权方企业的名字，和AuthorizedOrganizationId二选一传入即可。请确认该名称与企业营业执照中注册的名称一致。
        # 注: `如果名称中包含英文括号()，请使用中文括号（）代替。`
        # @type AuthorizedOrganizationName: String
        # @param SealTypes: 在设置印章授权时，可以指定特定的印章类型，以确保在授权过程中只使用相应类型的印章。支持的印章类型包括：

        # <ul>
        # <li><strong>OFFICIAL</strong>：企业公章，用于代表企业对外的正式文件和重要事务的认证。</li>
        # <li><strong>CONTRACT</strong>：合同专用章，专门用于签署各类合同。</li>
        # <li><strong>FINANCE</strong>：财务专用章，用于企业的财务相关文件，如发票、收据等财务凭证的认证。</li>
        # <li><strong>PERSONNEL</strong>：人事专用章，用于人事管理相关文件，如劳动合同、人事任命等。</li>
        # </ul>
        # @type SealTypes: Array
        # @param AuthToMe: 在处理授权关系时，授权的方向
        # <ul>
        # <li><strong>false</strong>（默认值）：表示我方授权他方。在这种情况下，<code>AuthorizedOrganizationName</code> 代表的是【被授权方】的企业名称，即接收授权的企业。</li>
        # <li><strong>true</strong>：表示他方授权我方。在这种情况下，<code>AuthorizedOrganizationName</code> 代表的是【授权方】的企业名称，即提供授权的企业。</li>
        # </ul>
        # @type AuthToMe: Boolean

        attr_accessor :Agent, :Operator, :AuthorizedOrganizationId, :AuthorizedOrganizationName, :SealTypes, :AuthToMe

        def initialize(agent=nil, operator=nil, authorizedorganizationid=nil, authorizedorganizationname=nil, sealtypes=nil, authtome=nil)
          @Agent = agent
          @Operator = operator
          @AuthorizedOrganizationId = authorizedorganizationid
          @AuthorizedOrganizationName = authorizedorganizationname
          @SealTypes = sealtypes
          @AuthToMe = authtome
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @AuthorizedOrganizationId = params['AuthorizedOrganizationId']
          @AuthorizedOrganizationName = params['AuthorizedOrganizationName']
          @SealTypes = params['SealTypes']
          @AuthToMe = params['AuthToMe']
        end
      end

      # CreatePartnerAutoSignAuthUrl返回参数结构体
      class CreatePartnerAutoSignAuthUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 授权链接，以短链形式返回，短链的有效期参考回参中的 ExpiredTime。
        # @type Url: String
        # @param MiniAppPath: 从客户小程序或者客户APP跳转至腾讯电子签小程序进行批量签署的跳转路径
        # @type MiniAppPath: String
        # @param ExpireTime: 链接过期时间以 Unix 时间戳格式表示，从生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :MiniAppPath, :ExpireTime, :RequestId

        def initialize(url=nil, miniapppath=nil, expiretime=nil, requestid=nil)
          @Url = url
          @MiniAppPath = miniapppath
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @MiniAppPath = params['MiniAppPath']
          @ExpireTime = params['ExpireTime']
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
        # <ul><li> ID_CARD  : 中国大陆居民身份证 (默认值)</li>
        # <li> HONGKONG_AND_MACAO  : 中国港澳居民来往内地通行证</li>
        # <li> HONGKONG_MACAO_AND_TAIWAN  : 中国港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
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
        # @type ImageCertId: String
        # @param SerialNumber: 在数字证书申请过程中，系统会自动生成一个独一无二的序列号。请注意，当证书到期并自动续期时，该序列号将会发生变化。值得注意的是，此序列号不会被合成至个人用户证书的证明图片中。
        # @type SerialNumber: String
        # @param ValidFrom: CA证书颁发时间，格式为Unix标准时间戳（秒）
        # 该时间格式化后会合成到个人用户证书证明图片
        # @type ValidFrom: Integer
        # @param ValidTo: CA证书有效截止时间，格式为Unix标准时间戳（秒）
        # 该时间格式化后会合成到个人用户证书证明图片
        # @type ValidTo: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreatePrepareFlowGroup请求参数结构体
      class CreatePrepareFlowGroupRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowGroupName: 合同（流程）组名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowGroupName: String
        # @param FlowGroupInfos: 合同（流程）组的子合同信息，支持2-50个子合同
        # @type FlowGroupInfos: Array
        # @param ResourceType: 资源类型，取值有： <ul><li> **1**：模板</li> <li> **2**：文件</li></ul>
        # @type ResourceType: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowGroupName, :FlowGroupInfos, :ResourceType, :Agent

        def initialize(operator=nil, flowgroupname=nil, flowgroupinfos=nil, resourcetype=nil, agent=nil)
          @Operator = operator
          @FlowGroupName = flowgroupname
          @FlowGroupInfos = flowgroupinfos
          @ResourceType = resourcetype
          @Agent = agent
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
          @ResourceType = params['ResourceType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreatePrepareFlowGroup返回参数结构体
      class CreatePrepareFlowGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowGroupId: 合同(流程)组的合同组Id
        # @type FlowGroupId: String
        # @param PrepareUrl: 嵌入式合同组发起链接
        # @type PrepareUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowGroupId, :PrepareUrl, :RequestId

        def initialize(flowgroupid=nil, prepareurl=nil, requestid=nil)
          @FlowGroupId = flowgroupid
          @PrepareUrl = prepareurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowGroupId = params['FlowGroupId']
          @PrepareUrl = params['PrepareUrl']
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
        # <li>模板Id（通过控制台创建模板后获取模板Id）</li>
        # </ul>
        # 注意：需要同时设置 ResourceType 参数指定资源类型
        # @type ResourceId: String
        # @param FlowName: 自定义的合同流程的名称，长度不能超过200个字符，只能由中文汉字、中文标点、英文字母、阿拉伯数字、空格、小括号、中括号、中划线、下划线以及（,）、（;）、（.）、(&)、（+）组成。

        # 该名称还将用于合同签署完成后文件下载的默认文件名称。
        # @type FlowName: String
        # @param ResourceType: 资源类型，取值有：
        # <ul><li> **1**：模板</li>
        # <li> **2**：文件（默认值）</li></ul>
        # @type ResourceType: Integer
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
        # @param Components: 该字段已不再使用，请使用InitiatorComponents
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
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param FlowId: 合同Id：用于通过一个已发起的合同快速生成一个发起流程web链接
        # 注: `该参数必须是一个待发起审核的合同id，并且还未审核通过`
        # @type FlowId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param InitiatorComponents: 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # @type InitiatorComponents: Array
        # @param FlowDisplayType: 在短信通知、填写、签署流程中，若标题、按钮、合同详情等地方存在“合同”字样时，可根据此配置指定文案，可选文案如下：  <ul><li> <b>0</b> :合同（默认值）</li> <li> <b>1</b> :文件</li> <li> <b>2</b> :协议</li><li> <b>3</b> :文书</li></ul>效果如下:![FlowDisplayType](https://qcloudimg.tencent-cloud.cn/raw/e4a2c4d638717cc901d3dbd5137c9bbc.png)
        # @type FlowDisplayType: Integer
        # @param SignComponentConfig: <font color="red">此字段已不再使用，请使用 CreateFlowOption 里面的 SignComponentConfig</font>
        # 签署控件的配置信息，用在嵌入式发起的页面配置，
        # 包括

        # - 签署控件 是否默认展示日期.
        # @type SignComponentConfig: :class:`Tencentcloud::Ess.v20201111.models.SignComponentConfig`

        attr_accessor :Operator, :ResourceId, :FlowName, :ResourceType, :Unordered, :Deadline, :UserFlowTypeId, :FlowType, :Approvers, :IntelligentStatus, :Components, :FlowOption, :NeedSignReview, :NeedCreateReview, :UserData, :CcInfos, :FlowId, :Agent, :InitiatorComponents, :FlowDisplayType, :SignComponentConfig
        extend Gem::Deprecate
        deprecate :SignComponentConfig, :none, 2025, 5
        deprecate :SignComponentConfig=, :none, 2025, 5

        def initialize(operator=nil, resourceid=nil, flowname=nil, resourcetype=nil, unordered=nil, deadline=nil, userflowtypeid=nil, flowtype=nil, approvers=nil, intelligentstatus=nil, components=nil, flowoption=nil, needsignreview=nil, needcreatereview=nil, userdata=nil, ccinfos=nil, flowid=nil, agent=nil, initiatorcomponents=nil, flowdisplaytype=nil, signcomponentconfig=nil)
          @Operator = operator
          @ResourceId = resourceid
          @FlowName = flowname
          @ResourceType = resourcetype
          @Unordered = unordered
          @Deadline = deadline
          @UserFlowTypeId = userflowtypeid
          @FlowType = flowtype
          @Approvers = approvers
          @IntelligentStatus = intelligentstatus
          @Components = components
          @FlowOption = flowoption
          @NeedSignReview = needsignreview
          @NeedCreateReview = needcreatereview
          @UserData = userdata
          @CcInfos = ccinfos
          @FlowId = flowid
          @Agent = agent
          @InitiatorComponents = initiatorcomponents
          @FlowDisplayType = flowdisplaytype
          @SignComponentConfig = signcomponentconfig
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ResourceId = params['ResourceId']
          @FlowName = params['FlowName']
          @ResourceType = params['ResourceType']
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
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
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
          @FlowDisplayType = params['FlowDisplayType']
          unless params['SignComponentConfig'].nil?
            @SignComponentConfig = SignComponentConfig.new
            @SignComponentConfig.deserialize(params['SignComponentConfig'])
          end
        end
      end

      # CreatePrepareFlow返回参数结构体
      class CreatePrepareFlowResponse < TencentCloud::Common::AbstractModel
        # @param Url: 发起流程的web页面链接，有效期5分钟
        # @type Url: String
        # @param FlowId: 创建的合同id（还未实际发起），每次调用会生成新的id，用户可以记录此字段对应后续页面发起的合同，若在页面上未成功发起，则此字段无效。
        # @type FlowId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # <ul><li> 中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param SealName: 印章名称，长度1-50个字。
        # @type SealName: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 中国大陆居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 中国港澳台居民居住证(格式同 中国大陆居民身份证)</li></ul>
        # @type IdCardType: String
        # @param SealImage: 该字段已不再使用
        # @type SealImage: String
        # @param SealImageCompress: 是否开启印章图片压缩处理，默认不开启，如需开启请设置为 true。当印章超过 2M 时建议开启，开启后图片的 hash 将发生变化。
        # @type SealImageCompress: Boolean
        # @param Mobile: 手机号码；当需要开通自动签时，该参数必传
        # @type Mobile: String
        # @param EnableAutoSign: 该字段已不再使用
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
        deprecate :SealImage, :none, 2025, 5
        deprecate :SealImage=, :none, 2025, 5

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ReleasedApprovers: 替换解除协议的签署人， 如不指定新的签署人，将继续使用原流程的签署人作为本解除协议的参与方。 <br/>
        # 如需更换原合同中的企业端签署人，可通过指定该签署人的RecipientId编号更换此企业端签署人。(可通过接口<a href="https://qian.tencent.com/developers/companyApis/queryFlows/DescribeFlowInfo/">DescribeFlowInfo</a>查询签署人的RecipientId编号)<br/>

        # 注：
        # 1. 支持更换企业的签署人，不支持更换个人类型的签署人。
        # 2. 己方企业支持自动签署，他方企业不支持自动签署。
        # 3. <b>仅将需要替换的签署人添加至此列表</b>，无需替换的签署人无需添加进来。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 发起流程的可嵌入页面操作结果页配置
      class CreateResultPageConfig < TencentCloud::Common::AbstractModel
        # @param Type: <ul>
        #   <li>0 : 发起审批成功页面（通过接口<a href="https://qian.tencent.com/developers/companyApis/embedPages/CreatePrepareFlow/" target="_blank">创建发起流程web页面</a>发起时设置了NeedCreateReview参数为true）</li>
        # </ul>
        # @type Type: Integer
        # @param Title: 结果页标题，不超过50字
        # @type Title: String
        # @param Description: 结果页描述，不超过200字
        # @type Description: String

        attr_accessor :Type, :Title, :Description

        def initialize(type=nil, title=nil, description=nil)
          @Type = type
          @Title = title
          @Description = description
        end

        def deserialize(params)
          @Type = params['Type']
          @Title = params['Title']
          @Description = params['Description']
        end
      end

      # CreateSchemeUrl请求参数结构体
      class CreateSchemeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息, userId 必填。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param OrganizationName: 合同流程签署方的组织机构名称。如果名称中包含英文括号()，请使用中文括号（）代替。注: `获取B端动态签署人领取链接时,可指定此字段来预先设定签署人的企业,预设后只能以该企业身份去领取合同并完成签署`
        # @type OrganizationName: String
        # @param Name: 合同流程里边签署方经办人的姓名。

        # `注：在动态签署人补充链接场景中，可以通过传入这个值，对补充的个人参与方信息进行限制。仅匹配传入姓名的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方。`
        # @type Name: String
        # @param Mobile: 合同流程里边签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。

        # `注：在动态签署人补充链接场景中，可以通过传入此值，对补充的个人参与方信息进行限制。仅匹配传入手机号的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方。`
        # @type Mobile: String
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 中国大陆居民身份证</li>
        # <li>HONGKONG_AND_MACAO : 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 中国港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>

        # `注：在动态签署人补充链接场景中，可以通过传入此值，对补充的个人参与方信息进行限制。仅匹配传入证件类型的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方，且需要和证件号参数一同传递，不能单独进行限制。`
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成(如存在X，请大写)。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>

        # `注：在动态签署人补充链接场景中，可以通过传入此值，对补充的个人参与方信息进行限制。仅匹配传入证件号的参与方才能补充合同。此参数预设信息功能暂时仅支持个人动态参与方。`
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
        # @param PathType: 要跳转到的页面类型 <ul><li> **0** : 腾讯电子签小程序个人首页 (默认) <a href="https://qcloudimg.tencent-cloud.cn/raw/a2667ea84ec993cc060321afe3191d65.jpg" target="_blank" >点击查看示例页面</a></li><li> **1** : 腾讯电子签小程序流程合同的详情页,即合同签署页面(注:`仅生成短链或者小程序Path时支持跳转合同详情页,即EndPoint传HTTP_SHORT_URL或者APP`)<a href="https://qcloudimg.tencent-cloud.cn/raw/446a679f09b1b7f40eb84e67face8acc.jpg" target="_blank" >点击查看示例页面</a></li><li> **2** : 腾讯电子签小程序合同列表页 <a href="https://qcloudimg.tencent-cloud.cn/raw/c7b80e44c1d68ae3270a6fc4939c7214.jpg" target="_blank" >点击查看示例页面</a> </li><li> **3** : 腾讯电子签小程序合同封面页  （注：`生成动态签署人补充链接时，必须指定为封面页`）<a href="https://qcloudimg.tencent-cloud.cn/raw/0d22cc587be4bf084877c151350c3bf7.jpg" target="_blank" >点击查看示例页面</a></li></ul>
        # @type PathType: Integer
        # @param AutoJumpBack: 签署完成后是否自动回跳
        # <ul><li>**false**：否, 签署完成不会自动跳转回来(默认)</li><li>**true**：是, 签署完成会自动跳转回来</li></ul>

        # 注:
        # 1. 该参数<font color="red">只针对APP类型（电子签小程序跳转贵方小程序）场景</font> 的签署链接有效
        # 2. <font color="red">手机应用APP 或 微信小程序需要监控界面的返回走后序逻辑</font>, 微信小程序的文档可以参考[这个](https://developers.weixin.qq.com/miniprogram/dev/reference/api/App.html#onShow-Object-object)
        # 3. <font color="red">电子签小程序跳转贵方APP，不支持自动跳转，必需用户手动点击完成按钮（微信的限制）</font>
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
        # @param FlowGroupUrlInfo: 合同组相关信息，指定合同组子合同和签署方的信息，用于补充动态签署人。
        # @type FlowGroupUrlInfo: :class:`Tencentcloud::Ess.v20201111.models.FlowGroupUrlInfo`
        # @param UrlUseEnv: <font color="red">仅公众号 H5 跳转电子签小程序时</font>，如需签署完成的“返回应用”功能，在获取签署链接接口的 UrlUseEnv 参数需设置为 **WeChatOfficialAccounts**，小程序签署成功的结果页面中才会出现“返回应用”按钮。在用户点击“返回应用”按钮之后，会返回到公众号 H5。

        # 参考 [公众号 H5 跳转电子签小程序](https://qian.tencent.com/developers/company/openwxminiprogram/#23-%E5%85%AC%E4%BC%97%E5%8F%B7-h5-%E4%B8%AD%E8%B7%B3%E8%BD%AC)。
        # @type UrlUseEnv: String
        # @param PickUpAfterJoined: 在动态签署人场景预设了“企业名称”时，可通过该参数控制“已认证身份才可领取”，即在加入了预设的企业后才可领取。默认值：false，无须先加入企业。
        # @type PickUpAfterJoined: Boolean

        attr_accessor :Operator, :OrganizationName, :Name, :Mobile, :IdCardType, :IdCardNumber, :EndPoint, :FlowId, :FlowGroupId, :PathType, :AutoJumpBack, :Agent, :Hides, :RecipientId, :FlowGroupUrlInfo, :UrlUseEnv, :PickUpAfterJoined

        def initialize(operator=nil, organizationname=nil, name=nil, mobile=nil, idcardtype=nil, idcardnumber=nil, endpoint=nil, flowid=nil, flowgroupid=nil, pathtype=nil, autojumpback=nil, agent=nil, hides=nil, recipientid=nil, flowgroupurlinfo=nil, urluseenv=nil, pickupafterjoined=nil)
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
          @FlowGroupUrlInfo = flowgroupurlinfo
          @UrlUseEnv = urluseenv
          @PickUpAfterJoined = pickupafterjoined
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
          unless params['FlowGroupUrlInfo'].nil?
            @FlowGroupUrlInfo = FlowGroupUrlInfo.new
            @FlowGroupUrlInfo.deserialize(params['FlowGroupUrlInfo'])
          end
          @UrlUseEnv = params['UrlUseEnv']
          @PickUpAfterJoined = params['PickUpAfterJoined']
        end
      end

      # CreateSchemeUrl返回参数结构体
      class CreateSchemeUrlResponse < TencentCloud::Common::AbstractModel
        # @param SchemeUrl: 腾讯电子签小程序的签署链接。

        # <ul><li>如果EndPoint是**APP**，得到的链接类似于`pages/guide?from=default&where=mini&id=yDwJSUUirqauh***7jNSxwdirTSGuH&to=CONTRACT_DETAIL&name=&phone=&shortKey=yDw***k1xFc5`, 用法可以参加接口描述中的"跳转到小程序的实现"</li>
        # <li>如果EndPoint是**HTTP**，得到的链接类似于 `https://res.ess.tencent.cn/cdn/h5-activity/jump-mp.html?where=mini&from=SFY&id=yDwfEUUw**4rV6Avz&to=MVP_CONTRACT_COVER&name=%E9%83%**5%86%9B`，点击后会跳转到腾讯电子签小程序进行签署</li>
        # <li>如果EndPoint是**HTTP_SHORT_URL**，得到的链接类似于 `https://essurl.cn/2n**42Nd`，点击后会跳转到腾讯电子签小程序进行签署</li></ul>


        # 注： <font color="red">生成的链路后面不能再增加参数</font>
        # @type SchemeUrl: String
        # @param SchemeQrcodeUrl: 二维码，在生成动态签署人跳转封面页链接时返回  注：`此二维码下载链接有效期为5分钟，可下载二维码后本地保存。`
        # @type SchemeQrcodeUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Expired: 授权有效期，时间戳秒级。可以传0，代表有效期到2099年12月12日23点59分59秒。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param SealType: 电子印章类型 , 可选类型如下: <ul><li>**OFFICIAL**: (默认)公章</li><li>**CONTRACT**: 合同专用章;</li><li>**FINANCE**: 财务专用章;</li><li>**PERSONNEL**: 人事专用章</li><li>**INVOICE**: 发票专用章</li><li>**OTHER**: 其他</li></ul>注: 同企业下只能有<font color="red">一个</font>公章, 重复创建会报错
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
        # @param SealSize: 印章尺寸取值描述, 可以选择的尺寸如下: <ul><li> **38_38**: 圆形企业公章直径38mm, 当SealStyle是圆形的时候才有效</li> <li> **40_40**: 圆形企业公章直径40mm, 当SealStyle是圆形的时候才有效</li> <li> **42_42**（默认）: 圆形企业公章直径42mm, 当SealStyle是圆形的时候才有效</li> <li> **45_45**: 圆形企业印章直径45mm, 当SealStyle是圆形的时候才有效</li> <li> **50_50**: 圆形企业印章直径45mm, 当SealStyle是圆形的时候才有效</li> <li> **58_58**: 圆形企业印章直径45mm, 当SealStyle是圆形的时候才有效</li>  <li> **40_30**: 椭圆形印章40mm x 30mm, 当SealStyle是椭圆的时候才有效</li> <li> **45_30**: 椭圆形印章45mm x 30mm, 当SealStyle是椭圆的时候才有效</li> </ul>
        # @type SealSize: String
        # @param TaxIdentifyCode: 企业税号
        # 注:
        # <ul>
        # <li>1.印章类型SealType是INVOICE类型时，此参数才会生效</li>
        # <li>2.印章类型SealType是INVOICE类型，且该字段没有传入值或传入空时，会取该企业对应的统一社会信用代码作为默认的企业税号（<font color="red">如果是通过授权书授权方式认证的企业，此参数必传不能为空</font>）</li>
        # </ul>
        # @type TaxIdentifyCode: String

        attr_accessor :Operator, :SealName, :Agent, :GenerateSource, :SealType, :FileName, :Image, :Width, :Height, :Color, :SealHorizontalText, :SealChordText, :SealCentralType, :FileToken, :SealStyle, :SealSize, :TaxIdentifyCode

        def initialize(operator=nil, sealname=nil, agent=nil, generatesource=nil, sealtype=nil, filename=nil, image=nil, width=nil, height=nil, color=nil, sealhorizontaltext=nil, sealchordtext=nil, sealcentraltype=nil, filetoken=nil, sealstyle=nil, sealsize=nil, taxidentifycode=nil)
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
          @TaxIdentifyCode = taxidentifycode
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
          @TaxIdentifyCode = params['TaxIdentifyCode']
        end
      end

      # CreateSeal返回参数结构体
      class CreateSealResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # 可登录腾讯电子签控制台，在 "印章"->"印章中心"选择查看的印章，在"印章详情" 中查看某个印章的SealId(在页面中展示为印章ID)。
        # @type SealId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type SuccessEmployeeData: Array
        # @param FailedEmployeeData: 创建员工的失败列表
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
        # @param NotifyType: 是否通知开通方，通知类型:<ul><li>默认为不通知开通方</li><li>**SMS** :  短信通知 ,如果需要短信通知则NotifyAddress填写对方的手机号</li></ul>
        # @type NotifyType: String
        # @param NotifyAddress: 如果通知类型NotifyType选择为SMS，则此处为手机号, 其他通知类型不需要设置此项
        # @type NotifyAddress: String
        # @param ExpiredTime: 链接的过期时间，格式为Unix时间戳，不能早于当前时间，且最大为当前时间往后30天。`如果不传，默认过期时间为当前时间往后7天。`
        # @type ExpiredTime: Integer
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param UserData: 调用方自定义的个性化字段(可自定义此字段的值)，并以base64方式编码，支持的最大数据大小为 20480长度。 在个人自动签的开通、关闭等回调信息场景中，该字段的信息将原封不动地透传给贵方。
        # @type UserData: String

        attr_accessor :Operator, :SceneKey, :AutoSignConfig, :UrlType, :NotifyType, :NotifyAddress, :ExpiredTime, :Agent, :UserData

        def initialize(operator=nil, scenekey=nil, autosignconfig=nil, urltype=nil, notifytype=nil, notifyaddress=nil, expiredtime=nil, agent=nil, userdata=nil)
          @Operator = operator
          @SceneKey = scenekey
          @AutoSignConfig = autosignconfig
          @UrlType = urltype
          @NotifyType = notifytype
          @NotifyAddress = notifyaddress
          @ExpiredTime = expiredtime
          @Agent = agent
          @UserData = userdata
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
          @UserData = params['UserData']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateUserMobileChangeUrl请求参数结构体
      class CreateUserMobileChangeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。 支持填入集团子公司经办人 userId 代发合同。  注: 在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param UserId: 如果您要修改企业员工用户ID，传递此用户ID即可，其他参数（Name，UserAccountType，IdCardType，IdCardNumber）将被忽略。如果不传此用户ID，则会使用其他参数来进行链接生成。

        # [点击查看用户ID的获取方式](https://res.ess.tencent.cn/cdn/tsign-developer-center/assets/images/%E7%BB%84%E7%BB%87%E6%9E%B6%E6%9E%84-47eb7105dd300e6dc0c502fba22688ae.png)
        # @type UserId: String
        # @param UserAccountType: 要修改手机号用户的类型。
        # <ul><li>0：员工 （默认）</li><li>1：个人</li>
        # </ul>
        # 如果是员工类型，<b>只能修改本方员工，而不能修改其他企业的员工</b>。
        # 如果是个人类型，可<b>不指定用户身份，生成的是固定的链接，当前登录电子签小程序的用户可进行换绑。</b>
        # @type UserAccountType: Integer
        # @param Name: 要修改手机号用户的姓名，请确保填写的姓名为对方的真实姓名，而非昵称等代名。

        # 如果没有传递 userId且 userAccountType 是 0 或者没有传递， 此参数为<b>必填项。</b>
        # @type Name: String
        # @param IdCardType: 要修改手机号用户的证件类型，
        # 目前支持的账号类型如下：

        # <ul><li><b>ID_CARD </b>: （默认）中国大陆居民身份证 </li>
        # <li><b>HONGKONG_AND_MACAO</b> : 港澳居民来往内地通行证</li>
        # <li><b>HONGKONG_MACAO_AND_TAIWAN </b>: 港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 要修改手机号用户的身份证号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # 如果没有传递 userId且 userAccountType 是 0 或者没有传递， 此参数为<b>必填项。</b>
        # @type IdCardNumber: String
        # @param Endpoint: 要跳转的链接类型

        # <ul>
        # <li><b>HTTP</b>：（默认）跳转电子签小程序的http_url,短信通知或者H5跳转适合此类型 ，此时返回长链 (默认类型)</li>
        # <li><b>HTTP_SHORT_URL</b>：跳转电子签小程序的http_url,短信通知或者H5跳转适合此类型，此时返回短链</li>
        # <li><b>APP</b>：第三方APP或小程序跳转电子签小程序的path, APP或者小程序跳转适合此类型</li>
        # </ul>

        # @type Endpoint: String
        # @param UserData: 在用户完成实名认证后，其自定义数据将通过[手机号换绑回调](https://qian.tencent.com/developers/company/callback_types_staffs/#%E5%8D%81%E4%B8%89-%E4%B8%AA%E4%BA%BA%E5%91%98%E5%B7%A5%E6%89%8B%E6%9C%BA%E5%8F%B7%E4%BF%AE%E6%94%B9%E5%90%8E%E5%9B%9E%E8%B0%83)返回，以便用户确认其个人数据信息。请注意，自定义数据的字符长度上限为1000，且必须采用base64编码格式。

        # 请注意：
        # 此参数仅支持通过[获取c端用户实名链接](https://qian.tencent.com/developers/companyApis/users/CreateUserVerifyUrl)接口实名的用户生效。
        # @type UserData: String

        attr_accessor :Operator, :Agent, :UserId, :UserAccountType, :Name, :IdCardType, :IdCardNumber, :Endpoint, :UserData

        def initialize(operator=nil, agent=nil, userid=nil, useraccounttype=nil, name=nil, idcardtype=nil, idcardnumber=nil, endpoint=nil, userdata=nil)
          @Operator = operator
          @Agent = agent
          @UserId = userid
          @UserAccountType = useraccounttype
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Endpoint = endpoint
          @UserData = userdata
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
          @UserId = params['UserId']
          @UserAccountType = params['UserAccountType']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @Endpoint = params['Endpoint']
          @UserData = params['UserData']
        end
      end

      # CreateUserMobileChangeUrl返回参数结构体
      class CreateUserMobileChangeUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 腾讯电子签小程序的实名认证链接。 如果没有传递，默认值是 HTTP。 链接的有效期均是 7 天。

        # <b>1.如果EndPoint是APP</b>，
        # 得到的链接类似于<a href="">pages/guide/index?to=MOBILE_CHANGE_INTENTION&shortKey=yDCZHUyOcExAlcOvNod0</a>, 用法可以参考描述中的"跳转到小程序的实现"

        # <b>2.如果EndPoint是HTTP</b>，
        # 得到的链接类似于<a href="">https://res.ess.tencent.cn/cdn/h5-activity/jump-mp.html?to=MOBILE_CHANGE_INTENTION&shortKey=yDCZHUyOcChrfpaswT0d</a>，点击后会跳转到腾讯电子签小程序进行签署

        # <b>3.如果EndPoint是HTTP_SHORT_URL</b>，
        # 得到的链接类似于<a href="">https://essurl.cn/2n**42Nd</a>，点击后会跳转到腾讯电子签小程序进行签署

        # 注： <font color="red">生成的链路后面不能再增加参数</font>
        # @type Url: String
        # @param ExpireTime: 链接失效期限，为Unix时间戳（单位秒），有如下规则：

        # <ul>
        # <li>如果指定更换绑定手机号的用户(指定用户ID或姓名等信息)，则设定的链接失效期限为7天后。</li>
        # <li>如果没有指定更换绑定手机号的用户，则生成通用跳转到个人换手机号的界面，链接不会过期。</li>
        # </ul>
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :ExpireTime, :RequestId

        def initialize(url=nil, expiretime=nil, requestid=nil)
          @Url = url
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserNameChangeUrl请求参数结构体
      class CreateUserNameChangeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Endpoint: 要跳转的链接类型

        # <ul>
        # <li><strong>HTTP</strong>：适用于短信通知或H5跳转的电子签小程序HTTP长链接</li>
        # <li><strong>HTTP_SHORT_URL</strong>：适用于短信通知或H5跳转的电子签小程序HTTP短链接</li>
        # <li><strong>APP</strong>：（默认类型）适用于第三方APP或小程序跳转的电子签小程序路径</li>
        # </ul>

        # 注：如果不传递，默认值是 <font color="red"> HTTP </font>
        # @type Endpoint: String
        # @param UserData: 在用户完成改名后，其自定义数据将通过[企业引导个人更名后回调](https://qian.tencent.com/developers/company/callback_types_staffs#%E5%8D%81%E5%85%AB-%E4%BC%81%E4%B8%9A%E5%BC%95%E5%AF%BC%E4%B8%AA%E4%BA%BA%E6%9B%B4%E5%90%8D%E5%90%8E%E5%9B%9E%E8%B0%83)返回，以便用户确认其个人数据信息。请注意，自定义数据的字符长度上限为1000，且必须采用base64编码格式。
        # @type UserData: String

        attr_accessor :Operator, :Endpoint, :UserData

        def initialize(operator=nil, endpoint=nil, userdata=nil)
          @Operator = operator
          @Endpoint = endpoint
          @UserData = userdata
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Endpoint = params['Endpoint']
          @UserData = params['UserData']
        end
      end

      # CreateUserNameChangeUrl返回参数结构体
      class CreateUserNameChangeUrlResponse < TencentCloud::Common::AbstractModel
        # @param UserVerifyUrl: 腾讯电子签小程序的个人更名链接。
        # 如果没有传递，默认值是 HTTP。 链接的有效期均是 7 天。

        # <strong>1.如果EndPoint是APP</strong>：
        # 得到的链接类似于<a href="">pages/guide/index?to=MP_PERSONAL_VERIFY&shortKey=yDCZHUyOcExAlcOvNod0</a>, 用法可以参考描述中的"跳转到小程序的实现"

        # <strong>2.如果EndPoint是HTTP</strong>：
        # 得到的链接类似于 <a href="">https://res.ess.tencent.cn/cdn/h5-activity/jump-mp.html?to=TAG_VERIFY&shortKey=yDCZHUyOcChrfpaswT0d</a>，点击后会跳转到腾讯电子签小程序进行签署

        # <strong>3.如果EndPoint是HTTP_SHORT_URL</strong>：
        # 得到的链接类似于<a href="">https://essurl.cn/2n**42Nd</a>，点击后会跳转到腾讯电子签小程序进行签署


        # `注：` <font color="red">生成的链路后面不能再增加参数，防止出错重复参数覆盖原有的参数</font>
        # @type UserVerifyUrl: String
        # @param ExpireTime: 链接过期时间，为Unix时间戳（单位为秒）。
        # @type ExpireTime: Integer
        # @param MiniAppId: 小程序appid，用于半屏拉起电子签小程序， 仅在 Endpoint 设置为 APP 的时候返回
        # @type MiniAppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserVerifyUrl, :ExpireTime, :MiniAppId, :RequestId

        def initialize(userverifyurl=nil, expiretime=nil, miniappid=nil, requestid=nil)
          @UserVerifyUrl = userverifyurl
          @ExpireTime = expiretime
          @MiniAppId = miniappid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserVerifyUrl = params['UserVerifyUrl']
          @ExpireTime = params['ExpireTime']
          @MiniAppId = params['MiniAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserVerifyUrl请求参数结构体
      class CreateUserVerifyUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Name: 要实名的姓名
        # @type Name: String
        # @param IdCardNumber: 要实名的身份证号码，
        # 身份证号码如果有x的话，统一传大写X
        # @type IdCardNumber: String
        # @param IdCardType: 证件类型，目前只支持身份证类型：ID_CARD
        # @type IdCardType: String
        # @param Mobile: 要实名的手机号，兼容带+86的格式
        # @type Mobile: String
        # @param JumpUrl: 实名完之后的跳转链接，最大长度1000个字符。
        # 链接类型请参考 <a href="https://qian.tencent.com/developers/company/openqianh5" target="_blank">跳转电子签H5</a>。

        # 注：此参数仅支持 Endpoint 为 <font color="red">H5 或 H5_SHORT_URL </font>的时候传递
        # @type JumpUrl: String
        # @param Endpoint: 要跳转的链接类型

        # <ul>
        # <li><strong>HTTP</strong>：适用于短信通知或H5跳转的电子签小程序HTTP长链接</li>
        # <li><strong>HTTP_SHORT_URL</strong>：适用于短信通知或H5跳转的电子签小程序HTTP短链接</li>
        # <li><strong>APP</strong>：（默认类型）适用于第三方APP或小程序跳转的电子签小程序路径</li>
        # <li><strong>H5</strong>：适用于跳转至电子签H5实名页面的长链接</li>
        # <li><strong>H5_SHORT_URL</strong>：适用于跳转至电子签H5实名页面的短链接</li>
        # </ul>

        # 注：如果不传递，默认值是 <font color="red"> APP </font>
        # @type Endpoint: String
        # @param AutoJumpBack: 签署完成后是否自动回跳
        # <ul><li>false：否, 实名完成不会自动跳转回来(默认)</li><li>true：是, 实名完成会自动跳转回来</li></ul>

        # 注:
        # 1. 该参数<font color="red">只针对APP类型（第三方APP或小程序跳转电子签小程序）场景</font> 的实名链接有效
        # 2. <font color="red">手机应用APP 或 微信小程序需要监控界面的返回走后序逻辑</font>, 微信小程序的文档可以参考[这个](https://developers.weixin.qq.com/miniprogram/dev/reference/api/App.html#onShow-Object-object)
        # 3. <font color="red">电子签小程序跳转贵方APP，不支持自动跳转，必需用户手动点击完成按钮（微信的限制）</font>
        # @type AutoJumpBack: Boolean
        # @param UserData: 在用户完成实名认证后，其自定义数据将通过[企业引导个人实名认证后回调](https://qian.tencent.com/developers/company/callback_types_staffs/#%E5%8D%81%E4%BA%8C-%E4%BC%81%E4%B8%9A%E5%BC%95%E5%AF%BC%E4%B8%AA%E4%BA%BA%E5%AE%9E%E5%90%8D%E8%AE%A4%E8%AF%81%E5%90%8E%E5%9B%9E%E8%B0%83)返回，以便用户确认其个人数据信息。请注意，自定义数据的字符长度上限为1000，且必须采用base64编码格式。
        # @type UserData: String

        attr_accessor :Operator, :Name, :IdCardNumber, :IdCardType, :Mobile, :JumpUrl, :Endpoint, :AutoJumpBack, :UserData

        def initialize(operator=nil, name=nil, idcardnumber=nil, idcardtype=nil, mobile=nil, jumpurl=nil, endpoint=nil, autojumpback=nil, userdata=nil)
          @Operator = operator
          @Name = name
          @IdCardNumber = idcardnumber
          @IdCardType = idcardtype
          @Mobile = mobile
          @JumpUrl = jumpurl
          @Endpoint = endpoint
          @AutoJumpBack = autojumpback
          @UserData = userdata
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @IdCardType = params['IdCardType']
          @Mobile = params['Mobile']
          @JumpUrl = params['JumpUrl']
          @Endpoint = params['Endpoint']
          @AutoJumpBack = params['AutoJumpBack']
          @UserData = params['UserData']
        end
      end

      # CreateUserVerifyUrl返回参数结构体
      class CreateUserVerifyUrlResponse < TencentCloud::Common::AbstractModel
        # @param UserVerifyUrl: 腾讯电子签小程序的实名认证链接。
        # 如果没有传递，默认值是 HTTP。 链接的有效期均是 7 天。

        # <strong>1.如果EndPoint是APP</strong>：
        # 得到的链接类似于<a href="">pages/guide/index?to=MP_PERSONAL_VERIFY&shortKey=yDCZHUyOcExAlcOvNod0</a>, 用法可以参考描述中的"跳转到小程序的实现"

        # <strong>2.如果EndPoint是HTTP</strong>：
        # 得到的链接类似于 <a href="">https://res.ess.tencent.cn/cdn/h5-activity/jump-mp.html?to=TAG_VERIFY&shortKey=yDCZHUyOcChrfpaswT0d</a>，点击后会跳转到腾讯电子签小程序进行签署

        # <strong>3.如果EndPoint是HTTP_SHORT_URL</strong>：
        # 得到的链接类似于<a href="">https://essurl.cn/2n**42Nd</a>，点击后会跳转到腾讯电子签小程序进行签署

        # <strong>4.如果EndPoint是H5</strong>：
        # 得到的链接类似于 <a href="">https://quick.test.qian.tencent.cn/guide?Code=yDU****VJhsS5q&CodeType=xxx&shortKey=yD*****frcb</a>，点击后会跳转到腾讯电子签H5页面进行签署

        # <strong>5.如果EndPoint是H5_SHORT_URL</strong>：
        # 得到的链接类似于<a href="">https://essurl.cn/2n**42Nd</a>，点击后会跳转到腾讯电子签H5页面进行签署


        # `注：` <font color="red">生成的链路后面不能再增加参数，防止出错重复参数覆盖原有的参数</font>
        # 示例值：https://essurl.cn/2n**42Nd
        # @type UserVerifyUrl: String
        # @param ExpireTime: 链接过期时间，为Unix时间戳（单位为秒）。
        # @type ExpireTime: Integer
        # @param MiniAppId: 小程序appid，用于半屏拉起电子签小程序， 仅在 Endpoint 设置为 APP 的时候返回
        # @type MiniAppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserVerifyUrl, :ExpireTime, :MiniAppId, :RequestId

        def initialize(userverifyurl=nil, expiretime=nil, miniappid=nil, requestid=nil)
          @UserVerifyUrl = userverifyurl
          @ExpireTime = expiretime
          @MiniAppId = miniappid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserVerifyUrl = params['UserVerifyUrl']
          @ExpireTime = params['ExpireTime']
          @MiniAppId = params['MiniAppId']
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

      # DeleteIntegrationEmployees请求参数结构体
      class DeleteIntegrationEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Employees: 待离职员工的信息最多不超过100个。应符合以下规则：

        # 1. UserId和OpenId不可同时为空，必须填写其中一个，优先使用UserId。

        # 2. **若需要进行离职交接**，交接人信息ReceiveUserId和ReceiveOpenId不可同时为空，必须填写其中一个，优先使用ReceiveUserId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 清理的企业认证流信息
      class DeleteOrganizationAuthorizationInfo < TencentCloud::Common::AbstractModel
        # @param AuthorizationId: 认证流 Id 是指在企业认证过程中，当前操作人的认证流程的唯一标识。每个企业在认证过程中只能有一条认证流认证成功。这意味着在同一认证过程内，一个企业只能有一个认证流程处于成功状态，以确保认证的唯一性和有效性。
        # @type AuthorizationId: String
        # @param OrganizationName: 认证的企业名称
        # @type OrganizationName: String
        # @param Errormessage: 清除认证流产生的错误信息
        # @type Errormessage: String

        attr_accessor :AuthorizationId, :OrganizationName, :Errormessage

        def initialize(authorizationid=nil, organizationname=nil, errormessage=nil)
          @AuthorizationId = authorizationid
          @OrganizationName = organizationname
          @Errormessage = errormessage
        end

        def deserialize(params)
          @AuthorizationId = params['AuthorizationId']
          @OrganizationName = params['OrganizationName']
          @Errormessage = params['Errormessage']
        end
      end

      # DeleteOrganizationAuthorizations请求参数结构体
      class DeleteOrganizationAuthorizationsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息, userId 必填。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param AuthorizationIds: 认证流Ids数组
        # 认证流 Id 是指在企业认证过程中，当前操作人的认证流程的唯一标识。每个企业在认证过程中只能有一条认证流认证成功。这意味着在同一认证过程内，一个企业只能有一个认证流程处于成功状态，以确保认证的唯一性和有效性。


        # 认证流 Id可以通过回调 [授权书认证审核结果回调](https://qian.tencent.com/developers/company/callback_types_staffs/#%E5%8D%81%E5%9B%9B-%E6%8E%88%E6%9D%83%E4%B9%A6%E8%AE%A4%E8%AF%81%E5%AE%A1%E6%A0%B8%E7%BB%93%E6%9E%9C%E5%9B%9E%E8%B0%83) 获取

        # 注意：
        # 如果传递了认证流Id，则下面的参数 超管二要素不会生效
        # @type AuthorizationIds: Array
        # @param AdminName: 认证人姓名，组织机构超管姓名。
        # 在注册流程中，必须是超管本人进行操作。
        # @type AdminName: String
        # @param AdminMobile: 认证人手机号，组织机构超管手机号。 在注册流程中，必须是超管本人进行操作。
        # @type AdminMobile: String
        # @param Agent: 代理企业和员工的信息。在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :AuthorizationIds, :AdminName, :AdminMobile, :Agent

        def initialize(operator=nil, authorizationids=nil, adminname=nil, adminmobile=nil, agent=nil)
          @Operator = operator
          @AuthorizationIds = authorizationids
          @AdminName = adminname
          @AdminMobile = adminmobile
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @AuthorizationIds = params['AuthorizationIds']
          @AdminName = params['AdminName']
          @AdminMobile = params['AdminMobile']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DeleteOrganizationAuthorizations返回参数结构体
      class DeleteOrganizationAuthorizationsResponse < TencentCloud::Common::AbstractModel
        # @param DeleteOrganizationAuthorizationInfos: 清理的认证流的详细信息，其中包括企业名称，认证流唯一 Id 以及清理过程中产生的错误信息
        # @type DeleteOrganizationAuthorizationInfos: Array
        # @param Status: 批量清理认证流返回的状态值
        # 其中包括
        # - 1 全部成功
        # - 2 部分成功
        # - 3 全部失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteOrganizationAuthorizationInfos, :Status, :RequestId

        def initialize(deleteorganizationauthorizationinfos=nil, status=nil, requestid=nil)
          @DeleteOrganizationAuthorizationInfos = deleteorganizationauthorizationinfos
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteOrganizationAuthorizationInfos'].nil?
            @DeleteOrganizationAuthorizationInfos = []
            params['DeleteOrganizationAuthorizationInfos'].each do |i|
              deleteorganizationauthorizationinfo_tmp = DeleteOrganizationAuthorizationInfo.new
              deleteorganizationauthorizationinfo_tmp.deserialize(i)
              @DeleteOrganizationAuthorizationInfos << deleteorganizationauthorizationinfo_tmp
            end
          end
          @Status = params['Status']
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

      # 删除员工结果
      class DeleteStaffsResult < TencentCloud::Common::AbstractModel
        # @param SuccessEmployeeData: 删除员工的成功数据
        # @type SuccessEmployeeData: Array
        # @param FailedEmployeeData: 删除员工的失败数据
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

      # DescribeBatchOrganizationRegistrationUrls请求参数结构体
      class DescribeBatchOrganizationRegistrationUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TaskId: 通过接口CreateBatchOrganizationRegistrationTasks创建企业批量认证链接任得到的任务Id
        # @type TaskId: String
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :TaskId, :Agent

        def initialize(operator=nil, taskid=nil, agent=nil)
          @Operator = operator
          @TaskId = taskid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @TaskId = params['TaskId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeBatchOrganizationRegistrationUrls返回参数结构体
      class DescribeBatchOrganizationRegistrationUrlsResponse < TencentCloud::Common::AbstractModel
        # @param OrganizationAuthUrls: 企业批量注册链接信息
        # @type OrganizationAuthUrls: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrganizationAuthUrls, :RequestId

        def initialize(organizationauthurls=nil, requestid=nil)
          @OrganizationAuthUrls = organizationauthurls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OrganizationAuthUrls'].nil?
            @OrganizationAuthUrls = []
            params['OrganizationAuthUrls'].each do |i|
              organizationauthurl_tmp = OrganizationAuthUrl.new
              organizationauthurl_tmp.deserialize(i)
              @OrganizationAuthUrls << organizationauthurl_tmp
            end
          end
          @RequestId = params['RequestId']
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
        # <li>**NoAuthSign**: 形式签</li>
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeBillUsage请求参数结构体
      class DescribeBillUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间字符串，格式为yyyymmdd,时间跨度不能大于90天
        # @type StartTime: String
        # @param EndTime: 查询结束时间字符串，格式为yyyymmdd,时间跨度不能大于90天
        # @type EndTime: String
        # @param QuotaType: 查询的套餐类型 （选填 ）不传则查询所有套餐；目前支持:<ul><li>**CloudEnterprise**: 企业版合同</li><li>**SingleSignature**: 单方签章</li><li>**CloudProve**: 签署报告</li><li>**CloudOnlineSign**: 腾讯会议在线签约</li><li>**ChannelWeCard**: 微工卡</li><li>**SignFlow**: 合同套餐</li><li>**SignFace**: 签署意愿（人脸识别）</li><li>**SignPassword**: 签署意愿（密码）</li><li>**SignSMS**: 签署意愿（短信）</li><li>**PersonalEssAuth**: 签署人实名（腾讯电子签认证）</li><li>**PersonalThirdAuth**: 签署人实名（信任第三方认证）</li><li>**OrgEssAuth**: 签署企业实名</li><li>**FlowNotify**: 短信通知</li><li>**AuthService**: 企业工商信息查询</li></ul>
        # @type QuotaType: String
        # @param DisplaySubEnterprise: 是否展示集团子企业的明细，默认否
        # @type DisplaySubEnterprise: Boolean

        attr_accessor :StartTime, :EndTime, :QuotaType, :DisplaySubEnterprise

        def initialize(starttime=nil, endtime=nil, quotatype=nil, displaysubenterprise=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QuotaType = quotatype
          @DisplaySubEnterprise = displaysubenterprise
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QuotaType = params['QuotaType']
          @DisplaySubEnterprise = params['DisplaySubEnterprise']
        end
      end

      # DescribeBillUsage返回参数结构体
      class DescribeBillUsageResponse < TencentCloud::Common::AbstractModel
        # @param Summary: 企业套餐余额及使用情况
        # @type Summary: Array
        # @param SubOrgSummary: 集团子企业套餐使用情况
        # @type SubOrgSummary: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Summary, :SubOrgSummary, :RequestId

        def initialize(summary=nil, suborgsummary=nil, requestid=nil)
          @Summary = summary
          @SubOrgSummary = suborgsummary
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Summary'].nil?
            @Summary = []
            params['Summary'].each do |i|
              orgbillsummary_tmp = OrgBillSummary.new
              orgbillsummary_tmp.deserialize(i)
              @Summary << orgbillsummary_tmp
            end
          end
          unless params['SubOrgSummary'].nil?
            @SubOrgSummary = []
            params['SubOrgSummary'].each do |i|
              suborgbillsummary_tmp = SubOrgBillSummary.new
              suborgbillsummary_tmp.deserialize(i)
              @SubOrgSummary << suborgbillsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCancelFlowsTask请求参数结构体
      class DescribeCancelFlowsTaskRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # <br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TaskId: 批量撤销任务编号，为32位字符串，通过接口[获取批量撤销签署流程腾讯电子签小程序链接](https://qian.tencent.com/developers/companyApis/operateFlows/CreateBatchCancelFlowUrl)获得。
        # @type TaskId: String
        # @param Agent: 代理企业和员工的信息。
        # <br/>在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :TaskId, :Agent

        def initialize(operator=nil, taskid=nil, agent=nil)
          @Operator = operator
          @TaskId = taskid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @TaskId = params['TaskId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeCancelFlowsTask返回参数结构体
      class DescribeCancelFlowsTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 批量撤销任务编号，为32位字符串，通过接口[获取批量撤销签署流程腾讯电子签小程序链接](https://qian.tencent.com/developers/companyApis/operateFlows/CreateBatchCancelFlowUrl)获得。
        # @type TaskId: String
        # @param TaskStatus: 任务状态，需要关注的状态
        # <ul><li>**PROCESSING**  - 任务执行中</li>
        # <li>**END** - 任务处理完成</li>
        # <li>**TIMEOUT** 任务超时未处理完成，用户未在批量撤销链接有效期内操作</li></ul>
        # @type TaskStatus: String
        # @param SuccessFlowIds: 批量撤销成功的签署流程编号
        # @type SuccessFlowIds: Array
        # @param FailureFlows: 批量撤销失败的签署流程信息
        # @type FailureFlows: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :SuccessFlowIds, :FailureFlows, :RequestId

        def initialize(taskid=nil, taskstatus=nil, successflowids=nil, failureflows=nil, requestid=nil)
          @TaskId = taskid
          @TaskStatus = taskstatus
          @SuccessFlowIds = successflowids
          @FailureFlows = failureflows
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskStatus = params['TaskStatus']
          @SuccessFlowIds = params['SuccessFlowIds']
          unless params['FailureFlows'].nil?
            @FailureFlows = []
            params['FailureFlows'].each do |i|
              cancelfailureflow_tmp = CancelFailureFlow.new
              cancelfailureflow_tmp.deserialize(i)
              @FailureFlows << cancelfailureflow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtendedServiceAuthDetail请求参数结构体
      class DescribeExtendedServiceAuthDetailRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ExtendServiceType: 要查询的扩展服务类型。
        # 如下所示：
        # <ul><li>OPEN_SERVER_SIGN：企业静默签署</li>
        # <li>BATCH_SIGN：批量签署</li>
        # </ul>
        # @type ExtendServiceType: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用。 注：`1.默认值为20，单页做大值为200。`
        # @type Limit: Integer
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用。 注：`1.offset从0开始，即第一页为0。` `2.默认从第一页返回。`
        # @type Offset: Integer

        attr_accessor :Operator, :ExtendServiceType, :Agent, :Limit, :Offset

        def initialize(operator=nil, extendservicetype=nil, agent=nil, limit=nil, offset=nil)
          @Operator = operator
          @ExtendServiceType = extendservicetype
          @Agent = agent
          @Limit = limit
          @Offset = offset
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
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeExtendedServiceAuthDetail返回参数结构体
      class DescribeExtendedServiceAuthDetailResponse < TencentCloud::Common::AbstractModel
        # @param AuthInfoDetail: 服务授权的信息列表，根据查询类型返回特定扩展服务的授权状况。
        # @type AuthInfoDetail: :class:`Tencentcloud::Ess.v20201111.models.AuthInfoDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthInfoDetail, :RequestId

        def initialize(authinfodetail=nil, requestid=nil)
          @AuthInfoDetail = authinfodetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuthInfoDetail'].nil?
            @AuthInfoDetail = AuthInfoDetail.new
            @AuthInfoDetail.deserialize(params['AuthInfoDetail'])
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
        # <ul><li>OPEN_SERVER_SIGN：企业自动签署</li>
        # <li>AUTO_SIGN_CAN_FILL_IN：本企业自动签合同支持签前内容补充</li>
        # <li>BATCH_SIGN：批量签署</li>
        # <li>OVERSEA_SIGN：企业与港澳台居民签署合同</li>
        # <li>AGE_LIMIT_EXPANSION：拓宽签署方年龄限制</li>
        # <li>MOBILE_CHECK_APPROVER：个人签署方仅校验手机号</li>
        # <li>HIDE_OPERATOR_DISPLAY：隐藏合同经办人姓名</li>
        # <li>ORGANIZATION_OCR_FALLBACK：正楷临摹签名失败后更换其他签名类型</li>
        # <li>ORGANIZATION_FLOW_NOTIFY_TYPE：短信通知签署方</li>
        # <li>ORGANIZATION_FLOW_EMAIL_NOTIFY：邮件通知签署方</li>
        # <li>FLOW_APPROVAL：合同审批强制开启</li>
        # <li>ORGANIZATION_FLOW_PASSWD_NOTIFY：签署密码开通引导</li>
        # <li>HIDE_ONE_KEY_SIGN：个人签署方手写签名时需逐个手写</li>
        # <li>SIGN_SIGNATURE_DEFAULT_SET_HANDWRITE：个人签署方手动签名</li>
        # <li>APP_LOGIN：限制企业员工小程序端登录</li>
        # <li>PC_LOGIN：限制企业员工网页端登录</li>
        # </ul>
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeFileCounterSignResult请求参数结构体
      class DescribeFileCounterSignResultRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param TaskId: 加签任务Id
        # @type TaskId: String

        attr_accessor :Operator, :Agent, :TaskId

        def initialize(operator=nil, agent=nil, taskid=nil)
          @Operator = operator
          @Agent = agent
          @TaskId = taskid
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
          @TaskId = params['TaskId']
        end
      end

      # DescribeFileCounterSignResult返回参数结构体
      class DescribeFileCounterSignResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 加签任务的状态。

        # <ul>
        # <li><b>PROCESSING</b>: 任务正在执行中。</li>
        # <li><b>FINISHED</b>: 已执行成功</li>
        # <li><b>FAILED</b>: 执行失败</li>
        # </ul>
        # @type Status: String
        # @param ResultFileId: 加签完成后新的文件Id
        # @type ResultFileId: String
        # @param ErrorDetail: 失败的错误信息，加签任务失败的情况下会返回。
        # @type ErrorDetail: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ResultFileId, :ErrorDetail, :RequestId

        def initialize(status=nil, resultfileid=nil, errordetail=nil, requestid=nil)
          @Status = status
          @ResultFileId = resultfileid
          @ErrorDetail = errordetail
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ResultFileId = params['ResultFileId']
          @ErrorDetail = params['ErrorDetail']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileUrls请求参数结构体
      class DescribeFileUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param BusinessType: 文件对应的业务类型，目前支持：<ul><li>**FLOW ** : <font color="red">如需下载合同文件请选择此项</font></li><li>**TEMPLATE ** : 如需下载模板文件请选择此项</li><li>**DOCUMENT  **: 如需下载文档文件请选择此项</li><li>**SEAL  **: 如需下载印章图片请选择此项</li><li>**DIGITFILE**: 如需下载加签文件请选择此项</li></ul>
        # @type BusinessType: String
        # @param BusinessIds: 业务编号的数组，取值如下：<ul><li>流程编号</li><li>模板编号</li><li>文档编号</li><li>印章编号</li><li>加签文件编号</li><li>如需下载合同文件请传入FlowId，最大支持20个资源</li></ul>
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
        deprecate :CcToken, :none, 2025, 5
        deprecate :CcToken=, :none, 2025, 5
        deprecate :Scene, :none, 2025, 5
        deprecate :Scene=, :none, 2025, 5

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。[点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

        # [点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)
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
        # @param RecipientComponentInfos: 合同流程关联的填写控件信息，包括填写控件的归属方以及是否填写等内容。
        # @type RecipientComponentInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ReportType: 指定申请的报告类型，可选类型如下：
        # <ul><li> **0** :合同签署报告（默认）</li>
        # <li> **1** :公证处核验报告</li></ul>
        # @type ReportType: Integer

        attr_accessor :Operator, :ReportId, :Agent, :ReportType

        def initialize(operator=nil, reportid=nil, agent=nil, reporttype=nil)
          @Operator = operator
          @ReportId = reportid
          @Agent = agent
          @ReportType = reporttype
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
          @ReportType = params['ReportType']
        end
      end

      # DescribeFlowEvidenceReport返回参数结构体
      class DescribeFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 出证报告PDF的下载 URL，`有效期为5分钟`，超过有效期后将无法再下载。
        # @type ReportUrl: String
        # @param Status: 出证任务执行的状态, 状态含义如下：

        # <ul><li>**EvidenceStatusExecuting**：  出证任务在执行中</li>
        # <li>**EvidenceStatusSuccess**：  出证任务执行成功</li>
        # <li>**EvidenceStatusFailed** ： 出证任务执行失败</li></ul>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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


        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。

        # [点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: 搜索过滤的条件，本字段允许您通过指定模板 ID 或模板名称来进行查询。
        # <ul><li><strong>模板 ID</strong>：<strong>Key</strong>设置为 <code>template-id</code> ，<strong>Values</strong>为您想要查询的 <a href="https://qcloudimg.tencent-cloud.cn/raw/5c27b917b2bbe8c341566c78ca6f8782.png" target="_blank">模板 ID </a>列表。</li>  <li><strong>主企业模板 ID</strong>：<strong>Key</strong>设置为 <code>share-template-id</code> ，<strong>Values</strong>为您想要查询的 <a href="https://qcloudimg.tencent-cloud.cn/raw/5c27b917b2bbe8c341566c78ca6f8782.png" target="_blank">主企业模板 ID </a>列表。用来查询主企业分享模板到子企业场景下，子企业的模板信息，在此情境下，参数 <strong>Agent.ProxyOrganizationId</strong>（子企业的组织ID）为必填项。</li> <li><strong>模板名称</strong>：<strong>Key</strong>设置为 <code>template-name</code> ，<strong>Values</strong>为您想要查询的<a href="https://qcloudimg.tencent-cloud.cn/raw/03a924ee0a53d86575f8067d1c97876d.png" target="_blank">模板名称</a>列表。</li><li><strong>模板的用户合同类型</strong>：<strong>Key</strong>设置为 <code>user-flow-type-id</code> ，<strong>Values</strong>为您想要查询的用户模版类型id列表。</li></ul>
        # @type Filters: Array
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用。

        # 注：`1.offset从0开始，即第一页为0。`
        # `2.默认从第一页返回。`
        # @type Offset: Integer
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用。

        # 注：`1.默认值为20，单页做大值为200。`
        # @type Limit: Integer
        # @param ApplicationId: 通过指定[第三方应用的应用号（ApplicationId）](https://qcloudimg.tencent-cloud.cn/raw/60efa1e9049732e5246b20a268882b1a.png)，您可以查询<a href="https://qcloudimg.tencent-cloud.cn/raw/18319e5e77f7d47eab493d43d47827d3.png" target="_blank">【应用模板库管理】</a>中某个第三方应用下的模板。

        # <p><strong>注意事项：</strong></p>
        # <ul><li>当 <strong>ApplicationId</strong> 为空时（默认），系统将查询<a href="https://qcloudimg.tencent-cloud.cn/raw/376943a1d472393dd5388592f2e85ee5.png" target="_blank">平台企业的所有模板</a>（自建应用使用的模板）。</li><li>当 <strong>ApplicationId</strong> 不为空时，系统将从<a href="https://qcloudimg.tencent-cloud.cn/raw/18319e5e77f7d47eab493d43d47827d3.png" target="_blank">【应用模板库管理】</a>中查询该特定应用下的模板（分享给第三方应用子企业的模板）。</li></ul>
        # @type ApplicationId: String
        # @param IsChannel: 默认为false，查询SaaS模板库列表；
        # 为true，查询第三方应用集成平台企业模板库管理列表
        # @type IsChannel: Boolean
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`
        # @param GenerateSource: 暂未开放
        # @type GenerateSource: Integer
        # @param WithPreviewUrl: 是否获取模板预览链接。

        # <ul><li><strong>false</strong>：不获取（默认）</li><li><strong>true</strong>：需要获取</li></ul>
        # 设置为true之后， 返回参数PreviewUrl，为模板的H5预览链接, 有效期5分钟。可以通过浏览器打开此链接预览模板，或者嵌入到iframe中预览模板。
        # @type WithPreviewUrl: Boolean

        attr_accessor :Operator, :Agent, :ContentType, :Filters, :Offset, :Limit, :ApplicationId, :IsChannel, :Organization, :GenerateSource, :WithPreviewUrl
        extend Gem::Deprecate
        deprecate :IsChannel, :none, 2025, 5
        deprecate :IsChannel=, :none, 2025, 5
        deprecate :Organization, :none, 2025, 5
        deprecate :Organization=, :none, 2025, 5
        deprecate :GenerateSource, :none, 2025, 5
        deprecate :GenerateSource=, :none, 2025, 5

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: 偏移量，默认为0，最大20000。关于<code>Offset</code>的更进一步介绍请参考 API <a href="https://cloud.tencent.com/document/api/213/15688" target="_blank">简介</a>中的相关小节。
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
        # @type Employees: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 20。
        # @type Limit: Integer
        # @param TotalCount: 符合条件的员工数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: OFFSET 用于指定查询结果的偏移量，如果不传默认偏移为0,最大2000。
        # 分页参数, 需要limit, offset 配合使用
        # 例如:
        # 您希望得到第三页的数据, 且每页限制最多10条
        # 您可以使用 LIMIT 10 OFFSET 20
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
        # @param Offset: OFFSET 用于指定查询结果的偏移量，如果不传默认偏移为0, 最大为2000
        # 分页参数, 需要limit, offset 配合使用
        # 例如:
        # 您希望得到第三页的数据, 且每页限制最多10条
        # 您可以使用 LIMIT 10 OFFSET 20
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 200。
        # @type Limit: Integer
        # @param TotalCount: 符合查询条件的总角色数。
        # @type TotalCount: Integer
        # @param IntegrateRoles: 企业角色信息列表。
        # @type IntegrateRoles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeOrganizationAuthStatus请求参数结构体
      class DescribeOrganizationAuthStatusRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。 支持填入集团子公司经办人 userId 代发合同。  注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param OrganizationName: 组织机构名称。 请确认该名称与企业营业执照中注册的名称一致。 如果名称中包含英文括号()，请使用中文括号（）代替。
        # @type OrganizationName: String
        # @param UniformSocialCreditCode: 企业统一社会信用代码
        # 注意：OrganizationName和UniformSocialCreditCode不能同时为空
        # @type UniformSocialCreditCode: String
        # @param LegalName: 法人姓名
        # @type LegalName: String

        attr_accessor :Operator, :OrganizationName, :UniformSocialCreditCode, :LegalName

        def initialize(operator=nil, organizationname=nil, uniformsocialcreditcode=nil, legalname=nil)
          @Operator = operator
          @OrganizationName = organizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalName = legalname
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @OrganizationName = params['OrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalName = params['LegalName']
        end
      end

      # DescribeOrganizationAuthStatus返回参数结构体
      class DescribeOrganizationAuthStatusResponse < TencentCloud::Common::AbstractModel
        # @param IsVerified: 企业是否已认证
        # @type IsVerified: Boolean
        # @param AuthStatus: 企业认证状态 0-未认证 1-认证中 2-已认证
        # @type AuthStatus: Integer
        # @param AuthRecords: 企业认证信息
        # @type AuthRecords: Array
        # @param OrganizationId: 企业在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多"->"企业设置"->"企业中心"- 中查看企业电子签账号。
        # p.s. 只有当前企业认证成功的时候返回
        # @type OrganizationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsVerified, :AuthStatus, :AuthRecords, :OrganizationId, :RequestId

        def initialize(isverified=nil, authstatus=nil, authrecords=nil, organizationid=nil, requestid=nil)
          @IsVerified = isverified
          @AuthStatus = authstatus
          @AuthRecords = authrecords
          @OrganizationId = organizationid
          @RequestId = requestid
        end

        def deserialize(params)
          @IsVerified = params['IsVerified']
          @AuthStatus = params['AuthStatus']
          unless params['AuthRecords'].nil?
            @AuthRecords = []
            params['AuthRecords'].each do |i|
              authrecord_tmp = AuthRecord.new
              authrecord_tmp.deserialize(i)
              @AuthRecords << authrecord_tmp
            end
          end
          @OrganizationId = params['OrganizationId']
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
        # @type Total: Integer
        # @param JoinedTotal: 已授权待激活的子企业总数量
        # @type JoinedTotal: Integer
        # @param ActivedTotal: 已加入的企业数量(废弃,请使用ActivatedTotal)
        # @type ActivedTotal: Integer
        # @param ExportUrl: 如果入参Export为 true 时使用，表示导出Excel的url
        # @type ExportUrl: String
        # @param List: 成员企业信息列表
        # @type List: Array
        # @param ActivatedTotal: 已加入的子企业总数量
        # @type ActivatedTotal: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :JoinedTotal, :ActivedTotal, :ExportUrl, :List, :ActivatedTotal, :RequestId
        extend Gem::Deprecate
        deprecate :ActivedTotal, :none, 2025, 5
        deprecate :ActivedTotal=, :none, 2025, 5

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
        # @param InfoType: 查询授权用户信息类型，取值如下：

        # <ul> <li><b>0</b>：（默认）不返回授权用户信息</li> <li><b>1</b>：返回授权用户的信息</li> </ul>
        # @type InfoType: Integer
        # @param SealId: 印章id，是否查询特定的印章（没有输入返回所有）
        # @type SealId: String
        # @param SealTypes: 印章种类列表（均为组织机构印章）。 若无特定需求，将展示所有类型的印章。 目前支持以下几种：<ul> <li><strong>OFFICIAL</strong>：企业公章；</li> <li><strong>CONTRACT</strong>：合同专用章；</li> <li><strong>ORGANIZATION_SEAL</strong>：企业印章（通过图片上传创建）；</li> <li><strong>LEGAL_PERSON_SEAL</strong>：法定代表人章。</li> <li><strong>EMPLOYEE_QUALIFICATION_SEAL</strong>：员工执业章。</li> </ul>
        # @type SealTypes: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param SealStatuses: 需查询的印章状态列表。
        # <ul>
        # <li>空：（默认）仅查询启用状态的印章；</li>
        # <li><strong>ALL</strong>：查询所有状态的印章；</li>
        # <li><strong>CHECKING</strong>：查询待审核的印章；</li>
        # <li><strong>SUCCESS</strong>：查询启用状态的印章；</li>
        # <li><strong>FAIL</strong>：查询印章审核拒绝的印章；</li>
        # <li><strong>DISABLE</strong>：查询已停用的印章；</li>
        # <li><strong>STOPPED</strong>：查询已终止的印章；</li>
        # <li><strong>VOID</strong>：查询已作废的印章；</li>
        # <li><strong>INVALID</strong>：查询已失效的印章。</li>
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
        # @param TotalCount: 在设定了SealId时，返回值为0或1；若未设定SealId，则返回公司的总印章数量
        # @type TotalCount: Integer
        # @param Seals: 查询到的印章结果数组
        # @type Seals: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeOrganizationVerifyStatus请求参数结构体
      class DescribeOrganizationVerifyStatusRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。 支持填入集团子公司经办人 userId 代发合同。  注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :Agent

        def initialize(operator=nil, agent=nil)
          @Operator = operator
          @Agent = agent
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
        end
      end

      # DescribeOrganizationVerifyStatus返回参数结构体
      class DescribeOrganizationVerifyStatusResponse < TencentCloud::Common::AbstractModel
        # @param VerifyStatus: 当前企业认证状态
        # <ul>
        # <li> <b>0 </b>:未认证</li>
        # <li> <b>1 </b> : 认证中</li>
        # <li> <b>2 </b> : 已认证</li>
        # </ul>
        # @type VerifyStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeSignFaceVideo请求参数结构体
      class DescribeSignFaceVideoRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写userId。<br/>注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param SignId: 签署参与人在本流程中的编号ID(每个流程不同)，可用此ID来定位签署参与人在本流程的签署节点，也可用于后续创建签署链接等操作。
        # @type SignId: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :SignId, :Agent

        def initialize(operator=nil, flowid=nil, signid=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @SignId = signid
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @SignId = params['SignId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeSignFaceVideo返回参数结构体
      class DescribeSignFaceVideoResponse < TencentCloud::Common::AbstractModel
        # @param VideoData: 核身视频结果。
        # @type VideoData: :class:`Tencentcloud::Ess.v20201111.models.DetectInfoVideoData`
        # @param IntentionQuestionResult: 意愿核身问答模式结果。若未使用该意愿核身功能，该字段返回值可以不处理。
        # @type IntentionQuestionResult: :class:`Tencentcloud::Ess.v20201111.models.IntentionQuestionResult`
        # @param IntentionActionResult: 意愿核身点头确认模式的结果信息，若未使用该意愿核身功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionActionResult: :class:`Tencentcloud::Ess.v20201111.models.IntentionActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VideoData, :IntentionQuestionResult, :IntentionActionResult, :RequestId

        def initialize(videodata=nil, intentionquestionresult=nil, intentionactionresult=nil, requestid=nil)
          @VideoData = videodata
          @IntentionQuestionResult = intentionquestionresult
          @IntentionActionResult = intentionactionresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VideoData'].nil?
            @VideoData = DetectInfoVideoData.new
            @VideoData.deserialize(params['VideoData'])
          end
          unless params['IntentionQuestionResult'].nil?
            @IntentionQuestionResult = IntentionQuestionResult.new
            @IntentionQuestionResult.deserialize(params['IntentionQuestionResult'])
          end
          unless params['IntentionActionResult'].nil?
            @IntentionActionResult = IntentionActionResult.new
            @IntentionActionResult.deserialize(params['IntentionActionResult'])
          end
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。<ul><li>**0**: 使用个人自动签账号许可进行开通，个人自动签账号许可有效期1年，注: `不可解绑释放更换他人`</li><li>**1**: 不绑定自动签账号许可开通，后续使用合同份额进行合同发起</li></ul>
        # @type LicenseType: Integer
        # @param SealId: 用户开通自动签指定使用的印章，为空则未设置印章，需重新进入开通链接设置印章。
        # @type SealId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsOpen, :LicenseFrom, :LicenseTo, :LicenseType, :SealId, :RequestId

        def initialize(isopen=nil, licensefrom=nil, licenseto=nil, licensetype=nil, sealid=nil, requestid=nil)
          @IsOpen = isopen
          @LicenseFrom = licensefrom
          @LicenseTo = licenseto
          @LicenseType = licensetype
          @SealId = sealid
          @RequestId = requestid
        end

        def deserialize(params)
          @IsOpen = params['IsOpen']
          @LicenseFrom = params['LicenseFrom']
          @LicenseTo = params['LicenseTo']
          @LicenseType = params['LicenseType']
          @SealId = params['SealId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserFlowType请求参数结构体
      class DescribeUserFlowTypeRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Filters: 搜索过滤的条件，本字段允许您通过指定模板 ID 或模板名称来进行查询。
        # <ul><li><strong>模板 ID</strong>：<strong>Key</strong>设置为 <code>template-id</code> ，<strong>Values</strong>为您想要查询的 <a href="https://qcloudimg.tencent-cloud.cn/raw/5c27b917b2bbe8c341566c78ca6f8782.png" target="_blank">模板 ID </a>列表。</li>  <li><strong>主企业模板 ID</strong>：<strong>Key</strong>设置为 <code>share-template-id</code> ，<strong>Values</strong>为您想要查询的 <a href="https://qcloudimg.tencent-cloud.cn/raw/5c27b917b2bbe8c341566c78ca6f8782.png" target="_blank">主企业模板 ID </a>列表。用来查询主企业分享模板到子企业场景下，子企业的模板信息，在此情境下，参数 <strong>Agent.ProxyOrganizationId</strong>（子企业的组织ID）为必填项。</li> <li><strong>模板名称</strong>：<strong>Key</strong>设置为 <code>template-name</code> ，<strong>Values</strong>为您想要查询的<a href="https://qcloudimg.tencent-cloud.cn/raw/03a924ee0a53d86575f8067d1c97876d.png" target="_blank">模板名称</a>列表。</li><li><strong>模板的用户合同类型</strong>：<strong>Key</strong>设置为 <code>user-flow-type-id</code> ，<strong>Values</strong>为您想要查询的用户模版类型id列表。</li></ul>
        # @type Filters: Array
        # @param QueryBindTemplate: 查询绑定了模版的用户合同类型 <ul> <li>false（默认值），查询用户合同类型</li> <li>true，查询绑定了模版的用户合同类型</li> </ul>
        # @type QueryBindTemplate: Boolean

        attr_accessor :Operator, :Agent, :Filters, :QueryBindTemplate

        def initialize(operator=nil, agent=nil, filters=nil, querybindtemplate=nil)
          @Operator = operator
          @Agent = agent
          @Filters = filters
          @QueryBindTemplate = querybindtemplate
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
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @QueryBindTemplate = params['QueryBindTemplate']
        end
      end

      # DescribeUserFlowType返回参数结构体
      class DescribeUserFlowTypeResponse < TencentCloud::Common::AbstractModel
        # @param AllUserFlowTypes: 查询到的所有用户合同类型列表
        # @type AllUserFlowTypes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllUserFlowTypes, :RequestId

        def initialize(alluserflowtypes=nil, requestid=nil)
          @AllUserFlowTypes = alluserflowtypes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AllUserFlowTypes'].nil?
            @AllUserFlowTypes = []
            params['AllUserFlowTypes'].each do |i|
              templateuserflowtype_tmp = TemplateUserFlowType.new
              templateuserflowtype_tmp.deserialize(i)
              @AllUserFlowTypes << templateuserflowtype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserVerifyStatus请求参数结构体
      class DescribeUserVerifyStatusRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 中国大陆居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 中国港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>
        # @type IdCardType: String

        attr_accessor :Operator, :Name, :IdCardNumber, :IdCardType

        def initialize(operator=nil, name=nil, idcardnumber=nil, idcardtype=nil)
          @Operator = operator
          @Name = name
          @IdCardNumber = idcardnumber
          @IdCardType = idcardtype
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @IdCardType = params['IdCardType']
        end
      end

      # DescribeUserVerifyStatus返回参数结构体
      class DescribeUserVerifyStatusResponse < TencentCloud::Common::AbstractModel
        # @param VerifyStatus: true:表示已实名
        # false：表示未实名
        # @type VerifyStatus: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 视频认证结果
      class DetectInfoVideoData < TencentCloud::Common::AbstractModel
        # @param LiveNessVideo: 活体视频的base64编码，mp4格式

        # 注:`需进行base64解码获取活体视频文件`
        # @type LiveNessVideo: String

        attr_accessor :LiveNessVideo

        def initialize(livenessvideo=nil)
          @LiveNessVideo = livenessvideo
        end

        def deserialize(params)
          @LiveNessVideo = params['LiveNessVideo']
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

      # 动态添加签署人的结果信息
      class DynamicFlowApproverResult < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署方角色编号，签署方角色编号是用于区分同一个流程中不同签署方的唯一标识。不同的流程会出现同样的签署方角色编号。

        # 填写控件和签署控件都与特定的角色编号关联。

        # 在进行新增签署方操作时，建议记录下该签署方的角色编号。后续可以拉取流程信息，用来判断该签署方的当前状态。
        # @type RecipientId: String
        # @param SignId: 签署方唯一编号，一个全局唯一的标识符，不同的流程不会出现冲突。

        # 可以使用签署方的唯一编号来生成签署链接（也可以通过RecipientId来生成签署链接）。
        # @type SignId: String
        # @param ApproverStatus: 签署方当前状态，会出现下面的状态

        # 2：待签署
        # 3：已签署
        # 4：已拒绝
        # 5：已过期
        # 6：已撤销
        # 8：待填写
        # 9：因为各种原因（签署人改名等）而终止
        # 10：填写完成
        # 15：已解除
        # 19：转他人处理
        # @type ApproverStatus: Integer

        attr_accessor :RecipientId, :SignId, :ApproverStatus

        def initialize(recipientid=nil, signid=nil, approverstatus=nil)
          @RecipientId = recipientid
          @SignId = signid
          @ApproverStatus = approverstatus
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @SignId = params['SignId']
          @ApproverStatus = params['ApproverStatus']
        end
      end

      # 个性化参数
      class EmbedUrlOption < TencentCloud::Common::AbstractModel
        # @param ShowFlowDetailComponent: 合同详情预览，允许展示控件信息
        # <ul>
        # <li><b>true</b>：允许在合同详情页展示控件</li>
        # <li><b>false</b>：（默认）不允许在合同详情页展示控件</li>
        # </ul>
        # @type ShowFlowDetailComponent: Boolean
        # @param ShowTemplateComponent: 模板预览，允许展示模板控件信息
        # <ul><li> <b>true</b> :允许在模板预览页展示控件</li>
        # <li> <b>false</b> :（默认）不允许在模板预览页展示控件</li></ul>
        # @type ShowTemplateComponent: Boolean
        # @param SkipUploadFile: 跳过上传文件，默认为false(展示上传文件页）![image](https://qcloudimg.tencent-cloud.cn/raw/8ca33745cf772e79831dbe5a70e82400.png)
        # - false: 展示上传文件页
        # - true: 不展示上传文件页


        # 注意: 此参数仅针对**EmbedType=CREATE_TEMPLATE(创建模板)和EmbedType=CREATE_CONTRACT_DRAFT_COOPEDIT(创建起草合同)有效**，
        # @type SkipUploadFile: Boolean
        # @param ForbidEditWatermark: 是否禁止编辑（展示）水印控件属性
        # <ul><li>（默认） false -否</li> <li> true - 禁止编辑</li></ul>
        # @type ForbidEditWatermark: Boolean

        attr_accessor :ShowFlowDetailComponent, :ShowTemplateComponent, :SkipUploadFile, :ForbidEditWatermark

        def initialize(showflowdetailcomponent=nil, showtemplatecomponent=nil, skipuploadfile=nil, forbideditwatermark=nil)
          @ShowFlowDetailComponent = showflowdetailcomponent
          @ShowTemplateComponent = showtemplatecomponent
          @SkipUploadFile = skipuploadfile
          @ForbidEditWatermark = forbideditwatermark
        end

        def deserialize(params)
          @ShowFlowDetailComponent = params['ShowFlowDetailComponent']
          @ShowTemplateComponent = params['ShowTemplateComponent']
          @SkipUploadFile = params['SkipUploadFile']
          @ForbidEditWatermark = params['ForbidEditWatermark']
        end
      end

      # 扩展服务开通和授权的详细信息
      class ExtendAuthInfo < TencentCloud::Common::AbstractModel
        # @param Type: 扩展服务的类型，可能是以下值：
        # <ul><li>OPEN_SERVER_SIGN：企业自动签署</li>
        # <li>BATCH_SIGN：批量签署</li>
        # <li>OVERSEA_SIGN：企业与港澳台居民签署合同</li>
        # <li>AGE_LIMIT_EXPANSION：拓宽签署方年龄限制</li>
        # <li>MOBILE_CHECK_APPROVER：个人签署方仅校验手机号</li>
        # <li>HIDE_OPERATOR_DISPLAY：隐藏合同经办人姓名</li>
        # <li>ORGANIZATION_OCR_FALLBACK：正楷临摹签名失败后更换其他签名类型</li>
        # <li>ORGANIZATION_FLOW_NOTIFY_TYPE：短信通知签署方</li>
        # <li>HIDE_ONE_KEY_SIGN：个人签署方手动签字</li>
        # <li>PAGING_SEAL：骑缝章</li>
        # <li>ORGANIZATION_FLOW_PASSWD_NOTIFY：签署密码开通引导</li></ul>
        # @type Type: String
        # @param Name: 扩展服务的名称
        # @type Name: String
        # @param Status: 扩展服务的开通状态：
        # <ul>
        # <li>ENABLE : 已开通</li>
        # <li>DISABLE : 未开通</li>
        # </ul>
        # @type Status: String
        # @param OperatorUserId: 操作扩展服务的操作人UserId，员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # @type OperatorUserId: String
        # @param OperateOn: 扩展服务的操作时间，格式为Unix标准时间戳（秒）。
        # @type OperateOn: Integer
        # @param HasAuthUserList: 该扩展服务若可以授权，此参数对应授权人员的列表
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

      # 印章扩展信息
      class ExtendScene < TencentCloud::Common::AbstractModel
        # @param GenerateType: 印章来源类型
        # @type GenerateType: String
        # @param GenerateTypeDesc: 印章来源类型描述
        # @type GenerateTypeDesc: String
        # @param GenerateTypeLogo: 印章来源logo
        # @type GenerateTypeLogo: String

        attr_accessor :GenerateType, :GenerateTypeDesc, :GenerateTypeLogo

        def initialize(generatetype=nil, generatetypedesc=nil, generatetypelogo=nil)
          @GenerateType = generatetype
          @GenerateTypeDesc = generatetypedesc
          @GenerateTypeLogo = generatetypelogo
        end

        def deserialize(params)
          @GenerateType = params['GenerateType']
          @GenerateTypeDesc = params['GenerateTypeDesc']
          @GenerateTypeLogo = params['GenerateTypeLogo']
        end
      end

      # 绑定角色失败信息
      class FailedCreateRoleData < TencentCloud::Common::AbstractModel
        # @param UserId: 用户userId
        # @type UserId: String
        # @param RoleIds: 角色id列表
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
        # @type UserId: String
        # @param OpenId: 员工在第三方平台的openId
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
      # - 补充个人签署方时，若该用户已在电子签完成实名则可通过指定姓名和证件类型、证件号码完成补充
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
        # @param ApproverIdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD 中国大陆居民身份证</li>
        # <li>HONGKONG_AND_MACAO 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN 中国港澳台居民居住证(格式同中国大陆居民身份证)</li>
        # <li>OTHER_CARD_TYPE 其他证件</li></ul>

        # 注: `1.其他证件类型为白名单功能，使用前请联系对接的客户经理沟通。`
        # `2.补充个人签署方时，若该用户已在电子签完成实名则可通过指定姓名和证件类型、证件号码完成补充。`
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 签署方经办人的证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>

        # 注：`补充个人签署方时，若该用户已在电子签完成实名则可通过指定姓名和证件类型、证件号码完成补充。`
        # @type ApproverIdCardNumber: String
        # @param FlowId: 合同流程ID
        # - 补充合同组子合同动态签署人时必传。
        # - 补充普通合同时，请阅读：<a href="https://qian.tencent.com/developers/companyApis/operateFlows/CreateFlowApprovers/" target="_blank">补充签署人接口</a>的接口使用说明
        # @type FlowId: String

        attr_accessor :RecipientId, :ApproverSource, :CustomUserId, :ApproverName, :ApproverMobile, :OrganizationName, :ApproverIdCardType, :ApproverIdCardNumber, :FlowId

        def initialize(recipientid=nil, approversource=nil, customuserid=nil, approvername=nil, approvermobile=nil, organizationname=nil, approveridcardtype=nil, approveridcardnumber=nil, flowid=nil)
          @RecipientId = recipientid
          @ApproverSource = approversource
          @CustomUserId = customuserid
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @OrganizationName = organizationname
          @ApproverIdCardType = approveridcardtype
          @ApproverIdCardNumber = approveridcardnumber
          @FlowId = flowid
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @ApproverSource = params['ApproverSource']
          @CustomUserId = params['CustomUserId']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @OrganizationName = params['OrganizationName']
          @ApproverIdCardType = params['ApproverIdCardType']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
          @FlowId = params['FlowId']
        end
      end

      # 批量补充签署人时，补充失败的报错说明
      class FillError < TencentCloud::Common::AbstractModel
        # @param RecipientId: 为签署方经办人在签署合同中的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。与入参中补充的签署人角色ID对应，批量补充部分失败返回对应的错误信息。
        # @type RecipientId: String
        # @param ErrMessage: 补充失败错误说明
        # @type ErrMessage: String
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String

        attr_accessor :RecipientId, :ErrMessage, :FlowId

        def initialize(recipientid=nil, errmessage=nil, flowid=nil)
          @RecipientId = recipientid
          @ErrMessage = errmessage
          @FlowId = flowid
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @ErrMessage = params['ErrMessage']
          @FlowId = params['FlowId']
        end
      end

      # 文档内的填充控件返回结构体，返回控件的基本信息和填写内容值
      class FilledComponent < TencentCloud::Common::AbstractModel
        # @param ComponentId: 控件Id
        # @type ComponentId: String
        # @param ComponentName: 控件名称
        # @type ComponentName: String
        # @param ComponentFillStatus: 控件填写状态；0-未填写；1-已填写
        # @type ComponentFillStatus: String
        # @param ComponentValue: 控件填写内容
        # @type ComponentValue: String
        # @param ComponentRecipientId: 控件所属参与方Id
        # @type ComponentRecipientId: String
        # @param ImageUrl: 图片填充控件下载链接，如果是图片填充控件时，这里返回图片的下载链接。
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
        # @type CustomUserId: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param SignOrder: 签署顺序，如果是有序签署，签署顺序从小到大
        # @type SignOrder: Integer
        # @param ApproveTime: 签署人签署时间，时间戳，单位秒
        # @type ApproveTime: Integer
        # @param ApproveType: 签署方类型，ORGANIZATION-企业员工，PERSON-个人，ENTERPRISESERVER-企业静默签
        # @type ApproveType: String
        # @param ApproverSource: 签署方侧用户来源，如WEWORKAPP-企业微信等
        # @type ApproverSource: String
        # @param CustomApproverTag: 客户自定义签署方标识
        # @type CustomApproverTag: String
        # @param OrganizationId: 签署方企业Id
        # @type OrganizationId: String
        # @param OrganizationName: 签署方企业名称
        # @type OrganizationName: String
        # @param SignId: 签署参与人在本流程中的编号ID（每个流程不同），可用此ID来定位签署参与人在本流程的签署节点，也可用于后续创建签署链接等操作。
        # @type SignId: String
        # @param ApproverRoleName: 自定义签署人角色
        # @type ApproverRoleName: String
        # @param RecipientId: 模板配置中的参与方ID,与控件绑定
        # @type RecipientId: String

        attr_accessor :ApproveMessage, :ApproveName, :ApproveStatus, :ReceiptId, :CustomUserId, :Mobile, :SignOrder, :ApproveTime, :ApproveType, :ApproverSource, :CustomApproverTag, :OrganizationId, :OrganizationName, :SignId, :ApproverRoleName, :RecipientId
        extend Gem::Deprecate
        deprecate :ReceiptId, :none, 2025, 5
        deprecate :ReceiptId=, :none, 2025, 5

        def initialize(approvemessage=nil, approvename=nil, approvestatus=nil, receiptid=nil, customuserid=nil, mobile=nil, signorder=nil, approvetime=nil, approvetype=nil, approversource=nil, customapprovertag=nil, organizationid=nil, organizationname=nil, signid=nil, approverrolename=nil, recipientid=nil)
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
          @RecipientId = recipientid
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
          @RecipientId = params['RecipientId']
        end
      end

      # 签署链接信息。
      class FlowApproverUrlInfo < TencentCloud::Common::AbstractModel
        # @param SignUrl: 签署短链接。
        # 注意:
        # 1. 该链接有效期为<b>30分钟</b>，同时需要注意保密，不要外泄给无关用户。
        # 2. 该链接不支持小程序嵌入，仅支持<b>移动端浏览器</b>打开。
        # 3. <font color="red">生成的链路后面不能再增加参数</font>（会出现覆盖链接中已有参数导致错误）
        # @type SignUrl: String
        # @param ApproverType: 签署人类型。
        # - **1**: 个人
        # @type ApproverType: Integer
        # @param ApproverName: 签署人姓名。
        # @type ApproverName: String
        # @param ApproverMobile: 签署人手机号。
        # @type ApproverMobile: String
        # @param LongUrl: 签署长链接。
        # 注意:
        # 1. 该链接有效期为**30分钟**，同时需要注意保密，不要外泄给无关用户。
        # 2. 该链接不支持小程序嵌入，仅支持**移动端浏览器**打开。
        # 3. <font color="red">生成的链路后面不能再增加参数</font>（会出现覆盖链接中已有参数导致错误）
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

      # 批量签署合同相关信息，指定批量签署合同和签署方的信息，用于补充动态签署人。
      class FlowBatchApproverInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID。
        # @type FlowId: String
        # @param RecipientId: 签署节点ID，用于生成动态签署人链接完成领取。注：`生成动态签署人补充链接时必传。`
        # @type RecipientId: String

        attr_accessor :FlowId, :RecipientId

        def initialize(flowid=nil, recipientid=nil)
          @FlowId = flowid
          @RecipientId = recipientid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RecipientId = params['RecipientId']
        end
      end

      # 批量签署合同相关信息，指定批量签署合同和签署方的信息，用于补充动态签署人。
      class FlowBatchUrlInfo < TencentCloud::Common::AbstractModel
        # @param FlowBatchApproverInfos: 批量签署合同和签署方的信息，用于补充动态签署人。
        # @type FlowBatchApproverInfos: Array

        attr_accessor :FlowBatchApproverInfos

        def initialize(flowbatchapproverinfos=nil)
          @FlowBatchApproverInfos = flowbatchapproverinfos
        end

        def deserialize(params)
          unless params['FlowBatchApproverInfos'].nil?
            @FlowBatchApproverInfos = []
            params['FlowBatchApproverInfos'].each do |i|
              flowbatchapproverinfo_tmp = FlowBatchApproverInfo.new
              flowbatchapproverinfo_tmp.deserialize(i)
              @FlowBatchApproverInfos << flowbatchapproverinfo_tmp
            end
          end
        end
      end

      # 合同流程的基础信息
      class FlowBrief < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param FlowName: 合同流程的名称。
        # @type FlowName: String
        # @param FlowDescription: 合同流程描述信息。
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
        # @type FlowStatus: Integer
        # @param CreatedOn: 合同流程创建时间，格式为Unix标准时间戳（秒）。
        # @type CreatedOn: Integer
        # @param FlowMessage: 当合同流程状态为已拒签（即 FlowStatus=3）或已撤销（即 FlowStatus=6）时，此字段 FlowMessage 为拒签或撤销原因。
        # @type FlowMessage: String
        # @param Creator:  合同流程发起方的员工编号, 即员工在腾讯电子签平台的唯一身份标识。
        # @type Creator: String
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒）。
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
        # @param ApproverType: 在指定签署方时，可以选择企业B端或个人C端等不同的参与者类型，可选类型如下：

        # <ul><li> <b>0</b> :企业B端。</li>
        # <li> <b>1</b> :个人C端。</li>
        # <li> <b>3</b> :企业B端静默（自动）签署，无需签署人参与，自动签署可以参考<a href="https://qian.tencent.com/developers/company/autosign_guide" target="_blank" rel="noopener noreferrer">自动签署使用说明</a>文档。</li>
        # <li> <b>7</b> :个人C端自动签署，适用于个人自动签场景。注: <b>个人自动签场景为白名单功能，使用前请联系对接的客户经理沟通。</b> </li></ul>
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
        # @param ApproverMobile: 签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。 此手机号用于通知和用户的实名认证等环境，请确认手机号所有方为此合同签署方。

        # 注：`在未指定签署人电子签UserId情况下，为必填参数`
        # @type ApproverMobile: String
        # @param ApproverIdCardType: 证件类型，支持以下类型
        # <ul><li><b>ID_CARD</b>: 居民身份证 (默认值)</li>
        # <li><b>HONGKONG_AND_MACAO</b> : 港澳居民来往内地通行证</li>
        # <li><b>HONGKONG_MACAO_AND_TAIWAN</b> : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type ApproverIdCardNumber: String
        # @param RecipientId: 签署方经办人在模板中配置的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。

        # <b>模板发起合同时，该参数为必填项，可以通过[查询模板信息接口](https://qian.tencent.com/developers/companyApis/templatesAndFiles/DescribeFlowTemplates)获得。</b>
        # <b>文件发起合同时，该参数无需传值。</b>

        # 如果开发者后续用合同模板发起合同，建议保存此值，在用合同模板发起合同中需此值绑定对应的签署经办人 。
        # @type RecipientId: String
        # @param VerifyChannel: 签署意愿确认渠道，默认为WEIXINAPP:人脸识别

        # 注: <font color="red">将要废弃</font >, `用ApproverSignTypes签署人签署合同时的认证方式代替, 新客户可请用ApproverSignTypes来设置`
        # @type VerifyChannel: Array
        # @param NotifyType: 通知签署方经办人的方式,  有以下途径:
        # <ul><li>  **sms**  :  (默认)短信</li>
        # <li>   **none**   : 不通知</li></ul>

        # 注: `既是发起方又是签署方时，不给此签署方发送短信`
        # @type NotifyType: String
        # @param IsFullText: 合同强制需要阅读全文，无需传此参数
        # @type IsFullText: Boolean
        # @param PreReadTime: 签署方在签署合同之前，需要强制阅读合同的时长，可指定为3秒至300秒之间的任意值。

        # 若未指定阅读时间，则会按照合同页数大小计算阅读时间，计算规则如下：
        # <ul>
        # <li>合同页数少于等于2页，阅读时间为3秒；</li>
        # <li>合同页数为3到5页，阅读时间为5秒；</li>
        # <li>合同页数大于等于6页，阅读时间为10秒。</li>
        # </ul>
        # @type PreReadTime: Integer
        # @param UserId: 签署人userId，仅支持本企业的员工userid， 可在控制台组织管理处获得

        # 注：
        # 如果传进来的<font color="red">UserId已经实名， 则忽略ApproverName，ApproverIdCardType，ApproverIdCardNumber，ApproverMobile这四个入参</font>（会用此UserId实名的身份证和登录的手机号覆盖）
        # @type UserId: String
        # @param Required: <font color="red">字段已经废弃</font>，当前只支持true，默认为true
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
        # @param SignId: 签署人的签署ID

        # <ul>
        # <li>在CreateFlow、CreatePrepareFlow等发起流程时不需要传入此参数，电子签后台系统会自动生成。</li>
        # <li>在CreateFlowSignUrl、CreateBatchQuickSignUrl等生成签署链接时，可以通过查询详情接口获取签署人的SignId，然后可以将此值传入，为该签署人创建签署链接。这样可以避免重复传输姓名、手机号、证件号等其他信息。</li>
        # </ul>
        # @type SignId: String
        # @param ApproverNeedSignReview: 此签署人(员工或者个人)签署时，是否需要发起方企业审批，取值如下：
        # <ul><li>**false**：（默认）不需要审批，直接签署。</li>
        # <li>**true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li>如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li>如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>

        # 注：`此功能可用于与发起方企业内部的审批流程进行关联，支持手动、静默签署合同`

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/b14d5188ed0229d1401e74a9a49cab6d.png)
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
        # @param ComponentLimitType: 当签署方控件类型为 <b>SIGN_SIGNATURE</b> 时，可以指定签署方签名方式。如果不指定，签署人可以使用所有的签名类型，可指定的签名类型包括：

        # <ul><li> <b>HANDWRITE</b> :需要实时手写的手写签名。</li>
        # <li> <b>HANDWRITTEN_ESIGN</b> :长效手写签名， 是使用保存到个人中心的印章列表的手写签名。(并且包含HANDWRITE)</li>
        # <li> <b>OCR_ESIGN</b> :AI智能识别手写签名。</li>
        # <li> <b>ESIGN</b> :个人印章类型。</li>
        # <li> <b>IMG_ESIGN</b>  : 图片印章。该类型支持用户在签署将上传的PNG格式的图片作为签名。</li>
        # <li> <b>SYSTEM_ESIGN</b> :系统签名。该类型可以在用户签署时根据用户姓名一键生成一个签名来进行签署。</li></ul>

        # 各种签名的样式可以参考下图：
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/ee0498856c060c065628a0c5ba780d6b.jpg)
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
        # <li>**3**：运营商三要素，需到运营商处比对手机号实名信息（名字、手机号、证件号）校验一致才能成功进行合同签署。（如果是港澳台客户，建议不要选择这个）</li>
        # <li>**5**：设备指纹识别，需要对比手机机主预留的指纹信息，校验一致才能成功进行合同签署。（iOS系统暂不支持该校验方式）</li>
        # <li>**6**：设备面容识别，需要对比手机机主预留的人脸信息，校验一致才能成功进行合同签署。（Android系统暂不支持该校验方式）</li></ul>

        # 注：
        # <ul><li>默认情况下，认证校验方式为人脸认证和签署密码两种形式；</li>
        # <li>您可以传递多种值，表示可用多种认证校验方式。</li>
        # <li>校验方式不允许只包含设备指纹识别和设备面容识别，至少需要再增加一种其他校验方式。</li>
        # <li>设备指纹识别和设备面容识别只支持小程序使用，其他端暂不支持。</li></ul>

        # 注:
        # `此参数仅针对文件发起设置生效,模板发起合同签署流程, 请以模板配置为主`
        # @type ApproverSignTypes: Array
        # @param SignTypeSelector: 生成H5签署链接时，您可以指定签署方签署合同的认证校验方式的选择模式，可传递一下值：
        # <ul><li>**0**：签署方自行选择，签署方可以从预先指定的认证方式中自由选择；</li>
        # <li>**1**：自动按顺序首位推荐，签署方无需选择，系统会优先推荐使用第一种认证方式。</li></ul>
        # 注：
        # `不指定该值时，默认为签署方自行选择。`
        # @type SignTypeSelector: Integer
        # @param Deadline: 签署人的签署截止时间，格式为Unix标准时间戳（秒）, 超过此时间未签署的合同变成已过期状态，不能在继续签署

        # 注: `若不设置此参数，则默认使用合同的截止时间，此参数暂不支持合同组子合同`
        # @type Deadline: Integer
        # @param Intention: <b>只有在生成H5签署链接的情形下</b>（ 如调用<a href="https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowSignUrl" target="_blank">获取H5签署链接</a>、<a href="https://qian.tencent.com/developers/companyApis/startFlows/CreateBatchQuickSignUrl" target="_blank">获取H5批量签署链接</a>等接口），该配置才会生效。

        # 您可以指定H5签署视频核身的意图配置，选择问答模式或点头模式的语音文本。

        # 注意：
        # 1. 视频认证为<b>白名单功能，使用前请联系对接的客户经理沟通</b>。
        # 2. 使用视频认证时，<b>生成H5签署链接必须将签署认证方式指定为人脸</b>（即ApproverSignTypes设置成人脸签署）。
        # 3. 签署完成后，可以通过<a href="https://qian.tencent.com/developers/companyApis/queryFlows/DescribeSignFaceVideo" target="_blank">查询签署认证人脸视频</a>获取到当时的视频。
        # @type Intention: :class:`Tencentcloud::Ess.v20201111.models.Intention`
        # @param SignEndpoints: 进入签署流程的限制，目前支持以下选项：
        # <ul><li> <b>空值（默认）</b> :无限制，可在任何场景进入签署流程。</li><li> <b>link</b> :选择此选项后，将无法通过控制台或电子签小程序列表进入填写或签署操作，仅可预览合同。填写或签署流程只能通过短信或发起方提供的专用链接进行。</li></ul>
        # @type SignEndpoints: Array

        attr_accessor :ApproverType, :OrganizationName, :ApproverName, :ApproverMobile, :ApproverIdCardType, :ApproverIdCardNumber, :RecipientId, :VerifyChannel, :NotifyType, :IsFullText, :PreReadTime, :UserId, :Required, :ApproverSource, :CustomApproverTag, :RegisterInfo, :ApproverOption, :JumpUrl, :SignId, :ApproverNeedSignReview, :SignComponents, :Components, :ComponentLimitType, :ApproverVerifyTypes, :ApproverSignTypes, :SignTypeSelector, :Deadline, :Intention, :SignEndpoints
        extend Gem::Deprecate
        deprecate :JumpUrl, :none, 2025, 5
        deprecate :JumpUrl=, :none, 2025, 5

        def initialize(approvertype=nil, organizationname=nil, approvername=nil, approvermobile=nil, approveridcardtype=nil, approveridcardnumber=nil, recipientid=nil, verifychannel=nil, notifytype=nil, isfulltext=nil, prereadtime=nil, userid=nil, required=nil, approversource=nil, customapprovertag=nil, registerinfo=nil, approveroption=nil, jumpurl=nil, signid=nil, approverneedsignreview=nil, signcomponents=nil, components=nil, componentlimittype=nil, approververifytypes=nil, approversigntypes=nil, signtypeselector=nil, deadline=nil, intention=nil, signendpoints=nil)
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
          @SignTypeSelector = signtypeselector
          @Deadline = deadline
          @Intention = intention
          @SignEndpoints = signendpoints
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
          @SignTypeSelector = params['SignTypeSelector']
          @Deadline = params['Deadline']
          unless params['Intention'].nil?
            @Intention = Intention.new
            @Intention.deserialize(params['Intention'])
          end
          @SignEndpoints = params['SignEndpoints']
        end
      end

      # 此结构体(FlowDetailInfo)描述的是合同(流程)的详细信息
      class FlowDetailInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param FlowType: 合同流程的类别分类（如销售合同/入职合同等）。
        # @type FlowType: String
        # @param FlowStatus: 合同流程当前的签署状态, 会存在下列的状态值 <ul><li> **0** : 未开启流程(合同中不存在填写环节)</li> <li> **1** : 待签署</li> <li> **2** : 部分签署</li> <li> **3** : 已拒签</li> <li> **4** : 已签署</li> <li> **5** : 已过期</li> <li> **6** : 已撤销</li> <li> **7** : 未开启流程(合同中存在填写环节)</li> <li> **8** : 等待填写</li> <li> **9** : 部分填写</li> <li> **10** : 已拒填</li> <li> **21** : 已解除</li></ul>
        # @type FlowStatus: Integer
        # @param FlowMessage: 当合同流程状态为已拒签（即 FlowStatus=3）或已撤销（即 FlowStatus=6）时，此字段 FlowMessage 为拒签或撤销原因。
        # @type FlowMessage: String
        # @param FlowDescription: 合同流程描述信息。
        # @type FlowDescription: String
        # @param CreatedOn: 合同流程的创建时间戳，格式为Unix标准时间戳（秒）。
        # @type CreatedOn: Integer
        # @param FlowApproverInfos: 合同流程的签署方数组
        # @type FlowApproverInfos: Array
        # @param CcInfos: 合同流程的关注方信息数组
        # @type CcInfos: Array
        # @param Creator: 合同流程发起方的员工编号, 即员工在腾讯电子签平台的唯一身份标识。
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

      # 合同转交相关信息
      class FlowForwardInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。此接口的合同流程ID需要由[创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlow)接口创建得到。
        # @type FlowId: String
        # @param RecipientId: 签署方经办人在合同中的参与方ID，为32位字符串。
        # @type RecipientId: String

        attr_accessor :FlowId, :RecipientId

        def initialize(flowid=nil, recipientid=nil)
          @FlowId = flowid
          @RecipientId = recipientid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RecipientId = params['RecipientId']
        end
      end

      # 转交合同结果
      class FlowForwardResult < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID为32位字符串。您可以登录腾讯电子签控制台，在 "合同" -> "合同中心" 中查看某个合同的FlowId（在页面中展示为合同ID）。[点击查看FlowId在控制台中的位置](https://qcloudimg.tencent-cloud.cn/raw/0a83015166cfe1cb043d14f9ec4bd75e.png)。
        # @type FlowId: String
        # @param ErrorDetail: 如果失败，返回的错误细节。
        # @type ErrorDetail: String

        attr_accessor :FlowId, :ErrorDetail

        def initialize(flowid=nil, errordetail=nil)
          @FlowId = flowid
          @ErrorDetail = errordetail
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorDetail = params['ErrorDetail']
        end
      end

      # 合同组相关信息，指定合同组子合同和签署方的信息，用于补充动态签署人。
      class FlowGroupApproverInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID。
        # @type FlowId: String
        # @param RecipientId: 签署节点ID，用于生成动态签署人链接完成领取。注：`生成动态签署人补充链接时必传。`
        # @type RecipientId: String

        attr_accessor :FlowId, :RecipientId

        def initialize(flowid=nil, recipientid=nil)
          @FlowId = flowid
          @RecipientId = recipientid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RecipientId = params['RecipientId']
        end
      end

      # 合同组签署方信息
      class FlowGroupApprovers < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID
        # @type FlowId: String
        # @param Approvers: 签署方信息，包含合同ID和角色ID用于定位RecipientId。
        # @type Approvers: Array

        attr_accessor :FlowId, :Approvers

        def initialize(flowid=nil, approvers=nil)
          @FlowId = flowid
          @Approvers = approvers
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              approveritem_tmp = ApproverItem.new
              approveritem_tmp.deserialize(i)
              @Approvers << approveritem_tmp
            end
          end
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
        # @type AutoSignScene: String
        # @param FlowDisplayType: 在短信通知、填写、签署流程中，若标题、按钮、合同详情等地方存在“合同”字样时，可根据此配置指定文案，可选文案如下：  <ul><li> <b>0</b> :合同（默认值）</li> <li> <b>1</b> :文件</li> <li> <b>2</b> :协议</li><li> <b>3</b> :文书</li></ul>效果如下:![FlowDisplayType](https://qcloudimg.tencent-cloud.cn/raw/e4a2c4d638717cc901d3dbd5137c9bbc.png)
        # @type FlowDisplayType: Integer

        attr_accessor :FlowName, :Approvers, :FileIds, :TemplateId, :FlowType, :FlowDescription, :Deadline, :CallbackUrl, :UserData, :Unordered, :Components, :NeedSignReview, :AutoSignScene, :FlowDisplayType
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2025, 5
        deprecate :CallbackUrl=, :none, 2025, 5

        def initialize(flowname=nil, approvers=nil, fileids=nil, templateid=nil, flowtype=nil, flowdescription=nil, deadline=nil, callbackurl=nil, userdata=nil, unordered=nil, components=nil, needsignreview=nil, autosignscene=nil, flowdisplaytype=nil)
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
          @FlowDisplayType = flowdisplaytype
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
          @FlowDisplayType = params['FlowDisplayType']
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

      # 合同组相关信息，指定合同组子合同和签署方的信息，用于补充动态签署人。
      class FlowGroupUrlInfo < TencentCloud::Common::AbstractModel
        # @param FlowGroupApproverInfos: 合同组子合同和签署方的信息，用于补充动态签署人。
        # @type FlowGroupApproverInfos: Array

        attr_accessor :FlowGroupApproverInfos

        def initialize(flowgroupapproverinfos=nil)
          @FlowGroupApproverInfos = flowgroupapproverinfos
        end

        def deserialize(params)
          unless params['FlowGroupApproverInfos'].nil?
            @FlowGroupApproverInfos = []
            params['FlowGroupApproverInfos'].each do |i|
              flowgroupapproverinfo_tmp = FlowGroupApproverInfo.new
              flowgroupapproverinfo_tmp.deserialize(i)
              @FlowGroupApproverInfos << flowgroupapproverinfo_tmp
            end
          end
        end
      end

      # 电子文档的控件填充信息。按照控件类型进行相应的填充。

      # 当控件的 ComponentType=‘SIGN_SEAL'时，FormField.ComponentValue填入印章id。

      # * 可用于指定自动签模板未设置自动签印章时，可由接口传入自动签印章
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

      # 当控件的 ComponentType='ATTACHMENT'时，FormField.ComponentValue支持填入附件图片或者文件的资源ID列表，以逗号分隔，单个附件控件最多支持6个资源ID；
      # 支持的文件类型包括doc、docx、xls、xlsx、html、jpg、jpeg、png、bmp、txt、pdf

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
      #                 "style": {"color": "#b50000", "fontSize": 12,"bold": true,"align": "CENTER"}
      #             },
      #             {
      #                 "rowStart":2,
      #                 "rowEnd":3,
      #                 "columnStart":1,
      #                 "columnEnd":2,
      #                 "content":"456",
      #                 "style": {"color": "#b50000", "fontSize": 12,"bold": true,"align": "LEFT"}
      #             },
      #             {
      #                 "rowStart":3,
      #                 "rowEnd":3,
      #                 "columnStart":3,
      #                 "columnEnd":3,
      #                 "content":"789",
      #                 "style": {"color": "#b500bf", "fontSize": 12,"bold": false,"align": "RIGHT"}
      #             }
      #         ]
      #     }
      # }

      # ```

      # 输入示例4（表格设置表头不合成到文件）：

      # ```
      # {
      #     "headers": [
      #         {
      #             "content": "序号"
      #         },
      #         {
      #             "content": "品牌"
      #         },
      #         {
      #             "content": "商品名称"
      #         },
      #         {
      #             "content": "粒径"
      #         },
      #         {
      #             "content": "规格"
      #         },
      #         {
      #             "content": "数量(包)"
      #         },
      #         {
      #             "content": "重量(吨)"
      #         }
      #     ],
      #     "rowCount": 5,
      #     "body": {
      #         "cells": [
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 1,
      #                 "columnEnd": 1,
      #                 "content": "1"
      #             },
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 2,
      #                 "columnEnd": 2,
      #                 "content": "品牌名称1"
      #             },
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 3,
      #                 "columnEnd": 3,
      #                 "content": "商品名称1"
      #             },
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 4,
      #                 "columnEnd": 4,
      #                 "content": "7#"
      #             },
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 5,
      #                 "columnEnd": 5,
      #                 "content": "20"
      #             },
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 6,
      #                 "columnEnd": 6,
      #                 "content": "50"
      #             },
      #             {
      #                 "rowStart": 1,
      #                 "rowEnd": 1,
      #                 "columnStart": 7,
      #                 "columnEnd": 7,
      #                 "content": "1.000"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 1,
      #                 "columnEnd": 1,
      #                 "content": "2"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 2,
      #                 "columnEnd": 2,
      #                 "content": "品牌名称2"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 3,
      #                 "columnEnd": 3,
      #                 "content": "商品名称2"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 4,
      #                 "columnEnd": 4,
      #                 "content": "5#"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 5,
      #                 "columnEnd": 5,
      #                 "content": "20"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 6,
      #                 "columnEnd": 6,
      #                 "content": "20"
      #             },
      #             {
      #                 "rowStart": 2,
      #                 "rowEnd": 2,
      #                 "columnStart": 7,
      #                 "columnEnd": 7,
      #                 "content": "0.400"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 1,
      #                 "columnEnd": 1,
      #                 "content": "3"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 2,
      #                 "columnEnd": 2,
      #                 "content": "品牌名称3"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 3,
      #                 "columnEnd": 3,
      #                 "content": "商品名称3"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 4,
      #                 "columnEnd": 4,
      #                 "content": "2#"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 5,
      #                 "columnEnd": 5,
      #                 "content": "20"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 6,
      #                 "columnEnd": 6,
      #                 "content": "5"
      #             },
      #             {
      #                 "rowStart": 3,
      #                 "rowEnd": 3,
      #                 "columnStart": 7,
      #                 "columnEnd": 7,
      #                 "content": "0.100"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 1,
      #                 "columnEnd": 1,
      #                 "content": "4"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 2,
      #                 "columnEnd": 2,
      #                 "content": "品牌名称4"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 3,
      #                 "columnEnd": 3,
      #                 "content": "商品名称4"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 4,
      #                 "columnEnd": 4,
      #                 "content": "3#"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 5,
      #                 "columnEnd": 5,
      #                 "content": "20"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 6,
      #                 "columnEnd": 6,
      #                 "content": "10"
      #             },
      #             {
      #                 "rowStart": 4,
      #                 "rowEnd": 4,
      #                 "columnStart": 7,
      #                 "columnEnd": 7,
      #                 "content": "0.200"
      #             },
      #             {
      #                 "rowStart": 5,
      #                 "rowEnd": 5,
      #                 "columnStart": 1,
      #                 "columnEnd": 5,
      #                 "content": "合计"
      #             },
      #             {
      #                 "rowStart": 5,
      #                 "rowEnd": 5,
      #                 "columnStart": 6,
      #                 "columnEnd": 6,
      #                 "content": "85"
      #             },
      #             {
      #                 "rowStart": 5,
      #                 "rowEnd": 5,
      #                 "columnStart": 7,
      #                 "columnEnd": 7,
      #                 "content": "1.700"
      #             }
      #         ]
      #     },
      #     "settings": {
      #         "headerRowDisplay": false
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
      # | cells.N.style         | String  | 单元格字体风格配置 ，风格配置的json字符串  如： {"font":"黑体","fontSize":12,"color":"#FFFFFF","bold":true,"align":"CENTER"}      |
      # | settings            | Object  | 表格全局设定。目前支持设置表头不显示，示例：{"headerRowDisplay":false}                                                         |

      # 表格参数headers说明
      # widthPercent Integer 表头单元格列占总表头的比例，例如1：30表示 此列占表头的30%，不填写时列宽度平均拆分；例如2：总2列，某一列填写40，剩余列可以为空，按照60计算。；例如3：总3列，某一列填写30，剩余2列可以为空，分别为(100-30)/2=35

      # content String 表头单元格内容，字数不超过100


      # style String 为字体风格设置 风格支持： font : 目前支持 黑体、宋体; fontSize： 6-72; color：000000-FFFFFF  字符串形如：  "#FFFFFF" 或者 "0xFFFFFF"; bold ： 是否加粗， true ： 加粗 false： 不加粗; align: 对其方式， 支持 LEFT / RIGHT / CENTER
      class FormField < TencentCloud::Common::AbstractModel
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # <ul><li> <b>TEXT</b> : 文本内容</li>
        # <li> <b>MULTI_LINE_TEXT</b> : 文本内容， 可以用  \n 来控制换行位置</li>
        # <li> <b>CHECK_BOX</b> : true/false</li>
        # <li> <b>FILL_IMAGE、ATTACHMENT</b> : 附件的FileId，需要通过UploadFiles接口上传获取</li>
        # <li> <b>SELECTOR</b> : 选项值</li>
        # <li> <b>DYNAMIC_TABLE</b>  - 传入json格式的表格内容，详见说明：[数据表格](https://qian.tencent.com/developers/company/dynamic_table)</li>
        # <li> <b>DATE</b> : 格式化：xxxx年xx月xx日（例如：2024年05月28日）</li>
        # </ul>


        # <b>控件值约束说明</b>：
        # <table> <thead> <tr> <th>特殊控件</th> <th>填写约束</th> </tr> </thead> <tbody> <tr> <td>企业全称控件</td> <td>企业名称中文字符中文括号</td> </tr> <tr> <td>统一社会信用代码控件</td> <td>企业注册的统一社会信用代码</td> </tr> <tr> <td>法人名称控件</td> <td>最大50个字符，2到25个汉字或者1到50个字母</td> </tr> <tr> <td>签署意见控件</td> <td>签署意见最大长度为50字符</td> </tr> <tr> <td>签署人手机号控件</td> <td>国内手机号 13,14,15,16,17,18,19号段长度11位</td> </tr> <tr> <td>签署人身份证控件</td> <td>合法的身份证号码检查</td> </tr> <tr> <td>控件名称</td> <td>控件名称最大长度为20字符，不支持表情</td> </tr> <tr> <td>单行文本控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>多行文本控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>勾选框控件</td> <td>选择填字符串true，不选填字符串false</td> </tr> <tr> <td>选择器控件</td> <td>同单行文本控件约束，填写选择值中的字符串</td> </tr> <tr> <td>数字控件</td> <td>请输入有效的数字(可带小数点)</td> </tr> <tr> <td>日期控件</td> <td>格式：yyyy年mm月dd日</td> </tr> <tr> <td>附件控件</td> <td>JPG或PNG图片，上传数量限制，1到6个，最大6个附件，填写上传的资源ID</td> </tr> <tr> <td>图片控件</td> <td>JPG或PNG图片，填写上传的图片资源ID</td> </tr> <tr> <td>邮箱控件</td> <td>有效的邮箱地址, w3c标准</td> </tr> <tr> <td>地址控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>省市区控件</td> <td>只允许输入中文，英文，数字，中英文标点符号，不支持表情</td> </tr> <tr> <td>性别控件</td> <td>选择值中的字符串</td> </tr> <tr> <td>学历控件</td> <td>选择值中的字符串</td> </tr> </tbody> </table>
        # @type ComponentValue: String
        # @param ComponentId: 控件id，和ComponentName选择一项传入即可

        # <a href="https://dyn.ess.tencent.cn/guide/apivideo/component_name.mp4" target="_blank">点击查看在模板中找到控件ID的方式</a>
        # @type ComponentId: String
        # @param ComponentName: 控件名字，最大长度不超过30字符，和ComponentId选择一项传入即可

        # <a href="https://dyn.ess.tencent.cn/guide/apivideo/component_name.mp4" target="_blank">点击查看在模板中找到控件名字的方式</a>
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
        # @param TaskId: 转换任务Id，通过接口<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/CreateConvertTaskApi" target="_blank">创建文件转换任务接口</a>得到的转换任务id
        # @type TaskId: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :TaskId, :Operator, :Agent, :Organization
        extend Gem::Deprecate
        deprecate :Organization, :none, 2025, 5
        deprecate :Organization=, :none, 2025, 5

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
        # @param ResourceId: 资源Id（即FileId），用于[用PDF文件创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowByFiles)
        # @type ResourceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Name: String
        # @param Alias: 成员企业别名
        # @type Alias: String
        # @param OrganizationId: 成员企业id，为 32 位字符串，可在电子签PC 控制台，企业设置->企业电子签账号 获取
        # @type OrganizationId: String
        # @param UpdateTime: 记录更新时间， unix时间戳，单位秒
        # @type UpdateTime: Integer
        # @param Status: 成员企业加入集团的当前状态
        # <ul><li> **1**：待授权</li>
        # <li> **2**：已授权待激活</li>
        # <li> **3**：拒绝授权</li>
        # <li> **4**：已解除</li>
        # <li> **5**：已加入</li>
        # </ul>
        # @type Status: Integer
        # @param IsMainOrganization: 是否为集团主企业
        # @type IsMainOrganization: Boolean
        # @param IdCardNumber: 企业社会信用代码
        # @type IdCardNumber: String
        # @param AdminInfo: 企业超管信息
        # @type AdminInfo: :class:`Tencentcloud::Ess.v20201111.models.Admin`
        # @param License: 企业许可证Id，此字段暂时不需要关注
        # @type License: String
        # @param LicenseExpireTime: 企业许可证过期时间，unix时间戳，单位秒
        # @type LicenseExpireTime: Integer
        # @param JoinTime: 成员企业加入集团时间，unix时间戳，单位秒
        # @type JoinTime: Integer
        # @param FlowEngineEnable: 是否使用自建审批流引擎（即不是企微审批流引擎）
        # <ul><li> **true**：是</li>
        # <li> **false**：否</li></ul>
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

      # 授权企业列表（目前仅用于“企业自动签 -> 合作企业授权”）
      class HasAuthOrganization < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 授权企业id
        # @type OrganizationId: String
        # @param OrganizationName: 授权企业名称
        # @type OrganizationName: String
        # @param AuthorizedOrganizationId: 被授权企业id
        # @type AuthorizedOrganizationId: String
        # @param AuthorizedOrganizationName: 被授权企业名称
        # @type AuthorizedOrganizationName: String
        # @param TemplateId: 授权模板id（仅当授权方式为模板授权时有值）
        # @type TemplateId: String
        # @param TemplateName: 授权模板名称（仅当授权方式为模板授权时有值）
        # @type TemplateName: String
        # @param AuthorizeTime: 授权时间，格式为时间戳，单位s
        # @type AuthorizeTime: Integer

        attr_accessor :OrganizationId, :OrganizationName, :AuthorizedOrganizationId, :AuthorizedOrganizationName, :TemplateId, :TemplateName, :AuthorizeTime

        def initialize(organizationid=nil, organizationname=nil, authorizedorganizationid=nil, authorizedorganizationname=nil, templateid=nil, templatename=nil, authorizetime=nil)
          @OrganizationId = organizationid
          @OrganizationName = organizationname
          @AuthorizedOrganizationId = authorizedorganizationid
          @AuthorizedOrganizationName = authorizedorganizationname
          @TemplateId = templateid
          @TemplateName = templatename
          @AuthorizeTime = authorizetime
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @OrganizationName = params['OrganizationName']
          @AuthorizedOrganizationId = params['AuthorizedOrganizationId']
          @AuthorizedOrganizationName = params['AuthorizedOrganizationName']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @AuthorizeTime = params['AuthorizeTime']
        end
      end

      # 被授权的用户信息
      class HasAuthUser < TencentCloud::Common::AbstractModel
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # @type UserId: String
        # @param BelongTo: 当前员工的归属情况，可能值是：
        # MainOrg：在集团企业的场景下，返回此值代表是归属主企业
        # CurrentOrg：在普通企业场景下返回此值；或者在集团企业的场景下，返回此值代表归属子企业
        # @type BelongTo: String
        # @param MainOrganizationId: 集团主企业id，当前企业为集团子企业时，该字段有值
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
        # @type RoleId: String
        # @param RoleName: 角色名
        # @type RoleName: String
        # @param RoleStatus: 角色状态，1-启用，2-禁用
        # @type RoleStatus: Integer
        # @param IsGroupRole: 是否是集团角色，true-是，false-否
        # @type IsGroupRole: Boolean
        # @param SubOrgIdList: 管辖的子企业列表
        # @type SubOrgIdList: Array
        # @param PermissionGroups: 权限树
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
        # @type DeptId: String
        # @param DeptName: 部门名。
        # @type DeptName: String
        # @param ParentDeptId: 父部门ID
        # @type ParentDeptId: String
        # @param DeptOpenId: 客户系统部门ID
        # @type DeptOpenId: String
        # @param OrderNo: 序列号。
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

      # 视频核身意图配置，可指定问答模式或者点头模式的语音文本。

      # 注: `视频认证为白名单功能，使用前请联系对接的客户经理沟通。`
      class Intention < TencentCloud::Common::AbstractModel
        # @param IntentionType: 视频认证类型，支持以下类型
        # <ul><li>1 : 问答模式</li>
        # <li>2 : 点头模式</li></ul>

        # 注: `视频认证为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type IntentionType: Integer
        # @param IntentionQuestions: 意愿核身语音问答模式（即语音播报+语音回答）使用的文案，包括：系统语音播报的文本、需要核验的标准文本。支持传入1～10轮问答，最多为10轮。

        # 注：`选择问答模式时，此字段可不传，不传则使用默认语音文本：请问，您是否同意签署本协议？可语音回复“同意”或“不同意”。`
        # @type IntentionQuestions: Array
        # @param IntentionActions: 意愿核身（点头确认模式）使用的文案，若未使用意愿核身（点头确认模式），则该字段无需传入。支持传入1～10轮点头确认文本，最多支持10轮。

        # 注：`选择点头模式时，此字段可不传，不传则使用默认语音文本：请问，您是否同意签署本协议？可点头同意。`
        # @type IntentionActions: Array

        attr_accessor :IntentionType, :IntentionQuestions, :IntentionActions

        def initialize(intentiontype=nil, intentionquestions=nil, intentionactions=nil)
          @IntentionType = intentiontype
          @IntentionQuestions = intentionquestions
          @IntentionActions = intentionactions
        end

        def deserialize(params)
          @IntentionType = params['IntentionType']
          unless params['IntentionQuestions'].nil?
            @IntentionQuestions = []
            params['IntentionQuestions'].each do |i|
              intentionquestion_tmp = IntentionQuestion.new
              intentionquestion_tmp.deserialize(i)
              @IntentionQuestions << intentionquestion_tmp
            end
          end
          unless params['IntentionActions'].nil?
            @IntentionActions = []
            params['IntentionActions'].each do |i|
              intentionaction_tmp = IntentionAction.new
              intentionaction_tmp.deserialize(i)
              @IntentionActions << intentionaction_tmp
            end
          end
        end
      end

      # 意愿核身（点头确认模式）使用的文案，若未使用意愿核身（点头确认模式），则该字段无需传入。当前仅支持一个提示文本。
      class IntentionAction < TencentCloud::Common::AbstractModel
        # @param Text: 点头确认模式下，系统语音播报使用的问题文本，问题最大长度为150个字符。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 意愿核身点头确认模式结果
      class IntentionActionResult < TencentCloud::Common::AbstractModel
        # @param Details: 意愿核身结果详细数据，与每段点头确认过程一一对应
        # @type Details: Array

        attr_accessor :Details

        def initialize(details=nil)
          @Details = details
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              intentionactionresultdetail_tmp = IntentionActionResultDetail.new
              intentionactionresultdetail_tmp.deserialize(i)
              @Details << intentionactionresultdetail_tmp
            end
          end
        end
      end

      # 意愿核身点头确认模式结果详细数据
      class IntentionActionResultDetail < TencentCloud::Common::AbstractModel
        # @param Video: 视频base64编码（其中包含全程提示文本和点头音频，mp4格式）
        # @type Video: String

        attr_accessor :Video

        def initialize(video=nil)
          @Video = video
        end

        def deserialize(params)
          @Video = params['Video']
        end
      end

      # 意愿核身语音问答模式（即语音播报+语音回答）使用的文案，包括：系统语音播报的文本、需要核验的标准文本。当前仅支持1轮问答。
      class IntentionQuestion < TencentCloud::Common::AbstractModel
        # @param Question: 当选择语音问答模式时，系统自动播报的问题文本，最大长度为150个字符。
        # @type Question: String
        # @param Answers:  当选择语音问答模式时，用于判断用户回答是否通过的标准答案列表，传入后可自动判断用户回答文本是否在标准文本列表中。
        # @type Answers: Array

        attr_accessor :Question, :Answers

        def initialize(question=nil, answers=nil)
          @Question = question
          @Answers = answers
        end

        def deserialize(params)
          @Question = params['Question']
          @Answers = params['Answers']
        end
      end

      # 意愿核身问答模式结果。若未使用该意愿核身功能，该字段返回值可以不处理。
      class IntentionQuestionResult < TencentCloud::Common::AbstractModel
        # @param Video: 视频base64（其中包含全程问题和回答音频，mp4格式）

        # 注：`需进行base64解码获取视频文件`
        # @type Video: String
        # @param ResultCode:  和答案匹配结果列表
        # @type ResultCode: Array
        # @param AsrResult: 回答问题语音识别结果列表
        # @type AsrResult: Array

        attr_accessor :Video, :ResultCode, :AsrResult

        def initialize(video=nil, resultcode=nil, asrresult=nil)
          @Video = video
          @ResultCode = resultcode
          @AsrResult = asrresult
        end

        def deserialize(params)
          @Video = params['Video']
          @ResultCode = params['ResultCode']
          @AsrResult = params['AsrResult']
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

      # ModifyExtendedService请求参数结构体
      class ModifyExtendedServiceRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param ServiceType: 要管理的拓展服务类型。
        # <ul><li>OPEN_SERVER_SIGN：企业自动签署</li>
        # <li>AUTO_SIGN_CAN_FILL_IN：本企业自动签合同支持签前内容补充</li>
        # <li>OVERSEA_SIGN：企业与港澳台居民签署合同</li>
        # <li>AGE_LIMIT_EXPANSION：拓宽签署方年龄限制</li>
        # <li>MOBILE_CHECK_APPROVER：个人签署方仅校验手机号</li>
        # <li>HIDE_OPERATOR_DISPLAY：隐藏合同经办人姓名</li>
        # <li>ORGANIZATION_OCR_FALLBACK：正楷临摹签名失败后更换其他签名类型</li>
        # <li>ORGANIZATION_FLOW_NOTIFY_TYPE：短信通知签署方</li>
        # <li>HIDE_ONE_KEY_SIGN：个人签署方手写签名时需逐个手写</li>
        # <li>SIGN_SIGNATURE_DEFAULT_SET_HANDWRITE：个人签署方手动签名</li>
        # <li>ORGANIZATION_FLOW_EMAIL_NOTIFY：邮件通知签署方</li>
        # <li>FLOW_APPROVAL：合同审批强制开启</li>
        # <li>ORGANIZATION_FLOW_PASSWD_NOTIFY：签署密码开通引导</li>
        # <li>APP_LOGIN：限制企业员工小程序端登录</li>
        # <li>PC_LOGIN：限制企业员工网页端登录</li>
        # </ul>
        # @type ServiceType: String
        # @param Operate: 操作类型
        # <ul>
        # <li>OPEN : 开通</li>
        # <li>CLOSE : 关闭</li>
        # </ul>
        # @type Operate: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Endpoint: 链接跳转类型，支持以下类型
        # <ul>
        # <li>WEIXINAPP : 短链直接跳转到电子签小程序  (默认值)</li>
        # <li>APP : 第三方APP或小程序跳转电子签小程序</li>
        # <li>WEIXIN_QRCODE_URL：直接跳转至电子签小程序的二维码链接，无需通过中转页。<font color="red">您需要自行将其转换为二维码，使用微信扫码后可直接进入。请注意，直接点击链接是无效的。</font></li>
        # </ul>
        # @type Endpoint: String

        attr_accessor :Operator, :ServiceType, :Operate, :Agent, :Endpoint

        def initialize(operator=nil, servicetype=nil, operate=nil, agent=nil, endpoint=nil)
          @Operator = operator
          @ServiceType = servicetype
          @Operate = operate
          @Agent = agent
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ServiceType = params['ServiceType']
          @Operate = params['Operate']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Endpoint = params['Endpoint']
        end
      end

      # ModifyExtendedService返回参数结构体
      class ModifyExtendedServiceResponse < TencentCloud::Common::AbstractModel
        # @param OperateUrl: 操作跳转链接
        # <ul>
        # <li><strong>有效期：</strong> 跳转链接的有效期为24小时。</li>
        # <li><strong>无跳转链接返回的情况：</strong> 如果在操作过程中没有返回跳转链接，这意味着无需进行跳转操作。在这种情况下，服务将会直接被开通或关闭。
        # <li><strong>有跳转链接返回的情况：</strong> 当操作类型为“OPEN”（开通服务），并且扩展服务类型为以下之一时，  系统将返回一个操作链接。当前操作人（超级管理员或法人）需要点击此链接，以完成服务的开通操作。

        # <ul>
        # <li><strong>OPEN_SERVER_SIGN</strong>（企业自动签署）</li>
        # </ul></li></li>
        # </ul>
        # @type OperateUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OperateUrl, :RequestId

        def initialize(operateurl=nil, requestid=nil)
          @OperateUrl = operateurl
          @RequestId = requestid
        end

        def deserialize(params)
          @OperateUrl = params['OperateUrl']
          @RequestId = params['RequestId']
        end
      end

      # ModifyFlowDeadline请求参数结构体
      class ModifyFlowDeadlineRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 合同流程ID，为32位字符串。
        # <ul><li>建议开发者妥善保存此流程ID，以便于顺利进行后续操作。</li>
        # <li>可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。</li></ul>
        # @type FlowId: String
        # @param Deadline: 签署流程或签署人新的签署截止时间，格式为Unix标准时间戳（秒）
        # @type Deadline: Integer
        # @param Agent: 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param RecipientId: 签署方角色编号，为32位字符串
        # <ul><li>若指定了此参数，则只调整签署流程中此签署人的签署截止时间，否则调整合同整体的签署截止时间（合同截止时间+发起时未设置签署人截止时间的参与人的签署截止时间）</li>
        # <li>通过[用PDF文件创建签署流程](https://qian.tencent.com/developers/companyApis/startFlows/CreateFlowByFiles)发起合同，或通过[模板发起合同-创建电子文档](https://qian.tencent.com/developers/companyApis/startFlows/CreateDocument)时，返回参数[Approvers](https://qian.tencent.com/developers/companyApis/dataTypes/#approveritem)会返回此信息，建议开发者妥善保存</li>
        # <li>也可通过[查询合同流程的详情信息](https://qian.tencent.com/developers/companyApis/queryFlows/DescribeFlowInfo)接口查询签署人的RecipientId编号</li></ul>
        # @type RecipientId: String

        attr_accessor :Operator, :FlowId, :Deadline, :Agent, :RecipientId

        def initialize(operator=nil, flowid=nil, deadline=nil, agent=nil, recipientid=nil)
          @Operator = operator
          @FlowId = flowid
          @Deadline = deadline
          @Agent = agent
          @RecipientId = recipientid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
          @Deadline = params['Deadline']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @RecipientId = params['RecipientId']
        end
      end

      # ModifyFlowDeadline返回参数结构体
      class ModifyFlowDeadlineResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 需要进行签署审核的签署人信息
      class NeedReviewApproverInfo < TencentCloud::Common::AbstractModel
        # @param ApproverType: 签署方经办人的类型，支持以下类型
        # <ul><li> ORGANIZATION 企业（含企业自动签）</li>
        # <li>PERSON 个人（含个人自动签）</li></ul>
        # @type ApproverType: String
        # @param ApproverName: 签署方经办人的姓名。 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        # @type ApproverName: String
        # @param ApproverMobile: 签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。 请确认手机号所有方为此合同签署方。
        # @type ApproverMobile: String
        # @param ApproverIdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD 中国大陆居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN 中国港澳台居民居住证(格式同居民身份证)</li>
        # <li>OTHER_CARD_TYPE 其他证件</li></ul>

        # 注: `其他证件类型为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 签署方经办人的证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type ApproverIdCardNumber: String
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # 如果签署方是企业签署方(approverType = 0 或者 approverType = 3)， 则企业名称必填。
        # @type OrganizationName: String

        attr_accessor :ApproverType, :ApproverName, :ApproverMobile, :ApproverIdCardType, :ApproverIdCardNumber, :OrganizationName

        def initialize(approvertype=nil, approvername=nil, approvermobile=nil, approveridcardtype=nil, approveridcardnumber=nil, organizationname=nil)
          @ApproverType = approvertype
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @ApproverIdCardType = approveridcardtype
          @ApproverIdCardNumber = approveridcardnumber
          @OrganizationName = organizationname
        end

        def deserialize(params)
          @ApproverType = params['ApproverType']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @ApproverIdCardType = params['ApproverIdCardType']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
          @OrganizationName = params['OrganizationName']
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
        # @type FailReason: String
        # @param Url: 印章图片url，5分钟内有效
        # @type Url: String
        # @param SealType: 印章类型,OFFICIAL-企业公章, CONTRACT-合同专用章,ORGANIZATIONSEAL-企业印章(本地上传印章类型),LEGAL_PERSON_SEAL-法人印章
        # @type SealType: String
        # @param IsAllTime: 用印申请是否为永久授权，true-是，false-否
        # @type IsAllTime: Boolean
        # @param AuthorizedUsers: 授权人列表
        # @type AuthorizedUsers: Array
        # @param ExtendScene: 印章扩展数据信息
        # @type ExtendScene: :class:`Tencentcloud::Ess.v20201111.models.ExtendScene`

        attr_accessor :SealId, :SealName, :CreateOn, :Creator, :SealPolicyId, :SealStatus, :FailReason, :Url, :SealType, :IsAllTime, :AuthorizedUsers, :ExtendScene

        def initialize(sealid=nil, sealname=nil, createon=nil, creator=nil, sealpolicyid=nil, sealstatus=nil, failreason=nil, url=nil, sealtype=nil, isalltime=nil, authorizedusers=nil, extendscene=nil)
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
          @ExtendScene = extendscene
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
          unless params['ExtendScene'].nil?
            @ExtendScene = ExtendScene.new
            @ExtendScene.deserialize(params['ExtendScene'])
          end
        end
      end

      # OperateTemplate请求参数结构体
      class OperateTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TemplateId: 模板ID，为32位字符串。
        # @type TemplateId: String
        # @param OperateType: 操作类型，可取值如下:
        # <ul>
        # <li>DELETE:  删除</li>
        # <li>ENABLE: 启用</li>
        # <li>DISABLE: 停用</li>
        # </ul>
        # @type OperateType: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :TemplateId, :OperateType, :Agent

        def initialize(operator=nil, templateid=nil, operatetype=nil, agent=nil)
          @Operator = operator
          @TemplateId = templateid
          @OperateType = operatetype
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @TemplateId = params['TemplateId']
          @OperateType = params['OperateType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # OperateTemplate返回参数结构体
      class OperateTemplateResponse < TencentCloud::Common::AbstractModel
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

      # 企业套餐余额情况
      class OrgBillSummary < TencentCloud::Common::AbstractModel
        # @param Total: 套餐总数
        # @type Total: Integer
        # @param Used: 套餐使用数
        # @type Used: Integer
        # @param Available: 套餐剩余数
        # @type Available: Integer
        # @param QuotaType: 套餐类型
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

        attr_accessor :Total, :Used, :Available, :QuotaType

        def initialize(total=nil, used=nil, available=nil, quotatype=nil)
          @Total = total
          @Used = used
          @Available = available
          @QuotaType = quotatype
        end

        def deserialize(params)
          @Total = params['Total']
          @Used = params['Used']
          @Available = params['Available']
          @QuotaType = params['QuotaType']
        end
      end

      # 企业批量注册链接信息
      class OrganizationAuthUrl < TencentCloud::Common::AbstractModel
        # @param AuthUrl: 企业批量注册链接，根据Endpoint的不同设置，返回不同的链接地址。失效时间：7天
        # 跳转链接, 链接的有效期根据企业,员工状态和终端等有区别, 可以参考下表
        # <table> <thead> <tr> <th>Endpoint</th> <th>示例</th> <th>链接有效期限</th> </tr> </thead>  <tbody>
        #  <tr> <td>PC</td> <td>https://qian.tencent.com/console/batch-register?token=yDSx0UUgtjuaf4UEfd2MjCnfI1iuXFE6&orgName=批量认证线上测试企业9</td> <td>7天</td> </tr>
        # <tr> <td>PC_SHORT_URL</td> <td>https://test.essurl.cn/8gDKUBAWK8</td> <td>7天</td> </tr>
        # <tr> <td>APP</td> <td>/pages/guide/index?to=REGISTER_ENTERPRISE_FOR_BATCH&urlAuthToken=yDSx0UUgtjuaf4UEfd2MjCnfI1iuXFE6&orgName=批量认证线上测试企业9</td> <td>7天</td> </tr> </tbody> </table>
        # 注：
        # `1.创建的链接应避免被转义，如：&被转义为\u0026；如使用Postman请求后，请选择响应类型为 JSON，否则链接将被转义`
        # @type AuthUrl: String
        # @param ErrorMessage: 企业批量注册的错误信息，例如：企业三要素不通过
        # @type ErrorMessage: String
        # @param SubTaskId: 企业批量注册的唯一 Id， 此 Id 可以用在[创建企业批量认证链接-单链接](https://qian.tencent.com/developers/companyApis/organizations/CreateBatchOrganizationAuthorizationUrl)。
        # @type SubTaskId: String

        attr_accessor :AuthUrl, :ErrorMessage, :SubTaskId

        def initialize(authurl=nil, errormessage=nil, subtaskid=nil)
          @AuthUrl = authurl
          @ErrorMessage = errormessage
          @SubTaskId = subtaskid
        end

        def deserialize(params)
          @AuthUrl = params['AuthUrl']
          @ErrorMessage = params['ErrorMessage']
          @SubTaskId = params['SubTaskId']
        end
      end

      # 企业授权书信息参数， 需要保证这些参数跟营业执照中的信息一致。
      class OrganizationCommonInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # @type OrganizationName: String
        # @param UniformSocialCreditCode: 组织机构企业统一社会信用代码。
        # 请确认该企业统一社会信用代码与企业营业执照中注册的统一社会信用代码一致。
        # @type UniformSocialCreditCode: String
        # @param LegalName: 组织机构法人的姓名。
        # 请确认该企业统一社会信用代码与企业营业执照中注册的法人姓名一致。
        # @type LegalName: String
        # @param LegalIdCardType: 组织机构法人的证件类型
        # @type LegalIdCardType: String
        # @param LegalIdCardNumber: 组织机构法人的证件号码
        # @type LegalIdCardNumber: String
        # @param AdminName: 组织机构超管姓名。
        # @type AdminName: String
        # @param AdminMobile: 组织机构超管手机号。
        # @type AdminMobile: String
        # @param AdminIdCardType: 组织机构超管证件类型
        # @type AdminIdCardType: String
        # @param AdminIdCardNumber: 组织机构超管证件号码
        # @type AdminIdCardNumber: String
        # @param OldAdminName: 原超管姓名
        # @type OldAdminName: String
        # @param OldAdminMobile: 原超管手机号
        # @type OldAdminMobile: String
        # @param OldAdminIdCardType: 原超管证件类型
        # @type OldAdminIdCardType: String
        # @param OldAdminIdCardNumber: 原超管证件号码
        # @type OldAdminIdCardNumber: String

        attr_accessor :OrganizationName, :UniformSocialCreditCode, :LegalName, :LegalIdCardType, :LegalIdCardNumber, :AdminName, :AdminMobile, :AdminIdCardType, :AdminIdCardNumber, :OldAdminName, :OldAdminMobile, :OldAdminIdCardType, :OldAdminIdCardNumber

        def initialize(organizationname=nil, uniformsocialcreditcode=nil, legalname=nil, legalidcardtype=nil, legalidcardnumber=nil, adminname=nil, adminmobile=nil, adminidcardtype=nil, adminidcardnumber=nil, oldadminname=nil, oldadminmobile=nil, oldadminidcardtype=nil, oldadminidcardnumber=nil)
          @OrganizationName = organizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalName = legalname
          @LegalIdCardType = legalidcardtype
          @LegalIdCardNumber = legalidcardnumber
          @AdminName = adminname
          @AdminMobile = adminmobile
          @AdminIdCardType = adminidcardtype
          @AdminIdCardNumber = adminidcardnumber
          @OldAdminName = oldadminname
          @OldAdminMobile = oldadminmobile
          @OldAdminIdCardType = oldadminidcardtype
          @OldAdminIdCardNumber = oldadminidcardnumber
        end

        def deserialize(params)
          @OrganizationName = params['OrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalName = params['LegalName']
          @LegalIdCardType = params['LegalIdCardType']
          @LegalIdCardNumber = params['LegalIdCardNumber']
          @AdminName = params['AdminName']
          @AdminMobile = params['AdminMobile']
          @AdminIdCardType = params['AdminIdCardType']
          @AdminIdCardNumber = params['AdminIdCardNumber']
          @OldAdminName = params['OldAdminName']
          @OldAdminMobile = params['OldAdminMobile']
          @OldAdminIdCardType = params['OldAdminIdCardType']
          @OldAdminIdCardNumber = params['OldAdminIdCardNumber']
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
        deprecate :OrganizationId, :none, 2025, 5
        deprecate :OrganizationId=, :none, 2025, 5
        deprecate :Channel, :none, 2025, 5
        deprecate :Channel=, :none, 2025, 5
        deprecate :OrganizationOpenId, :none, 2025, 5
        deprecate :OrganizationOpenId=, :none, 2025, 5
        deprecate :ClientIp, :none, 2025, 5
        deprecate :ClientIp=, :none, 2025, 5
        deprecate :ProxyIp, :none, 2025, 5
        deprecate :ProxyIp=, :none, 2025, 5

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
        # @param CertSn: 在数字证书申请过程中，系统会自动生成一个独一无二的序列号。
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
        # @type Name: String
        # @param Key: 权限key
        # @type Key: String
        # @param Type: 权限类型 1前端，2后端
        # @type Type: Integer
        # @param Hide: 是否隐藏
        # @type Hide: Integer
        # @param DataLabel: 数据权限标签 1:表示根节点，2:表示叶子结点
        # @type DataLabel: Integer
        # @param DataType: 数据权限独有，1:关联其他模块鉴权，2:表示关联自己模块鉴权
        # @type DataType: Integer
        # @param DataRange: 数据权限独有，表示数据范围，1：全公司，2:部门及下级部门，3:自己
        # @type DataRange: Integer
        # @param DataTo: 关联权限, 表示这个功能权限要受哪个数据权限管控
        # @type DataTo: String
        # @param ParentKey: 父级权限key
        # @type ParentKey: String
        # @param IsChecked: 是否选中
        # @type IsChecked: Boolean
        # @param Children: 子权限集合
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
        # @type GroupName: String
        # @param GroupKey: 权限组key
        # @type GroupKey: String
        # @param Hide: 是否隐藏分组，0否1是
        # @type Hide: Integer
        # @param Permissions: 权限集合
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

      # 预设的动态签署方的补充信息，仅匹配对应信息的签署方才能领取合同。暂时仅对个人参与方生效。
      class PresetApproverInfo < TencentCloud::Common::AbstractModel
        # @param Name: 预设参与方姓名。
        # @type Name: String
        # @param Mobile: 预设参与方手机号。
        # @type Mobile: String
        # @param IdCardNumber: 预设参与方证件号，需要和IdCardType同时传入。

        # 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成(如存在X，请大写)。</li></ul>
        # @type IdCardNumber: String
        # @param IdCardType: 预设参与方的证件类型，需要与IdCardNumber同时传入。

        # 证件类型，支持以下类型
        # <ul><li><b>ID_CARD</b>: 居民身份证</li></ul>
        # @type IdCardType: String

        attr_accessor :Name, :Mobile, :IdCardNumber, :IdCardType

        def initialize(name=nil, mobile=nil, idcardnumber=nil, idcardtype=nil)
          @Name = name
          @Mobile = mobile
          @IdCardNumber = idcardnumber
          @IdCardType = idcardtype
        end

        def deserialize(params)
          @Name = params['Name']
          @Mobile = params['Mobile']
          @IdCardNumber = params['IdCardNumber']
          @IdCardType = params['IdCardType']
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
        # @param ApproverVerifyTypes: 签署人查看合同校验方式, 支持的类型如下:
        # <ul><li> 1 :实名认证查看</li>
        # <li> 2 :手机号校验查看</li></ul>
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 签署人进行合同签署时的认证方式，支持的类型如下:
        # <ul><li> 1 :人脸认证</li>
        # <li> 2 :签署密码</li>
        # <li> 3 :运营商三要素认证</li>
        # <li> 4 :UKey认证</li>
        # <li> 5 :设备指纹识别</li>
        # <li> 6 :设备面容识别</li></ul>
        # @type ApproverSignTypes: Array
        # @param NoTransfer: 签署方是否可以转他人处理

        # <ul><li> **false** : ( 默认)可以转他人处理</li>
        # <li> **true** :不可以转他人处理</li></ul>
        # @type NoTransfer: Boolean

        attr_accessor :RecipientId, :RecipientType, :Description, :RoleName, :RequireValidation, :RequireSign, :RoutingOrder, :RequireDelivery, :Email, :Mobile, :UserId, :DeliveryMethod, :RecipientExtra, :ApproverVerifyTypes, :ApproverSignTypes, :NoTransfer

        def initialize(recipientid=nil, recipienttype=nil, description=nil, rolename=nil, requirevalidation=nil, requiresign=nil, routingorder=nil, requiredelivery=nil, email=nil, mobile=nil, userid=nil, deliverymethod=nil, recipientextra=nil, approververifytypes=nil, approversigntypes=nil, notransfer=nil)
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
          @ApproverVerifyTypes = approververifytypes
          @ApproverSignTypes = approversigntypes
          @NoTransfer = notransfer
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
          @ApproverVerifyTypes = params['ApproverVerifyTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
          @NoTransfer = params['NoTransfer']
        end
      end

      # 参与方填写控件信息
      class RecipientComponentInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署方经办人在合同流程中的参与方ID，与控件绑定，是控件的归属方
        # @type RecipientId: String
        # @param RecipientFillStatus: 参与方填写状态
        # <ul>
        # <li>**空值** : 此参与方没有填写控件</li>
        # <li>**0**:  未填写, 表示此参与方还没有填写合同的填写控件</li>
        # <li>**1**:  已填写, 表示此参与方已经填写所有的填写控件</li></ul>
        # @type RecipientFillStatus: String
        # @param IsPromoter: 是否为发起方
        # <ul><li>true-发起方</li>
        # <li>false-参与方</li></ul>
        # @type IsPromoter: Boolean
        # @param Components: 改参与方填写控件信息列表
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uscc: String
        # @param UnifiedSocialCreditCode: 社会统一信用代码
        # @type UnifiedSocialCreditCode: String

        attr_accessor :LegalName, :Uscc, :UnifiedSocialCreditCode
        extend Gem::Deprecate
        deprecate :Uscc, :none, 2025, 5
        deprecate :Uscc=, :none, 2025, 5

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

      # 企业认证信息参数， 需要保证这些参数跟营业执照中的信息一致。
      class RegistrationOrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # @type OrganizationName: String
        # @param UniformSocialCreditCode: 组织机构企业统一社会信用代码。
        # 请确认该企业统一社会信用代码与企业营业执照中注册的统一社会信用代码一致。
        # @type UniformSocialCreditCode: String
        # @param LegalName: 组织机构法人的姓名。
        # 请确认该企业统一社会信用代码与企业营业执照中注册的法人姓名一致。
        # @type LegalName: String
        # @param Address: 组织机构企业注册地址。
        # 请确认该企业注册地址与企业营业执照中注册的地址一致。
        # @type Address: String
        # @param AdminName: 组织机构超管姓名。
        # 在注册流程中，必须是超管本人进行操作。
        # 如果法人做为超管管理组织机构,超管姓名就是法人姓名
        # 如果入参中传递超管授权书PowerOfAttorneys，则此参数为必填参数。
        # @type AdminName: String
        # @param AdminMobile: 组织机构超管手机号。
        # 在注册流程中，这个手机号必须跟操作人在电子签注册的个人手机号一致。
        # 如果入参中传递超管授权书PowerOfAttorneys，则此参数为必填参数
        # @type AdminMobile: String
        # @param AuthorizationTypes: 可选的此企业允许的授权方式, 可以设置的方式有:
        # 1：上传授权书
        # 2：法人授权超管
        # 5：授权书+对公打款


        # 注:
        # `1. 当前仅支持一种认证方式`
        # `2. 如果当前的企业类型是政府/事业单位, 则只支持上传授权书+对公打款`
        # `3. 如果当前操作人是法人,则是法人认证`
        # @type AuthorizationTypes: Array
        # @param AdminIdCardNumber: 认证人身份证号，如果入参中传递超管授权书PowerOfAttorneys，则此参数为必填参数
        # @type AdminIdCardNumber: String
        # @param AdminIdCardType: 认证人证件类型
        # 支持以下类型
        # <ul><li>ID_CARD : 中国大陆居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 中国港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>
        # @type AdminIdCardType: String
        # @param BusinessLicense: 营业执照正面照(PNG或JPG) base64格式, 大小不超过5M
        # @type BusinessLicense: String
        # @param PowerOfAttorneys: 授权书(PNG或JPG或PDF) base64格式, 大小不超过8M 。
        # p.s. 如果上传授权书 ，需遵循以下条件
        # 1. 超管的信息（超管姓名，超管手机号）必须为必填参数。
        # 2. 超管的个人身份必须在电子签已经实名。
        # 2. 认证方式AuthorizationTypes必须只能是上传授权书方式
        # @type PowerOfAttorneys: Array

        attr_accessor :OrganizationName, :UniformSocialCreditCode, :LegalName, :Address, :AdminName, :AdminMobile, :AuthorizationTypes, :AdminIdCardNumber, :AdminIdCardType, :BusinessLicense, :PowerOfAttorneys

        def initialize(organizationname=nil, uniformsocialcreditcode=nil, legalname=nil, address=nil, adminname=nil, adminmobile=nil, authorizationtypes=nil, adminidcardnumber=nil, adminidcardtype=nil, businesslicense=nil, powerofattorneys=nil)
          @OrganizationName = organizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalName = legalname
          @Address = address
          @AdminName = adminname
          @AdminMobile = adminmobile
          @AuthorizationTypes = authorizationtypes
          @AdminIdCardNumber = adminidcardnumber
          @AdminIdCardType = adminidcardtype
          @BusinessLicense = businesslicense
          @PowerOfAttorneys = powerofattorneys
        end

        def deserialize(params)
          @OrganizationName = params['OrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalName = params['LegalName']
          @Address = params['Address']
          @AdminName = params['AdminName']
          @AdminMobile = params['AdminMobile']
          @AuthorizationTypes = params['AuthorizationTypes']
          @AdminIdCardNumber = params['AdminIdCardNumber']
          @AdminIdCardType = params['AdminIdCardType']
          @BusinessLicense = params['BusinessLicense']
          @PowerOfAttorneys = params['PowerOfAttorneys']
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

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/973a820ab66d1ce57082c160c2b2d44a.png)
        # @type ApproverSignRole: String
        # @param ApproverSignSealId: 印章Id，签署控件类型为印章时，用于指定本企业签署方在解除协议中使用那个印章进行签署
        # @type ApproverSignSealId: String
        # @param RelievedApproverRecipientId: 要更换的原合同参与人RecipientId编号。(可通过接口<a href="https://qian.tencent.com/developers/companyApis/queryFlows/DescribeFlowInfo/">DescribeFlowInfo</a>查询签署人的RecipientId编号)<br/>
        # @type RelievedApproverRecipientId: String

        attr_accessor :Name, :Mobile, :RelievedApproverReceiptId, :ApproverType, :ApproverSignComponentType, :ApproverSignRole, :ApproverSignSealId, :RelievedApproverRecipientId
        extend Gem::Deprecate
        deprecate :RelievedApproverReceiptId, :none, 2025, 5
        deprecate :RelievedApproverReceiptId=, :none, 2025, 5

        def initialize(name=nil, mobile=nil, relievedapproverreceiptid=nil, approvertype=nil, approversigncomponenttype=nil, approversignrole=nil, approversignsealid=nil, relievedapproverrecipientid=nil)
          @Name = name
          @Mobile = mobile
          @RelievedApproverReceiptId = relievedapproverreceiptid
          @ApproverType = approvertype
          @ApproverSignComponentType = approversigncomponenttype
          @ApproverSignRole = approversignrole
          @ApproverSignSealId = approversignsealid
          @RelievedApproverRecipientId = relievedapproverrecipientid
        end

        def deserialize(params)
          @Name = params['Name']
          @Mobile = params['Mobile']
          @RelievedApproverReceiptId = params['RelievedApproverReceiptId']
          @ApproverType = params['ApproverType']
          @ApproverSignComponentType = params['ApproverSignComponentType']
          @ApproverSignRole = params['ApproverSignRole']
          @ApproverSignSealId = params['ApproverSignSealId']
          @RelievedApproverRecipientId = params['RelievedApproverRecipientId']
        end
      end

      # 解除协议文档中内容信息，包括但不限于：解除理由、解除后仍然有效的条款-保留条款、原合同事项处理-费用结算、原合同事项处理-其他事项、其他约定等。下面各种字段在解除协议中的位置参考：

      # ![image](https://qcloudimg.tencent-cloud.cn/raw/5087164cfe5a15fa3ced3180842d5da9.png)
      class RelieveInfo < TencentCloud::Common::AbstractModel
        # @param Reason: 解除理由，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type Reason: String
        # @param RemainInForceItem: 解除后仍然有效的条款，保留条款，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type RemainInForceItem: String
        # @param OriginalExpenseSettlement: 原合同事项处理-费用结算，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type OriginalExpenseSettlement: String
        # @param OriginalOtherSettlement: 原合同事项处理-其他事项，长度不能超过200，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
        # @type OriginalOtherSettlement: String
        # @param OtherDeals: 其他约定（如约定的与解除协议存在冲突的，以【其他约定】为准），最大支持200个字，只能由中文、字母、数字、中文标点和英文标点组成(不支持表情)。
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

      # RenewAutoSignLicense请求参数结构体
      class RenewAutoSignLicenseRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 需要续期自动签的个人的信息，如姓名，证件信息等。
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

      # RenewAutoSignLicense返回参数结构体
      class RenewAutoSignLicenseResponse < TencentCloud::Common::AbstractModel
        # @param LicenseTo: 续期成功后新的自动签许可到期时间。当且仅当已通过许可开通自动签时有值。

        # 值为unix时间戳,单位为秒。
        # @type LicenseTo: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LicenseTo, :RequestId

        def initialize(licenseto=nil, requestid=nil)
          @LicenseTo = licenseto
          @RequestId = requestid
        end

        def deserialize(params)
          @LicenseTo = params['LicenseTo']
          @RequestId = params['RequestId']
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
        # @type SealId: String
        # @param SealType: 印章类型。LEGAL_PERSON_SEAL: 法定代表人章；
        # ORGANIZATIONSEAL：企业印章；
        # OFFICIAL：企业公章；
        # CONTRACT：合同专用章
        # @type SealType: String
        # @param SealName: 印章名称
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

      # 签署控件的配置信息，用在嵌入式发起的页面配置，包括

      # - 签署控件是否默认展示日期.
      class SignComponentConfig < TencentCloud::Common::AbstractModel
        # @param HideDate: 签署控件默认属性配置，是否默认展示签署日期， 在页面中可以进行修改。

        # - false 展示签署日期（默认）
        # - true 不展示签署日期
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/448514412e2f69f6129425beda4ff568.png)。
        # @type HideDate: Boolean

        attr_accessor :HideDate

        def initialize(hidedate=nil)
          @HideDate = hidedate
        end

        def deserialize(params)
          @HideDate = params['HideDate']
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
        # @param WeixinQrCodeUrl: 微信小程序二维码
        # @type WeixinQrCodeUrl: String

        attr_accessor :QrCodeId, :QrCodeUrl, :ExpiredTime, :WeixinQrCodeUrl

        def initialize(qrcodeid=nil, qrcodeurl=nil, expiredtime=nil, weixinqrcodeurl=nil)
          @QrCodeId = qrcodeid
          @QrCodeUrl = qrcodeurl
          @ExpiredTime = expiredtime
          @WeixinQrCodeUrl = weixinqrcodeurl
        end

        def deserialize(params)
          @QrCodeId = params['QrCodeId']
          @QrCodeUrl = params['QrCodeUrl']
          @ExpiredTime = params['ExpiredTime']
          @WeixinQrCodeUrl = params['WeixinQrCodeUrl']
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
        # @type Email: String
        # @param OpenId: 用户在第三方平台ID。
        # 注：`如需在此接口提醒员工实名，该参数不传。`
        # @type OpenId: String
        # @param Roles: 员工角色信息。
        # 注：`创建和更新场景无需填写。`
        # @type Roles: Array
        # @param Department: 员工部门信息。
        # @type Department: :class:`Tencentcloud::Ess.v20201111.models.Department`
        # @param Verified: 员工是否实名。
        # 注：`创建和更新场景无需填写。`
        # @type Verified: Boolean
        # @param CreatedOn: 员工创建时间戳，单位秒。
        # 注：`创建和更新场景无需填写。`
        # @type CreatedOn: Integer
        # @param VerifiedOn: 员工实名时间戳，单位秒。
        # 注：`创建和更新场景无需填写。`
        # @type VerifiedOn: Integer
        # @param QuiteJob: 员工是否离职：
        # <ul><li>**0**：未离职</li><li>**1**：离职</li></ul>
        # 注：`创建和更新场景无需填写。`
        # @type QuiteJob: Integer
        # @param ReceiveUserId: 员工离职交接人用户ID。
        # 注：`创建和更新场景无需填写。`
        # @type ReceiveUserId: String
        # @param ReceiveOpenId: 员工离职交接人用户OpenId。
        # 注：`创建和更新场景无需填写。`
        # @type ReceiveOpenId: String
        # @param WeworkOpenId: 企业微信用户账号ID。
        # 注：`仅企微类型的企业创建员工接口支持该字段。`
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
        # @type RoleId: String
        # @param RoleName: 角色名称。
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
        # @param Operator: 本合同的发起人，<a href="https://qcloudimg.tencent-cloud.cn/raw/f850cfbe163a1cb38439a9f551c2505c.png" target="_blank">点击查看合同发起人展示的位置</a>
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
        deprecate :ClientToken, :none, 2025, 5
        deprecate :ClientToken=, :none, 2025, 5

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 子企业套餐使用情况
      class SubOrgBillSummary < TencentCloud::Common::AbstractModel
        # @param OrganizationName: 子企业名称
        # @type OrganizationName: String
        # @param Usage: 
        # @type Usage: Array

        attr_accessor :OrganizationName, :Usage

        def initialize(organizationname=nil, usage=nil)
          @OrganizationName = organizationname
          @Usage = usage
        end

        def deserialize(params)
          @OrganizationName = params['OrganizationName']
          unless params['Usage'].nil?
            @Usage = []
            params['Usage'].each do |i|
              suborgbillusage_tmp = SubOrgBillUsage.new
              suborgbillusage_tmp.deserialize(i)
              @Usage << suborgbillusage_tmp
            end
          end
        end
      end

      # 集团子企业使用集团主企业的套餐使用情况
      class SubOrgBillUsage < TencentCloud::Common::AbstractModel
        # @param Used: 套餐使用数
        # @type Used: Integer
        # @param QuotaType: 套餐类型
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

        attr_accessor :Used, :QuotaType

        def initialize(used=nil, quotatype=nil)
          @Used = used
          @QuotaType = quotatype
        end

        def deserialize(params)
          @Used = params['Used']
          @QuotaType = params['QuotaType']
        end
      end

      # 创建/修改员工成功返回的信息
      # 现在支持saas/企微/H5端进行加入。
      class SuccessCreateStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 员工名
        # @type DisplayName: String
        # @param Mobile: 员工手机号
        # @type Mobile: String
        # @param UserId: 员工在电子签平台的id
        # @type UserId: String
        # @param Note: 提示，当创建已存在未实名用户时，该字段有值
        # @type Note: String
        # @param WeworkOpenId: 传入的企微账号id
        # @type WeworkOpenId: String
        # @param Url: 员工邀请返回链接 根据入参的 InvitationNotifyType 和 Endpoint 返回链接 <table><tbody><tr><td>链接类型</td><td>有效期</td><td>示例</td></tr><tr><td>HTTP_SHORT_URL（短链）</td><td>一天</td><td>https://test.essurl.cn/fvG7UBEd0F</td></tr><tr><td>HTTP（长链）</td><td>一天</td><td>https://res.ess.tencent.cn/cdn/h5-activity-dev/jump-mp.html?where=mini&from=MSG&to=USER_VERIFY&verifyToken=yDCVbUUckpwocmfpUySko7IS83LTV0u0&expireTime=1710840183</td></tr><tr><td>H5</td><td>30 天</td><td>https://quick.test.qian.tencent.cn/guide?Code=yDCVbUUckpwtvxqoUbTw4VBBjLbfAtW7&CodeType=QUICK&shortKey=yDCVbUY7lhqV7mZlCL2d</td></tr><tr><td>APP</td><td>一天</td><td>/pages/guide/index?to=USER_VERIFY&verifyToken=yDCVbUUckpwocm96UySko7ISvEIZH7Yz&expireTime=1710840455 </td></tr></tbody></table>
        # @type Url: String

        attr_accessor :DisplayName, :Mobile, :UserId, :Note, :WeworkOpenId, :Url

        def initialize(displayname=nil, mobile=nil, userid=nil, note=nil, weworkopenid=nil, url=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @UserId = userid
          @Note = note
          @WeworkOpenId = weworkopenid
          @Url = url
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @UserId = params['UserId']
          @Note = params['Note']
          @WeworkOpenId = params['WeworkOpenId']
          @Url = params['Url']
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

      # 更新员工信息成功返回的数据信息， 仅支持未实名的用户进行更新
      # 会通过短信、企微消息或者H5Url 链接
      # 如果是通过H5邀请加入的方式，会返回H5 链接
      class SuccessUpdateStaffData < TencentCloud::Common::AbstractModel
        # @param DisplayName: 传入的用户名称
        # @type DisplayName: String
        # @param Mobile: 传入的手机号，没有打码
        # @type Mobile: String
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # @type UserId: String
        # @param Url: H5端员工实名链接
        # 只有入参 InvitationNotifyType = H5的时候才会进行返回。
        # @type Url: String

        attr_accessor :DisplayName, :Mobile, :UserId, :Url

        def initialize(displayname=nil, mobile=nil, userid=nil, url=nil)
          @DisplayName = displayname
          @Mobile = mobile
          @UserId = userid
          @Url = url
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Mobile = params['Mobile']
          @UserId = params['UserId']
          @Url = params['Url']
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
        # @param TemplateName: 模板的名字
        # @type TemplateName: String
        # @param Recipients: 此模块需要签署的各个参与方的角色列表。RecipientId标识每个参与方角色对应的唯一标识符，用于确定此角色的信息。

        # [点击查看在模板中配置的签署参与方角色列表的样子](https://qcloudimg.tencent-cloud.cn/raw/e082bbcc0d923f8cb723d98382410aa2.png)

        # @type Recipients: Array
        # @param Components: 模板的填充控件列表

        # [点击查看在模板中配置的填充控件的样子](https://qcloudimg.tencent-cloud.cn/raw/cb2f58529fca8d909258f9d45a56f7f4.png)
        # @type Components: Array
        # @param SignComponents: 此模板中的签署控件列表

        # [点击查看在模板中配置的签署控件的样子](https://qcloudimg.tencent-cloud.cn/raw/29bc6ed753a5a0fce4a3ab02e2c0d955.png)
        # @type SignComponents: Array
        # @param Description: 模板描述信息
        # @type Description: String
        # @param DocumentResourceIds: 此模板的资源ID
        # @type DocumentResourceIds: Array
        # @param FileInfos: 生成模板的文件基础信息
        # @type FileInfos: Array
        # @param AttachmentResourceIds: 此模板里边附件的资源ID
        # @type AttachmentResourceIds: Array
        # @param SignOrder: 签署人参与签署的顺序，可以分为以下两种方式：

        # <b>无序</b>：不限定签署人的签署顺序，签署人可以在任何时间签署。此种方式值为 ：｛-1｝
        # <b>有序</b>：通过序列数字标识签署顺序，从0开始编码，数字越大签署顺序越靠后，签署人按照指定的顺序依次签署。此种方式值为： ｛0，1，2，3………｝
        # @type SignOrder: Array
        # @param Status: 此模板的状态可以分为以下几种：

        # <b>-1</b>：不可用状态。
        # <b>0</b>：草稿态，即模板正在编辑或未发布状态。
        # <b>1</b>：正式态，只有正式态的模板才可以发起合同。
        # @type Status: Integer
        # @param Creator: 模板的创建者信息，用户的名字

        # 注： `是创建者的名字，而非创建者的用户ID`
        # @type Creator: String
        # @param CreatedOn: 模板创建的时间戳，格式为Unix标准时间戳（秒）
        # @type CreatedOn: Integer
        # @param Promoter: 此模板创建方角色信息。

        # [点击查看在模板中配置的创建方角色的样子](https://qcloudimg.tencent-cloud.cn/raw/e082bbcc0d923f8cb723d98382410aa2.png)
        # @type Promoter: :class:`Tencentcloud::Ess.v20201111.models.Recipient`
        # @param TemplateType: 模板类型可以分为以下两种：

        # <b>1</b>：带有本企业自动签署的模板，即签署过程无需签署人手动操作，系统自动完成签署。
        # <b>3</b>：普通模板，即签署人需要手动进行签署操作。
        # @type TemplateType: Integer
        # @param Available: 模板可用状态可以分为以下两种：

        # <b>1</b>：（默认）启用状态，即模板可以正常使用。
        # <b>2</b>：停用状态，即模板暂时无法使用。

        # 可到控制台启停模板
        # @type Available: Integer
        # @param OrganizationId: 创建模板的企业ID，电子签的机构ID
        # @type OrganizationId: String
        # @param CreatorId: 模板创建人用户ID
        # @type CreatorId: String
        # @param PreviewUrl: 模板的 H5 预览链接，有效期为 5 分钟。
        # 您可以通过浏览器直接打开此链接预览模板，或将其嵌入到 iframe 中进行预览。

        # 注意：只有在请求接口时将 <b>WithPreviewUrl </b>参数设置为 true，才会生成预览链接。
        # @type PreviewUrl: String
        # @param UserFlowType: 用户自定义合同类型。

        # 返回配置模板的时候选择的合同类型。[点击查看配置的位置](https://qcloudimg.tencent-cloud.cn/raw/4a766f0540253bf2a05d50c58bd14990.png)

        # 自定义合同类型配置的地方如链接图所示。[点击查看自定义合同类型管理的位置](https://qcloudimg.tencent-cloud.cn/raw/36582cea03ae6a2559894844942b5d5c.png)
        # @type UserFlowType: :class:`Tencentcloud::Ess.v20201111.models.UserFlowType`
        # @param TemplateVersion: 模板版本的编号，旨在标识其独特的版本信息，通常呈现为一串字符串，由日期和递增的数字组成
        # @type TemplateVersion: String
        # @param Published: 模板是否已发布可以分为以下两种状态：

        # <b>true</b>：已发布状态，表示该模板已经发布并可以正常使用。
        # <b>false</b>：未发布状态，表示该模板还未发布，无法使用。
        # @type Published: Boolean
        # @param ShareTemplateId: <b>集体账号场景下</b>： 集团账号分享给子企业的模板的来源模板ID。
        # @type ShareTemplateId: String
        # @param TemplateSeals: 此模板配置的预填印章列表（包括自动签署指定的印章）
        # @type TemplateSeals: Array
        # @param Seals: 模板内部指定的印章列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seals: Array

        attr_accessor :TemplateId, :TemplateName, :Recipients, :Components, :SignComponents, :Description, :DocumentResourceIds, :FileInfos, :AttachmentResourceIds, :SignOrder, :Status, :Creator, :CreatedOn, :Promoter, :TemplateType, :Available, :OrganizationId, :CreatorId, :PreviewUrl, :UserFlowType, :TemplateVersion, :Published, :ShareTemplateId, :TemplateSeals, :Seals
        extend Gem::Deprecate
        deprecate :Seals, :none, 2025, 5
        deprecate :Seals=, :none, 2025, 5

        def initialize(templateid=nil, templatename=nil, recipients=nil, components=nil, signcomponents=nil, description=nil, documentresourceids=nil, fileinfos=nil, attachmentresourceids=nil, signorder=nil, status=nil, creator=nil, createdon=nil, promoter=nil, templatetype=nil, available=nil, organizationid=nil, creatorid=nil, previewurl=nil, userflowtype=nil, templateversion=nil, published=nil, sharetemplateid=nil, templateseals=nil, seals=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Recipients = recipients
          @Components = components
          @SignComponents = signcomponents
          @Description = description
          @DocumentResourceIds = documentresourceids
          @FileInfos = fileinfos
          @AttachmentResourceIds = attachmentresourceids
          @SignOrder = signorder
          @Status = status
          @Creator = creator
          @CreatedOn = createdon
          @Promoter = promoter
          @TemplateType = templatetype
          @Available = available
          @OrganizationId = organizationid
          @CreatorId = creatorid
          @PreviewUrl = previewurl
          @UserFlowType = userflowtype
          @TemplateVersion = templateversion
          @Published = published
          @ShareTemplateId = sharetemplateid
          @TemplateSeals = templateseals
          @Seals = seals
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
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
          @CreatorId = params['CreatorId']
          @PreviewUrl = params['PreviewUrl']
          unless params['UserFlowType'].nil?
            @UserFlowType = UserFlowType.new
            @UserFlowType.deserialize(params['UserFlowType'])
          end
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

      # 模版对应的合同类型
      class TemplateUserFlowType < TencentCloud::Common::AbstractModel
        # @param UserFlowTypeId: 合同类型id
        # @type UserFlowTypeId: String
        # @param Name: 合同类型名称
        # @type Name: String
        # @param Description: 合同类型的具体描述
        # @type Description: String
        # @param TemplateNum: 每个合同类型绑定的模版数量
        # @type TemplateNum: Integer

        attr_accessor :UserFlowTypeId, :Name, :Description, :TemplateNum

        def initialize(userflowtypeid=nil, name=nil, description=nil, templatenum=nil)
          @UserFlowTypeId = userflowtypeid
          @Name = name
          @Description = description
          @TemplateNum = templatenum
        end

        def deserialize(params)
          @UserFlowTypeId = params['UserFlowTypeId']
          @Name = params['Name']
          @Description = params['Description']
          @TemplateNum = params['TemplateNum']
        end
      end

      # UnbindEmployeeUserIdWithClientOpenId请求参数结构体
      class UnbindEmployeeUserIdWithClientOpenIdRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param UserId: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。

        # 通过<a href="https://qian.tencent.com/developers/companyApis/staffs/DescribeIntegrationEmployees" target="_blank">DescribeIntegrationEmployees</a>接口获取，也可登录腾讯电子签控制台查看
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/97cfffabb0caa61df16999cd395d7850.png)
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Employees: 需要更新的员工信息，最多不超过100个。根据UserId或OpenId更新员工信息，必须填写其中一个，优先使用UserId。

        # 可更新以下字段，其他字段暂不支持
        # <table> <thead> <tr> <th>参数</th> <th>含义</th> </tr> </thead> <tbody> <tr> <td>DisplayName</td> <td>用户的真实名字</td> </tr> <tr> <td>Mobile</td> <td>用户手机号码</td> </tr> <tr> <td>Email</td> <td>用户的邮箱</td> </tr> <tr> <td>Department.DepartmentId</td> <td>用户进入后的部门ID</td> </tr> </tbody> </table>
        # @type Employees: Array
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param InvitationNotifyType: 员工邀请方式可通过以下途径进行设置：<ul><li>**SMS（默认）**：邀请将通过短信或企业微信消息发送。若场景非企业微信，则采用企业微信消息；其他情境下则使用短信通知。短信内含链接，点击后将进入微信小程序进行认证并加入企业的流程。</li><li>**H5**：将生成H5链接，用户点击链接后可进入H5页面进行认证并加入企业的流程。</li><li>**NONE**：系统会根据Endpoint生成签署链接，业务方需获取链接并通知客户。</li></ul>
        # @type InvitationNotifyType: String
        # @param JumpUrl: 回跳地址，为认证成功后页面进行回跳的URL，请确保回跳地址的可用性。注：`只有在员工邀请方式（InvitationNotifyType参数）为H5场景下才生效， 其他方式下设置无效。`
        # @type JumpUrl: String
        # @param Endpoint: 要跳转的链接类型<ul><li> **HTTP**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型  ，此时返回长链 (默认类型)</li><li>**HTTP_SHORT_URL**：跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型，此时返回短链</li><li>**APP**： 第三方APP或小程序跳转电子签小程序的path,  APP或者小程序跳转适合此类型</li><li>**H5**： 第三方移动端浏览器进行嵌入，不支持小程序嵌入，过期时间一个月</li></ul>注意：InvitationNotifyType 和 Endpoint 的关系图<table><tbody><tr><td>通知类型（InvitationNotifyType）</td><td>Endpoint</td></tr><tr><td>SMS（默认）</td><td>不需要传递，会将 Endpoint 默认设置为HTTP_SHORT_URL</td></tr><tr><td>H5</td><td>不需要传递，会将 Endpoint 默认设置为 H5</td></tr><tr><td>NONE</td><td>所有 Endpoint 都支持（HTTP_URL/HTTP_SHORT_URL/H5/APP）默认为HTTP_SHORT_URL</td></tr></tbody></table>
        # @type Endpoint: String

        attr_accessor :Operator, :Employees, :Agent, :InvitationNotifyType, :JumpUrl, :Endpoint

        def initialize(operator=nil, employees=nil, agent=nil, invitationnotifytype=nil, jumpurl=nil, endpoint=nil)
          @Operator = operator
          @Employees = employees
          @Agent = agent
          @InvitationNotifyType = invitationnotifytype
          @JumpUrl = jumpurl
          @Endpoint = endpoint
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
          @InvitationNotifyType = params['InvitationNotifyType']
          @JumpUrl = params['JumpUrl']
          @Endpoint = params['Endpoint']
        end
      end

      # UpdateIntegrationEmployees返回参数结构体
      class UpdateIntegrationEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessEmployeeData: 更新成功的用户列表
        # @type SuccessEmployeeData: Array
        # @param FailedEmployeeData: 更新失败的用户列表
        # @type FailedEmployeeData: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param FileName: 文件的名字。
        # 文件名的最大长度应不超过200个字符，并且文件名的后缀必须反映其文件类型。
        # 例如，PDF文件应以“.pdf”结尾，如“XXX.pdf”，而Word文件应以“.doc”或“.docx”结尾，如“XXX.doc”或“XXX.docx”。
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
        # <li> **SEAL** : 此文件用于印章的生成，文件类型支持.jpg/.jpeg/.png</li></ul>
        # @type BusinessType: String
        # @param Caller: 执行本接口操作的员工信息。其中OperatorId为必填字段，即用户的UserId。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Caller: :class:`Tencentcloud::Ess.v20201111.models.Caller`
        # @param FileInfos: 请上传文件内容数组，最多可上传20个文件。

        # <b>所有文件必须符合<font color="red">FileType</font>指定的文件类型。</b>
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
        # @param CustomIds: 该字段已不再使用
        # @type CustomIds: Array
        # @param FileUrls: 不再使用，上传文件链接数组，最多支持20个URL
        # @type FileUrls: String
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :BusinessType, :Caller, :FileInfos, :FileType, :CoverRect, :CustomIds, :FileUrls, :Agent
        extend Gem::Deprecate
        deprecate :FileUrls, :none, 2025, 5
        deprecate :FileUrls=, :none, 2025, 5

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
        # 注:`有效期一个小时（超过一小时后系统不定期清理，会有部分时间差）, 有效期内此文件id可以反复使用, 超过有效期无法使用`
        # @type FileIds: Array
        # @param TotalCount: 上传成功文件数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 用户自定义合同类型， 自定义合同类型的管理可以[点击查看在控制台位置的截图](https://qcloudimg.tencent-cloud.cn/raw/85a9b2ebce07b0cd6d75d5327d538235.png)
      class UserFlowType < TencentCloud::Common::AbstractModel
        # @param UserFlowTypeId: 合同类型ID
        # @type UserFlowTypeId: String
        # @param Name: 合同类型名称
        # @type Name: String
        # @param Description: 合同类型说明
        # @type Description: String

        attr_accessor :UserFlowTypeId, :Name, :Description

        def initialize(userflowtypeid=nil, name=nil, description=nil)
          @UserFlowTypeId = userflowtypeid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @UserFlowTypeId = params['UserFlowTypeId']
          @Name = params['Name']
          @Description = params['Description']
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
        deprecate :Channel, :none, 2025, 5
        deprecate :Channel=, :none, 2025, 5
        deprecate :OpenId, :none, 2025, 5
        deprecate :OpenId=, :none, 2025, 5
        deprecate :ClientIp, :none, 2025, 5
        deprecate :ClientIp=, :none, 2025, 5
        deprecate :ProxyIp, :none, 2025, 5
        deprecate :ProxyIp=, :none, 2025, 5

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
        # <ul><li>ID_CARD : 中国大陆居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 中国港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 中国港澳台居民居住证(格式同中国大陆居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>中国大陆居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>中国港澳居民来往内地通行证号码共11位。第1位为字母，“H”字头签发给中国香港居民，“M”字头签发给中国澳门居民；第2位至第11位为数字。</li>
        # <li>中国港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
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

      # VerifyDigitFile请求参数结构体
      class VerifyDigitFileRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 执行本接口操作的员工信息。注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 代理企业和员工的信息。在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FileId: 加签接口返回的文件Id
        # @type FileId: String

        attr_accessor :Operator, :Agent, :FileId

        def initialize(operator=nil, agent=nil, fileid=nil)
          @Operator = operator
          @Agent = agent
          @FileId = fileid
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
          @FileId = params['FileId']
        end
      end

      # VerifyDigitFile返回参数结构体
      class VerifyDigitFileResponse < TencentCloud::Common::AbstractModel
        # @param PdfResourceMd5: 加签文件MD5哈希值
        # @type PdfResourceMd5: String
        # @param VerifyResult: 验签结果代码，代码的含义如下：<ul><li>**1**：文件验证成功。</li><li>**2**：文件验证失败。</li></ul>
        # @type VerifyResult: Integer
        # @param VerifySerialNo: 验签序列号, 为11为数组组成的字符串
        # @type VerifySerialNo: String
        # @param VerifyDigitFileResults: 验签结果详情，每个签名域对应的验签结果。
        # @type VerifyDigitFileResults: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PdfResourceMd5, :VerifyResult, :VerifySerialNo, :VerifyDigitFileResults, :RequestId

        def initialize(pdfresourcemd5=nil, verifyresult=nil, verifyserialno=nil, verifydigitfileresults=nil, requestid=nil)
          @PdfResourceMd5 = pdfresourcemd5
          @VerifyResult = verifyresult
          @VerifySerialNo = verifyserialno
          @VerifyDigitFileResults = verifydigitfileresults
          @RequestId = requestid
        end

        def deserialize(params)
          @PdfResourceMd5 = params['PdfResourceMd5']
          @VerifyResult = params['VerifyResult']
          @VerifySerialNo = params['VerifySerialNo']
          unless params['VerifyDigitFileResults'].nil?
            @VerifyDigitFileResults = []
            params['VerifyDigitFileResults'].each do |i|
              verifydigitfileresult_tmp = VerifyDigitFileResult.new
              verifydigitfileresult_tmp.deserialize(i)
              @VerifyDigitFileResults << verifydigitfileresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 数字加签文件验签结果
      class VerifyDigitFileResult < TencentCloud::Common::AbstractModel
        # @param CertNotBefore: 证书起始时间的Unix时间戳，单位毫秒
        # @type CertNotBefore: Integer
        # @param CertNotAfter: 证书过期时间的时间戳，单位毫秒
        # @type CertNotAfter: Integer
        # @param CertSn: 证书序列号，在数字证书申请过程中，系统会自动生成一个独一无二的序号。
        # @type CertSn: String
        # @param SignAlgorithm: 证书签名算法, 如SHA1withRSA等算法
        # @type SignAlgorithm: String
        # @param SignTime: 签署时间的Unix时间戳，单位毫秒
        # @type SignTime: Integer
        # @param SignType: 签名类型。0表示带签章的数字签名，1表示仅数字签名
        # @type SignType: Integer
        # @param SignerName: 申请证书的主体的名字

        # 如果是在腾讯电子签平台签署, 则对应的主体的名字个数如下
        # **企业**:  ESS@企业名称@编码
        # **个人**: ESS@个人姓名@证件号@808854

        # 如果在其他平台签署的, 主体的名字参考其他平台的说明
        # @type SignerName: String

        attr_accessor :CertNotBefore, :CertNotAfter, :CertSn, :SignAlgorithm, :SignTime, :SignType, :SignerName

        def initialize(certnotbefore=nil, certnotafter=nil, certsn=nil, signalgorithm=nil, signtime=nil, signtype=nil, signername=nil)
          @CertNotBefore = certnotbefore
          @CertNotAfter = certnotafter
          @CertSn = certsn
          @SignAlgorithm = signalgorithm
          @SignTime = signtime
          @SignType = signtype
          @SignerName = signername
        end

        def deserialize(params)
          @CertNotBefore = params['CertNotBefore']
          @CertNotAfter = params['CertNotAfter']
          @CertSn = params['CertSn']
          @SignAlgorithm = params['SignAlgorithm']
          @SignTime = params['SignTime']
          @SignType = params['SignType']
          @SignerName = params['SignerName']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

