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
        # 注：类型为3（企业静默签署）时，此接口会默认完成该签署方的签署。
        # @type ApproverType: Integer
        # @param ApproverName: 本环节需要操作人的名字
        # @type ApproverName: String
        # @param ApproverMobile: 本环节需要操作人的手机号
        # @type ApproverMobile: String
        # @param SignComponents: 本环节操作人签署控件配置，为企业静默签署时，只允许类型为SIGN_SEAL（印章）和SIGN_DATE（日期）控件，并且传入印章编号。
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

        attr_accessor :ApproverType, :ApproverName, :ApproverMobile, :SignComponents, :OrganizationName, :ApproverIdCardNumber, :ApproverIdCardType, :NotifyType, :ApproverRole, :VerifyChannel, :PreReadTime
        
        def initialize(approvertype=nil, approvername=nil, approvermobile=nil, signcomponents=nil, organizationname=nil, approveridcardnumber=nil, approveridcardtype=nil, notifytype=nil, approverrole=nil, verifychannel=nil, prereadtime=nil)
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
        end
      end

      # CancelFlow请求参数结构体
      class CancelFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 操作用户id
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 流程id
        # @type FlowId: String
        # @param CancelMessage: 撤销原因
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
        # @param ComponentType: 如果是 Component 控件类型，则可选类型为：
        # TEXT - 内容文本控件
        # DATE - 内容日期控件
        # SELECT - 勾选框控件
        # 如果是 SignComponent 控件类型，则可选类型为：
        # SIGN_SEAL - 签署印章控件
        # SIGN_DATE - 签署日期控件
        # SIGN_SIGNATURE - 手写签名控件
        # @type ComponentType: String
        # @param ComponentWidth: 参数控件宽度，单位px
        # @type ComponentWidth: Float
        # @param ComponentHeight: 参数控件高度，单位px
        # @type ComponentHeight: Float
        # @param ComponentPage: 参数控件所在页码，取值为：1-N
        # @type ComponentPage: Integer
        # @param ComponentPosX: 参数控件X位置，单位px
        # @type ComponentPosX: Float
        # @param ComponentPosY: 参数控件Y位置，单位px
        # @type ComponentPosY: Float
        # @param FileIndex: 控件所属文件的序号（模板中的resourceId排列序号，取值为：0-N）
        # @type FileIndex: Integer
        # @param ComponentId: 控件编号
        # @type ComponentId: String
        # @param ComponentName: 控件名称
        # @type ComponentName: String
        # @param ComponentRequired: 是否必选，默认为false
        # @type ComponentRequired: Boolean
        # @param ComponentExtra: 参数控件样式
        # @type ComponentExtra: String
        # @param ComponentRecipientId: 控件关联的签署人ID
        # @type ComponentRecipientId: String
        # @param ComponentValue: 控件所填写的内容
        # @type ComponentValue: String
        # @param IsFormType: 是否是表单域类型，默认不存在
        # @type IsFormType: Boolean
        # @param GenerateMode: NORMAL 正常模式，使用坐标制定签署控件位置
        # FIELD 表单域，需使用ComponentName指定表单域名称
        # KEYWORD 关键字，使用ComponentId指定关键字
        # @type GenerateMode: String
        # @param ComponentDateFontSize: 日期控件类型字号
        # @type ComponentDateFontSize: Integer

        attr_accessor :ComponentType, :ComponentWidth, :ComponentHeight, :ComponentPage, :ComponentPosX, :ComponentPosY, :FileIndex, :ComponentId, :ComponentName, :ComponentRequired, :ComponentExtra, :ComponentRecipientId, :ComponentValue, :IsFormType, :GenerateMode, :ComponentDateFontSize
        
        def initialize(componenttype=nil, componentwidth=nil, componentheight=nil, componentpage=nil, componentposx=nil, componentposy=nil, fileindex=nil, componentid=nil, componentname=nil, componentrequired=nil, componentextra=nil, componentrecipientid=nil, componentvalue=nil, isformtype=nil, generatemode=nil, componentdatefontsize=nil)
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
        end
      end

      # CreateDocument请求参数结构体
      class CreateDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 无
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param TemplateId: 用户上传的模版ID
        # @type TemplateId: String
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param FileNames: 文件名列表
        # @type FileNames: Array
        # @param FormFields: 内容控件信息数组
        # @type FormFields: Array
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ClientToken: 客户端Token，保持接口幂等性
        # @type ClientToken: String
        # @param NeedPreview: 是否需要生成预览文件 默认不生成
        # @type NeedPreview: Boolean

        attr_accessor :Operator, :TemplateId, :FlowId, :FileNames, :FormFields, :Agent, :ClientToken, :NeedPreview
        
        def initialize(operator=nil, templateid=nil, flowid=nil, filenames=nil, formfields=nil, agent=nil, clienttoken=nil, needpreview=nil)
          @Operator = operator
          @TemplateId = templateid
          @FlowId = flowid
          @FileNames = filenames
          @FormFields = formfields
          @Agent = agent
          @ClientToken = clienttoken
          @NeedPreview = needpreview
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
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ClientToken = params['ClientToken']
          @NeedPreview = params['NeedPreview']
        end
      end

      # CreateDocument返回参数结构体
      class CreateDocumentResponse < TencentCloud::Common::AbstractModel
        # @param DocumentId: 返回的电子文档ID
        # @type DocumentId: String
        # @param PreviewFileUrl: 返回合同文件的预览地址 5分钟内有效。仅当NeedPreview为true 时返回
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

      # CreateFlowByFiles请求参数结构体
      class CreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 调用方用户信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 流程名称
        # @type FlowName: String
        # @param FileIds: 签署pdf文件的资源编号列表
        # @type FileIds: Array
        # @param Approvers: 签署参与者信息
        # @type Approvers: Array
        # @param FlowDescription: 流程描述
        # @type FlowDescription: String
        # @param Unordered: 发送类型：
        # true：无序签
        # false：有序签
        # 注：默认为false（有序签）
        # @type Unordered: Boolean
        # @param FlowType: 流程的类型
        # @type FlowType: String
        # @param Deadline: 流程的签署截止时间
        # @type Deadline: Integer
        # @param Agent: 应用号信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Components: 经办人内容控件配置。可选类型为：
        # TEXT - 内容文本控件
        # MULTI_LINE_TEXT - 多行文本控件
        # 注：默认字体大小为 字号12
        # @type Components: Array
        # @param CcInfos: 被抄送人的信息列表
        # @type CcInfos: Array
        # @param NeedPreview: 是否需要预览，true：预览模式，false：非预览（默认）
        # @type NeedPreview: Boolean

        attr_accessor :Operator, :FlowName, :FileIds, :Approvers, :FlowDescription, :Unordered, :FlowType, :Deadline, :Agent, :Components, :CcInfos, :NeedPreview
        
        def initialize(operator=nil, flowname=nil, fileids=nil, approvers=nil, flowdescription=nil, unordered=nil, flowtype=nil, deadline=nil, agent=nil, components=nil, ccinfos=nil, needpreview=nil)
          @Operator = operator
          @FlowName = flowname
          @FileIds = fileids
          @Approvers = approvers
          @FlowDescription = flowdescription
          @Unordered = unordered
          @FlowType = flowtype
          @Deadline = deadline
          @Agent = agent
          @Components = components
          @CcInfos = ccinfos
          @NeedPreview = needpreview
        end

        def deserialize(params)
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowName = params['FlowName']
          @FileIds = params['FileIds']
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              approverinfo_tmp = ApproverInfo.new
              approverinfo_tmp.deserialize(i)
              @Approvers << approverinfo_tmp
            end
          end
          @FlowDescription = params['FlowDescription']
          @Unordered = params['Unordered']
          @FlowType = params['FlowType']
          @Deadline = params['Deadline']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
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
        end
      end

      # CreateFlowByFiles返回参数结构体
      class CreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param PreviewUrl: 合同预览链接
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

      # CreateFlow请求参数结构体
      class CreateFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowName: 流程的名字, 长度不能超过200，中文字母数字下划线
        # @type FlowName: String
        # @param Approvers: 参与者信息
        # @type Approvers: Array
        # @param FlowDescription: 流程的描述, 长度不能超过1000
        # @type FlowDescription: String
        # @param Unordered: 发送类型(true为无序签,false为顺序签)
        # @type Unordered: Boolean
        # @param FlowType: 流程的种类(如销售合同/入职合同等)
        # @type FlowType: String
        # @param DeadLine: 过期时间戳,如果是0则为不过期
        # @type DeadLine: Integer
        # @param CallbackUrl: 执行结果的回调URL(需要以http://或者https://)开头
        # @type CallbackUrl: String
        # @param UserData: 用户自定义字段(需进行base64 encode),回调的时候会进行透传, 长度需要小于20480
        # @type UserData: String
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ClientToken: 客户端Token，保持接口幂等性
        # @type ClientToken: String

        attr_accessor :Operator, :FlowName, :Approvers, :FlowDescription, :Unordered, :FlowType, :DeadLine, :CallbackUrl, :UserData, :Agent, :ClientToken
        
        def initialize(operator=nil, flowname=nil, approvers=nil, flowdescription=nil, unordered=nil, flowtype=nil, deadline=nil, callbackurl=nil, userdata=nil, agent=nil, clienttoken=nil)
          @Operator = operator
          @FlowName = flowname
          @Approvers = approvers
          @FlowDescription = flowdescription
          @Unordered = unordered
          @FlowType = flowtype
          @DeadLine = deadline
          @CallbackUrl = callbackurl
          @UserData = userdata
          @Agent = agent
          @ClientToken = clienttoken
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
          @Unordered = params['Unordered']
          @FlowType = params['FlowType']
          @DeadLine = params['DeadLine']
          @CallbackUrl = params['CallbackUrl']
          @UserData = params['UserData']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ClientToken = params['ClientToken']
        end
      end

      # CreateFlow返回参数结构体
      class CreateFlowResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程编号
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
        # @param Operator: 调用方用户信息，参考通用结构
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param Agent: 调用方渠道信息，参考通用结构
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param Name: 姓名
        # @type Name: String
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param PathType: 跳转页面 1: 小程序合同详情 2: 小程序合同列表页 0: 不传, 默认主页
        # @type PathType: Integer
        # @param FlowId: 合同详情 id (PathType=1时必传)
        # @type FlowId: String

        attr_accessor :Operator, :Agent, :Name, :Mobile, :PathType, :FlowId
        
        def initialize(operator=nil, agent=nil, name=nil, mobile=nil, pathtype=nil, flowid=nil)
          @Operator = operator
          @Agent = agent
          @Name = name
          @Mobile = mobile
          @PathType = pathtype
          @FlowId = flowid
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
          @Name = params['Name']
          @Mobile = params['Mobile']
          @PathType = params['PathType']
          @FlowId = params['FlowId']
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
        # @param Operator: 操作者信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param BusinessIds: 业务编号的数组，如模板编号、文档编号、印章编号
        # @type BusinessIds: Array
        # @param FileType: 文件类型，"JPG", "PDF","ZIP"等
        # @type FileType: String
        # @param FileName: 下载后的文件命名，只有fileType为zip的时候生效
        # @type FileName: String
        # @param Offset: 指定资源起始偏移量
        # @type Offset: Integer
        # @param Limit: 指定资源数量，查询全部资源则传入-1
        # @type Limit: Integer
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param UrlTtl: 下载url过期时间，0: 按默认值5分钟，允许范围：1s~24*60*60s(1天)
        # @type UrlTtl: Integer
        # @param CcToken: 流程校验发送邮件权限
        # @type CcToken: String
        # @param Scene: 场景
        # @type Scene: String

        attr_accessor :BusinessType, :Operator, :BusinessIds, :FileType, :FileName, :Offset, :Limit, :Agent, :UrlTtl, :CcToken, :Scene
        
        def initialize(businesstype=nil, operator=nil, businessids=nil, filetype=nil, filename=nil, offset=nil, limit=nil, agent=nil, urlttl=nil, cctoken=nil, scene=nil)
          @BusinessType = businesstype
          @Operator = operator
          @BusinessIds = businessids
          @FileType = filetype
          @FileName = filename
          @Offset = offset
          @Limit = limit
          @Agent = agent
          @UrlTtl = urlttl
          @CcToken = cctoken
          @Scene = scene
        end

        def deserialize(params)
          @BusinessType = params['BusinessType']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @BusinessIds = params['BusinessIds']
          @FileType = params['FileType']
          @FileName = params['FileName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @UrlTtl = params['UrlTtl']
          @CcToken = params['CcToken']
          @Scene = params['Scene']
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
        # @param Operator: 操作人信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowIds: 需要查询的流程ID列表
        # @type FlowIds: Array
        # @param Agent: 代理商信息
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

      # DescribeThirdPartyAuthCode请求参数结构体
      class DescribeThirdPartyAuthCodeRequest < TencentCloud::Common::AbstractModel
        # @param AuthCode: AuthCode 值
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
        # - `1` 未签署
        # - `2`  部分签署
        # - `3`  已退回
        # - `4`  完成签署
        # - `5`  已过期
        # - `6`  已取消
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
        # 注：类型为3（企业静默签署）时，此接口会默认完成该签署方的签署。
        # @type ApproverType: Integer
        # @param OrganizationName: 如果签署方为企业，需要填入企业全称
        # @type OrganizationName: String
        # @param Required: 是否需要签署
        # - `false`: 不需要签署
        # -  `true`:  需要签署
        # @type Required: Boolean
        # @param ApproverName: 签署方经办人姓名
        # @type ApproverName: String
        # @param ApproverMobile: 签署方经办人手机号码
        # @type ApproverMobile: String
        # @param ApproverIdCardNumber: 签署方经办人证件号码
        # @type ApproverIdCardNumber: String
        # @param ApproverIdCardType: 签署方经办人证件类型ID_CARD 身份证
        # HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)
        # @type ApproverIdCardType: String
        # @param RecipientId: 签署方经办人在模板中的角色ID
        # @type RecipientId: String
        # @param UserId: 签署方经办人的用户ID,和签署方经办人姓名+手机号+证件必须有一个
        # @type UserId: String
        # @param IsFullText: 签署前置条件：是否需要阅读全文，默认为不需要
        # @type IsFullText: Boolean
        # @param PreReadTime: 签署前置条件：阅读时长限制，默认为不需要
        # @type PreReadTime: Integer
        # @param NotifyType: 是否发送短信，sms--短信通知，none--不通知，默认为sms
        # @type NotifyType: String
        # @param VerifyChannel: 签署意愿确认渠道,WEIXINAPP:人脸识别
        # @type VerifyChannel: Array

        attr_accessor :ApproverType, :OrganizationName, :Required, :ApproverName, :ApproverMobile, :ApproverIdCardNumber, :ApproverIdCardType, :RecipientId, :UserId, :IsFullText, :PreReadTime, :NotifyType, :VerifyChannel
        
        def initialize(approvertype=nil, organizationname=nil, required=nil, approvername=nil, approvermobile=nil, approveridcardnumber=nil, approveridcardtype=nil, recipientid=nil, userid=nil, isfulltext=nil, prereadtime=nil, notifytype=nil, verifychannel=nil)
          @ApproverType = approvertype
          @OrganizationName = organizationname
          @Required = required
          @ApproverName = approvername
          @ApproverMobile = approvermobile
          @ApproverIdCardNumber = approveridcardnumber
          @ApproverIdCardType = approveridcardtype
          @RecipientId = recipientid
          @UserId = userid
          @IsFullText = isfulltext
          @PreReadTime = prereadtime
          @NotifyType = notifytype
          @VerifyChannel = verifychannel
        end

        def deserialize(params)
          @ApproverType = params['ApproverType']
          @OrganizationName = params['OrganizationName']
          @Required = params['Required']
          @ApproverName = params['ApproverName']
          @ApproverMobile = params['ApproverMobile']
          @ApproverIdCardNumber = params['ApproverIdCardNumber']
          @ApproverIdCardType = params['ApproverIdCardType']
          @RecipientId = params['RecipientId']
          @UserId = params['UserId']
          @IsFullText = params['IsFullText']
          @PreReadTime = params['PreReadTime']
          @NotifyType = params['NotifyType']
          @VerifyChannel = params['VerifyChannel']
        end
      end

      # 电子文档的控件填充信息
      class FormField < TencentCloud::Common::AbstractModel
        # @param ComponentValue: 控件填充value
        # @type ComponentValue: String
        # @param ComponentId: 控件id
        # @type ComponentId: String
        # @param ComponentName: 控件名字
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

      # StartFlow请求参数结构体
      class StartFlowRequest < TencentCloud::Common::AbstractModel
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Ess.v20201111.models.UserInfo`
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param Agent: 应用相关信息
        # @type Agent: :class:`Tencentcloud::Ess.v20201111.models.Agent`
        # @param ClientToken: 客户端Token，保持接口幂等性
        # @type ClientToken: String

        attr_accessor :Operator, :FlowId, :Agent, :ClientToken
        
        def initialize(operator=nil, flowid=nil, agent=nil, clienttoken=nil)
          @Operator = operator
          @FlowId = flowid
          @Agent = agent
          @ClientToken = clienttoken
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
          @ClientToken = params['ClientToken']
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

