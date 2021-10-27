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
  module Sms
    module V20210111
      # 添加签名响应
      class AddSignStatus < TencentCloud::Common::AbstractModel
        # @param SignId: 签名ID。
        # @type SignId: Integer

        attr_accessor :SignId
        
        def initialize(signid=nil)
          @SignId = signid
        end

        def deserialize(params)
          @SignId = params['SignId']
        end
      end

      # AddSmsSign请求参数结构体
      class AddSmsSignRequest < TencentCloud::Common::AbstractModel
        # @param SignName: 签名名称。
        # 注：不能重复申请已通过或待审核的签名。
        # @type SignName: String
        # @param SignType: 签名类型。其中每种类型后面标注了其可选的 DocumentType（证明类型）：
        # 0：公司，可选 DocumentType 有（0，1，2，3）。
        # 1：APP，可选 DocumentType 有（0，1，2，3，4） 。
        # 2：网站，可选 DocumentType 有（0，1，2，3，5）。
        # 3：公众号或者小程序，可选 DocumentType 有（0，1，2，3，6）。
        # 4：商标，可选 DocumentType 有（7）。
        # 5：政府/机关事业单位/其他机构，可选 DocumentType 有（2，3）。
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
        # 7：商标注册书。
        # 注：必选按照 SignType 选择对应的DocumentType。
        # @type DocumentType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param SignPurpose: 签名用途：
        # 0：自用。
        # 1：他用。
        # @type SignPurpose: Integer
        # @param ProofImage: 签名对应的资质证明图片需先进行 base64 编码格式转换，将转换后的字符串去掉前缀`data:image/jpeg;base64,`再赋值给该参数。
        # @type ProofImage: String
        # @param CommissionImage: 委托授权证明。选择 SignPurpose 为他用之后需要提交委托的授权证明。
        # 图片需先进行 base64 编码格式转换，将转换后的字符串去掉前缀`data:image/jpeg;base64,`再赋值给该参数。
        # 注：只有 SignPurpose 在选择为 1（他用）时，这个字段才会生效。
        # @type CommissionImage: String
        # @param Remark: 签名的申请备注。
        # @type Remark: String

        attr_accessor :SignName, :SignType, :DocumentType, :International, :SignPurpose, :ProofImage, :CommissionImage, :Remark
        
        def initialize(signname=nil, signtype=nil, documenttype=nil, international=nil, signpurpose=nil, proofimage=nil, commissionimage=nil, remark=nil)
          @SignName = signname
          @SignType = signtype
          @DocumentType = documenttype
          @International = international
          @SignPurpose = signpurpose
          @ProofImage = proofimage
          @CommissionImage = commissionimage
          @Remark = remark
        end

        def deserialize(params)
          @SignName = params['SignName']
          @SignType = params['SignType']
          @DocumentType = params['DocumentType']
          @International = params['International']
          @SignPurpose = params['SignPurpose']
          @ProofImage = params['ProofImage']
          @CommissionImage = params['CommissionImage']
          @Remark = params['Remark']
        end
      end

      # AddSmsSign返回参数结构体
      class AddSmsSignResponse < TencentCloud::Common::AbstractModel
        # @param AddSignStatus: 添加签名响应
        # @type AddSignStatus: :class:`Tencentcloud::Sms.v20210111.models.AddSignStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddSignStatus, :RequestId
        
        def initialize(addsignstatus=nil, requestid=nil)
          @AddSignStatus = addsignstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddSignStatus'].nil?
            @AddSignStatus = AddSignStatus.new
            @AddSignStatus.deserialize(params['AddSignStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddSmsTemplate请求参数结构体
      class AddSmsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param TemplateContent: 模板内容。
        # @type TemplateContent: String
        # @param SmsType: 短信类型，0表示普通短信, 1表示营销短信。
        # @type SmsType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param Remark: 模板备注，例如申请原因，使用场景等。
        # @type Remark: String

        attr_accessor :TemplateName, :TemplateContent, :SmsType, :International, :Remark
        
        def initialize(templatename=nil, templatecontent=nil, smstype=nil, international=nil, remark=nil)
          @TemplateName = templatename
          @TemplateContent = templatecontent
          @SmsType = smstype
          @International = international
          @Remark = remark
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @TemplateContent = params['TemplateContent']
          @SmsType = params['SmsType']
          @International = params['International']
          @Remark = params['Remark']
        end
      end

      # AddSmsTemplate返回参数结构体
      class AddSmsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param AddTemplateStatus: 添加短信模板响应包体
        # @type AddTemplateStatus: :class:`Tencentcloud::Sms.v20210111.models.AddTemplateStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddTemplateStatus, :RequestId
        
        def initialize(addtemplatestatus=nil, requestid=nil)
          @AddTemplateStatus = addtemplatestatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddTemplateStatus'].nil?
            @AddTemplateStatus = AddTemplateStatus.new
            @AddTemplateStatus.deserialize(params['AddTemplateStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加模板参数响应
      class AddTemplateStatus < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID。
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # 回执数据统计响应包体
      class CallbackStatusStatistics < TencentCloud::Common::AbstractModel
        # @param CallbackCount: 短信回执量统计。
        # @type CallbackCount: Integer
        # @param RequestSuccessCount: 短信提交成功量统计。
        # @type RequestSuccessCount: Integer
        # @param CallbackFailCount: 短信回执失败量统计。
        # @type CallbackFailCount: Integer
        # @param CallbackSuccessCount: 短信回执成功量统计。
        # @type CallbackSuccessCount: Integer
        # @param InternalErrorCount: 运营商内部错误统计。
        # @type InternalErrorCount: Integer
        # @param InvalidNumberCount: 号码无效或空号统计。
        # @type InvalidNumberCount: Integer
        # @param ShutdownErrorCount: 停机、关机等错误统计。
        # @type ShutdownErrorCount: Integer
        # @param BlackListCount: 号码拉入黑名单统计。
        # @type BlackListCount: Integer
        # @param FrequencyLimitCount: 运营商频率限制统计。
        # @type FrequencyLimitCount: Integer

        attr_accessor :CallbackCount, :RequestSuccessCount, :CallbackFailCount, :CallbackSuccessCount, :InternalErrorCount, :InvalidNumberCount, :ShutdownErrorCount, :BlackListCount, :FrequencyLimitCount
        
        def initialize(callbackcount=nil, requestsuccesscount=nil, callbackfailcount=nil, callbacksuccesscount=nil, internalerrorcount=nil, invalidnumbercount=nil, shutdownerrorcount=nil, blacklistcount=nil, frequencylimitcount=nil)
          @CallbackCount = callbackcount
          @RequestSuccessCount = requestsuccesscount
          @CallbackFailCount = callbackfailcount
          @CallbackSuccessCount = callbacksuccesscount
          @InternalErrorCount = internalerrorcount
          @InvalidNumberCount = invalidnumbercount
          @ShutdownErrorCount = shutdownerrorcount
          @BlackListCount = blacklistcount
          @FrequencyLimitCount = frequencylimitcount
        end

        def deserialize(params)
          @CallbackCount = params['CallbackCount']
          @RequestSuccessCount = params['RequestSuccessCount']
          @CallbackFailCount = params['CallbackFailCount']
          @CallbackSuccessCount = params['CallbackSuccessCount']
          @InternalErrorCount = params['InternalErrorCount']
          @InvalidNumberCount = params['InvalidNumberCount']
          @ShutdownErrorCount = params['ShutdownErrorCount']
          @BlackListCount = params['BlackListCount']
          @FrequencyLimitCount = params['FrequencyLimitCount']
        end
      end

      # CallbackStatusStatistics请求参数结构体
      class CallbackStatusStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 起始时间，格式为yyyymmddhh，精确到小时，例如2021050113，表示2021年5月1号13时。
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式为yyyymmddhh，精确到小时，例如2021050118，表示2021年5月1号18时。
        # 注：EndTime 必须大于 BeginTime，且相差不超过32天。
        # @type EndTime: String
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        # @type SmsSdkAppId: String
        # @param Limit: 最大上限。
        # 注：目前固定设置为0。
        # @type Limit: Integer
        # @param Offset: 偏移量。
        # 注：目前固定设置为0。
        # @type Offset: Integer

        attr_accessor :BeginTime, :EndTime, :SmsSdkAppId, :Limit, :Offset
        
        def initialize(begintime=nil, endtime=nil, smssdkappid=nil, limit=nil, offset=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @SmsSdkAppId = smssdkappid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @SmsSdkAppId = params['SmsSdkAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # CallbackStatusStatistics返回参数结构体
      class CallbackStatusStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param CallbackStatusStatistics: 回执数据统计响应包体。
        # @type CallbackStatusStatistics: :class:`Tencentcloud::Sms.v20210111.models.CallbackStatusStatistics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallbackStatusStatistics, :RequestId
        
        def initialize(callbackstatusstatistics=nil, requestid=nil)
          @CallbackStatusStatistics = callbackstatusstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CallbackStatusStatistics'].nil?
            @CallbackStatusStatistics = CallbackStatusStatistics.new
            @CallbackStatusStatistics.deserialize(params['CallbackStatusStatistics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除签名响应
      class DeleteSignStatus < TencentCloud::Common::AbstractModel
        # @param DeleteStatus: 删除状态信息。
        # @type DeleteStatus: String
        # @param DeleteTime: 删除时间，UNIX 时间戳（单位：秒）。
        # @type DeleteTime: Integer

        attr_accessor :DeleteStatus, :DeleteTime
        
        def initialize(deletestatus=nil, deletetime=nil)
          @DeleteStatus = deletestatus
          @DeleteTime = deletetime
        end

        def deserialize(params)
          @DeleteStatus = params['DeleteStatus']
          @DeleteTime = params['DeleteTime']
        end
      end

      # DeleteSmsSign请求参数结构体
      class DeleteSmsSignRequest < TencentCloud::Common::AbstractModel
        # @param SignId: 待删除的签名 ID。
        # @type SignId: Integer

        attr_accessor :SignId
        
        def initialize(signid=nil)
          @SignId = signid
        end

        def deserialize(params)
          @SignId = params['SignId']
        end
      end

      # DeleteSmsSign返回参数结构体
      class DeleteSmsSignResponse < TencentCloud::Common::AbstractModel
        # @param DeleteSignStatus: 删除签名响应
        # @type DeleteSignStatus: :class:`Tencentcloud::Sms.v20210111.models.DeleteSignStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteSignStatus, :RequestId
        
        def initialize(deletesignstatus=nil, requestid=nil)
          @DeleteSignStatus = deletesignstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteSignStatus'].nil?
            @DeleteSignStatus = DeleteSignStatus.new
            @DeleteSignStatus.deserialize(params['DeleteSignStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteSmsTemplate请求参数结构体
      class DeleteSmsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 待删除的模板 ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteSmsTemplate返回参数结构体
      class DeleteSmsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param DeleteTemplateStatus: 删除模板响应
        # @type DeleteTemplateStatus: :class:`Tencentcloud::Sms.v20210111.models.DeleteTemplateStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteTemplateStatus, :RequestId
        
        def initialize(deletetemplatestatus=nil, requestid=nil)
          @DeleteTemplateStatus = deletetemplatestatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteTemplateStatus'].nil?
            @DeleteTemplateStatus = DeleteTemplateStatus.new
            @DeleteTemplateStatus.deserialize(params['DeleteTemplateStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除模板响应
      class DeleteTemplateStatus < TencentCloud::Common::AbstractModel
        # @param DeleteStatus: 删除状态信息。
        # @type DeleteStatus: String
        # @param DeleteTime: 删除时间，UNIX 时间戳（单位：秒）。
        # @type DeleteTime: Integer

        attr_accessor :DeleteStatus, :DeleteTime
        
        def initialize(deletestatus=nil, deletetime=nil)
          @DeleteStatus = deletestatus
          @DeleteTime = deletetime
        end

        def deserialize(params)
          @DeleteStatus = params['DeleteStatus']
          @DeleteTime = params['DeleteTime']
        end
      end

      # DescribePhoneNumberInfo请求参数结构体
      class DescribePhoneNumberInfoRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumberSet: 查询手机号码，采用 E.164 标准，格式为+[国家或地区码][手机号]，单次请求最多支持200个手机号。
        # 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumberSet: Array

        attr_accessor :PhoneNumberSet
        
        def initialize(phonenumberset=nil)
          @PhoneNumberSet = phonenumberset
        end

        def deserialize(params)
          @PhoneNumberSet = params['PhoneNumberSet']
        end
      end

      # DescribePhoneNumberInfo返回参数结构体
      class DescribePhoneNumberInfoResponse < TencentCloud::Common::AbstractModel
        # @param PhoneNumberInfoSet: 获取号码信息。
        # @type PhoneNumberInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PhoneNumberInfoSet, :RequestId
        
        def initialize(phonenumberinfoset=nil, requestid=nil)
          @PhoneNumberInfoSet = phonenumberinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PhoneNumberInfoSet'].nil?
            @PhoneNumberInfoSet = []
            params['PhoneNumberInfoSet'].each do |i|
              phonenumberinfo_tmp = PhoneNumberInfo.new
              phonenumberinfo_tmp.deserialize(i)
              @PhoneNumberInfoSet << phonenumberinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取短信签名信息响应
      class DescribeSignListStatus < TencentCloud::Common::AbstractModel
        # @param SignId: 签名ID。
        # @type SignId: Integer
        # @param International: 是否国际/港澳台短信，其中0表示国内短信，1表示国际/港澳台短信。
        # @type International: Integer
        # @param StatusCode: 申请签名状态，其中0表示审核通过，1表示审核中。
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
        # @param SignIdSet: 签名 ID 数组。
        # 注：默认数组最大长度100。
        # @type SignIdSet: Array
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer

        attr_accessor :SignIdSet, :International
        
        def initialize(signidset=nil, international=nil)
          @SignIdSet = signidset
          @International = international
        end

        def deserialize(params)
          @SignIdSet = params['SignIdSet']
          @International = params['International']
        end
      end

      # DescribeSmsSignList返回参数结构体
      class DescribeSmsSignListResponse < TencentCloud::Common::AbstractModel
        # @param DescribeSignListStatusSet: 获取签名信息响应
        # @type DescribeSignListStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DescribeSignListStatusSet, :RequestId
        
        def initialize(describesignliststatusset=nil, requestid=nil)
          @DescribeSignListStatusSet = describesignliststatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DescribeSignListStatusSet'].nil?
            @DescribeSignListStatusSet = []
            params['DescribeSignListStatusSet'].each do |i|
              describesignliststatus_tmp = DescribeSignListStatus.new
              describesignliststatus_tmp.deserialize(i)
              @DescribeSignListStatusSet << describesignliststatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSmsTemplateList请求参数结构体
      class DescribeSmsTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param TemplateIdSet: 模板 ID 数组。
        # <dx-alert infotype="notice" title="注意">默认数组长度最大100</dx-alert>
        # @type TemplateIdSet: Array
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer

        attr_accessor :TemplateIdSet, :International
        
        def initialize(templateidset=nil, international=nil)
          @TemplateIdSet = templateidset
          @International = international
        end

        def deserialize(params)
          @TemplateIdSet = params['TemplateIdSet']
          @International = params['International']
        end
      end

      # DescribeSmsTemplateList返回参数结构体
      class DescribeSmsTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param DescribeTemplateStatusSet: 获取短信模板信息响应
        # @type DescribeTemplateStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DescribeTemplateStatusSet, :RequestId
        
        def initialize(describetemplatestatusset=nil, requestid=nil)
          @DescribeTemplateStatusSet = describetemplatestatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DescribeTemplateStatusSet'].nil?
            @DescribeTemplateStatusSet = []
            params['DescribeTemplateStatusSet'].each do |i|
              describetemplateliststatus_tmp = DescribeTemplateListStatus.new
              describetemplateliststatus_tmp.deserialize(i)
              @DescribeTemplateStatusSet << describetemplateliststatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取短信模板信息响应
      class DescribeTemplateListStatus < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID。
        # @type TemplateId: Integer
        # @param International: 是否国际/港澳台短信，其中0表示国内短信，1表示国际/港澳台短信。
        # @type International: Integer
        # @param StatusCode: 申请模板状态，其中0表示审核通过，1表示审核中，-1表示审核未通过或审核失败。
        # @type StatusCode: Integer
        # @param ReviewReply: 审核回复，审核人员审核后给出的回复，通常是审核未通过的原因。
        # @type ReviewReply: String
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param CreateTime: 提交审核时间，UNIX 时间戳（单位：秒）。
        # @type CreateTime: Integer
        # @param TemplateContent: 模板内容。
        # @type TemplateContent: String

        attr_accessor :TemplateId, :International, :StatusCode, :ReviewReply, :TemplateName, :CreateTime, :TemplateContent
        
        def initialize(templateid=nil, international=nil, statuscode=nil, reviewreply=nil, templatename=nil, createtime=nil, templatecontent=nil)
          @TemplateId = templateid
          @International = international
          @StatusCode = statuscode
          @ReviewReply = reviewreply
          @TemplateName = templatename
          @CreateTime = createtime
          @TemplateContent = templatecontent
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @International = params['International']
          @StatusCode = params['StatusCode']
          @ReviewReply = params['ReviewReply']
          @TemplateName = params['TemplateName']
          @CreateTime = params['CreateTime']
          @TemplateContent = params['TemplateContent']
        end
      end

      # 修改签名响应
      class ModifySignStatus < TencentCloud::Common::AbstractModel
        # @param SignId: 签名ID。
        # @type SignId: Integer

        attr_accessor :SignId
        
        def initialize(signid=nil)
          @SignId = signid
        end

        def deserialize(params)
          @SignId = params['SignId']
        end
      end

      # ModifySmsSign请求参数结构体
      class ModifySmsSignRequest < TencentCloud::Common::AbstractModel
        # @param SignId: 待修改的签名 ID。
        # @type SignId: Integer
        # @param SignName: 签名名称。
        # @type SignName: String
        # @param SignType: 签名类型。其中每种类型后面标注了其可选的 DocumentType（证明类型）：
        # 0：公司，可选 DocumentType 有（0，1，2，3）。
        # 1：APP，可选 DocumentType 有（0，1，2，3，4） 。
        # 2：网站，可选 DocumentType 有（0，1，2，3，5）。
        # 3：公众号或者小程序，可选 DocumentType 有（0，1，2，3，6）。
        # 4：商标，可选 DocumentType 有（7）。
        # 5：政府/机关事业单位/其他机构，可选 DocumentType 有（2，3）。
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
        # 7：商标注册书。
        # 注：必选按照 SignType 选择对应的DocumentType。
        # @type DocumentType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # 注：需要和待修改签名International值保持一致，该参数不能直接修改国内签名到国际签名。
        # @type International: Integer
        # @param SignPurpose: 签名用途：
        # 0：自用。
        # 1：他用。
        # @type SignPurpose: Integer
        # @param ProofImage: 签名对应的资质证明图片需先进行 base64 编码格式转换，将转换后的字符串去掉前缀`data:image/jpeg;base64,`再赋值给该参数。
        # @type ProofImage: String
        # @param CommissionImage: 委托授权证明。选择 SignPurpose 为他用之后需要提交委托的授权证明。
        # 图片需先进行 base64 编码格式转换，将转换后的字符串去掉前缀`data:image/jpeg;base64,`再赋值给该参数。
        # 注：只有 SignPurpose 在选择为 1（他用）时，这个字段才会生效。
        # @type CommissionImage: String
        # @param Remark: 签名的申请备注。
        # @type Remark: String

        attr_accessor :SignId, :SignName, :SignType, :DocumentType, :International, :SignPurpose, :ProofImage, :CommissionImage, :Remark
        
        def initialize(signid=nil, signname=nil, signtype=nil, documenttype=nil, international=nil, signpurpose=nil, proofimage=nil, commissionimage=nil, remark=nil)
          @SignId = signid
          @SignName = signname
          @SignType = signtype
          @DocumentType = documenttype
          @International = international
          @SignPurpose = signpurpose
          @ProofImage = proofimage
          @CommissionImage = commissionimage
          @Remark = remark
        end

        def deserialize(params)
          @SignId = params['SignId']
          @SignName = params['SignName']
          @SignType = params['SignType']
          @DocumentType = params['DocumentType']
          @International = params['International']
          @SignPurpose = params['SignPurpose']
          @ProofImage = params['ProofImage']
          @CommissionImage = params['CommissionImage']
          @Remark = params['Remark']
        end
      end

      # ModifySmsSign返回参数结构体
      class ModifySmsSignResponse < TencentCloud::Common::AbstractModel
        # @param ModifySignStatus: 修改签名响应
        # @type ModifySignStatus: :class:`Tencentcloud::Sms.v20210111.models.ModifySignStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModifySignStatus, :RequestId
        
        def initialize(modifysignstatus=nil, requestid=nil)
          @ModifySignStatus = modifysignstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModifySignStatus'].nil?
            @ModifySignStatus = ModifySignStatus.new
            @ModifySignStatus.deserialize(params['ModifySignStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifySmsTemplate请求参数结构体
      class ModifySmsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 待修改模板的ID。
        # @type TemplateId: Integer
        # @param TemplateName: 新的模板名称。
        # @type TemplateName: String
        # @param TemplateContent: 新的模板内容。
        # @type TemplateContent: String
        # @param SmsType: 短信类型，0表示普通短信, 1表示营销短信。
        # @type SmsType: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param Remark: 模板备注，例如申请原因，使用场景等。
        # @type Remark: String

        attr_accessor :TemplateId, :TemplateName, :TemplateContent, :SmsType, :International, :Remark
        
        def initialize(templateid=nil, templatename=nil, templatecontent=nil, smstype=nil, international=nil, remark=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TemplateContent = templatecontent
          @SmsType = smstype
          @International = international
          @Remark = remark
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @TemplateContent = params['TemplateContent']
          @SmsType = params['SmsType']
          @International = params['International']
          @Remark = params['Remark']
        end
      end

      # ModifySmsTemplate返回参数结构体
      class ModifySmsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param ModifyTemplateStatus: 修改模板参数响应
        # @type ModifyTemplateStatus: :class:`Tencentcloud::Sms.v20210111.models.ModifyTemplateStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModifyTemplateStatus, :RequestId
        
        def initialize(modifytemplatestatus=nil, requestid=nil)
          @ModifyTemplateStatus = modifytemplatestatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModifyTemplateStatus'].nil?
            @ModifyTemplateStatus = ModifyTemplateStatus.new
            @ModifyTemplateStatus.deserialize(params['ModifyTemplateStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改模板参数响应
      class ModifyTemplateStatus < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # 号码信息。
      class PhoneNumberInfo < TencentCloud::Common::AbstractModel
        # @param Code: 号码信息查询错误码，查询成功返回 "Ok"。
        # @type Code: String
        # @param Message: 号码信息查询错误码描述。
        # @type Message: String
        # @param NationCode: 国家（或地区）码。
        # @type NationCode: String
        # @param SubscriberNumber: 用户号码，去除国家或地区码前缀的普通格式，示例如：13711112222。
        # @type SubscriberNumber: String
        # @param PhoneNumber: 解析后的规范的 E.164 号码，与下发短信的号码解析结果一致。解析失败时会原样返回。
        # @type PhoneNumber: String
        # @param IsoCode: 国家码或地区码，例如 CN、US 等，对于未识别出国家码或者地区码，默认返回 DEF。
        # @type IsoCode: String
        # @param IsoName: 国家码或地区名，例如 China，可参考 [国际/港澳台短信价格总览](https://cloud.tencent.com/document/product/382/18051#.E6.97.A5.E7.BB.93.E5.90.8E.E4.BB.98.E8.B4.B9.3Ca-id.3D.22post-payment.22.3E.3C.2Fa.3E)
        # @type IsoName: String

        attr_accessor :Code, :Message, :NationCode, :SubscriberNumber, :PhoneNumber, :IsoCode, :IsoName
        
        def initialize(code=nil, message=nil, nationcode=nil, subscribernumber=nil, phonenumber=nil, isocode=nil, isoname=nil)
          @Code = code
          @Message = message
          @NationCode = nationcode
          @SubscriberNumber = subscribernumber
          @PhoneNumber = phonenumber
          @IsoCode = isocode
          @IsoName = isoname
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @NationCode = params['NationCode']
          @SubscriberNumber = params['SubscriberNumber']
          @PhoneNumber = params['PhoneNumber']
          @IsoCode = params['IsoCode']
          @IsoName = params['IsoName']
        end
      end

      # 短信回复状态
      class PullSmsReplyStatus < TencentCloud::Common::AbstractModel
        # @param ExtendCode: 短信码号扩展号，默认未开通，如需开通请联系 [sms helper](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        # @type ExtendCode: String
        # @param CountryCode: 国家（或地区）码。
        # @type CountryCode: String
        # @param PhoneNumber: 手机号码，E.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumber: String
        # @param SignName: 短信签名名称。
        # @type SignName: String
        # @param ReplyContent: 用户回复的内容。
        # @type ReplyContent: String
        # @param ReplyTime: 回复时间，UNIX 时间戳（单位：秒）。
        # @type ReplyTime: Integer
        # @param SubscriberNumber: 用户号码，普通格式，示例如：13711112222。
        # @type SubscriberNumber: String

        attr_accessor :ExtendCode, :CountryCode, :PhoneNumber, :SignName, :ReplyContent, :ReplyTime, :SubscriberNumber
        
        def initialize(extendcode=nil, countrycode=nil, phonenumber=nil, signname=nil, replycontent=nil, replytime=nil, subscribernumber=nil)
          @ExtendCode = extendcode
          @CountryCode = countrycode
          @PhoneNumber = phonenumber
          @SignName = signname
          @ReplyContent = replycontent
          @ReplyTime = replytime
          @SubscriberNumber = subscribernumber
        end

        def deserialize(params)
          @ExtendCode = params['ExtendCode']
          @CountryCode = params['CountryCode']
          @PhoneNumber = params['PhoneNumber']
          @SignName = params['SignName']
          @ReplyContent = params['ReplyContent']
          @ReplyTime = params['ReplyTime']
          @SubscriberNumber = params['SubscriberNumber']
        end
      end

      # PullSmsReplyStatusByPhoneNumber请求参数结构体
      class PullSmsReplyStatusByPhoneNumberRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 拉取起始时间，UNIX 时间戳（时间：秒）。
        # 注：最大可拉取当前时期前7天的数据。
        # @type BeginTime: Integer
        # @param Offset: 偏移量。
        # 注：目前固定设置为0。
        # @type Offset: Integer
        # @param Limit: 拉取最大条数，最多 100。
        # @type Limit: Integer
        # @param PhoneNumber: 下发目的手机号码，依据 E.164 标准为：+[国家（或地区）码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumber: String
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        # @type SmsSdkAppId: String
        # @param EndTime: 拉取截止时间，UNIX 时间戳（时间：秒）。
        # @type EndTime: Integer

        attr_accessor :BeginTime, :Offset, :Limit, :PhoneNumber, :SmsSdkAppId, :EndTime
        
        def initialize(begintime=nil, offset=nil, limit=nil, phonenumber=nil, smssdkappid=nil, endtime=nil)
          @BeginTime = begintime
          @Offset = offset
          @Limit = limit
          @PhoneNumber = phonenumber
          @SmsSdkAppId = smssdkappid
          @EndTime = endtime
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PhoneNumber = params['PhoneNumber']
          @SmsSdkAppId = params['SmsSdkAppId']
          @EndTime = params['EndTime']
        end
      end

      # PullSmsReplyStatusByPhoneNumber返回参数结构体
      class PullSmsReplyStatusByPhoneNumberResponse < TencentCloud::Common::AbstractModel
        # @param PullSmsReplyStatusSet: 回复状态响应集合。
        # @type PullSmsReplyStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PullSmsReplyStatusSet, :RequestId
        
        def initialize(pullsmsreplystatusset=nil, requestid=nil)
          @PullSmsReplyStatusSet = pullsmsreplystatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PullSmsReplyStatusSet'].nil?
            @PullSmsReplyStatusSet = []
            params['PullSmsReplyStatusSet'].each do |i|
              pullsmsreplystatus_tmp = PullSmsReplyStatus.new
              pullsmsreplystatus_tmp.deserialize(i)
              @PullSmsReplyStatusSet << pullsmsreplystatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # PullSmsReplyStatus请求参数结构体
      class PullSmsReplyStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 拉取最大条数，最多100条。
        # @type Limit: Integer
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage) 添加应用后生成的实际 SdkAppId，例如1400006666。
        # @type SmsSdkAppId: String

        attr_accessor :Limit, :SmsSdkAppId
        
        def initialize(limit=nil, smssdkappid=nil)
          @Limit = limit
          @SmsSdkAppId = smssdkappid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @SmsSdkAppId = params['SmsSdkAppId']
        end
      end

      # PullSmsReplyStatus返回参数结构体
      class PullSmsReplyStatusResponse < TencentCloud::Common::AbstractModel
        # @param PullSmsReplyStatusSet: 回复状态响应集合。
        # @type PullSmsReplyStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PullSmsReplyStatusSet, :RequestId
        
        def initialize(pullsmsreplystatusset=nil, requestid=nil)
          @PullSmsReplyStatusSet = pullsmsreplystatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PullSmsReplyStatusSet'].nil?
            @PullSmsReplyStatusSet = []
            params['PullSmsReplyStatusSet'].each do |i|
              pullsmsreplystatus_tmp = PullSmsReplyStatus.new
              pullsmsreplystatus_tmp.deserialize(i)
              @PullSmsReplyStatusSet << pullsmsreplystatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 短信的下发状态详细信息
      class PullSmsSendStatus < TencentCloud::Common::AbstractModel
        # @param UserReceiveTime: 用户实际接收到短信的时间，UNIX 时间戳（单位：秒）。
        # @type UserReceiveTime: Integer
        # @param CountryCode: 国家（或地区）码。
        # @type CountryCode: String
        # @param SubscriberNumber: 用户号码，普通格式，示例如：13711112222。
        # @type SubscriberNumber: String
        # @param PhoneNumber: 手机号码，E.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumber: String
        # @param SerialNo: 本次发送标识 ID。
        # @type SerialNo: String
        # @param ReportStatus: 实际是否收到短信接收状态，SUCCESS（成功）、FAIL（失败）。
        # @type ReportStatus: String
        # @param Description: 用户接收短信状态描述。
        # @type Description: String

        attr_accessor :UserReceiveTime, :CountryCode, :SubscriberNumber, :PhoneNumber, :SerialNo, :ReportStatus, :Description
        
        def initialize(userreceivetime=nil, countrycode=nil, subscribernumber=nil, phonenumber=nil, serialno=nil, reportstatus=nil, description=nil)
          @UserReceiveTime = userreceivetime
          @CountryCode = countrycode
          @SubscriberNumber = subscribernumber
          @PhoneNumber = phonenumber
          @SerialNo = serialno
          @ReportStatus = reportstatus
          @Description = description
        end

        def deserialize(params)
          @UserReceiveTime = params['UserReceiveTime']
          @CountryCode = params['CountryCode']
          @SubscriberNumber = params['SubscriberNumber']
          @PhoneNumber = params['PhoneNumber']
          @SerialNo = params['SerialNo']
          @ReportStatus = params['ReportStatus']
          @Description = params['Description']
        end
      end

      # PullSmsSendStatusByPhoneNumber请求参数结构体
      class PullSmsSendStatusByPhoneNumberRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 拉取起始时间，UNIX 时间戳（时间：秒）。
        # 注：最大可拉取当前时期前7天的数据。
        # @type BeginTime: Integer
        # @param Offset: 偏移量。
        # 注：目前固定设置为0。
        # @type Offset: Integer
        # @param Limit: 拉取最大条数，最多 100。
        # @type Limit: Integer
        # @param PhoneNumber: 下发目的手机号码，依据 E.164 标准为：+[国家（或地区）码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumber: String
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        # @type SmsSdkAppId: String
        # @param EndTime: 拉取截止时间，UNIX 时间戳（时间：秒）。
        # @type EndTime: Integer

        attr_accessor :BeginTime, :Offset, :Limit, :PhoneNumber, :SmsSdkAppId, :EndTime
        
        def initialize(begintime=nil, offset=nil, limit=nil, phonenumber=nil, smssdkappid=nil, endtime=nil)
          @BeginTime = begintime
          @Offset = offset
          @Limit = limit
          @PhoneNumber = phonenumber
          @SmsSdkAppId = smssdkappid
          @EndTime = endtime
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PhoneNumber = params['PhoneNumber']
          @SmsSdkAppId = params['SmsSdkAppId']
          @EndTime = params['EndTime']
        end
      end

      # PullSmsSendStatusByPhoneNumber返回参数结构体
      class PullSmsSendStatusByPhoneNumberResponse < TencentCloud::Common::AbstractModel
        # @param PullSmsSendStatusSet: 下发状态响应集合。
        # @type PullSmsSendStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PullSmsSendStatusSet, :RequestId
        
        def initialize(pullsmssendstatusset=nil, requestid=nil)
          @PullSmsSendStatusSet = pullsmssendstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PullSmsSendStatusSet'].nil?
            @PullSmsSendStatusSet = []
            params['PullSmsSendStatusSet'].each do |i|
              pullsmssendstatus_tmp = PullSmsSendStatus.new
              pullsmssendstatus_tmp.deserialize(i)
              @PullSmsSendStatusSet << pullsmssendstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # PullSmsSendStatus请求参数结构体
      class PullSmsSendStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 拉取最大条数，最多100条。
        # @type Limit: Integer
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage) 添加应用后生成的实际 SdkAppId，例如1400006666。
        # @type SmsSdkAppId: String

        attr_accessor :Limit, :SmsSdkAppId
        
        def initialize(limit=nil, smssdkappid=nil)
          @Limit = limit
          @SmsSdkAppId = smssdkappid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @SmsSdkAppId = params['SmsSdkAppId']
        end
      end

      # PullSmsSendStatus返回参数结构体
      class PullSmsSendStatusResponse < TencentCloud::Common::AbstractModel
        # @param PullSmsSendStatusSet: 下发状态响应集合。
        # @type PullSmsSendStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PullSmsSendStatusSet, :RequestId
        
        def initialize(pullsmssendstatusset=nil, requestid=nil)
          @PullSmsSendStatusSet = pullsmssendstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PullSmsSendStatusSet'].nil?
            @PullSmsSendStatusSet = []
            params['PullSmsSendStatusSet'].each do |i|
              pullsmssendstatus_tmp = PullSmsSendStatus.new
              pullsmssendstatus_tmp.deserialize(i)
              @PullSmsSendStatusSet << pullsmssendstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SendSms请求参数结构体
      class SendSmsRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumberSet: 下发手机号码，采用 E.164 标准，格式为+[国家或地区码][手机号]，单次请求最多支持200个手机号且要求全为境内手机号或全为境外手机号。
        # 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # 注：发送国内短信格式还支持0086、86或无任何国家或地区码的11位手机号码，前缀默认为+86。
        # @type PhoneNumberSet: Array
        # @param SmsSdkAppId: 短信 SdkAppId，在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        # @type SmsSdkAppId: String
        # @param TemplateId: 模板 ID，必须填写已审核通过的模板 ID。模板 ID 可前往 [国内短信](https://console.cloud.tencent.com/smsv2/csms-template) 或 [国际/港澳台短信](https://console.cloud.tencent.com/smsv2/isms-template) 的正文模板管理查看，若向境外手机号发送短信，仅支持使用国际/港澳台短信模板。
        # @type TemplateId: String
        # @param SignName: 短信签名内容，使用 UTF-8 编码，必须填写已审核通过的签名，例如：腾讯云，签名信息可前往 [国内短信](https://console.cloud.tencent.com/smsv2/csms-sign) 或 [国际/港澳台短信](https://console.cloud.tencent.com/smsv2/isms-sign) 的签名管理查看。
        # <dx-alert infotype="notice" title="注意">发送国内短信该参数必填。</dx-alert>
        # @type SignName: String
        # @param TemplateParamSet: 模板参数，若无模板参数，则设置为空。
        # <dx-alert infotype="notice" title="注意">模板参数的个数需要与 TemplateId 对应模板的变量个数保持一致。</dx-alert>
        # @type TemplateParamSet: Array
        # @param ExtendCode: 短信码号扩展号，默认未开通，如需开通请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        # @type ExtendCode: String
        # @param SessionContext: 用户的 session 内容，可以携带用户侧 ID 等上下文信息，server 会原样返回。
        # @type SessionContext: String
        # @param SenderId: 国内短信无需填写该项；国际/港澳台短信已申请独立 SenderId 需要填写该字段，默认使用公共 SenderId，无需填写该字段。
        # 注：月度使用量达到指定量级可申请独立 SenderId 使用，详情请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        # @type SenderId: String

        attr_accessor :PhoneNumberSet, :SmsSdkAppId, :TemplateId, :SignName, :TemplateParamSet, :ExtendCode, :SessionContext, :SenderId
        
        def initialize(phonenumberset=nil, smssdkappid=nil, templateid=nil, signname=nil, templateparamset=nil, extendcode=nil, sessioncontext=nil, senderid=nil)
          @PhoneNumberSet = phonenumberset
          @SmsSdkAppId = smssdkappid
          @TemplateId = templateid
          @SignName = signname
          @TemplateParamSet = templateparamset
          @ExtendCode = extendcode
          @SessionContext = sessioncontext
          @SenderId = senderid
        end

        def deserialize(params)
          @PhoneNumberSet = params['PhoneNumberSet']
          @SmsSdkAppId = params['SmsSdkAppId']
          @TemplateId = params['TemplateId']
          @SignName = params['SignName']
          @TemplateParamSet = params['TemplateParamSet']
          @ExtendCode = params['ExtendCode']
          @SessionContext = params['SessionContext']
          @SenderId = params['SenderId']
        end
      end

      # SendSms返回参数结构体
      class SendSmsResponse < TencentCloud::Common::AbstractModel
        # @param SendStatusSet: 短信发送状态。
        # @type SendStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SendStatusSet, :RequestId
        
        def initialize(sendstatusset=nil, requestid=nil)
          @SendStatusSet = sendstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SendStatusSet'].nil?
            @SendStatusSet = []
            params['SendStatusSet'].each do |i|
              sendstatus_tmp = SendStatus.new
              sendstatus_tmp.deserialize(i)
              @SendStatusSet << sendstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 发送短信状态
      class SendStatus < TencentCloud::Common::AbstractModel
        # @param SerialNo: 发送流水号。
        # @type SerialNo: String
        # @param PhoneNumber: 手机号码，E.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type PhoneNumber: String
        # @param Fee: 计费条数，计费规则请查询 [计费策略](https://cloud.tencent.com/document/product/382/36135)。
        # @type Fee: Integer
        # @param SessionContext: 用户 session 内容。
        # @type SessionContext: String
        # @param Code: 短信请求错误码，具体含义请参考 [错误码](https://cloud.tencent.com/document/api/382/55981#6.-.E9.94.99.E8.AF.AF.E7.A0.81)，发送成功返回 "Ok"。
        # @type Code: String
        # @param Message: 短信请求错误码描述。
        # @type Message: String
        # @param IsoCode: 国家码或地区码，例如 CN、US 等，对于未识别出国家码或者地区码，默认返回 DEF，具体支持列表请参考 [国际/港澳台短信价格总览](https://cloud.tencent.com/document/product/382/18051)。
        # @type IsoCode: String

        attr_accessor :SerialNo, :PhoneNumber, :Fee, :SessionContext, :Code, :Message, :IsoCode
        
        def initialize(serialno=nil, phonenumber=nil, fee=nil, sessioncontext=nil, code=nil, message=nil, isocode=nil)
          @SerialNo = serialno
          @PhoneNumber = phonenumber
          @Fee = fee
          @SessionContext = sessioncontext
          @Code = code
          @Message = message
          @IsoCode = isocode
        end

        def deserialize(params)
          @SerialNo = params['SerialNo']
          @PhoneNumber = params['PhoneNumber']
          @Fee = params['Fee']
          @SessionContext = params['SessionContext']
          @Code = params['Code']
          @Message = params['Message']
          @IsoCode = params['IsoCode']
        end
      end

      # 发送数据统计响应包体
      class SendStatusStatistics < TencentCloud::Common::AbstractModel
        # @param FeeCount: 短信计费条数统计，例如提交成功量为100条，其中有20条是长短信（长度为80字）被拆分成2条，则计费条数为： ```80 * 1 + 20 * 2 = 120``` 条。
        # @type FeeCount: Integer
        # @param RequestCount: 短信提交量统计。
        # @type RequestCount: Integer
        # @param RequestSuccessCount: 短信提交成功量统计。
        # @type RequestSuccessCount: Integer

        attr_accessor :FeeCount, :RequestCount, :RequestSuccessCount
        
        def initialize(feecount=nil, requestcount=nil, requestsuccesscount=nil)
          @FeeCount = feecount
          @RequestCount = requestcount
          @RequestSuccessCount = requestsuccesscount
        end

        def deserialize(params)
          @FeeCount = params['FeeCount']
          @RequestCount = params['RequestCount']
          @RequestSuccessCount = params['RequestSuccessCount']
        end
      end

      # SendStatusStatistics请求参数结构体
      class SendStatusStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 起始时间，格式为yyyymmddhh，精确到小时，例如2021050113，表示2021年5月1号13时。
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式为yyyymmddhh，精确到小时，例如2021050118，表示2021年5月1号18时。
        # 注：EndTime 必须大于 BeginTime。
        # @type EndTime: String
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        # @type SmsSdkAppId: String
        # @param Limit: 最大上限。
        # 注：目前固定设置为0。
        # @type Limit: Integer
        # @param Offset: 偏移量。
        # 注：目前固定设置为0。
        # @type Offset: Integer

        attr_accessor :BeginTime, :EndTime, :SmsSdkAppId, :Limit, :Offset
        
        def initialize(begintime=nil, endtime=nil, smssdkappid=nil, limit=nil, offset=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @SmsSdkAppId = smssdkappid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @SmsSdkAppId = params['SmsSdkAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # SendStatusStatistics返回参数结构体
      class SendStatusStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SendStatusStatistics: 发送数据统计响应包体。
        # @type SendStatusStatistics: :class:`Tencentcloud::Sms.v20210111.models.SendStatusStatistics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SendStatusStatistics, :RequestId
        
        def initialize(sendstatusstatistics=nil, requestid=nil)
          @SendStatusStatistics = sendstatusstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SendStatusStatistics'].nil?
            @SendStatusStatistics = SendStatusStatistics.new
            @SendStatusStatistics.deserialize(params['SendStatusStatistics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 套餐包信息统计响应包体
      class SmsPackagesStatistics < TencentCloud::Common::AbstractModel
        # @param PackageCreateTime: 套餐包创建时间，UNIX 时间戳（单位：秒）。
        # @type PackageCreateTime: Integer
        # @param PackageEffectiveTime: 套餐包生效时间，UNIX 时间戳（单位：秒）。
        # @type PackageEffectiveTime: Integer
        # @param PackageExpiredTime: 套餐包过期时间，UNIX 时间戳（单位：秒）。
        # @type PackageExpiredTime: Integer
        # @param PackageAmount: 套餐包条数。
        # @type PackageAmount: Integer
        # @param PackageType: 套餐包类别，0表示赠送套餐包，1表示购买套餐包。
        # @type PackageType: Integer
        # @param PackageId: 套餐包 ID。
        # @type PackageId: Integer
        # @param CurrentUsage: 当前使用套餐包条数。
        # @type CurrentUsage: Integer

        attr_accessor :PackageCreateTime, :PackageEffectiveTime, :PackageExpiredTime, :PackageAmount, :PackageType, :PackageId, :CurrentUsage
        
        def initialize(packagecreatetime=nil, packageeffectivetime=nil, packageexpiredtime=nil, packageamount=nil, packagetype=nil, packageid=nil, currentusage=nil)
          @PackageCreateTime = packagecreatetime
          @PackageEffectiveTime = packageeffectivetime
          @PackageExpiredTime = packageexpiredtime
          @PackageAmount = packageamount
          @PackageType = packagetype
          @PackageId = packageid
          @CurrentUsage = currentusage
        end

        def deserialize(params)
          @PackageCreateTime = params['PackageCreateTime']
          @PackageEffectiveTime = params['PackageEffectiveTime']
          @PackageExpiredTime = params['PackageExpiredTime']
          @PackageAmount = params['PackageAmount']
          @PackageType = params['PackageType']
          @PackageId = params['PackageId']
          @CurrentUsage = params['CurrentUsage']
        end
      end

      # SmsPackagesStatistics请求参数结构体
      class SmsPackagesStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param SmsSdkAppId: 短信 SdkAppId 在 [短信控制台](https://console.cloud.tencent.com/smsv2/app-manage)  添加应用后生成的实际 SdkAppId，示例如1400006666。
        # @type SmsSdkAppId: String
        # @param Limit: 最大上限(需要拉取的套餐包个数)。
        # @type Limit: Integer
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param BeginTime: 起始时间，格式为yyyymmddhh，精确到小时，例如2021050113，表示2021年5月1号13时。
        # 注：拉取套餐包的创建时间不小于起始时间。
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式为yyyymmddhh，精确到小时，例如2021050118，表示2021年5月1号18时。
        # 注：EndTime 必须大于 BeginTime，拉取套餐包的创建时间不大于结束时间。
        # @type EndTime: String

        attr_accessor :SmsSdkAppId, :Limit, :Offset, :BeginTime, :EndTime
        
        def initialize(smssdkappid=nil, limit=nil, offset=nil, begintime=nil, endtime=nil)
          @SmsSdkAppId = smssdkappid
          @Limit = limit
          @Offset = offset
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @SmsSdkAppId = params['SmsSdkAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # SmsPackagesStatistics返回参数结构体
      class SmsPackagesStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SmsPackagesStatisticsSet: 发送数据统计响应包体。
        # @type SmsPackagesStatisticsSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SmsPackagesStatisticsSet, :RequestId
        
        def initialize(smspackagesstatisticsset=nil, requestid=nil)
          @SmsPackagesStatisticsSet = smspackagesstatisticsset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SmsPackagesStatisticsSet'].nil?
            @SmsPackagesStatisticsSet = []
            params['SmsPackagesStatisticsSet'].each do |i|
              smspackagesstatistics_tmp = SmsPackagesStatistics.new
              smspackagesstatistics_tmp.deserialize(i)
              @SmsPackagesStatisticsSet << smspackagesstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

