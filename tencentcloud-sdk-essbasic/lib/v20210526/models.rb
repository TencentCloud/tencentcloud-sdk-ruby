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
        # @param AppId: 腾讯电子签颁发给渠道的应用ID，32位字符串
        # @type AppId: String
        # @param ProxyOrganizationId: 腾讯电子签颁发给渠道侧合作企业的企业ID
        # @type ProxyOrganizationId: String
        # @param ProxyAppId: 腾讯电子签颁发给渠道侧合作企业的应用ID
        # @type ProxyAppId: String
        # @param ProxyOperator: 渠道/平台合作企业经办人（操作员）
        # @type ProxyOperator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ProxyOrganizationOpenId: 渠道/平台合作企业的企业ID
        # @type ProxyOrganizationOpenId: String

        attr_accessor :AppId, :ProxyOrganizationId, :ProxyAppId, :ProxyOperator, :ProxyOrganizationOpenId
        
        def initialize(appid=nil, proxyorganizationid=nil, proxyappid=nil, proxyoperator=nil, proxyorganizationopenid=nil)
          @AppId = appid
          @ProxyOrganizationId = proxyorganizationid
          @ProxyAppId = proxyappid
          @ProxyOperator = proxyoperator
          @ProxyOrganizationOpenId = proxyorganizationopenid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProxyOrganizationId = params['ProxyOrganizationId']
          @ProxyAppId = params['ProxyAppId']
          unless params['ProxyOperator'].nil?
            @ProxyOperator = UserInfo.new
            @ProxyOperator.deserialize(params['ProxyOperator'])
          end
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
        end
      end

      # 授权出错信息
      class AuthFailMessage < TencentCloud::Common::AbstractModel
        # @param ProxyOrganizationOpenId: 合作企业Id
        # @type ProxyOrganizationOpenId: String
        # @param Message: 出错信息
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

      # ChannelCancelMultiFlowSignQRCode请求参数结构体
      class ChannelCancelMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param QrCodeId: 二维码id
        # @type QrCodeId: String
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :QrCodeId, :Operator
        
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

      # ChannelCreateFlowByFiles请求参数结构体
      class ChannelCreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param FileIds: 签署文件资源Id列表，目前仅支持单个文件
        # @type FileIds: Array
        # @param FlowName: 流程名称，长度不超过200个字符
        # @type FlowName: String
        # @param Deadline: 流程截止时间，十位数时间戳，最大值为33162419560，即3020年
        # @type Deadline: Integer
        # @param FlowDescription: 流程的描述，长度不超过1000个字符
        # @type FlowDescription: String
        # @param FlowType: 流程的类型，长度不超过255个字符
        # @type FlowType: String
        # @param CallbackUrl: 流程回调地址，长度不超过255个字符
        # @type CallbackUrl: String
        # @param FlowApprovers: 流程签约方列表，最多不超过5个参与方
        # @type FlowApprovers: Array
        # @param Unordered: 合同签署顺序类型(无序签,顺序签)，默认为false，即有序签署
        # @type Unordered: Boolean
        # @param Components: 签署文件中的控件，如：填写控件等
        # @type Components: Array

        attr_accessor :Agent, :Operator, :FileIds, :FlowName, :Deadline, :FlowDescription, :FlowType, :CallbackUrl, :FlowApprovers, :Unordered, :Components
        
        def initialize(agent=nil, operator=nil, fileids=nil, flowname=nil, deadline=nil, flowdescription=nil, flowtype=nil, callbackurl=nil, flowapprovers=nil, unordered=nil, components=nil)
          @Agent = agent
          @Operator = operator
          @FileIds = fileids
          @FlowName = flowname
          @Deadline = deadline
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @CallbackUrl = callbackurl
          @FlowApprovers = flowapprovers
          @Unordered = unordered
          @Components = components
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
          @FileIds = params['FileIds']
          @FlowName = params['FlowName']
          @Deadline = params['Deadline']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @CallbackUrl = params['CallbackUrl']
          unless params['FlowApprovers'].nil?
            @FlowApprovers = []
            params['FlowApprovers'].each do |i|
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @FlowApprovers << flowapproverinfo_tmp
            end
          end
          @Unordered = params['Unordered']
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

      # ChannelCreateFlowByFiles返回参数结构体
      class ChannelCreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 合同流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ChannelCreateMultiFlowSignQRCode请求参数结构体
      class ChannelCreateMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 模版ID
        # @type TemplateId: String
        # @param FlowName: 合同名称
        # @type FlowName: String
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param FlowEffectiveDay: 合同有效天数 默认7天 最高设置不超过30天
        # @type FlowEffectiveDay: Integer
        # @param QrEffectiveDay: 二维码有效天数 默认7天 最高设置不超过90天
        # @type QrEffectiveDay: Integer
        # @param MaxFlowNum: 最大合同份数，默认5份 超过此上限 二维码自动失效
        # @type MaxFlowNum: Integer
        # @param CallbackUrl: 回调地址
        # @type CallbackUrl: String

        attr_accessor :Agent, :TemplateId, :FlowName, :Operator, :FlowEffectiveDay, :QrEffectiveDay, :MaxFlowNum, :CallbackUrl
        
        def initialize(agent=nil, templateid=nil, flowname=nil, operator=nil, floweffectiveday=nil, qreffectiveday=nil, maxflownum=nil, callbackurl=nil)
          @Agent = agent
          @TemplateId = templateid
          @FlowName = flowname
          @Operator = operator
          @FlowEffectiveDay = floweffectiveday
          @QrEffectiveDay = qreffectiveday
          @MaxFlowNum = maxflownum
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TemplateId = params['TemplateId']
          @FlowName = params['FlowName']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @FlowEffectiveDay = params['FlowEffectiveDay']
          @QrEffectiveDay = params['QrEffectiveDay']
          @MaxFlowNum = params['MaxFlowNum']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # ChannelCreateMultiFlowSignQRCode返回参数结构体
      class ChannelCreateMultiFlowSignQRCodeResponse < TencentCloud::Common::AbstractModel
        # @param QrCode: 签署二维码对象
        # @type QrCode: :class:`Tencentcloud::Essbasic.v20210526.models.SignQrCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QrCode, :RequestId
        
        def initialize(qrcode=nil, requestid=nil)
          @QrCode = qrcode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QrCode'].nil?
            @QrCode = SignQrCode.new
            @QrCode.deserialize(params['QrCode'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 此结构体 (Component) 用于描述控件属性。
      class Component < TencentCloud::Common::AbstractModel
        # @param ComponentId: 控件编号

        # 注：
        # 当GenerateMode=3时，通过"^"来决定是否使用关键字整词匹配能力。
        # 例：
        # 当GenerateMode=3时，如果传入关键字"^甲方签署^"，则会在PDF文件中有且仅有"甲方签署"关键字的地方进行对应操作。
        # 如传入的关键字为"甲方签署"，则PDF文件中每个出现关键字的位置都会执行相应操作。

        # 创建控件时，此值为空
        # 查询时返回完整结构
        # @type ComponentId: String
        # @param ComponentType: 如果是Component控件类型，则可选的字段为：
        # TEXT - 普通文本控件；
        # DATE - 普通日期控件；跟TEXT相比会有校验逻辑
        # 如果是SignComponent控件类型，则可选的字段为
        # SIGN_SEAL - 签署印章控件；
        # SIGN_DATE - 签署日期控件；
        # SIGN_SIGNATURE - 用户签名控件；
        # SIGN_PERSONAL_SEAL - 个人签署印章控件；

        # 表单域的控件不能作为印章和签名控件
        # @type ComponentType: String
        # @param ComponentName: 控件简称
        # @type ComponentName: String
        # @param ComponentRequired: 定义控件是否为必填项，默认为false
        # @type ComponentRequired: Boolean
        # @param FileIndex: 控件所属文件的序号 (文档中文件的排列序号)
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
        # @param ComponentPage: 参数控件所在页码
        # @type ComponentPage: Integer
        # @param ComponentPosX: 参数控件X位置，单位px
        # @type ComponentPosX: Float
        # @param ComponentPosY: 参数控件Y位置，单位px
        # @type ComponentPosY: Float
        # @param ComponentExtra: 参数控件样式，json格式表述
        # 不同类型的控件会有部分非通用参数
        # TEXT控件可以指定字体
        # 例如：{"FontSize":12}
        # @type ComponentExtra: String
        # @param ComponentValue: 印章 ID，传参 DEFAULT_COMPANY_SEAL 表示使用默认印章。
        # 控件填入内容，印章控件里面，如果是手写签名内容为PNG图片格式的base64编码
        # @type ComponentValue: String
        # @param ComponentDateFontSize: 日期签署控件的字号，默认为 12

        # 签署区日期控件会转换成图片格式并带存证，需要通过字体决定图片大小
        # @type ComponentDateFontSize: Integer
        # @param DocumentId: 控件所属文档的Id, 模块相关接口为空值
        # @type DocumentId: String
        # @param ComponentDescription: 控件描述
        # @type ComponentDescription: String
        # @param OffsetX: 指定关键字时横坐标偏移量
        # @type OffsetX: Float
        # @param OffsetY: 指定关键字时纵坐标偏移量
        # @type OffsetY: Float

        attr_accessor :ComponentId, :ComponentType, :ComponentName, :ComponentRequired, :FileIndex, :GenerateMode, :ComponentWidth, :ComponentHeight, :ComponentPage, :ComponentPosX, :ComponentPosY, :ComponentExtra, :ComponentValue, :ComponentDateFontSize, :DocumentId, :ComponentDescription, :OffsetX, :OffsetY
        
        def initialize(componentid=nil, componenttype=nil, componentname=nil, componentrequired=nil, fileindex=nil, generatemode=nil, componentwidth=nil, componentheight=nil, componentpage=nil, componentposx=nil, componentposy=nil, componentextra=nil, componentvalue=nil, componentdatefontsize=nil, documentid=nil, componentdescription=nil, offsetx=nil, offsety=nil)
          @ComponentId = componentid
          @ComponentType = componenttype
          @ComponentName = componentname
          @ComponentRequired = componentrequired
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
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
          @ComponentType = params['ComponentType']
          @ComponentName = params['ComponentName']
          @ComponentRequired = params['ComponentRequired']
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
        end
      end

      # CreateConsoleLoginUrl请求参数结构体
      class CreateConsoleLoginUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用信息
        # 此接口Agent.ProxyOrganizationOpenId 和 Agent. ProxyOperator.OpenId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 渠道侧合作企业名称
        # @type ProxyOrganizationName: String
        # @param UniformSocialCreditCode: 渠道侧合作企业统一社会信用代码
        # @type UniformSocialCreditCode: String
        # @param ProxyOperatorName: 渠道侧合作企业经办人的姓名
        # @type ProxyOperatorName: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Module: 控制台指定模块，文件/合同管理:"DOCUMENT"，模板管理:"TEMPLATE"，印章管理:"SEAL"，组织架构/人员:"OPERATOR"，空字符串："账号信息"
        # @type Module: String
        # @param ModuleId: 控制台指定模块Id
        # @type ModuleId: String

        attr_accessor :Agent, :ProxyOrganizationName, :UniformSocialCreditCode, :ProxyOperatorName, :Operator, :Module, :ModuleId
        
        def initialize(agent=nil, proxyorganizationname=nil, uniformsocialcreditcode=nil, proxyoperatorname=nil, operator=nil, _module=nil, moduleid=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @ProxyOperatorName = proxyoperatorname
          @Operator = operator
          @Module = _module
          @ModuleId = moduleid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @ProxyOperatorName = params['ProxyOperatorName']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @Module = params['Module']
          @ModuleId = params['ModuleId']
        end
      end

      # CreateConsoleLoginUrl返回参数结构体
      class CreateConsoleLoginUrlResponse < TencentCloud::Common::AbstractModel
        # @param ConsoleUrl: 控制台url，此链接5分钟内有效，且只能访问一次
        # @type ConsoleUrl: String
        # @param IsActivated: 渠道合作企业是否认证开通腾讯电子签。
        # 当渠道合作企业未完成认证开通腾讯电子签,建议先调用同步企业信息(SyncProxyOrganization)和同步经办人信息(SyncProxyOrganizationOperators)接口成功后再跳转到登录页面。
        # @type IsActivated: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsoleUrl, :IsActivated, :RequestId
        
        def initialize(consoleurl=nil, isactivated=nil, requestid=nil)
          @ConsoleUrl = consoleurl
          @IsActivated = isactivated
          @RequestId = requestid
        end

        def deserialize(params)
          @ConsoleUrl = params['ConsoleUrl']
          @IsActivated = params['IsActivated']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowsByTemplates请求参数结构体
      class CreateFlowsByTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 多个合同（流程）信息
        # @type FlowInfos: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param NeedPreview: 是否为预览模式；默认为false，即非预览模式，此时发起合同并返回FlowIds；若为预览模式，则返回PreviewUrls；
        # @type NeedPreview: Boolean

        attr_accessor :Agent, :FlowInfos, :Operator, :NeedPreview
        
        def initialize(agent=nil, flowinfos=nil, operator=nil, needpreview=nil)
          @Agent = agent
          @FlowInfos = flowinfos
          @Operator = operator
          @NeedPreview = needpreview
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
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @NeedPreview = params['NeedPreview']
        end
      end

      # CreateFlowsByTemplates返回参数结构体
      class CreateFlowsByTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param FlowIds: 多个合同ID
        # @type FlowIds: Array
        # @param CustomerData: 渠道的业务信息，限制1024字符
        # @type CustomerData: Array
        # @param ErrorMessages: 创建消息，对应多个合同ID，
        # 成功为“”,创建失败则对应失败消息
        # @type ErrorMessages: Array
        # @param PreviewUrls: 预览模式下返回的预览文件url数组
        # @type PreviewUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowIds, :CustomerData, :ErrorMessages, :PreviewUrls, :RequestId
        
        def initialize(flowids=nil, customerdata=nil, errormessages=nil, previewurls=nil, requestid=nil)
          @FlowIds = flowids
          @CustomerData = customerdata
          @ErrorMessages = errormessages
          @PreviewUrls = previewurls
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          @CustomerData = params['CustomerData']
          @ErrorMessages = params['ErrorMessages']
          @PreviewUrls = params['PreviewUrls']
          @RequestId = params['RequestId']
        end
      end

      # CreateSealByImage请求参数结构体
      class CreateSealByImageRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealName: 印章名称
        # @type SealName: String
        # @param SealImage: 印章图片base64
        # @type SealImage: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :SealName, :SealImage, :Operator
        
        def initialize(agent=nil, sealname=nil, sealimage=nil, operator=nil)
          @Agent = agent
          @SealName = sealname
          @SealImage = sealimage
          @Operator = operator
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
        end
      end

      # CreateSealByImage返回参数结构体
      class CreateSealByImageResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 印章id
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

      # CreateSignUrls请求参数结构体
      class CreateSignUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 所签署合同ID数组
        # @type FlowIds: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Endpoint: 签署链接类型，默认：“WEIXINAPP”-直接跳小程序; “CHANNEL”-跳转H5页面; “APP”-第三方APP或小程序跳转电子签小程序;
        # @type Endpoint: String
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，针对Endpoint为CHANNEL时有效
        # @type JumpUrl: String
        # @param AutoJumpBack: Endpoint为"APP" 类型的签署链接，可以设置此值；支持调用方小程序打开签署链接，在电子签小程序完成签署后自动回跳至调用方小程序
        # @type AutoJumpBack: Boolean

        attr_accessor :Agent, :FlowIds, :Operator, :Endpoint, :JumpUrl, :AutoJumpBack
        
        def initialize(agent=nil, flowids=nil, operator=nil, endpoint=nil, jumpurl=nil, autojumpback=nil)
          @Agent = agent
          @FlowIds = flowids
          @Operator = operator
          @Endpoint = endpoint
          @JumpUrl = jumpurl
          @AutoJumpBack = autojumpback
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
          @Endpoint = params['Endpoint']
          @JumpUrl = params['JumpUrl']
          @AutoJumpBack = params['AutoJumpBack']
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

      # DescribeFlowDetailInfo请求参数结构体
      class DescribeFlowDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 合同(流程)编号数组
        # @type FlowIds: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowIds, :Operator
        
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

      # DescribeFlowDetailInfo返回参数结构体
      class DescribeFlowDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 渠道侧应用号Id
        # @type ApplicationId: String
        # @param ProxyOrganizationOpenId: 渠道侧企业第三方Id
        # @type ProxyOrganizationOpenId: String
        # @param FlowInfo: 合同(流程)的具体详细描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :ProxyOrganizationOpenId, :FlowInfo, :RequestId
        
        def initialize(applicationid=nil, proxyorganizationopenid=nil, flowinfo=nil, requestid=nil)
          @ApplicationId = applicationid
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @FlowInfo = flowinfo
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUrlsByFlows请求参数结构体
      class DescribeResourceUrlsByFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param FlowIds: 查询资源所对应的流程Id
        # @type FlowIds: Array

        attr_accessor :Agent, :Operator, :FlowIds
        
        def initialize(agent=nil, operator=nil, flowids=nil)
          @Agent = agent
          @Operator = operator
          @FlowIds = flowids
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
          @FlowIds = params['FlowIds']
        end
      end

      # DescribeResourceUrlsByFlows返回参数结构体
      class DescribeResourceUrlsByFlowsResponse < TencentCloud::Common::AbstractModel
        # @param FlowResourceUrlInfos: 流程资源对应链接信息
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
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param TemplateId: 模板唯一标识
        # @type TemplateId: String
        # @param ContentType: 查询内容：0-模板列表及详情（默认），1-仅模板列表
        # @type ContentType: Integer
        # @param Limit: 查询个数，默认20，最大100
        # @type Limit: Integer
        # @param Offset: 查询偏移位置，默认0
        # @type Offset: Integer

        attr_accessor :Agent, :Operator, :TemplateId, :ContentType, :Limit, :Offset
        
        def initialize(agent=nil, operator=nil, templateid=nil, contenttype=nil, limit=nil, offset=nil)
          @Agent = agent
          @Operator = operator
          @TemplateId = templateid
          @ContentType = contenttype
          @Limit = limit
          @Offset = offset
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
          @TemplateId = params['TemplateId']
          @ContentType = params['ContentType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTemplates返回参数结构体
      class DescribeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板详情
        # @type Templates: Array
        # @param TotalCount: 查询总数
        # @type TotalCount: Integer
        # @param Limit: 查询数量
        # @type Limit: Integer
        # @param Offset: 查询起始偏移
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
        # @param Agent: 应用信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param StartDate: 开始时间 eg:2021-03-21
        # @type StartDate: String
        # @param EndDate: 结束时间 eg:2021-06-21
        # 开始时间到结束时间的区间长度小于等于90天
        # @type EndDate: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param NeedAggregate: 是否汇总数据，默认不汇总
        # 不汇总:返回在统计区间内渠道下所有企业的每日明细，即每个企业N条数据，N为统计天数
        # 汇总:返回在统计区间内渠道下所有企业的汇总后数据，即每个企业一条数据
        # @type NeedAggregate: Boolean
        # @param Limit: 单次返回的最多条目数量,默认为1000,且不能超过1000
        # @type Limit: Integer
        # @param Offset: 偏移量,默认是0
        # @type Offset: Integer

        attr_accessor :Agent, :StartDate, :EndDate, :Operator, :NeedAggregate, :Limit, :Offset
        
        def initialize(agent=nil, startdate=nil, enddate=nil, operator=nil, needaggregate=nil, limit=nil, offset=nil)
          @Agent = agent
          @StartDate = startdate
          @EndDate = enddate
          @Operator = operator
          @NeedAggregate = needaggregate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @NeedAggregate = params['NeedAggregate']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # 合同（流程）下载信息
      class DownloadFlowInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件夹名称
        # @type FileName: String
        # @param FlowIdList: 合同（流程）的标识数组
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

      # 签署人的流程信息明细
      class FlowApproverDetail < TencentCloud::Common::AbstractModel
        # @param ReceiptId: 模板配置时候的签署人id,与控件绑定
        # @type ReceiptId: String
        # @param ProxyOrganizationOpenId: 渠道侧企业的第三方id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOperatorOpenId: 渠道侧企业操作人的第三方id
        # @type ProxyOperatorOpenId: String
        # @param ProxyOrganizationName: 渠道侧企业名称
        # @type ProxyOrganizationName: String
        # @param Mobile: 签署人手机号
        # @type Mobile: String
        # @param SignOrder: 签署人签署顺序
        # @type SignOrder: Integer
        # @param ApproveName: 签署人姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveName: String
        # @param ApproveStatus: 当前签署人的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: String
        # @param ApproveMessage: 签署人信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMessage: String
        # @param ApproveTime: 签署人签署时间
        # @type ApproveTime: Integer
        # @param ApproveType: 参与者类型 (ORGANIZATION企业/PERSON个人)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveType: String

        attr_accessor :ReceiptId, :ProxyOrganizationOpenId, :ProxyOperatorOpenId, :ProxyOrganizationName, :Mobile, :SignOrder, :ApproveName, :ApproveStatus, :ApproveMessage, :ApproveTime, :ApproveType
        
        def initialize(receiptid=nil, proxyorganizationopenid=nil, proxyoperatoropenid=nil, proxyorganizationname=nil, mobile=nil, signorder=nil, approvename=nil, approvestatus=nil, approvemessage=nil, approvetime=nil, approvetype=nil)
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
        end
      end

      # 创建流程签署人入参
      class FlowApproverInfo < TencentCloud::Common::AbstractModel
        # @param Name: 签署人姓名
        # @type Name: String
        # @param IdCardNumber: 经办人身份证号
        # @type IdCardNumber: String
        # @param Mobile: 签署人手机号，脱敏显示
        # @type Mobile: String
        # @param JumpUrl: 签署完前端跳转的url，暂未使用
        # @type JumpUrl: String
        # @param Deadline: 签署截止时间
        # @type Deadline: Integer
        # @param CallbackUrl: 签署完回调url
        # @type CallbackUrl: String
        # @param ApproverType: 签署人类型，PERSON-个人；ORGANIZATION-企业；
        # ENTERPRISESERVER-企业静默签;
        # 注：ENTERPRISESERVER 类型仅用于使用文件创建流程（ChannelCreateFlowByFiles）接口；并且仅能指定发起方企业签署方为静默签署；
        # @type ApproverType: String
        # @param OpenId: 用户侧第三方id
        # @type OpenId: String
        # @param PreReadTime: 合同的强制预览时间：3~300s，未指定则按合同页数计算
        # @type PreReadTime: Integer
        # @param ComponentLimitType: 个人签署方指定签署控件类型，目前仅支持：OCR_ESIGN(AI智慧手写签名)
        # @type ComponentLimitType: Array
        # @param RecipientId: 流程签署人在模板中对应的签署人Id；在非单方签署、以及非B2C签署的场景下必传，用于指定当前签署方在流程中的位置；
        # @type RecipientId: String
        # @param OrganizationName: 企业签署方工商营业执照上的企业名称，签署方为非发起方企业场景下必传；
        # @type OrganizationName: String
        # @param OrganizationOpenId: 企业签署方在同一渠道下的其他合作企业OpenId，签署方为非发起方企业场景下必传；
        # @type OrganizationOpenId: String
        # @param NotChannelOrganization: 指定签署人非渠道企业下员工，在ApproverType为ORGANIZATION时指定。
        # 默认为false，即签署人位于同一个渠道应用号下；
        # @type NotChannelOrganization: Boolean
        # @param SignComponents: 使用PDF文件直接发起合同时，签署人指定的签署控件
        # @type SignComponents: Array

        attr_accessor :Name, :IdCardNumber, :Mobile, :JumpUrl, :Deadline, :CallbackUrl, :ApproverType, :OpenId, :PreReadTime, :ComponentLimitType, :RecipientId, :OrganizationName, :OrganizationOpenId, :NotChannelOrganization, :SignComponents
        
        def initialize(name=nil, idcardnumber=nil, mobile=nil, jumpurl=nil, deadline=nil, callbackurl=nil, approvertype=nil, openid=nil, prereadtime=nil, componentlimittype=nil, recipientid=nil, organizationname=nil, organizationopenid=nil, notchannelorganization=nil, signcomponents=nil)
          @Name = name
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @JumpUrl = jumpurl
          @Deadline = deadline
          @CallbackUrl = callbackurl
          @ApproverType = approvertype
          @OpenId = openid
          @PreReadTime = prereadtime
          @ComponentLimitType = componentlimittype
          @RecipientId = recipientid
          @OrganizationName = organizationname
          @OrganizationOpenId = organizationopenid
          @NotChannelOrganization = notchannelorganization
          @SignComponents = signcomponents
        end

        def deserialize(params)
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @JumpUrl = params['JumpUrl']
          @Deadline = params['Deadline']
          @CallbackUrl = params['CallbackUrl']
          @ApproverType = params['ApproverType']
          @OpenId = params['OpenId']
          @PreReadTime = params['PreReadTime']
          @ComponentLimitType = params['ComponentLimitType']
          @RecipientId = params['RecipientId']
          @OrganizationName = params['OrganizationName']
          @OrganizationOpenId = params['OrganizationOpenId']
          @NotChannelOrganization = params['NotChannelOrganization']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
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
        # @type FlowType: String
        # @param FlowStatus: 合同(流程)的状态
        # @type FlowStatus: String
        # @param FlowMessage: 合同(流程)的信息
        # @type FlowMessage: String
        # @param CreateOn: 合同(流程)的创建时间戳
        # @type CreateOn: Integer
        # @param DeadLine: 合同(流程)的签署截止时间戳
        # @type DeadLine: Integer
        # @param CustomData: 用户自定义数据
        # @type CustomData: String
        # @param FlowApproverInfos: 合同(流程)的签署人数组
        # @type FlowApproverInfos: Array

        attr_accessor :FlowId, :FlowName, :FlowType, :FlowStatus, :FlowMessage, :CreateOn, :DeadLine, :CustomData, :FlowApproverInfos
        
        def initialize(flowid=nil, flowname=nil, flowtype=nil, flowstatus=nil, flowmessage=nil, createon=nil, deadline=nil, customdata=nil, flowapproverinfos=nil)
          @FlowId = flowid
          @FlowName = flowname
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @FlowMessage = flowmessage
          @CreateOn = createon
          @DeadLine = deadline
          @CustomData = customdata
          @FlowApproverInfos = flowapproverinfos
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
        end
      end

      # 此结构体 (FlowInfo) 用于描述流程信息。
      class FlowInfo < TencentCloud::Common::AbstractModel
        # @param FlowName: 合同名字
        # @type FlowName: String
        # @param Deadline: 签署截止时间戳，超过有效签署时间则该签署流程失败，默认一年
        # @type Deadline: Integer
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param FlowType: 合同类型：
        # 1. “劳务”
        # 2. “销售”
        # 3. “租赁”
        # 4. “其他”
        # @type FlowType: String
        # @param CallbackUrl: 回调地址
        # @type CallbackUrl: String
        # @param FlowApprovers: 多个签署人信息，渠道侧目前不支持超过5个签署方信息
        # @type FlowApprovers: Array
        # @param FormFields: 表单K-V对列表
        # @type FormFields: Array
        # @param FlowDescription: 合同描述
        # @type FlowDescription: String
        # @param CustomerData: 渠道的业务信息，限制1024字符
        # @type CustomerData: String
        # @param CcInfos: 被抄送人的信息列表，抄送功能暂不开放
        # @type CcInfos: Array

        attr_accessor :FlowName, :Deadline, :TemplateId, :FlowType, :CallbackUrl, :FlowApprovers, :FormFields, :FlowDescription, :CustomerData, :CcInfos
        
        def initialize(flowname=nil, deadline=nil, templateid=nil, flowtype=nil, callbackurl=nil, flowapprovers=nil, formfields=nil, flowdescription=nil, customerdata=nil, ccinfos=nil)
          @FlowName = flowname
          @Deadline = deadline
          @TemplateId = templateid
          @FlowType = flowtype
          @CallbackUrl = callbackurl
          @FlowApprovers = flowapprovers
          @FormFields = formfields
          @FlowDescription = flowdescription
          @CustomerData = customerdata
          @CcInfos = ccinfos
        end

        def deserialize(params)
          @FlowName = params['FlowName']
          @Deadline = params['Deadline']
          @TemplateId = params['TemplateId']
          @FlowType = params['FlowType']
          @CallbackUrl = params['CallbackUrl']
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
          @FlowDescription = params['FlowDescription']
          @CustomerData = params['CustomerData']
          unless params['CcInfos'].nil?
            @CcInfos = []
            params['CcInfos'].each do |i|
              ccinfo_tmp = CcInfo.new
              ccinfo_tmp.deserialize(i)
              @CcInfos << ccinfo_tmp
            end
          end
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

      # 此结构 (FormField) 用于描述内容控件填充结构。
      class FormField < TencentCloud::Common::AbstractModel
        # @param ComponentValue: 表单域或控件的Value
        # @type ComponentValue: String
        # @param ComponentId: 表单域或控件的ID，跟ComponentName二选一，不能全为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentId: String
        # @param ComponentName: 控件的名字，跟ComponentId二选一，不能全为空
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # GetDownloadFlowUrl请求参数结构体
      class GetDownloadFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param DownLoadFlows: 文件夹数组，合同（流程）总数不能超过50个，一个文件夹下，不能超过20个合同（流程），
        # @type DownLoadFlows: Array

        attr_accessor :Agent, :Operator, :DownLoadFlows
        
        def initialize(agent=nil, operator=nil, downloadflows=nil)
          @Agent = agent
          @Operator = operator
          @DownLoadFlows = downloadflows
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
          unless params['DownLoadFlows'].nil?
            @DownLoadFlows = []
            params['DownLoadFlows'].each do |i|
              downloadflowinfo_tmp = DownloadFlowInfo.new
              downloadflowinfo_tmp.deserialize(i)
              @DownLoadFlows << downloadflowinfo_tmp
            end
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

      # OperateChannelTemplate请求参数结构体
      class OperateChannelTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 渠道方模板库模板唯一标识
        # @type TemplateId: String
        # @param OperateType: 操作类型，查询:"SELECT"，删除:"DELETE"，更新:"UPDATE"
        # @type OperateType: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param AuthTag: 模板可见性, 全部可见-"all", 部分可见-"part"
        # @type AuthTag: String
        # @param ProxyOrganizationOpenIds: 合作企业方第三方机构唯一标识数据，支持多个， 用","进行分隔
        # @type ProxyOrganizationOpenIds: String

        attr_accessor :Agent, :TemplateId, :OperateType, :Operator, :AuthTag, :ProxyOrganizationOpenIds
        
        def initialize(agent=nil, templateid=nil, operatetype=nil, operator=nil, authtag=nil, proxyorganizationopenids=nil)
          @Agent = agent
          @TemplateId = templateid
          @OperateType = operatetype
          @Operator = operator
          @AuthTag = authtag
          @ProxyOrganizationOpenIds = proxyorganizationopenids
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @TemplateId = params['TemplateId']
          @OperateType = params['OperateType']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @AuthTag = params['AuthTag']
          @ProxyOrganizationOpenIds = params['ProxyOrganizationOpenIds']
        end
      end

      # OperateChannelTemplate返回参数结构体
      class OperateChannelTemplateResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 腾讯电子签颁发给渠道的应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param TemplateId: 渠道方模板库模板唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param OperateResult: 全部成功-"all-success",部分成功-"part-success", 全部失败-"fail"失败的会在FailMessageList中展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateResult: String
        # @param AuthTag: 模板可见性, 全部可见-"all", 部分可见-"part"
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

      # PrepareFlows请求参数结构体
      class PrepareFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 多个合同（流程）信息
        # @type FlowInfos: Array
        # @param JumpUrl: 操作完成后的跳转地址
        # @type JumpUrl: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowInfos, :JumpUrl, :Operator
        
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
        # @param Id: 经办人ID（渠道颁发）
        # @type Id: String
        # @param Name: 经办人姓名
        # @type Name: String
        # @param IdCardType: 经办人身份证件类型
        # 用户证件类型：默认ID_CARD
        # 1. ID_CARD - 居民身份证
        # 2. HOUSEHOLD_REGISTER - 户口本
        # 3. TEMP_ID_CARD - 临时居民身份证
        # @type IdCardType: String
        # @param IdCardNumber: 经办人身份证号
        # @type IdCardNumber: String
        # @param Mobile: 经办人手机号
        # @type Mobile: String

        attr_accessor :Id, :Name, :IdCardType, :IdCardNumber, :Mobile
        
        def initialize(id=nil, name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil)
          @Id = id
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @Mobile = mobile
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
        end
      end

      # 签署参与者信息
      class Recipient < TencentCloud::Common::AbstractModel
        # @param RecipientId: 签署人唯一标识
        # @type RecipientId: String
        # @param RecipientType: 签署方类型：ENTERPRISE-企业INDIVIDUAL-自然人
        # @type RecipientType: String
        # @param Description: 描述
        # @type Description: String
        # @param RoleName: 签署方备注信息
        # @type RoleName: String
        # @param RequireValidation: 是否需要校验
        # @type RequireValidation: Boolean
        # @param RequireSign: 是否必须填写
        # @type RequireSign: Boolean
        # @param SignType: 签署类型
        # @type SignType: Integer
        # @param RoutingOrder: 签署顺序：数字越小优先级越高
        # @type RoutingOrder: Integer
        # @param IsPromoter: 是否是发起方
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

      # 签署链接内容
      class SignUrlInfo < TencentCloud::Common::AbstractModel
        # @param SignUrl: 签署链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignUrl: String
        # @param Deadline: 链接失效时间,默认30分钟
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

        attr_accessor :SignUrl, :Deadline, :SignOrder, :SignId, :CustomUserId, :Name, :Mobile, :OrganizationName, :ApproverType, :IdCardNumber, :FlowId, :OpenId
        
        def initialize(signurl=nil, deadline=nil, signorder=nil, signid=nil, customuserid=nil, name=nil, mobile=nil, organizationname=nil, approvertype=nil, idcardnumber=nil, flowid=nil, openid=nil)
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
        end
      end

      # 同步经办人失败原因
      class SyncFailReason < TencentCloud::Common::AbstractModel
        # @param Id: 经办人Id
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
        # @param OperatorType: 操作类型，新增:"CREATE"，修改:"UPDATE"，离职:"RESIGN"
        # @type OperatorType: String
        # @param Agent: 应用信息
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationOperators: 经办人信息列表
        # @type ProxyOrganizationOperators: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :OperatorType, :Agent, :ProxyOrganizationOperators, :Operator
        
        def initialize(operatortype=nil, agent=nil, proxyorganizationoperators=nil, operator=nil)
          @OperatorType = operatortype
          @Agent = agent
          @ProxyOrganizationOperators = proxyorganizationoperators
          @Operator = operator
        end

        def deserialize(params)
          @OperatorType = params['OperatorType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
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
        # 此接口Agent.ProxyOrganizationOpenId必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 渠道侧合作企业名称
        # @type ProxyOrganizationName: String
        # @param UniformSocialCreditCode: 渠道侧合作企业统一社会信用代码
        # @type UniformSocialCreditCode: String
        # @param BusinessLicense: 营业执照正面照(PNG或JPG) base64格式, 大小不超过5M
        # @type BusinessLicense: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ProxyOrganizationName, :UniformSocialCreditCode, :BusinessLicense, :Operator
        
        def initialize(agent=nil, proxyorganizationname=nil, uniformsocialcreditcode=nil, businesslicense=nil, operator=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @UniformSocialCreditCode = uniformsocialcreditcode
          @BusinessLicense = businesslicense
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @BusinessLicense = params['BusinessLicense']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
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

      # 此结构体 (TemplateInfo) 用于描述模板的信息。
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名字
        # @type TemplateName: String
        # @param Description: 模板描述信息
        # @type Description: String
        # @param Components: 模板控件信息结构
        # @type Components: Array
        # @param SignComponents: 签署区模板信息结构
        # @type SignComponents: Array
        # @param Creator: 模板的创建者信息
        # @type Creator: String
        # @param CreatedOn: 模板创建的时间戳（精确到秒）
        # @type CreatedOn: Integer
        # @param TemplateType: 模板类型：1-静默签；2-静默签授权；3-普通模板
        # @type TemplateType: Integer
        # @param Recipients: 模板中的流程参与人信息
        # @type Recipients: Array
        # @param IsPromoter: 是否是发起人
        # @type IsPromoter: Boolean

        attr_accessor :TemplateId, :TemplateName, :Description, :Components, :SignComponents, :Creator, :CreatedOn, :TemplateType, :Recipients, :IsPromoter
        
        def initialize(templateid=nil, templatename=nil, description=nil, components=nil, signcomponents=nil, creator=nil, createdon=nil, templatetype=nil, recipients=nil, ispromoter=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @Components = components
          @SignComponents = signcomponents
          @Creator = creator
          @CreatedOn = createdon
          @TemplateType = templatetype
          @Recipients = recipients
          @IsPromoter = ispromoter
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
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @Creator = params['Creator']
          @CreatedOn = params['CreatedOn']
          @TemplateType = params['TemplateType']
          unless params['Recipients'].nil?
            @Recipients = []
            params['Recipients'].each do |i|
              recipient_tmp = Recipient.new
              recipient_tmp.deserialize(i)
              @Recipients << recipient_tmp
            end
          end
          @IsPromoter = params['IsPromoter']
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
        # @param BusinessType: 文件对应业务类型，用于区分文件存储路径：
        # 1. TEMPLATE - 模板； 文件类型：.pdf
        # 2. DOCUMENT - 签署过程及签署后的合同文档/图片控件 文件类型：.pdf/.jpg/.png
        # @type BusinessType: String
        # @param Agent: 应用相关信息，若是渠道版调用 appid 和proxyappid 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FileInfos: 上传文件内容数组，最多支持20个文件
        # @type FileInfos: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :BusinessType, :Agent, :FileInfos, :Operator
        
        def initialize(businesstype=nil, agent=nil, fileinfos=nil, operator=nil)
          @BusinessType = businesstype
          @Agent = agent
          @FileInfos = fileinfos
          @Operator = operator
        end

        def deserialize(params)
          @BusinessType = params['BusinessType']
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
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
        # @param FileIds: 文件id数组
        # @type FileIds: Array
        # @param TotalCount: 上传成功文件数量
        # @type TotalCount: Integer
        # @param FileUrls: 文件Url
        # @type FileUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileIds, :TotalCount, :FileUrls, :RequestId
        
        def initialize(fileids=nil, totalcount=nil, fileurls=nil, requestid=nil)
          @FileIds = fileids
          @TotalCount = totalcount
          @FileUrls = fileurls
          @RequestId = requestid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @TotalCount = params['TotalCount']
          @FileUrls = params['FileUrls']
          @RequestId = params['RequestId']
        end
      end

      # 用量明细
      class UsageDetail < TencentCloud::Common::AbstractModel
        # @param ProxyOrganizationOpenId: 渠道侧合作企业唯一标识
        # @type ProxyOrganizationOpenId: String
        # @param Usage: 消耗量
        # @type Usage: Integer
        # @param Date: 日期，当需要汇总数据时日期为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param ProxyOrganizationName: 渠道侧合作企业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyOrganizationName: String

        attr_accessor :ProxyOrganizationOpenId, :Usage, :Date, :ProxyOrganizationName
        
        def initialize(proxyorganizationopenid=nil, usage=nil, date=nil, proxyorganizationname=nil)
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @Usage = usage
          @Date = date
          @ProxyOrganizationName = proxyorganizationname
        end

        def deserialize(params)
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          @Usage = params['Usage']
          @Date = params['Date']
          @ProxyOrganizationName = params['ProxyOrganizationName']
        end
      end

      # 接口调用者信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param CustomUserId: 自定义用户编号
        # @type CustomUserId: String
        # @param Channel: 用户的来源渠道
        # @type Channel: String
        # @param OpenId: 用户在渠道的编号
        # @type OpenId: String
        # @param ClientIp: 用户真实IP
        # @type ClientIp: String
        # @param ProxyIp: 用户代理IP
        # @type ProxyIp: String

        attr_accessor :CustomUserId, :Channel, :OpenId, :ClientIp, :ProxyIp
        
        def initialize(customuserid=nil, channel=nil, openid=nil, clientip=nil, proxyip=nil)
          @CustomUserId = customuserid
          @Channel = channel
          @OpenId = openid
          @ClientIp = clientip
          @ProxyIp = proxyip
        end

        def deserialize(params)
          @CustomUserId = params['CustomUserId']
          @Channel = params['Channel']
          @OpenId = params['OpenId']
          @ClientIp = params['ClientIp']
          @ProxyIp = params['ProxyIp']
        end
      end

    end
  end
end

