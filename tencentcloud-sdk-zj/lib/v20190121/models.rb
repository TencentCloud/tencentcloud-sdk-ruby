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
  module Zj
    module V20190121
      # AddCrowdPackInfo请求参数结构体
      class AddCrowdPackInfoRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param Name: 人群包名称
        # @type Name: String
        # @param FileName: 人群包文件名称,人群包文件必须为utf8编码，动态参数只能是汉字、数字、英文字母的组合，不能包含其他字符
        # @type FileName: String
        # @param Desc: 人群包描述
        # @type Desc: String
        # @param CosUrl: 已经上传好的人群包cos地址
        # @type CosUrl: String
        # @param PhoneNum: 人群包手机号数量
        # @type PhoneNum: Integer

        attr_accessor :License, :Name, :FileName, :Desc, :CosUrl, :PhoneNum
        
        def initialize(license=nil, name=nil, filename=nil, desc=nil, cosurl=nil, phonenum=nil)
          @License = license
          @Name = name
          @FileName = filename
          @Desc = desc
          @CosUrl = cosurl
          @PhoneNum = phonenum
        end

        def deserialize(params)
          @License = params['License']
          @Name = params['Name']
          @FileName = params['FileName']
          @Desc = params['Desc']
          @CosUrl = params['CosUrl']
          @PhoneNum = params['PhoneNum']
        end
      end

      # AddCrowdPackInfo返回参数结构体
      class AddCrowdPackInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsAddCrowdPackInfoResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsAddCrowdPackInfoResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddSmsSign请求参数结构体
      class AddSmsSignRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param SignType: 签名类型。其中每种类型后面标注了其可选的 DocumentType（证明类型）：
        # 0：公司（0，1，2，3）。
        # 1：APP（0，1，2，3，4） 。
        # 2：网站（0，1，2，3，5）。
        # 3：公众号或者小程序（0，1，2，3，6）。
        # 4：商标（7）。
        # 5：政府/机关事业单位/其他机构（2，3）。
        # 注：必须按照对应关系选择证明类型，否则会审核失败。
        # @type SignType: Integer
        # @param DocumentType: 证明类型：
        # 0：三证合一。
        # 1：企业营业执照。
        # 2：组织机构代码证书。
        # 3：社会信用代码证书。
        # 4：应用后台管理截图（个人开发APP）。
        # 5：网站备案后台截图（个人开发网站）。
        # 6：小程序设置页面截图（个人认证小程序）。
        # 7：商标注册书
        # @type DocumentType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param ProofImage: 资质图片url
        # @type ProofImage: String
        # @param SignName: 签名内容
        # @type SignName: String
        # @param Remark: 签名备注，比如申请原因，使用场景等,可以填空
        # @type Remark: String

        attr_accessor :License, :SignType, :DocumentType, :International, :ProofImage, :SignName, :Remark
        
        def initialize(license=nil, signtype=nil, documenttype=nil, international=nil, proofimage=nil, signname=nil, remark=nil)
          @License = license
          @SignType = signtype
          @DocumentType = documenttype
          @International = international
          @ProofImage = proofimage
          @SignName = signname
          @Remark = remark
        end

        def deserialize(params)
          @License = params['License']
          @SignType = params['SignType']
          @DocumentType = params['DocumentType']
          @International = params['International']
          @ProofImage = params['ProofImage']
          @SignName = params['SignName']
          @Remark = params['Remark']
        end
      end

      # AddSmsSign返回参数结构体
      class AddSmsSignResponse < TencentCloud::Common::AbstractModel
        # @param Data: 签名id数组
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.PaasCreateSignResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PaasCreateSignResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 短信模板创建接口返回
      class AddSmsTemplateDataStruct < TencentCloud::Common::AbstractModel
        # @param TemplateId: 短信模板ID
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # AddSmsTemplate请求参数结构体
      class AddSmsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param SignID: 短信签名，创建签名时返回
        # @type SignID: Integer
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TemplateContent: 短信内容，动态内容使用占位符{1}，{2}等表示
        # @type TemplateContent: String
        # @param SmsType: 短信类型：{0:普通短信，1:营销短信}
        # @type SmsType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param Remark: 短信模板标签
        # @type Remark: String
        # @param Urls: 发送短信活动时配置的落地链接地址,仅用作短信活动
        # @type Urls: Array
        # @param CommonParams: 发送短信活动时用于展示人群包动态参数模板占位符序号或接口发送时变量占位符序号
        # @type CommonParams: Array
        # @param UrlParams: 发送短信活动时用于展示短连接模板占位符序号,仅用作短信活动
        # @type UrlParams: Array

        attr_accessor :License, :SignID, :TemplateName, :TemplateContent, :SmsType, :International, :Remark, :Urls, :CommonParams, :UrlParams
        
        def initialize(license=nil, signid=nil, templatename=nil, templatecontent=nil, smstype=nil, international=nil, remark=nil, urls=nil, commonparams=nil, urlparams=nil)
          @License = license
          @SignID = signid
          @TemplateName = templatename
          @TemplateContent = templatecontent
          @SmsType = smstype
          @International = international
          @Remark = remark
          @Urls = urls
          @CommonParams = commonparams
          @UrlParams = urlparams
        end

        def deserialize(params)
          @License = params['License']
          @SignID = params['SignID']
          @TemplateName = params['TemplateName']
          @TemplateContent = params['TemplateContent']
          @SmsType = params['SmsType']
          @International = params['International']
          @Remark = params['Remark']
          @Urls = params['Urls']
          @CommonParams = params['CommonParams']
          @UrlParams = params['UrlParams']
        end
      end

      # AddSmsTemplate返回参数结构体
      class AddSmsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 短信模板创建接口返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.AddSmsTemplateDataStruct`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddSmsTemplateDataStruct.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 取消活动的返回值Data部分
      class CancelActivityData < TencentCloud::Common::AbstractModel
        # @param Message: 成功返回时的文字描述
        # @type Message: String

        attr_accessor :Message
        
        def initialize(message=nil)
          @Message = message
        end

        def deserialize(params)
          @Message = params['Message']
        end
      end

      # CancelCampaign请求参数结构体
      class CancelCampaignRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param CampaignId: 短信活动id
        # @type CampaignId: Integer

        attr_accessor :License, :CampaignId
        
        def initialize(license=nil, campaignid=nil)
          @License = license
          @CampaignId = campaignid
        end

        def deserialize(params)
          @License = params['License']
          @CampaignId = params['CampaignId']
        end
      end

      # CancelCampaign返回参数结构体
      class CancelCampaignResponse < TencentCloud::Common::AbstractModel
        # @param Data: 处理结果
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.CancelActivityData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CancelActivityData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCampaign请求参数结构体
      class CreateCampaignRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param SendTime: 短信活动发送时间
        # @type SendTime: Integer
        # @param Name: 短信活动名称
        # @type Name: String
        # @param Strategies: 发送策略
        # @type Strategies: Array
        # @param TemplateId: 废弃
        # @type TemplateId: Integer
        # @param CrowdID: 废弃
        # @type CrowdID: Integer
        # @param SmsType: 活动类型(0-短信,1-超短,不填默认为超短)
        # @type SmsType: Integer

        attr_accessor :License, :SendTime, :Name, :Strategies, :TemplateId, :CrowdID, :SmsType
        
        def initialize(license=nil, sendtime=nil, name=nil, strategies=nil, templateid=nil, crowdid=nil, smstype=nil)
          @License = license
          @SendTime = sendtime
          @Name = name
          @Strategies = strategies
          @TemplateId = templateid
          @CrowdID = crowdid
          @SmsType = smstype
        end

        def deserialize(params)
          @License = params['License']
          @SendTime = params['SendTime']
          @Name = params['Name']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              paasstrategy_tmp = PaasStrategy.new
              paasstrategy_tmp.deserialize(i)
              @Strategies << paasstrategy_tmp
            end
          end
          @TemplateId = params['TemplateId']
          @CrowdID = params['CrowdID']
          @SmsType = params['SmsType']
        end
      end

      # CreateCampaign返回参数结构体
      class CreateCampaignResponse < TencentCloud::Common::AbstractModel
        # @param Data: 活动信息
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsCreateCampaignResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsCreateCampaignResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建样例时候content元素
      class CreateMmsInstanceItem < TencentCloud::Common::AbstractModel
        # @param ContentType: 素材类型：1-文本 2-图片 3-视频 4-音频
        # @type ContentType: Integer
        # @param Content: 素材内容：如果素材是文本类型，直接填写文本内容，否则填写素材文件上传到cos后的url地址
        # @type Content: String

        attr_accessor :ContentType, :Content
        
        def initialize(contenttype=nil, content=nil)
          @ContentType = contenttype
          @Content = content
        end

        def deserialize(params)
          @ContentType = params['ContentType']
          @Content = params['Content']
        end
      end

      # CreateMmsInstance请求参数结构体
      class CreateMmsInstanceRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param InstanceName: 样例名称
        # @type InstanceName: String
        # @param Title: 标题
        # @type Title: String
        # @param Sign: 签名
        # @type Sign: String
        # @param Contents: 素材内容
        # @type Contents: Array
        # @param Urls: 样例中链接动态变量对应的链接，和占位符顺序一致
        # @type Urls: Array
        # @param PhoneType: 机型列表
        # @type PhoneType: Array
        # @param CommonParams: 发送超短活动时用于展示人群包动态参数模板占位符序号或接口发送时变量占位符序号
        # @type CommonParams: Array
        # @param UrlParams: 发送超短活动时用于展示短连接模板占位符序号,仅用作超短活动
        # @type UrlParams: Array

        attr_accessor :License, :InstanceName, :Title, :Sign, :Contents, :Urls, :PhoneType, :CommonParams, :UrlParams
        
        def initialize(license=nil, instancename=nil, title=nil, sign=nil, contents=nil, urls=nil, phonetype=nil, commonparams=nil, urlparams=nil)
          @License = license
          @InstanceName = instancename
          @Title = title
          @Sign = sign
          @Contents = contents
          @Urls = urls
          @PhoneType = phonetype
          @CommonParams = commonparams
          @UrlParams = urlparams
        end

        def deserialize(params)
          @License = params['License']
          @InstanceName = params['InstanceName']
          @Title = params['Title']
          @Sign = params['Sign']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              createmmsinstanceitem_tmp = CreateMmsInstanceItem.new
              createmmsinstanceitem_tmp.deserialize(i)
              @Contents << createmmsinstanceitem_tmp
            end
          end
          @Urls = params['Urls']
          @PhoneType = params['PhoneType']
          @CommonParams = params['CommonParams']
          @UrlParams = params['UrlParams']
        end
      end

      # 创建超级短信样例返回结果
      class CreateMmsInstanceResp < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回码：0-成功 其它-失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息
        # @type ReturnMsg: String
        # @param InstanceId: 样例id
        # @type InstanceId: Integer

        attr_accessor :ReturnCode, :ReturnMsg, :InstanceId
        
        def initialize(returncode=nil, returnmsg=nil, instanceid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateMmsInstance返回参数结构体
      class CreateMmsInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建样例返回信息
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.CreateMmsInstanceResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateMmsInstanceResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DelCrowdPack请求参数结构体
      class DelCrowdPackRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param ID: 人群包id
        # @type ID: Integer

        attr_accessor :License, :ID
        
        def initialize(license=nil, id=nil)
          @License = license
          @ID = id
        end

        def deserialize(params)
          @License = params['License']
          @ID = params['ID']
        end
      end

      # DelCrowdPack返回参数结构体
      class DelCrowdPackResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsSuccessResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsSuccessResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除超短样例响应
      class DelMmsInstanceData < TencentCloud::Common::AbstractModel
        # @param InstanceId: 样例id
        # @type InstanceId: Integer

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DelTemplate请求参数结构体
      class DelTemplateRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param TemplateID: 短信模板ID
        # @type TemplateID: Integer

        attr_accessor :License, :TemplateID
        
        def initialize(license=nil, templateid=nil)
          @License = license
          @TemplateID = templateid
        end

        def deserialize(params)
          @License = params['License']
          @TemplateID = params['TemplateID']
        end
      end

      # DelTemplate返回参数结构体
      class DelTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsSuccessResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsSuccessResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteMmsInstance请求参数结构体
      class DeleteMmsInstanceRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param InstanceId: 超级短信样例id
        # @type InstanceId: Integer

        attr_accessor :License, :InstanceId
        
        def initialize(license=nil, instanceid=nil)
          @License = license
          @InstanceId = instanceid
        end

        def deserialize(params)
          @License = params['License']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteMmsInstance返回参数结构体
      class DeleteMmsInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除信息返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.DelMmsInstanceData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DelMmsInstanceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMmsInstanceInfo请求参数结构体
      class DescribeMmsInstanceInfoRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param InstanceId: 彩信实例id
        # @type InstanceId: Integer

        attr_accessor :License, :InstanceId
        
        def initialize(license=nil, instanceid=nil)
          @License = license
          @InstanceId = instanceid
        end

        def deserialize(params)
          @License = params['License']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMmsInstanceInfo返回参数结构体
      class DescribeMmsInstanceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 彩信实例信息
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.MmsInstanceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = MmsInstanceInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMmsInstanceList请求参数结构体
      class DescribeMmsInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param AppSubId: 业务代码
        # @type AppSubId: String
        # @param Title: 实例标题
        # @type Title: String

        attr_accessor :License, :Offset, :Limit, :AppSubId, :Title
        
        def initialize(license=nil, offset=nil, limit=nil, appsubid=nil, title=nil)
          @License = license
          @Offset = offset
          @Limit = limit
          @AppSubId = appsubid
          @Title = title
        end

        def deserialize(params)
          @License = params['License']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AppSubId = params['AppSubId']
          @Title = params['Title']
        end
      end

      # DescribeMmsInstanceList返回参数结构体
      class DescribeMmsInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 彩信实例信息列表返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.MmsInstanceInfoList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = MmsInstanceInfoList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSmsCampaignStatistics请求参数结构体
      class DescribeSmsCampaignStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param CampaignId: 活动id
        # @type CampaignId: Integer
        # @param License: 商户证书
        # @type License: String

        attr_accessor :CampaignId, :License
        
        def initialize(campaignid=nil, license=nil)
          @CampaignId = campaignid
          @License = license
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
          @License = params['License']
        end
      end

      # DescribeSmsCampaignStatistics返回参数结构体
      class DescribeSmsCampaignStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应数据
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsCampaignStatisticsData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsCampaignStatisticsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取普通短信签名信息返回信息
      class DescribeSmsSignListDataStruct < TencentCloud::Common::AbstractModel
        # @param SignId: 签名Id
        # @type SignId: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param StatusCode: 申请签名状态。其中：
        # 0：表示审核通过。
        # -1：表示审核未通过或审核失败。
        # @type StatusCode: Integer
        # @param ReviewReply: 审核回复，审核人员审核后给出的回复，通常是审核未通过的原因。
        # @type ReviewReply: String
        # @param SignName: 签名名称。
        # @type SignName: String
        # @param CreateTime: 提交审核时间，UNIX 时间戳（单位：秒）。
        # @type CreateTime: Integer

        attr_accessor :SignId, :International, :StatusCode, :ReviewReply, :SignName, :CreateTime
        
        def initialize(signid=nil, international=nil, statuscode=nil, reviewreply=nil, signname=nil, createtime=nil)
          @SignId = signid
          @International = international
          @StatusCode = statuscode
          @ReviewReply = reviewreply
          @SignName = signname
          @CreateTime = createtime
        end

        def deserialize(params)
          @SignId = params['SignId']
          @International = params['International']
          @StatusCode = params['StatusCode']
          @ReviewReply = params['ReviewReply']
          @SignName = params['SignName']
          @CreateTime = params['CreateTime']
        end
      end

      # DescribeSmsSignList请求参数结构体
      class DescribeSmsSignListRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param SignIdSet: 签名ID数组
        # @type SignIdSet: Array
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer

        attr_accessor :License, :SignIdSet, :International
        
        def initialize(license=nil, signidset=nil, international=nil)
          @License = license
          @SignIdSet = signidset
          @International = international
        end

        def deserialize(params)
          @License = params['License']
          @SignIdSet = params['SignIdSet']
          @International = params['International']
        end
      end

      # DescribeSmsSignList返回参数结构体
      class DescribeSmsSignListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              describesmssignlistdatastruct_tmp = DescribeSmsSignListDataStruct.new
              describesmssignlistdatastruct_tmp.deserialize(i)
              @Data << describesmssignlistdatastruct_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取短信模板状态返回
      class DescribeSmsTemplateListDataStruct < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id
        # @type TemplateId: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param StatusCode: 申请签名状态。其中：
        # 0：表示审核通过。
        # -1：表示审核未通过或审核失败。
        # @type StatusCode: Integer
        # @param ReviewReply: 审核回复，审核人员审核后给出的回复，通常是审核未通过的原因。
        # @type ReviewReply: String
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param CreateTime: 提交审核时间，UNIX 时间戳（单位：秒）。
        # @type CreateTime: Integer

        attr_accessor :TemplateId, :International, :StatusCode, :ReviewReply, :TemplateName, :CreateTime
        
        def initialize(templateid=nil, international=nil, statuscode=nil, reviewreply=nil, templatename=nil, createtime=nil)
          @TemplateId = templateid
          @International = international
          @StatusCode = statuscode
          @ReviewReply = reviewreply
          @TemplateName = templatename
          @CreateTime = createtime
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @International = params['International']
          @StatusCode = params['StatusCode']
          @ReviewReply = params['ReviewReply']
          @TemplateName = params['TemplateName']
          @CreateTime = params['CreateTime']
        end
      end

      # DescribeSmsTemplateList请求参数结构体
      class DescribeSmsTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param TemplateIdSet: 短信模板id数组
        # @type TemplateIdSet: Array
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer

        attr_accessor :License, :TemplateIdSet, :International
        
        def initialize(license=nil, templateidset=nil, international=nil)
          @License = license
          @TemplateIdSet = templateidset
          @International = international
        end

        def deserialize(params)
          @License = params['License']
          @TemplateIdSet = params['TemplateIdSet']
          @International = params['International']
        end
      end

      # DescribeSmsTemplateList返回参数结构体
      class DescribeSmsTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              describesmstemplatelistdatastruct_tmp = DescribeSmsTemplateListDataStruct.new
              describesmstemplatelistdatastruct_tmp.deserialize(i)
              @Data << describesmstemplatelistdatastruct_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCrowdPackList请求参数结构体
      class GetCrowdPackListRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制返回数量
        # @type Limit: Integer
        # @param Name: 人群包名称，用于过滤人群包
        # @type Name: String
        # @param Status: 人群包状态，默认-1，用于过滤人群包
        # @type Status: Integer

        attr_accessor :License, :Offset, :Limit, :Name, :Status
        
        def initialize(license=nil, offset=nil, limit=nil, name=nil, status=nil)
          @License = license
          @Offset = offset
          @Limit = limit
          @Name = name
          @Status = status
        end

        def deserialize(params)
          @License = params['License']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Name = params['Name']
          @Status = params['Status']
        end
      end

      # GetCrowdPackList返回参数结构体
      class GetCrowdPackListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 人群包信息列表
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsGetCrowdPackListResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsGetCrowdPackListResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCrowdUploadInfo请求参数结构体
      class GetCrowdUploadInfoRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param FileName: 上传文件名称
        # @type FileName: String

        attr_accessor :License, :FileName
        
        def initialize(license=nil, filename=nil)
          @License = license
          @FileName = filename
        end

        def deserialize(params)
          @License = params['License']
          @FileName = params['FileName']
        end
      end

      # GetCrowdUploadInfo返回参数结构体
      class GetCrowdUploadInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回信息
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsGetCrowdUploadInfoResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsGetCrowdUploadInfoResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSmsAmountInfo请求参数结构体
      class GetSmsAmountInfoRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String

        attr_accessor :License
        
        def initialize(license=nil)
          @License = license
        end

        def deserialize(params)
          @License = params['License']
        end
      end

      # GetSmsAmountInfo返回参数结构体
      class GetSmsAmountInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 短信账号额度接口
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.SmsAmountDataStruct`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SmsAmountDataStruct.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSmsCampaignStatus请求参数结构体
      class GetSmsCampaignStatusRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param CampaignId: 活动ID
        # @type CampaignId: Integer

        attr_accessor :License, :CampaignId
        
        def initialize(license=nil, campaignid=nil)
          @License = license
          @CampaignId = campaignid
        end

        def deserialize(params)
          @License = params['License']
          @CampaignId = params['CampaignId']
        end
      end

      # GetSmsCampaignStatus返回参数结构体
      class GetSmsCampaignStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 活动状态
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.PaasSmsCampaignStatusResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PaasSmsCampaignStatusResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 彩信实例信息
      # InstanceId   int
      # 	InstanceName string
      # 	Status       int
      # 	StatusInfo   string
      # 	AppSubId     string
      # 	Title        string
      # 	Sign         string
      # 	Contents     string
      # 	CreatedAt    string
      class MmsInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 彩信实例id
        # @type InstanceId: Integer
        # @param InstanceName: 彩信实例名称
        # @type InstanceName: String
        # @param Status: 状态是否通知
        # @type Status: Integer
        # @param StatusInfo: 实例审核状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusInfo: Array
        # @param AppSubId: 业务码
        # @type AppSubId: String
        # @param Title: 彩信标题
        # @type Title: String
        # @param Sign: 签名
        # @type Sign: String
        # @param Contents: 彩信内容
        # @type Contents: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param Urls: 样例配置的链接地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Urls: Array
        # @param PhoneType: 机型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneType: Array
        # @param CommonParams: 普通参数序号数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonParams: Array
        # @param UrlParams: 链接参数序号数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlParams: Array

        attr_accessor :InstanceId, :InstanceName, :Status, :StatusInfo, :AppSubId, :Title, :Sign, :Contents, :CreatedAt, :Urls, :PhoneType, :CommonParams, :UrlParams
        
        def initialize(instanceid=nil, instancename=nil, status=nil, statusinfo=nil, appsubid=nil, title=nil, sign=nil, contents=nil, createdat=nil, urls=nil, phonetype=nil, commonparams=nil, urlparams=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @StatusInfo = statusinfo
          @AppSubId = appsubid
          @Title = title
          @Sign = sign
          @Contents = contents
          @CreatedAt = createdat
          @Urls = urls
          @PhoneType = phonetype
          @CommonParams = commonparams
          @UrlParams = urlparams
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          unless params['StatusInfo'].nil?
            @StatusInfo = []
            params['StatusInfo'].each do |i|
              mmsinstancestateinfo_tmp = MmsInstanceStateInfo.new
              mmsinstancestateinfo_tmp.deserialize(i)
              @StatusInfo << mmsinstancestateinfo_tmp
            end
          end
          @AppSubId = params['AppSubId']
          @Title = params['Title']
          @Sign = params['Sign']
          @Contents = params['Contents']
          @CreatedAt = params['CreatedAt']
          @Urls = params['Urls']
          @PhoneType = params['PhoneType']
          @CommonParams = params['CommonParams']
          @UrlParams = params['UrlParams']
        end
      end

      # 彩信实例状态列表
      class MmsInstanceInfoList < TencentCloud::Common::AbstractModel
        # @param Total: 总数据量
        # @type Total: Integer
        # @param List: 彩信实例状态信息列表
        # @type List: Array

        attr_accessor :Total, :List
        
        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              mmsinstanceinfo_tmp = MmsInstanceInfo.new
              mmsinstanceinfo_tmp.deserialize(i)
              @List << mmsinstanceinfo_tmp
            end
          end
        end
      end

      # 彩信实例审核状态
      class MmsInstanceStateInfo < TencentCloud::Common::AbstractModel
        # @param Operator: 运营商
        # @type Operator: String
        # @param State: 审核状态：0未审核，1审核通过，2审核拒绝
        # @type State: Integer

        attr_accessor :Operator, :State
        
        def initialize(operator=nil, state=nil)
          @Operator = operator
          @State = state
        end

        def deserialize(params)
          @Operator = params['Operator']
          @State = params['State']
        end
      end

      # 短信模板编辑接口出参
      class ModifySmsTemplateDataStruct < TencentCloud::Common::AbstractModel
        # @param TemplateId: 短信模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # ModifySmsTemplate请求参数结构体
      class ModifySmsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param TemplateId: 短信模板id
        # @type TemplateId: Integer
        # @param SignID: 短信签名，创建签名时返回
        # @type SignID: Integer
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TemplateContent: 短信内容，动态内容使用占位符{1}，{2}等表示
        # @type TemplateContent: String
        # @param SmsType: 短信类型：{0:普通短信，1:营销短信}
        # @type SmsType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param Remark: 短信模板标签
        # @type Remark: String
        # @param Urls: 发送短信活动时配置的落地链接地址,仅用作短信活动
        # @type Urls: Array
        # @param CommonParams: 发送短信活动时用于展示人群包动态参数模板占位符序号,仅用作短信活动
        # @type CommonParams: Array
        # @param UrlParams: 发送短信活动时用于展示短连接模板占位符序号,仅用作短信活动
        # @type UrlParams: Array

        attr_accessor :License, :TemplateId, :SignID, :TemplateName, :TemplateContent, :SmsType, :International, :Remark, :Urls, :CommonParams, :UrlParams
        
        def initialize(license=nil, templateid=nil, signid=nil, templatename=nil, templatecontent=nil, smstype=nil, international=nil, remark=nil, urls=nil, commonparams=nil, urlparams=nil)
          @License = license
          @TemplateId = templateid
          @SignID = signid
          @TemplateName = templatename
          @TemplateContent = templatecontent
          @SmsType = smstype
          @International = international
          @Remark = remark
          @Urls = urls
          @CommonParams = commonparams
          @UrlParams = urlparams
        end

        def deserialize(params)
          @License = params['License']
          @TemplateId = params['TemplateId']
          @SignID = params['SignID']
          @TemplateName = params['TemplateName']
          @TemplateContent = params['TemplateContent']
          @SmsType = params['SmsType']
          @International = params['International']
          @Remark = params['Remark']
          @Urls = params['Urls']
          @CommonParams = params['CommonParams']
          @UrlParams = params['UrlParams']
        end
      end

      # ModifySmsTemplate返回参数结构体
      class ModifySmsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.ModifySmsTemplateDataStruct`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ModifySmsTemplateDataStruct.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建签名返回结构
      class PaasCreateSignResp < TencentCloud::Common::AbstractModel
        # @param SignId: 签名id
        # @type SignId: Integer

        attr_accessor :SignId
        
        def initialize(signid=nil)
          @SignId = signid
        end

        def deserialize(params)
          @SignId = params['SignId']
        end
      end

      # 拉取活动状态返回
      class PaasSmsCampaignStatusResp < TencentCloud::Common::AbstractModel
        # @param Status: 0-未发送 1-发送中 2-发送结束 3-发送取消
        # @type Status: Integer

        attr_accessor :Status
        
        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 短信发送人群包策略
      class PaasStrategy < TencentCloud::Common::AbstractModel
        # @param CrowdID: 人群包id
        # @type CrowdID: Integer
        # @param Items: 待选素材数组
        # @type Items: Array

        attr_accessor :CrowdID, :Items
        
        def initialize(crowdid=nil, items=nil)
          @CrowdID = crowdid
          @Items = items
        end

        def deserialize(params)
          @CrowdID = params['CrowdID']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              paasstrategyitem_tmp = PaasStrategyItem.new
              paasstrategyitem_tmp.deserialize(i)
              @Items << paasstrategyitem_tmp
            end
          end
        end
      end

      # 短信活动策略元素
      class PaasStrategyItem < TencentCloud::Common::AbstractModel
        # @param Id: 短信模板id或超级短信样例id
        # @type Id: Integer
        # @param ContentType: 素材类型 0-普短 1-超短
        # @type ContentType: Integer

        attr_accessor :Id, :ContentType
        
        def initialize(id=nil, contenttype=nil)
          @Id = id
          @ContentType = contenttype
        end

        def deserialize(params)
          @Id = params['Id']
          @ContentType = params['ContentType']
        end
      end

      # PushMmsContent请求参数结构体
      class PushMmsContentRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param InstanceId: 素材样例id
        # @type InstanceId: Integer
        # @param Tel: 手机号
        # @type Tel: String
        # @param Session: 附带数据字段
        # @type Session: String
        # @param DynamicParaKey: 动态参数key(即申请样例时设置的u_或p_开头的动态参数,要求序号有序)
        # @type DynamicParaKey: Array
        # @param DynamicParaValue: 动态参数值,和DynamicParaKey对应
        # @type DynamicParaValue: Array

        attr_accessor :License, :InstanceId, :Tel, :Session, :DynamicParaKey, :DynamicParaValue
        
        def initialize(license=nil, instanceid=nil, tel=nil, session=nil, dynamicparakey=nil, dynamicparavalue=nil)
          @License = license
          @InstanceId = instanceid
          @Tel = tel
          @Session = session
          @DynamicParaKey = dynamicparakey
          @DynamicParaValue = dynamicparavalue
        end

        def deserialize(params)
          @License = params['License']
          @InstanceId = params['InstanceId']
          @Tel = params['Tel']
          @Session = params['Session']
          @DynamicParaKey = params['DynamicParaKey']
          @DynamicParaValue = params['DynamicParaValue']
        end
      end

      # 发送超级短信返回
      class PushMmsContentResp < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回码：0-成功 其它-失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息
        # @type ReturnMsg: String
        # @param MessageId: 消息回执id
        # @type MessageId: Integer

        attr_accessor :ReturnCode, :ReturnMsg, :MessageId
        
        def initialize(returncode=nil, returnmsg=nil, messageid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @MessageId = messageid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @MessageId = params['MessageId']
        end
      end

      # PushMmsContent返回参数结构体
      class PushMmsContentResponse < TencentCloud::Common::AbstractModel
        # @param Data: 推送短信返回信息
        # @type Data: :class:`Tencentcloud::Zj.v20190121.models.PushMmsContentResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PushMmsContentResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 发送短信返回
      class SendSmsPaasDataStruct < TencentCloud::Common::AbstractModel
        # @param SerialNo: 发送流水号
        # @type SerialNo: String
        # @param PhoneNumber: 手机号码,e.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumber: String
        # @param Fee: 计费条数
        # @type Fee: Integer
        # @param Code: OK为成功
        # @type Code: String
        # @param Message: 短信请求错误码描述
        # @type Message: String

        attr_accessor :SerialNo, :PhoneNumber, :Fee, :Code, :Message
        
        def initialize(serialno=nil, phonenumber=nil, fee=nil, code=nil, message=nil)
          @SerialNo = serialno
          @PhoneNumber = phonenumber
          @Fee = fee
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @SerialNo = params['SerialNo']
          @PhoneNumber = params['PhoneNumber']
          @Fee = params['Fee']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # SendSms请求参数结构体
      class SendSmsRequest < TencentCloud::Common::AbstractModel
        # @param License: 商户证书
        # @type License: String
        # @param Phone: 手机号码,采用 e.164 标准，格式为+[国家或地区码][手机号]，单次请求最多支持200个手机号且要求全为境内手机号,如:+8613800138000
        # @type Phone: Array
        # @param TemplateId: 短信模板id(推荐使用模板id发送,使用内容发送时模板id留空)
        # @type TemplateId: String
        # @param Params: 模板参数，若无模板参数，则设置为空。
        # @type Params: Array
        # @param Sign: 短信签名内容，使用 UTF-8 编码，必须填写已审核通过的签名。注：国内短信为必填参数。
        # @type Sign: String
        # @param SenderId: 国际/港澳台短信 senderid，国内短信填空
        # @type SenderId: String
        # @param SmsType: 短信类型：{0:普通短信，1:营销短信}，使用内容发送时必填
        # @type SmsType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。使用内容发送时必填
        # @type International: Integer
        # @param Content: 发送使用的模板内容,如果有占位符,此处也包括占位符,占位符的实际内容通过Params参数传递,使用模板id发送时此字段为空
        # @type Content: String

        attr_accessor :License, :Phone, :TemplateId, :Params, :Sign, :SenderId, :SmsType, :International, :Content
        
        def initialize(license=nil, phone=nil, templateid=nil, params=nil, sign=nil, senderid=nil, smstype=nil, international=nil, content=nil)
          @License = license
          @Phone = phone
          @TemplateId = templateid
          @Params = params
          @Sign = sign
          @SenderId = senderid
          @SmsType = smstype
          @International = international
          @Content = content
        end

        def deserialize(params)
          @License = params['License']
          @Phone = params['Phone']
          @TemplateId = params['TemplateId']
          @Params = params['Params']
          @Sign = params['Sign']
          @SenderId = params['SenderId']
          @SmsType = params['SmsType']
          @International = params['International']
          @Content = params['Content']
        end
      end

      # SendSms返回参数结构体
      class SendSmsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 出参数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sendsmspaasdatastruct_tmp = SendSmsPaasDataStruct.new
              sendsmspaasdatastruct_tmp.deserialize(i)
              @Data << sendsmspaasdatastruct_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加短信人群包信息接口返回
      class SmsAddCrowdPackInfoResponse < TencentCloud::Common::AbstractModel
        # @param ID: 人群包id
        # @type ID: Integer

        attr_accessor :ID
        
        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # 短信子账号额度接口出参
      class SmsAmountDataStruct < TencentCloud::Common::AbstractModel
        # @param SmsCampaignAmount: 短信活动配额
        # @type SmsCampaignAmount: Integer
        # @param SmsCampaignConsume: 短信活动消耗配额
        # @type SmsCampaignConsume: Integer
        # @param SmsSendAmount: 短信发送额度
        # @type SmsSendAmount: Integer
        # @param SmsSendConsume: 短信发送消耗额度
        # @type SmsSendConsume: Integer
        # @param MmsCampaignAmount: 超短活动额度
        # @type MmsCampaignAmount: Integer
        # @param MmsCampaignConsume: 超短活动消耗额度
        # @type MmsCampaignConsume: Integer
        # @param MmsSendAmount: 超短短信额度
        # @type MmsSendAmount: Integer
        # @param MmsSendConsume: 超短短信消耗额度
        # @type MmsSendConsume: Integer

        attr_accessor :SmsCampaignAmount, :SmsCampaignConsume, :SmsSendAmount, :SmsSendConsume, :MmsCampaignAmount, :MmsCampaignConsume, :MmsSendAmount, :MmsSendConsume
        
        def initialize(smscampaignamount=nil, smscampaignconsume=nil, smssendamount=nil, smssendconsume=nil, mmscampaignamount=nil, mmscampaignconsume=nil, mmssendamount=nil, mmssendconsume=nil)
          @SmsCampaignAmount = smscampaignamount
          @SmsCampaignConsume = smscampaignconsume
          @SmsSendAmount = smssendamount
          @SmsSendConsume = smssendconsume
          @MmsCampaignAmount = mmscampaignamount
          @MmsCampaignConsume = mmscampaignconsume
          @MmsSendAmount = mmssendamount
          @MmsSendConsume = mmssendconsume
        end

        def deserialize(params)
          @SmsCampaignAmount = params['SmsCampaignAmount']
          @SmsCampaignConsume = params['SmsCampaignConsume']
          @SmsSendAmount = params['SmsSendAmount']
          @SmsSendConsume = params['SmsSendConsume']
          @MmsCampaignAmount = params['MmsCampaignAmount']
          @MmsCampaignConsume = params['MmsCampaignConsume']
          @MmsSendAmount = params['MmsSendAmount']
          @MmsSendConsume = params['MmsSendConsume']
        end
      end

      # 短信活动统计人群包数据
      class SmsCampaignStatisticsCrowdData < TencentCloud::Common::AbstractModel
        # @param CrowdId: 人群包id
        # @type CrowdId: Integer
        # @param CrowdName: 人群包名称
        # @type CrowdName: String
        # @param CrowdCount: 人群包目标触达总数
        # @type CrowdCount: Integer
        # @param TemplateList: 模板列表
        # @type TemplateList: Array

        attr_accessor :CrowdId, :CrowdName, :CrowdCount, :TemplateList
        
        def initialize(crowdid=nil, crowdname=nil, crowdcount=nil, templatelist=nil)
          @CrowdId = crowdid
          @CrowdName = crowdname
          @CrowdCount = crowdcount
          @TemplateList = templatelist
        end

        def deserialize(params)
          @CrowdId = params['CrowdId']
          @CrowdName = params['CrowdName']
          @CrowdCount = params['CrowdCount']
          unless params['TemplateList'].nil?
            @TemplateList = []
            params['TemplateList'].each do |i|
              smscampaignstatisticstemplatedata_tmp = SmsCampaignStatisticsTemplateData.new
              smscampaignstatisticstemplatedata_tmp.deserialize(i)
              @TemplateList << smscampaignstatisticstemplatedata_tmp
            end
          end
        end
      end

      # 短信活动统计响应
      class SmsCampaignStatisticsData < TencentCloud::Common::AbstractModel
        # @param CampaignId: 活动Id
        # @type CampaignId: Integer
        # @param Statistics: 统计数据
        # @type Statistics: Array

        attr_accessor :CampaignId, :Statistics
        
        def initialize(campaignid=nil, statistics=nil)
          @CampaignId = campaignid
          @Statistics = statistics
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
          unless params['Statistics'].nil?
            @Statistics = []
            params['Statistics'].each do |i|
              smscampaignstatisticscrowddata_tmp = SmsCampaignStatisticsCrowdData.new
              smscampaignstatisticscrowddata_tmp.deserialize(i)
              @Statistics << smscampaignstatisticscrowddata_tmp
            end
          end
        end
      end

      # 短信活动统计模板展示结构
      class SmsCampaignStatisticsTemplateData < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板或样例id
        # @type TemplateId: String
        # @param TemplateContent: 模板内容
        # @type TemplateContent: String
        # @param SendCount: 触达成功数
        # @type SendCount: Integer
        # @param ClickCount: 短链点击数
        # @type ClickCount: Integer

        attr_accessor :TemplateId, :TemplateContent, :SendCount, :ClickCount
        
        def initialize(templateid=nil, templatecontent=nil, sendcount=nil, clickcount=nil)
          @TemplateId = templateid
          @TemplateContent = templatecontent
          @SendCount = sendcount
          @ClickCount = clickcount
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateContent = params['TemplateContent']
          @SendCount = params['SendCount']
          @ClickCount = params['ClickCount']
        end
      end

      # 创建短信活动返回结构
      class SmsCreateCampaignResponse < TencentCloud::Common::AbstractModel
        # @param CampaignId: 活动id
        # @type CampaignId: Integer

        attr_accessor :CampaignId
        
        def initialize(campaignid=nil)
          @CampaignId = campaignid
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
        end
      end

      # 短信获取人群包列表的返回数据信息
      class SmsGetCrowdPackList < TencentCloud::Common::AbstractModel
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param ID: 人群包id
        # @type ID: Integer
        # @param Name: 人群包名称
        # @type Name: String
        # @param Status: 人群包状态
        # @type Status: Integer
        # @param PhoneNum: 人群包手机号数量
        # @type PhoneNum: Integer
        # @param Tag: 人群包标签信息
        # @type Tag: String
        # @param MD5: 人群包md5
        # @type MD5: String
        # @param FileName: 人群包文件名称
        # @type FileName: String
        # @param Desc: 人群包描述
        # @type Desc: String

        attr_accessor :CreatedAt, :ID, :Name, :Status, :PhoneNum, :Tag, :MD5, :FileName, :Desc
        
        def initialize(createdat=nil, id=nil, name=nil, status=nil, phonenum=nil, tag=nil, md5=nil, filename=nil, desc=nil)
          @CreatedAt = createdat
          @ID = id
          @Name = name
          @Status = status
          @PhoneNum = phonenum
          @Tag = tag
          @MD5 = md5
          @FileName = filename
          @Desc = desc
        end

        def deserialize(params)
          @CreatedAt = params['CreatedAt']
          @ID = params['ID']
          @Name = params['Name']
          @Status = params['Status']
          @PhoneNum = params['PhoneNum']
          @Tag = params['Tag']
          @MD5 = params['MD5']
          @FileName = params['FileName']
          @Desc = params['Desc']
        end
      end

      # 短信人群包返回信息
      class SmsGetCrowdPackListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 人群包总数
        # @type Total: Integer
        # @param List: 人群包返回数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :List
        
        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              smsgetcrowdpacklist_tmp = SmsGetCrowdPackList.new
              smsgetcrowdpacklist_tmp.deserialize(i)
              @List << smsgetcrowdpacklist_tmp
            end
          end
        end
      end

      # 获取短信人群包上传信息返回
      class SmsGetCrowdUploadInfoResponse < TencentCloud::Common::AbstractModel
        # @param ExpiredTime: 过期时间
        # @type ExpiredTime: Integer
        # @param SessionToken: 会话token
        # @type SessionToken: String
        # @param TmpSecretId: 临时密钥id
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥
        # @type TmpSecretKey: String
        # @param CosInfo: cos信息
        # @type CosInfo: :class:`Tencentcloud::Zj.v20190121.models.UploadFansInfoCosInfo`

        attr_accessor :ExpiredTime, :SessionToken, :TmpSecretId, :TmpSecretKey, :CosInfo
        
        def initialize(expiredtime=nil, sessiontoken=nil, tmpsecretid=nil, tmpsecretkey=nil, cosinfo=nil)
          @ExpiredTime = expiredtime
          @SessionToken = sessiontoken
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @CosInfo = cosinfo
        end

        def deserialize(params)
          @ExpiredTime = params['ExpiredTime']
          @SessionToken = params['SessionToken']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          unless params['CosInfo'].nil?
            @CosInfo = UploadFansInfoCosInfo.new
            @CosInfo.deserialize(params['CosInfo'])
          end
        end
      end

      # 短信api成功返回信息
      class SmsSuccessResponse < TencentCloud::Common::AbstractModel
        # @param Message: 成功返回信息
        # @type Message: String

        attr_accessor :Message
        
        def initialize(message=nil)
          @Message = message
        end

        def deserialize(params)
          @Message = params['Message']
        end
      end

      # 接口返回给服务商的COS路径等信息
      class UploadFansInfoCosInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: COS bucket
        # @type Bucket: String
        # @param Key: COS路径
        # @type Key: String
        # @param Region: COS区域
        # @type Region: String

        attr_accessor :Bucket, :Key, :Region
        
        def initialize(bucket=nil, key=nil, region=nil)
          @Bucket = bucket
          @Key = key
          @Region = region
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Key = params['Key']
          @Region = params['Region']
        end
      end

    end
  end
end

