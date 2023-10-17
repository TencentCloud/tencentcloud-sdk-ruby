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
  module Essbasic
    module V20210526
      # 应用相关信息
      class Agent < TencentCloud::Common::AbstractModel
        # @param AppId: 应用的唯一标识。不同的业务系统可以采用不同的AppId，不同AppId下的数据是隔离的。可以由控制台开发者中心-应用集成自主生成。
        # @type AppId: String
        # @param ProxyOrganizationOpenId: 第三方应用平台自定义，对应第三方平台子客企业的唯一标识。一个第三方平台子客企业主体与子客企业ProxyOrganizationOpenId是一一对应的，不可更改，不可重复使用。（例如，可以使用企业名称的hash值，或者社会统一信用代码的hash值，或者随机hash值，需要第三方应用平台保存），最大64位字符串
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOperator: 第三方平台子客企业中的员工/经办人，通过第三方应用平台进入电子签完成实名、且被赋予相关权限后，可以参与到企业资源的管理或签署流程中。
        # @type ProxyOperator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ProxyAppId: 非必需参数，在第三方平台子客企业开通电子签后，会生成唯一的子客应用Id（ProxyAppId）用于代理调用时的鉴权，在子客开通的回调中获取。
        # @type ProxyAppId: String
        # @param ProxyOrganizationId: 内部参数，暂未开放使用
        # @type ProxyOrganizationId: String

        attr_accessor :AppId, :ProxyOrganizationOpenId, :ProxyOperator, :ProxyAppId, :ProxyOrganizationId
        extend Gem::Deprecate
        deprecate :ProxyOrganizationId, :none, 2023, 10
        deprecate :ProxyOrganizationId=, :none, 2023, 10

        def initialize(appid=nil, proxyorganizationopenid=nil, proxyoperator=nil, proxyappid=nil, proxyorganizationid=nil)
          @AppId = appid
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @ProxyOperator = proxyoperator
          @ProxyAppId = proxyappid
          @ProxyOrganizationId = proxyorganizationid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          unless params['ProxyOperator'].nil?
            @ProxyOperator = UserInfo.new
            @ProxyOperator.deserialize(params['ProxyOperator'])
          end
          @ProxyAppId = params['ProxyAppId']
          @ProxyOrganizationId = params['ProxyOrganizationId']
        end
      end

      # 指定签署方经办人控件类型是个人印章签署控件（SIGN_SIGNATURE） 时，可选的签名方式。
      class ApproverComponentLimitType < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署方经办人在模板中配置的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。
        # @type RecipientId: String
        # @param Values: 签署方经办人控件类型是个人印章签署控件（SIGN_SIGNATURE） 时，可选的签名方式。

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

      # 签署方信息，发起合同后可获取到对应的签署方信息，如角色ID，角色名称
      class ApproverItem < TencentCloud::Common::AbstractModel
        # @param SignId: 签署方唯一编号

        # 在动态签署人场景下，可以用此编号确定参与方
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
        # @param HideOneKeySign: 是否隐藏一键签署 默认false-不隐藏true-隐藏
        # @type HideOneKeySign: Boolean
        # @param FillType: 签署人信息补充类型，默认无需补充。

        # <ul><li> **1** : ( 动态签署人（可发起合同后再补充签署人信息）</li>
        # </ul>
        # @type FillType: Integer

        attr_accessor :HideOneKeySign, :FillType

        def initialize(hideonekeysign=nil, filltype=nil)
          @HideOneKeySign = hideonekeysign
          @FillType = filltype
        end

        def deserialize(params)
          @HideOneKeySign = params['HideOneKeySign']
          @FillType = params['FillType']
        end
      end

      # 指定签署人限制项
      class ApproverRestriction < TencentCloud::Common::AbstractModel
        # @param Name: 指定签署人姓名
        # @type Name: String
        # @param Mobile: 指定签署人手机号，11位数字
        # @type Mobile: String
        # @param IdCardType: 指定签署人证件类型，ID_CARD-身份证，HONGKONG_AND_MACAO-港澳居民来往内地通行证，HONGKONG_MACAO_AND_TAIWAN-港澳台居民居住证
        # @type IdCardType: String
        # @param IdCardNumber: 指定签署人证件号码，其中字母大写
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

      # 授权出错信息
      class AuthFailMessage < TencentCloud::Common::AbstractModel
        # @param ProxyOrganizationOpenId: 第三方应用平台的子客企业OpenId
        # @type ProxyOrganizationOpenId: String
        # @param Message: 错误信息
        # @type Message: String

        attr_accessor :ProxyOrganizationOpenId, :Message

        def initialize(proxyorganizationopenid=nil, message=nil)
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @Message = message
        end

        def deserialize(params)
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          @Message = params['Message']
        end
      end

      # 授权用户
      class AuthorizedUser < TencentCloud::Common::AbstractModel
        # @param OpenId: 第三方应用平台的用户openid
        # @type OpenId: String

        attr_accessor :OpenId

        def initialize(openid=nil)
          @OpenId = openid
        end

        def deserialize(params)
          @OpenId = params['OpenId']
        end
      end

      # 自动签开启、签署相关配置
      class AutoSignConfig < TencentCloud::Common::AbstractModel
        # @param UserInfo: 自动签开通个人用户的三要素
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param CertInfoCallback: 是否回调证书信息
        # @type CertInfoCallback: Boolean
        # @param UserDefineSeal: 是否支持用户自定义签名印章
        # @type UserDefineSeal: Boolean
        # @param SealImgCallback: 是否需要回调的时候返回印章(签名) 图片的 base64
        # @type SealImgCallback: Boolean
        # @param CallbackUrl: 回调链接，如果渠道已经配置了，可以不传
        # @type CallbackUrl: String
        # @param VerifyChannels: 开通时候的验证方式，取值：WEIXINAPP（微信人脸识别），INSIGHT（慧眼人脸认别），TELECOM（运营商三要素验证）。如果是小程序开通链接，支持传 WEIXINAPP / TELECOM。如果是 H5 开通链接，支持传 INSIGHT / TELECOM。默认值 WEIXINAPP / INSIGHT。
        # @type VerifyChannels: Array
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。一旦绑定后，将扣减购买的个人自动签账号许可一次（1年有效期），不可解绑释放。不传默认为绑定自动签账号许可。 0-绑定个人自动签账号许可，开通后将扣减购买的个人自动签账号许可一次
        # @type LicenseType: Integer

        attr_accessor :UserInfo, :CertInfoCallback, :UserDefineSeal, :SealImgCallback, :CallbackUrl, :VerifyChannels, :LicenseType

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

      # 基础流程信息
      class BaseFlowInfo < TencentCloud::Common::AbstractModel
        # @param FlowName: 合同流程名称
        # @type FlowName: String
        # @param FlowType: 合同流程类型
        # <br/>客户自定义，用于合同分类展示
        # @type FlowType: String
        # @param FlowDescription: 合同流程描述信息
        # @type FlowDescription: String
        # @param Deadline: 合同流程截止时间，unix时间戳，单位秒
        # @type Deadline: Integer
        # @param Unordered: 是否顺序签署(true:无序签,false:顺序签)
        # <br/>默认false，有序签署合同
        # @type Unordered: Boolean
        # @param IntelligentStatus: 是否打开智能添加填写区(默认开启，打开:"OPEN" 关闭："CLOSE")
        # @type IntelligentStatus: String
        # @param FormFields: 填写控件内容
        # @type FormFields: Array
        # @param NeedSignReview: 本企业(发起方企业)是否需要签署审批
        # <br/>true：开启发起方签署审批
        # <br/>false：不开启发起方签署审批
        # <br/>开启后，使用ChannelCreateFlowSignReview接口提交审批结果，才能继续完成签署
        # @type NeedSignReview: Boolean
        # @param UserData: 用户流程自定义数据参数
        # @type UserData: String
        # @param CcInfos: 抄送人信息
        # @type CcInfos: Array
        # @param NeedCreateReview: 是否需要开启发起方发起前审核
        # <br/>true：开启发起方发起前审核
        # <br/>false：不开启发起方发起前审核
        # <br/>当指定NeedCreateReview=true，则提交审核后，需要使用接口：ChannelCreateFlowSignReview，来完成发起前审核，审核通过后，可以继续查看，签署合同
        # @type NeedCreateReview: Boolean
        # @param Components: 填写控件：文件发起使用
        # @type Components: Array

        attr_accessor :FlowName, :FlowType, :FlowDescription, :Deadline, :Unordered, :IntelligentStatus, :FormFields, :NeedSignReview, :UserData, :CcInfos, :NeedCreateReview, :Components

        def initialize(flowname=nil, flowtype=nil, flowdescription=nil, deadline=nil, unordered=nil, intelligentstatus=nil, formfields=nil, needsignreview=nil, userdata=nil, ccinfos=nil, needcreatereview=nil, components=nil)
          @FlowName = flowname
          @FlowType = flowtype
          @FlowDescription = flowdescription
          @Deadline = deadline
          @Unordered = unordered
          @IntelligentStatus = intelligentstatus
          @FormFields = formfields
          @NeedSignReview = needsignreview
          @UserData = userdata
          @CcInfos = ccinfos
          @NeedCreateReview = needcreatereview
          @Components = components
        end

        def deserialize(params)
          @FlowName = params['FlowName']
          @FlowType = params['FlowType']
          @FlowDescription = params['FlowDescription']
          @Deadline = params['Deadline']
          @Unordered = params['Unordered']
          @IntelligentStatus = params['IntelligentStatus']
          unless params['FormFields'].nil?
            @FormFields = []
            params['FormFields'].each do |i|
              formfield_tmp = FormField.new
              formfield_tmp.deserialize(i)
              @FormFields << formfield_tmp
            end
          end
          @NeedSignReview = params['NeedSignReview']
          @UserData = params['UserData']
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
          @NeedCreateReview = params['NeedCreateReview']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
        end
      end

      # 抄送信息
      class CcInfo < TencentCloud::Common::AbstractModel
        # @param Mobile: 被抄送人手机号，大陆11位手机号
        # @type Mobile: String
        # @param Name: 被抄送人姓名
        # @type Name: String
        # @param CcType: 被抄送人类型
        # 0--个人. 1--员工
        # @type CcType: Integer
        # @param CcPermission: 被抄送人权限
        # 0--可查看
        # 1--可查看也可下载
        # @type CcPermission: Integer

        attr_accessor :Mobile, :Name, :CcType, :CcPermission

        def initialize(mobile=nil, name=nil, cctype=nil, ccpermission=nil)
          @Mobile = mobile
          @Name = name
          @CcType = cctype
          @CcPermission = ccpermission
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          @Name = params['Name']
          @CcType = params['CcType']
          @CcPermission = params['CcPermission']
        end
      end

      # ChannelBatchCancelFlows请求参数结构体
      class ChannelBatchCancelFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 签署流程Id数组，最多100个，超过100不处理
        # @type FlowIds: Array
        # @param CancelMessage: 撤销理由,不超过200个字符
        # @type CancelMessage: String
        # @param CancelMessageFormat: 撤销理由自定义格式；选项：

        # - 0 默认格式
        # - 1 只保留身份信息：展示为【发起方】
        # - 2 保留身份信息+企业名称：展示为【发起方xxx公司】
        # - 3 保留身份信息+企业名称+经办人名称：展示为【发起方xxxx公司-经办人姓名】
        # @type CancelMessageFormat: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :CancelMessage, :CancelMessageFormat, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowids=nil, cancelmessage=nil, cancelmessageformat=nil, operator=nil)
          @Agent = agent
          @FlowIds = flowids
          @CancelMessage = cancelmessage
          @CancelMessageFormat = cancelmessageformat
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          @CancelMessage = params['CancelMessage']
          @CancelMessageFormat = params['CancelMessageFormat']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelBatchCancelFlows返回参数结构体
      class ChannelBatchCancelFlowsResponse < TencentCloud::Common::AbstractModel
        # @param FailMessages: 签署流程批量撤销失败原因，错误信息与流程Id一一对应，成功为“”,失败则对应失败消息
        # @type FailMessages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailMessages, :RequestId

        def initialize(failmessages=nil, requestid=nil)
          @FailMessages = failmessages
          @RequestId = requestid
        end

        def deserialize(params)
          @FailMessages = params['FailMessages']
          @RequestId = params['RequestId']
        end
      end

      # ChannelCancelFlow请求参数结构体
      class ChannelCancelFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param CancelMessage: 撤回原因，最大不超过200字符
        # @type CancelMessage: String
        # @param CancelMessageFormat: 撤销理由自定义格式；选项：
        # 0 默认格式
        # 1 只保留身份信息：展示为【发起方】
        # 2 保留身份信息+企业名称：展示为【发起方xxx公司】
        # 3 保留身份信息+企业名称+经办人名称：展示为【发起方xxxx公司-经办人姓名】
        # @type CancelMessageFormat: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowId, :Agent, :CancelMessage, :CancelMessageFormat, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(flowid=nil, agent=nil, cancelmessage=nil, cancelmessageformat=nil, operator=nil)
          @FlowId = flowid
          @Agent = agent
          @CancelMessage = cancelmessage
          @CancelMessageFormat = cancelmessageformat
          @Operator = operator
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @CancelMessage = params['CancelMessage']
          @CancelMessageFormat = params['CancelMessageFormat']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCancelFlow返回参数结构体
      class ChannelCancelFlowResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCancelMultiFlowSignQRCode请求参数结构体
      class ChannelCancelMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param QrCodeId: 二维码id
        # @type QrCodeId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :QrCodeId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, qrcodeid=nil, operator=nil)
          @Agent = agent
          @QrCodeId = qrcodeid
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @QrCodeId = params['QrCodeId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCancelMultiFlowSignQRCode返回参数结构体
      class ChannelCancelMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCancelUserAutoSignEnableUrl请求参数结构体
      class ChannelCancelUserAutoSignEnableUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param SceneKey: 自动签场景: E_PRESCRIPTION_AUTO_SIGN 电子处方
        # @type SceneKey: String
        # @param UserInfo: 指定撤销链接的用户信息，包含姓名、证件类型、证件号码。
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`

        attr_accessor :Agent, :Operator, :SceneKey, :UserInfo

        def initialize(agent=nil, operator=nil, scenekey=nil, userinfo=nil)
          @Agent = agent
          @Operator = operator
          @SceneKey = scenekey
          @UserInfo = userinfo
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
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
        end
      end

      # ChannelCancelUserAutoSignEnableUrl返回参数结构体
      class ChannelCancelUserAutoSignEnableUrlResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateBatchCancelFlowUrl请求参数结构体
      class ChannelCreateBatchCancelFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 签署流程Id数组
        # @type FlowIds: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowids=nil, operator=nil)
          @Agent = agent
          @FlowIds = flowids
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreateBatchCancelFlowUrl返回参数结构体
      class ChannelCreateBatchCancelFlowUrlResponse < TencentCloud::Common::AbstractModel
        # @param BatchCancelFlowUrl: 批量撤销url
        # @type BatchCancelFlowUrl: String
        # @param FailMessages: 签署流程批量撤销失败原因
        # @type FailMessages: Array
        # @param UrlExpireOn: 签署撤销url过期时间-年月日-时分秒
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

      # ChannelCreateBatchSignUrl请求参数结构体
      class ChannelCreateBatchSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括子客企业及应用编、号等详细内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Name: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。

        # 注：`请确保和合同中填入的一致`
        # @type Name: String
        # @param Mobile: 手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 请确认手机号所有方为此业务通知方。

        # 注：`请确保和合同中填入的一致,  若无法保持一致，请确保在发起和生成批量签署链接时传入相同的参与方证件信息`
        # @type Mobile: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>**ID_CARD** : 居民身份证 (默认值)</li>
        # <li>**HONGKONG_AND_MACAO** : 港澳居民来往内地通行证</li>
        # <li>**HONGKONG_MACAO_AND_TAIWAN** : 港澳台居民居住证(格式同居民身份证)</li></ul>

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

        attr_accessor :Agent, :Name, :Mobile, :Operator, :IdCardType, :IdCardNumber, :NotifyType, :FlowIds, :OrganizationName, :JumpToDetail

        def initialize(agent=nil, name=nil, mobile=nil, operator=nil, idcardtype=nil, idcardnumber=nil, notifytype=nil, flowids=nil, organizationname=nil, jumptodetail=nil)
          @Agent = agent
          @Name = name
          @Mobile = mobile
          @Operator = operator
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @NotifyType = notifytype
          @FlowIds = flowids
          @OrganizationName = organizationname
          @JumpToDetail = jumptodetail
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Name = params['Name']
          @Mobile = params['Mobile']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @NotifyType = params['NotifyType']
          @FlowIds = params['FlowIds']
          @OrganizationName = params['OrganizationName']
          @JumpToDetail = params['JumpToDetail']
        end
      end

      # ChannelCreateBatchSignUrl返回参数结构体
      class ChannelCreateBatchSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 批量签署链接，以短链形式返回，短链的有效期参考回参中的 ExpiredTime。

        # 注: `非小程序和APP集成使用`
        # @type SignUrl: String
        # @param ExpiredTime: 链接过期时间以 Unix 时间戳格式表示，从生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
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

      # ChannelCreateBoundFlows请求参数结构体
      class ChannelCreateBoundFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用信息
        # 此接口Agent.AppId、Agent.ProxyOrganizationOpenId 和 Agent. ProxyOperator.OpenId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 领取的合同id列表
        # @type FlowIds: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowids=nil, operator=nil)
          @Agent = agent
          @FlowIds = flowids
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreateBoundFlows返回参数结构体
      class ChannelCreateBoundFlowsResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateConvertTaskApi请求参数结构体
      class ChannelCreateConvertTaskApiRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ResourceType: 资源类型 支持doc,docx,html,xls,xlsx,jpg,jpeg,png,bmp文件类型
        # @type ResourceType: String
        # @param ResourceName: 资源名称，长度限制为256字符
        # @type ResourceName: String
        # @param ResourceId: 文件Id，通过UploadFiles获取
        # @type ResourceId: String
        # @param Operator: 调用方用户信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :ResourceType, :ResourceName, :ResourceId, :Operator, :Organization
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10

        def initialize(agent=nil, resourcetype=nil, resourcename=nil, resourceid=nil, operator=nil, organization=nil)
          @Agent = agent
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @ResourceId = resourceid
          @Operator = operator
          @Organization = organization
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @ResourceId = params['ResourceId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
        end
      end

      # ChannelCreateConvertTaskApi返回参数结构体
      class ChannelCreateConvertTaskApiResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
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

      # ChannelCreateEmbedWebUrl请求参数结构体
      class ChannelCreateEmbedWebUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param EmbedType: 要生成WEB嵌入界面的类型, 可以选择的值如下:

        # - CREATE_SEAL: 生成创建印章的嵌入页面
        # - CREATE_TEMPLATE：生成创建模板的嵌入页面
        # - MODIFY_TEMPLATE：生成修改模板的嵌入页面
        # - PREVIEW_TEMPLATE：生成预览模板的嵌入页面
        # - PREVIEW_FLOW：生成预览合同文档的嵌入页面
        # - PREVIEW_FLOW_DETAIL：生成预览合同详情的嵌入页面
        # - PREVIEW_SEAL_LIST：生成预览印章列表的嵌入页面
        # - PREVIEW_SEAL_DETAIL：生成预览印章详情的嵌入页面
        # - EXTEND_SERVICE：生成扩展服务的嵌入页面
        # @type EmbedType: String
        # @param BusinessId: WEB嵌入的业务资源ID

        # - 当EmbedType取值MODIFY_TEMPLATE，PREVIEW_TEMPLATE时需要填写模板id作为BusinessId
        # - 当EmbedType取值PREVIEW_FLOW，PREVIEW_FLOW_DETAIL时需要填写合同id作为BusinessId
        # - 当EmbedType取值PREVIEW_SEAL_DETAIL需要填写印章id作为BusinessId
        # @type BusinessId: String
        # @param HiddenComponents: 是否隐藏控件，只有预览模板时生效
        # @type HiddenComponents: Boolean
        # @param Operator: 渠道操作者信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :EmbedType, :BusinessId, :HiddenComponents, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, embedtype=nil, businessid=nil, hiddencomponents=nil, operator=nil)
          @Agent = agent
          @EmbedType = embedtype
          @BusinessId = businessid
          @HiddenComponents = hiddencomponents
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @EmbedType = params['EmbedType']
          @BusinessId = params['BusinessId']
          @HiddenComponents = params['HiddenComponents']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreateEmbedWebUrl返回参数结构体
      class ChannelCreateEmbedWebUrlResponse < TencentCloud::Common::AbstractModel
        # @param WebUrl: 嵌入的web链接
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

      # ChannelCreateFlowApprovers请求参数结构体
      class ChannelCreateFlowApproversRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 合同唯一编号
        # @type FlowId: String
        # @param Approvers: 补充企业签署人信息。

        # - 如果发起方指定的补充签署人是企业签署人，则需要提供企业名称或者企业OpenId；

        # - 如果不指定，则使用姓名和手机号进行补充。
        # @type Approvers: Array
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param FillApproverType: 签署人信息补充方式

        # <ul><li>**0**: 补充或签人，支持补充多个企业经办签署人（默认）注: `不可补充个人签署人`</li>
        # <li>**1**: 补充动态签署人，可补充企业和个人签署人。注: `每个签署方节点签署人是唯一的，一个节点只支持传入一个签署人信息`</li></ul>
        # @type FillApproverType: Integer

        attr_accessor :Agent, :FlowId, :Approvers, :Operator, :FillApproverType

        def initialize(agent=nil, flowid=nil, approvers=nil, operator=nil, fillapprovertype=nil)
          @Agent = agent
          @FlowId = flowid
          @Approvers = approvers
          @Operator = operator
          @FillApproverType = fillapprovertype
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
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
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FillApproverType = params['FillApproverType']
        end
      end

      # ChannelCreateFlowApprovers返回参数结构体
      class ChannelCreateFlowApproversResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateFlowByFiles请求参数结构体
      class ChannelCreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业标识: Agent. ProxyOperator.OpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.AppId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param FlowDescription: 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        # @type FlowDescription: String
        # @param FlowApprovers: 合同流程的参与方列表, 最多可支持50个参与方，可在列表中指定企业B端签署方和个人C端签署方的联系和认证方式等信息，具体定义可以参考开发者中心的<a href="https://qian.tencent.com/developers/partnerApis/dataTypes/#flowapproverinfo" target="_blank">FlowApproverInfo结构体</a>。

        # 如果合同流程是有序签署，Approvers列表中参与人的顺序就是默认的签署顺序, 请确保列表中参与人的顺序符合实际签署顺序。
        # @type FlowApprovers: Array
        # @param FileIds: 本合同流程需包含的PDF文件资源编号列表，通过<a href="https://qian.tencent.com/developers/partnerApis/files/UploadFiles" target="_blank">UploadFiles</a>接口获取PDF文件资源编号。

        # 注: `目前，此接口仅支持单个文件发起。`
        # @type FileIds: Array
        # @param Components: 模板或者合同中的填写控件列表，列表中可支持下列多种填写控件，控件的详细定义参考开发者中心的Component结构体
        # <ul><li>单行文本控件</li>
        # <li>多行文本控件</li>
        # <li>勾选框控件</li>
        # <li>数字控件</li>
        # <li>图片控件</li>
        # <li>数据表格等填写控件</li></ul>
        # @type Components: Array
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type Deadline: Integer
        # @param CallbackUrl: 执行结果的回调URL，长度不超过255个字符，该URL仅支持HTTP或HTTPS协议，建议采用HTTPS协议以保证数据传输的安全性。
        # 腾讯电子签服务器将通过POST方式，application/json格式通知执行结果，请确保外网可以正常访问该URL。
        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/partner/callback_data_types" target="_blank">回调通知</a>模块。

        # 注:
        # `如果不传递回调地址， 则默认是配置应用号时候使用的回调地址`
        # @type CallbackUrl: String
        # @param Unordered: 合同流程的签署顺序类型：
        # <ul><li> **false**：(默认)有序签署, 本合同多个参与人需要依次签署 </li>
        # <li> **true**：无序签署, 本合同多个参与人没有先后签署限制</li></ul>

        # 注
        # `有序签署时以传入FlowApprovers数组的顺序作为签署顺序`
        # @type Unordered: Boolean
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为255个字符，仅限中文、字母、数字和下划线组成。
        # @type FlowType: String
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
        # @param CustomerData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为 1000长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/partner/callback_types_contracts_sign" target="_blank">回调通知</a>模块。
        # @type CustomerData: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过ChannelCreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param ApproverVerifyType: 签署人校验方式
        # VerifyCheck: 人脸识别（默认）
        # MobileCheck：手机号验证，用户手机号和参与方手机号（ApproverMobile）相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        # 参数说明：可选人脸识别或手机号验证两种方式，若选择后者，未实名个人签署方在签署合同时，无需经过实名认证和意愿确认两次人脸识别，该能力仅适用于个人签署方。
        # @type ApproverVerifyType: String
        # @param SignBeanTag: 签署方签署控件（印章/签名等）的生成方式：
        # <ul><li> **0**：在合同流程发起时，由发起人指定签署方的签署控件的位置和数量。</li>
        # <li> **1**：签署方在签署时自行添加签署控件，可以拖动位置和控制数量。</li></ul>

        # 注:
        # `发起后添加控件功能不支持添加签批控件`
        # @type SignBeanTag: Integer
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param CcNotifyType: 可以设置以下时间节点来给抄送人发送短信通知来查看合同内容：
        # <ul><li> **0**：合同发起时通知（默认值）</li>
        # <li> **1**：签署完成后通知</li></ul>
        # @type CcNotifyType: Integer
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：处方单（医疗自动签）  </li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowName, :FlowDescription, :FlowApprovers, :FileIds, :Components, :Deadline, :CallbackUrl, :Unordered, :FlowType, :CustomShowMap, :CustomerData, :NeedSignReview, :ApproverVerifyType, :SignBeanTag, :CcInfos, :CcNotifyType, :AutoSignScene, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowname=nil, flowdescription=nil, flowapprovers=nil, fileids=nil, components=nil, deadline=nil, callbackurl=nil, unordered=nil, flowtype=nil, customshowmap=nil, customerdata=nil, needsignreview=nil, approververifytype=nil, signbeantag=nil, ccinfos=nil, ccnotifytype=nil, autosignscene=nil, operator=nil)
          @Agent = agent
          @FlowName = flowname
          @FlowDescription = flowdescription
          @FlowApprovers = flowapprovers
          @FileIds = fileids
          @Components = components
          @Deadline = deadline
          @CallbackUrl = callbackurl
          @Unordered = unordered
          @FlowType = flowtype
          @CustomShowMap = customshowmap
          @CustomerData = customerdata
          @NeedSignReview = needsignreview
          @ApproverVerifyType = approververifytype
          @SignBeanTag = signbeantag
          @CcInfos = ccinfos
          @CcNotifyType = ccnotifytype
          @AutoSignScene = autosignscene
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowName = params['FlowName']
          @FlowDescription = params['FlowDescription']
          unless params['FlowApprovers'].nil?
            @FlowApprovers = []
            params['FlowApprovers'].each do |i|
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @FlowApprovers << flowapproverinfo_tmp
            end
          end
          @FileIds = params['FileIds']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @Deadline = params['Deadline']
          @CallbackUrl = params['CallbackUrl']
          @Unordered = params['Unordered']
          @FlowType = params['FlowType']
          @CustomShowMap = params['CustomShowMap']
          @CustomerData = params['CustomerData']
          @NeedSignReview = params['NeedSignReview']
          @ApproverVerifyType = params['ApproverVerifyType']
          @SignBeanTag = params['SignBeanTag']
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
          @CcNotifyType = params['CcNotifyType']
          @AutoSignScene = params['AutoSignScene']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreateFlowByFiles返回参数结构体
      class ChannelCreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同签署流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param Approvers: 签署方信息，如角色ID、角色名称等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              approveritem_tmp = ApproverItem.new
              approveritem_tmp.deserialize(i)
              @Approvers << approveritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ChannelCreateFlowGroupByFiles请求参数结构体
      class ChannelCreateFlowGroupByFilesRequest < TencentCloud::Common::AbstractModel
        # @param FlowFileInfos: 每个子合同的发起所需的信息，数量限制2-50
        # @type FlowFileInfos: Array
        # @param FlowGroupName: 合同组名称，长度不超过200个字符
        # @type FlowGroupName: String
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ApproverVerifyType: 签署人校验方式
        # VerifyCheck: 人脸识别（默认）
        # MobileCheck：手机号验证
        # 参数说明：若选择后者，未实名的个人签署方查看合同时，无需进行人脸识别实名认证（但签署合同时仍然需要人脸实名），该能力仅适用于个人签署方。
        # @type ApproverVerifyType: String
        # @param FlowGroupOptions: 合同组的配置项信息包括：在合同组签署过程中，是否需要对每个子合同进行独立的意愿确认。
        # @type FlowGroupOptions: :class:`Tencentcloud::Essbasic.v20210526.models.FlowGroupOptions`
        # @param Operator: 操作者的信息，此参数不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowFileInfos, :FlowGroupName, :Agent, :ApproverVerifyType, :FlowGroupOptions, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(flowfileinfos=nil, flowgroupname=nil, agent=nil, approververifytype=nil, flowgroupoptions=nil, operator=nil)
          @FlowFileInfos = flowfileinfos
          @FlowGroupName = flowgroupname
          @Agent = agent
          @ApproverVerifyType = approververifytype
          @FlowGroupOptions = flowgroupoptions
          @Operator = operator
        end

        def deserialize(params)
          unless params['FlowFileInfos'].nil?
            @FlowFileInfos = []
            params['FlowFileInfos'].each do |i|
              flowfileinfo_tmp = FlowFileInfo.new
              flowfileinfo_tmp.deserialize(i)
              @FlowFileInfos << flowfileinfo_tmp
            end
          end
          @FlowGroupName = params['FlowGroupName']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ApproverVerifyType = params['ApproverVerifyType']
          unless params['FlowGroupOptions'].nil?
            @FlowGroupOptions = FlowGroupOptions.new
            @FlowGroupOptions.deserialize(params['FlowGroupOptions'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreateFlowGroupByFiles返回参数结构体
      class ChannelCreateFlowGroupByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowGroupId: 合同组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param FlowIds: 子合同ID列表
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

      # ChannelCreateFlowGroupByTemplates请求参数结构体
      class ChannelCreateFlowGroupByTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 每个子合同的发起所需的信息，数量限制2-50（合同组暂不支持抄送功能）
        # @type FlowInfos: Array
        # @param FlowGroupName: 合同组名称，长度不超过200个字符
        # @type FlowGroupName: String

        attr_accessor :Agent, :FlowInfos, :FlowGroupName

        def initialize(agent=nil, flowinfos=nil, flowgroupname=nil)
          @Agent = agent
          @FlowInfos = flowinfos
          @FlowGroupName = flowgroupname
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['FlowInfos'].nil?
            @FlowInfos = []
            params['FlowInfos'].each do |i|
              flowinfo_tmp = FlowInfo.new
              flowinfo_tmp.deserialize(i)
              @FlowInfos << flowinfo_tmp
            end
          end
          @FlowGroupName = params['FlowGroupName']
        end
      end

      # ChannelCreateFlowGroupByTemplates返回参数结构体
      class ChannelCreateFlowGroupByTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param FlowGroupId: 合同组ID
        # @type FlowGroupId: String
        # @param FlowIds: 子合同ID列表
        # @type FlowIds: Array
        # @param TaskInfos: 复杂文档合成任务（如，包含动态表格的预览任务）的任务信息数组；
        # 如果文档需要异步合成，此字段会返回该异步任务的任务信息，后续可以通过ChannelGetTaskResultApi接口查询任务详情；
        # @type TaskInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowGroupId, :FlowIds, :TaskInfos, :RequestId

        def initialize(flowgroupid=nil, flowids=nil, taskinfos=nil, requestid=nil)
          @FlowGroupId = flowgroupid
          @FlowIds = flowids
          @TaskInfos = taskinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowGroupId = params['FlowGroupId']
          @FlowIds = params['FlowIds']
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @TaskInfos << taskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ChannelCreateFlowReminds请求参数结构体
      class ChannelCreateFlowRemindsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 签署流程Id数组，最多100个，超过100不处理
        # @type FlowIds: Array

        attr_accessor :Agent, :FlowIds

        def initialize(agent=nil, flowids=nil)
          @Agent = agent
          @FlowIds = flowids
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
        end
      end

      # ChannelCreateFlowReminds返回参数结构体
      class ChannelCreateFlowRemindsResponse < TencentCloud::Common::AbstractModel
        # @param RemindFlowRecords: 合同催办详情信息
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

      # ChannelCreateFlowSignReview请求参数结构体
      class ChannelCreateFlowSignReviewRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param ReviewType: 企业内部审核结果
        # PASS: 通过
        # REJECT: 拒绝
        # SIGN_REJECT:拒签(流程结束)
        # @type ReviewType: String
        # @param ReviewMessage: 审核原因
        # 当ReviewType 是REJECT 时此字段必填,字符串长度不超过200
        # @type ReviewMessage: String
        # @param RecipientId: 签署节点审核时需要指定，给个人审核时必填。
        # @type RecipientId: String
        # @param OperateType: 操作类型，默认：SignReview；SignReview:签署审核，CreateReview：发起审核
        # 注：接口通过该字段区分操作类型
        # 该字段不传或者为空，则默认为SignReview签署审核，走签署审核流程
        # 若想使用发起审核，请指定该字段为：CreateReview
        # 若发起个人审核，则指定该字段为：SignReview
        # @type OperateType: String

        attr_accessor :Agent, :FlowId, :ReviewType, :ReviewMessage, :RecipientId, :OperateType

        def initialize(agent=nil, flowid=nil, reviewtype=nil, reviewmessage=nil, recipientid=nil, operatetype=nil)
          @Agent = agent
          @FlowId = flowid
          @ReviewType = reviewtype
          @ReviewMessage = reviewmessage
          @RecipientId = recipientid
          @OperateType = operatetype
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowId = params['FlowId']
          @ReviewType = params['ReviewType']
          @ReviewMessage = params['ReviewMessage']
          @RecipientId = params['RecipientId']
          @OperateType = params['OperateType']
        end
      end

      # ChannelCreateFlowSignReview返回参数结构体
      class ChannelCreateFlowSignReviewResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateFlowSignUrl请求参数结构体
      class ChannelCreateFlowSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param FlowApproverInfos: 流程签署人，其中Name和Mobile必传，其他可不传，ApproverType目前只支持PERSON类型的签署人，如果不传默认为该值。还需注意签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。
        # @type FlowApproverInfos: Array
        # @param Operator: 用户信息，暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 机构信息，暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，此链接支持http://和https://，最大长度1000个字符。
        # @type JumpUrl: String

        attr_accessor :Agent, :FlowId, :FlowApproverInfos, :Operator, :Organization, :JumpUrl
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10

        def initialize(agent=nil, flowid=nil, flowapproverinfos=nil, operator=nil, organization=nil, jumpurl=nil)
          @Agent = agent
          @FlowId = flowid
          @FlowApproverInfos = flowapproverinfos
          @Operator = operator
          @Organization = organization
          @JumpUrl = jumpurl
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowId = params['FlowId']
          unless params['FlowApproverInfos'].nil?
            @FlowApproverInfos = []
            params['FlowApproverInfos'].each do |i|
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @FlowApproverInfos << flowapproverinfo_tmp
            end
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          @JumpUrl = params['JumpUrl']
        end
      end

      # ChannelCreateFlowSignUrl返回参数结构体
      class ChannelCreateFlowSignUrlResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateMultiFlowSignQRCode请求参数结构体
      class ChannelCreateMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 模版ID
        # @type TemplateId: String
        # @param FlowName: 签署流程名称，最大长度200个字符。
        # @type FlowName: String
        # @param MaxFlowNum: 最大可发起签署流程份数
        # <br/>默认5份
        # <br/>备注：发起签署流程数量超过此上限后，二维码自动失效。
        # @type MaxFlowNum: Integer
        # @param FlowEffectiveDay: 签署流程有效天数 默认7天 最高设置不超过30天
        # @type FlowEffectiveDay: Integer
        # @param QrEffectiveDay: 二维码有效天数 默认7天 最高设置不超过90天
        # @type QrEffectiveDay: Integer
        # @param Restrictions: 指定的签署二维码签署人
        # <br/>指定后，只允许知道的人操作和签署
        # @type Restrictions: Array
        # @param CallbackUrl: 已废弃，回调配置统一使用企业应用管理-应用集成-第三方应用中的配置
        # <br/> 通过一码多扫二维码发起的合同，回调消息可参考文档 https://qian.tencent.com/developers/partner/callback_types_contracts_sign
        # <br/> 用户通过签署二维码发起合同时，因企业额度不足导致失败 会触发签署二维码相关回调,具体参考文档 https://qian.tencent.com/developers/partner/callback_types_commons#%E7%AD%BE%E7%BD%B2%E4%BA%8C%E7%BB%B4%E7%A0%81%E7%9B%B8%E5%85%B3%E5%9B%9E%E8%B0%83
        # @type CallbackUrl: String
        # @param ApproverRestrictions: 限制二维码用户条件（已弃用）
        # @type ApproverRestrictions: :class:`Tencentcloud::Essbasic.v20210526.models.ApproverRestriction`
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ApproverComponentLimitTypes: 指定签署方经办人控件类型是个人印章签署控件（SIGN_SIGNATURE） 时，可选的签名方式。
        # @type ApproverComponentLimitTypes: Array

        attr_accessor :Agent, :TemplateId, :FlowName, :MaxFlowNum, :FlowEffectiveDay, :QrEffectiveDay, :Restrictions, :CallbackUrl, :ApproverRestrictions, :Operator, :ApproverComponentLimitTypes
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 10
        deprecate :CallbackUrl=, :none, 2023, 10
        deprecate :ApproverRestrictions, :none, 2023, 10
        deprecate :ApproverRestrictions=, :none, 2023, 10
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, templateid=nil, flowname=nil, maxflownum=nil, floweffectiveday=nil, qreffectiveday=nil, restrictions=nil, callbackurl=nil, approverrestrictions=nil, operator=nil, approvercomponentlimittypes=nil)
          @Agent = agent
          @TemplateId = templateid
          @FlowName = flowname
          @MaxFlowNum = maxflownum
          @FlowEffectiveDay = floweffectiveday
          @QrEffectiveDay = qreffectiveday
          @Restrictions = restrictions
          @CallbackUrl = callbackurl
          @ApproverRestrictions = approverrestrictions
          @Operator = operator
          @ApproverComponentLimitTypes = approvercomponentlimittypes
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TemplateId = params['TemplateId']
          @FlowName = params['FlowName']
          @MaxFlowNum = params['MaxFlowNum']
          @FlowEffectiveDay = params['FlowEffectiveDay']
          @QrEffectiveDay = params['QrEffectiveDay']
          unless params['Restrictions'].nil?
            @Restrictions = []
            params['Restrictions'].each do |i|
              approverrestriction_tmp = ApproverRestriction.new
              approverrestriction_tmp.deserialize(i)
              @Restrictions << approverrestriction_tmp
            end
          end
          @CallbackUrl = params['CallbackUrl']
          unless params['ApproverRestrictions'].nil?
            @ApproverRestrictions = ApproverRestriction.new
            @ApproverRestrictions.deserialize(params['ApproverRestrictions'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
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

      # ChannelCreateMultiFlowSignQRCode返回参数结构体
      class ChannelCreateMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 签署二维码对象
        # @type QrCode: :class:`Tencentcloud::Essbasic.v20210526.models.SignQrCode`
        # @param SignUrls: 签署链接对象
        # @type SignUrls: :class:`Tencentcloud::Essbasic.v20210526.models.SignUrl`
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

      # ChannelCreateOrganizationBatchSignUrl请求参数结构体
      class ChannelCreateOrganizationBatchSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括子客企业及应用编、号等详细内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 请指定需执行批量签署的流程ID，数量范围为1-100。 您可登录腾讯电子签控制台，浏览 "合同"->"合同中心" 以查阅某一合同的FlowId（在页面中显示为合同ID）。 用户将利用链接对这些合同实施批量操作。
        # @type FlowIds: Array
        # @param OpenId: 第三方应用平台的用户openid。 您可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查阅某位员工的OpenId。 OpenId必须是传入合同（FlowId）中的签署人。 - 1. 若OpenId为空，Name和Mobile 必须提供。 - 2. 若OpenId 与 Name，Mobile均存在，将优先采用OpenId对应的员工。
        # @type OpenId: String
        # @param Name: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。

        # 注：`请确保和合同中填入的一致`
        # @type Name: String
        # @param Mobile: 员工手机号，必须与姓名一起使用。 如果OpenId为空，则此字段不能为空。同时，姓名和手机号码必须与传入合同（FlowId）中的签署人信息一致。
        # @type Mobile: String

        attr_accessor :Agent, :FlowIds, :OpenId, :Name, :Mobile

        def initialize(agent=nil, flowids=nil, openid=nil, name=nil, mobile=nil)
          @Agent = agent
          @FlowIds = flowids
          @OpenId = openid
          @Name = name
          @Mobile = mobile
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          @OpenId = params['OpenId']
          @Name = params['Name']
          @Mobile = params['Mobile']
        end
      end

      # ChannelCreateOrganizationBatchSignUrl返回参数结构体
      class ChannelCreateOrganizationBatchSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 批量签署入口链接，用户可使用这个链接跳转到控制台页面对合同进行签署操作。
        # @type SignUrl: String
        # @param ExpiredTime: 链接过期时间以 Unix 时间戳格式表示，从生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
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

      # ChannelCreateOrganizationModifyQrCode请求参数结构体
      class ChannelCreateOrganizationModifyQrCodeRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`

        attr_accessor :Agent

        def initialize(agent=nil)
          @Agent = agent
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # ChannelCreateOrganizationModifyQrCode返回参数结构体
      class ChannelCreateOrganizationModifyQrCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCodeUrl: 二维码下载链接
        # @type QrCodeUrl: String
        # @param ExpiredTime: 二维码失效时间 UNIX 时间戳 精确到秒
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QrCodeUrl, :ExpiredTime, :RequestId

        def initialize(qrcodeurl=nil, expiredtime=nil, requestid=nil)
          @QrCodeUrl = qrcodeurl
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @QrCodeUrl = params['QrCodeUrl']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # ChannelCreatePrepareFlow请求参数结构体
      class ChannelCreatePrepareFlowRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id，与ResourceType对应
        # @type ResourceId: String
        # @param ResourceType: 资源类型，与ResourceId对应1：模板   2: 文件
        # @type ResourceType: Integer
        # @param FlowInfo: 合同流程基础信息
        # @type FlowInfo: :class:`Tencentcloud::Essbasic.v20210526.models.BaseFlowInfo`
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowOption: 合同流程配置信息，用于配置发起合同时定制化
        # @type FlowOption: :class:`Tencentcloud::Essbasic.v20210526.models.CreateFlowOption`
        # @param FlowApproverList: 合同签署人信息
        # @type FlowApproverList: Array
        # @param FlowId: 通过flowid快速获得之前成功通过页面发起的合同生成链接
        # @type FlowId: String
        # @param NeedPreview: 该参数不可用，请通过获取 web 可嵌入接口获取合同流程预览 URL
        # @type NeedPreview: Boolean
        # @param Organization: 企业机构信息，不用传
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param Operator: 操作人（用户）信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :ResourceId, :ResourceType, :FlowInfo, :Agent, :FlowOption, :FlowApproverList, :FlowId, :NeedPreview, :Organization, :Operator
        extend Gem::Deprecate
        deprecate :NeedPreview, :none, 2023, 10
        deprecate :NeedPreview=, :none, 2023, 10
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(resourceid=nil, resourcetype=nil, flowinfo=nil, agent=nil, flowoption=nil, flowapproverlist=nil, flowid=nil, needpreview=nil, organization=nil, operator=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @FlowInfo = flowinfo
          @Agent = agent
          @FlowOption = flowoption
          @FlowApproverList = flowapproverlist
          @FlowId = flowid
          @NeedPreview = needpreview
          @Organization = organization
          @Operator = operator
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          unless params['FlowInfo'].nil?
            @FlowInfo = BaseFlowInfo.new
            @FlowInfo.deserialize(params['FlowInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['FlowOption'].nil?
            @FlowOption = CreateFlowOption.new
            @FlowOption.deserialize(params['FlowOption'])
          end
          unless params['FlowApproverList'].nil?
            @FlowApproverList = []
            params['FlowApproverList'].each do |i|
              commonflowapprover_tmp = CommonFlowApprover.new
              commonflowapprover_tmp.deserialize(i)
              @FlowApproverList << commonflowapprover_tmp
            end
          end
          @FlowId = params['FlowId']
          @NeedPreview = params['NeedPreview']
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreatePrepareFlow返回参数结构体
      class ChannelCreatePrepareFlowResponse < TencentCloud::Common::AbstractModel
        # @param PrepareFlowUrl: 预发起的合同链接， 可以直接点击进入进行合同发起
        # @type PrepareFlowUrl: String
        # @param PreviewFlowUrl: 合同发起后预览链接， 注意此时合同并未发起，仅只是展示效果
        # @type PreviewFlowUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrepareFlowUrl, :PreviewFlowUrl, :RequestId

        def initialize(prepareflowurl=nil, previewflowurl=nil, requestid=nil)
          @PrepareFlowUrl = prepareflowurl
          @PreviewFlowUrl = previewflowurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PrepareFlowUrl = params['PrepareFlowUrl']
          @PreviewFlowUrl = params['PreviewFlowUrl']
          @RequestId = params['RequestId']
        end
      end

      # ChannelCreatePreparedPersonalEsign请求参数结构体
      class ChannelCreatePreparedPersonalEsignRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param UserName: 个人用户姓名
        # @type UserName: String
        # @param IdCardNumber: 身份证件号码
        # @type IdCardNumber: String
        # @param SealName: 印章名称
        # @type SealName: String
        # @param SealImage: 印章图片的base64，最大不超过 8M
        # @type SealImage: String
        # @param Operator: 操作者信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param IdCardType: 身份证件类型
        # @type IdCardType: String
        # @param SealImageCompress: 是否开启印章图片压缩处理，默认不开启，如需开启请设置为 true。当印章超过 2M 时建议开启，开启后图片的 hash 将发生变化。
        # @type SealImageCompress: Boolean
        # @param Mobile: 手机号码；当需要开通自动签时，该参数必传
        # @type Mobile: String
        # @param EnableAutoSign: 是否开通自动签，该功能需联系运营工作人员开通后使用
        # @type EnableAutoSign: Boolean
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。一旦绑定后，将扣减购买的个人自动签账号许可一次（1年有效期），不可解绑释放。不传默认为绑定自动签账号许可。 0-绑定个人自动签账号许可，开通后将扣减购买的个人自动签账号许可一次 1-不绑定，发起合同时将按标准合同套餐进行扣减
        # @type LicenseType: Integer

        attr_accessor :Agent, :UserName, :IdCardNumber, :SealName, :SealImage, :Operator, :IdCardType, :SealImageCompress, :Mobile, :EnableAutoSign, :LicenseType

        def initialize(agent=nil, username=nil, idcardnumber=nil, sealname=nil, sealimage=nil, operator=nil, idcardtype=nil, sealimagecompress=nil, mobile=nil, enableautosign=nil, licensetype=nil)
          @Agent = agent
          @UserName = username
          @IdCardNumber = idcardnumber
          @SealName = sealname
          @SealImage = sealimage
          @Operator = operator
          @IdCardType = idcardtype
          @SealImageCompress = sealimagecompress
          @Mobile = mobile
          @EnableAutoSign = enableautosign
          @LicenseType = licensetype
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @UserName = params['UserName']
          @IdCardNumber = params['IdCardNumber']
          @SealName = params['SealName']
          @SealImage = params['SealImage']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @IdCardType = params['IdCardType']
          @SealImageCompress = params['SealImageCompress']
          @Mobile = params['Mobile']
          @EnableAutoSign = params['EnableAutoSign']
          @LicenseType = params['LicenseType']
        end
      end

      # ChannelCreatePreparedPersonalEsign返回参数结构体
      class ChannelCreatePreparedPersonalEsignResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 导入的印章 ID
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

      # ChannelCreateReleaseFlow请求参数结构体
      class ChannelCreateReleaseFlowRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param NeedRelievedFlowId: 待解除的流程编号（即原流程的编号）
        # @type NeedRelievedFlowId: String
        # @param ReliveInfo: 解除协议内容
        # @type ReliveInfo: :class:`Tencentcloud::Essbasic.v20210526.models.RelieveInfo`
        # @param ReleasedApprovers: 非必须，解除协议的本企业签署人列表，默认使用原流程的签署人列表；当解除协议的签署人与原流程的签署人不能相同时（例如原流程签署人离职了），需要指定本企业的其他签署人来替换原流程中的原签署人，注意需要指明ApproverNumber来代表需要替换哪一个签署人，已转发的签署人不包含在内，解除协议的签署人数量不能多于原流程的签署人数量
        # @type ReleasedApprovers: Array
        # @param CallbackUrl: 签署完回调url，最大长度1000个字符
        # @type CallbackUrl: String
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Deadline: 签署流程的签署截止时间。 值为unix时间戳,精确到秒,不传默认为当前时间七天后
        # @type Deadline: Integer

        attr_accessor :Agent, :NeedRelievedFlowId, :ReliveInfo, :ReleasedApprovers, :CallbackUrl, :Organization, :Operator, :Deadline
        extend Gem::Deprecate
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, needrelievedflowid=nil, reliveinfo=nil, releasedapprovers=nil, callbackurl=nil, organization=nil, operator=nil, deadline=nil)
          @Agent = agent
          @NeedRelievedFlowId = needrelievedflowid
          @ReliveInfo = reliveinfo
          @ReleasedApprovers = releasedapprovers
          @CallbackUrl = callbackurl
          @Organization = organization
          @Operator = operator
          @Deadline = deadline
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @NeedRelievedFlowId = params['NeedRelievedFlowId']
          unless params['ReliveInfo'].nil?
            @ReliveInfo = RelieveInfo.new
            @ReliveInfo.deserialize(params['ReliveInfo'])
          end
          unless params['ReleasedApprovers'].nil?
            @ReleasedApprovers = []
            params['ReleasedApprovers'].each do |i|
              releasedapprover_tmp = ReleasedApprover.new
              releasedapprover_tmp.deserialize(i)
              @ReleasedApprovers << releasedapprover_tmp
            end
          end
          @CallbackUrl = params['CallbackUrl']
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Deadline = params['Deadline']
        end
      end

      # ChannelCreateReleaseFlow返回参数结构体
      class ChannelCreateReleaseFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 解除协议流程编号
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

      # ChannelCreateRole请求参数结构体
      class ChannelCreateRoleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 角色名称，最大长度为20个字符，仅限中文、字母、数字和下划线组成。
        # @type Name: String
        # @param Agent: 代理企业和员工的信息。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Description: 角色描述，最大长度为50个字符
        # @type Description: String
        # @param PermissionGroups: 权限树，权限树内容 PermissionGroups 可参考接口 DescribeIntegrationRoles 的输出
        # @type PermissionGroups: Array

        attr_accessor :Name, :Agent, :Description, :PermissionGroups

        def initialize(name=nil, agent=nil, description=nil, permissiongroups=nil)
          @Name = name
          @Agent = agent
          @Description = description
          @PermissionGroups = permissiongroups
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
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
        end
      end

      # ChannelCreateRole返回参数结构体
      class ChannelCreateRoleResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateSealPolicy请求参数结构体
      class ChannelCreateSealPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealId: 指定印章ID
        # @type SealId: String
        # @param UserIds: 指定待授权的用户ID数组,电子签的用户ID
        # 可以填写OpenId，系统会通过组织+渠道+OpenId查询得到UserId进行授权。
        # @type UserIds: Array
        # @param Operator: 操作人（用户）信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 企业机构信息，不用传
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :SealId, :UserIds, :Operator, :Organization
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10

        def initialize(agent=nil, sealid=nil, userids=nil, operator=nil, organization=nil)
          @Agent = agent
          @SealId = sealid
          @UserIds = userids
          @Operator = operator
          @Organization = organization
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SealId = params['SealId']
          @UserIds = params['UserIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
        end
      end

      # ChannelCreateSealPolicy返回参数结构体
      class ChannelCreateSealPolicyResponse < TencentCloud::Common::AbstractModel
        # @param UserIds: 最终授权成功的电子签系统用户ID数组。其他的跳过的是已经授权了的。
        # 请求参数填写OpenId时，返回授权成功的 Openid。
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

      # ChannelCreateUserAutoSignEnableUrl请求参数结构体
      class ChannelCreateUserAutoSignEnableUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签场景:
        # E_PRESCRIPTION_AUTO_SIGN 电子处方
        # @type SceneKey: String
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param AutoSignConfig: 自动签开通，签署相关配置
        # @type AutoSignConfig: :class:`Tencentcloud::Essbasic.v20210526.models.AutoSignConfig`
        # @param UrlType: 链接类型，空-默认小程序端链接，H5SIGN-h5端链接
        # @type UrlType: String
        # @param NotifyType: 通知类型，默认不填为不通知开通方，填写 SMS 为短信通知。
        # @type NotifyType: String
        # @param NotifyAddress: 若上方填写为 SMS，则此处为手机号
        # @type NotifyAddress: String
        # @param ExpiredTime: 链接的过期时间，格式为Unix时间戳，不能早于当前时间，且最大为30天。如果不传，默认有效期为7天。
        # @type ExpiredTime: Integer

        attr_accessor :Agent, :SceneKey, :Operator, :AutoSignConfig, :UrlType, :NotifyType, :NotifyAddress, :ExpiredTime

        def initialize(agent=nil, scenekey=nil, operator=nil, autosignconfig=nil, urltype=nil, notifytype=nil, notifyaddress=nil, expiredtime=nil)
          @Agent = agent
          @SceneKey = scenekey
          @Operator = operator
          @AutoSignConfig = autosignconfig
          @UrlType = urltype
          @NotifyType = notifytype
          @NotifyAddress = notifyaddress
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SceneKey = params['SceneKey']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['AutoSignConfig'].nil?
            @AutoSignConfig = AutoSignConfig.new
            @AutoSignConfig.deserialize(params['AutoSignConfig'])
          end
          @UrlType = params['UrlType']
          @NotifyType = params['NotifyType']
          @NotifyAddress = params['NotifyAddress']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # ChannelCreateUserAutoSignEnableUrl返回参数结构体
      class ChannelCreateUserAutoSignEnableUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 跳转短链
        # @type Url: String
        # @param AppId: 小程序AppId
        # @type AppId: String
        # @param AppOriginalId: 小程序 原始 Id
        # @type AppOriginalId: String
        # @param Path: 跳转路径
        # @type Path: String
        # @param QrCode: base64格式跳转二维码
        # @type QrCode: String
        # @param UrlType: 链接类型，空-默认小程序端链接，H5SIGN-h5端链接
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

      # ChannelCreateUserAutoSignSealUrl请求参数结构体
      class ChannelCreateUserAutoSignSealUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li></ul>

        # 注: `现在仅支持电子处方场景`
        # @type SceneKey: String
        # @param UserInfo: 自动签开通个人用户信息，包括名字，身份证等。
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ExpiredTime: 链接的过期时间，格式为Unix时间戳，不能早于当前时间，且最大为当前时间往后30天。`如果不传，默认过期时间为当前时间往后7天。`
        # @type ExpiredTime: Integer

        attr_accessor :Agent, :SceneKey, :UserInfo, :Operator, :ExpiredTime

        def initialize(agent=nil, scenekey=nil, userinfo=nil, operator=nil, expiredtime=nil)
          @Agent = agent
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Operator = operator
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # ChannelCreateUserAutoSignSealUrl返回参数结构体
      class ChannelCreateUserAutoSignSealUrlResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateUserRoles请求参数结构体
      class ChannelCreateUserRolesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param RoleIds: 绑定角色的角色id列表，最多 100 个
        # @type RoleIds: Array
        # @param UserIds: 电子签用户ID列表，与OpenIds参数二选一,优先UserIds参数，最多 100 个
        # @type UserIds: Array
        # @param OpenIds: 客户系统用户ID列表，与UserIds参数二选一,优先UserIds参数，最多 100 个
        # @type OpenIds: Array
        # @param Operator: 操作者信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :RoleIds, :UserIds, :OpenIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, roleids=nil, userids=nil, openids=nil, operator=nil)
          @Agent = agent
          @RoleIds = roleids
          @UserIds = userids
          @OpenIds = openids
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @RoleIds = params['RoleIds']
          @UserIds = params['UserIds']
          @OpenIds = params['OpenIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelCreateUserRoles返回参数结构体
      class ChannelCreateUserRolesResponse < TencentCloud::Common::AbstractModel
        # @param FailedCreateRoleData: 绑定失败的用户角色列表
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

      # ChannelCreateWebThemeConfig请求参数结构体
      class ChannelCreateWebThemeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ThemeType: 主题类型<br/>EMBED_WEB_THEME：嵌入式主题
        # <br/>目前只支持EMBED_WEB_THEME，web页面嵌入的主题风格配置
        # @type ThemeType: String
        # @param WebThemeConfig: 主题配置
        # @type WebThemeConfig: :class:`Tencentcloud::Essbasic.v20210526.models.WebThemeConfig`

        attr_accessor :Agent, :ThemeType, :WebThemeConfig

        def initialize(agent=nil, themetype=nil, webthemeconfig=nil)
          @Agent = agent
          @ThemeType = themetype
          @WebThemeConfig = webthemeconfig
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ThemeType = params['ThemeType']
          unless params['WebThemeConfig'].nil?
            @WebThemeConfig = WebThemeConfig.new
            @WebThemeConfig.deserialize(params['WebThemeConfig'])
          end
        end
      end

      # ChannelCreateWebThemeConfig返回参数结构体
      class ChannelCreateWebThemeConfigResponse < TencentCloud::Common::AbstractModel
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

      # ChannelDeleteRole请求参数结构体
      class ChannelDeleteRoleRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 代理企业和员工的信息。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param RoleIds: 角色id，最多20个
        # @type RoleIds: Array

        attr_accessor :Agent, :RoleIds

        def initialize(agent=nil, roleids=nil)
          @Agent = agent
          @RoleIds = roleids
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @RoleIds = params['RoleIds']
        end
      end

      # ChannelDeleteRole返回参数结构体
      class ChannelDeleteRoleResponse < TencentCloud::Common::AbstractModel
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

      # ChannelDeleteRoleUsers请求参数结构体
      class ChannelDeleteRoleUsersRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 代理信息此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param RoleId: 角色Id（非超管或法人角色Id）
        # @type RoleId: String
        # @param UserIds: 电子签用户ID列表，与OpenIds参数二选一,优先UserIds参数，最多两百
        # @type UserIds: Array
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param OpenIds: 客户系统用户ID列表，与UserIds参数二选一,优先UserIds参数，最多两百
        # @type OpenIds: Array

        attr_accessor :Agent, :RoleId, :UserIds, :Operator, :OpenIds
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, roleid=nil, userids=nil, operator=nil, openids=nil)
          @Agent = agent
          @RoleId = roleid
          @UserIds = userids
          @Operator = operator
          @OpenIds = openids
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @RoleId = params['RoleId']
          @UserIds = params['UserIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @OpenIds = params['OpenIds']
        end
      end

      # ChannelDeleteRoleUsers返回参数结构体
      class ChannelDeleteRoleUsersResponse < TencentCloud::Common::AbstractModel
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

      # ChannelDeleteSealPolicies请求参数结构体
      class ChannelDeleteSealPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealId: 指定印章ID
        # @type SealId: String
        # @param UserIds: 指定用户ID数组，电子签系统用户ID
        # 可以填写OpenId，系统会通过组织+渠道+OpenId查询得到UserId进行授权取消。
        # @type UserIds: Array
        # @param Organization: 组织机构信息，不用传
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param Operator: 操作人（用户）信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :SealId, :UserIds, :Organization, :Operator
        extend Gem::Deprecate
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, sealid=nil, userids=nil, organization=nil, operator=nil)
          @Agent = agent
          @SealId = sealid
          @UserIds = userids
          @Organization = organization
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SealId = params['SealId']
          @UserIds = params['UserIds']
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelDeleteSealPolicies返回参数结构体
      class ChannelDeleteSealPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # ChannelDescribeEmployees请求参数结构体
      class ChannelDescribeEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 指定每页多少条数据，单页最大20
        # @type Limit: Integer
        # @param Filters: 查询过滤实名用户，Key为Status，Values为["IsVerified"]
        # 根据第三方系统openId过滤查询员工时,Key为StaffOpenId,Values为["OpenId","OpenId",...]
        # 查询离职员工时，Key为Status，Values为["QuiteJob"]
        # @type Filters: Array
        # @param Offset: 查询结果分页返回，此处指定第几页，如果不传默认从第一页返回。页码从 0 开始，即首页为 0,最大为20000
        # @type Offset: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :Limit, :Filters, :Offset, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, limit=nil, filters=nil, offset=nil, operator=nil)
          @Agent = agent
          @Limit = limit
          @Filters = filters
          @Offset = offset
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelDescribeEmployees返回参数结构体
      class ChannelDescribeEmployeesResponse < TencentCloud::Common::AbstractModel
        # @param Employees: 员工数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Employees: Array
        # @param Offset: 查询结果分页返回，此处指定第几页，如果不传默认从第一页返回。页码从 0 开始，即首页为 0，最大20000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Limit: 指定每页多少条数据，单页最大20
        # @type Limit: Integer
        # @param TotalCount: 符合条件的员工数量
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

      # ChannelDescribeFlowComponents请求参数结构体
      class ChannelDescribeFlowComponentsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 电子签流程的Id
        # @type FlowId: String

        attr_accessor :Agent, :FlowId

        def initialize(agent=nil, flowid=nil)
          @Agent = agent
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowId = params['FlowId']
        end
      end

      # ChannelDescribeFlowComponents返回参数结构体
      class ChannelDescribeFlowComponentsResponse < TencentCloud::Common::AbstractModel
        # @param RecipientComponentInfos: 流程关联的填写控件信息，控件会按照参与方进行分类。
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

      # ChannelDescribeOrganizationSeals请求参数结构体
      class ChannelDescribeOrganizationSealsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 返回最大数量，最大为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0，最大为20000
        # @type Offset: Integer
        # @param InfoType: 查询信息类型，为1时返回授权用户，为其他值时不返回
        # @type InfoType: Integer
        # @param SealId: 印章id（没有输入返回所有）
        # @type SealId: String
        # @param SealTypes: 印章类型列表（都是组织机构印章）。
        # 为空时查询所有类型的印章。
        # 目前支持以下类型：
        # OFFICIAL：企业公章；
        # CONTRACT：合同专用章；
        # ORGANIZATION_SEAL：企业印章(图片上传创建)；
        # LEGAL_PERSON_SEAL：法定代表人章
        # @type SealTypes: Array

        attr_accessor :Agent, :Limit, :Offset, :InfoType, :SealId, :SealTypes

        def initialize(agent=nil, limit=nil, offset=nil, infotype=nil, sealid=nil, sealtypes=nil)
          @Agent = agent
          @Limit = limit
          @Offset = offset
          @InfoType = infotype
          @SealId = sealid
          @SealTypes = sealtypes
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InfoType = params['InfoType']
          @SealId = params['SealId']
          @SealTypes = params['SealTypes']
        end
      end

      # ChannelDescribeOrganizationSeals返回参数结构体
      class ChannelDescribeOrganizationSealsResponse < TencentCloud::Common::AbstractModel
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

      # ChannelDescribeRoles请求参数结构体
      class ChannelDescribeRolesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 指定每页多少条数据，单页最大200
        # @type Limit: String
        # @param Filters: 查询的关键字段:
        # Key:"RoleType",Values:["1"]查询系统角色，Values:["2"]查询自定义角色
        # Key:"RoleStatus",Values:["1"]查询启用角色，Values:["2"]查询禁用角色
        # Key:"IsReturnPermissionGroup"，Values:["0"]:表示接口不返回角色对应的权限树字段，Values:["1"]表示接口返回角色对应的权限树字段
        # @type Filters: Array
        # @param Offset: 查询结果分页返回，此处指定第几页，如果不传默认从第一页返回。页码从 0 开始，即首页为 0，最大2000
        # @type Offset: Integer
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :Limit, :Filters, :Offset, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, limit=nil, filters=nil, offset=nil, operator=nil)
          @Agent = agent
          @Limit = limit
          @Filters = filters
          @Offset = offset
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelDescribeRoles返回参数结构体
      class ChannelDescribeRolesResponse < TencentCloud::Common::AbstractModel
        # @param Offset: 查询结果分页返回，此处指定第几页，如果不传默认从第一页返回。页码从 0 开始，即首页为 0，最大2000
        # @type Offset: Integer
        # @param Limit: 指定每页多少条数据，单页最大200
        # @type Limit: Integer
        # @param TotalCount: 查询角色的总数量
        # @type TotalCount: Integer
        # @param ChannelRoles: 角色信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelRoles: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Offset, :Limit, :TotalCount, :ChannelRoles, :RequestId

        def initialize(offset=nil, limit=nil, totalcount=nil, channelroles=nil, requestid=nil)
          @Offset = offset
          @Limit = limit
          @TotalCount = totalcount
          @ChannelRoles = channelroles
          @RequestId = requestid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TotalCount = params['TotalCount']
          unless params['ChannelRoles'].nil?
            @ChannelRoles = []
            params['ChannelRoles'].each do |i|
              channelrole_tmp = ChannelRole.new
              channelrole_tmp.deserialize(i)
              @ChannelRoles << channelrole_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ChannelDescribeUserAutoSignStatus请求参数结构体
      class ChannelDescribeUserAutoSignStatusRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签场景:
        # E_PRESCRIPTION_AUTO_SIGN 电子处方
        # @type SceneKey: String
        # @param UserInfo: 查询开启状态的用户信息
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :SceneKey, :UserInfo, :Operator

        def initialize(agent=nil, scenekey=nil, userinfo=nil, operator=nil)
          @Agent = agent
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelDescribeUserAutoSignStatus返回参数结构体
      class ChannelDescribeUserAutoSignStatusResponse < TencentCloud::Common::AbstractModel
        # @param IsOpen: 是否开通
        # @type IsOpen: Boolean
        # @param LicenseFrom: 自动签许可生效时间。当且仅当已开通自动签时有值。
        # @type LicenseFrom: Integer
        # @param LicenseTo: 自动签许可到期时间。当且仅当已开通自动签时有值。
        # @type LicenseTo: Integer
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。一旦绑定后，将扣减购买的个人自动签账号许可一次（1年有效期），不可解绑释放。不传默认为绑定自动签账号许可。 0-绑定个人自动签账号许可，开通后将扣减购买的个人自动签账号许可一次
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

      # ChannelDisableUserAutoSign请求参数结构体
      class ChannelDisableUserAutoSignRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签场景:
        # E_PRESCRIPTION_AUTO_SIGN 电子处方
        # @type SceneKey: String
        # @param UserInfo: 关闭自动签的个人的三要素
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :SceneKey, :UserInfo, :Operator

        def initialize(agent=nil, scenekey=nil, userinfo=nil, operator=nil)
          @Agent = agent
          @SceneKey = scenekey
          @UserInfo = userinfo
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SceneKey = params['SceneKey']
          unless params['UserInfo'].nil?
            @UserInfo = UserThreeFactor.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelDisableUserAutoSign返回参数结构体
      class ChannelDisableUserAutoSignResponse < TencentCloud::Common::AbstractModel
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

      # ChannelGetTaskResultApi请求参数结构体
      class ChannelGetTaskResultApiRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TaskId: 任务Id，通过ChannelCreateConvertTaskApi接口获得
        # @type TaskId: String
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :TaskId, :Operator, :Organization
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10
        deprecate :Organization, :none, 2023, 10
        deprecate :Organization=, :none, 2023, 10

        def initialize(agent=nil, taskid=nil, operator=nil, organization=nil)
          @Agent = agent
          @TaskId = taskid
          @Operator = operator
          @Organization = organization
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TaskId = params['TaskId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Organization'].nil?
            @Organization = OrganizationInfo.new
            @Organization.deserialize(params['Organization'])
          end
        end
      end

      # ChannelGetTaskResultApi返回参数结构体
      class ChannelGetTaskResultApiResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param TaskStatus: 任务状态，需要关注的状态
        # 0  :NeedTranform   - 任务已提交
        # 4  :Processing     - 文档转换中
        # 8  :TaskEnd        - 任务处理完成
        # -2 :DownloadFailed - 下载失败
        # -6 :ProcessFailed  - 转换失败
        # -13:ProcessTimeout - 转换文件超时
        # @type TaskStatus: Integer
        # @param TaskMessage: 状态描述，需要关注的状态
        # NeedTranform   - 任务已提交
        # Processing     - 文档转换中
        # TaskEnd        - 任务处理完成
        # DownloadFailed - 下载失败
        # ProcessFailed  - 转换失败
        # ProcessTimeout - 转换文件超时
        # @type TaskMessage: String
        # @param ResourceId: 资源Id，也是FileId，用于文件发起使用
        # @type ResourceId: String
        # @param PreviewUrl: 预览文件Url，有效期30分钟
        # 当前字段返回为空，发起的时候，将ResourceId 放入发起即可
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :TaskMessage, :ResourceId, :PreviewUrl, :RequestId
        extend Gem::Deprecate
        deprecate :PreviewUrl, :none, 2023, 10
        deprecate :PreviewUrl=, :none, 2023, 10

        def initialize(taskid=nil, taskstatus=nil, taskmessage=nil, resourceid=nil, previewurl=nil, requestid=nil)
          @TaskId = taskid
          @TaskStatus = taskstatus
          @TaskMessage = taskmessage
          @ResourceId = resourceid
          @PreviewUrl = previewurl
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskStatus = params['TaskStatus']
          @TaskMessage = params['TaskMessage']
          @ResourceId = params['ResourceId']
          @PreviewUrl = params['PreviewUrl']
          @RequestId = params['RequestId']
        end
      end

      # ChannelModifyRole请求参数结构体
      class ChannelModifyRoleRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 代理企业和员工的信息。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Name: 角色名称，最大长度为20个字符，仅限中文、字母、数字和下划线组成。
        # @type Name: String
        # @param RoleId: 角色Id，可通过接口 ChannelDescribeRoles 查询获取
        # @type RoleId: String
        # @param Description: 角色描述，最大长度为50个字符
        # @type Description: String
        # @param PermissionGroups: 权限树，权限树内容 PermissionGroups 可参考接口 DescribeIntegrationRoles 的输出
        # @type PermissionGroups: Array

        attr_accessor :Agent, :Name, :RoleId, :Description, :PermissionGroups

        def initialize(agent=nil, name=nil, roleid=nil, description=nil, permissiongroups=nil)
          @Agent = agent
          @Name = name
          @RoleId = roleid
          @Description = description
          @PermissionGroups = permissiongroups
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Name = params['Name']
          @RoleId = params['RoleId']
          @Description = params['Description']
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

      # ChannelModifyRole返回参数结构体
      class ChannelModifyRoleResponse < TencentCloud::Common::AbstractModel
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

      # 渠道角色信息
      class ChannelRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RoleName: 角色名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param RoleStatus: 角色状态：1-启用；2-禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleStatus: Integer
        # @param PermissionGroups: 权限树
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionGroups: Array

        attr_accessor :RoleId, :RoleName, :RoleStatus, :PermissionGroups

        def initialize(roleid=nil, rolename=nil, rolestatus=nil, permissiongroups=nil)
          @RoleId = roleid
          @RoleName = rolename
          @RoleStatus = rolestatus
          @PermissionGroups = permissiongroups
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @RoleStatus = params['RoleStatus']
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

      # ChannelUpdateSealStatus请求参数结构体
      class ChannelUpdateSealStatusRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Status: 操作的印章状态，DISABLE-停用印章
        # @type Status: String
        # @param SealId: 印章ID
        # @type SealId: String
        # @param Reason: 更新印章状态原因说明
        # @type Reason: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :Status, :SealId, :Reason, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, status=nil, sealid=nil, reason=nil, operator=nil)
          @Agent = agent
          @Status = status
          @SealId = sealid
          @Reason = reason
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Status = params['Status']
          @SealId = params['SealId']
          @Reason = params['Reason']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelUpdateSealStatus返回参数结构体
      class ChannelUpdateSealStatusResponse < TencentCloud::Common::AbstractModel
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

      # ChannelVerifyPdf请求参数结构体
      class ChannelVerifyPdfRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowId, :Agent, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(flowid=nil, agent=nil, operator=nil)
          @FlowId = flowid
          @Agent = agent
          @Operator = operator
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # ChannelVerifyPdf返回参数结构体
      class ChannelVerifyPdfResponse < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验签结果，1-文件未被篡改，全部签名在腾讯电子签完成； 2-文件未被篡改，部分签名在腾讯电子签完成；3-文件被篡改；4-异常：文件内没有签名域；5-异常：文件签名格式错误
        # @type VerifyResult: Integer
        # @param PdfVerifyResults: 验签结果详情,内部状态1-验签成功，在电子签签署；2-验签成功，在其他平台签署；3-验签失败；4-pdf文件没有签名域；5-文件签名格式错误
        # @type PdfVerifyResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VerifyResult, :PdfVerifyResults, :RequestId

        def initialize(verifyresult=nil, pdfverifyresults=nil, requestid=nil)
          @VerifyResult = verifyresult
          @PdfVerifyResults = pdfverifyresults
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
          @RequestId = params['RequestId']
        end
      end

      # 签署人配置信息
      class CommonApproverOption < TencentCloud::Common::AbstractModel
        # @param CanEditApprover: 是否允许修改签署人信息
        # @type CanEditApprover: Boolean

        attr_accessor :CanEditApprover

        def initialize(caneditapprover=nil)
          @CanEditApprover = caneditapprover
        end

        def deserialize(params)
          @CanEditApprover = params['CanEditApprover']
        end
      end

      # 通用签署人信息
      class CommonFlowApprover < TencentCloud::Common::AbstractModel
        # @param NotChannelOrganization: 指定当前签署人为第三方应用集成子客，默认false：当前签署人为第三方应用集成子客，true：当前签署人为saas企业用户
        # @type NotChannelOrganization: Boolean
        # @param ApproverType: 签署人类型,目前支持：0-企业签署人，1-个人签署人，3-企业静默签署人
        # @type ApproverType: Integer
        # @param OrganizationId: 企业id
        # @type OrganizationId: String
        # @param OrganizationOpenId: 企业OpenId，第三方应用集成非静默签子客企业签署人发起合同必传
        # @type OrganizationOpenId: String
        # @param OrganizationName: 企业名称，第三方应用集成非静默签子客企业签署人必传，saas企业签署人必传
        # @type OrganizationName: String
        # @param UserId: 用户id
        # @type UserId: String
        # @param OpenId: 用户openId，第三方应用集成非静默签子客企业签署人必传
        # @type OpenId: String
        # @param ApproverName: 签署人名称，saas企业签署人，个人签署人必传
        # @type ApproverName: String
        # @param ApproverMobile: 签署人手机号，saas企业签署人，个人签署人必传
        # @type ApproverMobile: String
        # @param RecipientId: 签署人Id，使用模板发起是，对应模板配置中的签署人RecipientId
        # 注意：模板发起时该字段必填
        # @type RecipientId: String
        # @param PreReadTime: 签署前置条件：阅读时长限制，不传默认10s,最大300s，最小3s
        # @type PreReadTime: Integer
        # @param IsFullText: 签署前置条件：阅读全文限制
        # @type IsFullText: Boolean
        # @param NotifyType: 通知类型：SMS（短信） NONE（不做通知）, 不传 默认SMS
        # @type NotifyType: String
        # @param ApproverOption: 签署人配置
        # @type ApproverOption: :class:`Tencentcloud::Essbasic.v20210526.models.CommonApproverOption`
        # @param SignComponents: 签署控件：文件发起使用
        # @type SignComponents: Array
        # @param ApproverVerifyTypes: 签署人查看合同时认证方式, 1-实名查看 2-短信验证码查看(企业签署方不支持该方式) 如果不传默认为1 查看合同的认证方式 Flow层级的优先于approver层级的 （当手写签名方式为OCR_ESIGN时，合同认证方式2无效，因为这种签名方式依赖实名认证）
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 签署人签署合同时的认证方式 1-人脸认证 2-签署密码 3-运营商三要素(默认为1,2)
        # @type ApproverSignTypes: Array

        attr_accessor :NotChannelOrganization, :ApproverType, :OrganizationId, :OrganizationOpenId, :OrganizationName, :UserId, :OpenId, :ApproverName, :ApproverMobile, :RecipientId, :PreReadTime, :IsFullText, :NotifyType, :ApproverOption, :SignComponents, :ApproverVerifyTypes, :ApproverSignTypes

        def initialize(notchannelorganization=nil, approvertype=nil, organizationid=nil, organizationopenid=nil, organizationname=nil, userid=nil, openid=nil, approvername=nil, approvermobile=nil, recipientid=nil, prereadtime=nil, isfulltext=nil, notifytype=nil, approveroption=nil, signcomponents=nil, approververifytypes=nil, approversigntypes=nil)
          @NotChannelOrganization = notchannelorganization
          @ApproverType = approvertype
          @OrganizationId = organizationid
          @OrganizationOpenId = organizationopenid
          @OrganizationName = organizationname
          @UserId = userid
          @OpenId = openid
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @RecipientId = recipientid
          @PreReadTime = prereadtime
          @IsFullText = isfulltext
          @NotifyType = notifytype
          @ApproverOption = approveroption
          @SignComponents = signcomponents
          @ApproverVerifyTypes = approververifytypes
          @ApproverSignTypes = approversigntypes
        end

        def deserialize(params)
          @NotChannelOrganization = params['NotChannelOrganization']
          @ApproverType = params['ApproverType']
          @OrganizationId = params['OrganizationId']
          @OrganizationOpenId = params['OrganizationOpenId']
          @OrganizationName = params['OrganizationName']
          @UserId = params['UserId']
          @OpenId = params['OpenId']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @RecipientId = params['RecipientId']
          @PreReadTime = params['PreReadTime']
          @IsFullText = params['IsFullText']
          @NotifyType = params['NotifyType']
          unless params['ApproverOption'].nil?
            @ApproverOption = CommonApproverOption.new
            @ApproverOption.deserialize(params['ApproverOption'])
          end
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @ApproverVerifyTypes = params['ApproverVerifyTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
        end
      end

      # 此结构体 (Component) 用于描述控件属性。

      # 在通过文件发起合同时，对应的component有三种定位方式
      # 1. 绝对定位方式
      # 2. 表单域(FIELD)定位方式
      # 3. 关键字(KEYWORD)定位方式
      # 可以参考官网说明
      # https://cloud.tencent.com/document/product/1323/78346#component-.E4.B8.89.E7.A7.8D.E5.AE.9A.E4.BD.8D.E6.96.B9.E5.BC.8F.E8.AF.B4.E6.98.8E
      class Component < TencentCloud::Common::AbstractModel
        # @param ComponentId: 控件编号

        # CreateFlowByTemplates发起合同时优先以ComponentId（不为空）填充；否则以ComponentName填充

        # 注：
        # 当GenerateMode=KEYWORD时，通过"^"来决定是否使用关键字整词匹配能力。
        # 例：当GenerateMode=KEYWORD时，如果传入关键字"^甲方签署^"，则会在PDF文件中有且仅有"甲方签署"关键字的地方进行对应操作。
        # 如传入的关键字为"甲方签署"，则PDF文件中每个出现关键字的位置都会执行相应操作。

        # 创建控件时，此值为空
        # 查询时返回完整结构
        # @type ComponentId: String
        # @param ComponentType: 如果是Component控件类型，则可选的字段为：
        # TEXT - 普通文本控件，输入文本字符串；
        # MULTI_LINE_TEXT - 多行文本控件，输入文本字符串；
        # CHECK_BOX - 勾选框控件，若选中填写ComponentValue 填写 true或者 false 字符串；
        # FILL_IMAGE - 图片控件，ComponentValue 填写图片的资源 ID；
        # DYNAMIC_TABLE - 动态表格控件；
        # ATTACHMENT - 附件控件,ComponentValue 填写附件图片的资源 ID列表，以逗号分割；
        # SELECTOR - 选择器控件，ComponentValue填写选择的字符串内容；
        # DATE - 日期控件；默认是格式化为xxxx年xx月xx日字符串；
        # DISTRICT - 省市区行政区控件，ComponentValue填写省市区行政区字符串内容；

        # 如果是SignComponent控件类型，则可选的字段为
        # SIGN_SEAL - 签署印章控件；
        # SIGN_DATE - 签署日期控件；
        # SIGN_SIGNATURE - 用户签名控件；
        # SIGN_PERSONAL_SEAL - 个人签署印章控件（使用文件发起暂不支持此类型）；
        # SIGN_PAGING_SEAL - 骑缝章；若文件发起，需要对应填充ComponentPosY、ComponentWidth、ComponentHeight
        # SIGN_OPINION - 签署意见控件，用户需要根据配置的签署意见内容，完成对意见内容的确认;
        # SIGN_LEGAL_PERSON_SEAL - 企业法定代表人控件。

        # 表单域的控件不能作为印章和签名控件
        # @type ComponentType: String
        # @param ComponentName: 控件简称，不超过30个字符
        # @type ComponentName: String
        # @param ComponentRequired: 控件是否为必填项，
        # 默认为false-非必填
        # @type ComponentRequired: Boolean
        # @param ComponentRecipientId: 控件关联的参与方ID，对应Recipient结构体中的RecipientId
        # @type ComponentRecipientId: String
        # @param FileIndex: 控件所属文件的序号 (文档中文件的排列序号，从0开始)
        # @type FileIndex: Integer
        # @param GenerateMode: 控件生成的方式：
        # NORMAL - 普通控件
        # FIELD - 表单域
        # KEYWORD - 关键字
        # @type GenerateMode: String
        # @param ComponentWidth: 参数控件宽度，默认100，单位px
        # 表单域和关键字转换控件不用填
        # @type ComponentWidth: Float
        # @param ComponentHeight: 参数控件高度，默认100，单位px
        # 表单域和关键字转换控件不用填
        # @type ComponentHeight: Float
        # @param ComponentPage: 参数控件所在页码，从1开始
        # @type ComponentPage: Integer
        # @param ComponentPosX: 参数控件X位置，单位px
        # @type ComponentPosX: Float
        # @param ComponentPosY: 参数控件Y位置，单位px
        # @type ComponentPosY: Float
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
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # TEXT - 文本内容
        # MULTI_LINE_TEXT - 文本内容
        # CHECK_BOX - true/false
        # FILL_IMAGE、ATTACHMENT - 附件的FileId，需要通过UploadFiles接口上传获取
        # SELECTOR - 选项值
        # DATE - 默认是格式化为xxxx年xx月xx日
        # DYNAMIC_TABLE - 传入json格式的表格内容，具体见数据结构FlowInfo：https://cloud.tencent.com/document/api/1420/61525#FlowInfo
        # SIGN_SEAL - 印章ID
        # SIGN_PAGING_SEAL - 可以指定印章ID

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
        # @param ComponentDateFontSize: 日期签署控件的字号，默认为 12

        # 签署区日期控件会转换成图片格式并带存证，需要通过字体决定图片大小
        # @type ComponentDateFontSize: Integer
        # @param DocumentId: 控件所属文档的Id, 模板相关接口为空值
        # @type DocumentId: String
        # @param ComponentDescription: 控件描述，不超过30个字符
        # @type ComponentDescription: String
        # @param OffsetX: 指定关键字时横坐标偏移量，单位pt
        # @type OffsetX: Float
        # @param OffsetY: 指定关键字时纵坐标偏移量，单位pt
        # @type OffsetY: Float
        # @param ChannelComponentId: 平台企业控件ID。
        # 如果不为空，属于平台企业预设控件；
        # @type ChannelComponentId: String
        # @param KeywordOrder: 指定关键字排序规则，
        # Positive-正序，
        # Reverse-倒序。
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
        # @param KeywordIndexes: 关键字索引，如果一个关键字在PDF文件中存在多个，可以通过关键字索引指定使用第几个关键字作为最后的结果，可指定多个索引。
        # 示例[0,2]，说明使用PDF文件内第1个和第3个关键字位置。
        # @type KeywordIndexes: Array
        # @param Placeholder: 填写提示的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Placeholder: String
        # @param LockComponentValue: 是否锁定控件值不允许编辑（嵌入式发起使用） <br/>默认false：不锁定控件值，允许在页面编辑控件值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockComponentValue: Boolean
        # @param ForbidMoveAndDelete: 是否禁止移动和删除控件 <br/>默认false，不禁止移动和删除控件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForbidMoveAndDelete: Boolean

        attr_accessor :ComponentId, :ComponentType, :ComponentName, :ComponentRequired, :ComponentRecipientId, :FileIndex, :GenerateMode, :ComponentWidth, :ComponentHeight, :ComponentPage, :ComponentPosX, :ComponentPosY, :ComponentExtra, :ComponentValue, :ComponentDateFontSize, :DocumentId, :ComponentDescription, :OffsetX, :OffsetY, :ChannelComponentId, :KeywordOrder, :KeywordPage, :RelativeLocation, :KeywordIndexes, :Placeholder, :LockComponentValue, :ForbidMoveAndDelete

        def initialize(componentid=nil, componenttype=nil, componentname=nil, componentrequired=nil, componentrecipientid=nil, fileindex=nil, generatemode=nil, componentwidth=nil, componentheight=nil, componentpage=nil, componentposx=nil, componentposy=nil, componentextra=nil, componentvalue=nil, componentdatefontsize=nil, documentid=nil, componentdescription=nil, offsetx=nil, offsety=nil, channelcomponentid=nil, keywordorder=nil, keywordpage=nil, relativelocation=nil, keywordindexes=nil, placeholder=nil, lockcomponentvalue=nil, forbidmoveanddelete=nil)
          @ComponentId = componentid
          @ComponentType = componenttype
          @ComponentName = componentname
          @ComponentRequired = componentrequired
          @ComponentRecipientId = componentrecipientid
          @FileIndex = fileindex
          @GenerateMode = generatemode
          @ComponentWidth = componentwidth
          @ComponentHeight = componentheight
          @ComponentPage = componentpage
          @ComponentPosX = componentposx
          @ComponentPosY = componentposy
          @ComponentExtra = componentextra
          @ComponentValue = componentvalue
          @ComponentDateFontSize = componentdatefontsize
          @DocumentId = documentid
          @ComponentDescription = componentdescription
          @OffsetX = offsetx
          @OffsetY = offsety
          @ChannelComponentId = channelcomponentid
          @KeywordOrder = keywordorder
          @KeywordPage = keywordpage
          @RelativeLocation = relativelocation
          @KeywordIndexes = keywordindexes
          @Placeholder = placeholder
          @LockComponentValue = lockcomponentvalue
          @ForbidMoveAndDelete = forbidmoveanddelete
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
          @ComponentType = params['ComponentType']
          @ComponentName = params['ComponentName']
          @ComponentRequired = params['ComponentRequired']
          @ComponentRecipientId = params['ComponentRecipientId']
          @FileIndex = params['FileIndex']
          @GenerateMode = params['GenerateMode']
          @ComponentWidth = params['ComponentWidth']
          @ComponentHeight = params['ComponentHeight']
          @ComponentPage = params['ComponentPage']
          @ComponentPosX = params['ComponentPosX']
          @ComponentPosY = params['ComponentPosY']
          @ComponentExtra = params['ComponentExtra']
          @ComponentValue = params['ComponentValue']
          @ComponentDateFontSize = params['ComponentDateFontSize']
          @DocumentId = params['DocumentId']
          @ComponentDescription = params['ComponentDescription']
          @OffsetX = params['OffsetX']
          @OffsetY = params['OffsetY']
          @ChannelComponentId = params['ChannelComponentId']
          @KeywordOrder = params['KeywordOrder']
          @KeywordPage = params['KeywordPage']
          @RelativeLocation = params['RelativeLocation']
          @KeywordIndexes = params['KeywordIndexes']
          @Placeholder = params['Placeholder']
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

      # CreateChannelFlowEvidenceReport请求参数结构体
      class CreateChannelFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowid=nil, operator=nil)
          @Agent = agent
          @FlowId = flowid
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowId = params['FlowId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # CreateChannelFlowEvidenceReport返回参数结构体
      class CreateChannelFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportId: 出证报告 ID，可用户DescribeChannelFlowEvidenceReport接口查询出证PDF的下载地址

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param Status: 出征任务的执行状态,状态列表如下

        # - EvidenceStatusExecuting : 出征任务正在执行中
        # - EvidenceStatusSuccess : 出征任务执行成功
        # - EvidenceStatusFailed : 出征任务执行失败
        # @type Status: String
        # @param ReportUrl: 废除，字段无效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportId, :Status, :ReportUrl, :RequestId

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

      # CreateChannelOrganizationInfoChangeUrl请求参数结构体
      class CreateChannelOrganizationInfoChangeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括子客企业及应用编、号等详细内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ChangeType: 企业信息变更类型，可选类型如下：
        # <ul><li>**1**：企业超管变更</li><li>**2**：企业基础信息变更</li></ul>
        # @type ChangeType: Integer

        attr_accessor :Agent, :ChangeType

        def initialize(agent=nil, changetype=nil)
          @Agent = agent
          @ChangeType = changetype
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ChangeType = params['ChangeType']
        end
      end

      # CreateChannelOrganizationInfoChangeUrl返回参数结构体
      class CreateChannelOrganizationInfoChangeUrlResponse < TencentCloud::Common::AbstractModel
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

      # CreateConsoleLoginUrl请求参数结构体
      class CreateConsoleLoginUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用信息
        # 此接口Agent.AppId、Agent.ProxyOrganizationOpenId 和 Agent. ProxyOperator.OpenId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 子客企业名称，最大长度64个字符
        # 注意：
        # 1、如果您的企业已经在认证授权中或者激活完成，这里修改子客企业名字将不会生效。
        # 2、该名称需要与Agent.ProxyOrganizationOpenId相匹配。
        # @type ProxyOrganizationName: String
        # @param UniformSocialCreditCode: 子客企业统一社会信用代码，最大长度200个字符
        # 注意：
        # 1、如果您的企业已经在认证授权中或者激活完成，这里修改子客企业名字将不会生效。
        # @type UniformSocialCreditCode: String
        # @param ProxyOperatorName: 子客企业经办人的姓名，最大长度50个字符
        # 注意：
        # 1、若经办人已经实名，这里修改经办人名字传入将不会生效。
        # 2、该名称需要和Agent. ProxyOperator.OpenId相匹配
        # @type ProxyOperatorName: String
        # @param Module: PC控制台登录后进入该参数指定的模块，如果不传递，将默认进入控制台首页。支持的模块包括：
        # 1、DOCUMENT:合同管理模块，
        # 2、TEMPLATE:企业模板管理模块，
        # 3、SEAL:印章管理模块，
        # 4、OPERATOR:组织管理模块，
        # 默认将进入企业中心模块
        # 注意：
        # 1、如果EndPoint选择"CHANNEL"或"APP"，该参数仅支持传递"SEAL"，进入印章管理模块
        # 2、该参数仅在企业和员工激活完成，登录控制台场景才生效。
        # @type Module: String
        # @param ModuleId: 该参数和Module参数配合使用，用于指定模块下的资源Id，指定后链接登录将展示该资源的详情。
        # 根据Module参数的不同所代表的含义不同。当前支持：
        # 1、如果Module="SEAL"，ModuleId代表印章Id, 登录链接将直接查看指定印章的详情。
        # 2、如果Module="TEMPLATE"，ModuleId代表模版Id，登录链接将直接查看指定模版的详情。
        # 3、如果Module="1、DOCUMENT"，ModuleId代表合同Id，登录链接将直接查看指定合同的详情。
        # 注意：
        # 1、该参数仅在企业和员工激活完成，登录控制台场景才生效。
        # 2、ModuleId需要和Module对应，ModuleId可以通过API或者控制台获取到。
        # @type ModuleId: String
        # @param MenuStatus: 是否展示左侧菜单栏
        # "ENABLE": 是，展示
        # “DISABLE”: 否，不展示
        # 默认值为ENABLE
        # 注意：
        # 1、该参数仅在企业和员工激活完成，登录控制台场景才生效。
        # @type MenuStatus: String
        # @param Endpoint: 生成链接的类型：
        # "PC"：PC控制台链接
        # "CHANNEL"：H5跳转到电子签小程序链接
        # "APP"：第三方APP或小程序跳转电子签小程序链接
        # 默认将生成PC控制台链接
        # @type Endpoint: String
        # @param AutoJumpBackEvent: 触发自动跳转事件，仅对EndPoint为App类型有效，可选值包括：
        # "VERIFIED":企业认证完成/员工认证完成后跳回原App/小程序
        # @type AutoJumpBackEvent: String
        # @param AuthorizationTypes: 可选的企业授权方式:
        # 1：上传授权书
        # 2：转法定代表人授权
        # 4：企业实名认证（信任第三方认证源）（此项仅支持单选）
        # 未选择信任第三方认证源时，如果是法人进行企业激活，仅支持法人扫脸直接授权，该配置不生效；选择信任第三方认证源时，请先通过“同步企业信息”接口同步信息。
        # 该参数仅在企业激活场景生效
        # @type AuthorizationTypes: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ProxyOrganizationName, :UniformSocialCreditCode, :ProxyOperatorName, :Module, :ModuleId, :MenuStatus, :Endpoint, :AutoJumpBackEvent, :AuthorizationTypes, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, proxyorganizationname=nil, uniformsocialcreditcode=nil, proxyoperatorname=nil, _module=nil, moduleid=nil, menustatus=nil, endpoint=nil, autojumpbackevent=nil, authorizationtypes=nil, operator=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @ProxyOperatorName = proxyoperatorname
          @Module = _module
          @ModuleId = moduleid
          @MenuStatus = menustatus
          @Endpoint = endpoint
          @AutoJumpBackEvent = autojumpbackevent
          @AuthorizationTypes = authorizationtypes
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @ProxyOperatorName = params['ProxyOperatorName']
          @Module = params['Module']
          @ModuleId = params['ModuleId']
          @MenuStatus = params['MenuStatus']
          @Endpoint = params['Endpoint']
          @AutoJumpBackEvent = params['AutoJumpBackEvent']
          @AuthorizationTypes = params['AuthorizationTypes']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # CreateConsoleLoginUrl返回参数结构体
      class CreateConsoleLoginUrlResponse < TencentCloud::Common::AbstractModel
        # @param ConsoleUrl: 子客企业Web控制台url注意事项：
        # 1. 所有类型的链接在企业未认证/员工未认证完成时，只要在有效期内（一年）都可以访问
        # 2. 若企业认证完成且员工认证完成后，重新获取pc端的链接在5分钟之内有效，且只能访问一次
        # 3. 若企业认证完成且员工认证完成后，重新获取CHANNEL/APP的链接只要在有效期内（一年）都可以访问
        # 4. 此链接仅单次有效，每次登录需要需要重新创建新的链接，尽量不要做链接存储，多次使用。
        # 5. 创建的链接应避免被转义，如：&被转义为\u0026；如使用Postman请求后，请选择响应类型为 JSON，否则链接将被转义
        # @type ConsoleUrl: String
        # @param IsActivated: 子客企业是否已开通腾讯电子签，true-是，false-否
        # 注意：
        # 1、企业是否实名根据传参Agent.ProxyOrganizationOpenId进行判断，非企业名称或者社会信用代码
        # @type IsActivated: Boolean
        # @param ProxyOperatorIsVerified: 当前经办人是否已认证，true-是，false-否
        # 注意：
        # 1、经办人是否实名是根据Agent.ProxyOperator.OpenId判断，非经办人姓名
        # @type ProxyOperatorIsVerified: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsoleUrl, :IsActivated, :ProxyOperatorIsVerified, :RequestId

        def initialize(consoleurl=nil, isactivated=nil, proxyoperatorisverified=nil, requestid=nil)
          @ConsoleUrl = consoleurl
          @IsActivated = isactivated
          @ProxyOperatorIsVerified = proxyoperatorisverified
          @RequestId = requestid
        end

        def deserialize(params)
          @ConsoleUrl = params['ConsoleUrl']
          @IsActivated = params['IsActivated']
          @ProxyOperatorIsVerified = params['ProxyOperatorIsVerified']
          @RequestId = params['RequestId']
        end
      end

      # 创建合同个性化参数
      class CreateFlowOption < TencentCloud::Common::AbstractModel
        # @param CanEditFlow: 是否允许修改合同信息，true-是，false-否
        # @type CanEditFlow: Boolean
        # @param HideShowFlowName: 是否允许发起合同弹窗隐藏合同名称，true-允许，false-不允许
        # @type HideShowFlowName: Boolean
        # @param HideShowFlowType: 是否允许发起合同弹窗隐藏合同类型，true-允许，false-不允许
        # @type HideShowFlowType: Boolean
        # @param HideShowDeadline: 是否允许发起合同弹窗隐藏合同到期时间，true-允许，false-不允许
        # @type HideShowDeadline: Boolean
        # @param CanSkipAddApprover: 是否允许发起合同步骤跳过指定签署方步骤，true-允许，false-不允许
        # @type CanSkipAddApprover: Boolean
        # @param CustomCreateFlowDescription: 定制化发起合同弹窗的描述信息，描述信息最长500
        # @type CustomCreateFlowDescription: String

        attr_accessor :CanEditFlow, :HideShowFlowName, :HideShowFlowType, :HideShowDeadline, :CanSkipAddApprover, :CustomCreateFlowDescription

        def initialize(caneditflow=nil, hideshowflowname=nil, hideshowflowtype=nil, hideshowdeadline=nil, canskipaddapprover=nil, customcreateflowdescription=nil)
          @CanEditFlow = caneditflow
          @HideShowFlowName = hideshowflowname
          @HideShowFlowType = hideshowflowtype
          @HideShowDeadline = hideshowdeadline
          @CanSkipAddApprover = canskipaddapprover
          @CustomCreateFlowDescription = customcreateflowdescription
        end

        def deserialize(params)
          @CanEditFlow = params['CanEditFlow']
          @HideShowFlowName = params['HideShowFlowName']
          @HideShowFlowType = params['HideShowFlowType']
          @HideShowDeadline = params['HideShowDeadline']
          @CanSkipAddApprover = params['CanSkipAddApprover']
          @CustomCreateFlowDescription = params['CustomCreateFlowDescription']
        end
      end

      # CreateFlowsByTemplates请求参数结构体
      class CreateFlowsByTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 要创建的合同信息列表，最多支持一次创建20个合同
        # @type FlowInfos: Array
        # @param NeedPreview: 是否为预览模式；默认为false，即非预览模式，此时发起合同并返回FlowIds；若为预览模式，不会发起合同，会返回PreviewUrls；
        # 预览链接有效期300秒；
        # 同时，如果预览的文件中指定了动态表格控件，需要进行异步合成；此时此接口返回的是合成前的文档预览链接，而合成完成后的文档预览链接会通过：回调通知的方式、或使用返回的TaskInfo中的TaskId通过ChannelGetTaskResultApi接口查询；
        # @type NeedPreview: Boolean
        # @param PreviewType: 预览链接类型 默认:0-文件流, 1- H5链接 注意:此参数在NeedPreview 为true 时有效,
        # @type PreviewType: Integer
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowInfos, :NeedPreview, :PreviewType, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowinfos=nil, needpreview=nil, previewtype=nil, operator=nil)
          @Agent = agent
          @FlowInfos = flowinfos
          @NeedPreview = needpreview
          @PreviewType = previewtype
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['FlowInfos'].nil?
            @FlowInfos = []
            params['FlowInfos'].each do |i|
              flowinfo_tmp = FlowInfo.new
              flowinfo_tmp.deserialize(i)
              @FlowInfos << flowinfo_tmp
            end
          end
          @NeedPreview = params['NeedPreview']
          @PreviewType = params['PreviewType']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # CreateFlowsByTemplates返回参数结构体
      class CreateFlowsByTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param FlowIds: 多个合同ID
        # @type FlowIds: Array
        # @param CustomerData: 第三方应用平台的业务信息, 与创建合同的FlowInfos数组中的CustomerData一一对应
        # @type CustomerData: Array
        # @param ErrorMessages: 创建消息，对应多个合同ID，
        # 成功为“”,创建失败则对应失败消息
        # @type ErrorMessages: Array
        # @param PreviewUrls: 预览模式下返回的预览文件url数组
        # @type PreviewUrls: Array
        # @param TaskInfos: 复杂文档合成任务（如，包含动态表格的预览任务）的任务信息数组；
        # 如果文档需要异步合成，此字段会返回该异步任务的任务信息，后续可以通过ChannelGetTaskResultApi接口查询任务详情；
        # @type TaskInfos: Array
        # @param FlowApprovers: 签署方信息，如角色ID、角色名称等
        # @type FlowApprovers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowIds, :CustomerData, :ErrorMessages, :PreviewUrls, :TaskInfos, :FlowApprovers, :RequestId

        def initialize(flowids=nil, customerdata=nil, errormessages=nil, previewurls=nil, taskinfos=nil, flowapprovers=nil, requestid=nil)
          @FlowIds = flowids
          @CustomerData = customerdata
          @ErrorMessages = errormessages
          @PreviewUrls = previewurls
          @TaskInfos = taskinfos
          @FlowApprovers = flowapprovers
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          @CustomerData = params['CustomerData']
          @ErrorMessages = params['ErrorMessages']
          @PreviewUrls = params['PreviewUrls']
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @TaskInfos << taskinfo_tmp
            end
          end
          unless params['FlowApprovers'].nil?
            @FlowApprovers = []
            params['FlowApprovers'].each do |i|
              flowapproveritem_tmp = FlowApproverItem.new
              flowapproveritem_tmp.deserialize(i)
              @FlowApprovers << flowapproveritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSealByImage请求参数结构体
      class CreateSealByImageRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 代理企业和员工的信息。
        # 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealName: 印章名称，最大长度不超过50字符
        # @type SealName: String
        # @param SealImage: 印章图片base64，大小不超过10M（原始图片不超过7.6M）
        # @type SealImage: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param GenerateSource: 本接口支持上传图片印章及系统直接生成印章； 如果要使用系统生成印章，此值传：SealGenerateSourceSystem； 如果要使用图片上传请传字段 SealImage
        # @type GenerateSource: String
        # @param SealType: 电子印章类型：
        # <ul><li>OFFICIAL-公章</li>
        # <li>CONTRACT-合同专用章;</li>
        # <li>FINANCE-合财务专用章;</li>
        # <li>PERSONNEL-人事专用章
        # </li>
        # <li>默认：OFFICIAL</li>
        # </ul>
        # @type SealType: String
        # @param SealHorizontalText: 企业印章横向文字，最多可填15个汉字（若超过印章最大宽度，优先压缩字间距，其次缩小字号
        # @type SealHorizontalText: String
        # @param SealStyle: 印章样式:

        # <ul><li>cycle:圆形印章</li>
        # <li>ellipse:椭圆印章</li>
        # <li> 注：默认圆形印章</li></ul>
        # @type SealStyle: String
        # @param SealSize: 印章尺寸取值描述：<ul><li> 42_42 圆形企业公章直径42mm</li>
        # <li> 40_40 圆形企业印章直径40mm</li>
        # <li> 45_30 椭圆形印章45mm x 30mm</li>
        # </ul>
        # @type SealSize: String

        attr_accessor :Agent, :SealName, :SealImage, :Operator, :GenerateSource, :SealType, :SealHorizontalText, :SealStyle, :SealSize
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, sealname=nil, sealimage=nil, operator=nil, generatesource=nil, sealtype=nil, sealhorizontaltext=nil, sealstyle=nil, sealsize=nil)
          @Agent = agent
          @SealName = sealname
          @SealImage = sealimage
          @Operator = operator
          @GenerateSource = generatesource
          @SealType = sealtype
          @SealHorizontalText = sealhorizontaltext
          @SealStyle = sealstyle
          @SealSize = sealsize
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @SealName = params['SealName']
          @SealImage = params['SealImage']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @GenerateSource = params['GenerateSource']
          @SealType = params['SealType']
          @SealHorizontalText = params['SealHorizontalText']
          @SealStyle = params['SealStyle']
          @SealSize = params['SealSize']
        end
      end

      # CreateSealByImage返回参数结构体
      class CreateSealByImageResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # 可登录腾讯电子签控制台，在 "印章"->"印章中心"选择查看的印章，在"印章详情" 中查看某个印章的SealId(在页面中展示为印章ID)。
        # @type SealId: String
        # @param ImageUrl: 电子印章预览链接地址，地址默认失效时间为24小时。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SealId, :ImageUrl, :RequestId

        def initialize(sealid=nil, imageurl=nil, requestid=nil)
          @SealId = sealid
          @ImageUrl = imageurl
          @RequestId = requestid
        end

        def deserialize(params)
          @SealId = params['SealId']
          @ImageUrl = params['ImageUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateSignUrls请求参数结构体
      class CreateSignUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 流程(合同)的编号列表，最多支持100个。(备注：该参数和合同组编号必须二选一)
        # @type FlowIds: Array
        # @param FlowGroupId: 合同组编号(备注：该参数和合同(流程)编号数组必须二选一)
        # @type FlowGroupId: String
        # @param Endpoint: 签署链接类型,可以设置的参数如下

        # - WEIXINAPP:短链直接跳小程序 (默认类型)
        # - CHANNEL:跳转H5页面
        # - APP:第三方APP或小程序跳转电子签小程序
        # - LONGURL2WEIXINAPP:长链接跳转小程序
        # @type Endpoint: String
        # @param GenerateType: 签署链接生成类型，可以选择的类型如下

        # - ALL：全部签署方签署链接，此时不会给自动签署的签署方创建签署链接(默认类型)
        # - CHANNEL：第三方平台子客企业企业
        # - NOT_CHANNEL：非第三方平台子客企业企业
        # - PERSON：个人
        # - FOLLOWER：关注方，目前是合同抄送方
        # - RECIPIENT：获取RecipientId对应的签署链接，可用于生成动态签署人补充链接
        # @type GenerateType: String
        # @param OrganizationName: 非第三方平台子客企业参与方的企业名称，GenerateType为"NOT_CHANNEL"时必填
        # @type OrganizationName: String
        # @param Name: 参与人姓名
        # GenerateType为"PERSON"(即个人签署方)时必填
        # @type Name: String
        # @param Mobile: 参与人手机号
        # GenerateType为"PERSON"或"FOLLOWER"时必填
        # @type Mobile: String
        # @param OrganizationOpenId: 第三方平台子客企业的企业OpenId，GenerateType为"CHANNEL"时必填
        # @type OrganizationOpenId: String
        # @param OpenId: 第三方平台子客企业参与人OpenId，GenerateType为"CHANNEL"时可用，指定到具体参与人, 仅展示已经实名的经办人信息
        # @type OpenId: String
        # @param AutoJumpBack: Endpoint为"APP" 类型的签署链接，可以设置此值；支持调用方小程序打开签署链接，在电子签小程序完成签署后自动回跳至调用方小程序
        # @type AutoJumpBack: Boolean
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，针对Endpoint为CHANNEL时有效，最大长度1000个字符。
        # @type JumpUrl: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Hides: 生成的签署链接在签署过程隐藏的按钮列表, 可以设置隐藏的按钮列表如下

        # - 0:合同签署页面更多操作按钮
        # - 1:合同签署页面更多操作的拒绝签署按钮
        # - 2:合同签署页面更多操作的转他人处理按钮
        # - 3:签署成功页的查看详情按钮
        # @type Hides: Array
        # @param RecipientIds: 签署节点ID，用于补充动态签署人，使用此参数需要与flow_ids数量一致并且一一对应
        # @type RecipientIds: Array

        attr_accessor :Agent, :FlowIds, :FlowGroupId, :Endpoint, :GenerateType, :OrganizationName, :Name, :Mobile, :OrganizationOpenId, :OpenId, :AutoJumpBack, :JumpUrl, :Operator, :Hides, :RecipientIds
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowids=nil, flowgroupid=nil, endpoint=nil, generatetype=nil, organizationname=nil, name=nil, mobile=nil, organizationopenid=nil, openid=nil, autojumpback=nil, jumpurl=nil, operator=nil, hides=nil, recipientids=nil)
          @Agent = agent
          @FlowIds = flowids
          @FlowGroupId = flowgroupid
          @Endpoint = endpoint
          @GenerateType = generatetype
          @OrganizationName = organizationname
          @Name = name
          @Mobile = mobile
          @OrganizationOpenId = organizationopenid
          @OpenId = openid
          @AutoJumpBack = autojumpback
          @JumpUrl = jumpurl
          @Operator = operator
          @Hides = hides
          @RecipientIds = recipientids
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          @FlowGroupId = params['FlowGroupId']
          @Endpoint = params['Endpoint']
          @GenerateType = params['GenerateType']
          @OrganizationName = params['OrganizationName']
          @Name = params['Name']
          @Mobile = params['Mobile']
          @OrganizationOpenId = params['OrganizationOpenId']
          @OpenId = params['OpenId']
          @AutoJumpBack = params['AutoJumpBack']
          @JumpUrl = params['JumpUrl']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Hides = params['Hides']
          @RecipientIds = params['RecipientIds']
        end
      end

      # CreateSignUrls返回参数结构体
      class CreateSignUrlsResponse < TencentCloud::Common::AbstractModel
        # @param SignUrlInfos: 签署参与者签署H5链接信息数组
        # @type SignUrlInfos: Array
        # @param ErrorMessages: 生成失败时的错误信息，成功返回”“，顺序和出参SignUrlInfos保持一致
        # @type ErrorMessages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignUrlInfos, :ErrorMessages, :RequestId

        def initialize(signurlinfos=nil, errormessages=nil, requestid=nil)
          @SignUrlInfos = signurlinfos
          @ErrorMessages = errormessages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SignUrlInfos'].nil?
            @SignUrlInfos = []
            params['SignUrlInfos'].each do |i|
              signurlinfo_tmp = SignUrlInfo.new
              signurlinfo_tmp.deserialize(i)
              @SignUrlInfos << signurlinfo_tmp
            end
          end
          @ErrorMessages = params['ErrorMessages']
          @RequestId = params['RequestId']
        end
      end

      # 第三方应用集成员工部门信息
      class Department < TencentCloud::Common::AbstractModel
        # @param DepartmentId: 部门id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeChannelFlowEvidenceReport请求参数结构体
      class DescribeChannelFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ReportId: 出证报告编号
        # @type ReportId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ReportId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, reportid=nil, operator=nil)
          @Agent = agent
          @ReportId = reportid
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ReportId = params['ReportId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeChannelFlowEvidenceReport返回参数结构体
      class DescribeChannelFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 出证报告下载 URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param Status: 出征任务的执行状态,状态列表如下

        # - EvidenceStatusExecuting : 出征任务正在执行中
        # - EvidenceStatusSuccess : 出征任务执行成功
        # - EvidenceStatusFailed : 出征任务执行失败
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

      # DescribeExtendedServiceAuthInfo请求参数结构体
      class DescribeExtendedServiceAuthInfoRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填

        # 注: 此接口 参数Agent. ProxyOperator.OpenId 需要传递超管或者法人的OpenId
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`

        attr_accessor :Agent

        def initialize(agent=nil)
          @Agent = agent
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeExtendedServiceAuthInfo返回参数结构体
      class DescribeExtendedServiceAuthInfoResponse < TencentCloud::Common::AbstractModel
        # @param AuthInfo: 企业扩展服务授权信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthInfo, :RequestId

        def initialize(authinfo=nil, requestid=nil)
          @AuthInfo = authinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuthInfo'].nil?
            @AuthInfo = []
            params['AuthInfo'].each do |i|
              extentserviceauthinfo_tmp = ExtentServiceAuthInfo.new
              extentserviceauthinfo_tmp.deserialize(i)
              @AuthInfo << extentserviceauthinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowDetailInfo请求参数结构体
      class DescribeFlowDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 合同(流程)编号数组，最多支持100个。
        # <br/>备注：该参数和合同组编号必须二选一, 如果填写FlowGroupId则忽略此FlowIds的入参
        # @type FlowIds: Array
        # @param FlowGroupId: 合同组编号
        # <br/>备注：该参数和合同(流程)编号数组必须二选一
        # @type FlowGroupId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :FlowGroupId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowids=nil, flowgroupid=nil, operator=nil)
          @Agent = agent
          @FlowIds = flowids
          @FlowGroupId = flowgroupid
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          @FlowGroupId = params['FlowGroupId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeFlowDetailInfo返回参数结构体
      class DescribeFlowDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 第三方平台应用号Id
        # @type ApplicationId: String
        # @param ProxyOrganizationOpenId: 第三方平台子客企业OpenId
        # @type ProxyOrganizationOpenId: String
        # @param FlowInfo: 合同(签署流程)的具体详细描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowInfo: Array
        # @param FlowGroupId: 合同组编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param FlowGroupName: 合同组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :ProxyOrganizationOpenId, :FlowInfo, :FlowGroupId, :FlowGroupName, :RequestId

        def initialize(applicationid=nil, proxyorganizationopenid=nil, flowinfo=nil, flowgroupid=nil, flowgroupname=nil, requestid=nil)
          @ApplicationId = applicationid
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @FlowInfo = flowinfo
          @FlowGroupId = flowgroupid
          @FlowGroupName = flowgroupname
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          unless params['FlowInfo'].nil?
            @FlowInfo = []
            params['FlowInfo'].each do |i|
              flowdetailinfo_tmp = FlowDetailInfo.new
              flowdetailinfo_tmp.deserialize(i)
              @FlowInfo << flowdetailinfo_tmp
            end
          end
          @FlowGroupId = params['FlowGroupId']
          @FlowGroupName = params['FlowGroupName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUrlsByFlows请求参数结构体
      class DescribeResourceUrlsByFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 查询资源所对应的签署流程Id，最多支持50个
        # @type FlowIds: Array
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowids=nil, operator=nil)
          @Agent = agent
          @FlowIds = flowids
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeResourceUrlsByFlows返回参数结构体
      class DescribeResourceUrlsByFlowsResponse < TencentCloud::Common::AbstractModel
        # @param FlowResourceUrlInfos: 签署流程资源对应链接信息
        # @type FlowResourceUrlInfos: Array
        # @param ErrorMessages: 创建消息，对应多个合同ID，
        # 成功为“”,创建失败则对应失败消息
        # @type ErrorMessages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowResourceUrlInfos, :ErrorMessages, :RequestId

        def initialize(flowresourceurlinfos=nil, errormessages=nil, requestid=nil)
          @FlowResourceUrlInfos = flowresourceurlinfos
          @ErrorMessages = errormessages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowResourceUrlInfos'].nil?
            @FlowResourceUrlInfos = []
            params['FlowResourceUrlInfos'].each do |i|
              flowresourceurlinfo_tmp = FlowResourceUrlInfo.new
              flowresourceurlinfo_tmp.deserialize(i)
              @FlowResourceUrlInfos << flowresourceurlinfo_tmp
            end
          end
          @ErrorMessages = params['ErrorMessages']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplates请求参数结构体
      class DescribeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 模板唯一标识，查询单个模板时使用
        # @type TemplateId: String
        # @param ContentType: 查询内容：
        # 0-模板列表及详情（默认），
        # 1-仅模板列表
        # @type ContentType: Integer
        # @param Limit: 指定每页多少条数据，如果不传默认为20，单页最大100。
        # @type Limit: Integer
        # @param Offset: 查询结果分页返回，此处指定第几页，如果不传默从第一页返回。页码从0开始，即首页为0。
        # @type Offset: Integer
        # @param QueryAllComponents: 是否返回所有组件信息。
        # 默认false，只返回发起方控件；
        # true，返回所有签署方控件
        # @type QueryAllComponents: Boolean
        # @param TemplateName: 模糊搜索模板名称，最大长度200
        # @type TemplateName: String
        # @param WithPreviewUrl: 是否获取模板预览链接，
        # 默认false-不获取
        # true-获取
        # @type WithPreviewUrl: Boolean
        # @param WithPdfUrl: 是否获取模板的PDF文件链接。
        # 默认false-不获取
        # true-获取
        # 请联系客户经理开白后使用。
        # @type WithPdfUrl: Boolean
        # @param ChannelTemplateId: 对应第三方应用平台企业的模板ID
        # @type ChannelTemplateId: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :TemplateId, :ContentType, :Limit, :Offset, :QueryAllComponents, :TemplateName, :WithPreviewUrl, :WithPdfUrl, :ChannelTemplateId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, templateid=nil, contenttype=nil, limit=nil, offset=nil, queryallcomponents=nil, templatename=nil, withpreviewurl=nil, withpdfurl=nil, channeltemplateid=nil, operator=nil)
          @Agent = agent
          @TemplateId = templateid
          @ContentType = contenttype
          @Limit = limit
          @Offset = offset
          @QueryAllComponents = queryallcomponents
          @TemplateName = templatename
          @WithPreviewUrl = withpreviewurl
          @WithPdfUrl = withpdfurl
          @ChannelTemplateId = channeltemplateid
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TemplateId = params['TemplateId']
          @ContentType = params['ContentType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @QueryAllComponents = params['QueryAllComponents']
          @TemplateName = params['TemplateName']
          @WithPreviewUrl = params['WithPreviewUrl']
          @WithPdfUrl = params['WithPdfUrl']
          @ChannelTemplateId = params['ChannelTemplateId']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeTemplates返回参数结构体
      class DescribeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板列表
        # @type Templates: Array
        # @param TotalCount: 查询到的总数
        # @type TotalCount: Integer
        # @param Limit: 每页多少条数据
        # @type Limit: Integer
        # @param Offset: 查询结果分页返回，此处指定第几页。页码从0开始，即首页为0。
        # @type Offset: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :TotalCount, :Limit, :Offset, :RequestId

        def initialize(templates=nil, totalcount=nil, limit=nil, offset=nil, requestid=nil)
          @Templates = templates
          @TotalCount = totalcount
          @Limit = limit
          @Offset = offset
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
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsage请求参数结构体
      class DescribeUsageRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用信息，此接口Agent.AppId必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param StartDate: 开始时间，例如：2021-03-21
        # @type StartDate: String
        # @param EndDate: 结束时间，例如：2021-06-21；
        # 开始时间到结束时间的区间长度小于等于90天。
        # @type EndDate: String
        # @param NeedAggregate: 是否汇总数据，默认不汇总。
        # 不汇总：返回在统计区间内第三方平台下所有企业的每日明细，即每个企业N条数据，N为统计天数；
        # 汇总：返回在统计区间内第三方平台下所有企业的汇总后数据，即每个企业一条数据；
        # @type NeedAggregate: Boolean
        # @param Limit: 单次返回的最多条目数量。默认为1000，且不能超过1000。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认是0。
        # @type Offset: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :StartDate, :EndDate, :NeedAggregate, :Limit, :Offset, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, startdate=nil, enddate=nil, needaggregate=nil, limit=nil, offset=nil, operator=nil)
          @Agent = agent
          @StartDate = startdate
          @EndDate = enddate
          @NeedAggregate = needaggregate
          @Limit = limit
          @Offset = offset
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @NeedAggregate = params['NeedAggregate']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeUsage返回参数结构体
      class DescribeUsageResponse < TencentCloud::Common::AbstractModel
        # @param Total: 用量明细条数
        # @type Total: Integer
        # @param Details: 用量明细
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              usagedetail_tmp = UsageDetail.new
              usagedetail_tmp.deserialize(i)
              @Details << usagedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 签署流程下载信息
      class DownloadFlowInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件夹名称
        # @type FileName: String
        # @param FlowIdList: 签署流程的标识数组
        # @type FlowIdList: Array

        attr_accessor :FileName, :FlowIdList

        def initialize(filename=nil, flowidlist=nil)
          @FileName = filename
          @FlowIdList = flowidlist
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FlowIdList = params['FlowIdList']
        end
      end

      # 企业扩展服务授权信息
      class ExtentServiceAuthInfo < TencentCloud::Common::AbstractModel
        # @param Type: 扩展服务类型
        # <ul>
        #   <li>AUTO_SIGN             企业静默签（自动签署）</li>
        # <li>  OVERSEA_SIGN          企业与港澳台居民*签署合同</li>
        # <li>  MOBILE_CHECK_APPROVER 使用手机号验证签署方身份</li>
        #  <li> PAGING_SEAL           骑缝章</li>
        #  <li> DOWNLOAD_FLOW         授权渠道下载合同 </li>
        # <li>AGE_LIMIT_EXPANSION 拓宽签署方年龄限制</li>
        # </ul>
        # @type Type: String
        # @param Name: 扩展服务名称
        # @type Name: String
        # @param Status: 服务状态
        # ENABLE 开启
        # DISABLE 关闭
        # @type Status: String
        # @param OperatorOpenId: 最近操作人第三方应用平台的用户openid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorOpenId: String
        # @param OperateOn: 最近操作时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateOn: Integer

        attr_accessor :Type, :Name, :Status, :OperatorOpenId, :OperateOn

        def initialize(type=nil, name=nil, status=nil, operatoropenid=nil, operateon=nil)
          @Type = type
          @Name = name
          @Status = status
          @OperatorOpenId = operatoropenid
          @OperateOn = operateon
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @Status = params['Status']
          @OperatorOpenId = params['OperatorOpenId']
          @OperateOn = params['OperateOn']
        end
      end

      # 绑定失败的用户角色信息
      class FailedCreateRoleData < TencentCloud::Common::AbstractModel
        # @param UserId: 用户userId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RoleIds: 角色RoleId列表
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

      # 指定补充签署人信息
      # - RecipientId 必须指定
      class FillApproverInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署方经办人在模板中配置的参与方ID，与控件绑定，是控件的归属方，ID为32位字符串。
        # @type RecipientId: String
        # @param OpenId: 指定企业经办签署人OpenId
        # @type OpenId: String
        # @param ApproverName: 签署人姓名
        # @type ApproverName: String
        # @param ApproverMobile: 签署人手机号码
        # @type ApproverMobile: String
        # @param OrganizationName: 企业名称
        # @type OrganizationName: String
        # @param OrganizationOpenId: 企业OpenId
        # @type OrganizationOpenId: String
        # @param NotChannelOrganization: 签署企业非渠道子客，默认为false，即表示同一渠道下的企业；如果为true，则目前表示接收方企业为SaaS企业, 为渠道子客时，organization_open_id+open_id 必传
        # @type NotChannelOrganization: String

        attr_accessor :RecipientId, :OpenId, :ApproverName, :ApproverMobile, :OrganizationName, :OrganizationOpenId, :NotChannelOrganization

        def initialize(recipientid=nil, openid=nil, approvername=nil, approvermobile=nil, organizationname=nil, organizationopenid=nil, notchannelorganization=nil)
          @RecipientId = recipientid
          @OpenId = openid
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @OrganizationName = organizationname
          @OrganizationOpenId = organizationopenid
          @NotChannelOrganization = notchannelorganization
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @OpenId = params['OpenId']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @OrganizationName = params['OrganizationName']
          @OrganizationOpenId = params['OrganizationOpenId']
          @NotChannelOrganization = params['NotChannelOrganization']
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
        # @param ImageUrl: 图片填充控件下载链接，如果是图片填充控件时，这里返回图片的下载链接。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String

        attr_accessor :ComponentId, :ComponentName, :ComponentFillStatus, :ComponentValue, :ImageUrl

        def initialize(componentid=nil, componentname=nil, componentfillstatus=nil, componentvalue=nil, imageurl=nil)
          @ComponentId = componentid
          @ComponentName = componentname
          @ComponentFillStatus = componentfillstatus
          @ComponentValue = componentvalue
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
          @ComponentFillStatus = params['ComponentFillStatus']
          @ComponentValue = params['ComponentValue']
          @ImageUrl = params['ImageUrl']
        end
      end

      # 此结构体 (Filter) 用于描述查询过滤条件。
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

      # 签署人的流程信息明细
      class FlowApproverDetail < TencentCloud::Common::AbstractModel
        # @param ReceiptId: 模板配置时候的签署人id,与控件绑定
        # @type ReceiptId: String
        # @param ProxyOrganizationOpenId: 平台企业的第三方id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOperatorOpenId: 平台企业操作人的第三方id
        # @type ProxyOperatorOpenId: String
        # @param ProxyOrganizationName: 平台企业名称
        # @type ProxyOrganizationName: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param SignOrder: 签署人签署顺序
        # @type SignOrder: Integer
        # @param ApproveName: 签署人姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveName: String
        # @param ApproveStatus: 当前签署人的状态, 状态如下
        # <br/>PENDING 待签署
        # <br/>FILLPENDING 待填写
        # <br/>FILLACCEPT 填写完成
        # <br/>FILLREJECT 拒绝填写
        # <br/>WAITPICKUP 待领取
        # <br/>ACCEPT 已签署
        # <br/>REJECT 拒签
        # <br/>DEADLINE 过期没人处理
        # <br/>CANCEL 流程已撤回
        # <br/>FORWARD 已经转他人处理
        # <br/>STOP 流程已终止
        # <br/>RELIEVED 解除协议（已解除）

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param ApproveMessage: 签署人自定义信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMessage: String
        # @param ApproveTime: 签署人签署时间戳，单位秒
        # @type ApproveTime: Integer
        # @param ApproveType: 参与者类型
        # <br/>ORGANIZATION：企业签署人
        # <br/>PERSON：个人签署人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveType: String
        # @param ApproverRoleName: 自定义签署人角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverRoleName: String

        attr_accessor :ReceiptId, :ProxyOrganizationOpenId, :ProxyOperatorOpenId, :ProxyOrganizationName, :Mobile, :SignOrder, :ApproveName, :ApproveStatus, :ApproveMessage, :ApproveTime, :ApproveType, :ApproverRoleName

        def initialize(receiptid=nil, proxyorganizationopenid=nil, proxyoperatoropenid=nil, proxyorganizationname=nil, mobile=nil, signorder=nil, approvename=nil, approvestatus=nil, approvemessage=nil, approvetime=nil, approvetype=nil, approverrolename=nil)
          @ReceiptId = receiptid
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @ProxyOperatorOpenId = proxyoperatoropenid
          @ProxyOrganizationName = proxyorganizationname
          @Mobile = mobile
          @SignOrder = signorder
          @ApproveName = approvename
          @ApproveStatus = approvestatus
          @ApproveMessage = approvemessage
          @ApproveTime = approvetime
          @ApproveType = approvetype
          @ApproverRoleName = approverrolename
        end

        def deserialize(params)
          @ReceiptId = params['ReceiptId']
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          @ProxyOperatorOpenId = params['ProxyOperatorOpenId']
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @Mobile = params['Mobile']
          @SignOrder = params['SignOrder']
          @ApproveName = params['ApproveName']
          @ApproveStatus = params['ApproveStatus']
          @ApproveMessage = params['ApproveMessage']
          @ApproveTime = params['ApproveTime']
          @ApproveType = params['ApproveType']
          @ApproverRoleName = params['ApproverRoleName']
        end
      end

      # 创建签署流程签署人入参。

      # 其中签署方FlowApproverInfo需要传递的参数
      # 非单C、单B、B2C合同，ApproverType、RecipientId（模板发起合同时）必传，建议都传。

      # 其他身份标识，注：`如果发起的是动态签署方（即ApproverOption.FillType指定为1），可以不指定具体签署人信息`

      # <ul><li>1-个人：Name、Mobile必传</li>
      # <li>2-第三方平台子客企业指定经办人：OpenId必传，OrgName必传、OrgOpenId必传；</li>
      # <li>3-第三方平台子客企业不指定经办人：OrgName必传、OrgOpenId必传；</li>
      # <li>4-非第三方平台子客企业(平台企业)：Name、Mobile必传，OrgName必传，且NotChannelOrganization=True。</li></ul>

      # RecipientId参数：
      # 从DescribeTemplates接口中，可以得到模板下的签署方Recipient列表，根据模板自定义的Rolename在此结构体中确定其RecipientId。
      class FlowApproverInfo < TencentCloud::Common::AbstractModel
        # @param Name: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        # @type Name: String
        # @param IdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li>
        # <li>OTHER_CARD_TYPE : 其他证件</li></ul>

        # 注: `其他证件类型为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type IdCardType: String
        # @param IdCardNumber: 签署方经办人的证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param Mobile: 签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)， 不支持海外手机号。
        # 请确认手机号所有方为此合同签署方。
        # @type Mobile: String
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # @type OrganizationName: String
        # @param NotChannelOrganization: 指定签署人非第三方平台子客企业下员工还是SaaS平台企业，在ApproverType为ORGANIZATION时指定。
        # <ul>
        # <li>false: 默认值，第三方平台子客企业下员工</li>
        # <li>true: SaaS平台企业下的员工</li>
        # </ul>
        # @type NotChannelOrganization: Boolean
        # @param OpenId: 第三方平台子客企业员工的唯一标识，长度不能超过64，只能由字母和数字组成

        # 当签署方为同一第三方平台下的员工时，该字段若不指定，则发起【待领取】的流程
        # @type OpenId: String
        # @param OrganizationOpenId: 同应用下第三方平台子客企业的唯一标识，定义Agent中的ProxyOrganizationOpenId一样，签署方为非发起方企业场景下必传，最大长度64个字符
        # @type OrganizationOpenId: String
        # @param ApproverType: 在指定签署方时，可选择企业B端或个人C端等不同的参与者类型，可选类型如下:
        # <ul><li> **PERSON** :个人/自然人</li>
        # <li> **PERSON_AUTO_SIGN** :个人/自然人自动签署，适用于个人自动签场景</li>
        # <li> **ORGANIZATION** :企业/企业员工（企业签署方或模板发起时的企业静默签）</li>
        # <li> **ENTERPRISESERVER** :企业/企业员自动签（他方企业自动签署或文件发起时的本方企业自动签）</li></ul>

        # 注:
        # `1. 个人自动签场景(PERSON_AUTO_SIGN)为白名单功能, 使用前请联系对接的客户经理沟通。`
        # `2. 若要实现他方企业（同一应用下）自动签，需要满足3个条件：`
        # <ul><li>条件1：ApproverType 设置为ENTERPRISESERVER</li>
        # <li>条件2：子客之间完成授权</li>
        # <li>条件3：联系对接的客户经理沟通如何使用</li></ul>
        # @type ApproverType: String
        # @param RecipientId: 签署流程签署人在模板中对应的签署人Id；在非单方签署、以及非B2C签署的场景下必传，用于指定当前签署方在签署流程中的位置；
        # @type RecipientId: String
        # @param Deadline: 本签署人在此合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type Deadline: Integer
        # @param CallbackUrl: 签署完回调url，最大长度1000个字符
        # @type CallbackUrl: String
        # @param SignComponents: 使用PDF文件直接发起合同时，签署人指定的签署控件；<br/>使用模板发起合同时，指定本企业印章签署控件的印章ID: <br/>通过ComponentId或ComponenetName指定签署控件，ComponentValue为印章ID。
        # @type SignComponents: Array
        # @param ComponentLimitType: 签署方控件类型为 SIGN_SIGNATURE时，可以指定签署方签名方式
        # 	HANDWRITE – 手写签名
        # 	OCR_ESIGN -- AI智能识别手写签名
        # 	ESIGN -- 个人印章类型
        # 	SYSTEM_ESIGN -- 系统签名（该类型可以在用户签署时根据用户姓名一键生成一个签名来进行签署）
        # @type ComponentLimitType: Array
        # @param PreReadTime: 签署方在签署合同之前，需要强制阅读合同的时长，可指定为3秒至300秒之间的任意值。

        # 若未指定阅读时间，则会按照合同页数大小计算阅读时间，计算规则如下：
        # <ul>
        # <li>合同页数少于等于2页，阅读时间为3秒；</li>
        # <li>合同页数为3到5页，阅读时间为5秒；</li>
        # <li>合同页数大于等于6页，阅读时间为10秒。</li>
        # </ul>
        # @type PreReadTime: Integer
        # @param JumpUrl: 签署完前端跳转的url，此字段的用法场景请联系客户经理确认
        # @type JumpUrl: String
        # @param ApproverOption: 可以控制签署方在签署合同时能否进行某些操作，例如拒签、转交他人等。
        # 详细操作可以参考开发者中心的ApproverOption结构体。
        # @type ApproverOption: :class:`Tencentcloud::Essbasic.v20210526.models.ApproverOption`
        # @param ApproverNeedSignReview: 当前签署方进行签署操作是否需要企业内部审批，true 则为需要
        # @type ApproverNeedSignReview: Boolean
        # @param ApproverVerifyTypes: 签署人查看合同时认证方式, 1-实名查看 2-短信验证码查看(企业签署方不支持该方式) 如果不传默认为1
        # 查看合同的认证方式 Flow层级的优先于approver层级的
        # （当手写签名方式为OCR_ESIGN时，合同认证方式2无效，因为这种签名方式依赖实名认证）
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 签署人签署合同时的认证方式
        # 1-人脸认证 2-签署密码 3-运营商三要素(默认为1,2)
        # @type ApproverSignTypes: Array
        # @param SignId: 签署ID
        # - 发起流程时系统自动补充
        # - 创建签署链接时，可以通过查询详情接口获得签署人的SignId，然后可传入此值为该签署人创建签署链接，无需再传姓名、手机号、证件号等其他信息
        # @type SignId: String
        # @param NotifyType: 通知签署方经办人的方式, 有以下途径:
        # <ul><li> **SMS** :(默认)短信</li>
        # <li> **NONE** : 不通知</li></ul>

        # 注: `签署方为第三方子客企业时会被置为NONE,   不会发短信通知`
        # @type NotifyType: String
        # @param AddSignComponentsLimits: [通过文件创建签署流程](https://qian.tencent.com/developers/partnerApis/startFlows/ChannelCreateFlowByFiles)时,如果设置了外层参数SignBeanTag=1(允许签署过程中添加签署控件),则可通过此参数明确规定合同所使用的签署控件类型（骑缝章、普通章法人章等）和具体的印章（印章ID）或签名方式。

        # 注：`限制印章控件或骑缝章控件情况下,仅本企业签署方可以指定具体印章（通过传递ComponentValue,支持多个），他方企业或个人只支持限制控件类型。`
        # @type AddSignComponentsLimits: Array
        # @param ApproverRoleName: 自定义签署人角色名，如收款人、开具人、见证人等
        # @type ApproverRoleName: String

        attr_accessor :Name, :IdCardType, :IdCardNumber, :Mobile, :OrganizationName, :NotChannelOrganization, :OpenId, :OrganizationOpenId, :ApproverType, :RecipientId, :Deadline, :CallbackUrl, :SignComponents, :ComponentLimitType, :PreReadTime, :JumpUrl, :ApproverOption, :ApproverNeedSignReview, :ApproverVerifyTypes, :ApproverSignTypes, :SignId, :NotifyType, :AddSignComponentsLimits, :ApproverRoleName
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 10
        deprecate :CallbackUrl=, :none, 2023, 10

        def initialize(name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil, organizationname=nil, notchannelorganization=nil, openid=nil, organizationopenid=nil, approvertype=nil, recipientid=nil, deadline=nil, callbackurl=nil, signcomponents=nil, componentlimittype=nil, prereadtime=nil, jumpurl=nil, approveroption=nil, approverneedsignreview=nil, approververifytypes=nil, approversigntypes=nil, signid=nil, notifytype=nil, addsigncomponentslimits=nil, approverrolename=nil)
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @OrganizationName = organizationname
          @NotChannelOrganization = notchannelorganization
          @OpenId = openid
          @OrganizationOpenId = organizationopenid
          @ApproverType = approvertype
          @RecipientId = recipientid
          @Deadline = deadline
          @CallbackUrl = callbackurl
          @SignComponents = signcomponents
          @ComponentLimitType = componentlimittype
          @PreReadTime = prereadtime
          @JumpUrl = jumpurl
          @ApproverOption = approveroption
          @ApproverNeedSignReview = approverneedsignreview
          @ApproverVerifyTypes = approververifytypes
          @ApproverSignTypes = approversigntypes
          @SignId = signid
          @NotifyType = notifytype
          @AddSignComponentsLimits = addsigncomponentslimits
          @ApproverRoleName = approverrolename
        end

        def deserialize(params)
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @OrganizationName = params['OrganizationName']
          @NotChannelOrganization = params['NotChannelOrganization']
          @OpenId = params['OpenId']
          @OrganizationOpenId = params['OrganizationOpenId']
          @ApproverType = params['ApproverType']
          @RecipientId = params['RecipientId']
          @Deadline = params['Deadline']
          @CallbackUrl = params['CallbackUrl']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @ComponentLimitType = params['ComponentLimitType']
          @PreReadTime = params['PreReadTime']
          @JumpUrl = params['JumpUrl']
          unless params['ApproverOption'].nil?
            @ApproverOption = ApproverOption.new
            @ApproverOption.deserialize(params['ApproverOption'])
          end
          @ApproverNeedSignReview = params['ApproverNeedSignReview']
          @ApproverVerifyTypes = params['ApproverVerifyTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
          @SignId = params['SignId']
          @NotifyType = params['NotifyType']
          unless params['AddSignComponentsLimits'].nil?
            @AddSignComponentsLimits = []
            params['AddSignComponentsLimits'].each do |i|
              componentlimit_tmp = ComponentLimit.new
              componentlimit_tmp.deserialize(i)
              @AddSignComponentsLimits << componentlimit_tmp
            end
          end
          @ApproverRoleName = params['ApproverRoleName']
        end
      end

      # 签署方信息，如角色ID、角色名称等
      class FlowApproverItem < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param Approvers: 签署方信息，如角色ID、角色名称等
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 签署人签署链接信息
      class FlowApproverUrlInfo < TencentCloud::Common::AbstractModel
        # @param SignUrl: 签署短链接，不支持小程序嵌入，只支持移动端浏览器打开。注意该链接有效期为30分钟，同时需要注意保密，不要外泄给无关用户。
        # @type SignUrl: String
        # @param ApproverType: 签署人类型 PERSON-个人
        # @type ApproverType: String
        # @param Name: 签署人姓名
        # @type Name: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param LongUrl: 签署长链接，支持小程序嵌入。注意该链接有效期为30分钟，同时需要注意保密，不要外泄给无关用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongUrl: String

        attr_accessor :SignUrl, :ApproverType, :Name, :Mobile, :LongUrl

        def initialize(signurl=nil, approvertype=nil, name=nil, mobile=nil, longurl=nil)
          @SignUrl = signurl
          @ApproverType = approvertype
          @Name = name
          @Mobile = mobile
          @LongUrl = longurl
        end

        def deserialize(params)
          @SignUrl = params['SignUrl']
          @ApproverType = params['ApproverType']
          @Name = params['Name']
          @Mobile = params['Mobile']
          @LongUrl = params['LongUrl']
        end
      end

      # 此结构体(FlowDetailInfo)描述的是合同(流程)的详细信息
      class FlowDetailInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同(流程)的Id
        # @type FlowId: String
        # @param FlowName: 合同(流程)的名字
        # @type FlowName: String
        # @param FlowType: 合同(流程)的类型
        # @type FlowType: String
        # @param FlowStatus: 合同(流程)的状态, 状态如下

        # INIT 合同创建
        # PART 合同签署中
        # REJECT 合同拒签
        # ALL 合同签署完成
        # DEADLINE 合同流签(合同过期)
        # CANCEL 合同撤回
        # RELIEVED 解除协议（已解除）

        # @type FlowStatus: String
        # @param FlowMessage: 合同(流程)的信息
        # @type FlowMessage: String
        # @param CreateOn: 合同(流程)的创建时间戳，单位秒
        # @type CreateOn: Integer
        # @param DeadLine: 合同(流程)的签署截止时间戳，单位秒
        # @type DeadLine: Integer
        # @param CustomData: 用户自定义数据
        # @type CustomData: String
        # @param FlowApproverInfos: 合同(流程)的签署人数组
        # @type FlowApproverInfos: Array
        # @param CcInfos: 合同(流程)关注方信息列表
        # @type CcInfos: Array
        # @param NeedCreateReview: 是否需要发起前审批，当NeedCreateReview为true，表明当前流程是需要发起前审核的合同，可能无法进行查看，签署操作，需要等审核完成后，才可以继续后续流程
        # @type NeedCreateReview: Boolean

        attr_accessor :FlowId, :FlowName, :FlowType, :FlowStatus, :FlowMessage, :CreateOn, :DeadLine, :CustomData, :FlowApproverInfos, :CcInfos, :NeedCreateReview

        def initialize(flowid=nil, flowname=nil, flowtype=nil, flowstatus=nil, flowmessage=nil, createon=nil, deadline=nil, customdata=nil, flowapproverinfos=nil, ccinfos=nil, needcreatereview=nil)
          @FlowId = flowid
          @FlowName = flowname
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @FlowMessage = flowmessage
          @CreateOn = createon
          @DeadLine = deadline
          @CustomData = customdata
          @FlowApproverInfos = flowapproverinfos
          @CcInfos = ccinfos
          @NeedCreateReview = needcreatereview
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @FlowName = params['FlowName']
          @FlowType = params['FlowType']
          @FlowStatus = params['FlowStatus']
          @FlowMessage = params['FlowMessage']
          @CreateOn = params['CreateOn']
          @DeadLine = params['DeadLine']
          @CustomData = params['CustomData']
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
          @NeedCreateReview = params['NeedCreateReview']
        end
      end

      # 合同组中每个子合同的发起信息
      class FlowFileInfo < TencentCloud::Common::AbstractModel
        # @param FileIds: 签署文件资源Id列表，目前仅支持单个文件
        # @type FileIds: Array
        # @param FlowName: 签署流程名称，长度不超过200个字符
        # @type FlowName: String
        # @param FlowApprovers: 签署流程签约方列表，最多不超过5个参与方
        # @type FlowApprovers: Array
        # @param Deadline: 签署流程截止时间，十位数时间戳，最大值为33162419560，即3020年
        # @type Deadline: Integer
        # @param FlowDescription: 签署流程的描述，长度不超过1000个字符
        # @type FlowDescription: String
        # @param FlowType: 签署流程的类型，长度不超过255个字符
        # @type FlowType: String
        # @param CallbackUrl: 签署流程回调地址，长度不超过255个字符
        # @type CallbackUrl: String
        # @param CustomerData: 第三方应用的业务信息，最大长度1000个字符。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        # @type CustomerData: String
        # @param Unordered: 合同签署顺序类型(无序签,顺序签)，默认为false，即有序签署
        # @type Unordered: Boolean
        # @param Components: 签署文件中的发起方的填写控件，需要在发起的时候进行填充
        # @type Components: Array
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param NeedSignReview: 本企业(发起方企业)是否需要签署审批
        # @type NeedSignReview: Boolean

        attr_accessor :FileIds, :FlowName, :FlowApprovers, :Deadline, :FlowDescription, :FlowType, :CallbackUrl, :CustomerData, :Unordered, :Components, :CustomShowMap, :NeedSignReview

        def initialize(fileids=nil, flowname=nil, flowapprovers=nil, deadline=nil, flowdescription=nil, flowtype=nil, callbackurl=nil, customerdata=nil, unordered=nil, components=nil, customshowmap=nil, needsignreview=nil)
          @FileIds = fileids
          @FlowName = flowname
          @FlowApprovers = flowapprovers
          @Deadline = deadline
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @CallbackUrl = callbackurl
          @CustomerData = customerdata
          @Unordered = unordered
          @Components = components
          @CustomShowMap = customshowmap
          @NeedSignReview = needsignreview
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @FlowName = params['FlowName']
          unless params['FlowApprovers'].nil?
            @FlowApprovers = []
            params['FlowApprovers'].each do |i|
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @FlowApprovers << flowapproverinfo_tmp
            end
          end
          @Deadline = params['Deadline']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @CallbackUrl = params['CallbackUrl']
          @CustomerData = params['CustomerData']
          @Unordered = params['Unordered']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @CustomShowMap = params['CustomShowMap']
          @NeedSignReview = params['NeedSignReview']
        end
      end

      # 合同组的配置项信息包括：在合同组签署过程中，是否需要对每个子合同进行独立的意愿确认。
      class FlowGroupOptions < TencentCloud::Common::AbstractModel
        # @param SelfOrganizationApproverSignEach: 发起方企业经办人（即签署人为发起方企业员工）是否需要对子合同进行独立的意愿确认：
        # fasle：发起方企业经办人签署时对所有子合同进行统一的意愿确认
        # true：发起方企业经办人签署时需要对子合同进行独立的意愿确认
        # 默认为fasle。
        # @type SelfOrganizationApproverSignEach: Boolean
        # @param OtherApproverSignEach: 非发起方企业经办人（即：签署人为个人或者不为发起方企业的员工）是否需要对子合同进行独立的意愿确认：
        # fasle：非发起方企业经办人签署时对所有子合同进行统一的意愿确认
        # true：非发起方企业经办人签署时需要对子合同进行独立的意愿确认
        # 默认为false。
        # @type OtherApproverSignEach: Boolean

        attr_accessor :SelfOrganizationApproverSignEach, :OtherApproverSignEach

        def initialize(selforganizationapproversigneach=nil, otherapproversigneach=nil)
          @SelfOrganizationApproverSignEach = selforganizationapproversigneach
          @OtherApproverSignEach = otherapproversigneach
        end

        def deserialize(params)
          @SelfOrganizationApproverSignEach = params['SelfOrganizationApproverSignEach']
          @OtherApproverSignEach = params['OtherApproverSignEach']
        end
      end

      # 此结构体 (FlowInfo) 用于描述签署流程信息。

      # 【数据表格传参说明】
      # 当模板的 ComponentType='DYNAMIC_TABLE'时（ 第三方应用集成或集成版），FormField.ComponentValue需要传递json格式的字符串参数，用于确定表头&填充数据表格（支持内容的单元格合并）
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

      # 表格参数headers说明

      # | 名称                | 类型    | 描述                                              |
      # | ------------------- | ------- | ------------------------------------------------- |
      # | widthPercent   | Integer | 表头单元格列占总表头的比例，例如1：30表示 此列占表头的30%，不填写时列宽度平均拆分；例如2：总2列，某一列填写40，剩余列可以为空，按照60计算。；例如3：总3列，某一列填写30，剩余2列可以为空，分别为(100-30)/2=35                    |
      # | content    | String  | 表头单元格内容，字数不超过100                         |
      class FlowInfo < TencentCloud::Common::AbstractModel
        # @param FlowName: 合同名字，最大长度200个字符
        # @type FlowName: String
        # @param Deadline: 签署截止时间戳，超过有效签署时间则该签署流程失败，默认一年
        # @type Deadline: Integer
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param FlowApprovers: 多个签署人信息，最大支持50个签署方
        # @type FlowApprovers: Array
        # @param FormFields: 表单K-V对列表
        # @type FormFields: Array
        # @param CallbackUrl: 回调地址，最大长度1000个字符
        # @type CallbackUrl: String
        # @param FlowType: 合同类型，如：1. “劳务”；2. “销售”；3. “租赁”；4. “其他”，最大长度200个字符
        # @type FlowType: String
        # @param FlowDescription: 合同描述，最大长度1000个字符
        # @type FlowDescription: String
        # @param CustomerData:  第三方应用平台的业务信息，最大长度1000个字符。
        # @type CustomerData: String
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param CcInfos: 被抄送人的信息列表，抄送功能暂不开放
        # @type CcInfos: Array
        # @param NeedSignReview: 发起方企业的签署人进行签署操作是否需要企业内部审批。
        # 若设置为true,审核结果需通过接口 ChannelCreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。

        # 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        # @type NeedSignReview: Boolean
        # @param CcNotifyType: 给关注人发送短信通知的类型，0-合同发起时通知 1-签署完成后通知
        # @type CcNotifyType: Integer
        # @param AutoSignScene: 个人自动签场景。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        # @type AutoSignScene: String

        attr_accessor :FlowName, :Deadline, :TemplateId, :FlowApprovers, :FormFields, :CallbackUrl, :FlowType, :FlowDescription, :CustomerData, :CustomShowMap, :CcInfos, :NeedSignReview, :CcNotifyType, :AutoSignScene

        def initialize(flowname=nil, deadline=nil, templateid=nil, flowapprovers=nil, formfields=nil, callbackurl=nil, flowtype=nil, flowdescription=nil, customerdata=nil, customshowmap=nil, ccinfos=nil, needsignreview=nil, ccnotifytype=nil, autosignscene=nil)
          @FlowName = flowname
          @Deadline = deadline
          @TemplateId = templateid
          @FlowApprovers = flowapprovers
          @FormFields = formfields
          @CallbackUrl = callbackurl
          @FlowType = flowtype
          @FlowDescription = flowdescription
          @CustomerData = customerdata
          @CustomShowMap = customshowmap
          @CcInfos = ccinfos
          @NeedSignReview = needsignreview
          @CcNotifyType = ccnotifytype
          @AutoSignScene = autosignscene
        end

        def deserialize(params)
          @FlowName = params['FlowName']
          @Deadline = params['Deadline']
          @TemplateId = params['TemplateId']
          unless params['FlowApprovers'].nil?
            @FlowApprovers = []
            params['FlowApprovers'].each do |i|
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @FlowApprovers << flowapproverinfo_tmp
            end
          end
          unless params['FormFields'].nil?
            @FormFields = []
            params['FormFields'].each do |i|
              formfield_tmp = FormField.new
              formfield_tmp.deserialize(i)
              @FormFields << formfield_tmp
            end
          end
          @CallbackUrl = params['CallbackUrl']
          @FlowType = params['FlowType']
          @FlowDescription = params['FlowDescription']
          @CustomerData = params['CustomerData']
          @CustomShowMap = params['CustomShowMap']
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
          @NeedSignReview = params['NeedSignReview']
          @CcNotifyType = params['CcNotifyType']
          @AutoSignScene = params['AutoSignScene']
        end
      end

      # 流程对应资源链接信息
      class FlowResourceUrlInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程对应Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param ResourceUrlInfos: 流程对应资源链接信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceUrlInfos: Array

        attr_accessor :FlowId, :ResourceUrlInfos

        def initialize(flowid=nil, resourceurlinfos=nil)
          @FlowId = flowid
          @ResourceUrlInfos = resourceurlinfos
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['ResourceUrlInfos'].nil?
            @ResourceUrlInfos = []
            params['ResourceUrlInfos'].each do |i|
              resourceurlinfo_tmp = ResourceUrlInfo.new
              resourceurlinfo_tmp.deserialize(i)
              @ResourceUrlInfos << resourceurlinfo_tmp
            end
          end
        end
      end

      # 电子文档的控件填充信息。按照控件类型进行相应的填充。

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

      # 表格参数headers说明
      # widthPercent Integer 表头单元格列占总表头的比例，例如1：30表示 此列占表头的30%，不填写时列宽度平均拆分；例如2：总2列，某一列填写40，剩余列可以为空，按照60计算。；例如3：总3列，某一列填写30，剩余2列可以为空，分别为(100-30)/2=35
      # content String 表头单元格内容，字数不超过100
      class FormField < TencentCloud::Common::AbstractModel
        # @param ComponentValue: 控件填充值，ComponentType和传入值格式对应关系如下：
        # <ul>
        # <li>TEXT - 普通文本控件，需输入文本字符串；</li>
        # <li>MULTI_LINE_TEXT - 多行文本控件，需输入文本字符串；</li>
        # <li>CHECK_BOX - 勾选框控件，若选中需填写ComponentValue，填写 true或者 false 字符串；</li>
        # <li>FILL_IMAGE - 图片控件，需填写ComponentValue为图片的资源 ID；</li>
        # <li>DYNAMIC_TABLE - 动态表格控件；</li>
        # <li>ATTACHMENT - 附件控件，需填写ComponentValue为附件图片的资源 ID列表，以逗号分割；</li>
        # <li>DATE - 日期控件；格式为 <b>xxxx年xx月xx日</b> 字符串；</li>
        # <li>DISTRICT - 省市区行政区控件，需填写ComponentValue为省市区行政区字符串内容；</li>
        # </ul>
        # @type ComponentValue: String
        # @param ComponentId: 表单域或控件的ID，跟ComponentName二选一，不能全为空；
        # CreateFlowsByTemplates 接口不使用此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentId: String
        # @param ComponentName: 控件的名字，跟ComponentId二选一，不能全为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentName: String
        # @param LockComponentValue: 是否锁定模板控件值，锁定后无法修改（用于嵌入式发起合同），true-锁定，false-不锁定
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockComponentValue: Boolean

        attr_accessor :ComponentValue, :ComponentId, :ComponentName, :LockComponentValue

        def initialize(componentvalue=nil, componentid=nil, componentname=nil, lockcomponentvalue=nil)
          @ComponentValue = componentvalue
          @ComponentId = componentid
          @ComponentName = componentname
          @LockComponentValue = lockcomponentvalue
        end

        def deserialize(params)
          @ComponentValue = params['ComponentValue']
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
          @LockComponentValue = params['LockComponentValue']
        end
      end

      # GetDownloadFlowUrl请求参数结构体
      class GetDownloadFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param DownLoadFlows: 文件夹数组，签署流程总数不能超过50个，一个文件夹下，不能超过20个签署流程
        # @type DownLoadFlows: Array
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :DownLoadFlows, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, downloadflows=nil, operator=nil)
          @Agent = agent
          @DownLoadFlows = downloadflows
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['DownLoadFlows'].nil?
            @DownLoadFlows = []
            params['DownLoadFlows'].each do |i|
              downloadflowinfo_tmp = DownloadFlowInfo.new
              downloadflowinfo_tmp.deserialize(i)
              @DownLoadFlows << downloadflowinfo_tmp
            end
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # GetDownloadFlowUrl返回参数结构体
      class GetDownloadFlowUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownLoadUrl: 合同（流程）下载地址
        # @type DownLoadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownLoadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownLoadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownLoadUrl = params['DownLoadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ModifyExtendedService请求参数结构体
      class ModifyExtendedServiceRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。

        # 注: 此接口 参数Agent. ProxyOperator.OpenId 需要传递超管或者法人的OpenId
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ServiceType:   扩展服务类型
        # <ul>
        #   <li>AUTO_SIGN             企业自动签（自动签署）</li>
        # <li>  OVERSEA_SIGN          企业与港澳台居民*签署合同</li>
        # <li>  MOBILE_CHECK_APPROVER 使用手机号验证签署方身份</li>
        #  <li> PAGING_SEAL           骑缝章</li>
        #  <li> DOWNLOAD_FLOW         授权渠道下载合同 </li>
        # <li>AGE_LIMIT_EXPANSION 拓宽签署方年龄限制</li>
        # </ul>
        # @type ServiceType: String
        # @param Operate: 操作类型
        # OPEN:开通
        # CLOSE:关闭
        # @type Operate: String
        # @param Endpoint: 链接跳转类型，支持以下类型
        # <ul><li>WEIXINAPP : 短链直接跳转到电子签小程序  (默认值)</li>
        # <li>APP : 第三方APP或小程序跳转电子签小程序</li></ul>
        # @type Endpoint: String

        attr_accessor :Agent, :ServiceType, :Operate, :Endpoint

        def initialize(agent=nil, servicetype=nil, operate=nil, endpoint=nil)
          @Agent = agent
          @ServiceType = servicetype
          @Operate = operate
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ServiceType = params['ServiceType']
          @Operate = params['Operate']
          @Endpoint = params['Endpoint']
        end
      end

      # ModifyExtendedService返回参数结构体
      class ModifyExtendedServiceResponse < TencentCloud::Common::AbstractModel
        # @param OperateUrl: 操作跳转链接，有效期24小时
        # 若操作时没有返回跳转链接，表示无需跳转操作，此时会直接开通/关闭服务。

        # 当操作类型是 OPEN 且 扩展服务类型是  AUTO_SIGN 或 DOWNLOAD_FLOW 或者 OVERSEA_SIGN 时返回操作链接，
        # 返回的链接需要平台方自行触达超管或法人，超管或法人点击链接完成服务开通操作。
        # @type OperateUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 持有的电子印章信息
      class OccupiedSeal < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章编号
        # @type SealId: String
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param CreateOn: 电子印章授权时间戳，单位秒
        # @type CreateOn: Integer
        # @param Creator: 电子印章授权人，电子签的UserId
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
        # @param SealType: 印章类型，OFFICIAL-企业公章，CONTRACT-合同专用章，LEGAL_PERSON_SEAL-法人章
        # @type SealType: String
        # @param IsAllTime: 用印申请是否为永久授权
        # @type IsAllTime: Boolean
        # @param AuthorizedUsers: 授权人列表
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

      # OperateChannelTemplate请求参数结构体
      class OperateChannelTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。
        # 此接口Agent.AppId必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param OperateType: 操作类型，
        # 查询:"SELECT"，
        # 删除:"DELETE"，
        # 更新:"UPDATE"
        # @type OperateType: String
        # @param TemplateId: 第三方应用平台模板库模板唯一标识
        # @type TemplateId: String
        # @param ProxyOrganizationOpenIds: 合作企业方第三方机构唯一标识数据.
        # 支持多个， 用","进行分隔
        # @type ProxyOrganizationOpenIds: String
        # @param AuthTag: 模板可见性,
        # 全部可见-"all",
        #  部分可见-"part"
        # @type AuthTag: String
        # @param Available: 当OperateType=UPDATE时，可以通过设置此字段对模板启停用状态进行操作。
        # 若此字段值为0，则不会修改模板Available，
        # 1为启用模板，
        # 2为停用模板。
        # 启用后模板可以正常领取。停用后，推送方式为【自动推送】的模板则无法被子客使用，推送方式为【手动领取】的模板则无法出现被模板库被子客领用。如果Available更新失败，会直接返回错误。
        # @type Available: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :OperateType, :TemplateId, :ProxyOrganizationOpenIds, :AuthTag, :Available, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, operatetype=nil, templateid=nil, proxyorganizationopenids=nil, authtag=nil, available=nil, operator=nil)
          @Agent = agent
          @OperateType = operatetype
          @TemplateId = templateid
          @ProxyOrganizationOpenIds = proxyorganizationopenids
          @AuthTag = authtag
          @Available = available
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @OperateType = params['OperateType']
          @TemplateId = params['TemplateId']
          @ProxyOrganizationOpenIds = params['ProxyOrganizationOpenIds']
          @AuthTag = params['AuthTag']
          @Available = params['Available']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # OperateChannelTemplate返回参数结构体
      class OperateChannelTemplateResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 腾讯电子签颁发给第三方应用平台的应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param TemplateId: 第三方应用平台模板库模板唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param OperateResult: 描述模板可见性更改的结果，和参数中Available无关。
        # 全部成功-"all-success",
        # 部分成功-"part-success",
        # 全部失败-"fail"，失败的会在FailMessageList中展示。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateResult: String
        # @param AuthTag: 模板可见性,
        # 全部可见-"all",
        # 部分可见-"part"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthTag: String
        # @param ProxyOrganizationOpenIds: 合作企业方第三方机构唯一标识数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationOpenIds: Array
        # @param FailMessageList: 操作失败信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMessageList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :TemplateId, :OperateResult, :AuthTag, :ProxyOrganizationOpenIds, :FailMessageList, :RequestId

        def initialize(appid=nil, templateid=nil, operateresult=nil, authtag=nil, proxyorganizationopenids=nil, failmessagelist=nil, requestid=nil)
          @AppId = appid
          @TemplateId = templateid
          @OperateResult = operateresult
          @AuthTag = authtag
          @ProxyOrganizationOpenIds = proxyorganizationopenids
          @FailMessageList = failmessagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @TemplateId = params['TemplateId']
          @OperateResult = params['OperateResult']
          @AuthTag = params['AuthTag']
          @ProxyOrganizationOpenIds = params['ProxyOrganizationOpenIds']
          unless params['FailMessageList'].nil?
            @FailMessageList = []
            params['FailMessageList'].each do |i|
              authfailmessage_tmp = AuthFailMessage.new
              authfailmessage_tmp.deserialize(i)
              @FailMessageList << authfailmessage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 机构信息
      class OrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationOpenId: 用户在渠道的机构编号
        # @type OrganizationOpenId: String
        # @param OrganizationId: 机构在平台的编号
        # @type OrganizationId: String
        # @param Channel: 用户渠道
        # @type Channel: String
        # @param ClientIp: 用户真实的IP
        # @type ClientIp: String
        # @param ProxyIp: 机构的代理IP
        # @type ProxyIp: String

        attr_accessor :OrganizationOpenId, :OrganizationId, :Channel, :ClientIp, :ProxyIp
        extend Gem::Deprecate
        deprecate :ClientIp, :none, 2023, 10
        deprecate :ClientIp=, :none, 2023, 10
        deprecate :ProxyIp, :none, 2023, 10
        deprecate :ProxyIp=, :none, 2023, 10

        def initialize(organizationopenid=nil, organizationid=nil, channel=nil, clientip=nil, proxyip=nil)
          @OrganizationOpenId = organizationopenid
          @OrganizationId = organizationid
          @Channel = channel
          @ClientIp = clientip
          @ProxyIp = proxyip
        end

        def deserialize(params)
          @OrganizationOpenId = params['OrganizationOpenId']
          @OrganizationId = params['OrganizationId']
          @Channel = params['Channel']
          @ClientIp = params['ClientIp']
          @ProxyIp = params['ProxyIp']
        end
      end

      # 合同文件验签单个结果结构体
      class PdfVerifyResult < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验签结果。0-签名域未签名；1-验签成功； 3-验签失败；4-未找到签名域：文件内没有签名域；5-签名值格式不正确。
        # @type VerifyResult: Integer
        # @param SignPlatform: 签署平台，如果文件是在腾讯电子签平台签署，则返回腾讯电子签，如果文件不在腾讯电子签平台签署，则返回其他平台。
        # @type SignPlatform: String
        # @param SignerName: 签署人名称
        # @type SignerName: String
        # @param SignTime: 签署时间戳，单位秒
        # @type SignTime: Integer
        # @param SignAlgorithm: 签名算法
        # @type SignAlgorithm: String
        # @param CertSn: 签名证书序列号
        # @type CertSn: String
        # @param CertNotBefore: 证书起始时间戳，单位秒
        # @type CertNotBefore: Integer
        # @param CertNotAfter: 证书过期时间戳，单位秒
        # @type CertNotAfter: Integer
        # @param SignType: 签名类型
        # @type SignType: Integer
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

        attr_accessor :VerifyResult, :SignPlatform, :SignerName, :SignTime, :SignAlgorithm, :CertSn, :CertNotBefore, :CertNotAfter, :SignType, :ComponentPosX, :ComponentPosY, :ComponentWidth, :ComponentHeight, :ComponentPage

        def initialize(verifyresult=nil, signplatform=nil, signername=nil, signtime=nil, signalgorithm=nil, certsn=nil, certnotbefore=nil, certnotafter=nil, signtype=nil, componentposx=nil, componentposy=nil, componentwidth=nil, componentheight=nil, componentpage=nil)
          @VerifyResult = verifyresult
          @SignPlatform = signplatform
          @SignerName = signername
          @SignTime = signtime
          @SignAlgorithm = signalgorithm
          @CertSn = certsn
          @CertNotBefore = certnotbefore
          @CertNotAfter = certnotafter
          @SignType = signtype
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
          @SignType = params['SignType']
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

      # PrepareFlows请求参数结构体
      class PrepareFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 多个合同（签署流程）信息，最大支持20个签署流程。
        # @type FlowInfos: Array
        # @param JumpUrl: 操作完成后的跳转地址，最大长度200
        # @type JumpUrl: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowInfos, :JumpUrl, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, flowinfos=nil, jumpurl=nil, operator=nil)
          @Agent = agent
          @FlowInfos = flowinfos
          @JumpUrl = jumpurl
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['FlowInfos'].nil?
            @FlowInfos = []
            params['FlowInfos'].each do |i|
              flowinfo_tmp = FlowInfo.new
              flowinfo_tmp.deserialize(i)
              @FlowInfos << flowinfo_tmp
            end
          end
          @JumpUrl = params['JumpUrl']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # PrepareFlows返回参数结构体
      class PrepareFlowsResponse < TencentCloud::Common::AbstractModel
        # @param ConfirmUrl: 待发起文件确认页
        # @type ConfirmUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfirmUrl, :RequestId

        def initialize(confirmurl=nil, requestid=nil)
          @ConfirmUrl = confirmurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ConfirmUrl = params['ConfirmUrl']
          @RequestId = params['RequestId']
        end
      end

      # 合作企业经办人列表信息
      class ProxyOrganizationOperator < TencentCloud::Common::AbstractModel
        # @param Id: 对应Agent-ProxyOperator-OpenId。第三方应用平台自定义，对子客企业员的唯一标识。一个OpenId在一个子客企业内唯一对应一个真实员工，不可在其他子客企业内重复使用。（例如，可以使用经办人企业名+员工身份证的hash值，需要第三方应用平台保存），最大64位字符串
        # @type Id: String
        # @param Name: 经办人姓名，最大长度50个字符
        # @type Name: String
        # @param IdCardType: 经办人身份证件类型
        # 1.ID_CARD 居民身份证
        # 2.HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证
        # 3.HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # @type IdCardType: String
        # @param IdCardNumber: 经办人证件号
        # @type IdCardNumber: String
        # @param Mobile: 经办人手机号，大陆手机号输入11位，暂不支持海外手机号。
        # @type Mobile: String
        # @param DefaultRole: 默认角色，值为以下三个对应的英文：
        # 业务管理员：admin
        # 经办人：channel-normal-operator
        # 业务员：channel-sales-man
        # @type DefaultRole: String

        attr_accessor :Id, :Name, :IdCardType, :IdCardNumber, :Mobile, :DefaultRole

        def initialize(id=nil, name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil, defaultrole=nil)
          @Id = id
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @DefaultRole = defaultrole
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @DefaultRole = params['DefaultRole']
        end
      end

      # 流程中参与方的信息结构
      class Recipient < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署人唯一标识，在通过模板发起合同的时候对应签署方ID
        # @type RecipientId: String
        # @param RecipientType: 参与者类型，默认为空。
        # ENTERPRISE-企业；
        # INDIVIDUAL-个人；
        # PROMOTER-发起方
        # @type RecipientType: String
        # @param Description: 描述信息
        # @type Description: String
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param RequireValidation: 是否需要校验，
        # true-是，
        # false-否
        # @type RequireValidation: Boolean
        # @param RequireSign: 是否必须填写，
        # true-是，
        # false-否
        # @type RequireSign: Boolean
        # @param SignType: 内部字段，签署类型
        # @type SignType: Integer
        # @param RoutingOrder: 签署顺序：数字越小优先级越高
        # @type RoutingOrder: Integer
        # @param IsPromoter: 是否是发起方，
        # true-是
        # false-否
        # @type IsPromoter: Boolean

        attr_accessor :RecipientId, :RecipientType, :Description, :RoleName, :RequireValidation, :RequireSign, :SignType, :RoutingOrder, :IsPromoter

        def initialize(recipientid=nil, recipienttype=nil, description=nil, rolename=nil, requirevalidation=nil, requiresign=nil, signtype=nil, routingorder=nil, ispromoter=nil)
          @RecipientId = recipientid
          @RecipientType = recipienttype
          @Description = description
          @RoleName = rolename
          @RequireValidation = requirevalidation
          @RequireSign = requiresign
          @SignType = signtype
          @RoutingOrder = routingorder
          @IsPromoter = ispromoter
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @RecipientType = params['RecipientType']
          @Description = params['Description']
          @RoleName = params['RoleName']
          @RequireValidation = params['RequireValidation']
          @RequireSign = params['RequireSign']
          @SignType = params['SignType']
          @RoutingOrder = params['RoutingOrder']
          @IsPromoter = params['IsPromoter']
        end
      end

      # 参与方填写控件信息
      class RecipientComponentInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 参与方Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientId: String
        # @param RecipientFillStatus: 参与方填写状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecipientFillStatus: String
        # @param IsPromoter: 是否发起方
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPromoter: Boolean
        # @param Components: 填写控件内容
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

      # 解除协议的签署人，如不指定，默认使用待解除流程（即原流程）中的签署人。
      # 注意：不支持更换C端（个人身份类型）签署人，如果原流程中含有C端签署人，默认使用原流程中的该签署人。
      # 注意：目前不支持替换C端（个人身份类型）签署人，但是可以指定C端签署人的签署方自定义控件别名，具体见参数ApproverSignRole描述。
      # 注意：当指定C端签署人的签署方自定义控件别名不空时，除参数ApproverNumber外，可以只参数ApproverSignRole。

      # 如果需要指定B端（机构身份类型）签署人，其中ReleasedApprover需要传递的参数如下：
      # ApproverNumber, OrganizationName, ApproverType必传。
      # 对于其他身份标识
      # - 子客企业指定经办人：OpenId必传，OrganizationOpenId必传；
      # - 非子客企业：Name、Mobile必传。
      class ReleasedApprover < TencentCloud::Common::AbstractModel
        # @param OrganizationName: 企业签署方工商营业执照上的企业名称，签署方为非发起方企业场景下必传，最大长度64个字符
        # @type OrganizationName: String
        # @param ApproverNumber: 签署人在原流程中的签署人列表中的顺序序号（从0开始，按顺序依次递增），如果不清楚原流程中的签署人列表，可以通过DescribeFlows接口查看
        # @type ApproverNumber: Integer
        # @param ApproverType: 签署人类型，目前仅支持
        # ORGANIZATION-企业
        # ENTERPRISESERVER-企业静默签
        # @type ApproverType: String
        # @param Name: 签署人姓名，最大长度50个字符
        # @type Name: String
        # @param IdCardType: 签署人身份证件类型
        # 1.ID_CARD 居民身份证
        # 2.HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证
        # 3.HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # @type IdCardType: String
        # @param IdCardNumber: 签署人证件号
        # @type IdCardNumber: String
        # @param Mobile: 签署人手机号，脱敏显示。大陆手机号为11位，暂不支持海外手机号
        # @type Mobile: String
        # @param OrganizationOpenId: 企业签署方在同一第三方应用下的其他合作企业OpenId，签署方为非发起方企业场景下必传，最大长度64个字符
        # @type OrganizationOpenId: String
        # @param OpenId: 用户侧第三方id，最大长度64个字符
        # 当签署方为同一第三方应用下的员工时，该字必传
        # @type OpenId: String
        # @param ApproverSignComponentType: 签署控件类型，支持自定义企业签署方的签署控件为“印章”或“签名”
        # - SIGN_SEAL-默认为印章控件类型
        # - SIGN_SIGNATURE-手写签名控件类型
        # @type ApproverSignComponentType: String
        # @param ApproverSignRole: 签署方自定义控件别名，最大长度20个字符
        # @type ApproverSignRole: String

        attr_accessor :OrganizationName, :ApproverNumber, :ApproverType, :Name, :IdCardType, :IdCardNumber, :Mobile, :OrganizationOpenId, :OpenId, :ApproverSignComponentType, :ApproverSignRole

        def initialize(organizationname=nil, approvernumber=nil, approvertype=nil, name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil, organizationopenid=nil, openid=nil, approversigncomponenttype=nil, approversignrole=nil)
          @OrganizationName = organizationname
          @ApproverNumber = approvernumber
          @ApproverType = approvertype
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @OrganizationOpenId = organizationopenid
          @OpenId = openid
          @ApproverSignComponentType = approversigncomponenttype
          @ApproverSignRole = approversignrole
        end

        def deserialize(params)
          @OrganizationName = params['OrganizationName']
          @ApproverNumber = params['ApproverNumber']
          @ApproverType = params['ApproverType']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @OrganizationOpenId = params['OrganizationOpenId']
          @OpenId = params['OpenId']
          @ApproverSignComponentType = params['ApproverSignComponentType']
          @ApproverSignRole = params['ApproverSignRole']
        end
      end

      # 解除协议文档中内容信息，包括但不限于：解除理由、解除后仍然有效的条款-保留条款、原合同事项处理-费用结算、原合同事项处理-其他事项、其他约定等。
      class RelieveInfo < TencentCloud::Common::AbstractModel
        # @param Reason: 解除理由，最大支持200个字
        # @type Reason: String
        # @param RemainInForceItem: 解除后仍然有效的条款，保留条款，最大支持200个字
        # @type RemainInForceItem: String
        # @param OriginalExpenseSettlement: 原合同事项处理-费用结算，最大支持200个字
        # @type OriginalExpenseSettlement: String
        # @param OriginalOtherSettlement: 原合同事项处理-其他事项，最大支持200个字
        # @type OriginalOtherSettlement: String
        # @param OtherDeals: 其他约定，最大支持200个字
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

      # 催办接口返回详细信息
      class RemindFlowRecords < TencentCloud::Common::AbstractModel
        # @param CanRemind: 是否能够催办，true-是，false-否
        # @type CanRemind: Boolean
        # @param FlowId: 合同id
        # @type FlowId: String
        # @param RemindMessage: 催办详情信息
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

      # 资源链接信息
      class ResourceUrlInfo < TencentCloud::Common::AbstractModel
        # @param Url: 资源链接地址，过期时间5分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Name: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Url, :Name, :Type

        def initialize(url=nil, name=nil, type=nil)
          @Url = url
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Url = params['Url']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 一码多扫签署二维码对象
      class SignQrCode < TencentCloud::Common::AbstractModel
        # @param QrCodeId: 二维码id
        # @type QrCodeId: String
        # @param QrCodeUrl: 二维码url
        # @type QrCodeUrl: String
        # @param ExpiredTime: 二维码过期时间
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

      # 一码多扫签署二维码签署信息
      class SignUrl < TencentCloud::Common::AbstractModel
        # @param AppSignUrl: 小程序签署链接
        # @type AppSignUrl: String
        # @param EffectiveTime: 签署链接有效时间
        # @type EffectiveTime: String
        # @param HttpSignUrl: 移动端签署链接
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

      # 签署链接内容
      class SignUrlInfo < TencentCloud::Common::AbstractModel
        # @param SignUrl: 签署链接，过期时间为90天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignUrl: String
        # @param Deadline: 合同过期时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deadline: Integer
        # @param SignOrder: 当流程为顺序签署此参数有效时，数字越小优先级越高，暂不支持并行签署 可选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignOrder: Integer
        # @param SignId: 签署人编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignId: String
        # @param CustomUserId: 自定义用户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomUserId: String
        # @param Name: 用户姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Mobile: 用户手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String
        # @param OrganizationName: 签署参与者机构名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String
        # @param ApproverType: 参与者类型:
        # ORGANIZATION 企业经办人
        # PERSON 自然人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverType: String
        # @param IdCardNumber: 经办人身份证号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardNumber: String
        # @param FlowId: 签署链接对应流程Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param OpenId: 企业经办人 用户在渠道的编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param FlowGroupId: 合同组签署链接对应的合同组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param SignQrcodeUrl: 二维码，在生成动态签署人跳转封面页链接时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignQrcodeUrl: String

        attr_accessor :SignUrl, :Deadline, :SignOrder, :SignId, :CustomUserId, :Name, :Mobile, :OrganizationName, :ApproverType, :IdCardNumber, :FlowId, :OpenId, :FlowGroupId, :SignQrcodeUrl
        extend Gem::Deprecate
        deprecate :CustomUserId, :none, 2023, 10
        deprecate :CustomUserId=, :none, 2023, 10

        def initialize(signurl=nil, deadline=nil, signorder=nil, signid=nil, customuserid=nil, name=nil, mobile=nil, organizationname=nil, approvertype=nil, idcardnumber=nil, flowid=nil, openid=nil, flowgroupid=nil, signqrcodeurl=nil)
          @SignUrl = signurl
          @Deadline = deadline
          @SignOrder = signorder
          @SignId = signid
          @CustomUserId = customuserid
          @Name = name
          @Mobile = mobile
          @OrganizationName = organizationname
          @ApproverType = approvertype
          @IdCardNumber = idcardnumber
          @FlowId = flowid
          @OpenId = openid
          @FlowGroupId = flowgroupid
          @SignQrcodeUrl = signqrcodeurl
        end

        def deserialize(params)
          @SignUrl = params['SignUrl']
          @Deadline = params['Deadline']
          @SignOrder = params['SignOrder']
          @SignId = params['SignId']
          @CustomUserId = params['CustomUserId']
          @Name = params['Name']
          @Mobile = params['Mobile']
          @OrganizationName = params['OrganizationName']
          @ApproverType = params['ApproverType']
          @IdCardNumber = params['IdCardNumber']
          @FlowId = params['FlowId']
          @OpenId = params['OpenId']
          @FlowGroupId = params['FlowGroupId']
          @SignQrcodeUrl = params['SignQrcodeUrl']
        end
      end

      # 企业员工信息
      class Staff < TencentCloud::Common::AbstractModel
        # @param UserId: 员工在电子签平台的用户ID
        # @type UserId: String
        # @param DisplayName: 显示的员工名
        # @type DisplayName: String
        # @param Mobile: 员工手机号
        # @type Mobile: String
        # @param Email: 员工邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param OpenId: 员工在第三方应用平台的用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param Roles: 员工角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Roles: Array
        # @param Department: 员工部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Department: :class:`Tencentcloud::Essbasic.v20210526.models.Department`
        # @param Verified: 员工是否实名
        # @type Verified: Boolean
        # @param CreatedOn: 员工创建时间戳，单位秒
        # @type CreatedOn: Integer
        # @param VerifiedOn: 员工实名时间戳，单位秒
        # @type VerifiedOn: Integer
        # @param QuiteJob: 员工是否离职：0-未离职，1-离职
        # @type QuiteJob: Integer

        attr_accessor :UserId, :DisplayName, :Mobile, :Email, :OpenId, :Roles, :Department, :Verified, :CreatedOn, :VerifiedOn, :QuiteJob

        def initialize(userid=nil, displayname=nil, mobile=nil, email=nil, openid=nil, roles=nil, department=nil, verified=nil, createdon=nil, verifiedon=nil, quitejob=nil)
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
        end
      end

      # 第三方应用集成员工角色信息
      class StaffRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RoleName: 角色名称
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

      # 同步经办人失败原因
      class SyncFailReason < TencentCloud::Common::AbstractModel
        # @param Id: 对应Agent-ProxyOperator-OpenId。第三方应用平台自定义，对子客企业员的唯一标识。一个OpenId在一个子客企业内唯一对应一个真实员工，不可在其他子客企业内重复使用。（例如，可以使用经办人企业名+员工身份证的hash值，需要第三方应用平台保存），最大64位字符串
        # @type Id: String
        # @param Message: 失败原因
        # 例如：Id不符合规范、证件号码不合法等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Id, :Message

        def initialize(id=nil, message=nil)
          @Id = id
          @Message = message
        end

        def deserialize(params)
          @Id = params['Id']
          @Message = params['Message']
        end
      end

      # SyncProxyOrganizationOperators请求参数结构体
      class SyncProxyOrganizationOperatorsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用相关信息。 此接口Agent.AppId 和 Agent.ProxyOrganizationOpenId必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param OperatorType: 操作类型，新增:"CREATE"，修改:"UPDATE"，离职:"RESIGN"
        # @type OperatorType: String
        # @param ProxyOrganizationOperators: 经办人信息列表，最大长度200
        # @type ProxyOrganizationOperators: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :OperatorType, :ProxyOrganizationOperators, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, operatortype=nil, proxyorganizationoperators=nil, operator=nil)
          @Agent = agent
          @OperatorType = operatortype
          @ProxyOrganizationOperators = proxyorganizationoperators
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @OperatorType = params['OperatorType']
          unless params['ProxyOrganizationOperators'].nil?
            @ProxyOrganizationOperators = []
            params['ProxyOrganizationOperators'].each do |i|
              proxyorganizationoperator_tmp = ProxyOrganizationOperator.new
              proxyorganizationoperator_tmp.deserialize(i)
              @ProxyOrganizationOperators << proxyorganizationoperator_tmp
            end
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # SyncProxyOrganizationOperators返回参数结构体
      class SyncProxyOrganizationOperatorsResponse < TencentCloud::Common::AbstractModel
        # @param Status: Status 同步状态,全部同步失败接口会直接报错
        # 1-成功
        # 2-部分成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param FailedList: 同步失败经办人及其失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :FailedList, :RequestId

        def initialize(status=nil, failedlist=nil, requestid=nil)
          @Status = status
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              syncfailreason_tmp = SyncFailReason.new
              syncfailreason_tmp.deserialize(i)
              @FailedList << syncfailreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SyncProxyOrganization请求参数结构体
      class SyncProxyOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用信息
        # 此接口Agent.AppId、Agent.ProxyOrganizationOpenId必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 第三方平台子客企业名称，最大长度64个字符
        # @type ProxyOrganizationName: String
        # @param BusinessLicense: 营业执照正面照(PNG或JPG) base64格式, 大小不超过5M
        # @type BusinessLicense: String
        # @param UniformSocialCreditCode: 第三方平台子客企业统一社会信用代码，最大长度200个字符
        # @type UniformSocialCreditCode: String
        # @param ProxyLegalName: 第三方平台子客企业法人/负责人姓名
        # @type ProxyLegalName: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ProxyLegalIdCardType: 第三方平台子客企业法人/负责人证件类型，默认居民身份证（ID_CARD）类型，暂不支持其他类型
        # @type ProxyLegalIdCardType: String
        # @param ProxyLegalIdCardNumber: 第三方平台子客企业法人/负责人证件号
        # @type ProxyLegalIdCardNumber: String

        attr_accessor :Agent, :ProxyOrganizationName, :BusinessLicense, :UniformSocialCreditCode, :ProxyLegalName, :Operator, :ProxyLegalIdCardType, :ProxyLegalIdCardNumber
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, proxyorganizationname=nil, businesslicense=nil, uniformsocialcreditcode=nil, proxylegalname=nil, operator=nil, proxylegalidcardtype=nil, proxylegalidcardnumber=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @BusinessLicense = businesslicense
          @UniformSocialCreditCode = uniformsocialcreditcode
          @ProxyLegalName = proxylegalname
          @Operator = operator
          @ProxyLegalIdCardType = proxylegalidcardtype
          @ProxyLegalIdCardNumber = proxylegalidcardnumber
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @BusinessLicense = params['BusinessLicense']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @ProxyLegalName = params['ProxyLegalName']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @ProxyLegalIdCardType = params['ProxyLegalIdCardType']
          @ProxyLegalIdCardNumber = params['ProxyLegalIdCardNumber']
        end
      end

      # SyncProxyOrganization返回参数结构体
      class SyncProxyOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # 复杂文档合成任务的任务信息
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 合成任务Id，可以通过 ChannelGetTaskResultApi 接口获取任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskStatus: 任务状态：READY - 任务已完成；NOTREADY - 任务未完成；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String

        attr_accessor :TaskId, :TaskStatus

        def initialize(taskid=nil, taskstatus=nil)
          @TaskId = taskid
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskStatus = params['TaskStatus']
        end
      end

      # 此结构体 (TemplateInfo) 用于描述模板的信息。

      # > **模板组成**
      # >
      # >  一个模板通常会包含以下结构信息
      # >- 模板基本信息
      # >- 签署参与方 Recipients，在模板发起合同时用于指定参与方
      # >- 填写控件 Components
      # >- 签署控件 SignComponents
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID，模板的唯一标识
        # @type TemplateId: String
        # @param TemplateName: 模板名
        # @type TemplateName: String
        # @param Description: 模板描述信息
        # @type Description: String
        # @param Components: 模板的填充控件列表
        # @type Components: Array
        # @param Recipients: 模板中的签署参与方列表
        # @type Recipients: Array
        # @param SignComponents: 模板中的签署控件列表
        # @type SignComponents: Array
        # @param TemplateType: 模板类型：1-静默签；3-普通模板
        # @type TemplateType: Integer
        # @param IsPromoter: 是否是发起人 ,已弃用
        # @type IsPromoter: Boolean
        # @param Creator: 模板的创建者信息，电子签系统用户ID
        # @type Creator: String
        # @param CreatedOn: 模板创建的时间戳，格式为Unix标准时间戳（秒）
        # @type CreatedOn: Integer
        # @param PreviewUrl: 模板的H5预览链接,有效期5分钟。
        # 可以通过浏览器打开此链接预览模板，或者嵌入到iframe中预览模板。
        # （此功能开放需要联系客户经理）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param PdfUrl: 第三方应用集成-模板PDF文件链接，有效期5分钟。
        # 请求参数WithPdfUrl=true时返回
        # （此功能开放需要联系客户经理）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PdfUrl: String
        # @param ChannelTemplateId: 本模板关联的第三方应用平台企业模板ID
        # @type ChannelTemplateId: String
        # @param ChannelTemplateName: 本模板关联的三方应用平台平台企业模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelTemplateName: String
        # @param ChannelAutoSave: 0-需要子客企业手动领取平台企业的模板(默认);
        # 1-平台自动设置子客模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelAutoSave: Integer
        # @param TemplateVersion: 模板版本，全数字字符。
        # 默认为空，初始版本为yyyyMMdd001。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateVersion: String
        # @param Available: 模板可用状态：
        # 1启用（默认）
        # 2停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Available: Integer

        attr_accessor :TemplateId, :TemplateName, :Description, :Components, :Recipients, :SignComponents, :TemplateType, :IsPromoter, :Creator, :CreatedOn, :PreviewUrl, :PdfUrl, :ChannelTemplateId, :ChannelTemplateName, :ChannelAutoSave, :TemplateVersion, :Available
        extend Gem::Deprecate
        deprecate :IsPromoter, :none, 2023, 10
        deprecate :IsPromoter=, :none, 2023, 10

        def initialize(templateid=nil, templatename=nil, description=nil, components=nil, recipients=nil, signcomponents=nil, templatetype=nil, ispromoter=nil, creator=nil, createdon=nil, previewurl=nil, pdfurl=nil, channeltemplateid=nil, channeltemplatename=nil, channelautosave=nil, templateversion=nil, available=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @Components = components
          @Recipients = recipients
          @SignComponents = signcomponents
          @TemplateType = templatetype
          @IsPromoter = ispromoter
          @Creator = creator
          @CreatedOn = createdon
          @PreviewUrl = previewurl
          @PdfUrl = pdfurl
          @ChannelTemplateId = channeltemplateid
          @ChannelTemplateName = channeltemplatename
          @ChannelAutoSave = channelautosave
          @TemplateVersion = templateversion
          @Available = available
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          unless params['Recipients'].nil?
            @Recipients = []
            params['Recipients'].each do |i|
              recipient_tmp = Recipient.new
              recipient_tmp.deserialize(i)
              @Recipients << recipient_tmp
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
          @TemplateType = params['TemplateType']
          @IsPromoter = params['IsPromoter']
          @Creator = params['Creator']
          @CreatedOn = params['CreatedOn']
          @PreviewUrl = params['PreviewUrl']
          @PdfUrl = params['PdfUrl']
          @ChannelTemplateId = params['ChannelTemplateId']
          @ChannelTemplateName = params['ChannelTemplateName']
          @ChannelAutoSave = params['ChannelAutoSave']
          @TemplateVersion = params['TemplateVersion']
          @Available = params['Available']
        end
      end

      # 此结构体 (UploadFile) 用于描述多文件上传的文件信息。
      class UploadFile < TencentCloud::Common::AbstractModel
        # @param FileBody: Base64编码后的文件内容
        # @type FileBody: String
        # @param FileName: 文件名
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
        # @param Agent: 应用相关信息，若是第三方应用集成调用 若是第三方应用集成调用,Agent.AppId 和 Agent.ProxyOrganizationOpenId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param BusinessType: 文件对应业务类型
        # 1. TEMPLATE - 模板； 文件类型：.pdf/.doc/.docx/.html
        # 2. DOCUMENT - 签署过程及签署后的合同文档/图片控件 文件类型：.pdf/.doc/.docx/.jpg/.png/.xls.xlsx/.html
        # @type BusinessType: String
        # @param FileInfos: 上传文件内容数组，最多支持20个文件
        # @type FileInfos: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :BusinessType, :FileInfos, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 10
        deprecate :Operator=, :none, 2023, 10

        def initialize(agent=nil, businesstype=nil, fileinfos=nil, operator=nil)
          @Agent = agent
          @BusinessType = businesstype
          @FileInfos = fileinfos
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @BusinessType = params['BusinessType']
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              uploadfile_tmp = UploadFile.new
              uploadfile_tmp.deserialize(i)
              @FileInfos << uploadfile_tmp
            end
          end
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # UploadFiles返回参数结构体
      class UploadFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 上传成功文件数量
        # @type TotalCount: Integer
        # @param FileIds: 文件id数组，有效期一个小时；有效期内此文件id可以反复使用
        # @type FileIds: Array
        # @param FileUrls: 文件Url
        # @type FileUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :FileIds, :FileUrls, :RequestId

        def initialize(totalcount=nil, fileids=nil, fileurls=nil, requestid=nil)
          @TotalCount = totalcount
          @FileIds = fileids
          @FileUrls = fileurls
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @FileIds = params['FileIds']
          @FileUrls = params['FileUrls']
          @RequestId = params['RequestId']
        end
      end

      # 用量明细
      class UsageDetail < TencentCloud::Common::AbstractModel
        # @param ProxyOrganizationOpenId: 子客企业唯一标识
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOrganizationName: 子客企业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationName: String
        # @param Date: 日期，当需要汇总数据时日期为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param Usage: 消耗数量
        # @type Usage: Integer
        # @param Cancel: 撤回数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cancel: Integer
        # @param FlowChannel: 消耗渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowChannel: String

        attr_accessor :ProxyOrganizationOpenId, :ProxyOrganizationName, :Date, :Usage, :Cancel, :FlowChannel

        def initialize(proxyorganizationopenid=nil, proxyorganizationname=nil, date=nil, usage=nil, cancel=nil, flowchannel=nil)
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @ProxyOrganizationName = proxyorganizationname
          @Date = date
          @Usage = usage
          @Cancel = cancel
          @FlowChannel = flowchannel
        end

        def deserialize(params)
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @Date = params['Date']
          @Usage = params['Usage']
          @Cancel = params['Cancel']
          @FlowChannel = params['FlowChannel']
        end
      end

      # 接口调用者信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param OpenId: 第三方应用平台自定义，对应第三方平台子客企业员的唯一标识。一个OpenId在一个子客企业内唯一对应一个真实员工，不可在其他子客企业内重复使用。（例如，可以使用经办人企业名+员工身份证的hash值，需要第三方应用平台保存），最大64位字符串
        # @type OpenId: String
        # @param Channel: 内部参数，暂未开放使用
        # @type Channel: String
        # @param CustomUserId: 内部参数，暂未开放使用
        # @type CustomUserId: String
        # @param ClientIp: 内部参数，暂未开放使用
        # @type ClientIp: String
        # @param ProxyIp: 内部参数，暂未开放使用
        # @type ProxyIp: String

        attr_accessor :OpenId, :Channel, :CustomUserId, :ClientIp, :ProxyIp
        extend Gem::Deprecate
        deprecate :Channel, :none, 2023, 10
        deprecate :Channel=, :none, 2023, 10
        deprecate :CustomUserId, :none, 2023, 10
        deprecate :CustomUserId=, :none, 2023, 10
        deprecate :ClientIp, :none, 2023, 10
        deprecate :ClientIp=, :none, 2023, 10
        deprecate :ProxyIp, :none, 2023, 10
        deprecate :ProxyIp=, :none, 2023, 10

        def initialize(openid=nil, channel=nil, customuserid=nil, clientip=nil, proxyip=nil)
          @OpenId = openid
          @Channel = channel
          @CustomUserId = customuserid
          @ClientIp = clientip
          @ProxyIp = proxyip
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @Channel = params['Channel']
          @CustomUserId = params['CustomUserId']
          @ClientIp = params['ClientIp']
          @ProxyIp = params['ProxyIp']
        end
      end

      # 用户的三要素：姓名，证件号，证件类型
      class UserThreeFactor < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardType: 证件类型:
        # ID_CARD 身份证
        # HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)
        # @type IdCardType: String
        # @param IdCardNumber: 证件号，如果有 X 请大写
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

      # 主题配置
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

