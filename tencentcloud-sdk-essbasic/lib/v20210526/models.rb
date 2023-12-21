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
      # 应用相关信息, 整体应用的层级图如下

      # 注:
      #   1. `不同的业务系统可以采用不同的应用，不同应用下的数据是隔离的,  应用A中的某个企业已经实名, 在应用B中此企业还需要重新认证`
      class Agent < TencentCloud::Common::AbstractModel
        # @param AppId: 应用的唯一标识(由电子签平台自动生成)。不同的业务系统可以采用不同的AppId，不同AppId下的数据是隔离的。可以由控制台开发者中心-应用集成自主生成。位置如下:

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/fac77e0d3f28aaec56669f67e65c8db8.png)
        # @type AppId: String
        # @param ProxyOrganizationOpenId: 第三方应用平台自定义，对应第三方平台子客企业的唯一标识。一个第三方平台子客企业主体与子客企业ProxyOrganizationOpenId是一一对应的，不可更改，不可重复使用。（例如，可以使用企业名称的hash值，或者社会统一信用代码的hash值，或者随机hash值，需要第三方应用平台保存），最大64位字符串
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOperator: 第三方平台子客企业中的员工/经办人，通过第三方应用平台进入电子签完成实名、且被赋予相关权限后，可以参与到企业资源的管理或签署流程中。
        # @type ProxyOperator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ProxyAppId: **不用填写**，在第三方平台子客企业开通电子签后，会生成唯一的子客应用Id（ProxyAppId）用于代理调用时的鉴权，在子客开通的回调中获取。
        # @type ProxyAppId: String
        # @param ProxyOrganizationId: 内部参数，暂未开放使用
        # @type ProxyOrganizationId: String

        attr_accessor :AppId, :ProxyOrganizationOpenId, :ProxyOperator, :ProxyAppId, :ProxyOrganizationId
        extend Gem::Deprecate
        deprecate :ProxyOrganizationId, :none, 2023, 12
        deprecate :ProxyOrganizationId=, :none, 2023, 12

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

        # 在<a href="https://qian.tencent.com/developers/company/dynamic_signer" target="_blank">动态补充签署人</a>场景下，可以用此编号确定参与方
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignId: String
        # @param RecipientId: 签署方角色编号

        # 在<a href="https://qian.tencent.com/developers/company/dynamic_signer" target="_blank">动态补充签署人</a>场景下，可以用此编号确定参与方
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
        # @param NoRefuse: 是否可以拒签 默认false-可以拒签 true-不可以拒签
        # @type NoRefuse: Boolean
        # @param NoTransfer: 是否可以转发 默认false-可以转发 true-不可以转发
        # @type NoTransfer: Boolean
        # @param HideOneKeySign: 是否隐藏一键签署 默认false-不隐藏true-隐藏
        # @type HideOneKeySign: Boolean
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

        attr_accessor :NoRefuse, :NoTransfer, :HideOneKeySign, :FillType, :FlowReadLimit

        def initialize(norefuse=nil, notransfer=nil, hideonekeysign=nil, filltype=nil, flowreadlimit=nil)
          @NoRefuse = norefuse
          @NoTransfer = notransfer
          @HideOneKeySign = hideonekeysign
          @FillType = filltype
          @FlowReadLimit = flowreadlimit
        end

        def deserialize(params)
          @NoRefuse = params['NoRefuse']
          @NoTransfer = params['NoTransfer']
          @HideOneKeySign = params['HideOneKeySign']
          @FillType = params['FillType']
          @FlowReadLimit = params['FlowReadLimit']
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
        # @param ProxyOrganizationOpenId: 第三方平台子客企业的唯一标识，长度不能超过64，只能由字母和数字组成。开发者可自定义此字段的值，并需要保存此 ID 以便进行后续操作。

        # 一个第三方平台子客企业主体与子客企业 ProxyOrganizationOpenId 是一一对应的，不可更改，不可重复使用。例如，可以使用企业名称的哈希值，或者社会统一信用代码的哈希值，或者随机哈希值。
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

      # 企业扩展服务授权列表详情
      class AuthInfoDetail < TencentCloud::Common::AbstractModel
        # @param Type: 扩展服务类型，和入参一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Name: 扩展服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param HasAuthUserList: 授权员工列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasAuthUserList: Array
        # @param HasAuthOrganizationList: 授权企业列表（企业自动签时，该字段有值）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasAuthOrganizationList: Array
        # @param AuthUserTotal: 授权员工列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthUserTotal: Integer
        # @param AuthOrganizationTotal: 授权企业列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param UserInfo: 自动签开通个人用户信息, 包括名字,身份证等
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param CertInfoCallback: 是否回调证书信息:
        # <ul><li>**false**: 不需要(默认)</li>
        # <li>**true**:需要</li></ul>
        # @type CertInfoCallback: Boolean
        # @param UserDefineSeal: 是否支持用户自定义签名印章:
        # <ul><li>**false**: 不能自己定义(默认)</li>
        # <li>**true**: 可以自己定义</li></ul>
        # @type UserDefineSeal: Boolean
        # @param SealImgCallback: 回调中是否需要自动签将要使用的印章（签名）图片的 base64:
        # <ul><li>**false**: 不需要(默认)</li>
        # <li>**true**: 需要</li></ul>
        # @type SealImgCallback: Boolean
        # @param CallbackUrl: 回调链接，如果渠道已经配置了，可以不传
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
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        # @type FlowType: String
        # @param FlowDescription: 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        # @type FlowDescription: String
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type Deadline: Integer
        # @param Unordered: 合同流程的签署顺序类型：
        # **false**：(默认)有序签署, 本合同多个参与人需要依次签署
        # **true**：无序签署, 本合同多个参与人没有先后签署限制
        # @type Unordered: Boolean
        # @param IntelligentStatus: 是否打开智能添加填写区(默认开启，打开:"OPEN" 关闭："CLOSE")
        # @type IntelligentStatus: String
        # @param FormFields: 填写控件内容， 填写的控制的ID-填写的内容对列表
        # @type FormFields: Array
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param UserData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为1000长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的回调通知模块。
        # @type UserData: String
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param NeedCreateReview: 发起方企业的签署人进行发起操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。

        # 若设置为true，发起审核结果需通过接口 [提交企业签署流程审批结果](https://qian.tencent.com/developers/partnerApis/operateFlows/ChannelCreateFlowSignReview)通知电子签，审核通过后，发起方企业签署人方可进行发起操作，否则会阻塞其发起操作。

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

      # 用户计费使用情况详情
      class BillUsageDetail < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param OperatorName: 合同经办人名称
        # 如果有多个经办人用分号隔开。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorName: String
        # @param CreateOrganizationName: 发起方组织机构名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateOrganizationName: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # 该名称还将用于合同签署完成后的下载文件名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowName: String
        # @param Status: 当前合同状态,如下是状态码对应的状态。
        # 0-还没有发起
        # 1-等待签署
        # 2-部分签署
        # 3-拒签
        # 4-已签署
        # 5-已过期
        # 6-已撤销
        # 7-还没有预发起
        # 8-等待填写
        # 9-部分填写
        # 10-拒填
        # 11-已解除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param QuotaType: 套餐类型
        # 对应关系如下
        # CloudEnterprise-企业版合同
        # SingleSignature-单方签章
        # CloudProve-签署报告
        # CloudOnlineSign-腾讯会议在线签约
        # ChannelWeCard-微工卡
        # SignFlow-合同套餐
        # SignFace-签署意愿（人脸识别）
        # SignPassword-签署意愿（密码）
        # SignSMS-签署意愿（短信）
        # PersonalEssAuth-签署人实名（腾讯电子签认证）
        # PersonalThirdAuth-签署人实名（信任第三方认证）
        # OrgEssAuth-签署企业实名
        # FlowNotify-短信通知
        # AuthService-企业工商信息查询
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaType: String
        # @param UseCount: 合同使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseCount: Integer
        # @param CostTime: 消耗的时间戳，格式为Unix标准时间戳（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Integer
        # @param QuotaName: 消耗的套餐名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaName: String
        # @param CostType: 消耗类型
        # 1.扣费 2.撤销返还
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostType: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 要撤销的合同流程ID列表，最多100个，超过100不处理
        # @type FlowIds: Array
        # @param CancelMessage: 撤回原因，长度不能超过200，只能由中文、字母、数字和下划线组成。

        # 备注:`如果不传递撤回原因，那么默认撤回原因是 "自动撤销（通过接口实现）"`
        # @type CancelMessage: String
        # @param CancelMessageFormat: 撤销理由自定义格式,  会展示在合同预览的界面中,  可以选择下面的组合方式：

        # **0** : 默认格式,  合同封面页面会展示为: 发起方-企业名称-撤销的经办人名字以**CancelMessage**的理由撤销当前合同
        # **1** :  合同封面页面会展示为:  发起方以**CancelMessage**的理由撤销当前合同
        # **2** : 保留企业名称,  合同封面页面会展示为:  发起方-企业名称以**CancelMessage**的理由撤销当前合同
        # **3** : 保留企业名称+经办人名字,  合同封面页面会展示为: 发起方-企业名称-撤销的经办人名字以**CancelMessage**的理由撤销当前合同

        # 注: `CancelMessage为撤销当前合同的理由`

        # ![image](https://qcloudimg.tencent-cloud.cn/raw/f16cf37dbb3a09d6569877f093b92204/channel_ChannelCancelFlow.png)

        # @type CancelMessageFormat: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :CancelMessage, :CancelMessageFormat, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param FailMessages: 签署流程批量撤销失败原因，错误信息与流程Id一一对应，成功为"", 失败则对应失败原因

        # 注:  `如果全部撤销成功, 此数组为空数组`
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

      # 用户计费使用情况详情
      class ChannelBillUsageDetail < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param OperatorName: 合同经办人名称
        # 如果有多个经办人用分号隔开。
        # @type OperatorName: String
        # @param CreateOrganizationName: 发起方组织机构名称
        # @type CreateOrganizationName: String
        # @param FlowName: 合同流程的名称。
        # @type FlowName: String
        # @param FlowStatus: 合同流程当前的签署状态, 会存在下列的状态值
        # <ul>
        # <li>**INIT**: 合同创建</li>
        # <li>**PART**: 合同签署中(至少有一个签署方已经签署)</li>
        # <li>**REJECT**: 合同拒签</li>
        # <li>**ALL**: 合同签署完成</li>
        # <li>**DEADLINE**: 合同流签(合同过期)</li>
        # <li>**CANCEL**: 合同撤回</li>
        # <li>**RELIEVED**: 解除协议（已解除）</li>
        # <li>**WILLEXPIRE**: 合同即将过期</li>
        # <li>**EXCEPTION**: 合同异常</li>
        # </ul>
        # @type FlowStatus: String
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

        attr_accessor :FlowId, :OperatorName, :CreateOrganizationName, :FlowName, :FlowStatus, :QuotaType, :UseCount, :CostTime, :QuotaName, :CostType, :Remark

        def initialize(flowid=nil, operatorname=nil, createorganizationname=nil, flowname=nil, flowstatus=nil, quotatype=nil, usecount=nil, costtime=nil, quotaname=nil, costtype=nil, remark=nil)
          @FlowId = flowid
          @OperatorName = operatorname
          @CreateOrganizationName = createorganizationname
          @FlowName = flowname
          @FlowStatus = flowstatus
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
          @FlowStatus = params['FlowStatus']
          @QuotaType = params['QuotaType']
          @UseCount = params['UseCount']
          @CostTime = params['CostTime']
          @QuotaName = params['QuotaName']
          @CostType = params['CostType']
          @Remark = params['Remark']
        end
      end

      # ChannelCancelFlow请求参数结构体
      class ChannelCancelFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 要撤销的合同流程ID
        # @type FlowId: String
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param CancelMessage: 撤回原因，长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type CancelMessage: String
        # @param CancelMessageFormat: 撤销理由自定义格式,  会展示在合同预览的界面中,  可以选择下面的组合方式：

        # **0** : 默认格式,  合同封面页面会展示为: 发起方-企业名称-撤销的经办人名字以**CancelMessage**的理由撤销当前合同
        # **1** :  合同封面页面会展示为:  发起方以**CancelMessage**的理由撤销当前合同
        # **2** : 保留企业名称,  合同封面页面会展示为:  发起方-企业名称以**CancelMessage**的理由撤销当前合同
        # **3** : 保留企业名称+经办人名字,  合同封面页面会展示为: 发起方-企业名称-撤销的经办人名字以**CancelMessage**的理由撤销当前合同

        # 注: `CancelMessage为撤销当前合同的理由`

        # ![image](https://dyn.ess.tencent.cn/guide/capi/channel_ChannelCancelFlow.png)
        # @type CancelMessageFormat: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowId, :Agent, :CancelMessage, :CancelMessageFormat, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param QrCodeId: 需要取消签署的二维码ID，为32位字符串。由[创建一码多扫流程签署二维码](https://qian.tencent.com/developers/partnerApis/templates/ChannelCreateMultiFlowSignQRCode)返回
        # @type QrCodeId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :QrCodeId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 要撤销的合同流程ID列表，最多100个，超过100不处理
        # @type FlowIds: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param BatchCancelFlowUrl: 批量撤销合同的URL链接, 需要在手机端打开, 有效期24小时
        # @type BatchCancelFlowUrl: String
        # @param FailMessages: 与入参的FlowIds数组一致,   成功生成到撤销链接中,则为"",   不能撤销合同则为失败原因
        # @type FailMessages: Array
        # @param UrlExpireOn: 签署撤销链接的过期时间(格式为:年-月-日 时:分:秒), 默认是生成链接的24小时后失效

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

      # ChannelCreateBatchQuickSignUrl请求参数结构体
      class ChannelCreateBatchQuickSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param FlowApproverInfo: 批量签署的流程签署人，其中姓名(ApproverName)、参与人类型(ApproverType)必传，手机号(ApproverMobile)和证件信息(ApproverIdCardType、ApproverIdCardNumber)可任选一种或全部传入。
        # 注:
        # `1. ApproverType目前只支持个人类型的签署人。`
        # `2. 签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。`
        # `3. 当需要通过短信验证码签署时，手机号ApproverMobile需要与发起合同时填写的用户手机号一致。`
        # @type FlowApproverInfo: :class:`Tencentcloud::Essbasic.v20210526.models.FlowApproverInfo`
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
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
        # @param SignTypeSelector: 生成H5签署链接时，您可以指定签署方签署合同的认证校验方式的选择模式，可传递一下值：
        # <ul><li>**0**：签署方自行选择，签署方可以从预先指定的认证方式中自由选择；</li>
        # <li>**1**：自动按顺序首位推荐，签署方无需选择，系统会优先推荐使用第一种认证方式。</li></ul>
        # 注：
        # `不指定该值时，默认为签署方自行选择。`
        # @type SignTypeSelector: Integer

        attr_accessor :FlowApproverInfo, :Agent, :FlowIds, :FlowGroupId, :JumpUrl, :SignatureTypes, :ApproverSignTypes, :SignTypeSelector

        def initialize(flowapproverinfo=nil, agent=nil, flowids=nil, flowgroupid=nil, jumpurl=nil, signaturetypes=nil, approversigntypes=nil, signtypeselector=nil)
          @FlowApproverInfo = flowapproverinfo
          @Agent = agent
          @FlowIds = flowids
          @FlowGroupId = flowgroupid
          @JumpUrl = jumpurl
          @SignatureTypes = signaturetypes
          @ApproverSignTypes = approversigntypes
          @SignTypeSelector = signtypeselector
        end

        def deserialize(params)
          unless params['FlowApproverInfo'].nil?
            @FlowApproverInfo = FlowApproverInfo.new
            @FlowApproverInfo.deserialize(params['FlowApproverInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
          @FlowGroupId = params['FlowGroupId']
          @JumpUrl = params['JumpUrl']
          @SignatureTypes = params['SignatureTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
          @SignTypeSelector = params['SignTypeSelector']
        end
      end

      # ChannelCreateBatchQuickSignUrl返回参数结构体
      class ChannelCreateBatchQuickSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param FlowApproverUrlInfo: 签署人签署链接信息
        # @type FlowApproverUrlInfo: :class:`Tencentcloud::Essbasic.v20210526.models.FlowApproverUrlInfo`
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
        # <li>若为子客企业，请确保员工已经加入企业。</li>
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证,  合同会领取给对应的Agent.ProxyOperator.OpenId指定的员工来处理
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 需要领取的合同流程的ID列表
        # @type FlowIds: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ResourceType: 需要进行转换的资源文件类型
        # 支持的文件类型如下：
        # <ul><li>doc</li>
        # <li>docx</li>
        # <li>xls</li>
        # <li>xlsx</li>
        # <li>jpg</li>
        # <li>jpeg</li>
        # <li>png</li>
        # <li>bmp</li>
        # <li>html</li>
        # <li>txt</li></ul>
        # @type ResourceType: String
        # @param ResourceName: 需要进行转换操作的文件资源名称，带资源后缀名。

        # 注:  `资源名称长度限制为256个字符`
        # @type ResourceName: String
        # @param ResourceId: 需要进行转换操作的文件资源Id，通过<a href="https://qian.tencent.com/developers/partnerApis/files/UploadFiles" target="_blank">UploadFiles</a>接口获取文件资源Id。

        # 注:  `目前，此接口仅支持单个文件进行转换。`
        # @type ResourceId: String
        # @param Operator: 调用方用户信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :ResourceType, :ResourceName, :ResourceId, :Operator, :Organization
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

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
        # @param TaskId: 接口返回的文件转换任务Id，可以调用接口<a href="https://qian.tencent.com/developers/partnerApis/files/ChannelGetTaskResultApi" target="_blank">查询转换任务状态</a>获取转换任务的状态和转换后的文件资源Id。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param EmbedType: 要生成WEB嵌入界面的类型, 可以选择的值如下:

        # <ul>
        # <li>CREATE_SEAL: 生成创建印章的嵌入页面</li>
        # <li>CREATE_TEMPLATE：生成创建模板的嵌入页面</li>
        # <li>MODIFY_TEMPLATE：生成修改模板的嵌入页面</li>
        # <li>PREVIEW_TEMPLATE：生成预览模板的嵌入页面</li>
        # <li>PREVIEW_FLOW：生成预览合同文档的嵌入页面</li>
        # <li>PREVIEW_FLOW_DETAIL：生成预览合同详情的嵌入页面</li>
        # <li>PREVIEW_SEAL_LIST：生成预览印章列表的嵌入页面</li>
        # <li>PREVIEW_SEAL_DETAIL：生成预览印章详情的嵌入页面</li>
        # <li>EXTEND_SERVICE：生成扩展服务的嵌入页面</li>
        # </ul>
        # @type EmbedType: String
        # @param BusinessId: WEB嵌入的业务资源ID

        # <ul>
        # <li>当EmbedType取值MODIFY_TEMPLATE，PREVIEW_TEMPLATE时需要填写模板id作为BusinessId</li>
        # <li>当EmbedType取值PREVIEW_FLOW，PREVIEW_FLOW_DETAIL时需要填写合同id作为BusinessId</li>
        # <li>当EmbedType取值PREVIEW_SEAL_DETAIL需要填写印章id作为BusinessId</li>
        # </ul>
        # @type BusinessId: String
        # @param HiddenComponents: 是否隐藏控件，只有预览模板时生效
        # @type HiddenComponents: Boolean
        # @param Operator: 渠道操作者信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param UserData: 用户自定义参数
        # <ul>
        # <li>目前仅支持EmbedType=CREATE_TEMPLATE时传入</li>
        # <li>指定后，创建，编辑，删除模板时，回调都会携带该userData</li>
        # <li>支持的格式：json字符串的BASE64编码字符串</li>
        # <li>示例：<ul>
        #                  <li>json字符串：{"ComeFrom":"xxx"}，BASE64编码：eyJDb21lRnJvbSI6Inh4eCJ9</li>
        #                  <li>eyJDb21lRnJvbSI6Inh4eCJ9，为符合要求的userData数据格式</li>
        # </ul>
        # </li>
        # </ul>
        # @type UserData: String

        attr_accessor :Agent, :EmbedType, :BusinessId, :HiddenComponents, :Operator, :UserData
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, embedtype=nil, businessid=nil, hiddencomponents=nil, operator=nil, userdata=nil)
          @Agent = agent
          @EmbedType = embedtype
          @BusinessId = businessid
          @HiddenComponents = hiddencomponents
          @Operator = operator
          @UserData = userdata
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
          @UserData = params['UserData']
        end
      end

      # ChannelCreateEmbedWebUrl返回参数结构体
      class ChannelCreateEmbedWebUrlResponse < TencentCloud::Common::AbstractModel
        # @param WebUrl: 嵌入的web链接，5分钟有效
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 合同流程ID，为32位字符串。 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param Approvers: 补充企业签署人信息。

        # - 如果发起方指定的补充签署人是企业签署人，则需要提供企业名称或者企业OpenId；

        # - 如果不指定，则使用姓名和手机号进行补充。
        # @type Approvers: Array
        # @param FillApproverType: 签署人信息补充方式

        # <ul><li>**1**: 表示往未指定签署人的节点，添加一个明确的签署人，支持企业或个人签署方。</li></ul>
        # @type FillApproverType: Integer
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowId, :Approvers, :FillApproverType, :Operator

        def initialize(agent=nil, flowid=nil, approvers=nil, fillapprovertype=nil, operator=nil)
          @Agent = agent
          @FlowId = flowid
          @Approvers = approvers
          @FillApproverType = fillapprovertype
          @Operator = operator
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
          @FillApproverType = params['FillApproverType']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
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
        # **注**: `有序签署时以传入FlowApprovers数组的顺序作为签署顺序`
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
        # **注**: `发起后添加控件功能不支持添加签批控件`
        # @type SignBeanTag: Integer
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param CcNotifyType: 可以设置以下时间节点来给抄送人发送短信通知来查看合同内容：
        # <ul><li> **0**：合同发起时通知（默认值）</li>
        # <li> **1**：签署完成后通知</li></ul>
        # @type CcNotifyType: Integer
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：电子处方单（医疗自动签）  </li><li> **OTHER** :  通用场景</li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
        # @type AutoSignScene: String
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowName, :FlowDescription, :FlowApprovers, :FileIds, :Components, :Deadline, :CallbackUrl, :Unordered, :FlowType, :CustomShowMap, :CustomerData, :NeedSignReview, :ApproverVerifyType, :SignBeanTag, :CcInfos, :CcNotifyType, :AutoSignScene, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
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
        # @param FlowFileInfos: 合同组中每个合同签署流程的信息，合同组中最少包含2个合同，不能超过50个合同。
        # @type FlowFileInfos: Array
        # @param FlowGroupName: 合同组的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowGroupName: String
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ApproverVerifyType: 合同组中签署人校验和认证的方式：
        # <ul><li>**VerifyCheck**：人脸识别（默认）</li>
        # <li>**MobileCheck**：手机号验证</li></ul>
        # 注意：
        # `1. MobileCheck 方式，未实名的个人/自然人签署方无需进行人脸识别实名认证即可查看合同（但签署合同时仍然需要人脸实名），企业签署方需经过人脸认证。`
        # `2. 合同组的校验和认证的方式会优先使用，会覆盖合同组中单个合同和合同签署方认证方式的限制配置。`
        # @type ApproverVerifyType: String
        # @param FlowGroupOptions: 合同组的签署配置项信息，例如在合同组签署过程中，是否需要对每个子合同进行独立的意愿确认。
        # @type FlowGroupOptions: :class:`Tencentcloud::Essbasic.v20210526.models.FlowGroupOptions`
        # @param Operator: 操作者的信息，此参数不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowFileInfos, :FlowGroupName, :Agent, :ApproverVerifyType, :FlowGroupOptions, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param FlowGroupId: 合同组ID，为32位字符串。
        # 建议开发者妥善保存此合同组ID，以便于顺利进行后续操作。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param FlowIds: 合同组中每个合同流程ID，每个ID均为32位字符串。

        # 注:
        # `此数组的顺序和入参中的FlowGroupInfos顺序一致`
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 合同组中每个合同签署流程的信息，合同组中最少包含2个合同，不能超过50个合同。
        # @type FlowInfos: Array
        # @param FlowGroupName: 合同组的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
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
        # @param FlowGroupId: 合同组ID，为32位字符串。
        # 建议开发者妥善保存此合同组ID，以便于顺利进行后续操作。
        # @type FlowGroupId: String
        # @param FlowIds: 合同组中每个合同流程ID，每个ID均为32位字符串。

        # 注:
        # `此数组的顺序和入参中的FlowInfos顺序一致`
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 需执行催办的合同流程ID数组，最多支持100个。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # 可登录腾讯电子签控制台，在 "合同"->"合同中心" 中查看某个合同的FlowId(在页面中展示为合同ID)。
        # @type FlowId: String
        # @param FlowApproverInfos: 流程签署人列表，其中结构体的Name，Mobile和ApproverType必传，其他可不传。
        # 注:
        # `1. ApproverType目前只支持个人(PERSON)类型的签署人。`
        # `2. 签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。`
        # @type FlowApproverInfos: Array
        # @param Operator: 用户信息，暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 机构信息，暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，此链接及支持http://和https://，最大长度1000个字符。(建议https协议)
        # @type JumpUrl: String

        attr_accessor :Agent, :FlowId, :FlowApproverInfos, :Operator, :Organization, :JumpUrl
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 合同模板ID，为32位字符串。
        # @type TemplateId: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。 该名称还将用于合同签署完成后的下载文件名。
        # @type FlowName: String
        # @param MaxFlowNum: 通过此二维码可发起的流程最大限额，如未明确指定，默认为5份。 一旦发起流程数超越该限制，该二维码将自动失效。
        # @type MaxFlowNum: Integer
        # @param FlowEffectiveDay: 合同流程的签署有效期限，若未设定签署截止日期，则默认为自合同流程创建起的7天内截止。 若在签署截止日期前未完成签署，合同状态将变更为已过期，从而导致合同无效。 最长设定期限不得超过30天。
        # @type FlowEffectiveDay: Integer
        # @param QrEffectiveDay: 二维码的有效期限，默认为7天，最高设定不得超过90天。 一旦超过二维码的有效期限，该二维码将自动失效。
        # @type QrEffectiveDay: Integer
        # @param Restrictions: 指定签署人信息。 在指定签署人后，仅允许特定签署人通过扫描二维码进行签署。
        # @type Restrictions: Array
        # @param ApproverComponentLimitTypes: 指定签署方经办人控件类型是个人印章签署控件（SIGN_SIGNATURE） 时，可选的签名方式。
        # @type ApproverComponentLimitTypes: Array
        # @param CallbackUrl: 已废弃，回调配置统一使用企业应用管理-应用集成-第三方应用中的配置
        # <br/> 通过一码多扫二维码发起的合同，回调消息可参考文档 https://qian.tencent.com/developers/partner/callback_types_contracts_sign
        # <br/> 用户通过签署二维码发起合同时，因企业额度不足导致失败 会触发签署二维码相关回调,具体参考文档 https://qian.tencent.com/developers/partner/callback_types_commons#%E7%AD%BE%E7%BD%B2%E4%BA%8C%E7%BB%B4%E7%A0%81%E7%9B%B8%E5%85%B3%E5%9B%9E%E8%B0%83
        # @type CallbackUrl: String
        # @param ApproverRestrictions: 限制二维码用户条件（已弃用）
        # @type ApproverRestrictions: :class:`Tencentcloud::Essbasic.v20210526.models.ApproverRestriction`
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :TemplateId, :FlowName, :MaxFlowNum, :FlowEffectiveDay, :QrEffectiveDay, :Restrictions, :ApproverComponentLimitTypes, :CallbackUrl, :ApproverRestrictions, :Operator
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12
        deprecate :ApproverRestrictions, :none, 2023, 12
        deprecate :ApproverRestrictions=, :none, 2023, 12
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, templateid=nil, flowname=nil, maxflownum=nil, floweffectiveday=nil, qreffectiveday=nil, restrictions=nil, approvercomponentlimittypes=nil, callbackurl=nil, approverrestrictions=nil, operator=nil)
          @Agent = agent
          @TemplateId = templateid
          @FlowName = flowname
          @MaxFlowNum = maxflownum
          @FlowEffectiveDay = floweffectiveday
          @QrEffectiveDay = qreffectiveday
          @Restrictions = restrictions
          @ApproverComponentLimitTypes = approvercomponentlimittypes
          @CallbackUrl = callbackurl
          @ApproverRestrictions = approverrestrictions
          @Operator = operator
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
          unless params['ApproverComponentLimitTypes'].nil?
            @ApproverComponentLimitTypes = []
            params['ApproverComponentLimitTypes'].each do |i|
              approvercomponentlimittype_tmp = ApproverComponentLimitType.new
              approvercomponentlimittype_tmp.deserialize(i)
              @ApproverComponentLimitTypes << approvercomponentlimittype_tmp
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
        end
      end

      # ChannelCreateMultiFlowSignQRCode返回参数结构体
      class ChannelCreateMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 签署二维码的基本信息，用于创建二维码，用户可扫描该二维码进行签署操作。
        # @type QrCode: :class:`Tencentcloud::Essbasic.v20210526.models.SignQrCode`
        # @param SignUrls: 流程签署二维码的签署信息，适用于客户系统整合二维码功能。通过链接，用户可直接访问电子签名小程序并签署合同。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。

        # 渠道应用标识: Agent.AppId
        # 第三方平台子客企业标识: Agent.ProxyOrganizationOpenId
        # 第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId
        # 第三方平台子客企业和员工必须已经经过实名认证
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
        # @param ResourceType: 资源类型，取值有：
        # <ul><li> **1**：模板</li>
        # <li> **2**：文件（默认值）</li></ul>
        # @type ResourceType: Integer
        # @param FlowInfo: 要创建的合同信息
        # @type FlowInfo: :class:`Tencentcloud::Essbasic.v20210526.models.BaseFlowInfo`
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ResourceId: 资源id，与ResourceType相对应，取值范围：
        # <ul>
        # <li>文件Id（通过UploadFiles获取文件资源Id）</li>
        # <li>模板Id</li>
        # </ul>
        # @type ResourceId: String
        # @param FlowOption: 合同流程配置信息，用于配置发起合同时定制化如是否允许修改，某些按钮的隐藏等逻辑
        # @type FlowOption: :class:`Tencentcloud::Essbasic.v20210526.models.CreateFlowOption`
        # @param FlowApproverList: 合同签署人信息
        # @type FlowApproverList: Array
        # @param FlowId: 合同Id：用于通过一个已发起的合同快速生成一个发起流程web链接
        # 注: `该参数必须是一个待发起审核的合同id，并且还未审核通过`
        # @type FlowId: String
        # @param NeedPreview: 该参数不可用，请通过获取 web 可嵌入接口获取合同流程预览 URL
        # @type NeedPreview: Boolean
        # @param Organization: 企业机构信息，不用传
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param Operator: 操作人（用户）信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :ResourceType, :FlowInfo, :Agent, :ResourceId, :FlowOption, :FlowApproverList, :FlowId, :NeedPreview, :Organization, :Operator
        extend Gem::Deprecate
        deprecate :NeedPreview, :none, 2023, 12
        deprecate :NeedPreview=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(resourcetype=nil, flowinfo=nil, agent=nil, resourceid=nil, flowoption=nil, flowapproverlist=nil, flowid=nil, needpreview=nil, organization=nil, operator=nil)
          @ResourceType = resourcetype
          @FlowInfo = flowinfo
          @Agent = agent
          @ResourceId = resourceid
          @FlowOption = flowoption
          @FlowApproverList = flowapproverlist
          @FlowId = flowid
          @NeedPreview = needpreview
          @Organization = organization
          @Operator = operator
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['FlowInfo'].nil?
            @FlowInfo = BaseFlowInfo.new
            @FlowInfo.deserialize(params['FlowInfo'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ResourceId = params['ResourceId']
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
        # @param PrepareFlowUrl: 发起的合同嵌入链接， 可以直接点击进入进行合同发起， 有效期为5分钟
        # @type PrepareFlowUrl: String
        # @param PreviewFlowUrl: 合同发起后预览链接， 注意此时合同并未发起，仅只是展示效果， 有效期为5分钟
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param UserName: 个人用户姓名
        # @type UserName: String
        # @param IdCardNumber: 证件号码, 应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param SealName: 电子印章名字，1-50个中文字符
        # 注:`同一企业下电子印章名字不能相同`
        # @type SealName: String
        # @param SealImage: 电子印章图片base64编码，大小不超过10M（原始图片不超过5M），只支持PNG或JPG图片格式。

        # @type SealImage: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param IdCardType: 证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证 (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li>
        # <li>OTHER_CARD_TYPE : 其他</li></ul>

        # 注: `其他证件类型为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type IdCardType: String
        # @param SealImageCompress: 是否开启印章图片压缩处理，默认不开启，如需开启请设置为 true。当印章超过 2M 时建议开启，开启后图片的 hash 将发生变化。
        # @type SealImageCompress: Boolean
        # @param Mobile: 手机号码；当需要开通自动签时，该参数必传
        # @type Mobile: String
        # @param EnableAutoSign: 是否开通自动签，该功能需联系运营工作人员开通后使用
        # @type EnableAutoSign: Boolean
        # @param LicenseType: 设置用户开通自动签时是否绑定个人自动签账号许可。一旦绑定后，将扣减购买的个人自动签账号许可一次（1年有效期），不可解绑释放。不传默认为绑定自动签账号许可。 0-绑定个人自动签账号许可，开通后将扣减购买的个人自动签账号许可一次 1-不绑定，发起合同时将按标准合同套餐进行扣减
        # @type LicenseType: Integer
        # @param SceneKey: <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String

        attr_accessor :Agent, :UserName, :IdCardNumber, :SealName, :SealImage, :Operator, :IdCardType, :SealImageCompress, :Mobile, :EnableAutoSign, :LicenseType, :SceneKey

        def initialize(agent=nil, username=nil, idcardnumber=nil, sealname=nil, sealimage=nil, operator=nil, idcardtype=nil, sealimagecompress=nil, mobile=nil, enableautosign=nil, licensetype=nil, scenekey=nil)
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
          @SceneKey = scenekey
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
          @SceneKey = params['SceneKey']
        end
      end

      # ChannelCreatePreparedPersonalEsign返回参数结构体
      class ChannelCreatePreparedPersonalEsignResponse < TencentCloud::Common::AbstractModel
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

      # ChannelCreateReleaseFlow请求参数结构体
      class ChannelCreateReleaseFlowRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param NeedRelievedFlowId: 待解除的签署流程编号(即原签署流程的编号)。
        # @type NeedRelievedFlowId: String
        # @param ReliveInfo: 解除协议内容, 包括解除理由等信息。
        # @type ReliveInfo: :class:`Tencentcloud::Essbasic.v20210526.models.RelieveInfo`
        # @param ReleasedApprovers: 指定解除协议的签署人，如不指定，则默认使用原流程的签署人。 <br/>
        # 如需更换原合同中的企业端签署人，可通过指定该签署人在原合同列表中的ApproverNumber编号来更换此企业端签署人。(可通过接口<a href="https://qian.tencent.com/developers/partnerApis/flows/DescribeFlowDetailInfo/">DescribeFlowDetailInfo</a>查询签署人的ApproverNumber编号，默认从0开始，顺序递增)<br/>

        # 注意：
        # <ul>
        # <li>只能更换自己企业的签署人，不支持更换个人类型或者其他企业的签署人</li>
        # <li>可以不指定替换签署人，使用原流程的签署人</li>
        # </ul>
        # @type ReleasedApprovers: Array
        # @param CallbackUrl: 签署完回调url，最大长度1000个字符
        # @type CallbackUrl: String
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳(秒)，如果未设置签署截止时间，则默认为合同流程创建后的7天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # @type Deadline: Integer
        # @param UserData: 调用方自定义的个性化字段，该字段的值可以是字符串JSON或其他字符串形式，客户可以根据自身需求自定义数据格式并在需要时进行解析。该字段的信息将以Base64编码的形式传输，支持的最大数据大小为20480长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。

        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/company/callback_types_v2" target="_blank">回调通知</a>模块。
        # @type UserData: String

        attr_accessor :Agent, :NeedRelievedFlowId, :ReliveInfo, :ReleasedApprovers, :CallbackUrl, :Organization, :Operator, :Deadline, :UserData
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, needrelievedflowid=nil, reliveinfo=nil, releasedapprovers=nil, callbackurl=nil, organization=nil, operator=nil, deadline=nil, userdata=nil)
          @Agent = agent
          @NeedRelievedFlowId = needrelievedflowid
          @ReliveInfo = reliveinfo
          @ReleasedApprovers = releasedapprovers
          @CallbackUrl = callbackurl
          @Organization = organization
          @Operator = operator
          @Deadline = deadline
          @UserData = userdata
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
          @UserData = params['UserData']
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Description: 角色描述，最大长度为50个字符
        # @type Description: String
        # @param PermissionGroups: 权限树，权限树内容 PermissionGroups 可参考接口 ChannelDescribeRoles 的输出
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。

        # 渠道应用标识: Agent.AppId
        # 第三方平台子客企业标识: Agent.ProxyOrganizationOpenId
        # 第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId
        # 第三方平台子客企业和员工必须已经经过实名认证。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # 可登录腾讯电子签控制台，在 "印章"->"印章中心"选择查看的印章，在"印章详情" 中查看某个印章的SealId(在页面中展示为印章ID)。
        # @type SealId: String
        # @param UserIds: 员工在腾讯电子签平台的唯一身份标识，为32位字符串。
        # 可登录腾讯电子签控制台，在 "更多能力"->"组织管理" 中查看某位员工的UserId(在页面中展示为用户ID)。
        # 员工在贵司业务系统中的唯一身份标识，用于与腾讯电子签账号进行映射，确保在同一企业内不会出现重复。
        # 该标识最大长度为64位字符串，仅支持包含26个英文字母和数字0-9的字符。
        # 指定待授权的用户ID数组,电子签的用户ID
        # 可以填写OpenId，系统会通过组织+渠道+OpenId查询得到UserId进行授权。
        # @type UserIds: Array
        # @param Operator: 操作人（用户）信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 企业机构信息，不用传
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :SealId, :UserIds, :Operator, :Organization
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param AutoSignConfig: 自动签开通配置信息, 包括开通的人员的信息等
        # @type AutoSignConfig: :class:`Tencentcloud::Essbasic.v20210526.models.AutoSignConfig`
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

      # ChannelCreateUserAutoSignSealUrl请求参数结构体
      class ChannelCreateUserAutoSignSealUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
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
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
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
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealId: 操作的印章ID
        # @type SealId: String
        # @param UserIds: 需要删除授权的用户ID数组，可以传入电子签系统用户ID或OpenId。
        # 注:
        # 1. `填写OpenId时，系统会通过组织+渠道+OpenId查询得到对应的UserId进行授权取消操作`
        # @type UserIds: Array
        # @param Organization: 组织机构信息，不用传
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`
        # @param Operator: 操作人（用户）信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :SealId, :UserIds, :Organization, :Operator
        extend Gem::Deprecate
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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

      # ChannelDescribeBillUsageDetail请求参数结构体
      class ChannelDescribeBillUsageDetailRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param StartTime: 查询开始时间字符串，格式为yyyymmdd,时间跨度不能大于31天
        # @type StartTime: String
        # @param EndTime: 查询结束时间字符串，格式为yyyymmdd,时间跨度不能大于31天
        # @type EndTime: String
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
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页，页码从 0 开始，即首页为 0
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，如果不传默认为 50，单页最大支持 50。
        # @type Limit: Integer

        attr_accessor :Agent, :StartTime, :EndTime, :QuotaType, :Offset, :Limit

        def initialize(agent=nil, starttime=nil, endtime=nil, quotatype=nil, offset=nil, limit=nil)
          @Agent = agent
          @StartTime = starttime
          @EndTime = endtime
          @QuotaType = quotatype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QuotaType = params['QuotaType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ChannelDescribeBillUsageDetail返回参数结构体
      class ChannelDescribeBillUsageDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回查询记录总数
        # @type Total: Integer
        # @param Details: 消耗记录详情
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
              channelbillusagedetail_tmp = ChannelBillUsageDetail.new
              channelbillusagedetail_tmp.deserialize(i)
              @Details << channelbillusagedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ChannelDescribeEmployees请求参数结构体
      class ChannelDescribeEmployeesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 20。
        # @type Limit: Integer
        # @param Filters: 查询的关键字段，支持Key-Values查询。可选键值如下：
        # <ul>
        #   <li>Key:**"Status"**，Values: **["IsVerified"]**, 查询已实名的员工</li>
        #   <li>Key:**"Status"**，Values: **["QuiteJob"]**, 查询离职员工</li>
        #   <li>Key:**"StaffOpenId"**，Values: **["OpenId1","OpenId2",...]**, 根据第三方系统用户OpenId查询员工</li>
        # </ul>
        # 注: `同名字的Key的过滤条件会冲突,  只能填写一个`
        # @type Filters: Array
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页。
        # 页码从 0 开始，即首页为 0，最大20000。
        # @type Offset: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :Limit, :Filters, :Offset, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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

      # ChannelDescribeFlowComponents请求参数结构体
      class ChannelDescribeFlowComponentsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 需要获取填写控件填写内容的合同流程ID
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
        # @param RecipientComponentInfos: 合同填写控件信息列表，填写控件会按照参与方角色进行分类。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 返回最大数量，最大为100
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量，默认为0，最大为20000
        # @type Offset: Integer
        # @param InfoType: 查询信息类型
        # 支持的值如下：
        # <ul><li>0-默认，不返回授权用户信息</li>
        # <li>1-返回授权用户信息</li>
        # </ul>
        # @type InfoType: Integer
        # @param SealId: 印章id（没有输入返回所有）

        # 注:  `没有输入返回所有记录，最大返回100条。`
        # @type SealId: String
        # @param SealTypes: 电子印章类型 , 可选类型如下:
        # <ul><li>**OFFICIAL**: (默认)公章</li>
        # <li>**CONTRACT**: 合同专用章;</li>
        # <li>**FINANCE**: 财务专用章;</li>
        # <li>**PERSONNEL**: 人事专用章</li>
        # <li>**INVOICE**: 发票专用章</li>
        # </ul>

        # 注:  `为空时查询所有类型的印章。`
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用，单页最大200。

        # 注: `因为历史原因, 此字段为字符串类型`
        # @type Limit: String
        # @param Filters: 查询的关键字段:
        # Key:"**RoleType**",Values:["**1**"]查询系统角色，
        # Key:"**RoleType**",Values:["**2**"]查询自定义角色
        # Key:"**RoleStatus**",Values:["**1**"]查询启用角色
        # Key:"**RoleStatus**",Values:["**2**"]查询禁用角色
        # Key:"**IsReturnPermissionGroup**"，Values:["**0**"]表示接口不返回角色对应的权限树字段
        # Key:"**IsReturnPermissionGroup**"，Values:["**1**"]表示接口返回角色对应的权限树字段

        # 注: `同名字的Key的过滤条件会冲突, 只能填写一个`
        # @type Filters: Array
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用，最大2000条。

        # 注：
        # 1.`offset从0开始，即第一页为0。`
        # 2.`默认从第一页返回。`
        # @type Offset: Integer
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :Limit, :Filters, :Offset, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用，最大2000条。
        # @type Offset: Integer
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用，单页最大200。
        # @type Limit: Integer
        # @param TotalCount: 查询角色的总数量
        # @type TotalCount: Integer
        # @param ChannelRoles: 查询的角色信息列表
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 要查询状态的用户信息, 包括名字,身份证等
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
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

      # ChannelDisableUserAutoSign请求参数结构体
      class ChannelDisableUserAutoSignRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SceneKey: 自动签使用的场景值, 可以选择的场景值如下:
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN** :  电子处方场景</li><li> **OTHER** :  通用场景</li></ul>
        # @type SceneKey: String
        # @param UserInfo: 需要关闭自动签的个人的信息，如姓名，证件信息等。
        # @type UserInfo: :class:`Tencentcloud::Essbasic.v20210526.models.UserThreeFactor`
        # @param Operator: 执行本接口操作的员工信息。
        # 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TaskId: 转换任务Id，通过接口<a href="https://qian.tencent.com/developers/partnerApis/files/ChannelCreateConvertTaskApi" target="_blank">创建文件转换任务接口</a>得到的转换任务id
        # @type TaskId: String
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :TaskId, :Operator, :Organization
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12
        deprecate :Organization, :none, 2023, 12
        deprecate :Organization=, :none, 2023, 12

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
        # @param ResourceId: 资源Id（即FileId），用于[用PDF文件创建签署流程](https://qian.tencent.com/developers/partnerApis/startFlows/ChannelCreateFlowByFiles)
        # @type ResourceId: String
        # @param PreviewUrl: 预览文件Url，有效期30分钟
        # 当前字段返回为空，发起的时候，将ResourceId 放入发起即可
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :TaskMessage, :ResourceId, :PreviewUrl, :RequestId
        extend Gem::Deprecate
        deprecate :PreviewUrl, :none, 2023, 12
        deprecate :PreviewUrl=, :none, 2023, 12

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
        # @param PermissionGroups: 权限树，权限树内容 PermissionGroups 可参考接口 ChannelDescribeRoles的输出
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

      # 渠道企业信息
      class ChannelOrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 电子签平台给企业分配的ID（在不同应用下同一个企业会分配通用的ID）
        # @type OrganizationId: String
        # @param OrganizationOpenId: 第三方平台子客企业的唯一标识
        # @type OrganizationOpenId: String
        # @param OrganizationName: 第三方平台子客企业名称
        # @type OrganizationName: String
        # @param UnifiedSocialCreditCode: 企业的统一社会信用代码
        # @type UnifiedSocialCreditCode: String
        # @param LegalName: 企业法定代表人的姓名
        # @type LegalName: String
        # @param LegalOpenId: 企业法定代表人作为第三方平台子客企业员工的唯一标识
        # @type LegalOpenId: String
        # @param AdminName: 企业超级管理员的姓名
        # @type AdminName: String
        # @param AdminOpenId: 企业超级管理员作为第三方平台子客企业员工的唯一标识
        # @type AdminOpenId: String
        # @param AdminMobile: 企业超级管理员的手机号码
        # **注**：`手机号码脱敏（隐藏部分用*替代）`
        # @type AdminMobile: String
        # @param AuthorizationStatus: 企业认证状态字段。值如下：
        # <ul>
        #   <li>**"UNVERIFIED"**： 未认证的企业</li>
        #   <li>**"VERIFYINGLEGALPENDINGAUTHORIZATION"**： 认证中待法人授权的企业</li>
        #   <li>**"VERIFYINGAUTHORIZATIONFILEPENDING"**： 认证中授权书审核中的企业</li>
        #   <li>**"VERIFYINGAUTHORIZATIONFILEREJECT"**： 认证中授权书已驳回的企业</li>
        #   <li>**"VERIFYING"**： 认证中的企业</li>
        #   <li>**"VERIFIED"**： 已认证的企业</li>
        # </ul>
        # @type AuthorizationStatus: String
        # @param AuthorizationType: 企业认证方式字段。值如下：
        # <ul>
        #   <li>**"AuthorizationInit"**： 暂未选择授权方式</li>
        #   <li>**"AuthorizationFile"**： 授权书</li>
        #   <li>**"AuthorizationLegalPerson"**： 法人授权超管</li>
        #   <li>**"AuthorizationLegalIdentity"**： 法人直接认证</li>
        # </ul>
        # @type AuthorizationType: String

        attr_accessor :OrganizationId, :OrganizationOpenId, :OrganizationName, :UnifiedSocialCreditCode, :LegalName, :LegalOpenId, :AdminName, :AdminOpenId, :AdminMobile, :AuthorizationStatus, :AuthorizationType

        def initialize(organizationid=nil, organizationopenid=nil, organizationname=nil, unifiedsocialcreditcode=nil, legalname=nil, legalopenid=nil, adminname=nil, adminopenid=nil, adminmobile=nil, authorizationstatus=nil, authorizationtype=nil)
          @OrganizationId = organizationid
          @OrganizationOpenId = organizationopenid
          @OrganizationName = organizationname
          @UnifiedSocialCreditCode = unifiedsocialcreditcode
          @LegalName = legalname
          @LegalOpenId = legalopenid
          @AdminName = adminname
          @AdminOpenId = adminopenid
          @AdminMobile = adminmobile
          @AuthorizationStatus = authorizationstatus
          @AuthorizationType = authorizationtype
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @OrganizationOpenId = params['OrganizationOpenId']
          @OrganizationName = params['OrganizationName']
          @UnifiedSocialCreditCode = params['UnifiedSocialCreditCode']
          @LegalName = params['LegalName']
          @LegalOpenId = params['LegalOpenId']
          @AdminName = params['AdminName']
          @AdminOpenId = params['AdminOpenId']
          @AdminMobile = params['AdminMobile']
          @AuthorizationStatus = params['AuthorizationStatus']
          @AuthorizationType = params['AuthorizationType']
        end
      end

      # 角色信息
      class ChannelRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID,为32位字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RoleName: 角色的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param RoleStatus: 此角色状态
        # 1: 已经启用
        # 2: 已经禁用
        # @type RoleStatus: Integer
        # @param PermissionGroups: 此角色对应的权限列表
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Status: 印章状态，目前支持传入以下类型：
        # <ul><li>DISABLE-停用印章</li></ul>
        # @type Status: String
        # @param SealId: 印章ID
        # @type SealId: String
        # @param Reason: 更新印章状态原因说明
        # @type Reason: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :Status, :SealId, :Reason, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowId, :Agent, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param VerifyResult: 验签结果代码，代码的含义如下：

        # <ul><li>**1**：文件未被篡改，全部签名在腾讯电子签完成。</li>
        # <li>**2**：文件未被篡改，部分签名在腾讯电子签完成。</li>
        # <li>**3**：文件被篡改。</li>
        # <li>**4**：异常：文件内没有签名域。(如果合同还没有签署也会返回此代码)</li>
        # <li>**5**：异常：文件签名格式错误。</li></ul>
        # @type VerifyResult: Integer
        # @param PdfVerifyResults: 验签结果详情，所有签署区(包括签名区, 印章区, 日期签署区,骑缝章等)的签署验签结果
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
        # @param NotChannelOrganization: 指定签署人非第三方平台子客企业下员工还是SaaS平台企业，在ApproverType为ORGANIZATION时指定。
        # <ul>
        # <li>false: 默认值，第三方平台子客企业下员工</li>
        # <li>true: SaaS平台企业下的员工</li>
        # </ul>
        # @type NotChannelOrganization: Boolean
        # @param ApproverType: 在指定签署方时，可选择企业B端或个人C端等不同的参与者类型，可选类型如下:

        #  **0** :企业/企业员工（企业签署方或模板发起时的企业静默签）
        #  **1** :个人/自然人
        # **3** :企业/企业员工自动签（他方企业自动签署或文件发起时的本方企业自动签）

        # 注：类型为3（企业/企业员工自动签）时，此接口会默认完成该签署方的签署。静默签署仅进行盖章操作，不能自动签名。
        # 使用自动签时，请确保企业已经开通自动签功能，开通方式：控制台 -> 企业设置 -> 扩展服务 -> 企业自动签。
        # 使用文件发起自动签时使用前请联系对接的客户经理沟通。
        # @type ApproverType: Integer
        # @param OrganizationId: 电子签平台给企业生成的企业id
        # @type OrganizationId: String
        # @param OrganizationOpenId: 企业OpenId，第三方应用集成非静默签子客企业签署人发起合同必传
        # @type OrganizationOpenId: String
        # @param OrganizationName: 企业名称，第三方应用集成非静默签子客企业签署人必传，saas企业签署人必传
        # @type OrganizationName: String
        # @param UserId: 电子签平台给企业员工或者自热人生成的用户id
        # @type UserId: String
        # @param OpenId: 第三方平台子客企业员工的唯一标识
        # @type OpenId: String
        # @param ApproverName: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        # @type ApproverName: String
        # @param ApproverMobile: 签署人手机号，saas企业签署人，个人签署人必传
        # @type ApproverMobile: String
        # @param ApproverIdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li>
        # <li>OTHER_CARD_TYPE : 其他证件</li></ul>

        # 注: `其他证件类型为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 签署方经办人的证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母（但“I”、“O”除外），后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type ApproverIdCardNumber: String
        # @param RecipientId: 签署人Id，使用模板发起是，对应模板配置中的签署人RecipientId
        # 注意：模板发起时该字段必填
        # @type RecipientId: String
        # @param PreReadTime: 签署前置条件：阅读时长限制，不传默认10s,最大300s，最小3s
        # @type PreReadTime: Integer
        # @param IsFullText: 签署前置条件：阅读全文限制
        # @type IsFullText: Boolean
        # @param NotifyType: 通知签署方经办人的方式, 有以下途径:
        # <ul><li> **SMS** :(默认)短信</li>
        # <li> **NONE** : 不通知</li></ul>

        # 注: `签署方为第三方子客企业时会被置为NONE,   不会发短信通知`
        # @type NotifyType: String
        # @param ApproverOption: 签署人配置
        # @type ApproverOption: :class:`Tencentcloud::Essbasic.v20210526.models.CommonApproverOption`
        # @param SignComponents: 使用PDF文件直接发起合同时，签署人指定的签署控件；<br/>使用模板发起合同时，指定本企业印章签署控件的印章ID: <br/>通过ComponentId或ComponenetName指定签署控件，ComponentValue为印章ID。
        # @type SignComponents: Array
        # @param ApproverVerifyTypes: 指定个人签署方查看合同的校验方式,可以传值如下:
        # <ul><li>  **1**   : （默认）人脸识别,人脸识别后才能合同内容</li>
        # <li>  **2**  : 手机号验证, 用户手机号和参与方手机号(ApproverMobile)相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        # </li></ul>
        # 注:
        # <ul><li>如果合同流程设置ApproverVerifyType查看合同的校验方式,    则忽略此签署人的查看合同的校验方式</li>
        # <li>此字段可传多个校验方式</li></ul>
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 签署人签署合同时的认证方式
        # <ul><li> **1** :人脸认证</li>
        # <li> **2** :签署密码</li>
        # <li> **3** :运营商三要素</li></ul>

        # 默认为1(人脸认证 ),2(签署密码)

        # 注:
        # 1. 用<font color='red'>模板创建合同场景</font>, 签署人的认证方式需要在配置模板的时候指定, <font color='red'>在创建合同重新指定无效</font>
        # 2. 运营商三要素认证方式对手机号运营商及前缀有限制,可以参考[运营商支持列表类](https://qian.tencent.com/developers/partner/mobile_support)得到具体的支持说明
        # @type ApproverSignTypes: Array

        attr_accessor :NotChannelOrganization, :ApproverType, :OrganizationId, :OrganizationOpenId, :OrganizationName, :UserId, :OpenId, :ApproverName, :ApproverMobile, :ApproverIdCardType, :ApproverIdCardNumber, :RecipientId, :PreReadTime, :IsFullText, :NotifyType, :ApproverOption, :SignComponents, :ApproverVerifyTypes, :ApproverSignTypes

        def initialize(notchannelorganization=nil, approvertype=nil, organizationid=nil, organizationopenid=nil, organizationname=nil, userid=nil, openid=nil, approvername=nil, approvermobile=nil, approveridcardtype=nil, approveridcardnumber=nil, recipientid=nil, prereadtime=nil, isfulltext=nil, notifytype=nil, approveroption=nil, signcomponents=nil, approververifytypes=nil, approversigntypes=nil)
          @NotChannelOrganization = notchannelorganization
          @ApproverType = approvertype
          @OrganizationId = organizationid
          @OrganizationOpenId = organizationopenid
          @OrganizationName = organizationname
          @UserId = userid
          @OpenId = openid
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @ApproverIdCardType = approveridcardtype
          @ApproverIdCardNumber = approveridcardnumber
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
          @ApproverIdCardType = params['ApproverIdCardType']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
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
      # 3. 关键字(KEYWORD)定位方式，使用关键字定位时，请确保PDF原始文件内是关键字以文字形式保存在PDF文件中，不支持对图片内文字进行关键字查找
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
        # KEYWORD - 关键字（设置关键字时，请确保PDF原始文件内是关键字以文字形式保存在PDF文件中，不支持对图片内文字进行关键字查找）
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
        # 参数样例： "ComponentExtra":"{"PageRanges":[{"BeginPage":1,"EndPage":-1}]}"
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

      # CreateBatchOrganizationRegistrationTasks请求参数结构体
      class CreateBatchOrganizationRegistrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param RegistrationOrganizations: 当前应用下子客的组织机构注册信息。
        # 一次最多支持10条认证流
        # @type RegistrationOrganizations: Array
        # @param Endpoint: 生成链接的类型：
        # <ul><li>**PC**：(默认)web控制台链接, 需要在PC浏览器中打开</li>
        # <li>**CHANNEL**：H5跳转到电子签小程序链接, 一般用于发送短信中带的链接, 打开后进入腾讯电子签小程序</li>
        # <li>**SHORT_URL**：H5跳转到电子签小程序链接的短链形式, 一般用于发送短信中带的链接, 打开后进入腾讯电子签小程序</li>
        # <li>**APP**：第三方APP或小程序跳转电子签小程序链接, 一般用于贵方小程序或者APP跳转过来,  打开后进入腾讯电子签小程序</li></ul>
        # 示例值：PC
        # @type Endpoint: String

        attr_accessor :Agent, :RegistrationOrganizations, :Endpoint

        def initialize(agent=nil, registrationorganizations=nil, endpoint=nil)
          @Agent = agent
          @RegistrationOrganizations = registrationorganizations
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          unless params['RegistrationOrganizations'].nil?
            @RegistrationOrganizations = []
            params['RegistrationOrganizations'].each do |i|
              registrationorganizationinfo_tmp = RegistrationOrganizationInfo.new
              registrationorganizationinfo_tmp.deserialize(i)
              @RegistrationOrganizations << registrationorganizationinfo_tmp
            end
          end
          @Endpoint = params['Endpoint']
        end
      end

      # CreateBatchOrganizationRegistrationTasks返回参数结构体
      class CreateBatchOrganizationRegistrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 生成注册链接的任务Id，
        # 根据这个id， 调用DescribeBatchOrganizationRegistrationUrls 获取生成的链接，进入认证流程
        # 若存在其中任意一条链接错误，则返回具体的错误描述, 不会返回TaskId
        # @type TaskId: String
        # @param ErrorMessages: 批量生成企业认证链接的详细错误信息，
        # 顺序与输入参数保持一致。
        # 若企业认证均成功生成，则不返回错误信息；
        # 若存在任何错误，则返回具体的错误描述。
        # @type ErrorMessages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateChannelFlowEvidenceReport请求参数结构体
      class CreateChannelFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 合同流程ID，为32位字符串。
        # 建议开发者妥善保存此流程ID，以便于顺利进行后续操作。
        # @type FlowId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param ReportId: 出证报告 ID，可用于<a href="https://qian.tencent.com/developers/partnerApis/certificate/DescribeChannelFlowEvidenceReport" target="_blank">获取出证报告任务执行结果</a>查询出证任务结果和出证PDF的下载URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param Status: 出证任务执行的状态, 状态含义如下：

        # <ul><li>**EvidenceStatusExecuting**：  出证任务在执行中</li>
        # <li>**EvidenceStatusSuccess**：  出证任务执行成功</li>
        # <li>**EvidenceStatusFailed** ： 出征任务执行失败</li></ul>
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent. ProxyOperator.OpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOrganizationOpenId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ChangeType: 企业信息变更类型，可选类型如下：
        # <ul><li>**1**：企业超管变更, 可以将超管换成同企业的其他员工</li>
        # <li>**2**：企业基础信息变更, 可以改企业名称 , 所在地址 , 法人名字等信息</li></ul>
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
        # @param Url: 创建的企业信息变更链接。需要在移动端打开，会跳转到微信腾讯电子签小程序进行更换。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容
        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>注:
        # `1. 企业激活时， 此时的Agent.ProxyOrganizationOpenId将会是企业激活后企业的唯一标识，建议开发者保存企业ProxyOrganizationOpenId，后续各项接口调用皆需要此参数。 `
        # `2. 员工认证时， 此时的Agent.ProxyOperator.OpenId将会是员工认证加入企业后的唯一标识，建议开发者保存此员工的OpenId，后续各项接口调用皆需要此参数。 `
        # `3. 同渠道应用(Agent.AppId)下，企业唯一标识ProxyOrganizationOpenId需要保持唯一，员工唯一标识OpenId也要保持唯一 (而不是企业下唯一)。 `
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 第三方平台子客企业名称，请确认该名称与企业营业执照中注册的名称一致。

        # 注:
        #  `1. 如果名称中包含英文括号()，请使用中文括号（）代替。`
        #  `2、该名称需要与Agent.ProxyOrganizationOpenId相匹配,  企业激活后Agent.ProxyOrganizationOpenId会跟此企业名称一一绑定; 如果您的企业已经在认证授权中或者激活完成，这里修改子客企业名字将不会生效。 `
        # @type ProxyOrganizationName: String
        # @param UniformSocialCreditCode: 子客企业统一社会信用代码，最大长度200个字符
        # 注意：`如果您的企业已经在认证授权中或者激活完成，这里修改子客企业名字将不会生效`。
        # @type UniformSocialCreditCode: String
        # @param ProxyOperatorName: 子客企业员工的姓名，最大长度50个字符,  员工的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。

        # 注：`该姓名需要和Agent.ProxyOperator.OpenId相匹配,  当员工完成认证后该姓名会和Agent.ProxyOperator.OpenId一一绑定, 若员工已认证加入企业，这里修改经办人名字传入将不会生效`
        # @type ProxyOperatorName: String
        # @param Module: Web控制台登录后进入的功能模块,  支持的模块包括：
        # <ul>
        # <li> **空值** :(默认)企业中心模块</li>
        # <li> **DOCUMENT** :合同管理模块</li>
        # <li> **TEMPLATE** :企业模板管理模块</li>
        # <li> **SEAL** :印章管理模块</li>
        # <li> **OPERATOR** :组织管理模块</li></ul>
        # 注意：
        # 1、如果EndPoint选择"CHANNEL"或"APP"，该参数仅支持传递"SEAL"，进入印章管理模块
        # 2、该参数**仅在企业和员工激活已经完成，登录控制台场景才生效**。
        # @type Module: String
        # @param ModuleId: 该参数和Module参数配合使用，用于指定模块下的资源Id，指定后链接登录将展示该资源的详情。

        # 根据Module参数的不同所代表的含义不同(ModuleId需要和Module对应，ModuleId可以通过API或者控制台获取到)。当前支持：
        # <table> <thead> <tr> <th>Module传值</th> <th>ModuleId传值</th> <th>进入的目标页面</th> </tr> </thead> <tbody> <tr> <td>SEAL</td> <td>印章ID</td> <td>查看指定印章的详情页面</td> </tr> <tr> <td>TEMPLATE</td> <td>合同模板ID</td> <td>指定模板的详情页面</td> </tr> <tr> <td>DOCUMENT</td> <td>合同ID</td> <td>指定合同的详情页面</td> </tr> </tbody> </table>
        # 注意：该参数**仅在企业和员工激活完成，登录控制台场景才生效**。
        # @type ModuleId: String
        # @param MenuStatus: 是否展示左侧菜单栏
        # <ul><li> **ENABLE** : (默认)进入web控制台展示左侧菜单栏</li>
        # <li> **DISABLE** : 进入web控制台不展示左侧菜单栏</li></ul>
        # 注：该参数**仅在企业和员工激活完成，登录控制台场景才生效**。
        # @type MenuStatus: String
        # @param Endpoint: 生成链接的类型：
        # <ul><li>**PC**：(默认)web控制台链接, 需要在PC浏览器中打开</li>
        # <li>**CHANNEL**：H5跳转到电子签小程序链接, 一般用于发送短信中带的链接, 打开后进入腾讯电子签小程序</li>
        # <li>**SHORT_URL**：H5跳转到电子签小程序链接的短链形式, 一般用于发送短信中带的链接, 打开后进入腾讯电子签小程序</li>
        # <li>**APP**：第三方APP或小程序跳转电子签小程序链接, 一般用于贵方小程序或者APP跳转过来,  打开后进入腾讯电子签小程序</li></ul>
        # @type Endpoint: String
        # @param AutoJumpBackEvent: 触发自动跳转事件，仅对EndPoint为App类型有效，可选值包括：
        # <ul><li> **VERIFIED** :企业认证完成/员工认证完成后跳回原App/小程序</li></ul>
        # @type AutoJumpBackEvent: String
        # @param AuthorizationTypes: 可选的此企业允许的授权方式, 可以设置的方式有:
        # <ul><li>1：上传授权书</li>
        # <li>2：转法定代表人授权</li>
        # <li>4：企业实名认证（信任第三方认证源）（此项有排他性, 选择后不能增添其他的方式）</li></ul>
        # 注:<ul>
        # <li>未选择信任第三方认证源时，如果是法人进行企业激活，仅支持法人扫脸直接授权，该配置不对此法人生效`</li>
        # <li>选择信任第三方认证源时，请先通过<a href="https://qian.tencent.com/developers/partnerApis/accounts/SyncProxyOrganization" target="_blank">同步企业信息</a>接口同步信息。</li>
        # <li>该参数仅在企业未激活时生效</li>
        # </ul>
        # @type AuthorizationTypes: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ProxyOrganizationName, :UniformSocialCreditCode, :ProxyOperatorName, :Module, :ModuleId, :MenuStatus, :Endpoint, :AutoJumpBackEvent, :AuthorizationTypes, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param ConsoleUrl: 跳转链接, 链接的有效期根据企业,员工状态和终端等有区别, 可以参考下表
        # <table> <thead> <tr> <th>子客企业状态</th> <th>子客企业员工状态</th> <th>Endpoint</th> <th>链接有效期限</th> </tr> </thead>  <tbody> <tr> <td>企业未激活</td> <td>员工未认证</td> <td>PC/PC_SHORT_URL</td> <td>5分钟</td>  </tr>  <tr> <td>企业未激活</td> <td>员工未认证</td> <td>CHANNEL/APP</td> <td>一年</td>  </tr>  <tr> <td>企业已激活</td> <td>员工未认证</td> <td>PC/PC_SHORT_URL</td> <td>5分钟</td>  </tr> <tr> <td>企业已激活</td> <td>员工未认证</td> <td>PC/CHANNEL/APP</td> <td>一年</td>  </tr>  <tr> <td>企业已激活</td> <td>员工已认证</td> <td>PC</td> <td>5分钟</td>  </tr>  <tr> <td>企业已激活</td> <td>员工已认证</td> <td>CHANNEL/APP</td> <td>一年</td>  </tr> </tbody> </table>
        # 注：
        # `1.链接仅单次有效，每次登录需要需要重新创建新的链接`
        # `2.创建的链接应避免被转义，如：&被转义为\u0026；如使用Postman请求后，请选择响应类型为 JSON，否则链接将被转义`
        # @type ConsoleUrl: String
        # @param IsActivated: 子客企业是否已开通腾讯电子签，
        # <ul><li> **true** :已经开通腾讯电子签</li>
        # <li> **false** :还未开通腾讯电子签</li></ul>

        # 注：`企业是否实名根据传参Agent.ProxyOrganizationOpenId进行判断，非企业名称或者社会信用代码`
        # @type IsActivated: Boolean
        # @param ProxyOperatorIsVerified: 当前经办人是否已认证并加入功能
        # <ul><li> **true** : 已经认证加入公司</li>
        # <li> **false** : 还未认证加入公司</li></ul>
        # 注意：**员工是否实名是根据Agent.ProxyOperator.OpenId判断，非经办人姓名**
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
        # @param CanEditFlow: 是否允许修改合同信息，
        # **true**：可以
        # **false**：（默认）不可以
        # @type CanEditFlow: Boolean
        # @param HideShowFlowName: 是否允许发起合同弹窗隐藏合同名称
        # **true**：允许
        # **false**：（默认）不允许
        # @type HideShowFlowName: Boolean
        # @param HideShowFlowType: 是否允许发起合同弹窗隐藏合同类型，
        # **true**：允许
        # **false**：（默认）不允许
        # @type HideShowFlowType: Boolean
        # @param HideShowDeadline: 是否允许发起合同弹窗隐藏合同到期时间
        # **true**：允许
        # **false**：（默认）不允许
        # @type HideShowDeadline: Boolean
        # @param CanSkipAddApprover: 是否允许发起合同步骤跳过指定签署方步骤
        # **true**：允许
        # **false**：（默认）不允许
        # @type CanSkipAddApprover: Boolean
        # @param CustomCreateFlowDescription: 定制化发起合同弹窗的描述信息，长度不能超过500，只能由中文、字母、数字和标点组成。
        # @type CustomCreateFlowDescription: String
        # @param ForbidEditFillComponent: 禁止编辑填写控件

        # **true**：禁止编辑填写控件
        # **false**：（默认）允许编辑填写控件
        # @type ForbidEditFillComponent: Boolean
        # @param SkipUploadFile: 跳过上传文件步骤

        # **true**：跳过
        # **false**：（默认）不跳过，需要传ResourceId
        # @type SkipUploadFile: Boolean

        attr_accessor :CanEditFlow, :HideShowFlowName, :HideShowFlowType, :HideShowDeadline, :CanSkipAddApprover, :CustomCreateFlowDescription, :ForbidEditFillComponent, :SkipUploadFile

        def initialize(caneditflow=nil, hideshowflowname=nil, hideshowflowtype=nil, hideshowdeadline=nil, canskipaddapprover=nil, customcreateflowdescription=nil, forbideditfillcomponent=nil, skipuploadfile=nil)
          @CanEditFlow = caneditflow
          @HideShowFlowName = hideshowflowname
          @HideShowFlowType = hideshowflowtype
          @HideShowDeadline = hideshowdeadline
          @CanSkipAddApprover = canskipaddapprover
          @CustomCreateFlowDescription = customcreateflowdescription
          @ForbidEditFillComponent = forbideditfillcomponent
          @SkipUploadFile = skipuploadfile
        end

        def deserialize(params)
          @CanEditFlow = params['CanEditFlow']
          @HideShowFlowName = params['HideShowFlowName']
          @HideShowFlowType = params['HideShowFlowType']
          @HideShowDeadline = params['HideShowDeadline']
          @CanSkipAddApprover = params['CanSkipAddApprover']
          @CustomCreateFlowDescription = params['CustomCreateFlowDescription']
          @ForbidEditFillComponent = params['ForbidEditFillComponent']
          @SkipUploadFile = params['SkipUploadFile']
        end
      end

      # CreateFlowsByTemplates请求参数结构体
      class CreateFlowsByTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 要创建的合同信息列表，最多支持一次创建20个合同
        # @type FlowInfos: Array
        # @param NeedPreview: 是否为预览模式，取值如下：
        # <ul><li> **false**：非预览模式（默认），会产生合同流程并返回合同流程编号FlowId。</li>
        # <li> **true**：预览模式，不产生合同流程，不返回合同流程编号FlowId，而是返回预览链接PreviewUrl，有效期为300秒，用于查看真实发起后合同的样子。</li></ul>

        # 注:

        # `如果预览的文件中指定了动态表格控件，此时此接口返回的是合成前的文档预览链接，合成完成后的文档预览链接需要通过回调通知的方式或使用返回的TaskInfo中的TaskId通过ChannelGetTaskResultApi接口查询得到`
        # @type NeedPreview: Boolean
        # @param PreviewType: 预览模式下产生的预览链接类型
        # <ul><li> **0** :(默认) 文件流 ,点开后下载预览的合同PDF文件 </li>
        # <li> **1** :H5链接 ,点开后在浏览器中展示合同的样子</li></ul>
        # 注: `此参数在NeedPreview 为true时有效`
        # @type PreviewType: Integer
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowInfos, :NeedPreview, :PreviewType, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param FlowIds: 生成的合同流程ID数组，合同流程ID为32位字符串。
        # 建议开发者妥善保存此流程ID数组，以便于顺利进行后续操作。
        # @type FlowIds: Array
        # @param CustomerData: 第三方应用平台的业务信息, 与创建合同的FlowInfos数组中的CustomerData一一对应
        # @type CustomerData: Array
        # @param ErrorMessages: 创建消息，对应多个合同ID，
        # 成功为“”,创建失败则对应失败消息
        # @type ErrorMessages: Array
        # @param PreviewUrls: 合同预览链接URL数组。

        # 注：如果是预览模式(即NeedPreview设置为true)时, 才会有此预览链接URL
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

      # CreatePartnerAutoSignAuthUrl请求参数结构体
      class CreatePartnerAutoSignAuthUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param AuthorizedOrganizationId: 被授企业id，和AuthorizedOrganizationName二选一，不能同时为空
        # 注：`被授权企业必须和当前企业在同一应用号下`
        # @type AuthorizedOrganizationId: String
        # @param AuthorizedOrganizationName: 被授权企业名，和AuthorizedOrganizationId二选一，不能同时为空
        # 注：`被授权企业必须和当前企业在同一应用号下`
        # @type AuthorizedOrganizationName: String

        attr_accessor :Agent, :AuthorizedOrganizationId, :AuthorizedOrganizationName

        def initialize(agent=nil, authorizedorganizationid=nil, authorizedorganizationname=nil)
          @Agent = agent
          @AuthorizedOrganizationId = authorizedorganizationid
          @AuthorizedOrganizationName = authorizedorganizationname
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @AuthorizedOrganizationId = params['AuthorizedOrganizationId']
          @AuthorizedOrganizationName = params['AuthorizedOrganizationName']
        end
      end

      # CreatePartnerAutoSignAuthUrl返回参数结构体
      class CreatePartnerAutoSignAuthUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 授权链接，以短链形式返回，短链的有效期参考回参中的 ExpiredTime。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param MiniAppPath: 从客户小程序或者客户APP跳转至腾讯电子签小程序进行批量签署的跳转路径
        # @type MiniAppPath: String
        # @param ExpireTime: 链接过期时间以 Unix 时间戳格式表示，从生成链接时间起，往后7天有效期。过期后短链将失效，无法打开。
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateSealByImage请求参数结构体
      class CreateSealByImageRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealName: 电子印章名字，1-50个中文字符
        # 注:`同一企业下电子印章名字不能相同`
        # @type SealName: String
        # @param SealImage: 电子印章图片base64编码，大小不超过10M（原始图片不超过5M），只支持PNG或JPG图片格式

        # 注: `通过图片创建的电子印章，需电子签平台人工审核`

        # @type SealImage: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
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
        # <li>**INVOICE**: 发票专用章</li>
        # </ul>
        # 注: `同企业下只能有一个公章, 重复创建会报错`
        # @type SealType: String
        # @param SealHorizontalText: 企业印章横向文字，最多可填15个汉字  (若超过印章最大宽度，优先压缩字间距，其次缩小字号)
        # 横向文字的位置如下图中的"印章横向文字在这里"

        # ![image](https://dyn.ess.tencent.cn/guide/capi/CreateSealByImage2.png)
        # @type SealHorizontalText: String
        # @param SealStyle: 印章样式, 可以选择的样式如下:
        # <ul><li>**circle**:(默认)圆形印章</li>
        # <li>**ellipse**:椭圆印章</li></ul>
        # @type SealStyle: String
        # @param SealSize: 印章尺寸取值描述, 可以选择的尺寸如下:
        # <ul><li> **42_42**: 圆形企业公章直径42mm, 当SealStyle是圆形的时候才有效</li>
        # <li> **40_40**: 圆形企业印章直径40mm, 当SealStyle是圆形的时候才有效</li>
        # <li> **45_30**: 椭圆形印章45mm x 30mm, 当SealStyle是椭圆的时候才有效</li>
        # <li> **40_30**: 椭圆形印章40mm x 30mm, 当SealStyle是椭圆的时候才有效</li></ul>
        # @type SealSize: String
        # @param TaxIdentifyCode: 企业税号
        # 注: `1.印章类型SealType是INVOICE类型时，此参数才会生效`
        # `2.印章类型SealType是INVOICE类型，且该字段没有传入值或传入空时，会取该企业对应的统一社会信用代码作为默认的企业税号`
        # @type TaxIdentifyCode: String

        attr_accessor :Agent, :SealName, :SealImage, :Operator, :GenerateSource, :SealType, :SealHorizontalText, :SealStyle, :SealSize, :TaxIdentifyCode
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, sealname=nil, sealimage=nil, operator=nil, generatesource=nil, sealtype=nil, sealhorizontaltext=nil, sealstyle=nil, sealsize=nil, taxidentifycode=nil)
          @Agent = agent
          @SealName = sealname
          @SealImage = sealimage
          @Operator = operator
          @GenerateSource = generatesource
          @SealType = sealtype
          @SealHorizontalText = sealhorizontaltext
          @SealStyle = sealstyle
          @SealSize = sealsize
          @TaxIdentifyCode = taxidentifycode
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
          @TaxIdentifyCode = params['TaxIdentifyCode']
        end
      end

      # CreateSealByImage返回参数结构体
      class CreateSealByImageResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章ID，为32位字符串。
        # 建议开发者保留此印章ID，后续指定签署区印章或者操作印章需此印章ID。
        # @type SealId: String
        # @param ImageUrl: 电子印章预览链接地址，地址默认失效时间为24小时。

        # 注:`图片上传生成的电子印章无预览链接地址`
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 合同流程ID数组，最多支持100个。
        # 注: `该参数和合同组编号必须二选一`
        # @type FlowIds: Array
        # @param FlowGroupId: 合同组编号
        # 注：`该参数和合同流程ID数组必须二选一`
        # @type FlowGroupId: String
        # @param Endpoint: 签署链接类型,可以设置的参数如下
        # <ul><li> **WEIXINAPP** :(默认)跳转电子签小程序的http_url, 短信通知或者H5跳转适合此类型 ，此时返回短链</li>
        # <li> **CHANNEL** :带有H5引导页的跳转电子签小程序的链接</li>
        # <li> **APP** :第三方App或小程序跳转电子签小程序的path, App或者小程序跳转适合此类型</li>
        # <li> **LONGURL2WEIXINAPP** :跳转电子签小程序的链接, H5跳转适合此类型，此时返回长链</li></ul>

        # 详细使用场景可以参数接口说明中的 **主要使用场景可以更加EndPoint分类如下**
        # @type Endpoint: String
        # @param GenerateType: 签署链接生成类型，可以选择的类型如下

        # <ul><li>**ALL**：(默认)全部签署方签署链接，此时不会给自动签署(静默签署)的签署方创建签署链接</li>
        # <li>**CHANNEL**：第三方子企业员工签署方</li>
        # <li>**NOT_CHANNEL**：SaaS平台企业员工签署方</li>
        # <li>**PERSON**：个人/自然人签署方</li>
        # <li>**FOLLOWER**：关注方，目前是合同抄送方</li>
        # <li>**RECIPIENT**：获取RecipientId对应的签署链接，可用于生成动态签署人补充链接</li></ul>
        # @type GenerateType: String
        # @param OrganizationName: SaaS平台企业员工签署方的企业名称
        # 如果名称中包含英文括号()，请使用中文括号（）代替。

        # 注: `GenerateType为"NOT_CHANNEL"时必填`
        # @type OrganizationName: String
        # @param Name: 合同流程里边参与方的姓名。
        # 注: `GenerateType为"PERSON"(即个人签署方)时必填`
        # @type Name: String
        # @param Mobile: 合同流程里边签署方经办人手机号码， 支持国内手机号11位数字(无需加+86前缀或其他字符)。
        # 注:  `GenerateType为"PERSON"或"FOLLOWER"时必填`
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
        # @param OrganizationOpenId: 第三方平台子客企业的企业的标识, 即OrganizationOpenId
        # 注: `GenerateType为"CHANNEL"时必填`
        # @type OrganizationOpenId: String
        # @param OpenId: 第三方平台子客企业员工的标识OpenId，GenerateType为"CHANNEL"时可用，指定到具体参与人, 仅展示已经实名的经办人信息
        # @type OpenId: String
        # @param AutoJumpBack: Endpoint为"APP" 类型的签署链接，可以设置此值；支持调用方小程序打开签署链接，在电子签小程序完成签署后自动回跳至调用方小程序
        # @type AutoJumpBack: Boolean
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，针对Endpoint为CHANNEL时有效，最大长度1000个字符。
        # @type JumpUrl: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Hides: 生成的签署链接在签署页面隐藏的按钮列表，可设置如下：

        # <ul><li> **0** :合同签署页面更多操作按钮</li>
        # <li> **1** :合同签署页面更多操作的拒绝签署按钮</li>
        # <li> **2** :合同签署页面更多操作的转他人处理按钮</li>
        # <li> **3** :签署成功页的查看详情按钮</li></ul>

        # 注:  `字段为数组, 可以传值隐藏多个按钮`
        # @type Hides: Array
        # @param RecipientIds: 参与方角色ID，用于生成动态签署人链接完成领取。

        # 注：`使用此参数需要与flow_ids数量一致并且一一对应, 表示在对应同序号的流程中的参与角色ID`，
        # @type RecipientIds: Array

        attr_accessor :Agent, :FlowIds, :FlowGroupId, :Endpoint, :GenerateType, :OrganizationName, :Name, :Mobile, :IdCardType, :IdCardNumber, :OrganizationOpenId, :OpenId, :AutoJumpBack, :JumpUrl, :Operator, :Hides, :RecipientIds
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, flowids=nil, flowgroupid=nil, endpoint=nil, generatetype=nil, organizationname=nil, name=nil, mobile=nil, idcardtype=nil, idcardnumber=nil, organizationopenid=nil, openid=nil, autojumpback=nil, jumpurl=nil, operator=nil, hides=nil, recipientids=nil)
          @Agent = agent
          @FlowIds = flowids
          @FlowGroupId = flowgroupid
          @Endpoint = endpoint
          @GenerateType = generatetype
          @OrganizationName = organizationname
          @Name = name
          @Mobile = mobile
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
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
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
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

      # DescribeBatchOrganizationRegistrationUrls请求参数结构体
      class DescribeBatchOrganizationRegistrationUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TaskId: 通过接口CreateBatchOrganizationRegistrationTasks创建企业批量认证链接任得到的任务Id
        # @type TaskId: String

        attr_accessor :Agent, :TaskId

        def initialize(agent=nil, taskid=nil)
          @Agent = agent
          @TaskId = taskid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TaskId = params['TaskId']
        end
      end

      # DescribeBatchOrganizationRegistrationUrls返回参数结构体
      class DescribeBatchOrganizationRegistrationUrlsResponse < TencentCloud::Common::AbstractModel
        # @param OrganizationAuthUrls: 企业批量注册链接信息
        # @type OrganizationAuthUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param StartTime: 查询开始时间字符串，格式为yyyymmdd,时间跨度不能大于31天
        # @type StartTime: String
        # @param EndTime: 查询结束时间字符串，格式为yyyymmdd,时间跨度不能大于31天
        # @type EndTime: String
        # @param QuotaType: 查询的套餐类型 （选填 ）不传则查询所有套餐；
        # 对应关系如下
        # CloudEnterprise-企业版合同
        # SingleSignature-单方签章
        # CloudProve-签署报告
        # CloudOnlineSign-腾讯会议在线签约
        # ChannelWeCard-微工卡
        # SignFlow-合同套餐
        # SignFace-签署意愿（人脸识别）
        # SignPassword-签署意愿（密码）
        # SignSMS-签署意愿（短信）
        # PersonalEssAuth-签署人实名（腾讯电子签认证）
        # PersonalThirdAuth-签署人实名（信任第三方认证）
        # OrgEssAuth-签署企业实名
        # FlowNotify-短信通知
        # AuthService-企业工商信息查询
        # @type QuotaType: String
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页，页码从 0 开始，即首页为 0
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，如果不传默认为 50，单页最大支持 50。
        # @type Limit: Integer

        attr_accessor :Agent, :StartTime, :EndTime, :QuotaType, :Offset, :Limit

        def initialize(agent=nil, starttime=nil, endtime=nil, quotatype=nil, offset=nil, limit=nil)
          @Agent = agent
          @StartTime = starttime
          @EndTime = endtime
          @QuotaType = quotatype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QuotaType = params['QuotaType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBillUsageDetail返回参数结构体
      class DescribeBillUsageDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回查询记录总数
        # @type Total: Integer
        # @param Details: 消耗记录详情
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

      # DescribeChannelFlowEvidenceReport请求参数结构体
      class DescribeChannelFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ReportId: 签署报告编号, 由<a href="https://qian.tencent.com/developers/partnerApis/certificate/CreateChannelFlowEvidenceReport" target="_blank">提交申请出证报告任务</a>产生
        # @type ReportId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ReportId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param ReportUrl: 出证报告PDF的下载 URL，有效期为5分钟，超过有效期后将无法再下载。
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

      # DescribeChannelOrganizations请求参数结构体
      class DescribeChannelOrganizationsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。

        # 渠道应用标识: Agent.AppId
        # 第三方平台子客企业标识: Agent.ProxyOrganizationOpenId
        # 第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId

        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 200。
        # @type Limit: Integer
        # @param OrganizationOpenId: 该字段是指第三方平台子客企业的唯一标识，用于查询单独某个子客的企业数据。

        # **注**：`如果需要批量查询本应用下的所有企业的信息，则该字段不需要赋值`
        # @type OrganizationOpenId: String
        # @param AuthorizationStatusList: 可以按照当前企业的认证状态进行过滤。可值如下：
        # <ul><li>**"UNVERIFIED"**： 未认证的企业</li>
        #   <li>**"VERIFYINGLEGALPENDINGAUTHORIZATION"**： 认证中待法人授权的企业</li>
        #   <li>**"VERIFYINGAUTHORIZATIONFILEPENDING"**： 认证中授权书审核中的企业</li>
        #   <li>**"VERIFYINGAUTHORIZATIONFILEREJECT"**： 认证中授权书已驳回的企业</li>
        #   <li>**"VERIFYING"**： 认证进行中的企业</li>
        #   <li>**"VERIFIED"**： 已认证完成的企业</li></ul>
        # @type AuthorizationStatusList: Array
        # @param Offset: 指定分页返回第几页的数据，如果不传默认返回第一页。 页码从 0 开始，即首页为 0，最大20000。
        # @type Offset: Integer

        attr_accessor :Agent, :Limit, :OrganizationOpenId, :AuthorizationStatusList, :Offset

        def initialize(agent=nil, limit=nil, organizationopenid=nil, authorizationstatuslist=nil, offset=nil)
          @Agent = agent
          @Limit = limit
          @OrganizationOpenId = organizationopenid
          @AuthorizationStatusList = authorizationstatuslist
          @Offset = offset
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @Limit = params['Limit']
          @OrganizationOpenId = params['OrganizationOpenId']
          @AuthorizationStatusList = params['AuthorizationStatusList']
          @Offset = params['Offset']
        end
      end

      # DescribeChannelOrganizations返回参数结构体
      class DescribeChannelOrganizationsResponse < TencentCloud::Common::AbstractModel
        # @param ChannelOrganizationInfos: 满足查询条件的企业信息列表。
        # @type ChannelOrganizationInfos: Array
        # @param Offset: 指定分页返回第几页的数据。页码从 0 开始，即首页为 0，最大20000。
        # @type Offset: Integer
        # @param Limit: 指定分页每页返回的数据条数，单页最大支持 200。
        # @type Limit: Integer
        # @param Total: 满足查询条件的企业总数量。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChannelOrganizationInfos, :Offset, :Limit, :Total, :RequestId

        def initialize(channelorganizationinfos=nil, offset=nil, limit=nil, total=nil, requestid=nil)
          @ChannelOrganizationInfos = channelorganizationinfos
          @Offset = offset
          @Limit = limit
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ChannelOrganizationInfos'].nil?
            @ChannelOrganizationInfos = []
            params['ChannelOrganizationInfos'].each do |i|
              channelorganizationinfo_tmp = ChannelOrganizationInfo.new
              channelorganizationinfo_tmp.deserialize(i)
              @ChannelOrganizationInfos << channelorganizationinfo_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeChannelSealPolicyWorkflowUrl请求参数结构体
      class DescribeChannelSealPolicyWorkflowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。

        # 渠道应用标识: Agent.AppId
        # 第三方平台子客企业标识: Agent.ProxyOrganizationOpenId
        # 第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param WorkflowInstanceId: 用印审批单的ID，可通过用印申请回调获取。
        # @type WorkflowInstanceId: String
        # @param Endpoint: 生成链接的类型：
        # 生成链接的类型
        # <ul><li>**LongLink**：(默认)长链接，H5跳转到电子签小程序链接，链接有效期为1年</li>
        # <li>**ShortLink**：H5跳转到电子签小程序链接，一般用于发送短信中带的链接，打开后进入腾讯电子签小程序，链接有效期为7天</li>
        # <li>**App**：第三方APP或小程序跳转电子签小程序链接，一般用于贵方小程序或者APP跳转过来，打开后进入腾讯电子签小程序，链接有效期为1年</li></ul>
        # @type Endpoint: String

        attr_accessor :Agent, :WorkflowInstanceId, :Endpoint

        def initialize(agent=nil, workflowinstanceid=nil, endpoint=nil)
          @Agent = agent
          @WorkflowInstanceId = workflowinstanceid
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @WorkflowInstanceId = params['WorkflowInstanceId']
          @Endpoint = params['Endpoint']
        end
      end

      # DescribeChannelSealPolicyWorkflowUrl返回参数结构体
      class DescribeChannelSealPolicyWorkflowUrlResponse < TencentCloud::Common::AbstractModel
        # @param WorkflowUrl: 用印审批小程序链接，链接类型（通过H5唤起小程序或通过APP跳转方式查看）。
        # @type WorkflowUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkflowUrl, :RequestId

        def initialize(workflowurl=nil, requestid=nil)
          @WorkflowUrl = workflowurl
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkflowUrl = params['WorkflowUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtendedServiceAuthDetail请求参数结构体
      class DescribeExtendedServiceAuthDetailRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ExtendServiceType: 要查询的扩展服务类型。
        # 如下所示：
        # <ul><li> AUTO_SIGN：企业静默签署</li>
        # <li>BATCH_SIGN：批量签署</li>
        # </ul>
        # @type ExtendServiceType: String
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用。 注：`1.默认值为20，单页做大值为200。`
        # @type Limit: Integer
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用。 注：`1.offset从0开始，即第一页为0。` `2.默认从第一页返回。`
        # @type Offset: Integer

        attr_accessor :Agent, :ExtendServiceType, :Limit, :Offset

        def initialize(agent=nil, extendservicetype=nil, limit=nil, offset=nil)
          @Agent = agent
          @ExtendServiceType = extendservicetype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ExtendServiceType = params['ExtendServiceType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeExtendedServiceAuthDetail返回参数结构体
      class DescribeExtendedServiceAuthDetailResponse < TencentCloud::Common::AbstractModel
        # @param AuthInfoDetail: 服务授权的信息列表，根据查询类型返回特定扩展服务的开通和授权状况。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthInfoDetail: :class:`Tencentcloud::Essbasic.v20210526.models.AuthInfoDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeExtendedServiceAuthInfo请求参数结构体
      class DescribeExtendedServiceAuthInfoRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业标识: Agent. ProxyOperator.OpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.AppId</li>
        # </ul>
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
        # @param AuthInfo: 服务开通和授权的信息列表，根据查询类型返回所有支持的扩展服务开通和授权状况，或者返回特定扩展服务的开通和授权状况。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 需要查询的流程ID列表，最多可传入100个ID。
        # 如果要查询合同组的信息，则不需要传入此参数，只需传入 FlowGroupId 参数即可。
        # @type FlowIds: Array
        # @param FlowGroupId: 需要查询的流程组ID，如果传入此参数，则会忽略 FlowIds 参数。

        # 合同组由<a href="https://qian.tencent.com/developers/partnerApis/startFlows/ChannelCreateFlowGroupByTemplates" target="_blank">通过多模板创建合同组签署流程</a>和<a href="https://qian.tencent.com/developers/partnerApis/startFlows/ChannelCreateFlowGroupByFiles" target="_blank">通过多文件创建合同组签署流程</a>等接口创建。
        # @type FlowGroupId: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :FlowGroupId, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param ApplicationId: 合同归属的第三方平台应用号ID
        # @type ApplicationId: String
        # @param ProxyOrganizationOpenId: 合同归属的第三方平台子客企业OpenId
        # @type ProxyOrganizationOpenId: String
        # @param FlowInfo: 合同流程的详细信息。
        # 如果查询的是合同组信息，则返回的是组内所有子合同流程的详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowInfo: Array
        # @param FlowGroupId: 合同组ID，只有在查询合同组信息时才会返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String
        # @param FlowGroupName: 合同组名称，只有在查询合同组信息时才会返回。
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 需要下载的合同流程的ID,  至少需要1个,  做多50个
        # @type FlowIds: Array
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param FlowResourceUrlInfos: 合同流程PDF下载链接
        # @type FlowResourceUrlInfos: Array
        # @param ErrorMessages: 如果某个序号的合同流程生成PDF下载链接成功, 对应序号的值为空
        # 如果某个序号的合同流程生成PDF下载链接失败, 对应序号的值为错误的原因
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 合同模板ID，为32位字符串。

        # 可以通过<a href="https://qian.tencent.com/developers/partnerApis/accounts/CreateConsoleLoginUrl" target="_blank">生成子客登录链接</a>登录企业控制台, 在企业模板中得到合同模板ID。
        # @type TemplateId: String
        # @param ContentType: 查询模板的内容

        # <ul><li>**0**：（默认）模板列表及详情</li>
        # <li>**1**：仅模板列表, 不会返回模板中的签署控件, 填写控件, 参与方角色列表等信息</li></ul>
        # @type ContentType: Integer
        # @param TemplateIds: 合同模板ID数组，每一个合同模板ID为32位字符串,  最多支持200个模板的批量查询。

        # 注意:
        # 1.` 此参数TemplateIds与TemplateId互为独立，若两者均传入，以TemplateId为准。`
        # 2. `请确保每个模板均正确且属于当前企业，若有任一模板不存在，则返回错误。`
        # 4. `若传递此参数，分页参数(Limit,Offset)无效`
        # @type TemplateIds: Array
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用。

        # 注：`1.默认值为20，单页做大值为200。`
        # @type Limit: Integer
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用。

        # 注：`1.offset从0开始，即第一页为0。`
        # `2.默认从第一页返回。`
        # @type Offset: Integer
        # @param TemplateName: 模糊搜索的模板名称，注意是模板名的连续部分，长度不能超过200，可支持由中文、字母、数字和下划线组成字符串。
        # @type TemplateName: String
        # @param ChannelTemplateId: 对应第三方应用平台企业的模板ID，通过此值可以搜索由第三方应用平台模板ID下发或领取得到的子客模板列表。
        # @type ChannelTemplateId: String
        # @param QueryAllComponents: 返回控件的范围, 是只返回发起方自己的还是所有参与方的

        # <ul><li>**false**：（默认）只返回发起方控件</li>
        # <li>**true**：返回所有参与方(包括发起方和签署方)控件</li></ul>
        # @type QueryAllComponents: Boolean
        # @param WithPreviewUrl: 是否获取模板预览链接。

        # <ul><li>**false**：不获取（默认）</li>
        # <li>**true**：获取</li></ul>

        # 设置为true之后， 返回参数PreviewUrl，为模板的H5预览链接,  有效期5分钟。可以通过浏览器打开此链接预览模板，或者嵌入到iframe中预览模板。

        # 注: `此功能为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type WithPreviewUrl: Boolean
        # @param WithPdfUrl: 是否获取模板的PDF文件链接。

        # <ul><li>**false**：不获取（默认）</li>
        # <li>**true**：获取</li></ul>

        # 设置为true之后， 返回参数PdfUrl，为模板PDF文件链接，有效期5分钟, 可以用于将PDF文件下载到本地

        # 注: `此功能为白名单功能，使用前请联系对接的客户经理沟通。`
        # @type WithPdfUrl: Boolean
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :TemplateId, :ContentType, :TemplateIds, :Limit, :Offset, :TemplateName, :ChannelTemplateId, :QueryAllComponents, :WithPreviewUrl, :WithPdfUrl, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, templateid=nil, contenttype=nil, templateids=nil, limit=nil, offset=nil, templatename=nil, channeltemplateid=nil, queryallcomponents=nil, withpreviewurl=nil, withpdfurl=nil, operator=nil)
          @Agent = agent
          @TemplateId = templateid
          @ContentType = contenttype
          @TemplateIds = templateids
          @Limit = limit
          @Offset = offset
          @TemplateName = templatename
          @ChannelTemplateId = channeltemplateid
          @QueryAllComponents = queryallcomponents
          @WithPreviewUrl = withpreviewurl
          @WithPdfUrl = withpdfurl
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TemplateId = params['TemplateId']
          @ContentType = params['ContentType']
          @TemplateIds = params['TemplateIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TemplateName = params['TemplateName']
          @ChannelTemplateId = params['ChannelTemplateId']
          @QueryAllComponents = params['QueryAllComponents']
          @WithPreviewUrl = params['WithPreviewUrl']
          @WithPdfUrl = params['WithPdfUrl']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeTemplates返回参数结构体
      class DescribeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板详情列表数据
        # @type Templates: Array
        # @param TotalCount: 查询到的模板总数
        # @type TotalCount: Integer
        # @param Limit: 每页返回的数据条数
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param StartDate: 查询日期范围的开始时间, 查询会包含此日期的数据 , 格式为yyyy-mm-dd (例如：2021-03-21)

        # 注: `查询日期范围区间长度大于90天`。
        # @type StartDate: String
        # @param EndDate: 查询日期范围的结束时间, 查询会包含此日期的数据 , 格式为yyyy-mm-dd (例如：2021-04-21)

        # 注: `查询日期范围区间长度大于90天`。
        # @type EndDate: String
        # @param NeedAggregate: 是否汇总数据，默认不汇总。
        # <ul><li> **true** :  汇总数据,  即每个企业一条数据, 对日志范围内的数据相加</li>
        # <li> **false** :  不会总数据,  返回企业每日明细,   按日期返回每个企业的数据(如果企业对应天数没有操作则无此企业此日期的数据)</li></ul>
        # @type NeedAggregate: Boolean
        # @param Limit: 指定每页返回的数据条数，和Offset参数配合使用。

        # 注: `默认值为1000，单页做大值为1000`
        # @type Limit: Integer
        # @param Offset: 查询结果分页返回，指定从第几页返回数据，和Limit参数配合使用。

        # 注：`offset从0开始，即第一页为0。`
        # @type Offset: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :StartDate, :EndDate, :NeedAggregate, :Limit, :Offset, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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

      # 扩展服务开通和授权的详细信息
      class ExtentServiceAuthInfo < TencentCloud::Common::AbstractModel
        # @param Type: 扩展服务类型
        # <ul>
        # <li>AUTO_SIGN             企业自动签（自动签署）</li>
        # <li>  OVERSEA_SIGN          企业与港澳台居民*签署合同</li>
        # <li>  MOBILE_CHECK_APPROVER 使用手机号验证签署方身份</li>
        # <li> PAGING_SEAL           骑缝章</li>
        # <li> DOWNLOAD_FLOW         授权渠道下载合同 </li>
        # <li>AGE_LIMIT_EXPANSION 拓宽签署方年龄限制</li>
        # </ul>
        # @type Type: String
        # @param Name: 扩展服务名称
        # @type Name: String
        # @param Status: 扩展服务的开通状态
        # **ENABLE**：开通
        # **DISABLE**：未开通
        # @type Status: String
        # @param OperatorOpenId: 操作扩展服务的操作人第三方应用平台的用户openid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorOpenId: String
        # @param OperateOn: 扩展服务的操作时间，格式为Unix标准时间戳（秒）。
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
        # @param NotChannelOrganization: 签署企业非渠道子客，默认为false，即表示同一渠道下的企业；如果为true，则目前表示接收方企业为SaaS企业, 为渠道子客时，OrganizationOpenId 必传
        # @type NotChannelOrganization: Boolean

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
        # @param ComponentId: 填写控件ID
        # @type ComponentId: String
        # @param ComponentName: 控件名称
        # @type ComponentName: String
        # @param ComponentFillStatus: 此填写控件的填写状态
        #  **0** : 此填写控件**未填写**
        # **1** : 此填写控件**已填写**
        # @type ComponentFillStatus: String
        # @param ComponentValue: 控件填写内容
        # @type ComponentValue: String
        # @param ImageUrl: 图片填充控件下载链接，如果是图片填充控件时，这里返回图片的下载链接。

        # 注: `链接不是永久链接,  默认有效期5分钟后, 到期后链接失效`
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
        # @param ReceiptId: 模板配置时候的签署人角色ID(用PDF文件发起也可以指定,如果不指定则自动生成此角色ID), 所有的填写控件和签署控件都归属不同的角色
        # @type ReceiptId: String
        # @param ProxyOrganizationOpenId: 第三方平台子客企业的唯一标识，定义Agent中的ProxyOrganizationOpenId一样, 可以参考<a href="https://qian.tencent.com/developers/partnerApis/dataTypes/#agent" target="_blank">Agent结构体</a>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOperatorOpenId: 第三方平台子客企业员工的唯一标识
        # @type ProxyOperatorOpenId: String
        # @param ProxyOrganizationName: 第三方平台子客企业名称，与企业营业执照中注册的名称一致。
        # @type ProxyOrganizationName: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param SignOrder: 签署顺序，如果是有序签署，签署顺序从小到大
        # @type SignOrder: Integer
        # @param ApproveName: 签署方经办人的姓名。
        # 经办人的姓名将用于身份认证和电子签名，请确保填写的姓名为签署方的真实姓名，而非昵称等代名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveName: String
        # @param ApproveStatus: 当前签署人的状态, 状态如下
        # <ul><li> **PENDING** :待签署</li>
        # <li> **FILLPENDING** :待填写</li>
        # <li> **FILLACCEPT** :填写完成</li>
        # <li> **FILLREJECT** :拒绝填写</li>
        # <li> **WAITPICKUP** :待领取</li>
        # <li> **ACCEPT** :已签署</li>
        # <li> **REJECT** :拒签</li>
        # <li> **DEADLINE** :过期没人处理</li>
        # <li> **CANCEL** :流程已撤回</li>
        # <li> **FORWARD** :已经转他人处理</li>
        # <li> **STOP** :流程已终止</li>
        # <li> **RELIEVED** :解除协议（已解除）</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param ApproveMessage: 签署人拒签等情况的时候填写的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMessage: String
        # @param ApproveTime: 签署人签署时间戳，单位秒
        # @type ApproveTime: Integer
        # @param ApproveType: 参与者类型
        # <ul><li> **ORGANIZATION** :企业签署人</li>
        # <li> **PERSON** :个人签署人</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveType: String
        # @param ApproverRoleName: 自定义签署人的角色名, 如: 收款人、开具人、见证人等
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

      # **各种场景传参说明**:

      # <table>
      # <thead>
      # <tr>
      # <th>场景编号</th>
      # <th>可作为发起方类型</th>
      # <th>可作为签署方的类型</th>
      # <th>签署方传参说明</th>
      # </tr>
      # </thead>

      # <tbody>
      # <tr>
      # <td>场景一</td>
      # <td>第三方子企业A员工</td>
      # <td>第三方子企业A员工</td>
      # <td>OpenId、OrganizationName、OrganizationOpenId必传 ,ApproverType设置为ORGANIZATION</td>
      # </tr>

      # <tr>
      # <td>场景二</td>
      # <td>第三方子企业A员工</td>
      # <td>第三方子企业B(不指定经办人)</td>
      # <td>OrganizationName、OrganizationOpenId必传 ,ApproverType设置为ORGANIZATION</td>
      # </tr>

      # <tr>
      # <td>场景三</td>
      # <td>第三方子企业A员工</td>
      # <td>第三方子企业B员工</td>
      # <td>OpenId、OrganizationOpenId、OrganizationName必传, ApproverType设置为ORGANIZATION</td>
      # </tr>

      # <tr>
      # <td>场景四</td>
      # <td>第三方子企业A员工</td>
      # <td>个人/自然人</td>
      # <td>Name、Mobile必传, ApproverType设置为PERSON</td>
      # </tr>

      # <tr>
      # <td>场景五</td>
      # <td>第三方子企业A员工</td>
      # <td>SaaS平台企业员工</td>
      # <td>Name、Mobile、OrganizationName必传，且NotChannelOrganization=True。 ApproverType设置为ORGANIZATION</td>
      # </tr>
      # </tbody>
      # </table>

      # **注1**: `使用模板发起合同时，RecipientId（模板发起合同时）必传`

      # RecipientId参数获取：
      # 从<a href="https://qian.tencent.com/developers/companyApis/templatesAndFiles/DescribeFlowTemplates" target="_blank">DescribeFlowTemplates接口</a>接口中，可以得到模板下的签署方Recipient列表，根据模板自定义的Rolename在此结构体中确定其RecipientId。

      # **注2**:  `如果发起的是动态签署方（即ApproverOption.FillType指定为1），可以不指定具体签署人信息`,  动态签署方可以参考<a href="https://qian.tencent.com/developers/partner/dynamic_signer" target="_blank">此文档</a>
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
        # <li> **ENTERPRISESERVER** :企业/企业员工自动签（他方企业自动签署或文件发起时的本方企业自动签）</li></ul>

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
        # @param ApproverOption: 可以控制签署方在签署合同时能否进行某些操作，例如拒签、转交他人、是否为动态补充签署人等。
        # 详细操作可以参考开发者中心的ApproverOption结构体。
        # @type ApproverOption: :class:`Tencentcloud::Essbasic.v20210526.models.ApproverOption`
        # @param ApproverNeedSignReview: 当前签署方进行签署操作是否需要企业内部审批，true 则为需要
        # @type ApproverNeedSignReview: Boolean
        # @param ApproverVerifyTypes: 指定个人签署方查看合同的校验方式,可以传值如下:
        # <ul><li>  **1**   : （默认）人脸识别,人脸识别后才能合同内容</li>
        # <li>  **2**  : 手机号验证, 用户手机号和参与方手机号(ApproverMobile)相同即可查看合同内容（当手写签名方式为OCR_ESIGN时，该校验方式无效，因为这种签名方式依赖实名认证）
        # </li></ul>
        # 注:
        # <ul><li>如果合同流程设置ApproverVerifyType查看合同的校验方式,    则忽略此签署人的查看合同的校验方式</li>
        # <li>此字段可传多个校验方式</li></ul>
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 签署人签署合同时的认证方式
        # <ul><li> **1** :人脸认证</li>
        # <li> **2** :签署密码</li>
        # <li> **3** :运营商三要素</li></ul>

        # 默认为1(人脸认证 ),2(签署密码)

        # 注:
        # 1. 用<font color='red'>模板创建合同场景</font>, 签署人的认证方式需要在配置模板的时候指定, <font color='red'>在创建合同重新指定无效</font>
        # 2. 运营商三要素认证方式对手机号运营商及前缀有限制,可以参考[运营商支持列表类](https://qian.tencent.com/developers/partner/mobile_support)得到具体的支持说明
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
        # @param ApproverRoleName: 可以自定义签署人角色名：收款人、开具人、见证人等，长度不能超过20，只能由中文、字母、数字和下划线组成。

        # 注: `如果是用模板发起, 优先使用此处上传的, 如果不传则用模板的配置的`
        # @type ApproverRoleName: String
        # @param SignTypeSelector: 生成H5签署链接时，您可以指定签署方签署合同的认证校验方式的选择模式，可传递一下值：
        # <ul><li>**0**：签署方自行选择，签署方可以从预先指定的认证方式中自由选择；</li>
        # <li>**1**：自动按顺序首位推荐，签署方无需选择，系统会优先推荐使用第一种认证方式。</li></ul>
        # 注：
        # `不指定该值时，默认为签署方自行选择。`
        # @type SignTypeSelector: Integer

        attr_accessor :Name, :IdCardType, :IdCardNumber, :Mobile, :OrganizationName, :NotChannelOrganization, :OpenId, :OrganizationOpenId, :ApproverType, :RecipientId, :Deadline, :CallbackUrl, :SignComponents, :ComponentLimitType, :PreReadTime, :JumpUrl, :ApproverOption, :ApproverNeedSignReview, :ApproverVerifyTypes, :ApproverSignTypes, :SignId, :NotifyType, :AddSignComponentsLimits, :ApproverRoleName, :SignTypeSelector
        extend Gem::Deprecate
        deprecate :CallbackUrl, :none, 2023, 12
        deprecate :CallbackUrl=, :none, 2023, 12

        def initialize(name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil, organizationname=nil, notchannelorganization=nil, openid=nil, organizationopenid=nil, approvertype=nil, recipientid=nil, deadline=nil, callbackurl=nil, signcomponents=nil, componentlimittype=nil, prereadtime=nil, jumpurl=nil, approveroption=nil, approverneedsignreview=nil, approververifytypes=nil, approversigntypes=nil, signid=nil, notifytype=nil, addsigncomponentslimits=nil, approverrolename=nil, signtypeselector=nil)
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
          @SignTypeSelector = signtypeselector
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
          @SignTypeSelector = params['SignTypeSelector']
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

      # 签署人签署链接信息。
      class FlowApproverUrlInfo < TencentCloud::Common::AbstractModel
        # @param SignUrl: 签署短链接。</br>
        # 注意:
        # - 该链接有效期为**30分钟**，同时需要注意保密，不要外泄给无关用户。
        # - 该链接不支持小程序嵌入，仅支持**移动端浏览器**打开。
        # @type SignUrl: String
        # @param ApproverType: 签署人类型。
        # - **PERSON**: 个人
        # @type ApproverType: String
        # @param Name: 签署人姓名。
        # @type Name: String
        # @param Mobile: 签署人手机号。
        # @type Mobile: String
        # @param LongUrl: 签署长链接。</br>
        # 注意:
        # - 该链接有效期为**30分钟**，同时需要注意保密，不要外泄给无关用户。
        # - 该链接不支持小程序嵌入，仅支持**移动端浏览器**打开。
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
        # @param FlowId: 合同流程ID，为32位字符串。
        # @type FlowId: String
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param FlowType: 合同流程的类别分类（如销售合同/入职合同等）。
        # @type FlowType: String
        # @param FlowStatus: 合同流程当前的签署状态, 会存在下列的状态值
        # <ul><li> **INIT** :合同创建</li>
        # <li> **PART** :合同签署中(至少有一个签署方已经签署)</li>
        # <li> **REJECT** :合同拒签</li>
        # <li> **ALL** :合同签署完成</li>
        # <li> **DEADLINE** :合同流签(合同过期)</li>
        # <li> **CANCEL** :合同撤回</li>
        # <li> **RELIEVED** :解除协议（已解除）</li></ul>

        # @type FlowStatus: String
        # @param FlowMessage: 当合同流程状态为已拒签（即 FlowStatus=REJECT）或已撤销（即 FlowStatus=CANCEL ）时，此字段 FlowMessage 为拒签或撤销原因。
        # @type FlowMessage: String
        # @param CreateOn: 合同流程的创建时间戳，格式为Unix标准时间戳（秒）。
        # @type CreateOn: Integer
        # @param DeadLine: 签署流程的签署截止时间, 值为unix时间戳, 精确到秒。
        # @type DeadLine: Integer
        # @param CustomData: 调用方自定义的个性化字段(可自定义此字段的值)，并以base64方式编码，支持的最大数据大小为 1000长度。
        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。
        # @type CustomData: String
        # @param FlowApproverInfos: 合同流程的签署方数组
        # @type FlowApproverInfos: Array
        # @param CcInfos: 合同流程的关注方信息数组
        # @type CcInfos: Array
        # @param NeedCreateReview: 是否需要发起前审批
        # <ul><li>当NeedCreateReview为true，表明当前流程是需要发起前审核的合同，可能无法进行查看，签署操作，需要等审核完成后，才可以继续后续流程</li>
        # <li>当NeedCreateReview为false，不需要发起前审核的合同</li></ul>
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
        # @param SelfOrganizationApproverSignEach: 发起方企业经办人（即签署人为发起方企业员工）是否需要对子合同进行独立的意愿确认
        # <ul><li>**false**（默认）：发起方企业经办人签署时对所有子合同进行统一的意愿确认。</li>
        # <li>**true**：发起方企业经办人签署时需要对子合同进行独立的意愿确认。</li></ul>
        # @type SelfOrganizationApproverSignEach: Boolean
        # @param OtherApproverSignEach: 非发起方企业经办人（即：签署人为个人或者不为发起方企业的员工）是否需要对子合同进行独立的意愿确认
        # <ul><li>**false**（默认）：非发起方企业经办人签署时对所有子合同进行统一的意愿确认。</li>
        # <li>**true**：非发起方企业经办人签署时需要对子合同进行独立的意愿确认。</li></ul>
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
      class FlowInfo < TencentCloud::Common::AbstractModel
        # @param FlowName: 合同流程的名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        # @type FlowName: String
        # @param Deadline: 合同流程的签署截止时间，格式为Unix标准时间戳（秒），如果未设置签署截止时间，则默认为合同流程创建后的365天时截止。
        # 如果在签署截止时间前未完成签署，则合同状态会变为已过期，导致合同作废。
        # 示例值：1604912664
        # @type Deadline: Integer
        # @param TemplateId: 用户配置的合同模板ID，会基于此模板创建合同文档，为32位字符串。
        # 如果使用模板发起接口，此参数为必填。

        # 可以通过<a href="https://qian.tencent.com/developers/partnerApis/accounts/CreateConsoleLoginUrl" target="_blank">生成子客登录链接</a>登录企业控制台, 在**企业模板**中得到合同模板ID。
        # @type TemplateId: String
        # @param FlowApprovers: 多个签署人信息，最大支持50个签署方
        # @type FlowApprovers: Array
        # @param FormFields: 表单K-V对列表
        # @type FormFields: Array
        # @param CallbackUrl: 合同状态变动结的通知回调URL，该URL仅支持HTTP或HTTPS协议，建议采用HTTPS协议以保证数据传输的安全性，最大长度1000个字符。

        # 腾讯电子签服务器将通过POST方式，application/json格式通知执行结果，请确保外网可以正常访问该URL。
        # 回调的相关说明可参考开发者中心的<a href="https://qian.tencent.com/developers/partner/callback_data_types" target="_blank">回调通知</a>模块
        # @type CallbackUrl: String
        # @param FlowType: 合同流程的类别分类（可自定义名称，如销售合同/入职合同等），最大长度为200个字符，仅限中文、字母、数字和下划线组成。
        # @type FlowType: String
        # @param FlowDescription: 合同流程描述信息(可自定义此描述)，最大长度1000个字符。
        # @type FlowDescription: String
        # @param CustomerData: 调用方自定义的个性化字段(可自定义此名称)，并以base64方式编码，支持的最大数据大小为1000长度。

        # 在合同状态变更的回调信息等场景中，该字段的信息将原封不动地透传给贵方。回调的相关说明可参考开发者中心的回调通知模块。
        # @type CustomerData: String
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
        # @param CcInfos: 合同流程的抄送人列表，最多可支持50个抄送人，抄送人可查看合同内容及签署进度，但无需参与合同签署。
        # @type CcInfos: Array
        # @param NeedSignReview: 发起方企业的签署人进行签署操作前，是否需要企业内部走审批流程，取值如下：
        # <ul><li> **false**：（默认）不需要审批，直接签署。</li>
        # <li> **true**：需要走审批流程。当到对应参与人签署时，会阻塞其签署操作，等待企业内部审批完成。</li></ul>
        # 企业可以通过CreateFlowSignReview审批接口通知腾讯电子签平台企业内部审批结果
        # <ul><li> 如果企业通知腾讯电子签平台审核通过，签署方可继续签署动作。</li>
        # <li> 如果企业通知腾讯电子签平台审核未通过，平台将继续阻塞签署方的签署动作，直到企业通知平台审核通过。</li></ul>
        # 注：`此功能可用于与企业内部的审批流程进行关联，支持手动、静默签署合同`
        # @type NeedSignReview: Boolean
        # @param CcNotifyType: 若在创建签署流程时指定了关注人CcInfos，此参数可设定向关注人发送短信通知的类型：
        # <ul><li> **0** :合同发起时通知通知对方来查看合同（默认）</li>
        # <li> **1** : 签署完成后通知对方来查看合同</li></ul>
        # @type CcNotifyType: Integer
        # @param AutoSignScene: 个人自动签名的使用场景包括以下, 个人自动签署(即ApproverType设置成个人自动签署时)业务此值必传：
        # <ul><li> **E_PRESCRIPTION_AUTO_SIGN**：电子处方单（医疗自动签）  </li><li> **OTHER** :  通用场景</li></ul>
        # 注: `个人自动签名场景是白名单功能，使用前请与对接的客户经理联系沟通。`
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
        # @param FlowId: 合同流程的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param ResourceUrlInfos: 对应的合同流程的PDF下载链接
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

      # 表格参数headers说明
      # widthPercent Integer 表头单元格列占总表头的比例，例如1：30表示 此列占表头的30%，不填写时列宽度平均拆分；例如2：总2列，某一列填写40，剩余列可以为空，按照60计算。；例如3：总3列，某一列填写30，剩余2列可以为空，分别为(100-30)/2=35

      # content String 表头单元格内容，字数不超过100

      # style String 为字体风格设置 风格支持： font : 目前支持 黑体、宋体; fontSize： 6-72; color：000000-FFFFFF  字符串形如：  "#FFFFFF" 或者 "0xFFFFFF"; bold ： 是否加粗， true ： 加粗 false： 不加粗; align: 对其方式， 支持 LEFT / RIGHT / CENTER
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param DownLoadFlows: 流程合同ID列表,  可将这些流程ID组织成合同组的形式, 下载时候每个文件夹会是一个zip压缩包,  每个文件夹对多20个合同, 所有文件夹最多50个合同

        # 如下列组织形式,  控制台下载页面点击下载按钮后, 会生成**2023采购合同.zip**和**2023入职合同.zip** 两个下载任务(注:`部分浏览器需要授权或不支持创建多下载任务`)

        # **2023采购合同.zip**压缩包会有`yDwivUUckpor6wtoUuogwQHCAB0ES0pQ`和`yDwi8UUckpo5fz9cUqI6nGwcuTvt9YSh`两个合同的文件
        # **2023入职合同.zip** 压缩包会有`yDwivUUckpor6wobUuogwQHvdGfvDi5K`的文件

        # ![image](	https://dyn.ess.tencent.cn/guide/capi/channel_GetDownloadFlowUrl_DownLoadFlows.png)
        # @type DownLoadFlows: Array
        # @param Operator: 操作者的信息，不用传
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :DownLoadFlows, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param DownLoadUrl: 跳转控制台合同下载页面链接 , 5分钟之内有效，且只能访问一次
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

      # 授权企业列表（目前仅用于“企业自动签 -> 合作企业授权”）
      class HasAuthOrganization < TencentCloud::Common::AbstractModel
        # @param OrganizationOpenId: 授权企业openid，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationOpenId: String
        # @param OrganizationName: 授权企业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String
        # @param AuthorizedOrganizationOpenId: 被授权企业openid，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizedOrganizationOpenId: String
        # @param AuthorizedOrganizationName: 被授权企业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizedOrganizationName: String
        # @param AuthorizeTime: 授权时间，格式为时间戳，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizeTime: Integer

        attr_accessor :OrganizationOpenId, :OrganizationName, :AuthorizedOrganizationOpenId, :AuthorizedOrganizationName, :AuthorizeTime

        def initialize(organizationopenid=nil, organizationname=nil, authorizedorganizationopenid=nil, authorizedorganizationname=nil, authorizetime=nil)
          @OrganizationOpenId = organizationopenid
          @OrganizationName = organizationname
          @AuthorizedOrganizationOpenId = authorizedorganizationopenid
          @AuthorizedOrganizationName = authorizedorganizationname
          @AuthorizeTime = authorizetime
        end

        def deserialize(params)
          @OrganizationOpenId = params['OrganizationOpenId']
          @OrganizationName = params['OrganizationName']
          @AuthorizedOrganizationOpenId = params['AuthorizedOrganizationOpenId']
          @AuthorizedOrganizationName = params['AuthorizedOrganizationName']
          @AuthorizeTime = params['AuthorizeTime']
        end
      end

      # 被授权的用户信息
      class HasAuthUser < TencentCloud::Common::AbstractModel
        # @param OpenId: 第三方应用平台自定义，对应第三方平台子客企业员工的唯一标识。


        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String

        attr_accessor :OpenId

        def initialize(openid=nil)
          @OpenId = openid
        end

        def deserialize(params)
          @OpenId = params['OpenId']
        end
      end

      # ModifyExtendedService请求参数结构体
      class ModifyExtendedServiceRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业标识: Agent. ProxyOperator.OpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent.AppId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ServiceType:   扩展服务类型
        # <ul>
        # <li>AUTO_SIGN             企业自动签（自动签署）</li>
        # <li>  OVERSEA_SIGN          企业与港澳台居民*签署合同</li>
        # <li>  MOBILE_CHECK_APPROVER 使用手机号验证签署方身份</li>
        # <li> PAGING_SEAL           骑缝章</li>
        # <li> DOWNLOAD_FLOW         授权渠道下载合同 </li>
        # <li>AGE_LIMIT_EXPANSION 拓宽签署方年龄限制</li>
        # </ul>
        # @type ServiceType: String
        # @param Operate: 操作类型
        # OPEN:开通
        # CLOSE:关闭
        # @type Operate: String
        # @param Endpoint: 链接跳转类型，支持以下类型
        # <ul>
        # <li>WEIXINAPP : 短链直接跳转到电子签小程序  (默认值)</li>
        # <li>APP : 第三方APP或小程序跳转电子签小程序</li>
        # </ul>
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>第三方平台子客企业中的员工标识: Agent.AppId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param OperateType: 操作类型，可取值如下:
        # <ul>
        # <li>SELECT:  查询</li>
        # <li>DELETE:  删除</li>
        # <li>UPDATE: 更新</li>
        # </ul>
        # @type OperateType: String
        # @param TemplateId: 合同模板ID，为32位字符串。
        # 注: ` 此处为第三方应用平台模板库模板ID，非子客模板ID`
        # @type TemplateId: String
        # @param ProxyOrganizationOpenIds: 第三方平台子客企业的唯一标识，支持批量(用,分割)，
        # @type ProxyOrganizationOpenIds: String
        # @param AuthTag: 模板可见范围, 可以设置的值如下:

        # **all**: 所有本第三方应用合作企业可见
        # **part**: 指定的本第三方应用合作企业

        # 对应控制台的位置
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/68b97812c68d6af77a5991e3bff5c790.png)
        # @type AuthTag: String
        # @param Available: 当OperateType=UPDATE时，可以通过设置此字段对模板启停用状态进行操作。
        # <ul>
        # <li>0: 不修改模板可用状态</li>
        # <li>1:  启用模板</li>
        # <li>2: 停用模板</li>
        # </ul>
        # 启用后模板可以正常领取。

        # 停用后，推送方式为【自动推送】的模板则无法被子客使用，推送方式为【手动领取】的模板则无法出现被模板库被子客领用。
        # 如果Available更新失败，会直接返回错误。
        # @type Available: Integer
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :OperateType, :TemplateId, :ProxyOrganizationOpenIds, :AuthTag, :Available, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param AppId: 第三方应用平台的应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param TemplateId: 合同模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param OperateResult: 描述模板可见性更改的结果。
        # <ul>
        # <li>all-success: 全部成功</li>
        # <li>part-success: 部分成功,失败的会在FailMessageList中展示</li>
        # <li>fail:全部失败, 失败的会在FailMessageList中展示</li>
        # </ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateResult: String
        # @param AuthTag: 模板可见范围:
        # **all**: 所有本第三方应用合作企业可见
        # **part**: 指定的本第三方应用合作企业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthTag: String
        # @param ProxyOrganizationOpenIds: 第三方平台子客企业标识列表
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

      # 企业批量注册链接信息
      class OrganizationAuthUrl < TencentCloud::Common::AbstractModel
        # @param AuthUrl: 跳转链接, 链接的有效期根据企业,员工状态和终端等有区别, 可以参考下表
        # <table> <thead> <tr> <th>子客企业状态</th> <th>子客企业员工状态</th> <th>Endpoint</th> <th>链接有效期限</th> </tr> </thead>  <tbody> <tr> <td>企业未激活</td> <td>员工未认证</td> <td>PC</td> <td>5分钟</td>  </tr>  <tr> <td>企业未激活</td> <td>员工未认证</td> <td>CHANNEL/SHORT_URL/APP</td> <td>一年</td>  </tr>  <tr> <td>企业已激活</td> <td>员工未认证</td> <td>PC</td> <td>5分钟</td>  </tr> <tr> <td>企业已激活</td> <td>员工未认证</td> <td>CHANNEL/SHORT_URL/APP</td> <td>一年</td>  </tr>  <tr> <td>企业已激活</td> <td>员工已认证</td> <td>PC</td> <td>5分钟</td>  </tr>  <tr> <td>企业已激活</td> <td>员工已认证</td> <td>CHANNEL/SHORT_URL/APP</td> <td>一年</td>  </tr> </tbody> </table>
        # 注：
        # `1.链接仅单次有效，每次登录需要需要重新创建新的链接`
        # `2.创建的链接应避免被转义，如：&被转义为\u0026；如使用Postman请求后，请选择响应类型为 JSON，否则链接将被转义`
        # @type AuthUrl: String
        # @param ErrorMessage: 企业批量注册的错误信息，例如：企业三要素不通过
        # @type ErrorMessage: String

        attr_accessor :AuthUrl, :ErrorMessage

        def initialize(authurl=nil, errormessage=nil)
          @AuthUrl = authurl
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @AuthUrl = params['AuthUrl']
          @ErrorMessage = params['ErrorMessage']
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
        deprecate :ClientIp, :none, 2023, 12
        deprecate :ClientIp=, :none, 2023, 12
        deprecate :ProxyIp, :none, 2023, 12
        deprecate :ProxyIp=, :none, 2023, 12

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

      # 合同验签每个签署区的信息
      class PdfVerifyResult < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验签结果详情，每个签名域对应的验签结果。状态值如下
        # <ul><li> **1** :验签成功，在电子签签署</li>
        # <li> **2** :验签成功，在其他平台签署</li>
        # <li> **3** :验签失败</li>
        # <li> **4** :pdf文件没有签名域</li>
        # <li> **5** :文件签名格式错误</li></ul>
        # @type VerifyResult: Integer
        # @param SignPlatform: 签署平台
        # 如果文件是在腾讯电子签平台签署，则为**腾讯电子签**，
        # 如果文件不在腾讯电子签平台签署，则为**其他平台**。
        # @type SignPlatform: String
        # @param SignerName: 申请证书的主体的名字

        # 如果是在腾讯电子签平台签署, 则对应的主体的名字个数如下
        # **企业**:  ESS@企业名称@平台生成的数字编码
        # **个人**: ESS@个人姓名@证件号@平台生成的数字编码

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
        # @param SignType: 签名类型, 保留字段, 现在全部为0

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
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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

      # 同步的员工的信息
      class ProxyOrganizationOperator < TencentCloud::Common::AbstractModel
        # @param Id: 员工的唯一标识(即OpenId),  定义Agent中的OpenId一样, 可以参考<a href="https://qian.tencent.com/developers/partnerApis/dataTypes/#agent" target="_blank">Agent结构体</a>
        # @type Id: String
        # @param Name: 员工的姓名，最大长度50个字符
        # 员工的姓名将用于身份认证和电子签名，请确保填写的姓名为真实姓名，而非昵称等代名。
        # @type Name: String
        # @param IdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证  (默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 经办人证件号
        # @type IdCardNumber: String
        # @param Mobile: 员工的手机号，支持国内手机号11位数字(无需加+86前缀或其他字符)，不支持海外手机号。
        # @type Mobile: String
        # @param DefaultRole: 预先分配员工的角色, 可以分配的角色如下:
        # <table> <thead> <tr> <th>可以分配的角色</th> <th>角色名称</th> <th>角色描述</th> </tr> </thead> <tbody> <tr> <td>admin</td> <td>业务管理员（IT 系统负责人，e.g. CTO）</td> <td>有企业合同模块、印章模块、模板模块等全量功能及数据权限。</td> </tr> <tr> <td>channel-normal-operator</td> <td>经办人（企业法务负责人）</td> <td>有发起合同、签署合同（含填写、拒签）、撤销合同、持有印章等权限能力，可查看企业所有合同数据。</td> </tr> <tr> <td>channel-sales-man</td> <td>业务员（一般为销售员、采购员）</td> <td>有发起合同、签署合同（含填写、拒签）、撤销合同、持有印章等权限能力，可查看自己相关所有合同数据。</td> </tr> </tbody> </table>
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

      # 流程中签署方和填写方(如果有填写控件存证时)的信息
      class Recipient < TencentCloud::Common::AbstractModel
        # @param RecipientId: 合同参与方的角色ID
        # @type RecipientId: String
        # @param RecipientType: 参与者类型, 可以选择的类型如下:
        # <ul><li> **ENTERPRISE** :此角色为企业参与方</li>
        # <li> **INDIVIDUAL** :此角色为个人参与方</li>
        # <li> **PROMOTER** :此角色是发起方</li></ul>
        # @type RecipientType: String
        # @param Description: 合同参与方的角色描述，长度不能超过100，只能由中文、字母、数字和下划线组成。
        # @type Description: String
        # @param RoleName: 合同参与方的角色名字，长度不能超过20，只能由中文、字母、数字和下划线组成。
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
        # @param ApproverVerifyTypes: 签署人查看合同校验方式, 支持的类型如下:
        # <ul><li> 1 :实名认证查看</li>
        # <li> 2 :手机号校验查看</li></ul>
        # @type ApproverVerifyTypes: Array
        # @param ApproverSignTypes: 签署人进行合同签署时的认证方式，支持的类型如下:
        # <ul><li> 1 :人脸认证</li>
        # <li> 2 :签署密码</li>
        # <li> 3 :运营商三要素认证</li>
        # <li> 4 :UKey认证</li></ul>
        # @type ApproverSignTypes: Array

        attr_accessor :RecipientId, :RecipientType, :Description, :RoleName, :RequireValidation, :RequireSign, :SignType, :RoutingOrder, :IsPromoter, :ApproverVerifyTypes, :ApproverSignTypes

        def initialize(recipientid=nil, recipienttype=nil, description=nil, rolename=nil, requirevalidation=nil, requiresign=nil, signtype=nil, routingorder=nil, ispromoter=nil, approververifytypes=nil, approversigntypes=nil)
          @RecipientId = recipientid
          @RecipientType = recipienttype
          @Description = description
          @RoleName = rolename
          @RequireValidation = requirevalidation
          @RequireSign = requiresign
          @SignType = signtype
          @RoutingOrder = routingorder
          @IsPromoter = ispromoter
          @ApproverVerifyTypes = approververifytypes
          @ApproverSignTypes = approversigntypes
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
          @ApproverVerifyTypes = params['ApproverVerifyTypes']
          @ApproverSignTypes = params['ApproverSignTypes']
        end
      end

      # 参与方填写控件信息
      class RecipientComponentInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 参与方的角色ID
        # @type RecipientId: String
        # @param RecipientFillStatus: 参与方填写状态

        # <ul><li> **0** : 还没有填写</li>
        # <li> **1** : 已经填写</li></ul>
        # @type RecipientFillStatus: String
        # @param IsPromoter: 此角色是否是发起方角色

        # <ul><li> **true** : 是发起方角色</li>
        # <li> **false** : 不是发起方角色</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPromoter: Boolean
        # @param Components: 此角色的填写控件列表
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

      # 企业认证信息参数， 需要保证这些参数跟营业执照中的信息一致。
      class RegistrationOrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # @type OrganizationName: String
        # @param OrganizationOpenId: 机构在贵司业务系统中的唯一标识，用于与腾讯电子签企业账号进行映射，确保在同一应用内不会出现重复。
        # 该标识最大长度为64位字符串，仅支持包含26个英文字母和数字0-9的字符。
        # @type OrganizationOpenId: String
        # @param OpenId: 员工在贵司业务系统中的唯一身份标识，用于与腾讯电子签账号进行映射，确保在同一应用内不会出现重复。
        # 该标识最大长度为64位字符串，仅支持包含26个英文字母和数字0-9的字符。
        # @type OpenId: String
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
        # 如果法人作为超管管理组织机构,超管姓名就是法人姓名
        # @type AdminName: String
        # @param AdminMobile: 组织机构超管姓名。
        # 在注册流程中，这个手机号必须跟操作人在电子签注册的个人手机号一致。
        # @type AdminMobile: String
        # @param AuthorizationTypes: 可选的此企业允许的授权方式, 可以设置的方式有:
        # 1：上传授权书+对公打款
        # 2：法人授权/认证  会根据当前操作人的身份判定,如果当前操作人是法人,则是法人认证, 如果当前操作人不是法人,则走法人授权

        # 注:
        # `1. 当前仅支持一种认证方式`
        # `2. 如果当前的企业类型是政府/事业单位, 则只支持上传授权书+对公打款`
        # @type AuthorizationTypes: Array

        attr_accessor :OrganizationName, :OrganizationOpenId, :OpenId, :UniformSocialCreditCode, :LegalName, :Address, :AdminName, :AdminMobile, :AuthorizationTypes

        def initialize(organizationname=nil, organizationopenid=nil, openid=nil, uniformsocialcreditcode=nil, legalname=nil, address=nil, adminname=nil, adminmobile=nil, authorizationtypes=nil)
          @OrganizationName = organizationname
          @OrganizationOpenId = organizationopenid
          @OpenId = openid
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalName = legalname
          @Address = address
          @AdminName = adminname
          @AdminMobile = adminmobile
          @AuthorizationTypes = authorizationtypes
        end

        def deserialize(params)
          @OrganizationName = params['OrganizationName']
          @OrganizationOpenId = params['OrganizationOpenId']
          @OpenId = params['OpenId']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalName = params['LegalName']
          @Address = params['Address']
          @AdminName = params['AdminName']
          @AdminMobile = params['AdminMobile']
          @AuthorizationTypes = params['AuthorizationTypes']
        end
      end

      # 解除协议的签署人，如不指定，默认使用待解除流程(原流程)中的签署人。</br>
      # `注意`:
      #  - 不支持更换C端(个人身份类型)签署人，如果原流程中含有C端签署人，默认使用原流程中的该签署人。
      #  - 目前不支持替换C端(个人身份类型)签署人，但是可以指定C端签署人的签署方自定义控件别名，具体见参数ApproverSignRole描述。
      #  - 当指定C端签署人的签署方自定义控件别名不空时，除参数ApproverNumber外，可以只传参数ApproverSignRole。

      # 如果需要指定B端(企业身份类型)签署人，其中ReleasedApprover需要传递的参数如下：
      # `ApproverNumber`, `OrganizationName`, `ApproverType`必传。</br>
      # 对于其他身份标识：
      # - **子客企业指定经办人**：OpenId必传，OrganizationOpenId必传；
      # - **非子客企业经办人**：Name、Mobile必传。
      class ReleasedApprover < TencentCloud::Common::AbstractModel
        # @param ApproverNumber: 签署人在原合同签署人列表中的顺序序号(从0开始，按顺序依次递增)。</br>
        # 可以通过<a href="https://qian.tencent.com/developers/partnerApis/flows/DescribeFlowDetailInfo" target="_blank">DescribeFlowDetailInfo</a>接口查看原流程中的签署人列表。
        # @type ApproverNumber: Integer
        # @param ApproverType: 指定签署人类型，目前支持
        # <ul><li> **ORGANIZATION**：企业(默认值)</li>
        # <li> **ENTERPRISESERVER**：企业静默签</li></ul>
        # @type ApproverType: String
        # @param Name: 签署人姓名，最大长度50个字。
        # @type Name: String
        # @param IdCardType: 签署方经办人的证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证(默认值)</li>
        # <li>HONGKONG_AND_MACAO : 港澳居民来往内地通行证</li>
        # <li>HONGKONG_MACAO_AND_TAIWAN : 港澳台居民居住证(格式同居民身份证)</li></ul>
        # @type IdCardType: String
        # @param IdCardNumber: 证件号码，应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成(如存在X，请大写)。</li>
        # <li>港澳居民来往内地通行证号码应为9位字符串，第1位为“C”，第2位为英文字母(但“I”、“O”除外)，后7位为阿拉伯数字。</li>
        # <li>港澳台居民居住证号码编码规则与中国大陆身份证相同，应为18位字符串。</li></ul>
        # @type IdCardNumber: String
        # @param Mobile: 签署人手机号。
        # @type Mobile: String
        # @param OrganizationName: 组织机构名称。
        # 请确认该名称与企业营业执照中注册的名称一致。
        # 如果名称中包含英文括号()，请使用中文括号（）代替。
        # 如果签署方是企业签署方(approverType = 0 或者 approverType = 3)， 则企业名称必填。
        # @type OrganizationName: String
        # @param OrganizationOpenId: 第三方平台子客企业的唯一标识，定义Agent中的ProxyOrganizationOpenId一样, 可以参考<a href="https://qian.tencent.com/developers/partnerApis/dataTypes/#agent" target="_blank">Agent结构体</a>。</br>
        # 当为子客企业指定经办人时，此OrganizationOpenId必传。
        # @type OrganizationOpenId: String
        # @param OpenId: 第三方平台子客企业员工的唯一标识，长度不能超过64，只能由字母和数字组成。</br>
        # 当签署方为同一第三方平台下的员工时，此OpenId必传。
        # @type OpenId: String
        # @param ApproverSignComponentType: 签署控件类型，支持自定义企业签署方的签署控件类型
        # <ul><li> **SIGN_SEAL**：默认为印章控件类型(默认值)</li>
        # <li> **SIGN_SIGNATURE**：手写签名控件类型</li></ul>
        # @type ApproverSignComponentType: String
        # @param ApproverSignRole: 参与方在合同中的角色是按照创建合同的时候来排序的，解除协议默认会将第一个参与人叫`甲方`,第二个叫`乙方`,  第三个叫`丙方`，以此类推。</br>
        # 如果需改动此参与人的角色名字，可用此字段指定，由汉字,英文字符,数字组成，最大20个字。
        # @type ApproverSignRole: String

        attr_accessor :ApproverNumber, :ApproverType, :Name, :IdCardType, :IdCardNumber, :Mobile, :OrganizationName, :OrganizationOpenId, :OpenId, :ApproverSignComponentType, :ApproverSignRole

        def initialize(approvernumber=nil, approvertype=nil, name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil, organizationname=nil, organizationopenid=nil, openid=nil, approversigncomponenttype=nil, approversignrole=nil)
          @ApproverNumber = approvernumber
          @ApproverType = approvertype
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @OrganizationName = organizationname
          @OrganizationOpenId = organizationopenid
          @OpenId = openid
          @ApproverSignComponentType = approversigncomponenttype
          @ApproverSignRole = approversignrole
        end

        def deserialize(params)
          @ApproverNumber = params['ApproverNumber']
          @ApproverType = params['ApproverType']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @OrganizationName = params['OrganizationName']
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

      # 催办接口返回的详细信息。
      class RemindFlowRecords < TencentCloud::Common::AbstractModel
        # @param CanRemind: 合同流程是否可以催办： true - 可以，false - 不可以。 若无法催办，将返回RemindMessage以解释原因。
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

      # 签署二维码的基本信息，用于创建二维码，用户可扫描该二维码进行签署操作。
      class SignQrCode < TencentCloud::Common::AbstractModel
        # @param QrCodeId: 二维码ID，为32位字符串。

        # 注: 需要保留此二维码ID, 用于后序通过<a href="https://qian.tencent.com/developers/partnerApis/templates/ChannelCancelMultiFlowSignQRCode" target="_blank">取消一码多扫二维码</a>关闭这个二维码的签署功能。
        # @type QrCodeId: String
        # @param QrCodeUrl: 二维码URL，可通过转换二维码的工具或代码组件将此URL转化为二维码，以便用户扫描进行流程签署。
        # @type QrCodeUrl: String
        # @param ExpiredTime: 二维码的有截止时间，格式为Unix标准时间戳（秒），可以通过入参的QrEffectiveDay来设置有效期，默认为7天有效期。
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

      # 流程签署二维码的签署信息，适用于客户系统整合二维码功能。 通过链接，用户可直接访问电子签名小程序并签署合同。
      class SignUrl < TencentCloud::Common::AbstractModel
        # @param AppSignUrl: 跳转至电子签名小程序签署的链接地址。 适用于客户端APP及小程序直接唤起电子签名小程序。
        # @type AppSignUrl: String
        # @param EffectiveTime: 签署链接有效时间，格式类似"2022-08-05 15:55:01"
        # @type EffectiveTime: String
        # @param HttpSignUrl: 跳转至电子签名小程序签署的链接地址，格式类似于https://essurl.cn/xxx。 打开此链接将会展示H5中间页面，随后唤起电子签名小程序以进行合同签署。
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
        # @param ApproverType: 参与者类型, 类型如下:
        # **ORGANIZATION**:企业经办人
        # **PERSON**: 自然人
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
        deprecate :CustomUserId, :none, 2023, 12
        deprecate :CustomUserId=, :none, 2023, 12

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

      # 同步员工失败原因
      class SyncFailReason < TencentCloud::Common::AbstractModel
        # @param Id: 企业员工标识(即OpenId)
        # @type Id: String
        # @param Message: 新增员工或者员工离职失败原因, 可能存证ID不符合规范、证件号码不合法等原因
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # </ul>
        # 第三方平台子客企业必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param OperatorType: 操作类型，对应的操作
        # <ul><li> **CREATE** :新增员工</li>
        # <li> **UPDATE** :修改员工</li>
        # <li> **RESIGN** :离职员工</li></ul>
        # @type OperatorType: String
        # @param ProxyOrganizationOperators: 员工信息列表，最多支持200个
        # @type ProxyOrganizationOperators: Array
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :OperatorType, :ProxyOrganizationOperators, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # @param Status:  同步的状态,  全部同步失败接口是接口会直接报错

        # <ul><li> **1** :全部成功</li>
        # <li> **2** :部分成功</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param FailedList: 同步失败员工ID及其失败原因
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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # </ul>
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 第三方平台子客企业名称，请确认该名称与企业营业执照中注册的名称一致。
        # 注: `如果名称中包含英文括号()，请使用中文括号（）代替。`
        # @type ProxyOrganizationName: String
        # @param BusinessLicense: 营业执照正面照(PNG或JPG) base64格式, 大小不超过5M
        # @type BusinessLicense: String
        # @param UniformSocialCreditCode: 第三方平台子客企业统一社会信用代码，最大长度200个字符
        # @type UniformSocialCreditCode: String
        # @param ProxyLegalName: 第三方平台子客企业法定代表人的名字
        # @type ProxyLegalName: String
        # @param Operator: 暂未开放
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ProxyLegalIdCardType: 第三方平台子客企业法定代表人的证件类型，支持以下类型
        # <ul><li>ID_CARD : 居民身份证 (默认值)</li></ul>
        # 注: `现在仅支持ID_CARD居民身份证类型`
        # @type ProxyLegalIdCardType: String
        # @param ProxyLegalIdCardNumber: 第三方平台子客企业法定代表人的证件号码, 应符合以下规则
        # <ul><li>居民身份证号码应为18位字符串，由数字和大写字母X组成（如存在X，请大写）。</li></ul>
        # @type ProxyLegalIdCardNumber: String
        # @param ProxyAddress: 第三方平台子客企业详细住所，最大长度500个字符

        # 注：`需要符合省市区详情的格式例如： XX省XX市XX区街道具体地址`
        # @type ProxyAddress: String

        attr_accessor :Agent, :ProxyOrganizationName, :BusinessLicense, :UniformSocialCreditCode, :ProxyLegalName, :Operator, :ProxyLegalIdCardType, :ProxyLegalIdCardNumber, :ProxyAddress
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

        def initialize(agent=nil, proxyorganizationname=nil, businesslicense=nil, uniformsocialcreditcode=nil, proxylegalname=nil, operator=nil, proxylegalidcardtype=nil, proxylegalidcardnumber=nil, proxyaddress=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @BusinessLicense = businesslicense
          @UniformSocialCreditCode = uniformsocialcreditcode
          @ProxyLegalName = proxylegalname
          @Operator = operator
          @ProxyLegalIdCardType = proxylegalidcardtype
          @ProxyLegalIdCardNumber = proxylegalidcardnumber
          @ProxyAddress = proxyaddress
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
          @ProxyAddress = params['ProxyAddress']
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
        deprecate :IsPromoter, :none, 2023, 12
        deprecate :IsPromoter=, :none, 2023, 12

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
        # @param Agent: 关于渠道应用的相关信息，包括渠道应用标识、第三方平台子客企业标识及第三方平台子客企业中的员工标识等内容，您可以参阅开发者中心所提供的 Agent 结构体以获取详细定义。

        # 此接口下面信息必填。
        # <ul>
        # <li>渠道应用标识:  Agent.AppId</li>
        # <li>第三方平台子客企业标识: Agent.ProxyOrganizationOpenId</li>
        # <li>第三方平台子客企业中的员工标识: Agent. ProxyOperator.OpenId</li>
        # </ul>
        # 第三方平台子客企业和员工必须已经经过实名认证
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param BusinessType: 文件对应业务类型,可以选择的类型如下
        # <ul><li> **TEMPLATE** : 此上传的文件用户生成合同模板，文件类型支持.pdf/.doc/.docx/.html格式，如果非pdf文件需要通过<a href="https://qian.tencent.com/developers/partnerApis/files/ChannelGetTaskResultApi" target="_blank">创建文件转换任务</a>转换后才能使用</li>
        # <li> **DOCUMENT** : 此文件用来发起合同流程，文件类型支持.pdf/.doc/.docx/.jpg/.png/.xls.xlsx/.html，如果非pdf文件需要通过<a href="https://qian.tencent.com/developers/partnerApis/files/ChannelGetTaskResultApi" target="_blank">创建文件转换任务</a>转换后才能使用</li></ul>
        # @type BusinessType: String
        # @param FileInfos: 上传文件内容数组，最多支持上传20个文件。
        # @type FileInfos: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :BusinessType, :FileInfos, :Operator
        extend Gem::Deprecate
        deprecate :Operator, :none, 2023, 12
        deprecate :Operator=, :none, 2023, 12

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
        # 注: `如果一个文件上传失败, 则全部文件皆上传失败`
        # @type TotalCount: Integer
        # @param FileIds: 文件资源ID数组，每个文件资源ID为32位字符串。
        # 建议开发者保存此资源ID，后续创建合同或创建合同流程需此资源ID。
        # 注:`有效期一个小时, 有效期内此文件id可以反复使用, 超过有效期无法使用`
        # @type FileIds: Array
        # @param FileUrls: 对应上传文件的下载链接，过期时间5分钟
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
        # @param ProxyOrganizationOpenId: 子客企业标识
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOrganizationName: 子客企业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationName: String
        # @param Date: 对应的消耗日期, **如果是汇总数据则为1970-01-01**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param Usage: 消耗合同数量
        # @type Usage: Integer
        # @param Cancel: 撤回合同数量
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

      # 接口调用的员工信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param OpenId: 第三方应用平台自定义，对应第三方平台子客企业员工的唯一标识。


        # 注意:
        # 1. OpenId在子客企业对应一个真实员工，**本应用唯一, 不可重复使用**，最大64位字符串
        # 2. 可使用用户在贵方企业系统中的Userid或者hash值作为子客企业的员工OpenId
        # 3. **员工加入企业后**, 可以通过<a href="https://qian.tencent.com/developers/partnerApis/accounts/CreateConsoleLoginUrl" target="_blank">生成子客登录链接</a>登录子客控制台后, 在**组织架构**模块查看员工们的OpenId, 样式如下图
        # ![image](https://qcloudimg.tencent-cloud.cn/raw/bb67fb66c926759df3a0af5838fdafd5.png)
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
        deprecate :Channel, :none, 2023, 12
        deprecate :Channel=, :none, 2023, 12
        deprecate :CustomUserId, :none, 2023, 12
        deprecate :CustomUserId=, :none, 2023, 12
        deprecate :ClientIp, :none, 2023, 12
        deprecate :ClientIp=, :none, 2023, 12
        deprecate :ProxyIp, :none, 2023, 12
        deprecate :ProxyIp=, :none, 2023, 12

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

