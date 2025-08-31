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
  module Ses
    module V20201002
      # 地址级退订配置
      class AddressUnsubscribeConfigData < TencentCloud::Common::AbstractModel
        # @param Address: 发信地址
        # @type Address: String
        # @param UnsubscribeConfig: 退订链接选项 0: 不加入退订链接 1: 简体中文 2: 英文 3: 繁体中文 4: 西班牙语 5: 法语 6: 德语 7: 日语 8: 韩语 9: 阿拉伯语 10: 泰语
        # @type UnsubscribeConfig: String
        # @param Status: 0:关闭，1:开启
        # @type Status: Integer

        attr_accessor :Address, :UnsubscribeConfig, :Status

        def initialize(address=nil, unsubscribeconfig=nil, status=nil)
          @Address = address
          @UnsubscribeConfig = unsubscribeconfig
          @Status = status
        end

        def deserialize(params)
          @Address = params['Address']
          @UnsubscribeConfig = params['UnsubscribeConfig']
          @Status = params['Status']
        end
      end

      # 附件结构，包含附件名和base64之后的附件内容。
      class Attachment < TencentCloud::Common::AbstractModel
        # @param FileName: 附件名称，最大支持255个字符长度，不支持部分附件类型，详情请参考[附件类型](https://cloud.tencent.com/document/product/1288/51951)。
        # @type FileName: String
        # @param Content: Base64之后的附件内容，您可以发送的附件大小上限为4M。注意：腾讯云接口请求最大支持 8M 的请求包，附件内容经过 Base64 预期扩大1.5倍。应该控制所有附件的总大小最大在 4M 以内，整体请求超出 8M 接口会返回错误。
        # @type Content: String
        # @param FileURL: 附件URL。未开放功能，请勿使用。
        # @type FileURL: String

        attr_accessor :FileName, :Content, :FileURL

        def initialize(filename=nil, content=nil, fileurl=nil)
          @FileName = filename
          @Content = content
          @FileURL = fileurl
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Content = params['Content']
          @FileURL = params['FileURL']
        end
      end

      # BatchSendEmail请求参数结构体
      class BatchSendEmailRequest < TencentCloud::Common::AbstractModel
        # @param FromEmailAddress: 发信邮件地址。请填写发件人邮箱地址，例如：noreply@mail.qcloud.com。如需填写发件人说明，请按照
        # 发信人 &lt;邮件地址&gt; 的方式填写，例如：
        # 腾讯云团队 &lt;noreply@mail.qcloud.com&gt;
        # @type FromEmailAddress: String
        # @param ReceiverId: 收件人列表ID
        # @type ReceiverId: Integer
        # @param Subject: 邮件主题
        # @type Subject: String
        # @param TaskType: 任务类型 1: 立即发送 2: 定时发送 3: 周期（频率）发送
        # @type TaskType: Integer
        # @param ReplyToAddresses: 邮件的“回复”电子邮件地址。可以填写您能收到邮件的邮箱地址，可以是个人邮箱。如果不填，收件人的回复邮件将会发送失败。
        # @type ReplyToAddresses: String
        # @param Template: 使用模板发送时，填写的模板相关参数
        # <dx-alert infotype="notice" title="注意"> 如您未申请过特殊配置，则该字段为必填 </dx-alert>
        # @type Template: :class:`Tencentcloud::Ses.v20201002.models.Template`
        # @param Simple: 已废弃<dx-alert infotype="notice" title="说明"> 仅部分历史上申请了特殊配置的客户需要使用。如您未申请过特殊配置，则不存在该字段。</dx-alert>
        # @type Simple: :class:`Tencentcloud::Ses.v20201002.models.Simple`
        # @param Attachments: 需要发送附件时，填写附件相关参数（暂未支持）
        # @type Attachments: Array
        # @param CycleParam: 周期发送任务的必要参数
        # @type CycleParam: :class:`Tencentcloud::Ses.v20201002.models.CycleEmailParam`
        # @param TimedParam: 定时发送任务的必要参数
        # @type TimedParam: :class:`Tencentcloud::Ses.v20201002.models.TimedEmailParam`
        # @param Unsubscribe: 退订链接选项 0: 不加入退订链接 1: 简体中文 2: 英文 3: 繁体中文 4: 西班牙语 5: 法语 6: 德语 7: 日语 8: 韩语 9: 阿拉伯语 10: 泰语
        # @type Unsubscribe: String
        # @param ADLocation: 是否添加广告标识 0:不添加 1:添加到subject前面，2:添加到subject后面
        # @type ADLocation: Integer

        attr_accessor :FromEmailAddress, :ReceiverId, :Subject, :TaskType, :ReplyToAddresses, :Template, :Simple, :Attachments, :CycleParam, :TimedParam, :Unsubscribe, :ADLocation

        def initialize(fromemailaddress=nil, receiverid=nil, subject=nil, tasktype=nil, replytoaddresses=nil, template=nil, simple=nil, attachments=nil, cycleparam=nil, timedparam=nil, unsubscribe=nil, adlocation=nil)
          @FromEmailAddress = fromemailaddress
          @ReceiverId = receiverid
          @Subject = subject
          @TaskType = tasktype
          @ReplyToAddresses = replytoaddresses
          @Template = template
          @Simple = simple
          @Attachments = attachments
          @CycleParam = cycleparam
          @TimedParam = timedparam
          @Unsubscribe = unsubscribe
          @ADLocation = adlocation
        end

        def deserialize(params)
          @FromEmailAddress = params['FromEmailAddress']
          @ReceiverId = params['ReceiverId']
          @Subject = params['Subject']
          @TaskType = params['TaskType']
          @ReplyToAddresses = params['ReplyToAddresses']
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          unless params['Simple'].nil?
            @Simple = Simple.new
            @Simple.deserialize(params['Simple'])
          end
          unless params['Attachments'].nil?
            @Attachments = []
            params['Attachments'].each do |i|
              attachment_tmp = Attachment.new
              attachment_tmp.deserialize(i)
              @Attachments << attachment_tmp
            end
          end
          unless params['CycleParam'].nil?
            @CycleParam = CycleEmailParam.new
            @CycleParam.deserialize(params['CycleParam'])
          end
          unless params['TimedParam'].nil?
            @TimedParam = TimedEmailParam.new
            @TimedParam.deserialize(params['TimedParam'])
          end
          @Unsubscribe = params['Unsubscribe']
          @ADLocation = params['ADLocation']
        end
      end

      # BatchSendEmail返回参数结构体
      class BatchSendEmailResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 发送任务ID
        # @type TaskId: Integer
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

      # 黑名单详情
      class BlackAddressDetail < TencentCloud::Common::AbstractModel
        # @param Id: 黑名单地址id
        # @type Id: Integer
        # @param Email: 邮箱地址
        # @type Email: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireDate: 过期时间
        # @type ExpireDate: String
        # @param Status: 黑名单状态，0:已过期，1:生效中
        # @type Status: Integer

        attr_accessor :Id, :Email, :CreateTime, :ExpireDate, :Status

        def initialize(id=nil, email=nil, createtime=nil, expiredate=nil, status=nil)
          @Id = id
          @Email = email
          @CreateTime = createtime
          @ExpireDate = expiredate
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Email = params['Email']
          @CreateTime = params['CreateTime']
          @ExpireDate = params['ExpireDate']
          @Status = params['Status']
        end
      end

      # 邮箱黑名单结构，包含被拉黑的邮箱地址和被拉黑时间，以及被拉黑的理由
      class BlackEmailAddress < TencentCloud::Common::AbstractModel
        # @param BounceTime: 邮箱被拉黑时间
        # @type BounceTime: String
        # @param EmailAddress: 被拉黑的邮箱地址
        # @type EmailAddress: String
        # @param IspDesc: 被拉黑的理由
        # @type IspDesc: String

        attr_accessor :BounceTime, :EmailAddress, :IspDesc

        def initialize(bouncetime=nil, emailaddress=nil, ispdesc=nil)
          @BounceTime = bouncetime
          @EmailAddress = emailaddress
          @IspDesc = ispdesc
        end

        def deserialize(params)
          @BounceTime = params['BounceTime']
          @EmailAddress = params['EmailAddress']
          @IspDesc = params['IspDesc']
        end
      end

      # CreateAddressUnsubscribeConfig请求参数结构体
      class CreateAddressUnsubscribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Address: 发信地址
        # @type Address: String
        # @param UnsubscribeConfig: 退订链接选项 0: 不加入退订链接 1: 简体中文 2: 英文 3: 繁体中文 4: 西班牙语 5: 法语 6: 德语 7: 日语 8: 韩语 9: 阿拉伯语 10: 泰语
        # @type UnsubscribeConfig: String
        # @param Status: 0:关闭，1:打开
        # @type Status: Integer

        attr_accessor :Address, :UnsubscribeConfig, :Status

        def initialize(address=nil, unsubscribeconfig=nil, status=nil)
          @Address = address
          @UnsubscribeConfig = unsubscribeconfig
          @Status = status
        end

        def deserialize(params)
          @Address = params['Address']
          @UnsubscribeConfig = params['UnsubscribeConfig']
          @Status = params['Status']
        end
      end

      # CreateAddressUnsubscribeConfig返回参数结构体
      class CreateAddressUnsubscribeConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateCustomBlacklist请求参数结构体
      class CreateCustomBlacklistRequest < TencentCloud::Common::AbstractModel
        # @param Emails: 添加到黑名单的邮件地址
        # @type Emails: Array
        # @param ExpireDate: 过期日期
        # @type ExpireDate: String

        attr_accessor :Emails, :ExpireDate

        def initialize(emails=nil, expiredate=nil)
          @Emails = emails
          @ExpireDate = expiredate
        end

        def deserialize(params)
          @Emails = params['Emails']
          @ExpireDate = params['ExpireDate']
        end
      end

      # CreateCustomBlacklist返回参数结构体
      class CreateCustomBlacklistResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 收件人总数
        # @type TotalCount: Integer
        # @param ValidCount: 实际上传数量
        # @type ValidCount: Integer
        # @param TooLongCount: 数据过长数量
        # @type TooLongCount: Integer
        # @param RepeatCount: 重复数量
        # @type RepeatCount: Integer
        # @param InvalidCount: 格式不正确数量
        # @type InvalidCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ValidCount, :TooLongCount, :RepeatCount, :InvalidCount, :RequestId

        def initialize(totalcount=nil, validcount=nil, toolongcount=nil, repeatcount=nil, invalidcount=nil, requestid=nil)
          @TotalCount = totalcount
          @ValidCount = validcount
          @TooLongCount = toolongcount
          @RepeatCount = repeatcount
          @InvalidCount = invalidcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ValidCount = params['ValidCount']
          @TooLongCount = params['TooLongCount']
          @RepeatCount = params['RepeatCount']
          @InvalidCount = params['InvalidCount']
          @RequestId = params['RequestId']
        end
      end

      # CreateEmailAddress请求参数结构体
      class CreateEmailAddressRequest < TencentCloud::Common::AbstractModel
        # @param EmailAddress: 您的发信地址（发信地址总数上限为10个）
        # @type EmailAddress: String
        # @param EmailSenderName: 发件人别名
        # @type EmailSenderName: String

        attr_accessor :EmailAddress, :EmailSenderName

        def initialize(emailaddress=nil, emailsendername=nil)
          @EmailAddress = emailaddress
          @EmailSenderName = emailsendername
        end

        def deserialize(params)
          @EmailAddress = params['EmailAddress']
          @EmailSenderName = params['EmailSenderName']
        end
      end

      # CreateEmailAddress返回参数结构体
      class CreateEmailAddressResponse < TencentCloud::Common::AbstractModel
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

      # CreateEmailIdentity请求参数结构体
      class CreateEmailIdentityRequest < TencentCloud::Common::AbstractModel
        # @param EmailIdentity: 您的发信域名，建议使用三级以上域名。例如：mail.qcloud.com。
        # @type EmailIdentity: String
        # @param DKIMOption: 生成的dkim密钥长度。0:1024，1:2048
        # @type DKIMOption: Integer
        # @param TagList: tag 标签
        # @type TagList: Array

        attr_accessor :EmailIdentity, :DKIMOption, :TagList

        def initialize(emailidentity=nil, dkimoption=nil, taglist=nil)
          @EmailIdentity = emailidentity
          @DKIMOption = dkimoption
          @TagList = taglist
        end

        def deserialize(params)
          @EmailIdentity = params['EmailIdentity']
          @DKIMOption = params['DKIMOption']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taglist_tmp = TagList.new
              taglist_tmp.deserialize(i)
              @TagList << taglist_tmp
            end
          end
        end
      end

      # CreateEmailIdentity返回参数结构体
      class CreateEmailIdentityResponse < TencentCloud::Common::AbstractModel
        # @param IdentityType: 验证类型。固定值：DOMAIN
        # @type IdentityType: String
        # @param VerifiedForSendingStatus: 是否已通过验证
        # @type VerifiedForSendingStatus: Boolean
        # @param Attributes: 需要配置的DNS信息
        # @type Attributes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdentityType, :VerifiedForSendingStatus, :Attributes, :RequestId

        def initialize(identitytype=nil, verifiedforsendingstatus=nil, attributes=nil, requestid=nil)
          @IdentityType = identitytype
          @VerifiedForSendingStatus = verifiedforsendingstatus
          @Attributes = attributes
          @RequestId = requestid
        end

        def deserialize(params)
          @IdentityType = params['IdentityType']
          @VerifiedForSendingStatus = params['VerifiedForSendingStatus']
          unless params['Attributes'].nil?
            @Attributes = []
            params['Attributes'].each do |i|
              dnsattributes_tmp = DNSAttributes.new
              dnsattributes_tmp.deserialize(i)
              @Attributes << dnsattributes_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateEmailTemplate请求参数结构体
      class CreateEmailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TemplateContent: 模板内容
        # @type TemplateContent: :class:`Tencentcloud::Ses.v20201002.models.TemplateContent`

        attr_accessor :TemplateName, :TemplateContent

        def initialize(templatename=nil, templatecontent=nil)
          @TemplateName = templatename
          @TemplateContent = templatecontent
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['TemplateContent'].nil?
            @TemplateContent = TemplateContent.new
            @TemplateContent.deserialize(params['TemplateContent'])
          end
        end
      end

      # CreateEmailTemplate返回参数结构体
      class CreateEmailTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateID: 模板id
        # @type TemplateID: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateID, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateID = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateID = params['TemplateID']
          @RequestId = params['RequestId']
        end
      end

      # CreateReceiverDetail请求参数结构体
      class CreateReceiverDetailRequest < TencentCloud::Common::AbstractModel
        # @param ReceiverId: 收件人列表ID
        # @type ReceiverId: Integer
        # @param Emails: 邮箱
        # @type Emails: Array

        attr_accessor :ReceiverId, :Emails

        def initialize(receiverid=nil, emails=nil)
          @ReceiverId = receiverid
          @Emails = emails
        end

        def deserialize(params)
          @ReceiverId = params['ReceiverId']
          @Emails = params['Emails']
        end
      end

      # CreateReceiverDetail返回参数结构体
      class CreateReceiverDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 收件人总数
        # @type TotalCount: Integer
        # @param ValidCount: 实际上传数量
        # @type ValidCount: Integer
        # @param TooLongCount: 数据过长数量
        # @type TooLongCount: Integer
        # @param EmptyEmailCount: 邮件地址为空数量
        # @type EmptyEmailCount: Integer
        # @param RepeatCount: 重复数量
        # @type RepeatCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ValidCount, :TooLongCount, :EmptyEmailCount, :RepeatCount, :RequestId

        def initialize(totalcount=nil, validcount=nil, toolongcount=nil, emptyemailcount=nil, repeatcount=nil, requestid=nil)
          @TotalCount = totalcount
          @ValidCount = validcount
          @TooLongCount = toolongcount
          @EmptyEmailCount = emptyemailcount
          @RepeatCount = repeatcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ValidCount = params['ValidCount']
          @TooLongCount = params['TooLongCount']
          @EmptyEmailCount = params['EmptyEmailCount']
          @RepeatCount = params['RepeatCount']
          @RequestId = params['RequestId']
        end
      end

      # CreateReceiverDetailWithData请求参数结构体
      class CreateReceiverDetailWithDataRequest < TencentCloud::Common::AbstractModel
        # @param ReceiverId: 收件人列表ID
        # @type ReceiverId: Integer
        # @param Datas: 收信人邮箱以及模板参数，数组形式。收件人个数限制20000个以内。
        # @type Datas: Array

        attr_accessor :ReceiverId, :Datas

        def initialize(receiverid=nil, datas=nil)
          @ReceiverId = receiverid
          @Datas = datas
        end

        def deserialize(params)
          @ReceiverId = params['ReceiverId']
          unless params['Datas'].nil?
            @Datas = []
            params['Datas'].each do |i|
              receiverinputdata_tmp = ReceiverInputData.new
              receiverinputdata_tmp.deserialize(i)
              @Datas << receiverinputdata_tmp
            end
          end
        end
      end

      # CreateReceiverDetailWithData返回参数结构体
      class CreateReceiverDetailWithDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 收件人总数
        # @type TotalCount: Integer
        # @param ValidCount: 实际上传数量
        # @type ValidCount: Integer
        # @param TooLongCount: 数据过长数量
        # @type TooLongCount: Integer
        # @param EmptyEmailCount: 邮件地址为空数量
        # @type EmptyEmailCount: Integer
        # @param RepeatCount: 重复数量
        # @type RepeatCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ValidCount, :TooLongCount, :EmptyEmailCount, :RepeatCount, :RequestId

        def initialize(totalcount=nil, validcount=nil, toolongcount=nil, emptyemailcount=nil, repeatcount=nil, requestid=nil)
          @TotalCount = totalcount
          @ValidCount = validcount
          @TooLongCount = toolongcount
          @EmptyEmailCount = emptyemailcount
          @RepeatCount = repeatcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ValidCount = params['ValidCount']
          @TooLongCount = params['TooLongCount']
          @EmptyEmailCount = params['EmptyEmailCount']
          @RepeatCount = params['RepeatCount']
          @RequestId = params['RequestId']
        end
      end

      # CreateReceiver请求参数结构体
      class CreateReceiverRequest < TencentCloud::Common::AbstractModel
        # @param ReceiversName: 收件人列表名称
        # @type ReceiversName: String
        # @param Desc: 收件人列表描述
        # @type Desc: String

        attr_accessor :ReceiversName, :Desc

        def initialize(receiversname=nil, desc=nil)
          @ReceiversName = receiversname
          @Desc = desc
        end

        def deserialize(params)
          @ReceiversName = params['ReceiversName']
          @Desc = params['Desc']
        end
      end

      # CreateReceiver返回参数结构体
      class CreateReceiverResponse < TencentCloud::Common::AbstractModel
        # @param ReceiverId: 收件人列表id，后续根据收件人列表id上传收件人地址
        # @type ReceiverId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReceiverId, :RequestId

        def initialize(receiverid=nil, requestid=nil)
          @ReceiverId = receiverid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReceiverId = params['ReceiverId']
          @RequestId = params['RequestId']
        end
      end

      # 创建重复周期发送邮件任务的参数
      class CycleEmailParam < TencentCloud::Common::AbstractModel
        # @param BeginTime: 任务开始时间
        # @type BeginTime: String
        # @param IntervalTime: 任务周期 小时维度
        # @type IntervalTime: Integer
        # @param TermCycle: 是否终止周期，用于任务更新 0否1是
        # @type TermCycle: Integer

        attr_accessor :BeginTime, :IntervalTime, :TermCycle

        def initialize(begintime=nil, intervaltime=nil, termcycle=nil)
          @BeginTime = begintime
          @IntervalTime = intervaltime
          @TermCycle = termcycle
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @IntervalTime = params['IntervalTime']
          @TermCycle = params['TermCycle']
        end
      end

      # 用于描述DNS记录的域名、记录类型、期望得到的值、目前配置的值
      class DNSAttributes < TencentCloud::Common::AbstractModel
        # @param Type: 记录类型 CNAME | A | TXT | MX
        # @type Type: String
        # @param SendDomain: 域名
        # @type SendDomain: String
        # @param ExpectedValue: 需要配置的值
        # @type ExpectedValue: String
        # @param CurrentValue: 腾讯云目前检测到的值
        # @type CurrentValue: String
        # @param Status: 检测是否通过，创建时默认为false
        # @type Status: Boolean

        attr_accessor :Type, :SendDomain, :ExpectedValue, :CurrentValue, :Status

        def initialize(type=nil, senddomain=nil, expectedvalue=nil, currentvalue=nil, status=nil)
          @Type = type
          @SendDomain = senddomain
          @ExpectedValue = expectedvalue
          @CurrentValue = currentvalue
          @Status = status
        end

        def deserialize(params)
          @Type = params['Type']
          @SendDomain = params['SendDomain']
          @ExpectedValue = params['ExpectedValue']
          @CurrentValue = params['CurrentValue']
          @Status = params['Status']
        end
      end

      # DeleteAddressUnsubscribeConfig请求参数结构体
      class DeleteAddressUnsubscribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Address: 需要操作的发信地址
        # @type Address: String

        attr_accessor :Address

        def initialize(address=nil)
          @Address = address
        end

        def deserialize(params)
          @Address = params['Address']
        end
      end

      # DeleteAddressUnsubscribeConfig返回参数结构体
      class DeleteAddressUnsubscribeConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBlackList请求参数结构体
      class DeleteBlackListRequest < TencentCloud::Common::AbstractModel
        # @param EmailAddressList: 需要清除的黑名单邮箱列表，数组长度至少为1
        # @type EmailAddressList: Array

        attr_accessor :EmailAddressList

        def initialize(emailaddresslist=nil)
          @EmailAddressList = emailaddresslist
        end

        def deserialize(params)
          @EmailAddressList = params['EmailAddressList']
        end
      end

      # DeleteBlackList返回参数结构体
      class DeleteBlackListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCustomBlackList请求参数结构体
      class DeleteCustomBlackListRequest < TencentCloud::Common::AbstractModel
        # @param Emails: 需要删除的邮箱地址
        # @type Emails: Array

        attr_accessor :Emails

        def initialize(emails=nil)
          @Emails = emails
        end

        def deserialize(params)
          @Emails = params['Emails']
        end
      end

      # DeleteCustomBlackList返回参数结构体
      class DeleteCustomBlackListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEmailAddress请求参数结构体
      class DeleteEmailAddressRequest < TencentCloud::Common::AbstractModel
        # @param EmailAddress: 发信地址
        # @type EmailAddress: String

        attr_accessor :EmailAddress

        def initialize(emailaddress=nil)
          @EmailAddress = emailaddress
        end

        def deserialize(params)
          @EmailAddress = params['EmailAddress']
        end
      end

      # DeleteEmailAddress返回参数结构体
      class DeleteEmailAddressResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEmailIdentity请求参数结构体
      class DeleteEmailIdentityRequest < TencentCloud::Common::AbstractModel
        # @param EmailIdentity: 发信域名
        # @type EmailIdentity: String

        attr_accessor :EmailIdentity

        def initialize(emailidentity=nil)
          @EmailIdentity = emailidentity
        end

        def deserialize(params)
          @EmailIdentity = params['EmailIdentity']
        end
      end

      # DeleteEmailIdentity返回参数结构体
      class DeleteEmailIdentityResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEmailTemplate请求参数结构体
      class DeleteEmailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateID: 模板ID
        # @type TemplateID: Integer

        attr_accessor :TemplateID

        def initialize(templateid=nil)
          @TemplateID = templateid
        end

        def deserialize(params)
          @TemplateID = params['TemplateID']
        end
      end

      # DeleteEmailTemplate返回参数结构体
      class DeleteEmailTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReceiver请求参数结构体
      class DeleteReceiverRequest < TencentCloud::Common::AbstractModel
        # @param ReceiverId: 收件人列表id，创建收件人列表时会返回
        # @type ReceiverId: Integer

        attr_accessor :ReceiverId

        def initialize(receiverid=nil)
          @ReceiverId = receiverid
        end

        def deserialize(params)
          @ReceiverId = params['ReceiverId']
        end
      end

      # DeleteReceiver返回参数结构体
      class DeleteReceiverResponse < TencentCloud::Common::AbstractModel
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

      # 发信域名验证列表结构体
      class EmailIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityName: 发信域名
        # @type IdentityName: String
        # @param IdentityType: 验证类型，固定为DOMAIN
        # @type IdentityType: String
        # @param SendingEnabled: 是否已通过验证
        # @type SendingEnabled: Boolean
        # @param CurrentReputationLevel: 当前信誉等级
        # @type CurrentReputationLevel: Integer
        # @param DailyQuota: 当日最高发信量
        # @type DailyQuota: Integer
        # @param SendIp: 域名配置的独立ip
        # @type SendIp: Array
        # @param TagList: tag 标签
        # @type TagList: Array

        attr_accessor :IdentityName, :IdentityType, :SendingEnabled, :CurrentReputationLevel, :DailyQuota, :SendIp, :TagList

        def initialize(identityname=nil, identitytype=nil, sendingenabled=nil, currentreputationlevel=nil, dailyquota=nil, sendip=nil, taglist=nil)
          @IdentityName = identityname
          @IdentityType = identitytype
          @SendingEnabled = sendingenabled
          @CurrentReputationLevel = currentreputationlevel
          @DailyQuota = dailyquota
          @SendIp = sendip
          @TagList = taglist
        end

        def deserialize(params)
          @IdentityName = params['IdentityName']
          @IdentityType = params['IdentityType']
          @SendingEnabled = params['SendingEnabled']
          @CurrentReputationLevel = params['CurrentReputationLevel']
          @DailyQuota = params['DailyQuota']
          @SendIp = params['SendIp']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taglist_tmp = TagList.new
              taglist_tmp.deserialize(i)
              @TagList << taglist_tmp
            end
          end
        end
      end

      # 用于描述发件人相关信息
      class EmailSender < TencentCloud::Common::AbstractModel
        # @param EmailAddress: 发信地址
        # @type EmailAddress: String
        # @param EmailSenderName: 发信人别名
        # @type EmailSenderName: String
        # @param CreatedTimestamp: 创建时间
        # @type CreatedTimestamp: Integer
        # @param SmtpPwdType: smtp密码类型,0=没有设置密码,1=已经设置了密码
        # @type SmtpPwdType: Integer

        attr_accessor :EmailAddress, :EmailSenderName, :CreatedTimestamp, :SmtpPwdType

        def initialize(emailaddress=nil, emailsendername=nil, createdtimestamp=nil, smtppwdtype=nil)
          @EmailAddress = emailaddress
          @EmailSenderName = emailsendername
          @CreatedTimestamp = createdtimestamp
          @SmtpPwdType = smtppwdtype
        end

        def deserialize(params)
          @EmailAddress = params['EmailAddress']
          @EmailSenderName = params['EmailSenderName']
          @CreatedTimestamp = params['CreatedTimestamp']
          @SmtpPwdType = params['SmtpPwdType']
        end
      end

      # GetEmailIdentity请求参数结构体
      class GetEmailIdentityRequest < TencentCloud::Common::AbstractModel
        # @param EmailIdentity: 发信域名
        # @type EmailIdentity: String

        attr_accessor :EmailIdentity

        def initialize(emailidentity=nil)
          @EmailIdentity = emailidentity
        end

        def deserialize(params)
          @EmailIdentity = params['EmailIdentity']
        end
      end

      # GetEmailIdentity返回参数结构体
      class GetEmailIdentityResponse < TencentCloud::Common::AbstractModel
        # @param IdentityType: 验证类型。固定值：DOMAIN
        # @type IdentityType: String
        # @param VerifiedForSendingStatus: 是否已通过验证
        # @type VerifiedForSendingStatus: Boolean
        # @param Attributes: DNS配置详情
        # @type Attributes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdentityType, :VerifiedForSendingStatus, :Attributes, :RequestId

        def initialize(identitytype=nil, verifiedforsendingstatus=nil, attributes=nil, requestid=nil)
          @IdentityType = identitytype
          @VerifiedForSendingStatus = verifiedforsendingstatus
          @Attributes = attributes
          @RequestId = requestid
        end

        def deserialize(params)
          @IdentityType = params['IdentityType']
          @VerifiedForSendingStatus = params['VerifiedForSendingStatus']
          unless params['Attributes'].nil?
            @Attributes = []
            params['Attributes'].each do |i|
              dnsattributes_tmp = DNSAttributes.new
              dnsattributes_tmp.deserialize(i)
              @Attributes << dnsattributes_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetEmailTemplate请求参数结构体
      class GetEmailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateID: 模板ID
        # @type TemplateID: Integer

        attr_accessor :TemplateID

        def initialize(templateid=nil)
          @TemplateID = templateid
        end

        def deserialize(params)
          @TemplateID = params['TemplateID']
        end
      end

      # GetEmailTemplate返回参数结构体
      class GetEmailTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateContent: 模板内容数据
        # @type TemplateContent: :class:`Tencentcloud::Ses.v20201002.models.TemplateContent`
        # @param TemplateStatus: 模板状态 0-审核通过 1-待审核 2-审核拒绝
        # @type TemplateStatus: Integer
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateContent, :TemplateStatus, :TemplateName, :RequestId

        def initialize(templatecontent=nil, templatestatus=nil, templatename=nil, requestid=nil)
          @TemplateContent = templatecontent
          @TemplateStatus = templatestatus
          @TemplateName = templatename
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplateContent'].nil?
            @TemplateContent = TemplateContent.new
            @TemplateContent.deserialize(params['TemplateContent'])
          end
          @TemplateStatus = params['TemplateStatus']
          @TemplateName = params['TemplateName']
          @RequestId = params['RequestId']
        end
      end

      # GetSendEmailStatus请求参数结构体
      class GetSendEmailStatusRequest < TencentCloud::Common::AbstractModel
        # @param RequestDate: 发送的日期，必填。仅支持查询某个日期，不支持范围查询。
        # @type RequestDate: String
        # @param Offset: 偏移量。默认为0
        # @type Offset: Integer
        # @param Limit: 拉取最大条数，最多 100。
        # @type Limit: Integer
        # @param MessageId: SendMail接口返回的MessageId字段。
        # @type MessageId: String
        # @param ToEmailAddress: 收件人邮箱。
        # @type ToEmailAddress: String

        attr_accessor :RequestDate, :Offset, :Limit, :MessageId, :ToEmailAddress

        def initialize(requestdate=nil, offset=nil, limit=nil, messageid=nil, toemailaddress=nil)
          @RequestDate = requestdate
          @Offset = offset
          @Limit = limit
          @MessageId = messageid
          @ToEmailAddress = toemailaddress
        end

        def deserialize(params)
          @RequestDate = params['RequestDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MessageId = params['MessageId']
          @ToEmailAddress = params['ToEmailAddress']
        end
      end

      # GetSendEmailStatus返回参数结构体
      class GetSendEmailStatusResponse < TencentCloud::Common::AbstractModel
        # @param EmailStatusList: 邮件发送状态列表
        # @type EmailStatusList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EmailStatusList, :RequestId

        def initialize(emailstatuslist=nil, requestid=nil)
          @EmailStatusList = emailstatuslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EmailStatusList'].nil?
            @EmailStatusList = []
            params['EmailStatusList'].each do |i|
              sendemailstatus_tmp = SendEmailStatus.new
              sendemailstatus_tmp.deserialize(i)
              @EmailStatusList << sendemailstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetStatisticsReport请求参数结构体
      class GetStatisticsReportRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期
        # @type StartDate: String
        # @param EndDate: 结束日期
        # @type EndDate: String
        # @param Domain: 发信域名
        # @type Domain: String
        # @param ReceivingMailboxType: 收件方邮箱类型，例如gmail.com
        # @type ReceivingMailboxType: String

        attr_accessor :StartDate, :EndDate, :Domain, :ReceivingMailboxType

        def initialize(startdate=nil, enddate=nil, domain=nil, receivingmailboxtype=nil)
          @StartDate = startdate
          @EndDate = enddate
          @Domain = domain
          @ReceivingMailboxType = receivingmailboxtype
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Domain = params['Domain']
          @ReceivingMailboxType = params['ReceivingMailboxType']
        end
      end

      # GetStatisticsReport返回参数结构体
      class GetStatisticsReportResponse < TencentCloud::Common::AbstractModel
        # @param DailyVolumes: 发信统计报告，按天
        # @type DailyVolumes: Array
        # @param OverallVolume: 发信统计报告，总览
        # @type OverallVolume: :class:`Tencentcloud::Ses.v20201002.models.Volume`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DailyVolumes, :OverallVolume, :RequestId

        def initialize(dailyvolumes=nil, overallvolume=nil, requestid=nil)
          @DailyVolumes = dailyvolumes
          @OverallVolume = overallvolume
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DailyVolumes'].nil?
            @DailyVolumes = []
            params['DailyVolumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @DailyVolumes << volume_tmp
            end
          end
          unless params['OverallVolume'].nil?
            @OverallVolume = Volume.new
            @OverallVolume.deserialize(params['OverallVolume'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAddressUnsubscribeConfig请求参数结构体
      class ListAddressUnsubscribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 拉取最大条数，不超过100
        # @type Limit: String

        attr_accessor :Offset, :Limit

        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListAddressUnsubscribeConfig返回参数结构体
      class ListAddressUnsubscribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param AddressUnsubscribeConfigList: 地址级退订配置
        # @type AddressUnsubscribeConfigList: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressUnsubscribeConfigList, :Total, :RequestId

        def initialize(addressunsubscribeconfiglist=nil, total=nil, requestid=nil)
          @AddressUnsubscribeConfigList = addressunsubscribeconfiglist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressUnsubscribeConfigList'].nil?
            @AddressUnsubscribeConfigList = []
            params['AddressUnsubscribeConfigList'].each do |i|
              addressunsubscribeconfigdata_tmp = AddressUnsubscribeConfigData.new
              addressunsubscribeconfigdata_tmp.deserialize(i)
              @AddressUnsubscribeConfigList << addressunsubscribeconfigdata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # ListBlackEmailAddress请求参数结构体
      class ListBlackEmailAddressRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期，格式为YYYY-MM-DD
        # @type StartDate: String
        # @param EndDate: 结束日期，格式为YYYY-MM-DD
        # @type EndDate: String
        # @param Limit: 规范，配合Offset使用
        # @type Limit: Integer
        # @param Offset: 规范，配合Limit使用，Limit最大取值为100
        # @type Offset: Integer
        # @param EmailAddress: 可以指定邮箱进行查询
        # @type EmailAddress: String
        # @param TaskID: 已废弃
        # @type TaskID: String

        attr_accessor :StartDate, :EndDate, :Limit, :Offset, :EmailAddress, :TaskID

        def initialize(startdate=nil, enddate=nil, limit=nil, offset=nil, emailaddress=nil, taskid=nil)
          @StartDate = startdate
          @EndDate = enddate
          @Limit = limit
          @Offset = offset
          @EmailAddress = emailaddress
          @TaskID = taskid
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EmailAddress = params['EmailAddress']
          @TaskID = params['TaskID']
        end
      end

      # ListBlackEmailAddress返回参数结构体
      class ListBlackEmailAddressResponse < TencentCloud::Common::AbstractModel
        # @param BlackList: 黑名单列表
        # @type BlackList: Array
        # @param TotalCount: 黑名单总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlackList, :TotalCount, :RequestId

        def initialize(blacklist=nil, totalcount=nil, requestid=nil)
          @BlackList = blacklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BlackList'].nil?
            @BlackList = []
            params['BlackList'].each do |i|
              blackemailaddress_tmp = BlackEmailAddress.new
              blackemailaddress_tmp.deserialize(i)
              @BlackList << blackemailaddress_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListCustomBlacklist请求参数结构体
      class ListCustomBlacklistRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，整型，从0开始
        # @type Offset: Integer
        # @param Limit: 限制数目，整型,不超过100
        # @type Limit: Integer
        # @param Status: 筛选黑名单的状态，0:已过期，1:生效中, 2:全部
        # @type Status: Integer
        # @param Email: 黑名单中的邮箱地址
        # @type Email: String

        attr_accessor :Offset, :Limit, :Status, :Email

        def initialize(offset=nil, limit=nil, status=nil, email=nil)
          @Offset = offset
          @Limit = limit
          @Status = status
          @Email = email
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @Email = params['Email']
        end
      end

      # ListCustomBlacklist返回参数结构体
      class ListCustomBlacklistResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表总数
        # @type TotalCount: Integer
        # @param Data: 黑名单列表详情
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              blackaddressdetail_tmp = BlackAddressDetail.new
              blackaddressdetail_tmp.deserialize(i)
              @Data << blackaddressdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListEmailAddress请求参数结构体
      class ListEmailAddressRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListEmailAddress返回参数结构体
      class ListEmailAddressResponse < TencentCloud::Common::AbstractModel
        # @param EmailSenders: 发信地址列表详情
        # @type EmailSenders: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EmailSenders, :RequestId

        def initialize(emailsenders=nil, requestid=nil)
          @EmailSenders = emailsenders
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EmailSenders'].nil?
            @EmailSenders = []
            params['EmailSenders'].each do |i|
              emailsender_tmp = EmailSender.new
              emailsender_tmp.deserialize(i)
              @EmailSenders << emailsender_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListEmailIdentities请求参数结构体
      class ListEmailIdentitiesRequest < TencentCloud::Common::AbstractModel
        # @param TagList: tag 标签
        # @type TagList: Array
        # @param Limit: 分页 limit
        # @type Limit: Integer
        # @param Offset: 分页 offset
        # @type Offset: Integer

        attr_accessor :TagList, :Limit, :Offset

        def initialize(taglist=nil, limit=nil, offset=nil)
          @TagList = taglist
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taglist_tmp = TagList.new
              taglist_tmp.deserialize(i)
              @TagList << taglist_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListEmailIdentities返回参数结构体
      class ListEmailIdentitiesResponse < TencentCloud::Common::AbstractModel
        # @param EmailIdentities: 发信域名列表
        # @type EmailIdentities: Array
        # @param MaxReputationLevel: 最大信誉等级
        # @type MaxReputationLevel: Integer
        # @param MaxDailyQuota: 单域名最高日发送量
        # @type MaxDailyQuota: Integer
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EmailIdentities, :MaxReputationLevel, :MaxDailyQuota, :Total, :RequestId

        def initialize(emailidentities=nil, maxreputationlevel=nil, maxdailyquota=nil, total=nil, requestid=nil)
          @EmailIdentities = emailidentities
          @MaxReputationLevel = maxreputationlevel
          @MaxDailyQuota = maxdailyquota
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EmailIdentities'].nil?
            @EmailIdentities = []
            params['EmailIdentities'].each do |i|
              emailidentity_tmp = EmailIdentity.new
              emailidentity_tmp.deserialize(i)
              @EmailIdentities << emailidentity_tmp
            end
          end
          @MaxReputationLevel = params['MaxReputationLevel']
          @MaxDailyQuota = params['MaxDailyQuota']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # ListEmailTemplates请求参数结构体
      class ListEmailTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 获取模板数据量，用于分页
        # @type Limit: Integer
        # @param Offset: 获取模板偏移值，用于分页
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListEmailTemplates返回参数结构体
      class ListEmailTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TemplatesMetadata: 邮件模板列表
        # @type TemplatesMetadata: Array
        # @param TotalCount: 模板总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplatesMetadata, :TotalCount, :RequestId

        def initialize(templatesmetadata=nil, totalcount=nil, requestid=nil)
          @TemplatesMetadata = templatesmetadata
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplatesMetadata'].nil?
            @TemplatesMetadata = []
            params['TemplatesMetadata'].each do |i|
              templatesmetadata_tmp = TemplatesMetadata.new
              templatesmetadata_tmp.deserialize(i)
              @TemplatesMetadata << templatesmetadata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListReceiverDetails请求参数结构体
      class ListReceiverDetailsRequest < TencentCloud::Common::AbstractModel
        # @param ReceiverId: 收件人列表ID,CreateReceiver接口创建收件人列表时会返回该值
        # @type ReceiverId: Integer
        # @param Offset: 偏移量，整型，从0开始
        # @type Offset: Integer
        # @param Limit: 限制数目，整型,不超过100
        # @type Limit: Integer
        # @param Email: 收件人地址，长度0-50，示例：xxx@te.com，支持模糊查询
        # @type Email: String
        # @param CreateTimeBegin: 搜索开始时间
        # @type CreateTimeBegin: String
        # @param CreateTimeEnd: 搜索结束时间
        # @type CreateTimeEnd: String
        # @param Status: 1:有效，2:无效
        # @type Status: Integer

        attr_accessor :ReceiverId, :Offset, :Limit, :Email, :CreateTimeBegin, :CreateTimeEnd, :Status

        def initialize(receiverid=nil, offset=nil, limit=nil, email=nil, createtimebegin=nil, createtimeend=nil, status=nil)
          @ReceiverId = receiverid
          @Offset = offset
          @Limit = limit
          @Email = email
          @CreateTimeBegin = createtimebegin
          @CreateTimeEnd = createtimeend
          @Status = status
        end

        def deserialize(params)
          @ReceiverId = params['ReceiverId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Email = params['Email']
          @CreateTimeBegin = params['CreateTimeBegin']
          @CreateTimeEnd = params['CreateTimeEnd']
          @Status = params['Status']
        end
      end

      # ListReceiverDetails返回参数结构体
      class ListReceiverDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 数据记录
        # @type Data: Array
        # @param ValidCount: 有效邮件地址数
        # @type ValidCount: Integer
        # @param InvalidCount: 无效邮件地址数
        # @type InvalidCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :ValidCount, :InvalidCount, :RequestId

        def initialize(totalcount=nil, data=nil, validcount=nil, invalidcount=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @ValidCount = validcount
          @InvalidCount = invalidcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              receiverdetail_tmp = ReceiverDetail.new
              receiverdetail_tmp.deserialize(i)
              @Data << receiverdetail_tmp
            end
          end
          @ValidCount = params['ValidCount']
          @InvalidCount = params['InvalidCount']
          @RequestId = params['RequestId']
        end
      end

      # ListReceivers请求参数结构体
      class ListReceiversRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，整型，从0开始
        # @type Offset: Integer
        # @param Limit: 限制数目，整型，不超过100
        # @type Limit: Integer
        # @param Status: 列表状态(1 待上传 2 上传中  3传完成)，若查询所有就不传这个字段
        # @type Status: Integer
        # @param KeyWord: 列表名称的关键字，模糊查询
        # @type KeyWord: String

        attr_accessor :Offset, :Limit, :Status, :KeyWord

        def initialize(offset=nil, limit=nil, status=nil, keyword=nil)
          @Offset = offset
          @Limit = limit
          @Status = status
          @KeyWord = keyword
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @KeyWord = params['KeyWord']
        end
      end

      # ListReceivers返回参数结构体
      class ListReceiversResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 数据记录
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              receiverdata_tmp = ReceiverData.new
              receiverdata_tmp.deserialize(i)
              @Data << receiverdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSendTasks请求参数结构体
      class ListSendTasksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，整型，从0开始，0代表跳过0行
        # @type Offset: Integer
        # @param Limit: 限制数目，整型,不超过100
        # @type Limit: Integer
        # @param Status: 任务状态 1 待开始 5 发送中 6 今日暂停发送  7 发信异常 10 发送完成。查询所有状态，则不传这个字段
        # @type Status: Integer
        # @param ReceiverId: 收件人列表ID
        # @type ReceiverId: Integer
        # @param TaskType: 任务类型 1即时 2定时 3周期，查询所有类型则不传这个字段
        # @type TaskType: Integer

        attr_accessor :Offset, :Limit, :Status, :ReceiverId, :TaskType

        def initialize(offset=nil, limit=nil, status=nil, receiverid=nil, tasktype=nil)
          @Offset = offset
          @Limit = limit
          @Status = status
          @ReceiverId = receiverid
          @TaskType = tasktype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @ReceiverId = params['ReceiverId']
          @TaskType = params['TaskType']
        end
      end

      # ListSendTasks返回参数结构体
      class ListSendTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 数据记录
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sendtaskdata_tmp = SendTaskData.new
              sendtaskdata_tmp.deserialize(i)
              @Data << sendtaskdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 收件人列表数据类型
      class ReceiverData < TencentCloud::Common::AbstractModel
        # @param ReceiverId: 收件人列表ID
        # @type ReceiverId: Integer
        # @param ReceiversName: 收件人列表名称
        # @type ReceiversName: String
        # @param Count: 收件人地址总数
        # @type Count: Integer
        # @param Desc: 收件人列表描述
        # @type Desc: String
        # @param ReceiversStatus: 列表状态(1 待上传 2 上传中 3 上传完成)
        # @type ReceiversStatus: Integer
        # @param CreateTime: 创建时间,如:2021-09-28 16:40:35
        # @type CreateTime: String
        # @param InvalidCount: 无效收件人数量
        # @type InvalidCount: Integer

        attr_accessor :ReceiverId, :ReceiversName, :Count, :Desc, :ReceiversStatus, :CreateTime, :InvalidCount

        def initialize(receiverid=nil, receiversname=nil, count=nil, desc=nil, receiversstatus=nil, createtime=nil, invalidcount=nil)
          @ReceiverId = receiverid
          @ReceiversName = receiversname
          @Count = count
          @Desc = desc
          @ReceiversStatus = receiversstatus
          @CreateTime = createtime
          @InvalidCount = invalidcount
        end

        def deserialize(params)
          @ReceiverId = params['ReceiverId']
          @ReceiversName = params['ReceiversName']
          @Count = params['Count']
          @Desc = params['Desc']
          @ReceiversStatus = params['ReceiversStatus']
          @CreateTime = params['CreateTime']
          @InvalidCount = params['InvalidCount']
        end
      end

      # 收件人列表详情
      class ReceiverDetail < TencentCloud::Common::AbstractModel
        # @param Email: 收件人地址
        # @type Email: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param TemplateData: 模板参数
        # @type TemplateData: String
        # @param Reason: 无效原因
        # @type Reason: String
        # @param Status: 1:有效，2:无效
        # @type Status: Integer
        # @param EmailId: 收件人地址id
        # @type EmailId: Integer

        attr_accessor :Email, :CreateTime, :TemplateData, :Reason, :Status, :EmailId

        def initialize(email=nil, createtime=nil, templatedata=nil, reason=nil, status=nil, emailid=nil)
          @Email = email
          @CreateTime = createtime
          @TemplateData = templatedata
          @Reason = reason
          @Status = status
          @EmailId = emailid
        end

        def deserialize(params)
          @Email = params['Email']
          @CreateTime = params['CreateTime']
          @TemplateData = params['TemplateData']
          @Reason = params['Reason']
          @Status = params['Status']
          @EmailId = params['EmailId']
        end
      end

      # 收件人明细输入参数，包含收件人邮箱，以及模板参数
      class ReceiverInputData < TencentCloud::Common::AbstractModel
        # @param Email: 收件人邮箱
        # @type Email: String
        # @param TemplateData: 模板中的变量参数，请使用json.dump将json对象格式化为string类型。该对象是一组键值对，每个Key代表模板中的一个变量，模板中的变量使用{{键}}表示，相应的值在发送时会被替换为{{值}}。
        # 注意：参数值不能是html等复杂类型的数据。TemplateData (整个 JSON 结构) 总长度限制为 800 bytes。
        # @type TemplateData: String

        attr_accessor :Email, :TemplateData

        def initialize(email=nil, templatedata=nil)
          @Email = email
          @TemplateData = templatedata
        end

        def deserialize(params)
          @Email = params['Email']
          @TemplateData = params['TemplateData']
        end
      end

      # SendEmail请求参数结构体
      class SendEmailRequest < TencentCloud::Common::AbstractModel
        # @param FromEmailAddress: 发件人邮箱地址。不使用别名时请直接填写发件人邮箱地址，例如：noreply@mail.qcloud.com如需填写发件人别名时，请按照如下方式（注意别名与邮箱地址之间必须使用一个空格隔开）：别名+一个空格+<邮箱地址>，别名中不能带有冒号(:)。
        # @type FromEmailAddress: String
        # @param Destination: 收信人邮箱地址，最多支持群发50人。注意：邮件内容会显示所有收件人地址，非群发邮件请多次调用API发送。
        # @type Destination: Array
        # @param Subject: 邮件主题
        # @type Subject: String
        # @param ReplyToAddresses: 邮件的“回复”电子邮件地址。可以填写您能收到邮件的邮箱地址，可以是个人邮箱。如果不填，收件人的回复邮件将会发送失败。
        # @type ReplyToAddresses: String
        # @param Cc: 抄送人邮箱地址，最多支持抄送20人。
        # @type Cc: Array
        # @param Bcc: 密送人邮箱地址，最多支持抄送20人,Bcc和Destination不能重复。
        # @type Bcc: Array
        # @param Template: 使用模板发送时，填写模板相关参数。
        # <dx-alert infotype="notice" title="注意"> 如您未申请过特殊配置，则该字段为必填 </dx-alert>
        # @type Template: :class:`Tencentcloud::Ses.v20201002.models.Template`
        # @param Simple: 已废弃
        # <dx-alert infotype="notice" title="说明"> 仅部分历史上申请了特殊配置的客户需要使用。如您未申请过特殊配置，则不存在该字段。</dx-alert>
        # @type Simple: :class:`Tencentcloud::Ses.v20201002.models.Simple`
        # @param Attachments: 需要发送附件时，填写附件相关参数。腾讯云接口请求最大支持 8M 的请求包，附件内容经过 Base64 预期扩大1.5倍，应该控制所有附件的总大小最大在 4M 以内，整体请求超出 8M 时接口会返回错误
        # @type Attachments: Array
        # @param Unsubscribe: 退订链接选项 0: 不加入退订链接 1: 简体中文 2: 英文 3: 繁体中文 4: 西班牙语 5: 法语 6: 德语 7: 日语 8: 韩语 9: 阿拉伯语 10: 泰语
        # @type Unsubscribe: String
        # @param TriggerType: 邮件触发类型 0:非触发类，默认类型，营销类邮件、非即时类邮件等选择此类型  1:触发类，验证码等即时发送类邮件，若邮件超过一定大小，系统会自动选择非触发类型通道
        # @type TriggerType: Integer
        # @param SmtpMessageId: smtp头中的Message-Id字段
        # @type SmtpMessageId: String
        # @param SmtpHeaders: smtp头中可以设置的其它字段
        # @type SmtpHeaders: String
        # @param HeaderFrom: smtp头中的from字段，建议域名与FromEmailAddress保持一致
        # @type HeaderFrom: String

        attr_accessor :FromEmailAddress, :Destination, :Subject, :ReplyToAddresses, :Cc, :Bcc, :Template, :Simple, :Attachments, :Unsubscribe, :TriggerType, :SmtpMessageId, :SmtpHeaders, :HeaderFrom

        def initialize(fromemailaddress=nil, destination=nil, subject=nil, replytoaddresses=nil, cc=nil, bcc=nil, template=nil, simple=nil, attachments=nil, unsubscribe=nil, triggertype=nil, smtpmessageid=nil, smtpheaders=nil, headerfrom=nil)
          @FromEmailAddress = fromemailaddress
          @Destination = destination
          @Subject = subject
          @ReplyToAddresses = replytoaddresses
          @Cc = cc
          @Bcc = bcc
          @Template = template
          @Simple = simple
          @Attachments = attachments
          @Unsubscribe = unsubscribe
          @TriggerType = triggertype
          @SmtpMessageId = smtpmessageid
          @SmtpHeaders = smtpheaders
          @HeaderFrom = headerfrom
        end

        def deserialize(params)
          @FromEmailAddress = params['FromEmailAddress']
          @Destination = params['Destination']
          @Subject = params['Subject']
          @ReplyToAddresses = params['ReplyToAddresses']
          @Cc = params['Cc']
          @Bcc = params['Bcc']
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          unless params['Simple'].nil?
            @Simple = Simple.new
            @Simple.deserialize(params['Simple'])
          end
          unless params['Attachments'].nil?
            @Attachments = []
            params['Attachments'].each do |i|
              attachment_tmp = Attachment.new
              attachment_tmp.deserialize(i)
              @Attachments << attachment_tmp
            end
          end
          @Unsubscribe = params['Unsubscribe']
          @TriggerType = params['TriggerType']
          @SmtpMessageId = params['SmtpMessageId']
          @SmtpHeaders = params['SmtpHeaders']
          @HeaderFrom = params['HeaderFrom']
        end
      end

      # SendEmail返回参数结构体
      class SendEmailResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: 接受消息生成的唯一消息标识符。
        # @type MessageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :RequestId

        def initialize(messageid=nil, requestid=nil)
          @MessageId = messageid
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @RequestId = params['RequestId']
        end
      end

      # 描述邮件发送状态
      class SendEmailStatus < TencentCloud::Common::AbstractModel
        # @param MessageId: SendEmail返回的MessageId
        # @type MessageId: String
        # @param ToEmailAddress: 收件人邮箱
        # @type ToEmailAddress: String
        # @param FromEmailAddress: 发件人邮箱
        # @type FromEmailAddress: String
        # @param SendStatus: 腾讯云处理状态
        # 0: 处理成功
        # 1001: 内部系统异常
        # 1002: 内部系统异常
        # 1003: 内部系统异常
        # 1003: 内部系统异常
        # 1004: 发信超时
        # 1005: 内部系统异常
        # 1006: 触发频率控制，短时间内对同一地址发送过多邮件
        # 1007: 邮件地址在黑名单中
        # 1008: 域名被收件人拒收
        # 1009: 内部系统异常
        # 1010: 超出了每日发送限制
        # 1011: 无发送自定义内容权限，必须使用模板
        # 1013: 域名被收件人取消订阅
        # 2001: 找不到相关记录
        # 3007: 模板ID无效或者不可用
        # 3008: 被收信域名临时封禁
        # 3009: 无权限使用该模板
        # 3010: TemplateData字段格式不正确
        # 3014: 发件域名没有经过认证，无法发送
        # 3020: 收件方邮箱类型在黑名单
        # 3024: 邮箱地址格式预检查失败
        # 3030: 退信率过高，临时限制发送
        # 3033: 余额不足，账号欠费等
        # @type SendStatus: Integer
        # @param DeliverStatus: 收件方处理状态
        # 0: 请求成功被腾讯云接受，进入发送队列
        # 1: 邮件递送成功，DeliverTime表示递送成功的时间
        # 2: 邮件因某种原因被丢弃，DeliverMessage表示丢弃原因
        # 3: 收件方ESP拒信，一般原因为邮箱地址不存在，或其它原因
        # 8: 邮件被ESP因某些原因延迟递送，DeliverMessage表示延迟原因
        # @type DeliverStatus: Integer
        # @param DeliverMessage: 收件方处理状态描述
        # @type DeliverMessage: String
        # @param RequestTime: 请求到达腾讯云时间戳
        # @type RequestTime: Integer
        # @param DeliverTime: 腾讯云执行递送时间戳
        # @type DeliverTime: Integer
        # @param UserOpened: 用户是否打开该邮件
        # @type UserOpened: Boolean
        # @param UserClicked: 用户是否点击该邮件中的链接
        # @type UserClicked: Boolean
        # @param UserUnsubscribed: 用户是否取消该发送者的订阅
        # @type UserUnsubscribed: Boolean
        # @param UserComplainted: 用户是否举报该发送者
        # @type UserComplainted: Boolean
        # @param UserComplained: 用户是否举报该发送者
        # @type UserComplained: Boolean

        attr_accessor :MessageId, :ToEmailAddress, :FromEmailAddress, :SendStatus, :DeliverStatus, :DeliverMessage, :RequestTime, :DeliverTime, :UserOpened, :UserClicked, :UserUnsubscribed, :UserComplainted, :UserComplained
        extend Gem::Deprecate
        deprecate :UserComplainted, :none, 2025, 9
        deprecate :UserComplainted=, :none, 2025, 9

        def initialize(messageid=nil, toemailaddress=nil, fromemailaddress=nil, sendstatus=nil, deliverstatus=nil, delivermessage=nil, requesttime=nil, delivertime=nil, useropened=nil, userclicked=nil, userunsubscribed=nil, usercomplainted=nil, usercomplained=nil)
          @MessageId = messageid
          @ToEmailAddress = toemailaddress
          @FromEmailAddress = fromemailaddress
          @SendStatus = sendstatus
          @DeliverStatus = deliverstatus
          @DeliverMessage = delivermessage
          @RequestTime = requesttime
          @DeliverTime = delivertime
          @UserOpened = useropened
          @UserClicked = userclicked
          @UserUnsubscribed = userunsubscribed
          @UserComplainted = usercomplainted
          @UserComplained = usercomplained
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @ToEmailAddress = params['ToEmailAddress']
          @FromEmailAddress = params['FromEmailAddress']
          @SendStatus = params['SendStatus']
          @DeliverStatus = params['DeliverStatus']
          @DeliverMessage = params['DeliverMessage']
          @RequestTime = params['RequestTime']
          @DeliverTime = params['DeliverTime']
          @UserOpened = params['UserOpened']
          @UserClicked = params['UserClicked']
          @UserUnsubscribed = params['UserUnsubscribed']
          @UserComplainted = params['UserComplainted']
          @UserComplained = params['UserComplained']
        end
      end

      # 发送任务数据
      class SendTaskData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param FromEmailAddress: 发信地址
        # @type FromEmailAddress: String
        # @param ReceiverId: 收件人列表Id
        # @type ReceiverId: Integer
        # @param TaskStatus: 任务状态 1 待开始 5 发送中 6 今日暂停发送  7 发信异常 10 发送完成
        # @type TaskStatus: Integer
        # @param TaskType: 任务类型 1 即时 2 定时 3 周期
        # @type TaskType: Integer
        # @param RequestCount: 任务请求发信数量
        # @type RequestCount: Integer
        # @param SendCount: 已经发送数量
        # @type SendCount: Integer
        # @param CacheCount: 缓存数量
        # @type CacheCount: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间
        # @type UpdateTime: String
        # @param Subject: 邮件主题
        # @type Subject: String
        # @param Template: 模板和模板数据
        # @type Template: :class:`Tencentcloud::Ses.v20201002.models.Template`
        # @param CycleParam: 周期任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleParam: :class:`Tencentcloud::Ses.v20201002.models.CycleEmailParam`
        # @param TimedParam: 定时任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimedParam: :class:`Tencentcloud::Ses.v20201002.models.TimedEmailParam`
        # @param ErrMsg: 任务异常信息
        # @type ErrMsg: String
        # @param ReceiversName: 收件人列表名称
        # @type ReceiversName: String

        attr_accessor :TaskId, :FromEmailAddress, :ReceiverId, :TaskStatus, :TaskType, :RequestCount, :SendCount, :CacheCount, :CreateTime, :UpdateTime, :Subject, :Template, :CycleParam, :TimedParam, :ErrMsg, :ReceiversName

        def initialize(taskid=nil, fromemailaddress=nil, receiverid=nil, taskstatus=nil, tasktype=nil, requestcount=nil, sendcount=nil, cachecount=nil, createtime=nil, updatetime=nil, subject=nil, template=nil, cycleparam=nil, timedparam=nil, errmsg=nil, receiversname=nil)
          @TaskId = taskid
          @FromEmailAddress = fromemailaddress
          @ReceiverId = receiverid
          @TaskStatus = taskstatus
          @TaskType = tasktype
          @RequestCount = requestcount
          @SendCount = sendcount
          @CacheCount = cachecount
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Subject = subject
          @Template = template
          @CycleParam = cycleparam
          @TimedParam = timedparam
          @ErrMsg = errmsg
          @ReceiversName = receiversname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FromEmailAddress = params['FromEmailAddress']
          @ReceiverId = params['ReceiverId']
          @TaskStatus = params['TaskStatus']
          @TaskType = params['TaskType']
          @RequestCount = params['RequestCount']
          @SendCount = params['SendCount']
          @CacheCount = params['CacheCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Subject = params['Subject']
          unless params['Template'].nil?
            @Template = Template.new
            @Template.deserialize(params['Template'])
          end
          unless params['CycleParam'].nil?
            @CycleParam = CycleEmailParam.new
            @CycleParam.deserialize(params['CycleParam'])
          end
          unless params['TimedParam'].nil?
            @TimedParam = TimedEmailParam.new
            @TimedParam.deserialize(params['TimedParam'])
          end
          @ErrMsg = params['ErrMsg']
          @ReceiversName = params['ReceiversName']
        end
      end

      # 邮件发送的内容，可以是纯文本(TEXT)，也可以是纯代码(HTML)，或者纯文本+HTML的组合(建议方式)
      class Simple < TencentCloud::Common::AbstractModel
        # @param Html: base64之后的Html代码。需要包含所有的代码信息，不要包含外部css，否则会导致显示格式错乱
        # @type Html: String
        # @param Text: base64之后的纯文本信息，如果没有Html，邮件中会直接显示纯文本；如果有Html，它代表邮件的纯文本样式
        # @type Text: String

        attr_accessor :Html, :Text

        def initialize(html=nil, text=nil)
          @Html = html
          @Text = text
        end

        def deserialize(params)
          @Html = params['Html']
          @Text = params['Text']
        end
      end

      # 标签
      class TagList < TencentCloud::Common::AbstractModel
        # @param TagKey: 产品
        # @type TagKey: String
        # @param TagValue: ses
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 模板发送相关信息，包含模板ID，模板变量参数等信息
      class Template < TencentCloud::Common::AbstractModel
        # @param TemplateID: 模板ID。如果没有模板，请先新建一个
        # @type TemplateID: Integer
        # @param TemplateData: 模板中的变量参数，请使用json.dump将json对象格式化为string类型。该对象是一组键值对，每个Key代表模板中的一个变量，模板中的变量使用{{键}}表示，相应的值在发送时会被替换为{{值}}。
        # 注意：参数值不能是html等复杂类型的数据。
        # 示例：{"name":"xxx","age":"xx"}
        # @type TemplateData: String

        attr_accessor :TemplateID, :TemplateData

        def initialize(templateid=nil, templatedata=nil)
          @TemplateID = templateid
          @TemplateData = templatedata
        end

        def deserialize(params)
          @TemplateID = params['TemplateID']
          @TemplateData = params['TemplateData']
        end
      end

      # 模板内容，TEXT和HTML必须至少存在一项，建议使用TEXT和HTML的组合
      class TemplateContent < TencentCloud::Common::AbstractModel
        # @param Html: base64之后的Html代码
        # @type Html: String
        # @param Text: base64之后的文本内容
        # @type Text: String

        attr_accessor :Html, :Text

        def initialize(html=nil, text=nil)
          @Html = html
          @Text = text
        end

        def deserialize(params)
          @Html = params['Html']
          @Text = params['Text']
        end
      end

      # 模板列表结构
      class TemplatesMetadata < TencentCloud::Common::AbstractModel
        # @param CreatedTimestamp: 创建时间
        # @type CreatedTimestamp: Integer
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TemplateStatus: 模板状态。1-审核中|0-已通过|2-拒绝|其它-不可用
        # @type TemplateStatus: Integer
        # @param TemplateID: 模板ID
        # @type TemplateID: Integer
        # @param ReviewReason: 审核原因
        # @type ReviewReason: String

        attr_accessor :CreatedTimestamp, :TemplateName, :TemplateStatus, :TemplateID, :ReviewReason

        def initialize(createdtimestamp=nil, templatename=nil, templatestatus=nil, templateid=nil, reviewreason=nil)
          @CreatedTimestamp = createdtimestamp
          @TemplateName = templatename
          @TemplateStatus = templatestatus
          @TemplateID = templateid
          @ReviewReason = reviewreason
        end

        def deserialize(params)
          @CreatedTimestamp = params['CreatedTimestamp']
          @TemplateName = params['TemplateName']
          @TemplateStatus = params['TemplateStatus']
          @TemplateID = params['TemplateID']
          @ReviewReason = params['ReviewReason']
        end
      end

      # 创建定时发送邮件任务时，设置的定时参数，比如开始时间之类
      class TimedEmailParam < TencentCloud::Common::AbstractModel
        # @param BeginTime: 定时发送邮件的开始时间
        # @type BeginTime: String

        attr_accessor :BeginTime

        def initialize(begintime=nil)
          @BeginTime = begintime
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
        end
      end

      # UpdateAddressUnsubscribeConfig请求参数结构体
      class UpdateAddressUnsubscribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param Address: 发信地址
        # @type Address: String
        # @param UnsubscribeConfig: 退订链接选项 0: 不加入退订链接 1: 简体中文 2: 英文 3: 繁体中文 4: 西班牙语 5: 法语 6: 德语 7: 日语 8: 韩语 9: 阿拉伯语 10: 泰语
        # @type UnsubscribeConfig: String
        # @param Status: 0:关闭配置，1:打开配置
        # @type Status: Integer

        attr_accessor :Address, :UnsubscribeConfig, :Status

        def initialize(address=nil, unsubscribeconfig=nil, status=nil)
          @Address = address
          @UnsubscribeConfig = unsubscribeconfig
          @Status = status
        end

        def deserialize(params)
          @Address = params['Address']
          @UnsubscribeConfig = params['UnsubscribeConfig']
          @Status = params['Status']
        end
      end

      # UpdateAddressUnsubscribeConfig返回参数结构体
      class UpdateAddressUnsubscribeConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCustomBlackList请求参数结构体
      class UpdateCustomBlackListRequest < TencentCloud::Common::AbstractModel
        # @param Id: 需要更改的黑名单id
        # @type Id: Integer
        # @param Email: 修改后的邮件地址
        # @type Email: String
        # @param ExpireDate: 过期时间，为空则表示永久有效
        # @type ExpireDate: String

        attr_accessor :Id, :Email, :ExpireDate

        def initialize(id=nil, email=nil, expiredate=nil)
          @Id = id
          @Email = email
          @ExpireDate = expiredate
        end

        def deserialize(params)
          @Id = params['Id']
          @Email = params['Email']
          @ExpireDate = params['ExpireDate']
        end
      end

      # UpdateCustomBlackList返回参数结构体
      class UpdateCustomBlackListResponse < TencentCloud::Common::AbstractModel
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

      # UpdateEmailIdentity请求参数结构体
      class UpdateEmailIdentityRequest < TencentCloud::Common::AbstractModel
        # @param EmailIdentity: 请求验证的域名
        # @type EmailIdentity: String

        attr_accessor :EmailIdentity

        def initialize(emailidentity=nil)
          @EmailIdentity = emailidentity
        end

        def deserialize(params)
          @EmailIdentity = params['EmailIdentity']
        end
      end

      # UpdateEmailIdentity返回参数结构体
      class UpdateEmailIdentityResponse < TencentCloud::Common::AbstractModel
        # @param IdentityType: 验证类型。固定值：DOMAIN
        # @type IdentityType: String
        # @param VerifiedForSendingStatus: 是否已通过验证
        # @type VerifiedForSendingStatus: Boolean
        # @param Attributes: 需要配置的DNS信息
        # @type Attributes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdentityType, :VerifiedForSendingStatus, :Attributes, :RequestId

        def initialize(identitytype=nil, verifiedforsendingstatus=nil, attributes=nil, requestid=nil)
          @IdentityType = identitytype
          @VerifiedForSendingStatus = verifiedforsendingstatus
          @Attributes = attributes
          @RequestId = requestid
        end

        def deserialize(params)
          @IdentityType = params['IdentityType']
          @VerifiedForSendingStatus = params['VerifiedForSendingStatus']
          unless params['Attributes'].nil?
            @Attributes = []
            params['Attributes'].each do |i|
              dnsattributes_tmp = DNSAttributes.new
              dnsattributes_tmp.deserialize(i)
              @Attributes << dnsattributes_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateEmailSmtpPassWord请求参数结构体
      class UpdateEmailSmtpPassWordRequest < TencentCloud::Common::AbstractModel
        # @param Password: smtp密码，长度限制64
        # @type Password: String
        # @param EmailAddress: 发信邮箱,长度限制128
        # @type EmailAddress: String

        attr_accessor :Password, :EmailAddress

        def initialize(password=nil, emailaddress=nil)
          @Password = password
          @EmailAddress = emailaddress
        end

        def deserialize(params)
          @Password = params['Password']
          @EmailAddress = params['EmailAddress']
        end
      end

      # UpdateEmailSmtpPassWord返回参数结构体
      class UpdateEmailSmtpPassWordResponse < TencentCloud::Common::AbstractModel
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

      # UpdateEmailTemplate请求参数结构体
      class UpdateEmailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateContent: 模板内容
        # @type TemplateContent: :class:`Tencentcloud::Ses.v20201002.models.TemplateContent`
        # @param TemplateID: 模板ID
        # @type TemplateID: Integer
        # @param TemplateName: 模板名字
        # @type TemplateName: String

        attr_accessor :TemplateContent, :TemplateID, :TemplateName

        def initialize(templatecontent=nil, templateid=nil, templatename=nil)
          @TemplateContent = templatecontent
          @TemplateID = templateid
          @TemplateName = templatename
        end

        def deserialize(params)
          unless params['TemplateContent'].nil?
            @TemplateContent = TemplateContent.new
            @TemplateContent.deserialize(params['TemplateContent'])
          end
          @TemplateID = params['TemplateID']
          @TemplateName = params['TemplateName']
        end
      end

      # UpdateEmailTemplate返回参数结构体
      class UpdateEmailTemplateResponse < TencentCloud::Common::AbstractModel
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

      # 统计数据的结构体
      class Volume < TencentCloud::Common::AbstractModel
        # @param SendDate: 日期
        # @type SendDate: String
        # @param RequestCount: 邮件请求数量
        # @type RequestCount: Integer
        # @param AcceptedCount: 腾讯云通过数量
        # @type AcceptedCount: Integer
        # @param DeliveredCount: 送达数量
        # @type DeliveredCount: Integer
        # @param OpenedCount: 打开邮件的用户数量，根据收件人去重
        # @type OpenedCount: Integer
        # @param ClickedCount: 点击了邮件中的链接数量用户数量
        # @type ClickedCount: Integer
        # @param BounceCount: 退信数量
        # @type BounceCount: Integer
        # @param UnsubscribeCount: 取消订阅的用户数量
        # @type UnsubscribeCount: Integer

        attr_accessor :SendDate, :RequestCount, :AcceptedCount, :DeliveredCount, :OpenedCount, :ClickedCount, :BounceCount, :UnsubscribeCount

        def initialize(senddate=nil, requestcount=nil, acceptedcount=nil, deliveredcount=nil, openedcount=nil, clickedcount=nil, bouncecount=nil, unsubscribecount=nil)
          @SendDate = senddate
          @RequestCount = requestcount
          @AcceptedCount = acceptedcount
          @DeliveredCount = deliveredcount
          @OpenedCount = openedcount
          @ClickedCount = clickedcount
          @BounceCount = bouncecount
          @UnsubscribeCount = unsubscribecount
        end

        def deserialize(params)
          @SendDate = params['SendDate']
          @RequestCount = params['RequestCount']
          @AcceptedCount = params['AcceptedCount']
          @DeliveredCount = params['DeliveredCount']
          @OpenedCount = params['OpenedCount']
          @ClickedCount = params['ClickedCount']
          @BounceCount = params['BounceCount']
          @UnsubscribeCount = params['UnsubscribeCount']
        end
      end

    end
  end
end

