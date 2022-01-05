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
  module Ses
    module V20201002
      # 附件结构，包含附件名和base64之后的附件内容。
      class Attachment < TencentCloud::Common::AbstractModel
        # @param FileName: 附件名称，最大支持255个字符长度，不支持部分附件类型，详情请参考[附件类型](https://cloud.tencent.com/document/product/1288/51951)。
        # @type FileName: String
        # @param Content: base64之后的附件内容，您可以发送的附件大小上限为5 MB。 注意：腾讯云api目前要求请求包大小不得超过10 MB。如果您要发送多个附件，那么这些附件的总大小不能超过10 MB。
        # @type Content: String

        attr_accessor :FileName, :Content
        
        def initialize(filename=nil, content=nil)
          @FileName = filename
          @Content = content
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Content = params['Content']
        end
      end

      # BatchSendEmail请求参数结构体
      class BatchSendEmailRequest < TencentCloud::Common::AbstractModel
        # @param FromEmailAddress: 发信邮件地址。请填写发件人邮箱地址，例如：noreply@mail.qcloud.com。如需填写发件人说明，请按照
        # 发信人 <邮件地址> 的方式填写，例如：
        # 腾讯云团队 <noreply@mail.qcloud.com>
        # @type FromEmailAddress: String
        # @param ReceiverId: 收件人列表ID
        # @type ReceiverId: Integer
        # @param Subject: 邮件主题
        # @type Subject: String
        # @param TaskType: 任务类型 1: 立即发送 2: 定时发送 3: 周期（频率）发送
        # @type TaskType: Integer
        # @param ReplyToAddresses: 邮件的“回复”电子邮件地址。可以填写您能收到邮件的邮箱地址，可以是个人邮箱。如果不填，收件人将会回复到腾讯云。
        # @type ReplyToAddresses: String
        # @param Template: 使用模板发送时，填写的模板相关参数
        # @type Template: :class:`Tencentcloud::Ses.v20201002.models.Template`
        # @param Simple: 使用API直接发送内容时，填写的邮件内容
        # @type Simple: :class:`Tencentcloud::Ses.v20201002.models.Simple`
        # @param Attachments: 需要发送附件时，填写附件相关参数。
        # @type Attachments: Array
        # @param CycleParam: 周期发送任务的必要参数
        # @type CycleParam: :class:`Tencentcloud::Ses.v20201002.models.CycleEmailParam`
        # @param TimedParam: 定时发送任务的必要参数
        # @type TimedParam: :class:`Tencentcloud::Ses.v20201002.models.TimedEmailParam`

        attr_accessor :FromEmailAddress, :ReceiverId, :Subject, :TaskType, :ReplyToAddresses, :Template, :Simple, :Attachments, :CycleParam, :TimedParam
        
        def initialize(fromemailaddress=nil, receiverid=nil, subject=nil, tasktype=nil, replytoaddresses=nil, template=nil, simple=nil, attachments=nil, cycleparam=nil, timedparam=nil)
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
        end
      end

      # BatchSendEmail返回参数结构体
      class BatchSendEmailResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 发送任务ID
        # @type TaskId: Integer
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

      # 邮箱黑名单结构，包含被拉黑的邮箱地址和被拉黑时间
      class BlackEmailAddress < TencentCloud::Common::AbstractModel
        # @param BounceTime: 邮箱被拉黑时间
        # @type BounceTime: String
        # @param EmailAddress: 被拉黑的邮箱地址
        # @type EmailAddress: String

        attr_accessor :BounceTime, :EmailAddress
        
        def initialize(bouncetime=nil, emailaddress=nil)
          @BounceTime = bouncetime
          @EmailAddress = emailaddress
        end

        def deserialize(params)
          @BounceTime = params['BounceTime']
          @EmailAddress = params['EmailAddress']
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

      # CreateEmailIdentity请求参数结构体
      class CreateEmailIdentityRequest < TencentCloud::Common::AbstractModel
        # @param EmailIdentity: 您的发信域名，建议使用三级以上域名。例如：mail.qcloud.com。
        # @type EmailIdentity: String

        attr_accessor :EmailIdentity
        
        def initialize(emailidentity=nil)
          @EmailIdentity = emailidentity
        end

        def deserialize(params)
          @EmailIdentity = params['EmailIdentity']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 创建重复周期发送邮件任务的参数
      class CycleEmailParam < TencentCloud::Common::AbstractModel
        # @param BeginTime: 任务开始时间
        # @type BeginTime: String
        # @param IntervalTime: 任务周期 小时维度
        # @type IntervalTime: Integer

        attr_accessor :BeginTime, :IntervalTime
        
        def initialize(begintime=nil, intervaltime=nil)
          @BeginTime = begintime
          @IntervalTime = intervaltime
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @IntervalTime = params['IntervalTime']
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

      # 发信域名验证列表结构体
      class EmailIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityName: 发信域名
        # @type IdentityName: String
        # @param IdentityType: 验证类型，固定为DOMAIN
        # @type IdentityType: String
        # @param SendingEnabled: 是否已通过验证
        # @type SendingEnabled: Boolean

        attr_accessor :IdentityName, :IdentityType, :SendingEnabled
        
        def initialize(identityname=nil, identitytype=nil, sendingenabled=nil)
          @IdentityName = identityname
          @IdentityType = identitytype
          @SendingEnabled = sendingenabled
        end

        def deserialize(params)
          @IdentityName = params['IdentityName']
          @IdentityType = params['IdentityType']
          @SendingEnabled = params['SendingEnabled']
        end
      end

      # 用于描述发件人相关信息
      class EmailSender < TencentCloud::Common::AbstractModel
        # @param EmailAddress: 发信地址
        # @type EmailAddress: String
        # @param EmailSenderName: 发信人别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmailSenderName: String
        # @param CreatedTimestamp: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTimestamp: Integer

        attr_accessor :EmailAddress, :EmailSenderName, :CreatedTimestamp
        
        def initialize(emailaddress=nil, emailsendername=nil, createdtimestamp=nil)
          @EmailAddress = emailaddress
          @EmailSenderName = emailsendername
          @CreatedTimestamp = createdtimestamp
        end

        def deserialize(params)
          @EmailAddress = params['EmailAddress']
          @EmailSenderName = params['EmailSenderName']
          @CreatedTimestamp = params['CreatedTimestamp']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateContent, :RequestId
        
        def initialize(templatecontent=nil, requestid=nil)
          @TemplateContent = templatecontent
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplateContent'].nil?
            @TemplateContent = TemplateContent.new
            @TemplateContent.deserialize(params['TemplateContent'])
          end
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param TaskID: 可以指定任务ID进行查询
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmailSenders: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListEmailIdentities返回参数结构体
      class ListEmailIdentitiesResponse < TencentCloud::Common::AbstractModel
        # @param EmailIdentities: 发信域名列表
        # @type EmailIdentities: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EmailIdentities, :RequestId
        
        def initialize(emailidentities=nil, requestid=nil)
          @EmailIdentities = emailidentities
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
          @RequestId = params['RequestId']
        end
      end

      # ListEmailTemplates请求参数结构体
      class ListEmailTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 获取模版数据量，用于分页
        # @type Limit: Integer
        # @param Offset: 获取模版偏移值，用于分页
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
        # @param TotalCount: 模版总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # SendEmail请求参数结构体
      class SendEmailRequest < TencentCloud::Common::AbstractModel
        # @param FromEmailAddress: 发信邮件地址。请填写发件人邮箱地址，例如：noreply@mail.qcloud.com。如需填写发件人说明，请按照
        # 发信人 <邮件地址> 的方式填写，例如：
        # 腾讯云团队 <noreply@mail.qcloud.com>
        # @type FromEmailAddress: String
        # @param Destination: 收信人邮箱地址，最多支持群发50人。注意：邮件内容会显示所有收件人地址，非群发邮件请多次调用API发送。
        # @type Destination: Array
        # @param Subject: 邮件主题
        # @type Subject: String
        # @param ReplyToAddresses: 邮件的“回复”电子邮件地址。可以填写您能收到邮件的邮箱地址，可以是个人邮箱。如果不填，收件人将会回复到腾讯云。
        # @type ReplyToAddresses: String
        # @param Template: 使用模板发送时，填写的模板相关参数
        # @type Template: :class:`Tencentcloud::Ses.v20201002.models.Template`
        # @param Simple: 使用API直接发送内容时，填写的邮件内容
        # @type Simple: :class:`Tencentcloud::Ses.v20201002.models.Simple`
        # @param Attachments: 需要发送附件时，填写附件相关参数。
        # @type Attachments: Array

        attr_accessor :FromEmailAddress, :Destination, :Subject, :ReplyToAddresses, :Template, :Simple, :Attachments
        
        def initialize(fromemailaddress=nil, destination=nil, subject=nil, replytoaddresses=nil, template=nil, simple=nil, attachments=nil)
          @FromEmailAddress = fromemailaddress
          @Destination = destination
          @Subject = subject
          @ReplyToAddresses = replytoaddresses
          @Template = template
          @Simple = simple
          @Attachments = attachments
        end

        def deserialize(params)
          @FromEmailAddress = params['FromEmailAddress']
          @Destination = params['Destination']
          @Subject = params['Subject']
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
        end
      end

      # SendEmail返回参数结构体
      class SendEmailResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: 接受消息生成的唯一消息标识符。
        # @type MessageId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 1009: 内部系统异常
        # 1010: 超出了每日发送限制
        # 1011: 无发送自定义内容权限，必须使用模板
        # 2001: 找不到相关记录
        # 3007: 模板ID无效或者不可用
        # 3008: 模板状态异常
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

        attr_accessor :MessageId, :ToEmailAddress, :FromEmailAddress, :SendStatus, :DeliverStatus, :DeliverMessage, :RequestTime, :DeliverTime, :UserOpened, :UserClicked, :UserUnsubscribed, :UserComplainted
        
        def initialize(messageid=nil, toemailaddress=nil, fromemailaddress=nil, sendstatus=nil, deliverstatus=nil, delivermessage=nil, requesttime=nil, delivertime=nil, useropened=nil, userclicked=nil, userunsubscribed=nil, usercomplainted=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # UpdateEmailTemplate请求参数结构体
      class UpdateEmailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateContent: 模板内容
        # @type TemplateContent: :class:`Tencentcloud::Ses.v20201002.models.TemplateContent`
        # @param TemplateID: 模板ID
        # @type TemplateID: Integer
        # @param TemplateName: 模版名字
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

      # 统计数据的结构体
      class Volume < TencentCloud::Common::AbstractModel
        # @param SendDate: 日期
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

