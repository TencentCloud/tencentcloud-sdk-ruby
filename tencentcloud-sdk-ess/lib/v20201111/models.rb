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
      # 应用相关信息
      class Agent < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # 参与者信息
      class ApproverInfo < TencentCloud::Common::AbstractModel
        # @param ApproverType: 参与者类型：
        # 0：企业
        # 1：个人
        # 3：企业静默签署
        # 注：类型为3（企业静默签署）时，此接口会默认完成该签署方的签署。静默签署仅进行盖章操作，不能自动签名。
        # @type ApproverType: Integer
        # @param ApproverName: 本环节需要操作人的名字
        # @type ApproverName: String
        # @param ApproverMobile: 本环节需要操作人的手机号
        # @type ApproverMobile: String
        # @param SignComponents: 本环节操作人签署控件配置
        # @type SignComponents: Array
        # @param OrganizationName: 如果是企业,则为企业的名字
        # @type OrganizationName: String
        # @param ApproverIdCardNumber: 身份证号
        # @type ApproverIdCardNumber: String
        # @param ApproverIdCardType: 证件类型
        # ID_CARD 身份证
        # HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)
        # @type ApproverIdCardType: String
        # @param NotifyType: sms--短信，none--不通知
        # @type NotifyType: String
        # @param ApproverRole: 1--收款人、2--开具人、3--见证人
        # @type ApproverRole: Integer
        # @param VerifyChannel: 签署意愿确认渠道,WEIXINAPP:人脸识别
        # @type VerifyChannel: Array
        # @param PreReadTime: 合同的强制预览时间：3~300s，未指定则按合同页数计算
        # @type PreReadTime: Integer
        # @param UserId: 签署人userId，非企微场景不使用此字段
        # @type UserId: String
        # @param ApproverSource: 签署人用户来源,企微侧用户请传入：WEWORKAPP
        # @type ApproverSource: String
        # @param CustomApproverTag: 客户自定义签署人标识，64位长度，保证唯一，非企微场景不使用此字段
        # @type CustomApproverTag: String

        attr_accessor :ApproverType, :ApproverName, :ApproverMobile, :SignComponents, :OrganizationName, :ApproverIdCardNumber, :ApproverIdCardType, :NotifyType, :ApproverRole, :VerifyChannel, :PreReadTime, :UserId, :ApproverSource, :CustomApproverTag
        
        def initialize(approvertype=nil, approvername=nil, approvermobile=nil, signcomponents=nil, organizationname=nil, approveridcardnumber=nil, approveridcardtype=nil, notifytype=nil, approverrole=nil, verifychannel=nil, prereadtime=nil, userid=nil, approversource=nil, customapprovertag=nil)
          @ApproverType = approvertype
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @SignComponents = signcomponents
          @OrganizationName = organizationname
          @ApproverIdCardNumber = approveridcardnumber
          @ApproverIdCardType = approveridcardtype
          @NotifyType = notifytype
          @ApproverRole = approverrole
          @VerifyChannel = verifychannel
          @PreReadTime = prereadtime
          @UserId = userid
          @ApproverSource = approversource
          @CustomApproverTag = customapprovertag
        end

        def deserialize(params)
          @ApproverType = params['ApproverType']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @OrganizationName = params['OrganizationName']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
          @ApproverIdCardType = params['ApproverIdCardType']
          @NotifyType = params['NotifyType']
          @ApproverRole = params['ApproverRole']
          @VerifyChannel = params['VerifyChannel']
          @PreReadTime = params['PreReadTime']
          @UserId = params['UserId']
          @ApproverSource = params['ApproverSource']
          @CustomApproverTag = params['CustomApproverTag']
        end
      end

      # 指定签署人限制项
      class ApproverRestriction < TencentCloud::Common::AbstractModel
        # @param Name: 指定签署人名字
        # @type Name: String
        # @param Mobile: 指定签署人手机号
        # @type Mobile: String
        # @param IdCardType: 指定签署人证件类型
        # @type IdCardType: String
        # @param IdCardNumber: 指定签署人证件号码
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

      # 此结构体 (Caller) 用于描述调用方属性。
      class Caller < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用号
        # @type ApplicationId: String
        # @param OrganizationId: 主机构ID
        # @type OrganizationId: String
        # @param OperatorId: 经办人的用户ID
        # @type OperatorId: String
        # @param SubOrganizationId: 下属机构ID
        # @type SubOrganizationId: String

        attr_accessor :ApplicationId, :OrganizationId, :OperatorId, :SubOrganizationId
        
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
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 签署流程id
        # @type FlowId: String
        # @param CancelMessage: 撤销原因，最长200个字符；
        # @type CancelMessage: String
        # @param Agent: 应用相关信息
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
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param QrCodeId: 二维码id
        # @type QrCodeId: String
        # @param Agent: 应用信息
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

      # 抄送信息
      class CcInfo < TencentCloud::Common::AbstractModel
        # @param Mobile: 被抄送人手机号
        # @type Mobile: String

        attr_accessor :Mobile
        
        def initialize(mobile=nil)
          @Mobile = mobile
        end

        def deserialize(params)
          @Mobile = params['Mobile']
        end
      end

      # 模板控件信息
      class Component < TencentCloud::Common::AbstractModel
        # @param ComponentType: 如果是Component控件类型，则可选的字段为：
        # TEXT - 普通文本控件；
        # MULTI_LINE_TEXT - 多行文本控件；
        # CHECK_BOX - 勾选框控件；
        # FILL_IMAGE - 图片控件；
        # DYNAMIC_TABLE - 动态表格控件；
        # ATTACHMENT - 附件控件；
        # SELECTOR - 选择器控件；

        # 如果是SignComponent控件类型，则可选的字段为
        # SIGN_SEAL - 签署印章控件；
        # SIGN_DATE - 签署日期控件；
        # SIGN_SIGNATURE - 用户签名控件；
        # SIGN_PERSONAL_SEAL - 个人签署印章控件（使用文件发起暂不支持此类型）；

        # 表单域的控件不能作为印章和签名控件
        # @type ComponentType: String
        # @param ComponentWidth: 参数控件宽度，单位pt
        # @type ComponentWidth: Float
        # @param ComponentHeight: 参数控件高度，单位pt
        # @type ComponentHeight: Float
        # @param ComponentPage: 参数控件所在页码，取值为：1-N
        # @type ComponentPage: Integer
        # @param ComponentPosX: 参数控件X位置，单位pt
        # @type ComponentPosX: Float
        # @param ComponentPosY: 参数控件Y位置，单位pt
        # @type ComponentPosY: Float
        # @param FileIndex: 控件所属文件的序号（模板中的resourceId排列序号，取值为：0-N）
        # @type FileIndex: Integer
        # @param ComponentId: GenerateMode==KEYWORD 指定关键字
        # @type ComponentId: String
        # @param ComponentName: GenerateMode==FIELD 指定表单域名称
        # @type ComponentName: String
        # @param ComponentRequired: 是否必选，默认为false
        # @type ComponentRequired: Boolean
        # @param ComponentExtra: 扩展参数：
        # ComponentType为SIGN_SIGNATURE类型可以控制签署方式
        # {“ComponentTypeLimit”: [“xxx”]}
        # xxx可以为：
        # HANDWRITE – 手写签名
        # BORDERLESS_ESIGN – 自动生成无边框腾讯体
        # OCR_ESIGN -- AI智能识别手写签名
        # ESIGN -- 个人印章类型
        # 如：{“ComponentTypeLimit”: [“BORDERLESS_ESIGN”]}
        # @type ComponentExtra: String
        # @param ComponentRecipientId: 控件关联的签署人ID
        # @type ComponentRecipientId: String
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # TEXT - 文本内容
        # MULTI_LINE_TEXT - 文本内容
        # CHECK_BOX - true/false
        # FILL_IMAGE、ATTACHMENT - 附件的FileId，需要通过UploadFiles接口上传获取
        # SELECTOR - 选项值
        # DYNAMIC_TABLE - 传入json格式的表格内容，具体见数据结构FlowInfo：https://cloud.tencent.com/document/api/1420/61525#FlowInfo
        # @type ComponentValue: String
        # @param IsFormType: 是否是表单域类型，默认不存在
        # @type IsFormType: Boolean
        # @param GenerateMode: NORMAL 正常模式，使用坐标制定签署控件位置
        # FIELD 表单域，需使用ComponentName指定表单域名称
        # KEYWORD 关键字，使用ComponentId指定关键字
        # @type GenerateMode: String
        # @param ComponentDateFontSize: 日期控件类型字号
        # @type ComponentDateFontSize: Integer
        # @param OffsetX: 指定关键字时横坐标偏移量，单位pt
        # @type OffsetX: Float
        # @param OffsetY: 指定关键字时纵坐标偏移量，单位pt
        # @type OffsetY: Float

        attr_accessor :ComponentType, :ComponentWidth, :ComponentHeight, :ComponentPage, :ComponentPosX, :ComponentPosY, :FileIndex, :ComponentId, :ComponentName, :ComponentRequired, :ComponentExtra, :ComponentRecipientId, :ComponentValue, :IsFormType, :GenerateMode, :ComponentDateFontSize, :OffsetX, :OffsetY
        
        def initialize(componenttype=nil, componentwidth=nil, componentheight=nil, componentpage=nil, componentposx=nil, componentposy=nil, fileindex=nil, componentid=nil, componentname=nil, componentrequired=nil, componentextra=nil, componentrecipientid=nil, componentvalue=nil, isformtype=nil, generatemode=nil, componentdatefontsize=nil, offsetx=nil, offsety=nil)
          @ComponentType = componenttype
          @ComponentWidth = componentwidth
          @ComponentHeight = componentheight
          @ComponentPage = componentpage
          @ComponentPosX = componentposx
          @ComponentPosY = componentposy
          @FileIndex = fileindex
          @ComponentId = componentid
          @ComponentName = componentname
          @ComponentRequired = componentrequired
          @ComponentExtra = componentextra
          @ComponentRecipientId = componentrecipientid
          @ComponentValue = componentvalue
          @IsFormType = isformtype
          @GenerateMode = generatemode
          @ComponentDateFontSize = componentdatefontsize
          @OffsetX = offsetx
          @OffsetY = offsety
        end

        def deserialize(params)
          @ComponentType = params['ComponentType']
          @ComponentWidth = params['ComponentWidth']
          @ComponentHeight = params['ComponentHeight']
          @ComponentPage = params['ComponentPage']
          @ComponentPosX = params['ComponentPosX']
          @ComponentPosY = params['ComponentPosY']
          @FileIndex = params['FileIndex']
          @ComponentId = params['ComponentId']
          @ComponentName = params['ComponentName']
          @ComponentRequired = params['ComponentRequired']
          @ComponentExtra = params['ComponentExtra']
          @ComponentRecipientId = params['ComponentRecipientId']
          @ComponentValue = params['ComponentValue']
          @IsFormType = params['IsFormType']
          @GenerateMode = params['GenerateMode']
          @ComponentDateFontSize = params['ComponentDateFontSize']
          @OffsetX = params['OffsetX']
          @OffsetY = params['OffsetY']
        end
      end

      # CreateBatchCancelFlowUrl请求参数结构体
      class CreateBatchCancelFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 需要执行撤回的签署流程id数组，最多100个
        # @type FlowIds: Array

        attr_accessor :Operator, :FlowIds
        
        def initialize(operator=nil, flowids=nil)
          @Operator = operator
          @FlowIds = flowids
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowIds = params['FlowIds']
        end
      end

      # CreateBatchCancelFlowUrl返回参数结构体
      class CreateBatchCancelFlowUrlResponse < TencentCloud::Common::AbstractModel
        # @param BatchCancelFlowUrl: 批量撤回签署流程链接
        # @type BatchCancelFlowUrl: String
        # @param FailMessages: 签署流程撤回失败信息
        # @type FailMessages: Array
        # @param UrlExpireOn: 签署连接过期时间字符串：年月日-时分秒
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

      # CreateConvertTaskApi请求参数结构体
      class CreateConvertTaskApiRequest < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型 取值范围doc,docx,html之一
        # @type ResourceType: String
        # @param ResourceName: 资源名称，长度限制为256字符
        # @type ResourceName: String
        # @param ResourceId: 资源Id，通过UploadFiles获取
        # @type ResourceId: String
        # @param Operator: 操作者信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 应用号信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :ResourceType, :ResourceName, :ResourceId, :Operator, :Agent, :Organization
        
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
        # @param TaskId: 转换任务Id
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
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 签署流程编号,由CreateFlow接口返回
        # @type FlowId: String
        # @param TemplateId: 用户上传的模板ID
        # @type TemplateId: String
        # @param FileNames: 文件名列表，单个文件名最大长度200个字符，暂时仅支持单文件发起
        # @type FileNames: Array
        # @param FormFields: 内容控件信息数组
        # @type FormFields: Array
        # @param NeedPreview: 是否需要生成预览文件 默认不生成；
        # 预览链接有效期300秒；
        # @type NeedPreview: Boolean
        # @param ClientToken: 客户端Token，保持接口幂等性,最大长度64个字符
        # @type ClientToken: String
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :TemplateId, :FileNames, :FormFields, :NeedPreview, :ClientToken, :Agent
        
        def initialize(operator=nil, flowid=nil, templateid=nil, filenames=nil, formfields=nil, needpreview=nil, clienttoken=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @TemplateId = templateid
          @FileNames = filenames
          @FormFields = formfields
          @NeedPreview = needpreview
          @ClientToken = clienttoken
          @Agent = agent
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
          @ClientToken = params['ClientToken']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateDocument返回参数结构体
      class CreateDocumentResponse < TencentCloud::Common::AbstractModel
        # @param DocumentId: 签署流程电子文档ID
        # @type DocumentId: String
        # @param PreviewFileUrl: 签署流程文件的预览地址, 5分钟内有效。仅当NeedPreview为true 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewFileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocumentId, :PreviewFileUrl, :RequestId
        
        def initialize(documentid=nil, previewfileurl=nil, requestid=nil)
          @DocumentId = documentid
          @PreviewFileUrl = previewfileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
          @PreviewFileUrl = params['PreviewFileUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowApprovers请求参数结构体
      class CreateFlowApproversRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param Approvers: 补充签署人信息
        # @type Approvers: Array

        attr_accessor :Operator, :FlowId, :Approvers
        
        def initialize(operator=nil, flowid=nil, approvers=nil)
          @Operator = operator
          @FlowId = flowid
          @Approvers = approvers
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
        end
      end

      # CreateFlowApprovers返回参数结构体
      class CreateFlowApproversResponse < TencentCloud::Common::AbstractModel
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

      # CreateFlowByFiles请求参数结构体
      class CreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 签署流程名称,最大长度200个字符
        # @type FlowName: String
        # @param Approvers: 签署参与者信息，最大限制50方
        # @type Approvers: Array
        # @param FileIds: 签署pdf文件的资源编号列表，通过UploadFiles接口获取，暂时仅支持单文件发起
        # @type FileIds: Array
        # @param FlowType: 签署流程的类型(如销售合同/入职合同等)，最大长度200个字符
        # @type FlowType: String
        # @param Components: 经办人内容控件配置
        # @type Components: Array
        # @param CcInfos: 被抄送人的信息列表。
        # 注:此功能为白名单功能，若有需要，请联系电子签客服开白使用
        # @type CcInfos: Array
        # @param NeedPreview: 是否需要预览，true：预览模式，false：非预览（默认）；
        # 预览链接有效期300秒；

        # 注：如果使用“预览模式”，出参会返回合同预览链接 PreviewUrl，不会正式发起合同，且出参不会返回签署流程编号 FlowId；如果使用“非预览”，则会正常返回签署流程编号 FlowId，不会生成合同预览链接 PreviewUrl。
        # @type NeedPreview: Boolean
        # @param FlowDescription: 签署流程描述,最大长度1000个字符
        # @type FlowDescription: String
        # @param Deadline: 签署流程的签署截止时间。
        # 值为unix时间戳,精确到秒,不传默认为当前时间一年后
        # @type Deadline: Integer
        # @param Unordered: 发送类型：
        # true：无序签
        # false：有序签
        # 注：默认为false（有序签）
        # @type Unordered: Boolean
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作是否需要企业内部审批。使用此功能需要发起方企业有参与签署。
        # 若设置为true，审核结果需通过接口 CreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。

        # 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        # @type NeedSignReview: Boolean
        # @param Agent: 应用号信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowName, :Approvers, :FileIds, :FlowType, :Components, :CcInfos, :NeedPreview, :FlowDescription, :Deadline, :Unordered, :CustomShowMap, :NeedSignReview, :Agent
        
        def initialize(operator=nil, flowname=nil, approvers=nil, fileids=nil, flowtype=nil, components=nil, ccinfos=nil, needpreview=nil, flowdescription=nil, deadline=nil, unordered=nil, customshowmap=nil, needsignreview=nil, agent=nil)
          @Operator = operator
          @FlowName = flowname
          @Approvers = approvers
          @FileIds = fileids
          @FlowType = flowtype
          @Components = components
          @CcInfos = ccinfos
          @NeedPreview = needpreview
          @FlowDescription = flowdescription
          @Deadline = deadline
          @Unordered = unordered
          @CustomShowMap = customshowmap
          @NeedSignReview = needsignreview
          @Agent = agent
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
          @NeedPreview = params['NeedPreview']
          @FlowDescription = params['FlowDescription']
          @Deadline = params['Deadline']
          @Unordered = params['Unordered']
          @CustomShowMap = params['CustomShowMap']
          @NeedSignReview = params['NeedSignReview']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateFlowByFiles返回参数结构体
      class CreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 签署流程编号。

        # 注：如入参 是否需要预览 NeedPreview 设置为 true，不会正式发起合同，此处不会有值返回；如入参 是否需要预览 NeedPreview 设置为 false，此处会正常返回签署流程编号 FlowId。
        # @type FlowId: String
        # @param PreviewUrl: 合同预览链接。

        # 注：如入参 是否需要预览 NeedPreview 设置为 true，会开启“预览模式”，此处会返回预览链接；如入参 是否需要预览 NeedPreview 设置为 false，此处不会有值返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :PreviewUrl, :RequestId
        
        def initialize(flowid=nil, previewurl=nil, requestid=nil)
          @FlowId = flowid
          @PreviewUrl = previewurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @PreviewUrl = params['PreviewUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowEvidenceReport请求参数结构体
      class CreateFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 签署流程编号
        # @type FlowId: String

        attr_accessor :Operator, :FlowId
        
        def initialize(operator=nil, flowid=nil)
          @Operator = operator
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowId = params['FlowId']
        end
      end

      # CreateFlowEvidenceReport返回参数结构体
      class CreateFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 出证报告 URL（有效期5分钟）
        # @type ReportUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportUrl, :RequestId
        
        def initialize(reporturl=nil, requestid=nil)
          @ReportUrl = reporturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportUrl = params['ReportUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlow请求参数结构体
      class CreateFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 签署流程名称,最大长度200个字符
        # @type FlowName: String
        # @param Approvers: 签署流程参与者信息，最大限制50方
        # @type Approvers: Array
        # @param FlowType: 签署流程的类型(如销售合同/入职合同等)，最大长度200个字符
        # @type FlowType: String
        # @param ClientToken: 客户端Token，保持接口幂等性,最大长度64个字符
        # @type ClientToken: String
        # @param CallbackUrl: 暂未开放
        # @type CallbackUrl: String
        # @param DeadLine: 签署流程的签署截止时间。
        # 值为unix时间戳,精确到秒,不传默认为当前时间一年后
        # @type DeadLine: Integer
        # @param UserData: 用户自定义字段(需进行base64 encode),回调的时候会进行透传, 长度需要小于20480
        # @type UserData: String
        # @param FlowDescription: 签署流程描述,最大长度1000个字符
        # @type FlowDescription: String
        # @param Unordered: 发送类型：
        # true：无序签
        # false：有序签
        # 注：默认为false（有序签），请和模板中的配置保持一致
        # @type Unordered: Boolean
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作是否需要企业内部审批。
        # 若设置为true,审核结果需通过接口 CreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。

        # 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        # @type NeedSignReview: Boolean
        # @param RelatedFlowId: 暂未开放
        # @type RelatedFlowId: String
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowName, :Approvers, :FlowType, :ClientToken, :CallbackUrl, :DeadLine, :UserData, :FlowDescription, :Unordered, :CustomShowMap, :NeedSignReview, :RelatedFlowId, :Agent
        
        def initialize(operator=nil, flowname=nil, approvers=nil, flowtype=nil, clienttoken=nil, callbackurl=nil, deadline=nil, userdata=nil, flowdescription=nil, unordered=nil, customshowmap=nil, needsignreview=nil, relatedflowid=nil, agent=nil)
          @Operator = operator
          @FlowName = flowname
          @Approvers = approvers
          @FlowType = flowtype
          @ClientToken = clienttoken
          @CallbackUrl = callbackurl
          @DeadLine = deadline
          @UserData = userdata
          @FlowDescription = flowdescription
          @Unordered = unordered
          @CustomShowMap = customshowmap
          @NeedSignReview = needsignreview
          @RelatedFlowId = relatedflowid
          @Agent = agent
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
          @FlowType = params['FlowType']
          @ClientToken = params['ClientToken']
          @CallbackUrl = params['CallbackUrl']
          @DeadLine = params['DeadLine']
          @UserData = params['UserData']
          @FlowDescription = params['FlowDescription']
          @Unordered = params['Unordered']
          @CustomShowMap = params['CustomShowMap']
          @NeedSignReview = params['NeedSignReview']
          @RelatedFlowId = params['RelatedFlowId']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateFlow返回参数结构体
      class CreateFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 签署流程编号
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
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param ReviewType: 企业内部审核结果
        # PASS: 通过
        # REJECT: 拒绝
        # @type ReviewType: String
        # @param ReviewMessage: 审核原因
        # 当ReviewType 是REJECT 时此字段必填,字符串长度不超过200
        # @type ReviewMessage: String
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :ReviewType, :ReviewMessage, :Agent
        
        def initialize(operator=nil, flowid=nil, reviewtype=nil, reviewmessage=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @ReviewType = reviewtype
          @ReviewMessage = reviewmessage
          @Agent = agent
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

      # CreateMultiFlowSignQRCode请求参数结构体
      class CreateMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param FlowName: 签署流程名称，最大长度不超过200字符
        # @type FlowName: String
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 应用信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param CallbackUrl: 回调地址,最大长度1000字符串
        # 回调时机：
        # 用户通过签署二维码发起签署流程时，企业额度不足导致失败
        # @type CallbackUrl: String
        # @param MaxFlowNum: 最大可发起签署流程份数，默认5份
        # 发起流程数量超过此上限后二维码自动失效
        # @type MaxFlowNum: Integer
        # @param FlowEffectiveDay: 签署流程有效天数 默认7天 最高设置不超过30天
        # @type FlowEffectiveDay: Integer
        # @param QrEffectiveDay: 二维码有效天数 默认7天 最高设置不超过90天
        # @type QrEffectiveDay: Integer
        # @param ApproverRestrictions: 限制二维码用户条件
        # @type ApproverRestrictions: :class:`Tencentcloud::Ess.v20201111.models.ApproverRestriction`

        attr_accessor :TemplateId, :FlowName, :Operator, :Agent, :CallbackUrl, :MaxFlowNum, :FlowEffectiveDay, :QrEffectiveDay, :ApproverRestrictions
        
        def initialize(templateid=nil, flowname=nil, operator=nil, agent=nil, callbackurl=nil, maxflownum=nil, floweffectiveday=nil, qreffectiveday=nil, approverrestrictions=nil)
          @TemplateId = templateid
          @FlowName = flowname
          @Operator = operator
          @Agent = agent
          @CallbackUrl = callbackurl
          @MaxFlowNum = maxflownum
          @FlowEffectiveDay = floweffectiveday
          @QrEffectiveDay = qreffectiveday
          @ApproverRestrictions = approverrestrictions
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @FlowName = params['FlowName']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @CallbackUrl = params['CallbackUrl']
          @MaxFlowNum = params['MaxFlowNum']
          @FlowEffectiveDay = params['FlowEffectiveDay']
          @QrEffectiveDay = params['QrEffectiveDay']
          unless params['ApproverRestrictions'].nil?
            @ApproverRestrictions = ApproverRestriction.new
            @ApproverRestrictions.deserialize(params['ApproverRestrictions'])
          end
        end
      end

      # CreateMultiFlowSignQRCode返回参数结构体
      class CreateMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 签署二维码对象
        # @type QrCode: :class:`Tencentcloud::Ess.v20201111.models.SignQrCode`
        # @param SignUrls: 签署链接对象
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

      # CreateSchemeUrl请求参数结构体
      class CreateSchemeUrlRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param OrganizationName: 企业名称
        # @type OrganizationName: String
        # @param Name: 姓名,最大长度50个字符
        # @type Name: String
        # @param Mobile: 手机号，大陆手机号11位
        # @type Mobile: String
        # @param EndPoint: 链接类型
        # HTTP：跳转电子签小程序的http_url，
        # APP：第三方APP或小程序跳转电子签小程序的path。
        # 默认为HTTP类型
        # @type EndPoint: String
        # @param FlowId: 签署流程编号 (PathType=1时必传)
        # @type FlowId: String
        # @param PathType: 跳转页面 1: 小程序合同详情 2: 小程序合同列表页 0: 不传, 默认主页
        # @type PathType: Integer
        # @param AutoJumpBack: 是否自动回跳 true：是， false：否。该参数只针对"APP" 类型的签署链接有效
        # @type AutoJumpBack: Boolean
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :OrganizationName, :Name, :Mobile, :EndPoint, :FlowId, :PathType, :AutoJumpBack, :Agent
        
        def initialize(operator=nil, organizationname=nil, name=nil, mobile=nil, endpoint=nil, flowid=nil, pathtype=nil, autojumpback=nil, agent=nil)
          @Operator = operator
          @OrganizationName = organizationname
          @Name = name
          @Mobile = mobile
          @EndPoint = endpoint
          @FlowId = flowid
          @PathType = pathtype
          @AutoJumpBack = autojumpback
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @OrganizationName = params['OrganizationName']
          @Name = params['Name']
          @Mobile = params['Mobile']
          @EndPoint = params['EndPoint']
          @FlowId = params['FlowId']
          @PathType = params['PathType']
          @AutoJumpBack = params['AutoJumpBack']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # CreateSchemeUrl返回参数结构体
      class CreateSchemeUrlResponse < TencentCloud::Common::AbstractModel
        # @param SchemeUrl: 小程序链接地址
        # @type SchemeUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SchemeUrl, :RequestId
        
        def initialize(schemeurl=nil, requestid=nil)
          @SchemeUrl = schemeurl
          @RequestId = requestid
        end

        def deserialize(params)
          @SchemeUrl = params['SchemeUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileUrls请求参数结构体
      class DescribeFileUrlsRequest < TencentCloud::Common::AbstractModel
        # @param BusinessType: 文件对应的业务类型，目前支持：
        # - 模板 "TEMPLATE"
        # - 文档 "DOCUMENT"
        # - 印章  “SEAL”
        # - 流程 "FLOW"
        # @type BusinessType: String
        # @param BusinessIds: 业务编号的数组，如模板编号、文档编号、印章编号
        # 最大支持20个资源
        # @type BusinessIds: Array
        # @param Operator: 操作者信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param FileName: 下载后的文件命名，只有fileType为zip的时候生效
        # @type FileName: String
        # @param FileType: 文件类型，"JPG", "PDF","ZIP"等
        # @type FileType: String
        # @param Offset: 指定资源起始偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 指定资源数量，查询全部资源则传入-1
        # @type Limit: Integer
        # @param UrlTtl: 下载url过期时间，单位秒。0: 按默认值5分钟，允许范围：1s~24x60x60s(1天)
        # @type UrlTtl: Integer
        # @param Scene: 暂不开放
        # @type Scene: String
        # @param CcToken: 暂不开放
        # @type CcToken: String

        attr_accessor :BusinessType, :BusinessIds, :Operator, :Agent, :FileName, :FileType, :Offset, :Limit, :UrlTtl, :Scene, :CcToken
        
        def initialize(businesstype=nil, businessids=nil, operator=nil, agent=nil, filename=nil, filetype=nil, offset=nil, limit=nil, urlttl=nil, scene=nil, cctoken=nil)
          @BusinessType = businesstype
          @BusinessIds = businessids
          @Operator = operator
          @Agent = agent
          @FileName = filename
          @FileType = filetype
          @Offset = offset
          @Limit = limit
          @UrlTtl = urlttl
          @Scene = scene
          @CcToken = cctoken
        end

        def deserialize(params)
          @BusinessType = params['BusinessType']
          @BusinessIds = params['BusinessIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UrlTtl = params['UrlTtl']
          @Scene = params['Scene']
          @CcToken = params['CcToken']
        end
      end

      # DescribeFileUrls返回参数结构体
      class DescribeFileUrlsResponse < TencentCloud::Common::AbstractModel
        # @param FileUrls: URL信息
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
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 需要查询的流程ID列表，限制最大20个
        # @type FlowIds: Array
        # @param Agent: 应用相关信息
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
        # @param FlowBriefs: 流程列表
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

      # DescribeFlowInfo请求参数结构体
      class DescribeFlowInfoRequest < TencentCloud::Common::AbstractModel
        # @param FlowIds: 需要查询的流程ID列表，限制最大100个
        # @type FlowIds: Array
        # @param Operator: 调用方用户信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`

        attr_accessor :FlowIds, :Operator
        
        def initialize(flowids=nil, operator=nil)
          @FlowIds = flowids
          @Operator = operator
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # DescribeFlowInfo返回参数结构体
      class DescribeFlowInfoResponse < TencentCloud::Common::AbstractModel
        # @param FlowDetailInfos: 签署流程信息
        # @type FlowDetailInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowDetailInfos, :RequestId
        
        def initialize(flowdetailinfos=nil, requestid=nil)
          @FlowDetailInfos = flowdetailinfos
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowTemplates请求参数结构体
      class DescribeFlowTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Filters: 搜索条件，具体参考Filter结构体。本接口取值：template-id：按照【 **模板唯一标识** 】进行过滤
        # @type Filters: Array
        # @param Limit: 查询个数，默认20，最大200
        # @type Limit: Integer
        # @param Offset: 查询偏移位置，默认0
        # @type Offset: Integer
        # @param ContentType: 查询内容：0-模板列表及详情（默认），1-仅模板列表
        # @type ContentType: Integer
        # @param GenerateSource: 暂未开放
        # @type GenerateSource: Integer
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :Filters, :Limit, :Offset, :ContentType, :GenerateSource, :Agent
        
        def initialize(operator=nil, filters=nil, limit=nil, offset=nil, contenttype=nil, generatesource=nil, agent=nil)
          @Operator = operator
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @ContentType = contenttype
          @GenerateSource = generatesource
          @Agent = agent
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ContentType = params['ContentType']
          @GenerateSource = params['GenerateSource']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
        end
      end

      # DescribeFlowTemplates返回参数结构体
      class DescribeFlowTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板详情列表
        # @type Templates: Array
        # @param TotalCount: 查询到的总个数
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

      # DescribeThirdPartyAuthCode请求参数结构体
      class DescribeThirdPartyAuthCodeRequest < TencentCloud::Common::AbstractModel
        # @param AuthCode: 电子签小程序跳转客户小程序时携带的授权查看码
        # @type AuthCode: String

        attr_accessor :AuthCode
        
        def initialize(authcode=nil)
          @AuthCode = authcode
        end

        def deserialize(params)
          @AuthCode = params['AuthCode']
        end
      end

      # DescribeThirdPartyAuthCode返回参数结构体
      class DescribeThirdPartyAuthCodeResponse < TencentCloud::Common::AbstractModel
        # @param VerifyStatus: 用户是否实名，VERIFIED 为实名，UNVERIFIED 未实名
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

      # 二期接口返回的模板中文件的信息结构
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 文件Id
        # @type FileId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小，单位为Byte
        # @type FileSize: Integer
        # @param CreatedOn: 文件上传时间，10位时间戳（精确到秒）
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
        # @param Url: 下载文件的URL
        # @type Url: String
        # @param Option: 下载文件的附加信息
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
      class FillApproverInfo < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署人签署Id
        # @type RecipientId: String
        # @param ApproverSource: 签署人来源
        # WEWORKAPP: 企业微信
        # @type ApproverSource: String
        # @param CustomUserId: 企业自定义账号Id
        # WEWORKAPP场景下指企业自有应用获取企微明文的userid
        # @type CustomUserId: String

        attr_accessor :RecipientId, :ApproverSource, :CustomUserId
        
        def initialize(recipientid=nil, approversource=nil, customuserid=nil)
          @RecipientId = recipientid
          @ApproverSource = approversource
          @CustomUserId = customuserid
        end

        def deserialize(params)
          @RecipientId = params['RecipientId']
          @ApproverSource = params['ApproverSource']
          @CustomUserId = params['CustomUserId']
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
        # @param ApproveMessage: 签署人信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMessage: String
        # @param ApproveName: 签署人名字
        # @type ApproveName: String
        # @param ApproveStatus: 签署人的状态
        # 0：还没有发起
        # 1：流程中 没有开始处理
        # 2：待处理
        # 3：签署态
        # 4：拒绝态
        # 5：过期没人处理
        # 6：取消态
        # 7：还没有预发起
        # 8：待填写
        # 9：因为各种原因而终止
        # @type ApproveStatus: Integer
        # @param ReceiptId: 模板配置时候的签署人id,与控件绑定
        # @type ReceiptId: String
        # @param CustomUserId: 客户自定义userId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomUserId: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param SignOrder: 签署顺序
        # @type SignOrder: Integer
        # @param ApproveTime: 签署人签署时间
        # @type ApproveTime: Integer
        # @param ApproveType: 参与者类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveType: String
        # @param ApproverSource: 签署人侧用户来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproverSource: String
        # @param CustomApproverTag: 客户自定义签署人标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomApproverTag: String
        # @param OrganizationId: 签署人企业Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationId: String
        # @param OrganizationName: 签署人企业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String

        attr_accessor :ApproveMessage, :ApproveName, :ApproveStatus, :ReceiptId, :CustomUserId, :Mobile, :SignOrder, :ApproveTime, :ApproveType, :ApproverSource, :CustomApproverTag, :OrganizationId, :OrganizationName
        
        def initialize(approvemessage=nil, approvename=nil, approvestatus=nil, receiptid=nil, customuserid=nil, mobile=nil, signorder=nil, approvetime=nil, approvetype=nil, approversource=nil, customapprovertag=nil, organizationid=nil, organizationname=nil)
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
        end
      end

      # 流程信息摘要
      class FlowBrief < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程的编号
        # @type FlowId: String
        # @param FlowName: 流程的名称
        # @type FlowName: String
        # @param FlowDescription: 流程的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowDescription: String
        # @param FlowType: 流程的类型
        # @type FlowType: String
        # @param FlowStatus: 流程状态
        # - `0`  还没有发起
        # - `1`  未签署
        # - `2`  部分签署
        # - `3`  已退回
        # - `4`  完成签署
        # - `5`  已过期
        # - `6`  已取消
        # - `7`  还没有预发起
        # - `8`  等待填写
        # - `9`  部分填写
        # - `10`  拒填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowStatus: Integer
        # @param CreatedOn: 流程创建的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: Integer
        # @param FlowMessage: 拒签或者取消的原因描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMessage: String

        attr_accessor :FlowId, :FlowName, :FlowDescription, :FlowType, :FlowStatus, :CreatedOn, :FlowMessage
        
        def initialize(flowid=nil, flowname=nil, flowdescription=nil, flowtype=nil, flowstatus=nil, createdon=nil, flowmessage=nil)
          @FlowId = flowid
          @FlowName = flowname
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @CreatedOn = createdon
          @FlowMessage = flowmessage
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @FlowName = params['FlowName']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @FlowStatus = params['FlowStatus']
          @CreatedOn = params['CreatedOn']
          @FlowMessage = params['FlowMessage']
        end
      end

      # 创建流程的签署方信息
      class FlowCreateApprover < TencentCloud::Common::AbstractModel
        # @param ApproverType: 参与者类型：
        # 0：企业
        # 1：个人
        # 3：企业静默签署
        # 注：类型为3（企业静默签署）时，此接口会默认完成该签署方的签署。静默签署仅进行盖章操作，不能自动签名。
        # @type ApproverType: Integer
        # @param OrganizationName: 如果签署方为企业，需要填入企业全称
        # @type OrganizationName: String
        # @param ApproverName: 签署方经办人姓名
        # @type ApproverName: String
        # @param ApproverMobile: 签署方经办人手机号码
        # @type ApproverMobile: String
        # @param ApproverIdCardType: 签署方经办人证件类型ID_CARD 身份证
        # HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)
        # @type ApproverIdCardType: String
        # @param ApproverIdCardNumber: 签署方经办人证件号码
        # @type ApproverIdCardNumber: String
        # @param RecipientId: 签署方经办人在模板中的角色ID
        # @type RecipientId: String
        # @param VerifyChannel: 签署意愿确认渠道,WEIXINAPP:人脸识别
        # @type VerifyChannel: Array
        # @param NotifyType: 是否发送短信，sms--短信通知，none--不通知，默认为sms
        # @type NotifyType: String
        # @param IsFullText: 签署前置条件：是否需要阅读全文，默认为不需要
        # @type IsFullText: Boolean
        # @param PreReadTime: 签署前置条件：阅读时长限制，默认为不需要
        # @type PreReadTime: Integer
        # @param UserId: 签署方经办人的用户ID,和签署方经办人姓名+手机号+证件必须有一个。非企微场景不使用此字段
        # @type UserId: String
        # @param Required: 当前只支持true，默认为true
        # @type Required: Boolean
        # @param ApproverSource: 签署人用户来源,企微侧用户请传入：WEWORKAPP
        # @type ApproverSource: String
        # @param CustomApproverTag: 客户自定义签署人标识，64位长度，保证唯一。非企微场景不使用此字段
        # @type CustomApproverTag: String
        # @param RegisterInfo: 快速注册相关信息，目前暂未开放！
        # @type RegisterInfo: :class:`Tencentcloud::Ess.v20201111.models.RegisterInfo`

        attr_accessor :ApproverType, :OrganizationName, :ApproverName, :ApproverMobile, :ApproverIdCardType, :ApproverIdCardNumber, :RecipientId, :VerifyChannel, :NotifyType, :IsFullText, :PreReadTime, :UserId, :Required, :ApproverSource, :CustomApproverTag, :RegisterInfo
        
        def initialize(approvertype=nil, organizationname=nil, approvername=nil, approvermobile=nil, approveridcardtype=nil, approveridcardnumber=nil, recipientid=nil, verifychannel=nil, notifytype=nil, isfulltext=nil, prereadtime=nil, userid=nil, required=nil, approversource=nil, customapprovertag=nil, registerinfo=nil)
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
        end
      end

      # 此结构体(FlowDetailInfo)描述的是合同(流程)的详细信息
      class FlowDetailInfo < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同(流程)的Id
        # @type FlowId: String
        # @param FlowName: 合同(流程)的名字
        # @type FlowName: String
        # @param FlowType: 合同(流程)的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowType: String
        # @param FlowStatus: 合同(流程)的状态
        # 1：未签署
        # 2：部分签署
        # 3：已退回
        # 4：完成签署
        # 5：已过期
        # 6：已取消
        # @type FlowStatus: Integer
        # @param FlowMessage: 合同(流程)的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMessage: String
        # @param FlowDescription: 流程的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowDescription: String
        # @param CreatedOn: 合同(流程)的创建时间戳
        # @type CreatedOn: Integer
        # @param FlowApproverInfos: 合同(流程)的签署人数组
        # @type FlowApproverInfos: Array

        attr_accessor :FlowId, :FlowName, :FlowType, :FlowStatus, :FlowMessage, :FlowDescription, :CreatedOn, :FlowApproverInfos
        
        def initialize(flowid=nil, flowname=nil, flowtype=nil, flowstatus=nil, flowmessage=nil, flowdescription=nil, createdon=nil, flowapproverinfos=nil)
          @FlowId = flowid
          @FlowName = flowname
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @FlowMessage = flowmessage
          @FlowDescription = flowdescription
          @CreatedOn = createdon
          @FlowApproverInfos = flowapproverinfos
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
        end
      end

      # 电子文档的控件填充信息
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
        # @param TaskId: 任务Id，通过CreateConvertTaskApi得到
        # @type TaskId: String
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 应用号信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Ess.v20201111.models.OrganizationInfo`

        attr_accessor :TaskId, :Operator, :Agent, :Organization
        
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

      # 机构信息
      class OrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 机构在平台的编号
        # @type OrganizationId: String
        # @param Channel: 用户渠道
        # @type Channel: String
        # @param OrganizationOpenId: 用户在渠道的机构编号
        # @type OrganizationOpenId: String
        # @param ClientIp: 用户真实的IP
        # @type ClientIp: String
        # @param ProxyIp: 机构的代理IP
        # @type ProxyIp: String

        attr_accessor :OrganizationId, :Channel, :OrganizationOpenId, :ClientIp, :ProxyIp
        
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

      # 签署参与者信息
      class Recipient < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署参与者ID
        # @type RecipientId: String
        # @param RecipientType: 参与者类型（ENTERPRISE/INDIVIDUAL）
        # @type RecipientType: String
        # @param Description: 描述信息
        # @type Description: String
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param RequireValidation: 是否需要验证，默认为false
        # @type RequireValidation: Boolean
        # @param RequireSign: 是否需要签署，默认为true
        # @type RequireSign: Boolean
        # @param RoutingOrder: 添加序列
        # @type RoutingOrder: Integer
        # @param RequireDelivery: 是否需要发送，默认为true
        # @type RequireDelivery: Boolean
        # @param Email: 邮箱地址
        # @type Email: String
        # @param Mobile: 电话号码
        # @type Mobile: String
        # @param UserId: 关联的用户ID
        # @type UserId: String
        # @param DeliveryMethod: 发送方式（EMAIL/MOBILE）
        # @type DeliveryMethod: String
        # @param RecipientExtra: 附属信息
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

      # 发起流程快速注册相关信息
      class RegisterInfo < TencentCloud::Common::AbstractModel
        # @param LegalName: 法人姓名
        # @type LegalName: String
        # @param Uscc: 社会统一信用代码
        # @type Uscc: String

        attr_accessor :LegalName, :Uscc
        
        def initialize(legalname=nil, uscc=nil)
          @LegalName = legalname
          @Uscc = uscc
        end

        def deserialize(params)
          @LegalName = params['LegalName']
          @Uscc = params['Uscc']
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

      # StartFlow请求参数结构体
      class StartFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息，userId 必填
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 签署流程编号，由CreateFlow接口返回
        # @type FlowId: String
        # @param ClientToken: 客户端Token，保持接口幂等性,最大长度64个字符
        # @type ClientToken: String
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`

        attr_accessor :Operator, :FlowId, :ClientToken, :Agent
        
        def initialize(operator=nil, flowid=nil, clienttoken=nil, agent=nil)
          @Operator = operator
          @FlowId = flowid
          @ClientToken = clienttoken
          @Agent = agent
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
        end
      end

      # StartFlow返回参数结构体
      class StartFlowResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回描述，START-发起成功， REVIEW-提交审核成功，EXECUTING-已提交发起任务
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

      # 二期接口返回的模板的信息结构
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名字
        # @type TemplateName: String
        # @param Description: 模板描述信息
        # @type Description: String
        # @param DocumentResourceIds: 模板关联的资源IDs
        # @type DocumentResourceIds: Array
        # @param FileInfos: 返回的文件信息结构
        # @type FileInfos: Array
        # @param AttachmentResourceIds: 附件关联的资源ID是
        # @type AttachmentResourceIds: Array
        # @param SignOrder: 签署顺序
        # @type SignOrder: Array
        # @param Recipients: 签署参与者的信息
        # @type Recipients: Array
        # @param Components: 模板信息结构
        # @type Components: Array
        # @param SignComponents: 签署区模板信息结构
        # @type SignComponents: Array
        # @param Status: 模板状态(-1:不可用；0:草稿态；1:正式态)
        # @type Status: Integer
        # @param Creator: 模板的创建人
        # @type Creator: String
        # @param CreatedOn: 模板创建的时间戳（精确到秒）
        # @type CreatedOn: Integer
        # @param Promoter: 发起人角色信息
        # @type Promoter: :class:`Tencentcloud::Ess.v20201111.models.Recipient`

        attr_accessor :TemplateId, :TemplateName, :Description, :DocumentResourceIds, :FileInfos, :AttachmentResourceIds, :SignOrder, :Recipients, :Components, :SignComponents, :Status, :Creator, :CreatedOn, :Promoter
        
        def initialize(templateid=nil, templatename=nil, description=nil, documentresourceids=nil, fileinfos=nil, attachmentresourceids=nil, signorder=nil, recipients=nil, components=nil, signcomponents=nil, status=nil, creator=nil, createdon=nil, promoter=nil)
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
        # @param BusinessType: 文件对应业务类型，用于区分文件存储路径：
        # 1. TEMPLATE - 模板； 文件类型：.pdf .doc .docx .html
        # 2. DOCUMENT - 签署过程及签署后的合同文档/图片控件 文件类型：.pdf/.jpg/.png
        # 3. SEAL - 印章； 文件类型：.jpg/.jpeg/.png
        # @type BusinessType: String
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Ess.v20201111.models.Caller`
        # @param FileInfos: 上传文件内容数组，最多支持20个文件
        # @type FileInfos: Array
        # @param FileUrls: 不再使用，上传文件链接数组，最多支持20个URL
        # @type FileUrls: String
        # @param CoverRect: 此参数只对 PDF 文件有效。是否将pdf灰色矩阵置白
        # true--是，处理置白
        # false--否，不处理
        # @type CoverRect: Boolean
        # @param FileType: 文件类型， 默认通过文件内容解析得到文件类型，客户可以显示的说明上传文件的类型。
        # 如：PDF 表示上传的文件 xxx.pdf的文件类型是 PDF
        # @type FileType: String
        # @param CustomIds: 用户自定义ID数组，与上传文件一一对应
        # @type CustomIds: Array

        attr_accessor :BusinessType, :Caller, :FileInfos, :FileUrls, :CoverRect, :FileType, :CustomIds
        
        def initialize(businesstype=nil, caller=nil, fileinfos=nil, fileurls=nil, coverrect=nil, filetype=nil, customids=nil)
          @BusinessType = businesstype
          @Caller = caller
          @FileInfos = fileinfos
          @FileUrls = fileurls
          @CoverRect = coverrect
          @FileType = filetype
          @CustomIds = customids
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
          @FileUrls = params['FileUrls']
          @CoverRect = params['CoverRect']
          @FileType = params['FileType']
          @CustomIds = params['CustomIds']
        end
      end

      # UploadFiles返回参数结构体
      class UploadFilesResponse < TencentCloud::Common::AbstractModel
        # @param FileIds: 文件id数组
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
        # @param Channel: 用户的来源渠道
        # @type Channel: String
        # @param OpenId: 用户在渠道的编号
        # @type OpenId: String
        # @param ClientIp: 用户真实IP
        # @type ClientIp: String
        # @param ProxyIp: 用户代理IP
        # @type ProxyIp: String

        attr_accessor :UserId, :Channel, :OpenId, :ClientIp, :ProxyIp
        
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

    end
  end
end

