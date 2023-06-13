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
    module V20201222
      # 此结构体 (Address) 用于描述住址或通讯地址。
      class Address < TencentCloud::Common::AbstractModel
        # @param Province: 省份
        # @type Province: String
        # @param City: 城市
        # @type City: String
        # @param County: 区县
        # @type County: String
        # @param Details: 详细地址
        # @type Details: String
        # @param Country: 国家，默认中国
        # @type Country: String

        attr_accessor :Province, :City, :County, :Details, :Country

        def initialize(province=nil, city=nil, county=nil, details=nil, country=nil)
          @Province = province
          @City = city
          @County = county
          @Details = details
          @Country = country
        end

        def deserialize(params)
          @Province = params['Province']
          @City = params['City']
          @County = params['County']
          @Details = params['Details']
          @Country = params['Country']
        end
      end

      # ArchiveFlow请求参数结构体
      class ArchiveFlowRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程ID
        # @type FlowId: String

        attr_accessor :Caller, :FlowId

        def initialize(caller=nil, flowid=nil)
          @Caller = caller
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
        end
      end

      # ArchiveFlow返回参数结构体
      class ArchiveFlowResponse < TencentCloud::Common::AbstractModel
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

      # 此结构体 (Caller) 用于描述调用方属性。
      class Caller < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用号
        # @type ApplicationId: String
        # @param SubOrganizationId: 下属机构ID
        # @type SubOrganizationId: String
        # @param OperatorId: 经办人的用户ID
        # @type OperatorId: String

        attr_accessor :ApplicationId, :SubOrganizationId, :OperatorId

        def initialize(applicationid=nil, suborganizationid=nil, operatorid=nil)
          @ApplicationId = applicationid
          @SubOrganizationId = suborganizationid
          @OperatorId = operatorid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SubOrganizationId = params['SubOrganizationId']
          @OperatorId = params['OperatorId']
        end
      end

      # CancelFlow请求参数结构体
      class CancelFlowRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param CancelMessage: 撤销原因
        # @type CancelMessage: String

        attr_accessor :Caller, :FlowId, :CancelMessage

        def initialize(caller=nil, flowid=nil, cancelmessage=nil)
          @Caller = caller
          @FlowId = flowid
          @CancelMessage = cancelmessage
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          @CancelMessage = params['CancelMessage']
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

      # 目录流程参与者
      class CatalogApprovers < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param Approvers: 参与者列表
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
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @Approvers << flowapproverinfo_tmp
            end
          end
        end
      end

      # 目录流程签署区
      class CatalogComponents < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param SignComponents: 签署区列表
        # @type SignComponents: Array
        # @param SignId: 签署任务ID
        # @type SignId: String

        attr_accessor :FlowId, :SignComponents, :SignId

        def initialize(flowid=nil, signcomponents=nil, signid=nil)
          @FlowId = flowid
          @SignComponents = signcomponents
          @SignId = signid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @SignId = params['SignId']
        end
      end

      # CheckBankCard2EVerification请求参数结构体
      class CheckBankCard2EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param BankCard: 银行卡号
        # @type BankCard: String
        # @param Name: 姓名
        # @type Name: String

        attr_accessor :Caller, :BankCard, :Name

        def initialize(caller=nil, bankcard=nil, name=nil)
          @Caller = caller
          @BankCard = bankcard
          @Name = name
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @BankCard = params['BankCard']
          @Name = params['Name']
        end
      end

      # CheckBankCard2EVerification返回参数结构体
      class CheckBankCard2EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果
        # 计费结果码：
        #   0:  认证通过
        #   1:  认证未通过
        #   2:  持卡人信息有误
        #   3:  未开通无卡支付
        #   4:  此卡被没收
        #   5:  无效卡号
        #   6:  此卡无对应发卡行
        #   7:  该卡未初始化或睡眠卡
        #   8:  作弊卡、吞卡
        #   9:  此卡已挂失
        #   10: 该卡已过期
        #   11: 受限制的卡
        #   12: 密码错误次数超限
        #   13: 发卡行不支持此交易
        # 不收费结果码:
        #   101: 姓名校验不通过
        #   102: 银行卡号码有误
        #   103: 验证中心服务繁忙
        #   104: 身份证号码有误
        #   105: 手机号码不合法
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckBankCard3EVerification请求参数结构体
      class CheckBankCard3EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param BankCard: 银行卡号
        # @type BankCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardNumber: 身份证件号码
        # @type IdCardNumber: String
        # @param IdCardType: 身份证件类型; ID_CARD
        # @type IdCardType: String

        attr_accessor :Caller, :BankCard, :Name, :IdCardNumber, :IdCardType

        def initialize(caller=nil, bankcard=nil, name=nil, idcardnumber=nil, idcardtype=nil)
          @Caller = caller
          @BankCard = bankcard
          @Name = name
          @IdCardNumber = idcardnumber
          @IdCardType = idcardtype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @BankCard = params['BankCard']
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @IdCardType = params['IdCardType']
        end
      end

      # CheckBankCard3EVerification返回参数结构体
      class CheckBankCard3EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果
        # 计费结果码：
        #   0:  认证通过
        #   1:  认证未通过
        #   2:  持卡人信息有误
        #   3:  未开通无卡支付
        #   4:  此卡被没收
        #   5:  无效卡号
        #   6:  此卡无对应发卡行
        #   7:  该卡未初始化或睡眠卡
        #   8:  作弊卡、吞卡
        #   9:  此卡已挂失
        #   10: 该卡已过期
        #   11: 受限制的卡
        #   12: 密码错误次数超限
        #   13: 发卡行不支持此交易
        # 不收费结果码:
        #   101: 姓名校验不通过
        #   102: 银行卡号码有误
        #   103: 验证中心服务繁忙
        #   104: 身份证号码有误
        #   105: 手机号码不合法
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckBankCard4EVerification请求参数结构体
      class CheckBankCard4EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param BankCard: 银行卡号
        # @type BankCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardNumber: 身份证件号码
        # @type IdCardNumber: String
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param IdCardType: 身份证件类型; ID_CARD
        # @type IdCardType: String

        attr_accessor :Caller, :BankCard, :Name, :IdCardNumber, :Mobile, :IdCardType

        def initialize(caller=nil, bankcard=nil, name=nil, idcardnumber=nil, mobile=nil, idcardtype=nil)
          @Caller = caller
          @BankCard = bankcard
          @Name = name
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @IdCardType = idcardtype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @BankCard = params['BankCard']
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @IdCardType = params['IdCardType']
        end
      end

      # CheckBankCard4EVerification返回参数结构体
      class CheckBankCard4EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果
        # 计费结果码：
        #   0:  认证通过
        #   1:  认证未通过
        #   2:  持卡人信息有误
        #   3:  未开通无卡支付
        #   4:  此卡被没收
        #   5:  无效卡号
        #   6:  此卡无对应发卡行
        #   7:  该卡未初始化或睡眠卡
        #   8:  作弊卡、吞卡
        #   9:  此卡已挂失
        #   10: 该卡已过期
        #   11: 受限制的卡
        #   12: 密码错误次数超限
        #   13: 发卡行不支持此交易
        # 不收费结果码:
        #   101: 姓名校验不通过
        #   102: 银行卡号码有误
        #   103: 验证中心服务繁忙
        #   104: 身份证号码有误
        #   105: 手机号码不合法
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckBankCardVerification请求参数结构体
      class CheckBankCardVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param BankCard: 银行卡号
        # @type BankCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardNumber: 身份证件号码
        # @type IdCardNumber: String
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param IdCardType: 身份证件类型; ID_CARD
        # @type IdCardType: String

        attr_accessor :Caller, :BankCard, :Name, :IdCardNumber, :Mobile, :IdCardType

        def initialize(caller=nil, bankcard=nil, name=nil, idcardnumber=nil, mobile=nil, idcardtype=nil)
          @Caller = caller
          @BankCard = bankcard
          @Name = name
          @IdCardNumber = idcardnumber
          @Mobile = mobile
          @IdCardType = idcardtype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @BankCard = params['BankCard']
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @Mobile = params['Mobile']
          @IdCardType = params['IdCardType']
        end
      end

      # CheckBankCardVerification返回参数结构体
      class CheckBankCardVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果
        # 计费结果码：
        #   0:  认证通过
        #   1:  认证未通过
        #   2:  持卡人信息有误
        #   3:  未开通无卡支付
        #   4:  此卡被没收
        #   5:  无效卡号
        #   6:  此卡无对应发卡行
        #   7:  该卡未初始化或睡眠卡
        #   8:  作弊卡、吞卡
        #   9:  此卡已挂失
        #   10: 该卡已过期
        #   11: 受限制的卡
        #   12: 密码错误次数超限
        #   13: 发卡行不支持此交易
        # 不收费结果码:
        #   101: 姓名校验不通过
        #   102: 银行卡号码有误
        #   103: 验证中心服务繁忙
        #   104: 身份证号码有误
        #   105: 手机号码不合法
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckFaceIdentify请求参数结构体
      class CheckFaceIdentifyRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param VerifyChannel: 人脸核身渠道; 必选; WEIXINAPP:腾讯电子签小程序,FACEID:腾讯电子签慧眼,None:白名单中的客户直接通过
        # @type VerifyChannel: String
        # @param VerifyResult: 核身订单号; 必选; 对于WEIXINAPP,直接取响应的{VerifyResult};对于FACEID,使用{WbAppId}:{OrderNo}拼接
        # @type VerifyResult: String
        # @param Name: 要对比的姓名; 可选; 未填写时对比caller.OperatorId的实名信息
        # @type Name: String
        # @param IdCardNumber: 要对比的身份证号码; 可选; 未填写时对比caller.OperatorId的实名信息
        # @type IdCardNumber: String
        # @param GetPhoto: 是否取认证时的照片
        # @type GetPhoto: Boolean

        attr_accessor :Caller, :VerifyChannel, :VerifyResult, :Name, :IdCardNumber, :GetPhoto

        def initialize(caller=nil, verifychannel=nil, verifyresult=nil, name=nil, idcardnumber=nil, getphoto=nil)
          @Caller = caller
          @VerifyChannel = verifychannel
          @VerifyResult = verifyresult
          @Name = name
          @IdCardNumber = idcardnumber
          @GetPhoto = getphoto
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @VerifyChannel = params['VerifyChannel']
          @VerifyResult = params['VerifyResult']
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @GetPhoto = params['GetPhoto']
        end
      end

      # CheckFaceIdentify返回参数结构体
      class CheckFaceIdentifyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 核身结果; 0:通过,1:不通过
        # @type Result: Integer
        # @param Description: 核身结果描述
        # @type Description: String
        # @param ChannelName: 渠道名
        # @type ChannelName: String
        # @param VerifiedOn: 认证通过时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifiedOn: Integer
        # @param SerialNumber: 核身流水号
        # @type SerialNumber: String
        # @param VerifyServerIp: 渠道核身服务器IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyServerIp: String
        # @param PhotoFileName: 核身照片文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhotoFileName: String
        # @param PhotoFileData: 核身照片内容base64(文件格式见文件名后缀,一般为jpg)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhotoFileData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :ChannelName, :VerifiedOn, :SerialNumber, :VerifyServerIp, :PhotoFileName, :PhotoFileData, :RequestId

        def initialize(result=nil, description=nil, channelname=nil, verifiedon=nil, serialnumber=nil, verifyserverip=nil, photofilename=nil, photofiledata=nil, requestid=nil)
          @Result = result
          @Description = description
          @ChannelName = channelname
          @VerifiedOn = verifiedon
          @SerialNumber = serialnumber
          @VerifyServerIp = verifyserverip
          @PhotoFileName = photofilename
          @PhotoFileData = photofiledata
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @ChannelName = params['ChannelName']
          @VerifiedOn = params['VerifiedOn']
          @SerialNumber = params['SerialNumber']
          @VerifyServerIp = params['VerifyServerIp']
          @PhotoFileName = params['PhotoFileName']
          @PhotoFileData = params['PhotoFileData']
          @RequestId = params['RequestId']
        end
      end

      # CheckIdCardVerification请求参数结构体
      class CheckIdCardVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardNumber: 身份证件号码
        # @type IdCardNumber: String
        # @param IdCardType: 身份证件类型; ID_CARD
        # @type IdCardType: String

        attr_accessor :Caller, :Name, :IdCardNumber, :IdCardType

        def initialize(caller=nil, name=nil, idcardnumber=nil, idcardtype=nil)
          @Caller = caller
          @Name = name
          @IdCardNumber = idcardnumber
          @IdCardType = idcardtype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @IdCardType = params['IdCardType']
        end
      end

      # CheckIdCardVerification返回参数结构体
      class CheckIdCardVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果;
        # 收费错误码:
        #   0: 通过,
        #   1: 姓名和身份证号不一致,
        # 免费错误码:
        #   101: 非法身份证号(长度,格式等不正确),
        #   102: 非法姓名(长度,格式等不正确),
        #   103: 验证平台异常,
        #   104: 证件库中无此身份证记录
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckMobileAndName请求参数结构体
      class CheckMobileAndNameRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param Name: 姓名
        # @type Name: String

        attr_accessor :Caller, :Mobile, :Name

        def initialize(caller=nil, mobile=nil, name=nil)
          @Caller = caller
          @Mobile = mobile
          @Name = name
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Mobile = params['Mobile']
          @Name = params['Name']
        end
      end

      # CheckMobileAndName返回参数结构体
      class CheckMobileAndNameResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果
        # 计费结果码：
        #   0:  验证结果一致
        #   1:  手机号未实名
        #   2:  姓名和手机号不一致
        #   3:  信息不一致(手机号已实名,但姓名和身份证号与实名信息不一致)
        # 不收费结果码:
        #   101: 查无记录
        #   102: 非法姓名(长度,格式等不正确)
        #   103: 非法手机号(长度,格式等不正确)
        #   104: 非法身份证号(长度,校验位等不正确)
        #   105: 认证未通过
        #   106: 验证平台异常
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckMobileVerification请求参数结构体
      class CheckMobileVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param Name: 姓名
        # @type Name: String
        # @param IdCardNumber: 身份证件号码
        # @type IdCardNumber: String
        # @param IdCardType: 身份证件类型; ID_CARD
        # @type IdCardType: String

        attr_accessor :Caller, :Mobile, :Name, :IdCardNumber, :IdCardType

        def initialize(caller=nil, mobile=nil, name=nil, idcardnumber=nil, idcardtype=nil)
          @Caller = caller
          @Mobile = mobile
          @Name = name
          @IdCardNumber = idcardnumber
          @IdCardType = idcardtype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Mobile = params['Mobile']
          @Name = params['Name']
          @IdCardNumber = params['IdCardNumber']
          @IdCardType = params['IdCardType']
        end
      end

      # CheckMobileVerification返回参数结构体
      class CheckMobileVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检测结果
        # 计费结果码：
        #   0:  验证结果一致
        #   1:  手机号未实名
        #   2:  姓名和手机号不一致
        #   3:  信息不一致(手机号已实名,但姓名和身份证号与实名信息不一致)
        # 不收费结果码:
        #   101: 查无记录
        #   102: 非法姓名(长度,格式等不正确)
        #   103: 非法手机号(长度,格式等不正确)
        #   104: 非法身份证号(长度,校验位等不正确)
        #   105: 认证未通过
        #   106: 验证平台异常
        # @type Result: Integer
        # @param Description: 结果描述; 未通过时必选
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :RequestId

        def initialize(result=nil, description=nil, requestid=nil)
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # CheckVerifyCodeMatchFlowId请求参数结构体
      class CheckVerifyCodeMatchFlowIdRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param VerifyCode: 验证码
        # @type VerifyCode: String
        # @param FlowId: 流程(目录) id
        # @type FlowId: String

        attr_accessor :Caller, :Mobile, :VerifyCode, :FlowId

        def initialize(caller=nil, mobile=nil, verifycode=nil, flowid=nil)
          @Caller = caller
          @Mobile = mobile
          @VerifyCode = verifycode
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Mobile = params['Mobile']
          @VerifyCode = params['VerifyCode']
          @FlowId = params['FlowId']
        end
      end

      # CheckVerifyCodeMatchFlowId返回参数结构体
      class CheckVerifyCodeMatchFlowIdResponse < TencentCloud::Common::AbstractModel
        # @param Success: true: 验证码正确，false: 验证码错误
        # @type Success: Boolean
        # @param Result: 0: 验证码正确 1:验证码错误或过期 2:验证码错误 3:验证码和流程不匹配 4:验证码输入错误超过次数 5:内部错误
        # 6:参数错误
        # @type Result: Integer
        # @param Description: 结果描述
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :Result, :Description, :RequestId

        def initialize(success=nil, result=nil, description=nil, requestid=nil)
          @Success = success
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Success = params['Success']
          @Result = params['Result']
          @Description = params['Description']
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
        # @type ComponentId: String
        # @param ComponentType: 如果是Component控件类型，则可选的字段为：
        # TEXT - 普通文本控件；
        # DATE - 普通日期控件；
        # SELECT- 勾选框控件；
        # 如果是SignComponent控件类型，则可选的字段为
        # SIGN_SEAL- 签署印章控件；
        # SIGN_DATE- 签署日期控件；
        # SIGN_SIGNATURE - 用户签名控件；
        # @type ComponentType: String
        # @param ComponentName: 控件名称
        # @type ComponentName: String
        # @param ComponentRequired: 定义控件是否为必填项，默认为false
        # @type ComponentRequired: Boolean
        # @param FileIndex: 控件所属文件的序号 (模板中的resourceId排列序号)
        # @type FileIndex: Integer
        # @param GenerateMode: 控件生成的方式：
        # 0 - 普通控件
        # 1 - 表单域
        # 2 - html 控件
        # 3 - 关键字
        # @type GenerateMode: Integer
        # @param ComponentWidth: 参数控件宽度，单位px
        # @type ComponentWidth: Float
        # @param ComponentHeight: 参数控件高度，单位px
        # @type ComponentHeight: Float
        # @param ComponentPage: 参数控件所在页码
        # @type ComponentPage: Integer
        # @param ComponentPosX: 参数控件X位置，单位px
        # @type ComponentPosX: Float
        # @param ComponentPosY: 参数控件Y位置，单位px
        # @type ComponentPosY: Float
        # @param ComponentExtra: 参数控件样式
        # @type ComponentExtra: String
        # @param ComponentValue: 印章ID，如果是手写签名则为jpg或png格式的base64图片

        # SIGN_SEAL控件,可以用ORG_DEFAULT_SEAL表示主企业的默认印章
        # SIGN_SEAL控件,可以用SUBORG_DEFAULT_SEAL表示子企业的默认印章
        # SIGN_SEAL控件,可以用USER_DEFAULT_SEAL表示个人默认印章
        # @type ComponentValue: String
        # @param SealOperate: 如果是SIGN_SEAL类型的签署控件, 参数标识H5签署界面是否在该签署区上进行放置展示, 1为放置,其他为不放置
        # @type SealOperate: Integer
        # @param GenerateExtra: 不同GenerateMode对应的额外信息
        # @type GenerateExtra: String

        attr_accessor :ComponentId, :ComponentType, :ComponentName, :ComponentRequired, :FileIndex, :GenerateMode, :ComponentWidth, :ComponentHeight, :ComponentPage, :ComponentPosX, :ComponentPosY, :ComponentExtra, :ComponentValue, :SealOperate, :GenerateExtra

        def initialize(componentid=nil, componenttype=nil, componentname=nil, componentrequired=nil, fileindex=nil, generatemode=nil, componentwidth=nil, componentheight=nil, componentpage=nil, componentposx=nil, componentposy=nil, componentextra=nil, componentvalue=nil, sealoperate=nil, generateextra=nil)
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
          @SealOperate = sealoperate
          @GenerateExtra = generateextra
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
          @SealOperate = params['SealOperate']
          @GenerateExtra = params['GenerateExtra']
        end
      end

      # 此结构体 (ComponentSeal) 用于描述“签署区ID”到“印章ID”的映射。
      class ComponentSeal < TencentCloud::Common::AbstractModel
        # @param ComponentId: 签署区ID
        # @type ComponentId: String
        # @param SealId: 印章ID
        # @type SealId: String

        attr_accessor :ComponentId, :SealId

        def initialize(componentid=nil, sealid=nil)
          @ComponentId = componentid
          @SealId = sealid
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
          @SealId = params['SealId']
        end
      end

      # CreateFaceIdSign请求参数结构体
      class CreateFaceIdSignRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Values: 除api_ticket之外的其它要参与签名的参数值,包括UserId
        # @type Values: Array

        attr_accessor :Caller, :Values

        def initialize(caller=nil, values=nil)
          @Caller = caller
          @Values = values
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Values = params['Values']
        end
      end

      # CreateFaceIdSign返回参数结构体
      class CreateFaceIdSignResponse < TencentCloud::Common::AbstractModel
        # @param Sign: 慧眼API签名
        # @type Sign: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sign, :RequestId

        def initialize(sign=nil, requestid=nil)
          @Sign = sign
          @RequestId = requestid
        end

        def deserialize(params)
          @Sign = params['Sign']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowByFiles请求参数结构体
      class CreateFlowByFilesRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowInfo: 流程创建信息
        # @type FlowInfo: :class:`Tencentcloud::Essbasic.v20201222.models.FlowInfo`
        # @param FileIds: 文件资源列表 (支持多文件)
        # @type FileIds: Array
        # @param CustomId: 自定义流程id
        # @type CustomId: String

        attr_accessor :Caller, :FlowInfo, :FileIds, :CustomId

        def initialize(caller=nil, flowinfo=nil, fileids=nil, customid=nil)
          @Caller = caller
          @FlowInfo = flowinfo
          @FileIds = fileids
          @CustomId = customid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          unless params['FlowInfo'].nil?
            @FlowInfo = FlowInfo.new
            @FlowInfo.deserialize(params['FlowInfo'])
          end
          @FileIds = params['FileIds']
          @CustomId = params['CustomId']
        end
      end

      # CreateFlowByFiles返回参数结构体
      class CreateFlowByFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
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

      # CreateH5FaceIdUrl请求参数结构体
      class CreateH5FaceIdUrlRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param WbAppId: 慧眼业务ID; 不填写时后台使用Caller反查
        # @type WbAppId: String
        # @param Name: 姓名; 可选(未通过实名认证的用户必选)
        # @type Name: String
        # @param IdCardType: 用户证件类型; 可选; 默认ID_CARD:中国居民身份证
        # @type IdCardType: String
        # @param IdCardNumber: 用户证件号; 可选(未通过实名认证的用户必选)
        # @type IdCardNumber: String
        # @param JumpUrl: H5人脸核身完成后回调的第三方Url; 可选; 不需要做Encode, 跳转的参数: ?code=XX&orderNo=XX&liveRate=xx, code=0表示成功,orderNo为订单号,liveRate为百分制活体检测得分
        # @type JumpUrl: String
        # @param JumpType: 参数值为"1":直接跳转到url回调地址; 可选; 其他值:跳转提供的结果页面
        # @type JumpType: String
        # @param OpenFrom: browser:表示在浏览器启动刷脸, app:表示在App里启动刷脸,默认值为browser; 可选
        # @type OpenFrom: String
        # @param RedirectType: 跳转类型; 可选; 参数值为"1"时,刷脸页面使用replace方式跳转,不在浏览器history中留下记录;不传或其他值则正常跳转
        # @type RedirectType: String

        attr_accessor :Caller, :WbAppId, :Name, :IdCardType, :IdCardNumber, :JumpUrl, :JumpType, :OpenFrom, :RedirectType

        def initialize(caller=nil, wbappid=nil, name=nil, idcardtype=nil, idcardnumber=nil, jumpurl=nil, jumptype=nil, openfrom=nil, redirecttype=nil)
          @Caller = caller
          @WbAppId = wbappid
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @JumpUrl = jumpurl
          @JumpType = jumptype
          @OpenFrom = openfrom
          @RedirectType = redirecttype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @WbAppId = params['WbAppId']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @JumpUrl = params['JumpUrl']
          @JumpType = params['JumpType']
          @OpenFrom = params['OpenFrom']
          @RedirectType = params['RedirectType']
        end
      end

      # CreateH5FaceIdUrl返回参数结构体
      class CreateH5FaceIdUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 跳转到人脸核身页面的链接
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId

        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # CreatePreviewSignUrl请求参数结构体
      class CreatePreviewSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Deadline: URL过期时间戳
        # @type Deadline: Integer
        # @param CatalogId: 目录ID。当 SignUrlType 为 CATALOG 时必填
        # @type CatalogId: String
        # @param FlowId: 流程ID。当 SignUrlType 为 FLOW 时必填
        # @type FlowId: String
        # @param SignUrlType: 签署链接类型：
        # 1. FLOW - 单流程签署 (默认)
        # 2. CATALOG - 目录签署
        # @type SignUrlType: String

        attr_accessor :Caller, :Deadline, :CatalogId, :FlowId, :SignUrlType

        def initialize(caller=nil, deadline=nil, catalogid=nil, flowid=nil, signurltype=nil)
          @Caller = caller
          @Deadline = deadline
          @CatalogId = catalogid
          @FlowId = flowid
          @SignUrlType = signurltype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Deadline = params['Deadline']
          @CatalogId = params['CatalogId']
          @FlowId = params['FlowId']
          @SignUrlType = params['SignUrlType']
        end
      end

      # CreatePreviewSignUrl返回参数结构体
      class CreatePreviewSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param PreviewSignUrl: 合同预览URL
        # @type PreviewSignUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PreviewSignUrl, :RequestId

        def initialize(previewsignurl=nil, requestid=nil)
          @PreviewSignUrl = previewsignurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PreviewSignUrl = params['PreviewSignUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateSeal请求参数结构体
      class CreateSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SealType: 印章类型：
        # 1. PERSONAL - 个人私章
        # 2. OFFICIAL - 公章
        # 3. SPECIAL_FINANCIAL - 财务专用章
        # 4. CONTRACT - 合同专用章
        # 5. LEGAL_REPRESENTATIVE - 法定代表人章
        # 6. SPECIAL_NATIONWIDE_INVOICE - 发票专用章
        # 7. OTHER-其他
        # @type SealType: String
        # @param SealName: 印章名称
        # @type SealName: String
        # @param SourceIp: 请求创建印章的客户端IP
        # @type SourceIp: String
        # @param Image: 印章图片，base64编码（与FileId参数二选一，同时传入参数时优先使用Image参数）
        # @type Image: String
        # @param FileId: 印章文件图片ID（与Image参数二选一，同时传入参数时优先使用Image参数）
        # @type FileId: String
        # @param UserId: 需要创建印章的用户ID
        # @type UserId: String
        # @param IsDefault: 是否是默认印章 true：是，false：否
        # @type IsDefault: Boolean

        attr_accessor :Caller, :SealType, :SealName, :SourceIp, :Image, :FileId, :UserId, :IsDefault

        def initialize(caller=nil, sealtype=nil, sealname=nil, sourceip=nil, image=nil, fileid=nil, userid=nil, isdefault=nil)
          @Caller = caller
          @SealType = sealtype
          @SealName = sealname
          @SourceIp = sourceip
          @Image = image
          @FileId = fileid
          @UserId = userid
          @IsDefault = isdefault
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SealType = params['SealType']
          @SealName = params['SealName']
          @SourceIp = params['SourceIp']
          @Image = params['Image']
          @FileId = params['FileId']
          @UserId = params['UserId']
          @IsDefault = params['IsDefault']
        end
      end

      # CreateSeal返回参数结构体
      class CreateSealResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章Id
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

      # CreateServerFlowSign请求参数结构体
      class CreateServerFlowSignRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param SignComponents: 签署区域信息
        # @type SignComponents: Array
        # @param SourceIp: 客户端IP
        # @type SourceIp: String

        attr_accessor :Caller, :FlowId, :SignComponents, :SourceIp

        def initialize(caller=nil, flowid=nil, signcomponents=nil, sourceip=nil)
          @Caller = caller
          @FlowId = flowid
          @SignComponents = signcomponents
          @SourceIp = sourceip
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @SourceIp = params['SourceIp']
        end
      end

      # CreateServerFlowSign返回参数结构体
      class CreateServerFlowSignResponse < TencentCloud::Common::AbstractModel
        # @param SignStatus: 任务状态：
        # 0：失败
        # 1：成功
        # @type SignStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignStatus, :RequestId

        def initialize(signstatus=nil, requestid=nil)
          @SignStatus = signstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @SignStatus = params['SignStatus']
          @RequestId = params['RequestId']
        end
      end

      # CreateSignUrl请求参数结构体
      class CreateSignUrlRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param UserId: 签署人ID
        # @type UserId: String
        # @param Deadline: 文件签署截止时间戳
        # @type Deadline: Integer
        # @param CatalogId: 目录ID。当 SignUrlType 为 CATALOG 时必填
        # @type CatalogId: String
        # @param FlowId: 流程ID。当 SignUrlType 为 FLOW 时必填
        # @type FlowId: String
        # @param SignUrlType: 签署链接类型：
        # 1. FLOW - 单流程签署 (默认)
        # 2. CATALOG - 目录签署
        # @type SignUrlType: String
        # @param SignId: 发送流程或目录时生成的签署任务ID
        # @type SignId: String

        attr_accessor :Caller, :UserId, :Deadline, :CatalogId, :FlowId, :SignUrlType, :SignId

        def initialize(caller=nil, userid=nil, deadline=nil, catalogid=nil, flowid=nil, signurltype=nil, signid=nil)
          @Caller = caller
          @UserId = userid
          @Deadline = deadline
          @CatalogId = catalogid
          @FlowId = flowid
          @SignUrlType = signurltype
          @SignId = signid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @UserId = params['UserId']
          @Deadline = params['Deadline']
          @CatalogId = params['CatalogId']
          @FlowId = params['FlowId']
          @SignUrlType = params['SignUrlType']
          @SignId = params['SignId']
        end
      end

      # CreateSignUrl返回参数结构体
      class CreateSignUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignUrl: 合同签署链接
        # @type SignUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignUrl, :RequestId

        def initialize(signurl=nil, requestid=nil)
          @SignUrl = signurl
          @RequestId = requestid
        end

        def deserialize(params)
          @SignUrl = params['SignUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateSubOrganizationAndSeal请求参数结构体
      class CreateSubOrganizationAndSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Name: 机构名称全称
        # @type Name: String
        # @param IdCardType: 机构证件号码类型可选值：
        # 1. USCC - 统一社会信用代码
        # 2. BIZREGISTNO - 营业执照注册号
        # @type IdCardType: String
        # @param IdCardNumber: 机构证件号码
        # @type IdCardNumber: String
        # @param OrganizationType: 机构类型可选值：
        # 1. ENTERPRISE - 企业
        # 2. INDIVIDUALBIZ - 个体工商户
        # 3. PUBLICINSTITUTION - 政府/事业单位
        # 4. OTHERS - 其他组织
        # @type OrganizationType: String
        # @param LegalName: 机构法人/经营者姓名
        # @type LegalName: String
        # @param LegalIdCardType: 机构法人/经营者证件类型可选值：
        # 1. ID_CARD - 居民身份证
        # 2. PASSPORT - 护照
        # 3. MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证
        # 4. MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证
        # 5. HOUSEHOLD_REGISTER - 户口本
        # 6. TEMP_ID_CARD - 临时居民身份证
        # @type LegalIdCardType: String
        # @param LegalIdCardNumber: 机构法人/经营者证件号码；
        # OrganizationType 为 ENTERPRISE时，INDIVIDUALBIZ 时必填，其他情况选填
        # @type LegalIdCardNumber: String
        # @param VerifyClientIp: 实名认证的客户端IP/请求生成企业印章的客户端Ip
        # @type VerifyClientIp: String
        # @param Email: 机构电子邮箱
        # @type Email: String
        # @param IdCardFileType: 机构证件文件类型可选值：
        # 1. USCCFILE - 统一社会信用代码证书
        # 2. LICENSEFILE - 营业执照
        # @type IdCardFileType: String
        # @param BizLicenseFile: 机构证件照片文件，base64编码，支持jpg、jpeg、png格式
        # @type BizLicenseFile: String
        # @param BizLicenseFileName: 机构证件照片文件名
        # @type BizLicenseFileName: String
        # @param LegalMobile: 机构法人/经营者/联系人手机号码
        # @type LegalMobile: String
        # @param ContactName: 组织联系人姓名
        # @type ContactName: String
        # @param VerifyServerIp: 实名认证的服务器IP
        # @type VerifyServerIp: String
        # @param ContactAddress: 企业联系地址
        # @type ContactAddress: :class:`Tencentcloud::Essbasic.v20201222.models.Address`
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param SealType: 印章类型：默认: CONTRACT
        # 1. OFFICIAL-公章
        # 2. SPECIAL_FINANCIAL-财务专用章
        # 3. CONTRACT-合同专用章
        # 4. LEGAL_REPRESENTATIVE-法定代表人章
        # 5. SPECIAL_NATIONWIDE_INVOICE-发票专用章
        # 6. OTHER-其他
        # @type SealType: String
        # @param SealHorizontalText: 企业印章横向文字，最多可填8个汉字（可为空，默认为"电子签名专用章"）
        # @type SealHorizontalText: String
        # @param OpenId: 机构在第三方的唯一标识，32位以内标识符
        # @type OpenId: String
        # @param UseOpenId: 是否使用OpenId作为数据主键，如果为true，请确保OpenId在当前应用号唯一
        # @type UseOpenId: Boolean

        attr_accessor :Caller, :Name, :IdCardType, :IdCardNumber, :OrganizationType, :LegalName, :LegalIdCardType, :LegalIdCardNumber, :VerifyClientIp, :Email, :IdCardFileType, :BizLicenseFile, :BizLicenseFileName, :LegalMobile, :ContactName, :VerifyServerIp, :ContactAddress, :SealName, :SealType, :SealHorizontalText, :OpenId, :UseOpenId

        def initialize(caller=nil, name=nil, idcardtype=nil, idcardnumber=nil, organizationtype=nil, legalname=nil, legalidcardtype=nil, legalidcardnumber=nil, verifyclientip=nil, email=nil, idcardfiletype=nil, bizlicensefile=nil, bizlicensefilename=nil, legalmobile=nil, contactname=nil, verifyserverip=nil, contactaddress=nil, sealname=nil, sealtype=nil, sealhorizontaltext=nil, openid=nil, useopenid=nil)
          @Caller = caller
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @OrganizationType = organizationtype
          @LegalName = legalname
          @LegalIdCardType = legalidcardtype
          @LegalIdCardNumber = legalidcardnumber
          @VerifyClientIp = verifyclientip
          @Email = email
          @IdCardFileType = idcardfiletype
          @BizLicenseFile = bizlicensefile
          @BizLicenseFileName = bizlicensefilename
          @LegalMobile = legalmobile
          @ContactName = contactname
          @VerifyServerIp = verifyserverip
          @ContactAddress = contactaddress
          @SealName = sealname
          @SealType = sealtype
          @SealHorizontalText = sealhorizontaltext
          @OpenId = openid
          @UseOpenId = useopenid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @OrganizationType = params['OrganizationType']
          @LegalName = params['LegalName']
          @LegalIdCardType = params['LegalIdCardType']
          @LegalIdCardNumber = params['LegalIdCardNumber']
          @VerifyClientIp = params['VerifyClientIp']
          @Email = params['Email']
          @IdCardFileType = params['IdCardFileType']
          @BizLicenseFile = params['BizLicenseFile']
          @BizLicenseFileName = params['BizLicenseFileName']
          @LegalMobile = params['LegalMobile']
          @ContactName = params['ContactName']
          @VerifyServerIp = params['VerifyServerIp']
          unless params['ContactAddress'].nil?
            @ContactAddress = Address.new
            @ContactAddress.deserialize(params['ContactAddress'])
          end
          @SealName = params['SealName']
          @SealType = params['SealType']
          @SealHorizontalText = params['SealHorizontalText']
          @OpenId = params['OpenId']
          @UseOpenId = params['UseOpenId']
        end
      end

      # CreateSubOrganizationAndSeal返回参数结构体
      class CreateSubOrganizationAndSealResponse < TencentCloud::Common::AbstractModel
        # @param SubOrganizationId: 子机构在电子文件签署平台唯一标识
        # @type SubOrganizationId: String
        # @param SealId: 电子印章ID
        # @type SealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubOrganizationId, :SealId, :RequestId

        def initialize(suborganizationid=nil, sealid=nil, requestid=nil)
          @SubOrganizationId = suborganizationid
          @SealId = sealid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubOrganizationId = params['SubOrganizationId']
          @SealId = params['SealId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSubOrganization请求参数结构体
      class CreateSubOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param IdCardType: 机构证件号码类型可选值：
        # 1. USCC - 统一社会信用代码
        # 2. BIZREGISTNO - 营业执照注册号
        # @type IdCardType: String
        # @param IdCardNumber: 机构证件号码
        # @type IdCardNumber: String
        # @param OrganizationType: 机构类型可选值：
        # 1. ENTERPRISE - 企业
        # 2. INDIVIDUALBIZ - 个体工商户
        # 3. PUBLICINSTITUTION - 政府/事业单位
        # 4. OTHERS - 其他组织
        # @type OrganizationType: String
        # @param LegalName: 机构法人/经营者姓名
        # @type LegalName: String
        # @param LegalIdCardType: 机构法人/经营者证件类型可选值：
        # 1. ID_CARD - 居民身份证
        # 2. PASSPORT - 护照
        # 3. MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证
        # 4. MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证
        # 5. HOUSEHOLD_REGISTER - 户口本
        # 6. TEMP_ID_CARD - 临时居民身份证
        # @type LegalIdCardType: String
        # @param LegalIdCardNumber: 机构法人/经营者证件号码；
        # OrganizationType 为 ENTERPRISE时，INDIVIDUALBIZ 时必填，其他情况选填
        # @type LegalIdCardNumber: String
        # @param Name: 机构名称全称
        # @type Name: String
        # @param OpenId: 机构在第三方的唯一标识，32位以内标识符
        # @type OpenId: String
        # @param UseOpenId: 是否使用OpenId作为数据主键，如果为true，请确保OpenId在当前应用号唯一
        # @type UseOpenId: Boolean
        # @param IdCardFileType: 机构证件文件类型可选值：
        # 1. USCCFILE - 统一社会信用代码证书
        # 2. LICENSEFILE - 营业执照
        # @type IdCardFileType: String
        # @param BizLicenseFile: 机构证件照片文件，base64编码，支持jpg、jpeg、png格式
        # @type BizLicenseFile: String
        # @param BizLicenseFileName: 机构证件照片文件名
        # @type BizLicenseFileName: String
        # @param LegalMobile: 机构法人/经营者/联系人手机号码
        # @type LegalMobile: String
        # @param ContactName: 组织联系人姓名
        # @type ContactName: String
        # @param VerifyClientIp: 实名认证的客户端IP
        # @type VerifyClientIp: String
        # @param VerifyServerIp: 实名认证的服务器IP
        # @type VerifyServerIp: String
        # @param ContactAddress: 企业联系地址
        # @type ContactAddress: :class:`Tencentcloud::Essbasic.v20201222.models.Address`
        # @param Email: 机构电子邮箱
        # @type Email: String

        attr_accessor :Caller, :IdCardType, :IdCardNumber, :OrganizationType, :LegalName, :LegalIdCardType, :LegalIdCardNumber, :Name, :OpenId, :UseOpenId, :IdCardFileType, :BizLicenseFile, :BizLicenseFileName, :LegalMobile, :ContactName, :VerifyClientIp, :VerifyServerIp, :ContactAddress, :Email

        def initialize(caller=nil, idcardtype=nil, idcardnumber=nil, organizationtype=nil, legalname=nil, legalidcardtype=nil, legalidcardnumber=nil, name=nil, openid=nil, useopenid=nil, idcardfiletype=nil, bizlicensefile=nil, bizlicensefilename=nil, legalmobile=nil, contactname=nil, verifyclientip=nil, verifyserverip=nil, contactaddress=nil, email=nil)
          @Caller = caller
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @OrganizationType = organizationtype
          @LegalName = legalname
          @LegalIdCardType = legalidcardtype
          @LegalIdCardNumber = legalidcardnumber
          @Name = name
          @OpenId = openid
          @UseOpenId = useopenid
          @IdCardFileType = idcardfiletype
          @BizLicenseFile = bizlicensefile
          @BizLicenseFileName = bizlicensefilename
          @LegalMobile = legalmobile
          @ContactName = contactname
          @VerifyClientIp = verifyclientip
          @VerifyServerIp = verifyserverip
          @ContactAddress = contactaddress
          @Email = email
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @OrganizationType = params['OrganizationType']
          @LegalName = params['LegalName']
          @LegalIdCardType = params['LegalIdCardType']
          @LegalIdCardNumber = params['LegalIdCardNumber']
          @Name = params['Name']
          @OpenId = params['OpenId']
          @UseOpenId = params['UseOpenId']
          @IdCardFileType = params['IdCardFileType']
          @BizLicenseFile = params['BizLicenseFile']
          @BizLicenseFileName = params['BizLicenseFileName']
          @LegalMobile = params['LegalMobile']
          @ContactName = params['ContactName']
          @VerifyClientIp = params['VerifyClientIp']
          @VerifyServerIp = params['VerifyServerIp']
          unless params['ContactAddress'].nil?
            @ContactAddress = Address.new
            @ContactAddress.deserialize(params['ContactAddress'])
          end
          @Email = params['Email']
        end
      end

      # CreateSubOrganization返回参数结构体
      class CreateSubOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param SubOrganizationId: 子机构ID
        # @type SubOrganizationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubOrganizationId, :RequestId

        def initialize(suborganizationid=nil, requestid=nil)
          @SubOrganizationId = suborganizationid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubOrganizationId = params['SubOrganizationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserAndSeal请求参数结构体
      class CreateUserAndSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param OpenId: 第三方平台唯一标识，要求应用内OpenId唯一
        # @type OpenId: String
        # @param Name: 用户姓名
        # @type Name: String
        # @param IdCardType: 用户证件类型：
        # 1. ID_CARD - 居民身份证
        # 5. HOUSEHOLD_REGISTER - 户口本
        # 6. TEMP_ID_CARD - 临时居民身份证
        # @type IdCardType: String
        # @param IdCardNumber: 用户证件号
        # @type IdCardNumber: String
        # @param SourceIp: 请求生成个人印章的客户端IP
        # @type SourceIp: String
        # @param Mobile: 用户手机号码，不要求唯一
        # @type Mobile: String
        # @param Email: 用户邮箱，不要求唯一
        # @type Email: String
        # @param SealName: 默认印章名称
        # @type SealName: String
        # @param UseOpenId: 是否以OpenId作为UserId (为true时将直接以OpenId生成腾讯电子签平台的UserId)
        # @type UseOpenId: Boolean

        attr_accessor :Caller, :OpenId, :Name, :IdCardType, :IdCardNumber, :SourceIp, :Mobile, :Email, :SealName, :UseOpenId

        def initialize(caller=nil, openid=nil, name=nil, idcardtype=nil, idcardnumber=nil, sourceip=nil, mobile=nil, email=nil, sealname=nil, useopenid=nil)
          @Caller = caller
          @OpenId = openid
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @SourceIp = sourceip
          @Mobile = mobile
          @Email = email
          @SealName = sealname
          @UseOpenId = useopenid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @OpenId = params['OpenId']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @SourceIp = params['SourceIp']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @SealName = params['SealName']
          @UseOpenId = params['UseOpenId']
        end
      end

      # CreateUserAndSeal返回参数结构体
      class CreateUserAndSealResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 用户唯一标识，按应用号隔离
        # @type UserId: String
        # @param SealId: 默认印章ID
        # @type SealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :SealId, :RequestId

        def initialize(userid=nil, sealid=nil, requestid=nil)
          @UserId = userid
          @SealId = sealid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @SealId = params['SealId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param OpenId: 第三方平台唯一标识；要求应用内OpenId唯一; len<=32
        # @type OpenId: String
        # @param Name: 用户姓名
        # @type Name: String
        # @param IdCardType: 用户证件类型：
        # 1. ID_CARD - 居民身份证
        # 2. PASSPORT - 护照
        # 3. MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证
        # 4. MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证
        # 5. HOUSEHOLD_REGISTER - 户口本
        # 6. TEMP_ID_CARD - 临时居民身份证
        # @type IdCardType: String
        # @param IdCardNumber: 用户证件号
        # @type IdCardNumber: String
        # @param UseOpenId: 是否以OpenId作为UserId (为true时将直接以OpenId生成腾讯电子签平台的UserId)
        # @type UseOpenId: Boolean
        # @param Email: 用户邮箱，不要求唯一
        # @type Email: String
        # @param Mobile: 用户手机号码，不要求唯一
        # @type Mobile: String

        attr_accessor :Caller, :OpenId, :Name, :IdCardType, :IdCardNumber, :UseOpenId, :Email, :Mobile

        def initialize(caller=nil, openid=nil, name=nil, idcardtype=nil, idcardnumber=nil, useopenid=nil, email=nil, mobile=nil)
          @Caller = caller
          @OpenId = openid
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @UseOpenId = useopenid
          @Email = email
          @Mobile = mobile
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @OpenId = params['OpenId']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @UseOpenId = params['UseOpenId']
          @Email = params['Email']
          @Mobile = params['Mobile']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，按应用号隔离
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :RequestId

        def initialize(userid=nil, requestid=nil)
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # <自定义Id,文件id>映射对象
      class CustomFileIdMap < TencentCloud::Common::AbstractModel
        # @param CustomId: 用户自定义ID
        # @type CustomId: String
        # @param FileId: 文件id
        # @type FileId: String

        attr_accessor :CustomId, :FileId

        def initialize(customid=nil, fileid=nil)
          @CustomId = customid
          @FileId = fileid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @FileId = params['FileId']
        end
      end

      # 自定义流程id映射关系
      class CustomFlowIdMap < TencentCloud::Common::AbstractModel
        # @param CustomId: 自定义id
        # @type CustomId: String
        # @param FlowId: 流程id
        # @type FlowId: String

        attr_accessor :CustomId, :FlowId

        def initialize(customid=nil, flowid=nil)
          @CustomId = customid
          @FlowId = flowid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @FlowId = params['FlowId']
        end
      end

      # DeleteSeal请求参数结构体
      class DeleteSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SealId: 印章ID
        # @type SealId: String
        # @param SourceIp: 请求删除印章的客户端IP
        # @type SourceIp: String
        # @param UserId: 用户唯一标识，默认为空时删除企业印章，如非空则删除个人印章
        # @type UserId: String

        attr_accessor :Caller, :SealId, :SourceIp, :UserId

        def initialize(caller=nil, sealid=nil, sourceip=nil, userid=nil)
          @Caller = caller
          @SealId = sealid
          @SourceIp = sourceip
          @UserId = userid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SealId = params['SealId']
          @SourceIp = params['SourceIp']
          @UserId = params['UserId']
        end
      end

      # DeleteSeal返回参数结构体
      class DeleteSealResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCatalogApprovers请求参数结构体
      class DescribeCatalogApproversRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param CatalogId: 目录ID
        # @type CatalogId: String
        # @param UserId: 查询指定用户是否为参与者,为空表示查询所有参与者
        # @type UserId: String

        attr_accessor :Caller, :CatalogId, :UserId

        def initialize(caller=nil, catalogid=nil, userid=nil)
          @Caller = caller
          @CatalogId = catalogid
          @UserId = userid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @CatalogId = params['CatalogId']
          @UserId = params['UserId']
        end
      end

      # DescribeCatalogApprovers返回参数结构体
      class DescribeCatalogApproversResponse < TencentCloud::Common::AbstractModel
        # @param Approvers: 参与者列表
        # @type Approvers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Approvers, :RequestId

        def initialize(approvers=nil, requestid=nil)
          @Approvers = approvers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Approvers'].nil?
            @Approvers = []
            params['Approvers'].each do |i|
              catalogapprovers_tmp = CatalogApprovers.new
              catalogapprovers_tmp.deserialize(i)
              @Approvers << catalogapprovers_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCatalogSignComponents请求参数结构体
      class DescribeCatalogSignComponentsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param CatalogId: 目录ID
        # @type CatalogId: String

        attr_accessor :Caller, :CatalogId

        def initialize(caller=nil, catalogid=nil)
          @Caller = caller
          @CatalogId = catalogid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @CatalogId = params['CatalogId']
        end
      end

      # DescribeCatalogSignComponents返回参数结构体
      class DescribeCatalogSignComponentsResponse < TencentCloud::Common::AbstractModel
        # @param SignComponents: 签署区列表
        # @type SignComponents: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignComponents, :RequestId

        def initialize(signcomponents=nil, requestid=nil)
          @SignComponents = signcomponents
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              catalogcomponents_tmp = CatalogComponents.new
              catalogcomponents_tmp.deserialize(i)
              @SignComponents << catalogcomponents_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomFlowIdsByFlowId请求参数结构体
      class DescribeCustomFlowIdsByFlowIdRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowIds: 流程 id 列表，最多同时查询 10 个流程 id
        # @type FlowIds: Array

        attr_accessor :Caller, :FlowIds

        def initialize(caller=nil, flowids=nil)
          @Caller = caller
          @FlowIds = flowids
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowIds = params['FlowIds']
        end
      end

      # DescribeCustomFlowIdsByFlowId返回参数结构体
      class DescribeCustomFlowIdsByFlowIdResponse < TencentCloud::Common::AbstractModel
        # @param CustomIdList: 自定义流程 id 映射列表
        # @type CustomIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomIdList, :RequestId

        def initialize(customidlist=nil, requestid=nil)
          @CustomIdList = customidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomIdList'].nil?
            @CustomIdList = []
            params['CustomIdList'].each do |i|
              customflowidmap_tmp = CustomFlowIdMap.new
              customflowidmap_tmp.deserialize(i)
              @CustomIdList << customflowidmap_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomFlowIds请求参数结构体
      class DescribeCustomFlowIdsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param CustomIds: 自定义 id 列表，最多同时查询 10 个自定义 id
        # @type CustomIds: Array

        attr_accessor :Caller, :CustomIds

        def initialize(caller=nil, customids=nil)
          @Caller = caller
          @CustomIds = customids
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @CustomIds = params['CustomIds']
        end
      end

      # DescribeCustomFlowIds返回参数结构体
      class DescribeCustomFlowIdsResponse < TencentCloud::Common::AbstractModel
        # @param CustomIdList: 自定义流程 id 映射列表
        # @type CustomIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomIdList, :RequestId

        def initialize(customidlist=nil, requestid=nil)
          @CustomIdList = customidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomIdList'].nil?
            @CustomIdList = []
            params['CustomIdList'].each do |i|
              customflowidmap_tmp = CustomFlowIdMap.new
              customflowidmap_tmp.deserialize(i)
              @CustomIdList << customflowidmap_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFaceIdPhotos请求参数结构体
      class DescribeFaceIdPhotosRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param WbAppId: 慧眼业务ID
        # @type WbAppId: String
        # @param OrderNumbers: 订单号(orderNo); 限制在3个或以内
        # @type OrderNumbers: Array

        attr_accessor :Caller, :WbAppId, :OrderNumbers

        def initialize(caller=nil, wbappid=nil, ordernumbers=nil)
          @Caller = caller
          @WbAppId = wbappid
          @OrderNumbers = ordernumbers
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @WbAppId = params['WbAppId']
          @OrderNumbers = params['OrderNumbers']
        end
      end

      # DescribeFaceIdPhotos返回参数结构体
      class DescribeFaceIdPhotosResponse < TencentCloud::Common::AbstractModel
        # @param Photos: 照片信息列表
        # @type Photos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Photos, :RequestId

        def initialize(photos=nil, requestid=nil)
          @Photos = photos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Photos'].nil?
            @Photos = []
            params['Photos'].each do |i|
              faceidphoto_tmp = FaceIdPhoto.new
              faceidphoto_tmp.deserialize(i)
              @Photos << faceidphoto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFaceIdResults请求参数结构体
      class DescribeFaceIdResultsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param WbAppId: 慧眼业务ID
        # @type WbAppId: String
        # @param OrderNumbers: 订单号(orderNo); 限制在3个或以内
        # @type OrderNumbers: Array
        # @param FileType: 1:视频+照片,2:照片,3:视频,0（或其他数字）:无; 可选
        # @type FileType: Integer

        attr_accessor :Caller, :WbAppId, :OrderNumbers, :FileType

        def initialize(caller=nil, wbappid=nil, ordernumbers=nil, filetype=nil)
          @Caller = caller
          @WbAppId = wbappid
          @OrderNumbers = ordernumbers
          @FileType = filetype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @WbAppId = params['WbAppId']
          @OrderNumbers = params['OrderNumbers']
          @FileType = params['FileType']
        end
      end

      # DescribeFaceIdResults返回参数结构体
      class DescribeFaceIdResultsResponse < TencentCloud::Common::AbstractModel
        # @param Results: 核身结果列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId

        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              faceidresult_tmp = FaceIdResult.new
              faceidresult_tmp.deserialize(i)
              @Results << faceidresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileIdsByCustomIds请求参数结构体
      class DescribeFileIdsByCustomIdsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息, OrganizationId必填
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param CustomIds: 用户自定义ID
        # @type CustomIds: Array

        attr_accessor :Caller, :CustomIds

        def initialize(caller=nil, customids=nil)
          @Caller = caller
          @CustomIds = customids
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @CustomIds = params['CustomIds']
        end
      end

      # DescribeFileIdsByCustomIds返回参数结构体
      class DescribeFileIdsByCustomIdsResponse < TencentCloud::Common::AbstractModel
        # @param CustomIdList: <自定义Id,文件id>数组
        # @type CustomIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomIdList, :RequestId

        def initialize(customidlist=nil, requestid=nil)
          @CustomIdList = customidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomIdList'].nil?
            @CustomIdList = []
            params['CustomIdList'].each do |i|
              customfileidmap_tmp = CustomFileIdMap.new
              customfileidmap_tmp.deserialize(i)
              @CustomIdList << customfileidmap_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileUrls请求参数结构体
      class DescribeFileUrlsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param BusinessIds: 业务编号数组，如模板编号、文档编号、印章编号、流程编号、目录编号
        # @type BusinessIds: Array
        # @param BusinessType: 业务类型：
        # 1. TEMPLATE - 模板
        # 2. SEAL - 印章
        # 3. FLOW - 流程
        # 4.CATALOG - 目录
        # @type BusinessType: String
        # @param FileName: 下载后的文件命名，只有FileType为“ZIP”时生效
        # @type FileName: String
        # @param ResourceOffset: 单个业务ID多个资源情况下，指定资源起始偏移量
        # @type ResourceOffset: Integer
        # @param ResourceLimit: 单个业务ID多个资源情况下，指定资源数量
        # @type ResourceLimit: Integer
        # @param FileType: 文件类型，支持"JPG", "PDF","ZIP"等，默认为上传的文件类型
        # @type FileType: String

        attr_accessor :Caller, :BusinessIds, :BusinessType, :FileName, :ResourceOffset, :ResourceLimit, :FileType

        def initialize(caller=nil, businessids=nil, businesstype=nil, filename=nil, resourceoffset=nil, resourcelimit=nil, filetype=nil)
          @Caller = caller
          @BusinessIds = businessids
          @BusinessType = businesstype
          @FileName = filename
          @ResourceOffset = resourceoffset
          @ResourceLimit = resourcelimit
          @FileType = filetype
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @BusinessIds = params['BusinessIds']
          @BusinessType = params['BusinessType']
          @FileName = params['FileName']
          @ResourceOffset = params['ResourceOffset']
          @ResourceLimit = params['ResourceLimit']
          @FileType = params['FileType']
        end
      end

      # DescribeFileUrls返回参数结构体
      class DescribeFileUrlsResponse < TencentCloud::Common::AbstractModel
        # @param FileUrls: 文件下载URL数组
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

      # DescribeFlowApprovers请求参数结构体
      class DescribeFlowApproversRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 需要查询的流程ID
        # @type FlowId: String
        # @param UserId: 需要查询的用户ID，为空则默认查询所有用户信息
        # @type UserId: String
        # @param SignId: 需要查询的签署ID，为空则不按签署ID过滤
        # @type SignId: String

        attr_accessor :Caller, :FlowId, :UserId, :SignId

        def initialize(caller=nil, flowid=nil, userid=nil, signid=nil)
          @Caller = caller
          @FlowId = flowid
          @UserId = userid
          @SignId = signid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          @UserId = params['UserId']
          @SignId = params['SignId']
        end
      end

      # DescribeFlowApprovers返回参数结构体
      class DescribeFlowApproversResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param Approvers: 流程参与者信息
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
              flowapproverinfo_tmp = FlowApproverInfo.new
              flowapproverinfo_tmp.deserialize(i)
              @Approvers << flowapproverinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowFiles请求参数结构体
      class DescribeFlowFilesRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息; 必选
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 需要查询的流程ID
        # @type FlowId: String

        attr_accessor :Caller, :FlowId

        def initialize(caller=nil, flowid=nil)
          @Caller = caller
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlowFiles返回参数结构体
      class DescribeFlowFilesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param FlowFileInfos: 流程文件列表
        # @type FlowFileInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :FlowFileInfos, :RequestId

        def initialize(flowid=nil, flowfileinfos=nil, requestid=nil)
          @FlowId = flowid
          @FlowFileInfos = flowfileinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['FlowFileInfos'].nil?
            @FlowFileInfos = []
            params['FlowFileInfos'].each do |i|
              flowfileinfo_tmp = FlowFileInfo.new
              flowfileinfo_tmp.deserialize(i)
              @FlowFileInfos << flowfileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlow请求参数结构体
      class DescribeFlowRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 需要查询的流程ID
        # @type FlowId: String

        attr_accessor :Caller, :FlowId

        def initialize(caller=nil, flowid=nil)
          @Caller = caller
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlow返回参数结构体
      class DescribeFlowResponse < TencentCloud::Common::AbstractModel
        # @param Creator: 流程创建者信息
        # @type Creator: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param FlowName: 流程名称
        # @type FlowName: String
        # @param FlowDescription: 流程描述
        # @type FlowDescription: String
        # @param FlowType: 流程的类型: ”劳务合同“,”租赁合同“,”销售合同“,”其他“
        # @type FlowType: String
        # @param FlowStatus: 流程状态：
        # 0-创建；
        # 1-签署中；
        # 2-拒签；
        # 3-撤回；
        # 4-签完存档完成；
        # 5-已过期；
        # 6-已销毁
        # 7-签署完成未归档
        # @type FlowStatus: Integer
        # @param CreatedOn: 流程创建时间
        # @type CreatedOn: Integer
        # @param UpdatedOn: 流程完成时间
        # @type UpdatedOn: Integer
        # @param Deadline: 流程截止日期
        # @type Deadline: Integer
        # @param CallbackUrl: 回调地址
        # @type CallbackUrl: String
        # @param FlowMessage: 流程中止原因
        # @type FlowMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Creator, :FlowId, :FlowName, :FlowDescription, :FlowType, :FlowStatus, :CreatedOn, :UpdatedOn, :Deadline, :CallbackUrl, :FlowMessage, :RequestId

        def initialize(creator=nil, flowid=nil, flowname=nil, flowdescription=nil, flowtype=nil, flowstatus=nil, createdon=nil, updatedon=nil, deadline=nil, callbackurl=nil, flowmessage=nil, requestid=nil)
          @Creator = creator
          @FlowId = flowid
          @FlowName = flowname
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @FlowStatus = flowstatus
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @Deadline = deadline
          @CallbackUrl = callbackurl
          @FlowMessage = flowmessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Creator'].nil?
            @Creator = Caller.new
            @Creator.deserialize(params['Creator'])
          end
          @FlowId = params['FlowId']
          @FlowName = params['FlowName']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @FlowStatus = params['FlowStatus']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @Deadline = params['Deadline']
          @CallbackUrl = params['CallbackUrl']
          @FlowMessage = params['FlowMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSeals请求参数结构体
      class DescribeSealsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SealIds: 印章ID列表
        # @type SealIds: Array
        # @param UserId: 用户唯一标识
        # @type UserId: String

        attr_accessor :Caller, :SealIds, :UserId

        def initialize(caller=nil, sealids=nil, userid=nil)
          @Caller = caller
          @SealIds = sealids
          @UserId = userid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SealIds = params['SealIds']
          @UserId = params['UserId']
        end
      end

      # DescribeSeals返回参数结构体
      class DescribeSealsResponse < TencentCloud::Common::AbstractModel
        # @param Seals: 印章信息
        # @type Seals: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Seals, :RequestId

        def initialize(seals=nil, requestid=nil)
          @Seals = seals
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Seals'].nil?
            @Seals = []
            params['Seals'].each do |i|
              seal_tmp = Seal.new
              seal_tmp.deserialize(i)
              @Seals << seal_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubOrganizations请求参数结构体
      class DescribeSubOrganizationsRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SubOrganizationIds: 子机构ID数组
        # @type SubOrganizationIds: Array

        attr_accessor :Caller, :SubOrganizationIds

        def initialize(caller=nil, suborganizationids=nil)
          @Caller = caller
          @SubOrganizationIds = suborganizationids
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SubOrganizationIds = params['SubOrganizationIds']
        end
      end

      # DescribeSubOrganizations返回参数结构体
      class DescribeSubOrganizationsResponse < TencentCloud::Common::AbstractModel
        # @param SubOrganizationInfos: 子机构信息列表
        # @type SubOrganizationInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubOrganizationInfos, :RequestId

        def initialize(suborganizationinfos=nil, requestid=nil)
          @SubOrganizationInfos = suborganizationinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubOrganizationInfos'].nil?
            @SubOrganizationInfos = []
            params['SubOrganizationInfos'].each do |i|
              suborganizationdetail_tmp = SubOrganizationDetail.new
              suborganizationdetail_tmp.deserialize(i)
              @SubOrganizationInfos << suborganizationdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param UserIds: UserId列表，最多支持100个UserId
        # @type UserIds: Array

        attr_accessor :Caller, :UserIds

        def initialize(caller=nil, userids=nil)
          @Caller = caller
          @UserIds = userids
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @UserIds = params['UserIds']
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param Users: 用户信息查询结果
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :RequestId

        def initialize(users=nil, requestid=nil)
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userdescribe_tmp = UserDescribe.new
              userdescribe_tmp.deserialize(i)
              @Users << userdescribe_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyFlowFile请求参数结构体
      class DestroyFlowFileRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程ID
        # @type FlowId: String

        attr_accessor :Caller, :FlowId

        def initialize(caller=nil, flowid=nil)
          @Caller = caller
          @FlowId = flowid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
        end
      end

      # DestroyFlowFile返回参数结构体
      class DestroyFlowFileResponse < TencentCloud::Common::AbstractModel
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

      # 此结构体 (FaceIdPhoto) 用于描述慧眼人脸核身照片信息。
      class FaceIdPhoto < TencentCloud::Common::AbstractModel
        # @param Result: 核身结果：
        # 0 - 通过；
        # 1 - 未通过
        # @type Result: Integer
        # @param Description: 核身失败描述
        # @type Description: String
        # @param Photo: 照片数据 (base64编码, 一般为JPG或PNG)
        # @type Photo: String
        # @param OrderNumber: 订单号 (orderNo)
        # @type OrderNumber: String

        attr_accessor :Result, :Description, :Photo, :OrderNumber

        def initialize(result=nil, description=nil, photo=nil, ordernumber=nil)
          @Result = result
          @Description = description
          @Photo = photo
          @OrderNumber = ordernumber
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @Photo = params['Photo']
          @OrderNumber = params['OrderNumber']
        end
      end

      # 此结构体 (FaceIdResult) 用于描述慧眼人脸核身结果。
      class FaceIdResult < TencentCloud::Common::AbstractModel
        # @param Result: 核身结果：
        # 0 - 通过；
        # 1 - 未通过
        # @type Result: Integer
        # @param Description: 核身失败描述
        # @type Description: String
        # @param OrderNumber: 订单号 (orderNo)
        # @type OrderNumber: String
        # @param Name: 姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param IdCardType: 身份证件类型：
        # ID_CARD - 居民身份证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardType: String
        # @param IdCardNumber: 身份证件号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardNumber: String
        # @param LiveRate: 活体检测得分 (百分制)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveRate: Integer
        # @param Similarity: 人脸检测得分 (百分制)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Similarity: Float
        # @param OccurredTime: 刷脸时间 (UNIX时间戳)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OccurredTime: Integer
        # @param Photo: 照片数据 (base64编码, 一般为JPG或PNG)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Photo: String
        # @param Video: 视频数据 (base64编码, 一般为MP4)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Video: String

        attr_accessor :Result, :Description, :OrderNumber, :Name, :IdCardType, :IdCardNumber, :LiveRate, :Similarity, :OccurredTime, :Photo, :Video

        def initialize(result=nil, description=nil, ordernumber=nil, name=nil, idcardtype=nil, idcardnumber=nil, liverate=nil, similarity=nil, occurredtime=nil, photo=nil, video=nil)
          @Result = result
          @Description = description
          @OrderNumber = ordernumber
          @Name = name
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @LiveRate = liverate
          @Similarity = similarity
          @OccurredTime = occurredtime
          @Photo = photo
          @Video = video
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @OrderNumber = params['OrderNumber']
          @Name = params['Name']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @LiveRate = params['LiveRate']
          @Similarity = params['Similarity']
          @OccurredTime = params['OccurredTime']
          @Photo = params['Photo']
          @Video = params['Video']
        end
      end

      # 此结构体 (FileUrl) 用于描述下载文件的URL信息。
      class FileUrl < TencentCloud::Common::AbstractModel
        # @param Url: 下载文件的URL
        # @type Url: String
        # @param Option: 下载文件的附加信息
        # @type Option: String
        # @param Index: 下载文件所属的资源序号
        # @type Index: Integer
        # @param FlowId: 目录业务下，文件对应的流程
        # @type FlowId: String

        attr_accessor :Url, :Option, :Index, :FlowId

        def initialize(url=nil, option=nil, index=nil, flowid=nil)
          @Url = url
          @Option = option
          @Index = index
          @FlowId = flowid
        end

        def deserialize(params)
          @Url = params['Url']
          @Option = params['Option']
          @Index = params['Index']
          @FlowId = params['FlowId']
        end
      end

      # 此结构体 (FlowApproverInfo) 用于描述流程参与者信息。
      class FlowApproverInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param VerifyChannel: 认证方式：
        # WEIXINAPP - 微信小程序；
        # FACEID - 慧眼 (默认)；
        # VERIFYCODE - 验证码；
        # THIRD - 第三方 (暂不支持)
        # @type VerifyChannel: Array
        # @param ApproveStatus: 签署状态：
        # 0 - 待签署；
        # 1- 已签署；
        # 2 - 拒绝；
        # 3 - 过期未处理；
        # 4 - 流程已撤回,
        # 12-审核中,
        # 13-审核驳回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveStatus: Integer
        # @param ApproveMessage: 拒签/签署/审核驳回原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMessage: String
        # @param ApproveTime: 签约时间的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveTime: Integer
        # @param SubOrganizationId: 签署企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubOrganizationId: String
        # @param JumpUrl: 签署完成后跳转的URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JumpUrl: String
        # @param ComponentSeals: 用户签署区ID到印章ID的映射集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentSeals: Array
        # @param IsFullText: 签署前置条件：是否强制用户全文阅读，即阅读到待签署文档的最后一页。默认FALSE
        # @type IsFullText: Boolean
        # @param PreReadTime: 签署前置条件：强制阅读时长，页面停留时长不足则不允许签署。默认不限制
        # @type PreReadTime: Integer
        # @param Mobile: 签署人手机号，脱敏显示
        # @type Mobile: String
        # @param Deadline: 签署链接截止时间，默认签署流程发起后7天失效
        # @type Deadline: Integer
        # @param IsLastApprover: 是否为最后一个签署人, 若为最后一人，则其签署完成后自动归档
        # @type IsLastApprover: Boolean
        # @param SmsTemplate: 短信模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmsTemplate: :class:`Tencentcloud::Essbasic.v20201222.models.SmsTemplate`
        # @param IdCardNumber: 身份证号，脱敏显示
        # @type IdCardNumber: String
        # @param Name: 用户姓名
        # @type Name: String
        # @param CanOffLine: 是否支持线下核身
        # @type CanOffLine: Boolean
        # @param IdCardType: 证件号码类型：ID_CARD - 身份证，PASSPORT - 护照，MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证; 暂不支持用于电子签自有平台实名认证，MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证; 暂不支持用于电子签自有平台实名认证，HOUSEHOLD_REGISTER - 户口本; 暂不支持用于电子签自有平台实名认证，TEMP_ID_CARD - 临时居民身份证; 暂不支持用于电子签自有平台实名认证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardType: String
        # @param CallbackUrl: 签署回调地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackUrl: String
        # @param SignId: 签署任务ID，标识每一次的流程发送
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignId: String

        attr_accessor :UserId, :VerifyChannel, :ApproveStatus, :ApproveMessage, :ApproveTime, :SubOrganizationId, :JumpUrl, :ComponentSeals, :IsFullText, :PreReadTime, :Mobile, :Deadline, :IsLastApprover, :SmsTemplate, :IdCardNumber, :Name, :CanOffLine, :IdCardType, :CallbackUrl, :SignId

        def initialize(userid=nil, verifychannel=nil, approvestatus=nil, approvemessage=nil, approvetime=nil, suborganizationid=nil, jumpurl=nil, componentseals=nil, isfulltext=nil, prereadtime=nil, mobile=nil, deadline=nil, islastapprover=nil, smstemplate=nil, idcardnumber=nil, name=nil, canoffline=nil, idcardtype=nil, callbackurl=nil, signid=nil)
          @UserId = userid
          @VerifyChannel = verifychannel
          @ApproveStatus = approvestatus
          @ApproveMessage = approvemessage
          @ApproveTime = approvetime
          @SubOrganizationId = suborganizationid
          @JumpUrl = jumpurl
          @ComponentSeals = componentseals
          @IsFullText = isfulltext
          @PreReadTime = prereadtime
          @Mobile = mobile
          @Deadline = deadline
          @IsLastApprover = islastapprover
          @SmsTemplate = smstemplate
          @IdCardNumber = idcardnumber
          @Name = name
          @CanOffLine = canoffline
          @IdCardType = idcardtype
          @CallbackUrl = callbackurl
          @SignId = signid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @VerifyChannel = params['VerifyChannel']
          @ApproveStatus = params['ApproveStatus']
          @ApproveMessage = params['ApproveMessage']
          @ApproveTime = params['ApproveTime']
          @SubOrganizationId = params['SubOrganizationId']
          @JumpUrl = params['JumpUrl']
          unless params['ComponentSeals'].nil?
            @ComponentSeals = []
            params['ComponentSeals'].each do |i|
              componentseal_tmp = ComponentSeal.new
              componentseal_tmp.deserialize(i)
              @ComponentSeals << componentseal_tmp
            end
          end
          @IsFullText = params['IsFullText']
          @PreReadTime = params['PreReadTime']
          @Mobile = params['Mobile']
          @Deadline = params['Deadline']
          @IsLastApprover = params['IsLastApprover']
          unless params['SmsTemplate'].nil?
            @SmsTemplate = SmsTemplate.new
            @SmsTemplate.deserialize(params['SmsTemplate'])
          end
          @IdCardNumber = params['IdCardNumber']
          @Name = params['Name']
          @CanOffLine = params['CanOffLine']
          @IdCardType = params['IdCardType']
          @CallbackUrl = params['CallbackUrl']
          @SignId = params['SignId']
        end
      end

      # 此结构体 (FlowFileInfo) 用于描述流程文档信息。
      class FlowFileInfo < TencentCloud::Common::AbstractModel
        # @param FileIndex: 文件序号
        # @type FileIndex: Integer
        # @param FileType: 文件类型
        # @type FileType: String
        # @param FileMd5: 文件的MD5码
        # @type FileMd5: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小，单位为Byte
        # @type FileSize: Integer
        # @param CreatedOn: 文件创建时间戳
        # @type CreatedOn: Integer
        # @param Url: 文件的下载地址
        # @type Url: String

        attr_accessor :FileIndex, :FileType, :FileMd5, :FileName, :FileSize, :CreatedOn, :Url

        def initialize(fileindex=nil, filetype=nil, filemd5=nil, filename=nil, filesize=nil, createdon=nil, url=nil)
          @FileIndex = fileindex
          @FileType = filetype
          @FileMd5 = filemd5
          @FileName = filename
          @FileSize = filesize
          @CreatedOn = createdon
          @Url = url
        end

        def deserialize(params)
          @FileIndex = params['FileIndex']
          @FileType = params['FileType']
          @FileMd5 = params['FileMd5']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @CreatedOn = params['CreatedOn']
          @Url = params['Url']
        end
      end

      # 此结构体 (FlowInfo) 用于描述流程信息。
      class FlowInfo < TencentCloud::Common::AbstractModel
        # @param FlowName: 合同名字
        # @type FlowName: String
        # @param Deadline: 签署截止时间戳，超过有效签署时间则该签署流程失败
        # @type Deadline: Integer
        # @param FlowDescription: 合同描述
        # @type FlowDescription: String
        # @param FlowType: 合同类型：
        # 1. “劳务”
        # 2. “销售”
        # 3. “租赁”
        # 4. “其他”
        # @type FlowType: String
        # @param CallbackUrl: 回调地址
        # @type CallbackUrl: String
        # @param UserData: 用户自定义数据
        # @type UserData: String

        attr_accessor :FlowName, :Deadline, :FlowDescription, :FlowType, :CallbackUrl, :UserData

        def initialize(flowname=nil, deadline=nil, flowdescription=nil, flowtype=nil, callbackurl=nil, userdata=nil)
          @FlowName = flowname
          @Deadline = deadline
          @FlowDescription = flowdescription
          @FlowType = flowtype
          @CallbackUrl = callbackurl
          @UserData = userdata
        end

        def deserialize(params)
          @FlowName = params['FlowName']
          @Deadline = params['Deadline']
          @FlowDescription = params['FlowDescription']
          @FlowType = params['FlowType']
          @CallbackUrl = params['CallbackUrl']
          @UserData = params['UserData']
        end
      end

      # GenerateOrganizationSeal请求参数结构体
      class GenerateOrganizationSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SealType: 印章类型：
        # OFFICIAL-公章
        # SPECIAL_FINANCIAL-财务专用章
        # CONTRACT-合同专用章
        # LEGAL_REPRESENTATIVE-法定代表人章
        # SPECIAL_NATIONWIDE_INVOICE-发票专用章
        # OTHER-其他
        # @type SealType: String
        # @param SourceIp: 请求生成企业印章的客户端Ip
        # @type SourceIp: String
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param SealHorizontalText: 企业印章横向文字，最多可填8个汉字（可不填，默认为"电子签名专用章"）
        # @type SealHorizontalText: String
        # @param IsDefault: 是否是默认印章 true：是，false：否
        # @type IsDefault: Boolean

        attr_accessor :Caller, :SealType, :SourceIp, :SealName, :SealHorizontalText, :IsDefault

        def initialize(caller=nil, sealtype=nil, sourceip=nil, sealname=nil, sealhorizontaltext=nil, isdefault=nil)
          @Caller = caller
          @SealType = sealtype
          @SourceIp = sourceip
          @SealName = sealname
          @SealHorizontalText = sealhorizontaltext
          @IsDefault = isdefault
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SealType = params['SealType']
          @SourceIp = params['SourceIp']
          @SealName = params['SealName']
          @SealHorizontalText = params['SealHorizontalText']
          @IsDefault = params['IsDefault']
        end
      end

      # GenerateOrganizationSeal返回参数结构体
      class GenerateOrganizationSealResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章Id
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

      # GenerateUserSeal请求参数结构体
      class GenerateUserSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param UserId: 用户ID
        # @type UserId: String
        # @param SourceIp: 请求生成个人印章的客户端IP
        # @type SourceIp: String
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param IsDefault: 是否是默认印章 true：是，false：否
        # @type IsDefault: Boolean

        attr_accessor :Caller, :UserId, :SourceIp, :SealName, :IsDefault

        def initialize(caller=nil, userid=nil, sourceip=nil, sealname=nil, isdefault=nil)
          @Caller = caller
          @UserId = userid
          @SourceIp = sourceip
          @SealName = sealname
          @IsDefault = isdefault
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @UserId = params['UserId']
          @SourceIp = params['SourceIp']
          @SealName = params['SealName']
          @IsDefault = params['IsDefault']
        end
      end

      # GenerateUserSeal返回参数结构体
      class GenerateUserSealResponse < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章Id
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

      # ModifyOrganizationDefaultSeal请求参数结构体
      class ModifyOrganizationDefaultSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SealId: 重新指定的默认印章ID
        # @type SealId: String
        # @param SourceIp: 请求重新指定企业默认印章的客户端IP
        # @type SourceIp: String

        attr_accessor :Caller, :SealId, :SourceIp

        def initialize(caller=nil, sealid=nil, sourceip=nil)
          @Caller = caller
          @SealId = sealid
          @SourceIp = sourceip
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SealId = params['SealId']
          @SourceIp = params['SourceIp']
        end
      end

      # ModifyOrganizationDefaultSeal返回参数结构体
      class ModifyOrganizationDefaultSealResponse < TencentCloud::Common::AbstractModel
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

      # ModifySeal请求参数结构体
      class ModifySealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param SourceIp: 请求更新印章的客户端IP
        # @type SourceIp: String
        # @param SealId: 电子印章ID。若为空，则修改个人/机构的默认印章。
        # @type SealId: String
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param Image: 印章图片，base64编码（与FileId参数二选一，同时传入参数时优先使用Image参数）
        # @type Image: String
        # @param FileId: 印章图片文件ID（与Image参数二选一，同时传入参数时优先使用Image参数）
        # @type FileId: String
        # @param UserId: 需要更新印章的用户ID
        # @type UserId: String

        attr_accessor :Caller, :SourceIp, :SealId, :SealName, :Image, :FileId, :UserId

        def initialize(caller=nil, sourceip=nil, sealid=nil, sealname=nil, image=nil, fileid=nil, userid=nil)
          @Caller = caller
          @SourceIp = sourceip
          @SealId = sealid
          @SealName = sealname
          @Image = image
          @FileId = fileid
          @UserId = userid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @SourceIp = params['SourceIp']
          @SealId = params['SealId']
          @SealName = params['SealName']
          @Image = params['Image']
          @FileId = params['FileId']
          @UserId = params['UserId']
        end
      end

      # ModifySeal返回参数结构体
      class ModifySealResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubOrganizationInfo请求参数结构体
      class ModifySubOrganizationInfoRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息，该接口 SubOrganizationId 字段与 OpenId 字段二者至少需要传入一个，全部传入时则使用 SubOrganizationId 信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param OpenId: 机构在第三方的唯一标识，32位定长字符串，与 Caller 中 SubOrgnizationId 二者至少需要传入一个，全部传入时则使用 SubOrganizationId 信息
        # @type OpenId: String
        # @param Name: 机构名称全称，修改后机构状态将变为未实名，需要调用实名接口重新实名。
        # @type Name: String
        # @param OrganizationType: 机构类型可选值：
        # 1. ENTERPRISE - 企业；
        # 2. INDIVIDUALBIZ - 个体工商户；
        # 3. PUBLICINSTITUTION - 政府/事业单位
        # 4. OTHERS - 其他组织
        # @type OrganizationType: String
        # @param BizLicenseFile: 机构证件照片文件，base64编码。支持jpg，jpeg，png格式；如果传值，则重新上传文件后，机构状态将变为未实名，需要调用实名接口重新实名。
        # @type BizLicenseFile: String
        # @param BizLicenseFileName: 机构证件照片文件名
        # @type BizLicenseFileName: String
        # @param LegalName: 机构法人/经营者姓名
        # @type LegalName: String
        # @param LegalIdCardType: 机构法人/经营者证件类型，可选值：ID_CARD - 居民身份证。OrganizationType 为 ENTERPRISE、INDIVIDUALBIZ 时，此项必填，其他情况选填。
        # @type LegalIdCardType: String
        # @param LegalIdCardNumber: 机构法人/经营者证件号码。OrganizationType 为 ENTERPRISE、INDIVIDUALBIZ 时，此项必填，其他情况选填
        # @type LegalIdCardNumber: String
        # @param LegalMobile: 机构法人/经营者/联系人手机号码
        # @type LegalMobile: String
        # @param ContactName: 组织联系人姓名
        # @type ContactName: String
        # @param ContactAddress: 企业联系地址
        # @type ContactAddress: :class:`Tencentcloud::Essbasic.v20201222.models.Address`
        # @param Email: 机构电子邮箱
        # @type Email: String

        attr_accessor :Caller, :OpenId, :Name, :OrganizationType, :BizLicenseFile, :BizLicenseFileName, :LegalName, :LegalIdCardType, :LegalIdCardNumber, :LegalMobile, :ContactName, :ContactAddress, :Email

        def initialize(caller=nil, openid=nil, name=nil, organizationtype=nil, bizlicensefile=nil, bizlicensefilename=nil, legalname=nil, legalidcardtype=nil, legalidcardnumber=nil, legalmobile=nil, contactname=nil, contactaddress=nil, email=nil)
          @Caller = caller
          @OpenId = openid
          @Name = name
          @OrganizationType = organizationtype
          @BizLicenseFile = bizlicensefile
          @BizLicenseFileName = bizlicensefilename
          @LegalName = legalname
          @LegalIdCardType = legalidcardtype
          @LegalIdCardNumber = legalidcardnumber
          @LegalMobile = legalmobile
          @ContactName = contactname
          @ContactAddress = contactaddress
          @Email = email
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @OpenId = params['OpenId']
          @Name = params['Name']
          @OrganizationType = params['OrganizationType']
          @BizLicenseFile = params['BizLicenseFile']
          @BizLicenseFileName = params['BizLicenseFileName']
          @LegalName = params['LegalName']
          @LegalIdCardType = params['LegalIdCardType']
          @LegalIdCardNumber = params['LegalIdCardNumber']
          @LegalMobile = params['LegalMobile']
          @ContactName = params['ContactName']
          unless params['ContactAddress'].nil?
            @ContactAddress = Address.new
            @ContactAddress.deserialize(params['ContactAddress'])
          end
          @Email = params['Email']
        end
      end

      # ModifySubOrganizationInfo返回参数结构体
      class ModifySubOrganizationInfoResponse < TencentCloud::Common::AbstractModel
        # @param SubOrganizationId: 子机构ID
        # @type SubOrganizationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubOrganizationId, :RequestId

        def initialize(suborganizationid=nil, requestid=nil)
          @SubOrganizationId = suborganizationid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubOrganizationId = params['SubOrganizationId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserDefaultSeal请求参数结构体
      class ModifyUserDefaultSealRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param UserId: 用户唯一标识，需要重新指定默认印章的用户ID
        # @type UserId: String
        # @param SealId: 重新指定的默认印章ID
        # @type SealId: String
        # @param SourceIp: 请求重新指定个人默认印章的客户端IP
        # @type SourceIp: String

        attr_accessor :Caller, :UserId, :SealId, :SourceIp

        def initialize(caller=nil, userid=nil, sealid=nil, sourceip=nil)
          @Caller = caller
          @UserId = userid
          @SealId = sealid
          @SourceIp = sourceip
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @UserId = params['UserId']
          @SealId = params['SealId']
          @SourceIp = params['SourceIp']
        end
      end

      # ModifyUserDefaultSeal返回参数结构体
      class ModifyUserDefaultSealResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param OpenId: 第三方平台用户唯一标识; OpenId 和 UserId 二选一填写, 两个都不为空则优先使用UserId
        # @type OpenId: String
        # @param UserId: 腾讯电子签平台用户唯一标识; OpenId 和 UserId 二选一填写, 两个都不为空则优先使用UserId
        # @type UserId: String
        # @param Mobile: 用户手机号码，不要求唯一
        # @type Mobile: String
        # @param Email: 用户邮箱，不要求唯一
        # @type Email: String
        # @param Name: 用户姓名
        # @type Name: String

        attr_accessor :Caller, :OpenId, :UserId, :Mobile, :Email, :Name

        def initialize(caller=nil, openid=nil, userid=nil, mobile=nil, email=nil, name=nil)
          @Caller = caller
          @OpenId = openid
          @UserId = userid
          @Mobile = mobile
          @Email = email
          @Name = name
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @OpenId = params['OpenId']
          @UserId = params['UserId']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @Name = params['Name']
        end
      end

      # ModifyUser返回参数结构体
      class ModifyUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 腾讯电子签平台用户唯一标识
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :RequestId

        def initialize(userid=nil, requestid=nil)
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # RejectFlow请求参数结构体
      class RejectFlowRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param VerifyResult: 意愿确认票据。
        # 1. VerifyChannel 为 WEIXINAPP，使用响应的VerifyResult；
        # 2. VerifyChannel 为 FACEID时，使用OrderNo；
        # 3. VerifyChannel 为 VERIFYCODE，使用短信验证码
        # 4. VerifyChannel 为 NONE，传空值
        # （注：普通情况下，VerifyResult不能为None，如您不希望腾讯电子签对用户签署意愿做校验，请提前与客户经理或邮件至e-contract@tencent.com与我们联系）
        # @type VerifyResult: String
        # @param VerifyChannel: 意愿确认渠道：
        # 1. WEIXINAPP - 微信小程序
        # 2. FACEID - 慧眼 (默认)
        # 3. VERIFYCODE - 验证码
        # 4. THIRD - 第三方 (暂不支持)
        # 5. NONE - 无需电子签系统验证
        # （注：普通情况下，VerifyChannel不能为None，如您不希望腾讯电子签对用户签署意愿做校验，请提前与客户经理或邮件至e-contract@tencent.com与我们联系）
        # @type VerifyChannel: String
        # @param SourceIp: 客户端来源IP
        # @type SourceIp: String
        # @param RejectMessage: 拒签原因
        # @type RejectMessage: String
        # @param SignId: 签署参与者编号
        # @type SignId: String

        attr_accessor :Caller, :FlowId, :VerifyResult, :VerifyChannel, :SourceIp, :RejectMessage, :SignId

        def initialize(caller=nil, flowid=nil, verifyresult=nil, verifychannel=nil, sourceip=nil, rejectmessage=nil, signid=nil)
          @Caller = caller
          @FlowId = flowid
          @VerifyResult = verifyresult
          @VerifyChannel = verifychannel
          @SourceIp = sourceip
          @RejectMessage = rejectmessage
          @SignId = signid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          @VerifyResult = params['VerifyResult']
          @VerifyChannel = params['VerifyChannel']
          @SourceIp = params['SourceIp']
          @RejectMessage = params['RejectMessage']
          @SignId = params['SignId']
        end
      end

      # RejectFlow返回参数结构体
      class RejectFlowResponse < TencentCloud::Common::AbstractModel
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

      # 此结构体 (Seal) 用于描述电子印章的信息。
      class Seal < TencentCloud::Common::AbstractModel
        # @param SealId: 电子印章ID
        # @type SealId: String
        # @param SealName: 电子印章名称
        # @type SealName: String
        # @param SealType: 电子印章类型
        # @type SealType: String
        # @param SealSource: 电子印章来源：
        # CREATE - 通过图片上传
        # GENERATE - 通过文字生成
        # @type SealSource: String
        # @param Creator: 电子印章创建者
        # @type Creator: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param CreatedOn: 电子印章创建时间戳
        # @type CreatedOn: Integer
        # @param UserId: 电子印章所有人
        # @type UserId: String
        # @param FileUrl: 电子印章URL
        # @type FileUrl: :class:`Tencentcloud::Essbasic.v20201222.models.FileUrl`
        # @param DefaultSeal: 是否为默认印章，false-非默认，true-默认
        # @type DefaultSeal: Boolean

        attr_accessor :SealId, :SealName, :SealType, :SealSource, :Creator, :CreatedOn, :UserId, :FileUrl, :DefaultSeal

        def initialize(sealid=nil, sealname=nil, sealtype=nil, sealsource=nil, creator=nil, createdon=nil, userid=nil, fileurl=nil, defaultseal=nil)
          @SealId = sealid
          @SealName = sealname
          @SealType = sealtype
          @SealSource = sealsource
          @Creator = creator
          @CreatedOn = createdon
          @UserId = userid
          @FileUrl = fileurl
          @DefaultSeal = defaultseal
        end

        def deserialize(params)
          @SealId = params['SealId']
          @SealName = params['SealName']
          @SealType = params['SealType']
          @SealSource = params['SealSource']
          unless params['Creator'].nil?
            @Creator = Caller.new
            @Creator.deserialize(params['Creator'])
          end
          @CreatedOn = params['CreatedOn']
          @UserId = params['UserId']
          unless params['FileUrl'].nil?
            @FileUrl = FileUrl.new
            @FileUrl.deserialize(params['FileUrl'])
          end
          @DefaultSeal = params['DefaultSeal']
        end
      end

      # SendFlow请求参数结构体
      class SendFlowRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 需要推送合同的流程ID
        # @type FlowId: String
        # @param UserId: 签署人用户ID
        # @type UserId: String
        # @param SignComponents: 签署控件信息 (支持添加多个控件)
        # @type SignComponents: Array
        # @param Mobile: 签署人手机号 (如果选择短信验证码签署，则此字段必填)
        # @type Mobile: String
        # @param SubOrganizationId: 签署人对应的子机构ID，个人签署者此字段不填
        # @type SubOrganizationId: String
        # @param VerifyChannel: 签名后校验方式：
        # 1. WEIXINAPP - 微信小程序；
        # 2. FACEID - 慧眼 (默认) ；
        # 3. VERIFYCODE - 验证码；
        # 4. NONE - 无。此选项为白名单参数，暂不支持公开调用。如需开通权限，请通过客户经理或邮件至e-contract@tencent.com与我们联系；
        # 5. THIRD - 第三方 (暂不支持)
        # @type VerifyChannel: Array
        # @param Deadline: 签署链接失效截止时间，默认为7天
        # @type Deadline: Integer
        # @param IsLastApprover: 是否为最后一个签署人。若为最后一人，本次签署完成以后自动归档。
        # @type IsLastApprover: Boolean
        # @param JumpUrl: 签署完成后，前端跳转的URL
        # @type JumpUrl: String
        # @param SmsTemplate: 短信模板。默认使用腾讯电子签官方短信模板，如有自定义需求，请通过客户经理或邮件至e-contract@tencent.com与我们联系。
        # @type SmsTemplate: :class:`Tencentcloud::Essbasic.v20201222.models.SmsTemplate`
        # @param IsFullText: 签署前置条件：是否要全文阅读，默认否
        # @type IsFullText: Boolean
        # @param PreReadTime: 签署前置条件：强制用户阅读待签署文件时长，默认不限制
        # @type PreReadTime: Integer
        # @param CanOffLine: 当前参与者是否支持线下核身,默认为不支持
        # @type CanOffLine: Boolean
        # @param CallbackUrl: 签署任务的回调地址
        # @type CallbackUrl: String

        attr_accessor :Caller, :FlowId, :UserId, :SignComponents, :Mobile, :SubOrganizationId, :VerifyChannel, :Deadline, :IsLastApprover, :JumpUrl, :SmsTemplate, :IsFullText, :PreReadTime, :CanOffLine, :CallbackUrl

        def initialize(caller=nil, flowid=nil, userid=nil, signcomponents=nil, mobile=nil, suborganizationid=nil, verifychannel=nil, deadline=nil, islastapprover=nil, jumpurl=nil, smstemplate=nil, isfulltext=nil, prereadtime=nil, canoffline=nil, callbackurl=nil)
          @Caller = caller
          @FlowId = flowid
          @UserId = userid
          @SignComponents = signcomponents
          @Mobile = mobile
          @SubOrganizationId = suborganizationid
          @VerifyChannel = verifychannel
          @Deadline = deadline
          @IsLastApprover = islastapprover
          @JumpUrl = jumpurl
          @SmsTemplate = smstemplate
          @IsFullText = isfulltext
          @PreReadTime = prereadtime
          @CanOffLine = canoffline
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          @UserId = params['UserId']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @Mobile = params['Mobile']
          @SubOrganizationId = params['SubOrganizationId']
          @VerifyChannel = params['VerifyChannel']
          @Deadline = params['Deadline']
          @IsLastApprover = params['IsLastApprover']
          @JumpUrl = params['JumpUrl']
          unless params['SmsTemplate'].nil?
            @SmsTemplate = SmsTemplate.new
            @SmsTemplate.deserialize(params['SmsTemplate'])
          end
          @IsFullText = params['IsFullText']
          @PreReadTime = params['PreReadTime']
          @CanOffLine = params['CanOffLine']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # SendFlow返回参数结构体
      class SendFlowResponse < TencentCloud::Common::AbstractModel
        # @param SignId: 签署任务ID，标识每一次的流程发送
        # @type SignId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignId, :RequestId

        def initialize(signid=nil, requestid=nil)
          @SignId = signid
          @RequestId = requestid
        end

        def deserialize(params)
          @SignId = params['SignId']
          @RequestId = params['RequestId']
        end
      end

      # SendFlowUrl请求参数结构体
      class SendFlowUrlRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 需要推送合同的流程ID
        # @type FlowId: String
        # @param UserId: 签署人ID
        # @type UserId: String
        # @param SignComponents: 签署控件信息 (支持添加多个控件)
        # @type SignComponents: Array
        # @param Mobile: 签署人手机号 (如果选择短信验证码签署，则此字段必填)
        # @type Mobile: String
        # @param SubOrganizationId: 签署人对应的子机构ID，个人签署者此字段不填
        # @type SubOrganizationId: String
        # @param VerifyChannel: 签名后校验方式：
        # 1. WEIXINAPP - 微信小程序；
        # 2. FACEID - 慧眼 (默认) ；
        # 3. VERIFYCODE - 验证码；
        # 4. NONE - 无。此选项为白名单参数，暂不支持公开调用。如需开通权限，请通过客户经理或邮件至e-contract@tencent.com与我们联系；
        # 5. THIRD - 第三方 (暂不支持)
        # 6. OFFLINE - 线下人工审核
        # @type VerifyChannel: Array
        # @param Deadline: 签署链接失效截止时间，默认为7天
        # @type Deadline: Integer
        # @param IsLastApprover: 是否为最后一个签署人。若为最后一人，本次签署完成以后自动归档
        # @type IsLastApprover: Boolean
        # @param JumpUrl: 签署完成后，前端跳转的url
        # @type JumpUrl: String
        # @param SmsTemplate: 短信模板
        # 默认使用腾讯电子签官方短信模板，如有自定义需求，请通过客户经理或邮件至e-contract@tencent.com与我们联系。
        # @type SmsTemplate: :class:`Tencentcloud::Essbasic.v20201222.models.SmsTemplate`
        # @param IsFullText: 签署前置条件：是否要全文阅读，默认否
        # @type IsFullText: Boolean
        # @param PreReadTime: 签署前置条件：强制用户阅读待签署文件时长，默认不限制
        # @type PreReadTime: Integer
        # @param CanOffLine: 当前参与者是否支持线下核身,默认为不支持
        # @type CanOffLine: Boolean
        # @param CallbackUrl: 签署任务的回调地址
        # @type CallbackUrl: String

        attr_accessor :Caller, :FlowId, :UserId, :SignComponents, :Mobile, :SubOrganizationId, :VerifyChannel, :Deadline, :IsLastApprover, :JumpUrl, :SmsTemplate, :IsFullText, :PreReadTime, :CanOffLine, :CallbackUrl

        def initialize(caller=nil, flowid=nil, userid=nil, signcomponents=nil, mobile=nil, suborganizationid=nil, verifychannel=nil, deadline=nil, islastapprover=nil, jumpurl=nil, smstemplate=nil, isfulltext=nil, prereadtime=nil, canoffline=nil, callbackurl=nil)
          @Caller = caller
          @FlowId = flowid
          @UserId = userid
          @SignComponents = signcomponents
          @Mobile = mobile
          @SubOrganizationId = suborganizationid
          @VerifyChannel = verifychannel
          @Deadline = deadline
          @IsLastApprover = islastapprover
          @JumpUrl = jumpurl
          @SmsTemplate = smstemplate
          @IsFullText = isfulltext
          @PreReadTime = prereadtime
          @CanOffLine = canoffline
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          @UserId = params['UserId']
          unless params['SignComponents'].nil?
            @SignComponents = []
            params['SignComponents'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @SignComponents << component_tmp
            end
          end
          @Mobile = params['Mobile']
          @SubOrganizationId = params['SubOrganizationId']
          @VerifyChannel = params['VerifyChannel']
          @Deadline = params['Deadline']
          @IsLastApprover = params['IsLastApprover']
          @JumpUrl = params['JumpUrl']
          unless params['SmsTemplate'].nil?
            @SmsTemplate = SmsTemplate.new
            @SmsTemplate.deserialize(params['SmsTemplate'])
          end
          @IsFullText = params['IsFullText']
          @PreReadTime = params['PreReadTime']
          @CanOffLine = params['CanOffLine']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # SendFlowUrl返回参数结构体
      class SendFlowUrlResponse < TencentCloud::Common::AbstractModel
        # @param SignId: 签署任务ID，标识每一次的流程发送
        # @type SignId: String
        # @param SignUrl: 签署链接
        # @type SignUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignId, :SignUrl, :RequestId

        def initialize(signid=nil, signurl=nil, requestid=nil)
          @SignId = signid
          @SignUrl = signurl
          @RequestId = requestid
        end

        def deserialize(params)
          @SignId = params['SignId']
          @SignUrl = params['SignUrl']
          @RequestId = params['RequestId']
        end
      end

      # SendSignInnerVerifyCode请求参数结构体
      class SendSignInnerVerifyCodeRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param Mobile: 手机号
        # @type Mobile: String
        # @param VerifyType: 验证码类型，取值(SIGN)
        # @type VerifyType: String
        # @param UserId: 用户 id
        # @type UserId: String
        # @param VerifyTemplateId: 模板 id
        # @type VerifyTemplateId: String
        # @param VerifySign: 签名
        # @type VerifySign: String
        # @param FlowId: 流程(目录) id
        # @type FlowId: String
        # @param CheckThreeElementResult: 三要素检测结果
        # @type CheckThreeElementResult: Integer

        attr_accessor :Caller, :Mobile, :VerifyType, :UserId, :VerifyTemplateId, :VerifySign, :FlowId, :CheckThreeElementResult

        def initialize(caller=nil, mobile=nil, verifytype=nil, userid=nil, verifytemplateid=nil, verifysign=nil, flowid=nil, checkthreeelementresult=nil)
          @Caller = caller
          @Mobile = mobile
          @VerifyType = verifytype
          @UserId = userid
          @VerifyTemplateId = verifytemplateid
          @VerifySign = verifysign
          @FlowId = flowid
          @CheckThreeElementResult = checkthreeelementresult
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @Mobile = params['Mobile']
          @VerifyType = params['VerifyType']
          @UserId = params['UserId']
          @VerifyTemplateId = params['VerifyTemplateId']
          @VerifySign = params['VerifySign']
          @FlowId = params['FlowId']
          @CheckThreeElementResult = params['CheckThreeElementResult']
        end
      end

      # SendSignInnerVerifyCode返回参数结构体
      class SendSignInnerVerifyCodeResponse < TencentCloud::Common::AbstractModel
        # @param Result: true: 验证码正确，false: 验证码错误
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # SignFlow请求参数结构体
      class SignFlowRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param FlowId: 流程编号
        # @type FlowId: String
        # @param VerifyResult: 意愿确认票据。
        # 1. VerifyChannel 为 WEIXINAPP，使用响应的VerifyResult；
        # 2. VerifyChannel 为 FACEID时，使用OrderNo；
        # 3. VerifyChannel 为 VERIFYCODE，使用短信验证码
        # 4. VerifyChannel 为 NONE，传空值
        # （注：普通情况下，VerifyResult不能为None，如您不希望腾讯电子签对用户签署意愿做校验，请提前与客户经理或邮件至e-contract@tencent.com与我们联系）
        # @type VerifyResult: String
        # @param VerifyChannel: 意愿确认渠道：
        # 1. WEIXINAPP - 微信小程序
        # 2. FACEID - 慧眼 (默认)
        # 3. VERIFYCODE - 验证码
        # 4. THIRD - 第三方 (暂不支持)
        # 5. NONE - 无需电子签系统验证
        # （注：普通情况下，VerifyChannel不能为None，如您不希望腾讯电子签对用户签署意愿做校验，请提前与客户经理或邮件至e-contract@tencent.com与我们联系）
        # @type VerifyChannel: String
        # @param SourceIp: 客户端来源IP
        # @type SourceIp: String
        # @param SignSeals: 签署内容
        # @type SignSeals: Array
        # @param ApproveMessage: 签署备注
        # @type ApproveMessage: String
        # @param SignId: 签署参与者编号
        # @type SignId: String

        attr_accessor :Caller, :FlowId, :VerifyResult, :VerifyChannel, :SourceIp, :SignSeals, :ApproveMessage, :SignId

        def initialize(caller=nil, flowid=nil, verifyresult=nil, verifychannel=nil, sourceip=nil, signseals=nil, approvemessage=nil, signid=nil)
          @Caller = caller
          @FlowId = flowid
          @VerifyResult = verifyresult
          @VerifyChannel = verifychannel
          @SourceIp = sourceip
          @SignSeals = signseals
          @ApproveMessage = approvemessage
          @SignId = signid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @FlowId = params['FlowId']
          @VerifyResult = params['VerifyResult']
          @VerifyChannel = params['VerifyChannel']
          @SourceIp = params['SourceIp']
          unless params['SignSeals'].nil?
            @SignSeals = []
            params['SignSeals'].each do |i|
              signseal_tmp = SignSeal.new
              signseal_tmp.deserialize(i)
              @SignSeals << signseal_tmp
            end
          end
          @ApproveMessage = params['ApproveMessage']
          @SignId = params['SignId']
        end
      end

      # SignFlow返回参数结构体
      class SignFlowResponse < TencentCloud::Common::AbstractModel
        # @param Status: 签署任务状态。签署成功 - SUCCESS、提交审核 - REVIEW
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

      # 此结构体 (SignSeal) 用于描述签名/印章信息。
      class SignSeal < TencentCloud::Common::AbstractModel
        # @param ComponentId: 签署控件ID
        # @type ComponentId: String
        # @param SignType: 签署印章类型:
        # SIGN_SIGNATURE - 签名
        # SIGN_SEAL - 印章
        # SIGN_DATE - 日期
        # SIGN_IMAGE - 图片
        # @type SignType: String
        # @param FileIndex: 合同文件ID
        # @type FileIndex: Integer
        # @param SealId: 印章ID，仅当 SignType 为 SIGN_SEAL 时必填
        # @type SealId: String
        # @param SealContent: 签名内容，仅当 SignType 为SIGN_SIGNATURE或SIGN_IMAGE 时必填，base64编码
        # @type SealContent: String

        attr_accessor :ComponentId, :SignType, :FileIndex, :SealId, :SealContent

        def initialize(componentid=nil, signtype=nil, fileindex=nil, sealid=nil, sealcontent=nil)
          @ComponentId = componentid
          @SignType = signtype
          @FileIndex = fileindex
          @SealId = sealid
          @SealContent = sealcontent
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
          @SignType = params['SignType']
          @FileIndex = params['FileIndex']
          @SealId = params['SealId']
          @SealContent = params['SealContent']
        end
      end

      # 此结构体 (SmsTemplate) 用于描述短信模板。
      class SmsTemplate < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID，必须填写已审核通过的模板ID。模板ID可登录短信控制台查看。
        # @type TemplateId: String
        # @param Sign: 短信签名内容，使用UTF-8编码，必须填写已审核通过的签名，签名信息可登录短信控制台查看。
        # @type Sign: String

        attr_accessor :TemplateId, :Sign

        def initialize(templateid=nil, sign=nil)
          @TemplateId = templateid
          @Sign = sign
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Sign = params['Sign']
        end
      end

      # 此结构体 (SubOrganizationDetail) 用于描述子机构或子企业的详情信息。
      class SubOrganizationDetail < TencentCloud::Common::AbstractModel
        # @param Id: 组织ID
        # @type Id: String
        # @param Name: 机构名称全称
        # @type Name: String
        # @param Email: 机构电子邮箱
        # @type Email: String
        # @param IdCardType: 机构证件号码类型
        # @type IdCardType: String
        # @param IdCardNumber: 机构证件号码
        # @type IdCardNumber: String
        # @param OrganizationType: 机构类型
        # @type OrganizationType: String
        # @param IdCardFileType: 机构证件文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardFileType: String
        # @param BizLicenseFile: 机构证件照片文件，base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizLicenseFile: String
        # @param BizLicenseFileName: 机构证件照片文件名
        # @type BizLicenseFileName: String
        # @param LegalName: 机构法人/经营者姓名
        # @type LegalName: String
        # @param LegalIdCardType: 机构法人/经营者证件类型
        # @type LegalIdCardType: String
        # @param LegalIdCardNumber: 机构法人/经营者证件号码
        # @type LegalIdCardNumber: String
        # @param LegalMobile: 机构法人/经营者/联系人手机号码
        # @type LegalMobile: String
        # @param ContactName: 组织联系人姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactName: String
        # @param VerifyStatus: 机构实名状态
        # @type VerifyStatus: String
        # @param VerifiedOn: 机构通过实名时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifiedOn: Integer
        # @param CreatedOn: 机构创建时间
        # @type CreatedOn: Integer
        # @param UpdatedOn: 机构更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedOn: Integer
        # @param VerifyClientIp: 实名认证的客户端IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyClientIp: String
        # @param VerifyServerIp: 实名认证的服务器IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyServerIp: String
        # @param ContactAddress: 企业联系地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactAddress: :class:`Tencentcloud::Essbasic.v20201222.models.Address`

        attr_accessor :Id, :Name, :Email, :IdCardType, :IdCardNumber, :OrganizationType, :IdCardFileType, :BizLicenseFile, :BizLicenseFileName, :LegalName, :LegalIdCardType, :LegalIdCardNumber, :LegalMobile, :ContactName, :VerifyStatus, :VerifiedOn, :CreatedOn, :UpdatedOn, :VerifyClientIp, :VerifyServerIp, :ContactAddress

        def initialize(id=nil, name=nil, email=nil, idcardtype=nil, idcardnumber=nil, organizationtype=nil, idcardfiletype=nil, bizlicensefile=nil, bizlicensefilename=nil, legalname=nil, legalidcardtype=nil, legalidcardnumber=nil, legalmobile=nil, contactname=nil, verifystatus=nil, verifiedon=nil, createdon=nil, updatedon=nil, verifyclientip=nil, verifyserverip=nil, contactaddress=nil)
          @Id = id
          @Name = name
          @Email = email
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
          @OrganizationType = organizationtype
          @IdCardFileType = idcardfiletype
          @BizLicenseFile = bizlicensefile
          @BizLicenseFileName = bizlicensefilename
          @LegalName = legalname
          @LegalIdCardType = legalidcardtype
          @LegalIdCardNumber = legalidcardnumber
          @LegalMobile = legalmobile
          @ContactName = contactname
          @VerifyStatus = verifystatus
          @VerifiedOn = verifiedon
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @VerifyClientIp = verifyclientip
          @VerifyServerIp = verifyserverip
          @ContactAddress = contactaddress
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Email = params['Email']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
          @OrganizationType = params['OrganizationType']
          @IdCardFileType = params['IdCardFileType']
          @BizLicenseFile = params['BizLicenseFile']
          @BizLicenseFileName = params['BizLicenseFileName']
          @LegalName = params['LegalName']
          @LegalIdCardType = params['LegalIdCardType']
          @LegalIdCardNumber = params['LegalIdCardNumber']
          @LegalMobile = params['LegalMobile']
          @ContactName = params['ContactName']
          @VerifyStatus = params['VerifyStatus']
          @VerifiedOn = params['VerifiedOn']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @VerifyClientIp = params['VerifyClientIp']
          @VerifyServerIp = params['VerifyServerIp']
          unless params['ContactAddress'].nil?
            @ContactAddress = Address.new
            @ContactAddress.deserialize(params['ContactAddress'])
          end
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
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param BusinessType: 文件对应业务类型，用于区分文件存储路径：
        # 1. TEMPLATE - 模版； 文件类型：.pdf/.html
        # 2. DOCUMENT - 签署过程及签署后的合同文档 文件类型：.pdf/.html
        # 3. FLOW - 签署过程 文件类型：.pdf/.html
        # 4. SEAL - 印章； 文件类型：.jpg/.jpeg/.png
        # 5. BUSINESSLICENSE - 营业执照 文件类型：.jpg/.jpeg/.png
        # 6. IDCARD - 身份证 文件类型：.jpg/.jpeg/.png
        # @type BusinessType: String
        # @param FileInfos: 上传文件内容数组，最多支持20个文件
        # @type FileInfos: Array
        # @param FileUrls: 上传文件链接数组，最多支持20个URL
        # @type FileUrls: Array
        # @param CoverRect: 是否将pdf灰色矩阵置白
        # true--是，处理置白
        # false--否，不处理
        # @type CoverRect: Boolean
        # @param FileType: 特殊文件类型需要指定文件类型：
        # HTML-- .html文件
        # @type FileType: String
        # @param CustomIds: 用户自定义ID数组，与上传文件一一对应
        # @type CustomIds: Array

        attr_accessor :Caller, :BusinessType, :FileInfos, :FileUrls, :CoverRect, :FileType, :CustomIds

        def initialize(caller=nil, businesstype=nil, fileinfos=nil, fileurls=nil, coverrect=nil, filetype=nil, customids=nil)
          @Caller = caller
          @BusinessType = businesstype
          @FileInfos = fileinfos
          @FileUrls = fileurls
          @CoverRect = coverrect
          @FileType = filetype
          @CustomIds = customids
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
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

      # 此结构体 (UserDescribe) 用于描述个人帐号查询结果。
      class UserDescribe < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param Mobile: 手机号，隐藏中间4位数字，用*代替
        # @type Mobile: String
        # @param CreatedOn: 注册时间点 (UNIX时间戳)
        # @type CreatedOn: Integer
        # @param VerifyStatus: 实名认证状态：
        # 0 - 未实名；
        # 1 - 通过实名
        # @type VerifyStatus: Integer
        # @param Name: 真实姓名
        # @type Name: String
        # @param VerifiedOn: 实名认证通过时间 (UNIX时间戳)
        # @type VerifiedOn: Integer
        # @param IdCardType: 身份证件类型;
        # ID_CARD - 居民身份证；
        # PASSPORT - 护照；
        # MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证；
        # MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证；
        # HOUSEHOLD_REGISTER - 户口本；
        # TEMP_ID_CARD - 临时居民身份证
        # @type IdCardType: String
        # @param IdCardNumber: 身份证件号码 (脱敏)
        # @type IdCardNumber: String

        attr_accessor :UserId, :Mobile, :CreatedOn, :VerifyStatus, :Name, :VerifiedOn, :IdCardType, :IdCardNumber

        def initialize(userid=nil, mobile=nil, createdon=nil, verifystatus=nil, name=nil, verifiedon=nil, idcardtype=nil, idcardnumber=nil)
          @UserId = userid
          @Mobile = mobile
          @CreatedOn = createdon
          @VerifyStatus = verifystatus
          @Name = name
          @VerifiedOn = verifiedon
          @IdCardType = idcardtype
          @IdCardNumber = idcardnumber
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Mobile = params['Mobile']
          @CreatedOn = params['CreatedOn']
          @VerifyStatus = params['VerifyStatus']
          @Name = params['Name']
          @VerifiedOn = params['VerifiedOn']
          @IdCardType = params['IdCardType']
          @IdCardNumber = params['IdCardNumber']
        end
      end

      # VerifySubOrganization请求参数结构体
      class VerifySubOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息，该接口SubOrganizationId必填
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param OpenId: 机构在第三方的唯一标识，32位定长字符串，与 Caller 中 SubOrgnizationId 二者至少需要传入一个，全部传入时则使用 SubOrganizationId 信息
        # @type OpenId: String

        attr_accessor :Caller, :OpenId

        def initialize(caller=nil, openid=nil)
          @Caller = caller
          @OpenId = openid
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @OpenId = params['OpenId']
        end
      end

      # VerifySubOrganization返回参数结构体
      class VerifySubOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param SubOrganizationId: 子机构ID
        # @type SubOrganizationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubOrganizationId, :RequestId

        def initialize(suborganizationid=nil, requestid=nil)
          @SubOrganizationId = suborganizationid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubOrganizationId = params['SubOrganizationId']
          @RequestId = params['RequestId']
        end
      end

      # VerifyUser请求参数结构体
      class VerifyUserRequest < TencentCloud::Common::AbstractModel
        # @param Caller: 调用方信息
        # @type Caller: :class:`Tencentcloud::Essbasic.v20201222.models.Caller`
        # @param UserId: 电子签平台用户ID
        # @type UserId: String
        # @param CertificateRequired: 是否需要下发个人长效证书，默认为false
        # 注：如您有下发个人长效证书需求，请提前邮件至e-contract@oa.com进行申请。
        # @type CertificateRequired: Boolean

        attr_accessor :Caller, :UserId, :CertificateRequired

        def initialize(caller=nil, userid=nil, certificaterequired=nil)
          @Caller = caller
          @UserId = userid
          @CertificateRequired = certificaterequired
        end

        def deserialize(params)
          unless params['Caller'].nil?
            @Caller = Caller.new
            @Caller.deserialize(params['Caller'])
          end
          @UserId = params['UserId']
          @CertificateRequired = params['CertificateRequired']
        end
      end

      # VerifyUser返回参数结构体
      class VerifyUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 电子签平台用户ID
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :RequestId

        def initialize(userid=nil, requestid=nil)
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

