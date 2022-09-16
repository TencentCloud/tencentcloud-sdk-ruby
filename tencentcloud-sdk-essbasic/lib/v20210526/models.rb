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
        # @param ProxyOrganizationOpenId: 渠道/平台合作企业的企业ID，最大64位字符串
        # @type ProxyOrganizationOpenId: String
        # @param ProxyOperator: 渠道/平台合作企业经办人（操作员）
        # @type ProxyOperator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param ProxyAppId: 腾讯电子签颁发给渠道侧合作企业的应用ID
        # @type ProxyAppId: String
        # @param ProxyOrganizationId: 内部参数，腾讯电子签颁发给渠道侧合作企业的企业ID，不需要传
        # @type ProxyOrganizationId: String

        attr_accessor :AppId, :ProxyOrganizationOpenId, :ProxyOperator, :ProxyAppId, :ProxyOrganizationId
        
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
        # @param Mobile: 被抄送人手机号，大陆11位手机号
        # @type Mobile: String

        attr_accessor :Mobile
        
        def initialize(mobile=nil)
          @Mobile = mobile
        end

        def deserialize(params)
          @Mobile = params['Mobile']
        end
      end

      # ChannelBatchCancelFlows请求参数结构体
      class ChannelBatchCancelFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 签署流程Id数组，最多100个，超过100不处理
        # @type FlowIds: Array
        # @param Operator: 操作人信息
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

      # ChannelBatchCancelFlows返回参数结构体
      class ChannelBatchCancelFlowsResponse < TencentCloud::Common::AbstractModel
        # @param FailMessages: 签署流程批量撤销失败原因，错误信息与流程Id一一对应，如果部分流程不可撤销，不会返回错误信息，只会撤销可撤销流程
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

      # ChannelCreateBatchCancelFlowUrl请求参数结构体
      class ChannelCreateBatchCancelFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 签署流程Id数组
        # @type FlowIds: Array
        # @param Operator: 操作人信息
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

      # ChannelCreateConvertTaskApi请求参数结构体
      class ChannelCreateConvertTaskApiRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ResourceType: 资源类型 取值范围doc,docx,html之一
        # @type ResourceType: String
        # @param ResourceName: 资源名称，长度限制为256字符
        # @type ResourceName: String
        # @param ResourceId: 资源Id，通过UploadFiles获取
        # @type ResourceId: String
        # @param Operator: 操作者信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :ResourceType, :ResourceName, :ResourceId, :Operator, :Organization
        
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

      # ChannelCreateFlowByFiles请求参数结构体
      class ChannelCreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowName: 签署流程名称，长度不超过200个字符
        # @type FlowName: String
        # @param FlowApprovers: 签署流程签约方列表，最多不超过5个参与方
        # @type FlowApprovers: Array
        # @param FileIds: 签署文件资源Id列表，目前仅支持单个文件
        # @type FileIds: Array
        # @param Components: 签署文件中的发起方的填写控件，需要在发起的时候进行填充
        # @type Components: Array
        # @param Deadline: 签署流程截止时间，十位数时间戳，最大值为33162419560，即3020年
        # @type Deadline: Integer
        # @param CallbackUrl: 签署流程回调地址，长度不超过255个字符
        # @type CallbackUrl: String
        # @param Unordered: 合同签署顺序类型(无序签,顺序签)，默认为false，即有序签署
        # @type Unordered: Boolean
        # @param FlowType: 签署流程的类型，长度不超过255个字符
        # @type FlowType: String
        # @param FlowDescription: 签署流程的描述，长度不超过1000个字符
        # @type FlowDescription: String
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param CustomerData: 渠道的业务信息，最大长度1000个字符。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        # @type CustomerData: String
        # @param NeedSignReview: 发起方企业的签署人进行签署操作是否需要企业内部审批。 若设置为true,审核结果需通过接口 ChannelCreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。  注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        # @type NeedSignReview: Boolean
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowName, :FlowApprovers, :FileIds, :Components, :Deadline, :CallbackUrl, :Unordered, :FlowType, :FlowDescription, :CustomShowMap, :CustomerData, :NeedSignReview, :Operator
        
        def initialize(agent=nil, flowname=nil, flowapprovers=nil, fileids=nil, components=nil, deadline=nil, callbackurl=nil, unordered=nil, flowtype=nil, flowdescription=nil, customshowmap=nil, customerdata=nil, needsignreview=nil, operator=nil)
          @Agent = agent
          @FlowName = flowname
          @FlowApprovers = flowapprovers
          @FileIds = fileids
          @Components = components
          @Deadline = deadline
          @CallbackUrl = callbackurl
          @Unordered = unordered
          @FlowType = flowtype
          @FlowDescription = flowdescription
          @CustomShowMap = customshowmap
          @CustomerData = customerdata
          @NeedSignReview = needsignreview
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowName = params['FlowName']
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
          @FlowDescription = params['FlowDescription']
          @CustomShowMap = params['CustomShowMap']
          @CustomerData = params['CustomerData']
          @NeedSignReview = params['NeedSignReview']
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

      # ChannelCreateFlowGroupByFiles请求参数结构体
      class ChannelCreateFlowGroupByFilesRequest < TencentCloud::Common::AbstractModel
        # @param FlowFileInfos: 每个子合同的发起所需的信息，数量限制2-100
        # @type FlowFileInfos: Array
        # @param FlowGroupName: 合同组名称，长度不超过200个字符
        # @type FlowGroupName: String
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowFileInfos, :FlowGroupName, :Agent, :Operator
        
        def initialize(flowfileinfos=nil, flowgroupname=nil, agent=nil, operator=nil)
          @FlowFileInfos = flowfileinfos
          @FlowGroupName = flowgroupname
          @Agent = agent
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

      # ChannelCreateFlowSignReview请求参数结构体
      class ChannelCreateFlowSignReviewRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param ReviewType: 企业内部审核结果
        # PASS: 通过
        # REJECT: 拒绝
        # @type ReviewType: String
        # @param ReviewMessage: 审核原因
        # 当ReviewType 是REJECT 时此字段必填,字符串长度不超过200
        # @type ReviewMessage: String

        attr_accessor :Agent, :FlowId, :ReviewType, :ReviewMessage
        
        def initialize(agent=nil, flowid=nil, reviewtype=nil, reviewmessage=nil)
          @Agent = agent
          @FlowId = flowid
          @ReviewType = reviewtype
          @ReviewMessage = reviewmessage
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowId = params['FlowId']
          @ReviewType = params['ReviewType']
          @ReviewMessage = params['ReviewMessage']
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

      # ChannelCreateMultiFlowSignQRCode请求参数结构体
      class ChannelCreateMultiFlowSignQRCodeRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 模版ID
        # @type TemplateId: String
        # @param FlowName: 签署流程名称，最大长度200个字符。
        # @type FlowName: String
        # @param MaxFlowNum: 最大可发起签署流程份数，默认5份；发起签署流程数量超过此上限后，二维码自动失效。
        # @type MaxFlowNum: Integer
        # @param FlowEffectiveDay: 签署流程有效天数 默认7天 最高设置不超过30天
        # @type FlowEffectiveDay: Integer
        # @param QrEffectiveDay: 二维码有效天数 默认7天 最高设置不超过90天
        # @type QrEffectiveDay: Integer
        # @param CallbackUrl: 回调地址，最大长度1000个字符
        # 不传默认使用渠道应用号配置的回调地址
        # 回调时机:用户通过签署二维码发起合同时，企业额度不足导致失败
        # @type CallbackUrl: String
        # @param ApproverRestrictions: 限制二维码用户条件
        # @type ApproverRestrictions: :class:`Tencentcloud::Essbasic.v20210526.models.ApproverRestriction`
        # @param Operator: 用户信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :TemplateId, :FlowName, :MaxFlowNum, :FlowEffectiveDay, :QrEffectiveDay, :CallbackUrl, :ApproverRestrictions, :Operator
        
        def initialize(agent=nil, templateid=nil, flowname=nil, maxflownum=nil, floweffectiveday=nil, qreffectiveday=nil, callbackurl=nil, approverrestrictions=nil, operator=nil)
          @Agent = agent
          @TemplateId = templateid
          @FlowName = flowname
          @MaxFlowNum = maxflownum
          @FlowEffectiveDay = floweffectiveday
          @QrEffectiveDay = qreffectiveday
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

      # ChannelGetTaskResultApi请求参数结构体
      class ChannelGetTaskResultApiRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TaskId: 任务Id，通过ChannelCreateConvertTaskApi接口获得
        # @type TaskId: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param Organization: 暂未开放
        # @type Organization: :class:`Tencentcloud::Essbasic.v20210526.models.OrganizationInfo`

        attr_accessor :Agent, :TaskId, :Operator, :Organization
        
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :TaskMessage, :ResourceId, :PreviewUrl, :RequestId
        
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
        # @param ComponentName: 控件简称，不能超过30个字符
        # @type ComponentName: String
        # @param ComponentRequired: 定义控件是否为必填项，默认为false
        # @type ComponentRequired: Boolean
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
        # @param ComponentExtra: 参数控件样式，json格式表述
        # 不同类型的控件会有部分非通用参数
        # TEXT控件可以指定字体
        # 例如：{"FontSize":12}
        # @type ComponentExtra: String
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # TEXT - 文本内容
        # MULTI_LINE_TEXT - 文本内容
        # CHECK_BOX - true/false
        # FILL_IMAGE、ATTACHMENT - 附件的FileId，需要通过UploadFiles接口上传获取
        # SELECTOR - 选项值
        # DYNAMIC_TABLE - 传入json格式的表格内容，具体见数据结构FlowInfo：https://cloud.tencent.com/document/api/1420/61525#FlowInfo
        # @type ComponentValue: String
        # @param ComponentDateFontSize: 日期签署控件的字号，默认为 12

        # 签署区日期控件会转换成图片格式并带存证，需要通过字体决定图片大小
        # @type ComponentDateFontSize: Integer
        # @param DocumentId: 控件所属文档的Id, 模块相关接口为空值
        # @type DocumentId: String
        # @param ComponentDescription: 控件描述，不能超过30个字符
        # @type ComponentDescription: String
        # @param OffsetX: 指定关键字时横坐标偏移量，单位pt
        # @type OffsetX: Float
        # @param OffsetY: 指定关键字时纵坐标偏移量，单位pt
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

      # CreateChannelFlowEvidenceReport请求参数结构体
      class CreateChannelFlowEvidenceReportRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 签署流程编号
        # @type FlowId: String
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :FlowId, :Agent, :Operator
        
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

      # CreateChannelFlowEvidenceReport返回参数结构体
      class CreateChannelFlowEvidenceReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 出证报告 URL（有效五分钟）
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

      # CreateConsoleLoginUrl请求参数结构体
      class CreateConsoleLoginUrlRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 应用信息
        # 此接口Agent.AppId、Agent.ProxyOrganizationOpenId 和 Agent. ProxyOperator.OpenId 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param ProxyOrganizationName: 渠道子客企业名称，最大长度64个字符
        # @type ProxyOrganizationName: String
        # @param ProxyOperatorName: 渠道子客企业经办人的姓名，最大长度50个字符
        # @type ProxyOperatorName: String
        # @param Module: 控制台指定模块，文件/合同管理:"DOCUMENT"，模板管理:"TEMPLATE"，印章管理:"SEAL"，组织架构/人员:"OPERATOR"，空字符串："账号信息"
        # @type Module: String
        # @param ModuleId: 控制台指定模块Id
        # @type ModuleId: String
        # @param UniformSocialCreditCode: 渠道子客企业统一社会信用代码，最大长度200个字符
        # @type UniformSocialCreditCode: String
        # @param MenuStatus: 是否展示左侧菜单栏 是：ENABLE（默认） 否：DISABLE
        # @type MenuStatus: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ProxyOrganizationName, :ProxyOperatorName, :Module, :ModuleId, :UniformSocialCreditCode, :MenuStatus, :Operator
        
        def initialize(agent=nil, proxyorganizationname=nil, proxyoperatorname=nil, _module=nil, moduleid=nil, uniformsocialcreditcode=nil, menustatus=nil, operator=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @ProxyOperatorName = proxyoperatorname
          @Module = _module
          @ModuleId = moduleid
          @UniformSocialCreditCode = uniformsocialcreditcode
          @MenuStatus = menustatus
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @ProxyOperatorName = params['ProxyOperatorName']
          @Module = params['Module']
          @ModuleId = params['ModuleId']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @MenuStatus = params['MenuStatus']
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
        end
      end

      # CreateConsoleLoginUrl返回参数结构体
      class CreateConsoleLoginUrlResponse < TencentCloud::Common::AbstractModel
        # @param ConsoleUrl: 子客Web控制台url，此链接5分钟内有效，且只能访问一次
        # @type ConsoleUrl: String
        # @param IsActivated: 渠道子客企业是否已开通腾讯电子签。
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
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 多个合同（签署流程）信息，最多支持20个
        # @type FlowInfos: Array
        # @param NeedPreview: 是否为预览模式；默认为false，即非预览模式，此时发起合同并返回FlowIds；若为预览模式，则返回PreviewUrls；
        # 预览链接有效期300秒；
        # @type NeedPreview: Boolean
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :FlowInfos, :NeedPreview, :Operator
        
        def initialize(agent=nil, flowinfos=nil, needpreview=nil, operator=nil)
          @Agent = agent
          @FlowInfos = flowinfos
          @NeedPreview = needpreview
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
        # @param CustomerData: 渠道的业务信息，限制1024字符
        # @type CustomerData: Array
        # @param ErrorMessages: 创建消息，对应多个合同ID，
        # 成功为“”,创建失败则对应失败消息
        # @type ErrorMessages: Array
        # @param PreviewUrls: 预览模式下返回的预览文件url数组
        # @type PreviewUrls: Array
        # @param TaskInfos: 复杂文档合成任务的任务信息数组
        # @type TaskInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowIds, :CustomerData, :ErrorMessages, :PreviewUrls, :TaskInfos, :RequestId
        
        def initialize(flowids=nil, customerdata=nil, errormessages=nil, previewurls=nil, taskinfos=nil, requestid=nil)
          @FlowIds = flowids
          @CustomerData = customerdata
          @ErrorMessages = errormessages
          @PreviewUrls = previewurls
          @TaskInfos = taskinfos
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
          @RequestId = params['RequestId']
        end
      end

      # CreateSealByImage请求参数结构体
      class CreateSealByImageRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param SealName: 印章名称，最大长度不超过30字符
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
        # @param FlowIds: 签署流程编号数组，最多支持100个。(备注：该参数和合同组编号必须二选一)
        # @type FlowIds: Array
        # @param Endpoint: 签署链接类型：“WEIXINAPP”-直接跳小程序；“CHANNEL”-跳转H5页面；“APP”-第三方APP或小程序跳转电子签小程序；默认“WEIXINAPP”类型，即跳转至小程序；
        # @type Endpoint: String
        # @param GenerateType: 签署链接生成类型，默认是 "ALL"；
        # "ALL"：全部签署方签署链接；
        # "CHANNEL"：渠道合作企业；
        # "NOT_CHANNEL"：非渠道合作企业；
        # "PERSON"：个人；
        # "FOLLOWER"：关注方，目前是合同抄送方；
        # @type GenerateType: String
        # @param OrganizationName: 非渠道合作企业参与方的企业名称，GenerateType为"NOT_CHANNEL"时必填
        # @type OrganizationName: String
        # @param Name: 参与人姓名，GenerateType为"PERSON"时必填
        # @type Name: String
        # @param Mobile: 参与人手机号；
        # GenerateType为"PERSON"或"FOLLOWER"时必填
        # @type Mobile: String
        # @param OrganizationOpenId: 渠道合作企业的企业Id，GenerateType为"CHANNEL"时必填
        # @type OrganizationOpenId: String
        # @param OpenId: 渠道合作企业参与人OpenId，GenerateType为"CHANNEL"时可用，指定到具体参与人
        # @type OpenId: String
        # @param AutoJumpBack: Endpoint为"APP" 类型的签署链接，可以设置此值；支持调用方小程序打开签署链接，在电子签小程序完成签署后自动回跳至调用方小程序
        # @type AutoJumpBack: Boolean
        # @param JumpUrl: 签署完之后的H5页面的跳转链接，针对Endpoint为CHANNEL时有效，最大长度1000个字符。
        # @type JumpUrl: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param FlowGroupId: 合同组编号(备注：该参数和合同(流程)编号数组必须二选一)
        # @type FlowGroupId: String

        attr_accessor :Agent, :FlowIds, :Endpoint, :GenerateType, :OrganizationName, :Name, :Mobile, :OrganizationOpenId, :OpenId, :AutoJumpBack, :JumpUrl, :Operator, :FlowGroupId
        
        def initialize(agent=nil, flowids=nil, endpoint=nil, generatetype=nil, organizationname=nil, name=nil, mobile=nil, organizationopenid=nil, openid=nil, autojumpback=nil, jumpurl=nil, operator=nil, flowgroupid=nil)
          @Agent = agent
          @FlowIds = flowids
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
          @FlowGroupId = flowgroupid
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @FlowIds = params['FlowIds']
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
          @FlowGroupId = params['FlowGroupId']
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
        # @param FlowIds: 合同(流程)编号数组，最多支持100个。
        # （备注：该参数和合同组编号必须二选一）
        # @type FlowIds: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param FlowGroupId: 合同组编号（备注：该参数和合同(流程)编号数组必须二选一）
        # @type FlowGroupId: String

        attr_accessor :Agent, :FlowIds, :Operator, :FlowGroupId
        
        def initialize(agent=nil, flowids=nil, operator=nil, flowgroupid=nil)
          @Agent = agent
          @FlowIds = flowids
          @Operator = operator
          @FlowGroupId = flowgroupid
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
          @FlowGroupId = params['FlowGroupId']
        end
      end

      # DescribeFlowDetailInfo返回参数结构体
      class DescribeFlowDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 渠道侧应用号Id
        # @type ApplicationId: String
        # @param ProxyOrganizationOpenId: 渠道侧企业第三方Id
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
        # @param Agent: 渠道应用相关信息。
        # 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowIds: 查询资源所对应的签署流程Id，最多支持50个。
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
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param TemplateId: 模板唯一标识
        # @type TemplateId: String
        # @param ContentType: 查询内容：0-模板列表及详情（默认），1-仅模板列表
        # @type ContentType: Integer
        # @param Limit: 查询个数，默认20，最大100
        # @type Limit: Integer
        # @param Offset: 查询偏移位置，默认0
        # @type Offset: Integer
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`
        # @param QueryAllComponents: 是否返回所有组件信息
        # @type QueryAllComponents: Boolean
        # @param TemplateName: 模糊搜索模版名称
        # @type TemplateName: String

        attr_accessor :Agent, :TemplateId, :ContentType, :Limit, :Offset, :Operator, :QueryAllComponents, :TemplateName
        
        def initialize(agent=nil, templateid=nil, contenttype=nil, limit=nil, offset=nil, operator=nil, queryallcomponents=nil, templatename=nil)
          @Agent = agent
          @TemplateId = templateid
          @ContentType = contenttype
          @Limit = limit
          @Offset = offset
          @Operator = operator
          @QueryAllComponents = queryallcomponents
          @TemplateName = templatename
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
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
          @QueryAllComponents = params['QueryAllComponents']
          @TemplateName = params['TemplateName']
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
        # @param StartDate: 开始时间，例如：2021-03-21
        # @type StartDate: String
        # @param EndDate: 结束时间，例如：2021-06-21；
        # 开始时间到结束时间的区间长度小于等于90天。
        # @type EndDate: String
        # @param NeedAggregate: 是否汇总数据，默认不汇总。
        # 不汇总：返回在统计区间内渠道下所有企业的每日明细，即每个企业N条数据，N为统计天数；
        # 汇总：返回在统计区间内渠道下所有企业的汇总后数据，即每个企业一条数据；
        # @type NeedAggregate: Boolean
        # @param Limit: 单次返回的最多条目数量。默认为1000，且不能超过1000。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认是0。
        # @type Offset: Integer
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :StartDate, :EndDate, :NeedAggregate, :Limit, :Offset, :Operator
        
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

      # 创建签署流程签署人入参
      class FlowApproverInfo < TencentCloud::Common::AbstractModel
        # @param Name: 签署人姓名，最大长度50个字符
        # @type Name: String
        # @param IdCardType: 经办人身份证件类型
        # 1.ID_CARD 居民身份证
        # 2.HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证
        # 3.HONGKONG_AND_MACAO 港澳居民来往内地通行证
        # @type IdCardType: String
        # @param IdCardNumber: 经办人证件号
        # @type IdCardNumber: String
        # @param Mobile: 签署人手机号，脱敏显示。大陆手机号为11位，暂不支持海外手机号。
        # @type Mobile: String
        # @param OrganizationName: 企业签署方工商营业执照上的企业名称，签署方为非发起方企业场景下必传，最大长度64个字符；
        # @type OrganizationName: String
        # @param NotChannelOrganization: 指定签署人非渠道企业下员工，在ApproverType为ORGANIZATION时指定。
        # 默认为false，即签署人位于同一个渠道应用号下；
        # @type NotChannelOrganization: Boolean
        # @param OpenId: 用户侧第三方id，最大长度64个字符
        # @type OpenId: String
        # @param OrganizationOpenId: 企业签署方在同一渠道下的其他合作企业OpenId，签署方为非发起方企业场景下必传，最大长度64个字符；
        # @type OrganizationOpenId: String
        # @param ApproverType: 签署人类型，PERSON-个人；
        # PERSON_AUTO_SIGN-个人自动签；
        # ORGANIZATION-企业；
        # ENTERPRISESERVER-企业静默签;
        # 注：ENTERPRISESERVER 类型仅用于使用文件创建签署流程（ChannelCreateFlowByFiles）接口；并且仅能指定发起方企业签署方为静默签署；
        # @type ApproverType: String
        # @param RecipientId: 签署流程签署人在模板中对应的签署人Id；在非单方签署、以及非B2C签署的场景下必传，用于指定当前签署方在签署流程中的位置；
        # @type RecipientId: String
        # @param Deadline: 签署截止时间，默认一年
        # @type Deadline: Integer
        # @param CallbackUrl: 签署完回调url，最大长度1000个字符
        # @type CallbackUrl: String
        # @param SignComponents: 使用PDF文件直接发起合同时，签署人指定的签署控件
        # @type SignComponents: Array
        # @param ComponentLimitType: 个人签署方指定签署控件类型，目前仅支持：OCR_ESIGN(AI智慧手写签名)
        # @type ComponentLimitType: Array
        # @param PreReadTime: 合同的强制预览时间：3~300s，未指定则按合同页数计算
        # @type PreReadTime: Integer
        # @param JumpUrl: 签署完前端跳转的url，暂未使用
        # @type JumpUrl: String

        attr_accessor :Name, :IdCardType, :IdCardNumber, :Mobile, :OrganizationName, :NotChannelOrganization, :OpenId, :OrganizationOpenId, :ApproverType, :RecipientId, :Deadline, :CallbackUrl, :SignComponents, :ComponentLimitType, :PreReadTime, :JumpUrl
        
        def initialize(name=nil, idcardtype=nil, idcardnumber=nil, mobile=nil, organizationname=nil, notchannelorganization=nil, openid=nil, organizationopenid=nil, approvertype=nil, recipientid=nil, deadline=nil, callbackurl=nil, signcomponents=nil, componentlimittype=nil, prereadtime=nil, jumpurl=nil)
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
        # @param CustomerData: 渠道的业务信息，最大长度1000个字符。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        # @type CustomerData: String
        # @param Unordered: 合同签署顺序类型(无序签,顺序签)，默认为false，即有序签署
        # @type Unordered: Boolean
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param NeedSignReview: 本企业(发起方企业)是否需要签署审批
        # @type NeedSignReview: Boolean

        attr_accessor :FileIds, :FlowName, :FlowApprovers, :Deadline, :FlowDescription, :FlowType, :CallbackUrl, :CustomerData, :Unordered, :CustomShowMap, :NeedSignReview
        
        def initialize(fileids=nil, flowname=nil, flowapprovers=nil, deadline=nil, flowdescription=nil, flowtype=nil, callbackurl=nil, customerdata=nil, unordered=nil, customshowmap=nil, needsignreview=nil)
          @FileIds = fileids
          @FlowName = flowname
          @FlowApprovers = flowapprovers
          @Deadline = deadline
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @CallbackUrl = callbackurl
          @CustomerData = customerdata
          @Unordered = unordered
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
          @CustomShowMap = params['CustomShowMap']
          @NeedSignReview = params['NeedSignReview']
        end
      end

      # 此结构体 (FlowInfo) 用于描述签署流程信息。

      # 【动态表格传参说明】
      # 当模板的 ComponentType='DYNAMIC_TABLE'时（渠道版），FormField.ComponentValue需要传递json格式的字符串参数，用于确定表头&填充动态表格（支持内容的单元格合并）
      # 输入示例

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
        # @param CustomerData: 渠道的业务信息，最大长度1000个字符。发起自动签署时，需设置对应自动签署场景，目前仅支持场景：处方单-E_PRESCRIPTION_AUTO_SIGN
        # @type CustomerData: String
        # @param CustomShowMap: 合同显示的页卡模板，说明：只支持{合同名称}, {发起方企业}, {发起方姓名}, {签署方N企业}, {签署方N姓名}，且N不能超过签署人的数量，N从1开始
        # @type CustomShowMap: String
        # @param CcInfos: 被抄送人的信息列表，抄送功能暂不开放
        # @type CcInfos: Array
        # @param NeedSignReview: 发起方企业的签署人进行签署操作是否需要企业内部审批。
        # 若设置为true,审核结果需通过接口 ChannelCreateFlowSignReview 通知电子签，审核通过后，发起方企业签署人方可进行签署操作，否则会阻塞其签署操作。

        # 注：企业可以通过此功能与企业内部的审批流程进行关联，支持手动、静默签署合同。
        # @type NeedSignReview: Boolean

        attr_accessor :FlowName, :Deadline, :TemplateId, :FlowApprovers, :FormFields, :CallbackUrl, :FlowType, :FlowDescription, :CustomerData, :CustomShowMap, :CcInfos, :NeedSignReview
        
        def initialize(flowname=nil, deadline=nil, templateid=nil, flowapprovers=nil, formfields=nil, callbackurl=nil, flowtype=nil, flowdescription=nil, customerdata=nil, customshowmap=nil, ccinfos=nil, needsignreview=nil)
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
        # @param ComponentValue: 控件填充vaule，ComponentType和传入值类型对应关系：
        # TEXT - 文本内容
        # MULTI_LINE_TEXT - 文本内容
        # CHECK_BOX - true/false
        # FILL_IMAGE、ATTACHMENT - 附件的FileId，需要通过UploadFiles接口上传获取
        # SELECTOR - 选项值
        # DYNAMIC_TABLE - 传入json格式的表格内容，具体见数据结构FlowInfo：https://cloud.tencent.com/document/api/1420/61525#FlowInfo
        # @type ComponentValue: String
        # @param ComponentId: 表单域或控件的ID，跟ComponentName二选一，不能全为空；
        # CreateFlowsByTemplates 接口不使用此字段。
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
        # @param DownLoadFlows: 文件夹数组，签署流程总数不能超过50个，一个文件夹下，不能超过20个签署流程
        # @type DownLoadFlows: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :DownLoadFlows, :Operator
        
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

      # OperateChannelTemplate请求参数结构体
      class OperateChannelTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param OperateType: 操作类型，查询:"SELECT"，删除:"DELETE"，更新:"UPDATE"
        # @type OperateType: String
        # @param TemplateId: 渠道方模板库模板唯一标识
        # @type TemplateId: String
        # @param ProxyOrganizationOpenIds: 合作企业方第三方机构唯一标识数据，支持多个， 用","进行分隔
        # @type ProxyOrganizationOpenIds: String
        # @param AuthTag: 模板可见性, 全部可见-"all", 部分可见-"part"
        # @type AuthTag: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :OperateType, :TemplateId, :ProxyOrganizationOpenIds, :AuthTag, :Operator
        
        def initialize(agent=nil, operatetype=nil, templateid=nil, proxyorganizationopenids=nil, authtag=nil, operator=nil)
          @Agent = agent
          @OperateType = operatetype
          @TemplateId = templateid
          @ProxyOrganizationOpenIds = proxyorganizationopenids
          @AuthTag = authtag
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
          unless params['Operator'].nil?
            @Operator = UserInfo.new
            @Operator.deserialize(params['Operator'])
          end
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

      # 机构信息
      class OrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationOpenId: 用户在渠道的机构编号
        # @type OrganizationOpenId: String
        # @param ClientIp: 用户真实的IP
        # @type ClientIp: String
        # @param ProxyIp: 机构的代理IP
        # @type ProxyIp: String
        # @param OrganizationId: 机构在平台的编号
        # @type OrganizationId: String
        # @param Channel: 用户渠道
        # @type Channel: String

        attr_accessor :OrganizationOpenId, :ClientIp, :ProxyIp, :OrganizationId, :Channel
        
        def initialize(organizationopenid=nil, clientip=nil, proxyip=nil, organizationid=nil, channel=nil)
          @OrganizationOpenId = organizationopenid
          @ClientIp = clientip
          @ProxyIp = proxyip
          @OrganizationId = organizationid
          @Channel = channel
        end

        def deserialize(params)
          @OrganizationOpenId = params['OrganizationOpenId']
          @ClientIp = params['ClientIp']
          @ProxyIp = params['ProxyIp']
          @OrganizationId = params['OrganizationId']
          @Channel = params['Channel']
        end
      end

      # PrepareFlows请求参数结构体
      class PrepareFlowsRequest < TencentCloud::Common::AbstractModel
        # @param Agent: 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param FlowInfos: 多个合同（签署流程）信息，最大支持20个签署流程。
        # @type FlowInfos: Array
        # @param JumpUrl: 操作完成后的跳转地址，最大长度200
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
        # @param Id: 经办人ID（渠道颁发），最大长度64个字符
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
        # @param FlowGroupId: 合同组签署链接对应的合同组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowGroupId: String

        attr_accessor :SignUrl, :Deadline, :SignOrder, :SignId, :CustomUserId, :Name, :Mobile, :OrganizationName, :ApproverType, :IdCardNumber, :FlowId, :OpenId, :FlowGroupId
        
        def initialize(signurl=nil, deadline=nil, signorder=nil, signid=nil, customuserid=nil, name=nil, mobile=nil, organizationname=nil, approvertype=nil, idcardnumber=nil, flowid=nil, openid=nil, flowgroupid=nil)
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
        # @param Agent: 渠道应用相关信息。 此接口Agent.AppId 和 Agent.ProxyOrganizationOpenId必填。
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param OperatorType: 操作类型，新增:"CREATE"，修改:"UPDATE"，离职:"RESIGN"
        # @type OperatorType: String
        # @param ProxyOrganizationOperators: 经办人信息列表，最大长度200
        # @type ProxyOrganizationOperators: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :OperatorType, :ProxyOrganizationOperators, :Operator
        
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
        # @param ProxyOrganizationName: 渠道侧合作企业名称，最大长度64个字符
        # @type ProxyOrganizationName: String
        # @param BusinessLicense: 营业执照正面照(PNG或JPG) base64格式, 大小不超过5M
        # @type BusinessLicense: String
        # @param UniformSocialCreditCode: 渠道侧合作企业统一社会信用代码，最大长度200个字符
        # @type UniformSocialCreditCode: String
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :ProxyOrganizationName, :BusinessLicense, :UniformSocialCreditCode, :Operator
        
        def initialize(agent=nil, proxyorganizationname=nil, businesslicense=nil, uniformsocialcreditcode=nil, operator=nil)
          @Agent = agent
          @ProxyOrganizationName = proxyorganizationname
          @BusinessLicense = businesslicense
          @UniformSocialCreditCode = uniformsocialcreditcode
          @Operator = operator
        end

        def deserialize(params)
          unless params['Agent'].nil?
            @Agent = Agent.new
            @Agent.deserialize(params['Agent'])
          end
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @BusinessLicense = params['BusinessLicense']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
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
        # @param Recipients: 模板中的流程参与人信息
        # @type Recipients: Array
        # @param TemplateType: 模板类型：1-静默签；3-普通模板
        # @type TemplateType: Integer
        # @param IsPromoter: 是否是发起人
        # @type IsPromoter: Boolean
        # @param Creator: 模板的创建者信息
        # @type Creator: String
        # @param CreatedOn: 模板创建的时间戳（精确到秒）
        # @type CreatedOn: Integer

        attr_accessor :TemplateId, :TemplateName, :Description, :Components, :SignComponents, :Recipients, :TemplateType, :IsPromoter, :Creator, :CreatedOn
        
        def initialize(templateid=nil, templatename=nil, description=nil, components=nil, signcomponents=nil, recipients=nil, templatetype=nil, ispromoter=nil, creator=nil, createdon=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @Components = components
          @SignComponents = signcomponents
          @Recipients = recipients
          @TemplateType = templatetype
          @IsPromoter = ispromoter
          @Creator = creator
          @CreatedOn = createdon
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
          unless params['Recipients'].nil?
            @Recipients = []
            params['Recipients'].each do |i|
              recipient_tmp = Recipient.new
              recipient_tmp.deserialize(i)
              @Recipients << recipient_tmp
            end
          end
          @TemplateType = params['TemplateType']
          @IsPromoter = params['IsPromoter']
          @Creator = params['Creator']
          @CreatedOn = params['CreatedOn']
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
        # @param Agent: 应用相关信息，若是渠道版调用 appid 和proxyappid 必填
        # @type Agent: :class:`Tencentcloud::Essbasic.v20210526.models.Agent`
        # @param BusinessType: 文件对应业务类型，用于区分文件存储路径：
        # 1. TEMPLATE - 模板； 文件类型：.pdf .doc .docx .html
        # 2. DOCUMENT - 签署过程及签署后的合同文档/图片控件 文件类型：.pdf/.jpg/.png
        # @type BusinessType: String
        # @param FileInfos: 上传文件内容数组，最多支持20个文件
        # @type FileInfos: Array
        # @param Operator: 操作者的信息
        # @type Operator: :class:`Tencentcloud::Essbasic.v20210526.models.UserInfo`

        attr_accessor :Agent, :BusinessType, :FileInfos, :Operator
        
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
        # @param FileIds: 文件id数组，有效期一个小时
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
        # @param ProxyOrganizationName: 渠道侧合作企业名
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

        attr_accessor :ProxyOrganizationOpenId, :ProxyOrganizationName, :Date, :Usage, :Cancel
        
        def initialize(proxyorganizationopenid=nil, proxyorganizationname=nil, date=nil, usage=nil, cancel=nil)
          @ProxyOrganizationOpenId = proxyorganizationopenid
          @ProxyOrganizationName = proxyorganizationname
          @Date = date
          @Usage = usage
          @Cancel = cancel
        end

        def deserialize(params)
          @ProxyOrganizationOpenId = params['ProxyOrganizationOpenId']
          @ProxyOrganizationName = params['ProxyOrganizationName']
          @Date = params['Date']
          @Usage = params['Usage']
          @Cancel = params['Cancel']
        end
      end

      # 接口调用者信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param OpenId: 用户在渠道的编号，最大64位字符串
        # @type OpenId: String
        # @param Channel: 用户的来源渠道
        # @type Channel: String
        # @param CustomUserId: 自定义用户编号
        # @type CustomUserId: String
        # @param ClientIp: 用户真实IP
        # @type ClientIp: String
        # @param ProxyIp: 用户代理IP
        # @type ProxyIp: String

        attr_accessor :OpenId, :Channel, :CustomUserId, :ClientIp, :ProxyIp
        
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

    end
  end
end

